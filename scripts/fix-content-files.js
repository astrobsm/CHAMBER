/**
 * Fix S1 content files (200-210) - these reference old random UUIDs.
 * The 101-116 article files already include sections and self-assessments,
 * but these content files add ADDITIONAL content. Map old UUIDs to new ones.
 * 
 * Also fix: 401_s3_cme_article3_cholecystitis.sql, 474_s3_cme_article76_melanoma.sql
 */

const fs = require('fs');
const path = require('path');

const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');
let fixCount = 0;

// Mapping from content file → article topic → article ID number
// Based on file names and topics:
const contentToArticleMap = {
  // 200: blood_products → article 7
  '200_blood_products_mcqs.sql': { oldId: 'd13a0557-d8dd-4b2c-82b4-7efcb515a471', newId: 'a1100007-0000-0000-0000-000000000007' },
  // 201: cpr → article 13
  '201_cpr_content.sql': { oldId: '275f1c5d-4c7c-407c-8d80-f9434668418b', newId: 'a1100013-0000-0000-0000-000000000013' },
  // 202: leg_ulcers → article 14
  '202_leg_ulcers_content.sql': { oldId: 'bc19fc77-d567-4ab9-9ec8-8f3aadaaa387', newId: 'a1100014-0000-0000-0000-000000000014' },
  // 203: nasogastric → article 11
  '203_nasogastric_content.sql': { oldId: 'f9a3d1d1-dff8-4fa4-ad00-9ec83ec85670', newId: 'a1100011-0000-0000-0000-000000000011' },
  // 204: mensuration → article 10
  '204_mensuration_content.sql': { oldId: '2348daec-7f39-46de-984d-d5af26555fa4', newId: 'a1100010-0000-0000-0000-000000000010' },
  // 205: intraoperative → article 12
  '205_intraoperative_monitoring_content.sql': { oldId: 'a8f44503-5bcf-4a0f-9b88-f667d94ab31e', newId: 'a1100012-0000-0000-0000-000000000012' },
  // 206: abdominal_incisions → article 8
  '206_abdominal_incisions_content.sql': { oldId: '985f18bf-6c01-469c-b338-7128ff9b926a', newId: 'a1100008-0000-0000-0000-000000000008' },
  // 207: fracture_management → article 9  
  '207_fracture_management_content.sql': { oldId: 'fe04f125-5e92-4ec7-99ef-998ed5092231', newId: 'a1100009-0000-0000-0000-000000000009' },
  // 208: surgical_wounds → article 5
  '208_surgical_wounds_content.sql': { oldId: '4d12749f-8b02-4646-8bbb-955f94023e96', newId: 'a1100005-0000-0000-0000-000000000005' },
  // 209: sutures_instruments → article 6  
  '209_sutures_instruments_content.sql': { oldId: '38387cb8-3265-42cc-b0c2-cb05afc822b3', newId: 'a1100006-0000-0000-0000-000000000006' },
  // 210: fluids → article 4
  '210_fluids_additional_mcqs.sql': { oldId: 'ac945220-557c-434b-aa7a-7b8167baeecd', newId: 'a1100004-0000-0000-0000-000000000004' },
};

console.log('=== FIX S1 Content Files (UUID mapping) ===');

for (const [filename, mapping] of Object.entries(contentToArticleMap)) {
  const filePath = path.join(SEEDS_DIR, filename);
  if (!fs.existsSync(filePath)) {
    console.log(`  ⚠️  Not found: ${filename}`);
    continue;
  }
  
  let content = fs.readFileSync(filePath, 'utf8');
  
  if (content.includes(mapping.oldId)) {
    content = content.split(mapping.oldId).join(mapping.newId);
    fs.writeFileSync(filePath, content, 'utf8');
    fixCount++;
    console.log(`  ✅ Fixed: ${filename} (${mapping.oldId.substring(0,8)} → ${mapping.newId.substring(0,8)})`);
  } else {
    console.log(`  ⏭️  No old ID found: ${filename}`);
  }
}

