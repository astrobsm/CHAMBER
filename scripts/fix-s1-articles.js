/**
 * Fix S1 CME articles (102-116):
 * 1. topic_id has wrong last segment (always 000000000001 instead of matching the topic number)
 * 2. difficulty_level uses invalid enum values (basic→easy, intermediate→medium, advanced→hard)
 * 3. Also need to verify correct topic mapping by subject
 */
const fs = require('fs');
const path = require('path');

const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');

// Map of article file → correct topic_id based on matching subjects
// Topics in DB:
// b0000001 = Definition of Terms
// b0000002 = TPR Chart and Pyrexia
// b0000003 = Shock
// b0000004 = Fluid and Electrolytes
// b0000005 = Sutures and Surgical Needles
// b0000006 = Mensuration and Gauges
// b0000007 = Blood and Blood Products
// b0000008 = Blood Conservation
// b0000009 = Fracture Management
// b0000010 = Surgical Wounds
// b0000011 = Abdominal Wound Incisions
// b0000012 = Nasogastric Intubation
// b0000013 = CPR
// b0000014 = Leg Ulcers
// b0000015 = Intraoperative Monitoring
// b0000016 = Urethral Catheterization

const articleTopicMap = {
  '101': { num: '01', topic: 'b0000001' },  // General Surgery → Definition of Terms
  '102': { num: '02', topic: 'b0000008' },  // Blood Conservation → Blood Conservation
  '103': { num: '03', topic: 'b0000003' },  // Shock → Shock
  '104': { num: '04', topic: 'b0000004' },  // Fluids & Electrolytes → Fluid and Electrolytes
  '105': { num: '05', topic: 'b0000005' },  // Wound Management → Sutures/Surgical Needles... actually wrong
  '106': { num: '06', topic: 'b0000005' },  // Sutures & Instruments → Sutures and Surgical Needles
  '107': { num: '07', topic: 'b0000007' },  // Blood Products → Blood and Blood Products
  '108': { num: '08', topic: 'b0000011' },  // Abdominal Incisions → Abdominal Wound Incisions
  '109': { num: '09', topic: 'b0000009' },  // Fracture Management → Fracture Management
  '110': { num: '10', topic: 'b0000006' },  // Mensuration → Mensuration and Gauges
  '111': { num: '11', topic: 'b0000012' },  // Nasogastric Intubation → Nasogastric Intubation
  '112': { num: '12', topic: 'b0000015' },  // Intraoperative Monitoring → Intraoperative Monitoring
  '113': { num: '13', topic: 'b0000013' },  // CPR → CPR
  '114': { num: '14', topic: 'b0000014' },  // Leg Ulcers → Leg Ulcers
  '115': { num: '15', topic: 'b0000002' },  // TPR Chart → TPR Chart
  '116': { num: '16', topic: 'b0000016' },  // Urethral Catheterization → Urethral Catheterization
};

// Wait, article 105 is "Wound Management" but topic b0000005 is "Sutures". 
// Let me fix: b0000010 is "Surgical Wounds and Antibiotic Prophylaxis"
// So article 105 → b0000010 (Wound Management → Surgical Wounds)
// And article 106 should go to → b0000005 (Sutures)
articleTopicMap['105'] = { num: '05', topic: 'b0000010' }; // Wound Management → Surgical Wounds
articleTopicMap['106'] = { num: '06', topic: 'b0000005' }; // Sutures → Sutures

// Enum fixes
const enumFixes = {
  'basic': 'easy',
  'intermediate': 'medium',
  'advanced': 'hard'
};

let fixCount = 0;

const files = fs.readdirSync(SEEDS_DIR).filter(f => {
  const n = parseInt(f.match(/^(\d+)/)?.[1] || '0');
  return n >= 101 && n <= 116;
});

for (const file of files) {
  const fileNum = file.match(/^(\d+)/)[1];
  const mapping = articleTopicMap[fileNum];
  if (!mapping) continue;
  
  const filePath = path.join(SEEDS_DIR, file);
  let content = fs.readFileSync(filePath, 'utf8');
  let changed = false;
  const changes = [];

  // Fix topic_id: replace wrong topic_id with correct one
  // Pattern: topic_id is like 'b0000XXX-0000-0000-0000-000000000001' 
  // Correct pattern: 'b0000XXX-0000-0000-0000-00000000000X' where X matches the topic number
  const topicIdRegex = /('b\d{7}-\d{4}-\d{4}-\d{4}-\d{12}')/g;
  const correctTopicNum = mapping.topic.substring(5); // e.g., '003' from 'b0000003'
  const correctTopicId = `'${mapping.topic}-0000-0000-0000-0000000000${correctTopicNum.padStart(2, '0')}'`;
  
  // Actually, the topic IDs in DB have a specific format. Let me construct properly:
  // b000000X-0000-0000-0000-00000000000X
  // where X is the 2-digit topic number (padded)
  const topicPrefix = mapping.topic; // e.g., 'b0000003'
  const topicSuffix = topicPrefix.substring(1); // e.g., '0000003'
  const fullCorrectTopicId = `${topicPrefix}-0000-0000-0000-000000000${topicSuffix.substring(4)}`; 
  // For b0000003: b0000003-0000-0000-0000-000000000003
  // For b0000012: b0000012-0000-0000-0000-000000000012
  // For b0000015: b0000015-0000-0000-0000-000000000015
  
  content = content.replace(topicIdRegex, (match, topicId) => {
    if (topicId !== `'${fullCorrectTopicId}'`) {
      changes.push(`topic_id: ${topicId} → '${fullCorrectTopicId}'`);
      changed = true;
      return `'${fullCorrectTopicId}'`;
    }
    return match;
  });
  
  // Fix difficulty_level enum values
  for (const [bad, good] of Object.entries(enumFixes)) {
    const pattern = new RegExp(`'${bad}'(,?\\s*\\n\\s*\\d+,)`, 'g');
    if (content.includes(`'${bad}'`)) {
      // More targeted: replace only in the context of cme_articles INSERT
      const oldContent = content;
      content = content.replace(
        new RegExp(`difficulty_level[\\s\\S]*?'${bad}'`, 'g'),
        (match) => match.replace(`'${bad}'`, `'${good}'`)
      );
      // Also handle the case where it's just a value in position
      content = content.replace(
        new RegExp(`'${bad}',\\s*\\n\\s*(\\d+),\\s*\\n\\s*(true|false)`, 'g'),
        `'${good}',\n    $1,\n    $2`
      );
      if (content !== oldContent) {
        changes.push(`difficulty_level: '${bad}' → '${good}'`);
        changed = true;
      }
    }
  }
  
  if (changed) {
    fs.writeFileSync(filePath, content, 'utf8');
    fixCount++;
    console.log(`✅ ${file}: ${changes.join(', ')}`);
  } else {
    console.log(`⏭️  ${file}: no changes needed`);
  }
}

console.log(`\nFixed ${fixCount} files`);
