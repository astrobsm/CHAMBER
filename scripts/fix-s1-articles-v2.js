/**
 * Fix S1 CME articles (102-116):
 * 1. topic_id UUID last segment: always '000000000001' → should match topic number
 * 2. difficulty_level: 'basic'→'easy', 'intermediate'→'medium', 'advanced'→'hard'
 */
const fs = require('fs');
const path = require('path');

const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');
let fixCount = 0;

const files = fs.readdirSync(SEEDS_DIR).filter(f => {
  const n = parseInt(f.match(/^(\d+)/)?.[1] || '0');
  return n >= 102 && n <= 116;
});

for (const file of files) {
  const filePath = path.join(SEEDS_DIR, file);
  let content = fs.readFileSync(filePath, 'utf8');
  let changed = false;
  const changes = [];

  // Fix 1: topic_id last segment
  // Pattern: b{7digits}-0000-0000-0000-000000000001
  // Replace last segment with 00000{7digits}
  content = content.replace(
    /b(\d{7})-0000-0000-0000-000000000001/g,
    (match, digits) => {
      const fixed = `b${digits}-0000-0000-0000-00000${digits}`;
      if (fixed !== match) {
        changes.push(`topic_id last seg: 001→${digits.replace(/^0+/, '0')}`);
        changed = true;
      }
      return fixed;
    }
  );

  // Fix 2: difficulty_level enum values
  const enumMap = { 'basic': 'easy', 'intermediate': 'medium', 'advanced': 'hard' };
  for (const [bad, good] of Object.entries(enumMap)) {
    if (content.includes(`'${bad}'`)) {
      content = content.replace(new RegExp(`'${bad}'`, 'g'), `'${good}'`);
      changes.push(`'${bad}'→'${good}'`);
      changed = true;
    }
  }

  if (changed) {
    fs.writeFileSync(filePath, content, 'utf8');
    fixCount++;
    console.log(`✅ ${file}: ${changes.join(', ')}`);
  }
}

console.log(`\nFixed ${fixCount} files`);
