-- ============================================================================
-- SURGERY 3 CME ARTICLE 28: Acute Abdomen
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000094-0000-0000-0000-000000000094', 'a0000003-0000-0000-0000-000000000003', 'Acute Abdomen', 'Evaluation and management of acute abdominal conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000328-0000-0000-0000-000000000028',
    'c0000094-0000-0000-0000-000000000094',
    'a0000003-0000-0000-0000-000000000003',
    'The Acute Abdomen: Clinical Evaluation and Management',
    'Diagnostic Approach and Decision Making',
    'This article provides a systematic approach to the acute abdomen including differential diagnosis by location, clinical examination findings, appropriate investigations, indications for surgery, and management of common causes including appendicitis, perforation, obstruction, and mesenteric ischemia.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000328-0001-0000-0000-000000000001', 'd0000328-0000-0000-0000-000000000028', 1,
'Peritonitis from perforated peptic ulcer classically presents with:',
'Gradual onset of dull aching pain', 'Sudden onset of severe epigastric pain radiating to the shoulders with board-like rigidity', 'Crampy intermittent pain', 'Pain relieved by eating', NULL,
'B', 'Perforated peptic ulcer: sudden onset ("thunderclap") severe epigastric pain, may radiate to shoulders (phrenic nerve irritation). Examination: board-like rigidity (involuntary guarding due to peritonitis), absent bowel sounds, shock in delayed presentation. Investigations: erect CXR shows pneumoperitoneum (70-80%), CT if CXR negative. Treatment: resuscitation, IV PPI, antibiotics, urgent surgery (omental patch closure most common). Risk factors: NSAIDs, H. pylori, smoking.', 'easy'),

('e0000328-0002-0000-0000-000000000002', 'd0000328-0000-0000-0000-000000000028', 2,
'Pain out of proportion to physical examination findings is characteristic of:',
'Appendicitis', 'Acute mesenteric ischemia', 'Acute cholecystitis', 'Diverticulitis', NULL,
'B', 'Mesenteric ischemia classic triad: (1) Severe abdominal pain, (2) Pain out of proportion to physical findings (initially soft abdomen despite severe pain), (3) Rapid clinical deterioration. Causes: arterial embolism (AF, MI), arterial thrombosis (atherosclerosis), venous thrombosis, NOMI (non-occlusive - shock states). Late signs: peritonitis, bloody diarrhea, metabolic acidosis. High mortality (~60-80%). Diagnosis: CT angiography. Treatment: embolectomy, resection of non-viable bowel.', 'medium'),

('e0000328-0003-0000-0000-000000000003', 'd0000328-0000-0000-0000-000000000028', 3,
'Rovsing sign, psoas sign, and obturator sign are associated with:',
'Cholecystitis', 'Appendicitis', 'Pancreatitis', 'Renal colic', NULL,
'B', 'Appendicitis signs: (1) Rovsing sign - RLQ pain on LLQ palpation (peritoneal irritation); (2) Psoas sign - RLQ pain on right hip extension (retrocecal appendix); (3) Obturator sign - RLQ pain on internal rotation of flexed right hip (pelvic appendix); (4) McBurney point tenderness (1/3 distance from ASIS to umbilicus); (5) Blumberg sign (rebound tenderness). Classic history: periumbilical pain migrating to RLQ, anorexia, nausea. Alvarado score for clinical assessment.', 'easy'),

('e0000328-0004-0000-0000-000000000004', 'd0000328-0000-0000-0000-000000000028', 4,
'Rigler sign on abdominal X-ray indicates:',
'Small bowel obstruction', 'Free intraperitoneal gas with visualization of both sides of bowel wall', 'Large bowel obstruction', 'Appendicitis', NULL,
'B', 'Rigler sign (double-wall sign): visualization of both inner (mucosal) and outer (serosal) surfaces of bowel wall, indicating free intraperitoneal air outlining the serosal surface. Seen on supine abdominal X-ray when ~1000 mL of free air present. Other pneumoperitoneum signs: air under diaphragm (erect CXR - most sensitive), football sign (large pneumoperitoneum outlining peritoneal cavity), falciform ligament sign. CT most sensitive for small amounts of free air.', 'medium'),

('e0000328-0005-0000-0000-000000000005', 'd0000328-0000-0000-0000-000000000028', 5,
'The most common cause of small bowel obstruction in developed countries is:',
'Hernia', 'Adhesions from previous surgery', 'Malignancy', 'Crohn''s disease', NULL,
'B', 'SBO causes (developed countries): Adhesions 60-75% (most common), hernias 10-15%, malignancy 10-15%, Crohn''s, intussusception, gallstone ileus. In developing countries, hernias remain leading cause. Presentation: colicky abdominal pain, vomiting (earlier in proximal obstruction), distension, constipation/obstipation. X-ray: dilated small bowel (>3cm), multiple air-fluid levels. CT: transition point identification. Management: NGT, IV fluids, surgery if complete obstruction, strangulation, or failure to resolve.', 'easy'),

