/**
 * Fix S1 CME article reference_numbers array literals
 * The reference_numbers column is INTEGER[] but values like '1,2' are malformed.
 * Need to convert to '{1,2}' format (PostgreSQL array literal).
 */
const fs = require('fs');
const path = require('path');

const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');
let filesFixed = 0;

// Get all S1 CME article files (101-116)
const files = fs.readdirSync(SEEDS_DIR).filter(f => {
  const n = parseInt(f.match(/^(\d+)/)?.[1] || '0');
  return n >= 101 && n <= 116;
});

for (const file of files) {
  const filePath = path.join(SEEDS_DIR, file);
  let content = fs.readFileSync(filePath, 'utf8');
  let changed = false;

  // Pattern: reference_numbers values at the end of INSERT VALUES
  // Current: '1,2'); or '3');  or '1,2,3');
  // Need:   '{1,2}'); or '{3}'); or '{1,2,3}');
  // 
  // But be careful: values like '1' (single number) are also used
  // They need '{1}' format too since the column type is INTEGER[]
  
  // Match the pattern: the last value in each VALUES() block for self_assessments
  // Format: , 'DIGITS[,DIGITS...]');
  // Replace: , '{DIGITS[,DIGITS...]}');
  
  const newContent = content.replace(
    /,\s*'(\d+(?:,\d+)*?)'\);/g,
    (match, nums) => {
      return `, '{${nums}}');`;
    }
  );
  
  if (newContent !== content) {
    fs.writeFileSync(filePath, newContent, 'utf8');
    filesFixed++;
    
    // Count how many replacements
    const origMatches = content.match(/'(\d+(?:,\d+)+)'\)/g) || [];
    console.log(`  ✅ Fixed ${file} (${origMatches.length} multi-value arrays)`);
  }
}

console.log(`\nDone: Fixed ${filesFixed} files`);
