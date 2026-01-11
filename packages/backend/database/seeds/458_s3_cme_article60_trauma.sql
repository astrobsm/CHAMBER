-- ============================================================================
-- SURGERY 3 CME ARTICLE 60: Trauma Surgery Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000126-0000-0000-0000-000000000126', 'a0000003-0000-0000-0000-000000000003', 'Trauma Surgery Principles', 'Core trauma surgery concepts')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000360-0000-0000-0000-000000000060',
    'c0000126-0000-0000-0000-000000000126',
    'a0000003-0000-0000-0000-000000000003',
    'Trauma Surgery: Initial Assessment and Management',
    'ATLS Principles and Surgical Decision-Making',
    'This article covers trauma surgery principles including ATLS primary and secondary survey, hemorrhagic shock classification and management, massive transfusion protocols, solid organ injury management, and damage control surgery.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000360-0001-0000-0000-000000000001', 'd0000360-0000-0000-0000-000000000060', 1,
'ATLS primary survey follows the sequence:',
'ABCDE: Airway, Breathing, Circulation, Disability, Exposure', 'DEF: Diagnosis, Examination, Follow-up', 'History first, then examination', 'Imaging before physical exam', NULL,
'A', 'ATLS Primary Survey - ABCDE: (A) Airway with cervical spine protection - establish patent airway, protect C-spine; (B) Breathing - assess ventilation, treat tension pneumothorax, open pneumothorax, flail chest; (C) Circulation with hemorrhage control - assess for shock, IV access, control external bleeding; (D) Disability - neurological assessment (GCS, pupils); (E) Exposure/Environmental control - completely undress patient, prevent hypothermia. Life-threatening conditions identified and treated during primary survey before proceeding. "Treat as you find." Repeat primary survey frequently.', 'easy'),

('e0000360-0002-0000-0000-000000000002', 'd0000360-0000-0000-0000-000000000060', 2,
'Class III hemorrhagic shock (30-40% blood volume loss) presents with:',
'Normal vital signs', 'Tachycardia greater than 120, tachypnea, decreased blood pressure, altered mental status (anxious/confused), and oliguria', 'Only mild tachycardia', 'Bradycardia', NULL,
'B', 'Hemorrhagic shock classification (ATLS): Class I (up to 15% blood loss): minimal tachycardia, normal BP, normal mental status; Class II (15-30%): tachycardia 100-120, narrowed pulse pressure, anxious; Class III (30-40%): tachycardia >120, decreased BP, tachypnea 30-40, confused/anxious, oliguria; Class IV (>40%): severe tachycardia, markedly decreased BP, negligible urine output, lethargic, life-threatening. Class III and IV require blood transfusion. Treatment: hemorrhage control is priority, resuscitation with blood products (damage control resuscitation).', 'easy'),

('e0000360-0003-0000-0000-000000000003', 'd0000360-0000-0000-0000-000000000060', 3,
'FAST (Focused Assessment with Sonography in Trauma) evaluates:',
'Only solid organs in detail', 'Four areas for free fluid: perihepatic, perisplenic, pelvic, and pericardial spaces', 'Bone fractures', 'Retroperitoneal hemorrhage', NULL,
'B', 'FAST examination: bedside ultrasound for free fluid (blood) in trauma. Four views: (1) Subxiphoid/pericardial (cardiac tamponade); (2) Right upper quadrant (Morison pouch - hepatorenal space); (3) Left upper quadrant (perisplenic, splenorenal); (4) Suprapubic/pelvic (pouch of Douglas/rectovesical). Extended FAST (eFAST): includes lung fields for pneumothorax/hemothorax. Positive FAST in unstable patient = OR for exploration. Negative FAST does not exclude injury (sensitivity ~85%). Cannot assess retroperitoneum, hollow viscus injury.', 'easy'),

('e0000360-0004-0000-0000-000000000004', 'd0000360-0000-0000-0000-000000000060', 4,
'Damage control resuscitation includes:',
'Massive crystalloid infusion', 'Permissive hypotension, limiting crystalloid, and balanced blood product transfusion (1:1:1 ratio of PRBC:FFP:platelets)', 'Aggressive crystalloid resuscitation', 'Delaying blood products', NULL,
'B', 'Damage control resuscitation: (1) PERMISSIVE HYPOTENSION: target SBP 80-90 mmHg (higher if TBI) - avoid exacerbating hemorrhage; (2) LIMIT CRYSTALLOID: excessive crystalloid worsens coagulopathy, acidosis, edema; (3) BALANCED TRANSFUSION: 1:1:1 ratio of PRBC:FFP:platelets (or equivalent whole blood); (4) Early TXA: tranexamic acid within 3 hours of injury; (5) Target normothermia, correct acidosis. Goals: prevent/reverse "lethal triad" (hypothermia, acidosis, coagulopathy) while achieving hemorrhage control. Complements damage control surgery.', 'medium'),

('e0000360-0005-0000-0000-000000000005', 'd0000360-0000-0000-0000-000000000060', 5,
'Splenic injury management has shifted toward:',
'Immediate splenectomy for all injuries', 'Non-operative management for hemodynamically stable patients, reserving surgery for instability or failed conservative management', 'Splenic artery embolization for all', 'Observation without imaging', NULL,
'B', 'Splenic injury management evolution: HEMODYNAMICALLY STABLE: non-operative management (NOM) now standard for all grades if stable. Includes: ICU monitoring, serial exams, serial hemoglobin, bed rest, NPO then diet advancement. Success rate >90% for low-grade, >80% for high-grade. Role of angioembolization: active contrast extravasation, pseudoaneurysm, high-grade injury - improves NOM success. HEMODYNAMICALLY UNSTABLE or FAILED NOM: splenectomy. Spleen preservation preferred (OPSI risk after splenectomy). Vaccinate if splenectomy performed.', 'medium'),

