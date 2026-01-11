-- ============================================================================
-- SURGERY 3 CME ARTICLE 8: Trauma and Emergency Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000074-0000-0000-0000-000000000074', 'a0000003-0000-0000-0000-000000000003', 'Trauma Management', 'Initial assessment and management of trauma patients')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000308-0000-0000-0000-000000000008',
    'c0000074-0000-0000-0000-000000000074',
    'a0000003-0000-0000-0000-000000000003',
    'Trauma Management: ATLS Principles and Emergency Surgery',
    'Primary Survey, Resuscitation and Damage Control Surgery',
    'This article covers Advanced Trauma Life Support (ATLS) principles including primary survey (ABCDE), secondary survey, hemorrhagic shock classification, damage control surgery, and management of specific injuries including splenic, liver, and hollow viscus injuries.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000308-0001-0000-0000-000000000001', 'd0000308-0000-0000-0000-000000000008', 1,
'The correct sequence for the primary survey in trauma (ATLS) is:',
'Circulation, Airway, Breathing, Disability, Exposure', 'Airway with C-spine protection, Breathing, Circulation, Disability, Exposure', 'Breathing, Airway, Circulation, Exposure, Disability', 'Disability, Airway, Breathing, Circulation, Exposure', NULL,
'B', 'ABCDE: Airway (with cervical spine protection), Breathing, Circulation (hemorrhage control), Disability (neurologic status), Exposure (completely undress patient with environmental control). This prioritization addresses life-threatening issues in order of urgency. Airway obstruction kills fastest (minutes), followed by breathing problems (tension pneumothorax), then circulation (hemorrhage).', 'easy'),

('e0000308-0002-0000-0000-000000000002', 'd0000308-0000-0000-0000-000000000008', 2,
'A trauma patient has distended neck veins, hypotension, and muffled heart sounds. The most likely diagnosis is:',
'Tension pneumothorax', 'Cardiac tamponade', 'Hemorrhagic shock', 'Flail chest', NULL,
'B', 'Beck''s triad of cardiac tamponade: hypotension, distended neck veins (JVD), and muffled heart sounds. Pulsus paradoxus (>10mmHg drop in systolic BP with inspiration) may be present. Diagnosis is confirmed by FAST (pericardial fluid). Treatment is pericardiocentesis (temporizing) or pericardial window/sternotomy. Tension pneumothorax also causes hypotension and JVD but has absent breath sounds and tracheal deviation.', 'easy'),

('e0000308-0003-0000-0000-000000000003', 'd0000308-0000-0000-0000-000000000008', 3,
'Class III hemorrhagic shock (ATLS classification) involves blood loss of:',
'Up to 15% (750mL)', '15-30% (750-1500mL)', '30-40% (1500-2000mL)', 'Greater than 40% (>2000mL)', NULL,
'C', 'Hemorrhagic shock classes: Class I (<15%, 750mL) - minimal symptoms; Class II (15-30%, 750-1500mL) - tachycardia, anxiety; Class III (30-40%, 1500-2000mL) - hypotension, tachycardia, decreased urine output, confusion; Class IV (>40%, >2000mL) - severe hypotension, anuria, altered consciousness, requires blood. Class III is the first class with hypotension.', 'medium'),

('e0000308-0004-0000-0000-000000000004', 'd0000308-0000-0000-0000-000000000008', 4,
'The FAST examination in trauma evaluates for free fluid in which locations?',
'Chest only', 'Perihepatic, perisplenic, pelvic, and pericardial spaces', 'Retroperitoneum', 'Brain ventricles', NULL,
'B', 'FAST (Focused Assessment with Sonography in Trauma) evaluates four areas: (1) Perihepatic/Morrison pouch, (2) Perisplenic, (3) Pelvic (pouch of Douglas), (4) Pericardial (subxiphoid view). Extended FAST (eFAST) adds bilateral chest views for pneumothorax/hemothorax. FAST cannot evaluate retroperitoneal injuries (kidneys, pancreas, duodenum) and may miss solid organ injuries without hemoperitoneum.', 'easy'),

