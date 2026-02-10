// Fix Surgery 2 topic/article UUID conflicts
// Changes c0000XXX to c2000XXX and d0000XXX to d2000XXX in all Surgery 2 seed files

const fs = require('fs');
const path = require('path');

const seedDir = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');

// Get all files that need fixing
const allFiles = fs.readdirSync(seedDir).filter(f => f.endsWith('.sql'));
const filesToFix = allFiles.filter(f => {
  // 300_surgery2_complete_setup.sql
  if (f === '300_surgery2_complete_setup.sql') return true;
  // 303-361 surgery2 article files
  if (f.match(/^3\d\d_surgery2_article/) ) return true;
  // 303b
  if (f.match(/^303b_surgery2/)) return true;
  // 362-364 fix mcqs
  if (f.match(/^36[2-4]_surgery2/)) return true;
  // 337-361 surgery2 article files
  if (f.match(/^3[3-6]\d_surgery2_article/)) return true;
  // 400-461 qbank files
  if (f.match(/^4\d\d_surgery2_qbank/)) return true;
  return false;
});

console.log(`Found ${filesToFix.length} Surgery 2 files to fix`);

let fixedCount = 0;
for (const file of filesToFix) {
  const fp = path.join(seedDir, file);
  let content = fs.readFileSync(fp, 'utf8');
  let changed = false;
  
  for (let i = 1; i <= 61; i++) {
    const padI7 = String(i).padStart(7, '0');
    const padI6 = String(i).padStart(6, '0');
    const padS = String(i).padStart(12, '0');
    
    // Topic IDs: c0000XXX -> c2000XXX
    const oldT = 'c' + padI7 + '-0000-0000-0000-' + padS;
    const newT = 'c2' + padI6 + '-0000-0000-0000-' + padS;
    if (content.includes(oldT)) {
      content = content.split(oldT).join(newT);
      changed = true;
    }
    
    // Article IDs: d0000XXX -> d2000XXX
    const oldA = 'd' + padI7 + '-0000-0000-0000-' + padS;
    const newA = 'd2' + padI6 + '-0000-0000-0000-' + padS;
    if (content.includes(oldA)) {
      content = content.split(oldA).join(newA);
      changed = true;
    }
  }
  
  if (changed) {
    fs.writeFileSync(fp, content, 'utf8');
    console.log(`  Fixed: ${file}`);
    fixedCount++;
  } else {
    console.log(`  No changes: ${file}`);
  }
}

console.log(`\nDone! Fixed ${fixedCount} files.`);