('e0000360-0006-0000-0000-000000000006', 'd0000360-0000-0000-0000-000000000060', 6,
'The most commonly injured solid organ in blunt abdominal trauma is:',
'Liver', 'Spleen', 'Kidney', 'Pancreas', NULL,
'B', 'Solid organ injury in blunt abdominal trauma: SPLEEN - most commonly injured (due to position, fragility, limited protection). Liver - second most common (larger, more protected by ribs). Kidney - third. Spleen and liver account for most intra-abdominal hemorrhage from blunt trauma. Pancreas, duodenum, bowel - less common but often missed (delayed presentation). Spleen at risk: left lower rib fractures. Liver at risk: right lower rib fractures. Management has evolved toward non-operative for stable patients.', 'easy'),

('e0000360-0007-0000-0000-000000000007', 'd0000360-0000-0000-0000-000000000060', 7,
'Indications for emergent laparotomy in trauma include:',
'All abdominal injuries', 'Hemodynamic instability with positive FAST, peritonitis, evisceration, or diaphragm injury with herniation', 'Stable patient with Grade II liver laceration', 'Asymptomatic patients for exploration', NULL,
'B', 'Emergent laparotomy indications in trauma: (1) Hemodynamic instability with abdominal source (positive FAST, peritoneal lavage); (2) Peritonitis (generalized guarding, rigidity); (3) Evisceration (bowel or omentum through wound); (4) Gunshot wound traversing peritoneal cavity; (5) Diaphragm injury with herniation; (6) Free air on imaging (hollow viscus perforation); (7) Massive hemoperitoneum; (8) Failed non-operative management (ongoing transfusion requirement, hemodynamic deterioration). Stable patients with isolated solid organ injury: non-operative management with close monitoring.', 'medium'),

('e0000360-0008-0000-0000-000000000008', 'd0000360-0000-0000-0000-000000000060', 8,
'Tension pneumothorax:',
'Should always be confirmed with chest X-ray before treatment', 'Is a clinical diagnosis requiring immediate needle decompression followed by chest tube, without waiting for imaging', 'Causes jugular venous distension and tracheal deviation away from affected side', 'Is not life-threatening', NULL,
'C', 'Tension pneumothorax: life-threatening emergency. Pathophysiology: one-way valve effect, progressive air accumulation, mediastinal shift, impaired venous return. Clinical diagnosis: respiratory distress, hypotension, distended neck veins, tracheal deviation (away from affected side - late sign), decreased breath sounds, hyperresonance. Do NOT wait for X-ray. Treatment: IMMEDIATE needle decompression (2nd intercostal space, midclavicular line or 4th/5th ICS, anterior axillary line) followed by tube thoracostomy. Classic presentation: trauma patient with hypotension, JVD, absent breath sounds unilaterally.', 'easy'),

('e0000360-0009-0000-0000-000000000009', 'd0000360-0000-0000-0000-000000000060', 9,
'Massive transfusion protocol is typically activated when:',
'Any blood transfusion needed', 'Greater than 10 units PRBC in 24 hours anticipated, or greater than 4 units in 1 hour, or ongoing hemorrhagic shock', 'Only for elective surgery', 'Only after crossmatched blood available', NULL,
'B', 'Massive transfusion protocol (MTP): triggered when massive hemorrhage anticipated/occurring. Definitions vary: >10 units PRBC in 24 hours, >4 units in 1 hour, ongoing hemorrhagic shock requiring blood. MTP provides: immediate release of uncrossmatched blood (O negative or type-specific), pre-packaged balanced ratios (PRBC:FFP:platelets), rapid availability. Scoring systems (ABC score, TASH score) help predict need. Goals: rapid hemorrhage control + balanced resuscitation. Components: PRBC, FFP, platelets, cryoprecipitate, TXA, calcium (to counteract citrate). Avoid crystalloid dilution.', 'medium'),

('e0000360-0010-0000-0000-000000000010', 'd0000360-0000-0000-0000-000000000060', 10,
'The lethal triad in trauma refers to:',
'Three most common injuries', 'Hypothermia, acidosis, and coagulopathy - a vicious cycle increasing mortality', 'Only coagulopathy', 'Three surgical techniques', NULL,
'B', 'Lethal triad (trauma triad of death): (1) HYPOTHERMIA: from exposure, massive transfusion (cold products), open body cavities. Impairs coagulation, cardiac function. (2) ACIDOSIS: from hypoperfusion, tissue ischemia, lactate accumulation. Worsens coagulopathy. (3) COAGULOPATHY: dilutional (crystalloid, blood products), consumption (DIC), hypothermia-induced platelet dysfunction, acidosis-impaired clotting factors. Each worsens the others - vicious cycle. Damage control strategy addresses triad: abbreviated surgery (hemorrhage/contamination control only), ICU resuscitation (rewarm, correct acidosis, correct coagulopathy), then return for definitive surgery.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 60 (Trauma Surgery Principles) with 10 self-assessment questions inserted' as status;