('e0000308-0005-0000-0000-000000000005', 'd0000308-0000-0000-0000-000000000008', 5,
'A hemodynamically stable patient with a Grade III splenic laceration (AAST classification) is best managed with:',
'Immediate splenectomy', 'Non-operative management with observation', 'Exploratory laparotomy with splenorrhaphy', 'Splenic artery ligation', NULL,
'B', 'Non-operative management (NOM) is the standard for hemodynamically stable patients with splenic injuries, regardless of grade. Success rates are 80-95% for grades I-III, 60-70% for grades IV-V. Requirements: hemodynamic stability, no peritonitis, ability to monitor closely, blood products available, angioembolization capability. NOM preserves splenic immunologic function (protection against encapsulated organisms).', 'medium'),

('e0000308-0006-0000-0000-000000000006', 'd0000308-0000-0000-0000-000000000008', 6,
'Damage control surgery (DCS) involves:',
'Complete definitive repair of all injuries in one operation', 'Abbreviated surgery to control hemorrhage and contamination, followed by ICU resuscitation and later definitive repair', 'Non-operative management only', 'Delayed surgery after 48 hours', NULL,
'B', 'Damage control surgery addresses the "lethal triad" of hypothermia, acidosis, and coagulopathy. Phase 1: Abbreviated laparotomy (control bleeding, control contamination, temporary abdominal closure). Phase 2: ICU resuscitation (rewarm, correct acidosis, replace clotting factors). Phase 3: Definitive repair after physiologic normalization (usually 24-48 hours). Indicated for severe injuries with physiologic derangement.', 'medium'),

('e0000308-0007-0000-0000-000000000007', 'd0000308-0000-0000-0000-000000000008', 7,
'A patient sustains blunt abdominal trauma with free air on CT scan. This finding indicates:',
'Solid organ injury', 'Hollow viscus perforation requiring surgery', 'Normal finding in trauma', 'Subcutaneous emphysema only', NULL,
'B', 'Free intraperitoneal air indicates hollow viscus perforation (stomach, small bowel, colon) or diaphragmatic injury with gastric herniation. This requires emergent exploratory laparotomy. CT may also show bowel wall thickening, mesenteric stranding, or bowel discontinuity. Duodenal rupture may show retroperitoneal air. Delayed presentation of bowel injury carries high mortality.', 'easy'),

('e0000308-0008-0000-0000-000000000008', 'd0000308-0000-0000-0000-000000000008', 8,
'The most commonly injured solid organ in blunt abdominal trauma is:',
'Liver', 'Spleen', 'Kidney', 'Pancreas', NULL,
'B', 'The spleen is the most commonly injured solid organ in blunt abdominal trauma, followed by the liver. The spleen is vulnerable due to its location (left upper quadrant), fixed attachments (ligaments), and thin capsule. Left lower rib fractures should raise suspicion for splenic injury. Kehr sign (left shoulder pain from diaphragmatic irritation by blood) may be present.', 'easy'),

('e0000308-0009-0000-0000-000000000009', 'd0000308-0000-0000-0000-000000000008', 9,
'A patient with a stab wound to the left chest at the 5th intercostal space, midclavicular line should be evaluated for:',
'Lung injury only', 'Cardiac and abdominal injury due to thoracoabdominal zone', 'Only external wound care needed', 'Brain injury', NULL,
'B', 'The thoracoabdominal zone (nipple line anteriorly to scapular tip posteriorly, between 4th intercostal space and costal margin) contains both thoracic and abdominal structures. The diaphragm rises to the 4th intercostal space on the right, 5th on the left during expiration. Stab wounds here require evaluation for cardiac, lung, diaphragm, liver, spleen, and stomach injuries. FAST, chest X-ray, and possibly laparoscopy/thoracoscopy may be needed.', 'medium'),

('e0000308-0010-0000-0000-000000000010', 'd0000308-0000-0000-0000-000000000008', 10,
'Tension pneumothorax requires immediate treatment with:',
'CT scan for confirmation', 'Needle decompression followed by chest tube', 'Observation and serial chest X-rays', 'Intubation first', NULL,
'B', 'Tension pneumothorax is a clinical diagnosis requiring immediate treatment. Do not delay for imaging. Needle decompression (2nd intercostal space, midclavicular line, or 5th intercostal space, anterior axillary line) provides temporizing relief. Definitive treatment is tube thoracostomy (chest tube). Signs: hypotension, tracheal deviation, absent breath sounds, hyperresonance, JVD. It causes obstructive shock from impaired venous return.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 8 (Trauma Management) with 10 self-assessment questions inserted' as status;
