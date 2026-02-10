/**
 * Test the currently-failing files directly
 */
const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');

const testFiles = [
  '101_cme_article1_general_surgery.sql',
  '200_blood_products_mcqs.sql',
  '201_cpr_content.sql',
  '200b_surgery3_additional_topics.sql',
  '321_s3_mcq_batch21_pvd.sql',
  '303_surgery2_article1_acute_abdomen.sql',
  '313_surgery2_article20.sql',
  '400_s3_cme_article2_appendicitis.sql',
  '401_s3_cme_article3_cholecystitis.sql',
  '474_s3_cme_article76_melanoma.sql',
];

async function testAll() {
  for (const file of testFiles) {
    const filePath = path.join(SEEDS_DIR, file);
    if (!fs.existsSync(filePath)) {
      console.log(`⚠️  ${file}: NOT FOUND`);
      continue;
    }
    
    const sql = fs.readFileSync(filePath, 'utf8');
    try {
      await pool.query(sql);
      console.log(`✅ ${file}`);
    } catch (e) {
      console.log(`❌ ${file}: ${e.message.substring(0, 120)}`);
      if (e.position) {
        const pos = parseInt(e.position);
        const context = sql.substring(Math.max(0, pos - 50), Math.min(sql.length, pos + 50));
        console.log(`   Position ${pos}: ...${context.replace(/\n/g, '\\n')}...`);
      }
    }
  }
  
  await pool.end();
}

testAll();
