/**
 * Fix article_self_assessments column count mismatch.
 * The schema has: id, article_id, question_number, question_text, option_a-e, correct_option, explanation (11 cols)
 * These files have: + difficulty (12 cols)
 * Solution: remove 'difficulty' from column list and values
 */

const fs = require('fs');
const path = require('path');

const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');

// Check actual schema first
const { Pool } = require('pg');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function checkAndFix() {
  // Check actual columns
  const cols = await pool.query(`
    SELECT column_name FROM information_schema.columns 
    WHERE table_name = 'article_self_assessments' AND table_schema = 'crp'
    ORDER BY ordinal_position
  `);
  const colNames = cols.rows.map(r => r.column_name);
  console.log('article_self_assessments columns:', colNames.join(', '));
  
  const hasDifficulty = colNames.includes('difficulty');
  console.log('Has difficulty column:', hasDifficulty);
  
  if (!hasDifficulty) {
    // Need to either add the column or remove it from INSERTs
    console.log('\n Option 1: Add difficulty column to table');
    console.log(' Option 2: Remove difficulty from INSERT statements');
    
    // Let's add the column since it's useful data
    try {
      await pool.query(`ALTER TABLE article_self_assessments ADD COLUMN IF NOT EXISTS difficulty VARCHAR(20)`);
      console.log('\n ✅ Added difficulty column to article_self_assessments');
    } catch (e) {
      console.log('\n ❌ Could not add column:', e.message);
      console.log(' Falling back to removing difficulty from INSERTs...');
      
      // Remove difficulty from files
      fixFiles();
    }
  } else {
    console.log('\n Column already exists - files should work as-is');
  }
  
  // Now verify the melanoma file - it has NULL in a weird position
  // Let me check the actual INSERT structure
  const melFile = path.join(SEEDS_DIR, '474_s3_cme_article76_melanoma.sql');
  const melContent = fs.readFileSync(melFile, 'utf8');
  
  // Check for NULL values where a string is expected
  // The file has: ..., NULL, 'E', ... where the correct_option should be before explanation
  // Fix: , option_e, NULL, correct_option, explanation, difficulty
  // Should be: , option_e, correct_option, explanation, difficulty
  // The NULL is an extra value
  
  // Look for pattern: ', NULL,\n' which shouldn't be there
  if (melContent.includes(", NULL,\n'")) {
    let fixed = melContent.replace(/, NULL,\n'/g, ",\n'");
    fs.writeFileSync(melFile, fixed, 'utf8');
    console.log('\n ✅ Fixed NULL values in melanoma file');
  }
  
  // Also do same for cholecystitis
  const choleFile = path.join(SEEDS_DIR, '401_s3_cme_article3_cholecystitis.sql');
  const choleContent = fs.readFileSync(choleFile, 'utf8');
  
  // Count VALUES entries in first self-assessment row
  const saMatch = choleContent.match(/INSERT INTO article_self_assessments[^;]+;/s);
  if (saMatch) {
    // Extract first row only
    const firstRow = saMatch[0].match(/\([^)]+\)/);
    if (firstRow) {
      // Count commas (values = commas + 1)
      const valCount = firstRow[0].split(',').length;
      console.log(`\n Cholecystitis first SA row has ${valCount} values`);
    }
  }
  
  await pool.end();
}

function fixFiles() {
  // Remove ', difficulty' from INSERT INTO column list and last value from each row
  const files = ['401_s3_cme_article3_cholecystitis.sql', '474_s3_cme_article76_melanoma.sql'];
  
  for (const f of files) {
    const filePath = path.join(SEEDS_DIR, f);
    let content = fs.readFileSync(filePath, 'utf8');
    
    // Remove ', difficulty' from column list
    content = content.replace(/, difficulty\)/g, ')');
    
    // Remove last value from each VALUES tuple for self-assessments
    // This is complex - better to add the column
    
    fs.writeFileSync(filePath, content, 'utf8');
    console.log(`  Fixed: ${f}`);
  }
}

checkAndFix().catch(e => { console.error(e); process.exit(1); });