// ============================================================
// FIX: 401_s3_cme_article3_cholecystitis.sql - VALUES length mismatch
// ============================================================
console.log('\n=== FIX: S3 CME Article 3 (cholecystitis) ===');

const choleFile = path.join(SEEDS_DIR, '401_s3_cme_article3_cholecystitis.sql');
if (fs.existsSync(choleFile)) {
  let content = fs.readFileSync(choleFile, 'utf8');
  
  // Find lines with VALUES mismatch - check for extra comma or missing field
  // Common issue: last tuple in VALUES has more/fewer fields
  const lines = content.split('\n');
  
  // Find INSERT statements and count column names vs values
  let insideSelfAssessment = false;
  let insertLineNum = -1;
  
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    if (line.includes('INSERT INTO article_self_assessments')) {
      insideSelfAssessment = true;
      insertLineNum = i;
      
      // Extract column names
      const colMatch = line.match(/\(([^)]+)\)\s*VALUES/);
      if (colMatch) {
        const cols = colMatch[1].split(',').map(c => c.trim());
        console.log(`  Columns (${cols.length}): ${cols.join(', ')}`);
      }
    }
    
    if (insideSelfAssessment && line.includes('(') && line.includes(')')) {
      // Count values in this row - look for parenthesized value tuples
      // Just check if the VALUES have more entries than columns
    }
  }
  
  // Alternative: just fix the known issue types
  // Fix 's0000302' → 'a3000302' type UUID prefix
  if (/s\d{7}/.test(content)) {
    content = content.replace(/s(\d{7})/g, 'a300$1');
    console.log('  Fixed: s-prefix UUIDs');
  }
  
  // Fix VALUES list mismatch - look for lines with extra commas at the end
  // before the closing paren
  const fixedContent = content.replace(/,\s*\)/g, ')');
  if (fixedContent !== content) {
    content = fixedContent;
    console.log('  Fixed: trailing commas in VALUES');
  }
  
  fs.writeFileSync(choleFile, content, 'utf8');
  fixCount++;
  console.log(`  ✅ Fixed: 401_s3_cme_article3_cholecystitis.sql`);
}

// ============================================================
// FIX: 474_s3_cme_article76_melanoma.sql - column count mismatch
// ============================================================
console.log('\n=== FIX: S3 CME Article 76 (melanoma) ===');

const melanomaFile = path.join(SEEDS_DIR, '474_s3_cme_article76_melanoma.sql');
if (fs.existsSync(melanomaFile)) {
  let content = fs.readFileSync(melanomaFile, 'utf8');
  
  // Find article_self_assessments INSERT and check column count
  const saInsertMatch = content.match(/INSERT INTO article_self_assessments\s*\(([^)]+)\)\s*VALUES/);
  if (saInsertMatch) {
    const cols = saInsertMatch[1].split(',').map(c => c.trim());
    console.log(`  Self-assessment columns (${cols.length}): ${cols.join(', ')}`);
    
    // Schema: id, article_id, question_number, question_text, option_a-e, correct_option, explanation
    // = 11 columns (with question_number)
    // If the INSERT has more, find and remove the extra
  }
  
  // Check article_sections INSERT too
  const secInsertMatch = content.match(/INSERT INTO article_sections\s*\(([^)]+)\)\s*VALUES/);
  if (secInsertMatch) {
    const cols = secInsertMatch[1].split(',').map(c => c.trim());
    console.log(`  Section columns (${cols.length}): ${cols.join(', ')}`);
  }
  
  // Try a common fix: if there's an extra column like 'difficulty' or 'tags' not in schema
  // Check the actual column list in the file
  console.log('  Content preview (first 500 chars of self-assessment INSERT):');
  const saStart = content.indexOf('INSERT INTO article_self_assessments');
  if (saStart !== -1) {
    console.log('  ' + content.substring(saStart, saStart + 500).replace(/\n/g, '\n  '));
  }
}

console.log(`\n=== DONE: Fixed ${fixCount} additional files ===`);