('e0000328-0006-0000-0000-000000000006', 'd0000328-0000-0000-0000-000000000028', 6,
'Features suggesting strangulation in bowel obstruction include:',
'Improvement with conservative management', 'Fever, tachycardia, continuous pain, localized tenderness, leukocytosis, and acidosis', 'Normal white cell count', 'Complete resolution of vomiting', NULL,
'B', 'Strangulation signs (bowel viability compromised): (1) Continuous (rather than colicky) pain; (2) Fever; (3) Tachycardia; (4) Localized peritoneal signs/tenderness; (5) Leukocytosis; (6) Metabolic acidosis; (7) Elevated lactate; (8) Hemodynamic instability. CT findings: mesenteric haziness, bowel wall thickening, pneumatosis, portal venous gas, reduced wall enhancement. Strangulation requires urgent surgery - mortality increases with delay. Do not wait for all signs to develop.', 'medium'),

('e0000328-0007-0000-0000-000000000007', 'd0000328-0000-0000-0000-000000000028', 7,
'Murphy sign is positive in:',
'Appendicitis', 'Acute cholecystitis - inspiratory arrest on palpation of right upper quadrant', 'Pancreatitis', 'Perforated ulcer', NULL,
'B', 'Murphy sign: patient catches breath/stops inspiring when examiner palpates RUQ during deep inspiration, as inflamed gallbladder descends to meet examining hand. Indicates acute cholecystitis. Sonographic Murphy sign: focal tenderness over gallbladder with ultrasound probe. Other cholecystitis signs: RUQ pain, fever, nausea, palpable gallbladder (in some). Ultrasound: gallstones, gallbladder wall thickening (>3mm), pericholecystic fluid, positive sonographic Murphy.', 'easy'),

('e0000328-0008-0000-0000-000000000008', 'd0000328-0000-0000-0000-000000000028', 8,
'The "coffee bean" sign on abdominal X-ray is characteristic of:',
'Small bowel obstruction', 'Sigmoid volvulus', 'Appendicitis', 'Splenic injury', NULL,
'B', 'Sigmoid volvulus X-ray signs: (1) Coffee bean sign - massively dilated sigmoid loop resembling coffee bean, extending from pelvis toward right upper quadrant; (2) Loss of haustral markings; (3) Apex pointing to RUQ. Clinical: elderly, institutionalized, psychiatric patients, chronic constipation, African/South American populations. Treatment: if no peritonitis - rigid sigmoidoscopy with rectal tube decompression (high recurrence), followed by elective sigmoid colectomy. If peritonitis or gangrene - emergency surgery.', 'medium'),

('e0000328-0009-0000-0000-000000000009', 'd0000328-0000-0000-0000-000000000028', 9,
'Cullen sign and Grey-Turner sign are associated with:',
'Appendicitis', 'Severe acute pancreatitis with hemorrhage', 'Cholecystitis', 'Simple small bowel obstruction', NULL,
'B', 'Cullen sign: periumbilical ecchymosis. Grey-Turner sign: flank ecchymosis. Both indicate retroperitoneal hemorrhage, classically associated with severe acute pancreatitis (hemorrhagic pancreatitis). Also seen in: ruptured AAA, ruptured ectopic pregnancy, retroperitoneal hemorrhage from other causes. These are late signs (may take 24-48 hours to develop) and indicate severe disease with poor prognosis. Seen in ~1-3% of acute pancreatitis cases.', 'medium'),

('e0000328-0010-0000-0000-000000000010', 'd0000328-0000-0000-0000-000000000028', 10,
'Absolute indications for emergency laparotomy in acute abdomen include:',
'Mild tenderness', 'Generalized peritonitis, visceral perforation, intra-abdominal hemorrhage, bowel ischemia/gangrene', 'Localized pain that responds to analgesics', 'Normal inflammatory markers', NULL,
'B', 'Emergency laparotomy indications: (1) Generalized peritonitis; (2) Proven or suspected visceral perforation; (3) Intra-abdominal hemorrhage (ruptured AAA, splenic rupture, ectopic pregnancy); (4) Bowel ischemia/gangrene; (5) Strangulated hernia; (6) Acute mesenteric ischemia. Relative indications: localized peritonitis failing conservative treatment, obstruction not resolving. Pre-operative optimization: resuscitation, antibiotics, VTE prophylaxis, consent, blood products available. Damage control surgery if patient unstable.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 28 (Acute Abdomen) with 10 self-assessment questions inserted' as status;
