-- ============================================================================
-- SURGERY 3 CME ARTICLE 50: High-Yield Surgery Board Review
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000116-0000-0000-0000-000000000116', 'a0000003-0000-0000-0000-000000000003', 'High-Yield Surgery Board Review', 'Key concepts and rapid review for examinations')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000350-0000-0000-0000-000000000050',
    'c0000116-0000-0000-0000-000000000116',
    'a0000003-0000-0000-0000-000000000003',
    'Surgery Board Review: High-Yield Topics',
    'Essential Concepts for Examination Success',
    'This article summarizes high-yield surgical concepts including commonly tested facts, important classifications, key management principles, and must-know surgical emergencies for medical student and postgraduate examinations.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000350-0001-0000-0000-000000000001', 'd0000350-0000-0000-0000-000000000050', 1,
'The most common cause of small bowel obstruction in a patient with no prior surgery is:',
'Adhesions', 'Incarcerated hernia', 'Malignancy', 'Gallstone ileus', NULL,
'B', 'SBO causes: In patients WITH prior surgery: adhesions (most common - 60-70%). In VIRGIN abdomen (no prior surgery): incarcerated hernia (most common). Other causes: malignancy (especially colon/ovarian), Crohn disease, gallstone ileus, intussusception, volvulus. Key point for examination: always examine hernia orifices (groin, femoral, umbilical, incisional sites) in any patient with bowel obstruction. A missed strangulated hernia is a catastrophic error.', 'easy'),

('e0000350-0002-0000-0000-000000000002', 'd0000350-0000-0000-0000-000000000050', 2,
'Most common site of GI perforation from blunt abdominal trauma is:',
'Stomach', 'Small bowel (especially jejunum near ligament of Treitz)', 'Colon', 'Duodenum', NULL,
'B', 'Hollow viscus injury from blunt trauma: small bowel most common (jejunum near ligament of Treitz - fixed point). Mechanism: compression against spine, rapid deceleration at fixed points. Diagnosis often delayed as free air may be minimal. CT findings: free fluid without solid organ injury, bowel wall thickening, mesenteric stranding, pneumoperitoneum. Small amounts of free fluid on CT without solid organ injury should raise concern. Management: surgical repair.', 'medium'),

('e0000350-0003-0000-0000-000000000003', 'd0000350-0000-0000-0000-000000000050', 3,
'Charcot triad and Reynolds pentad are associated with:',
'Acute pancreatitis', 'Ascending cholangitis (Charcot: fever, jaundice, RUQ pain; Reynolds adds altered mental status and hypotension)', 'Appendicitis', 'Bowel obstruction', NULL,
'B', 'Ascending cholangitis: infection of biliary tree due to obstruction. CHARCOT TRIAD (50-70%): (1) Fever/chills; (2) Jaundice; (3) RUQ pain. REYNOLDS PENTAD (severe cholangitis): Charcot triad PLUS (4) Altered mental status; (5) Hypotension/shock. Reynolds pentad = severe/suppurative cholangitis = high mortality. Management: antibiotics + urgent biliary decompression (ERCP preferred, or PTC if ERCP fails). Tokyo Guidelines grade severity and guide management.', 'easy'),

('e0000350-0004-0000-0000-000000000004', 'd0000350-0000-0000-0000-000000000050', 4,
'Murphy sign is positive in:',
'Acute pancreatitis', 'Acute cholecystitis - inspiratory arrest during RUQ palpation', 'Appendicitis', 'Bowel obstruction', NULL,
'B', 'Murphy sign: patient takes deep breath while examiner palpates RUQ; positive = inspiratory arrest due to pain when inflamed gallbladder contacts examiner fingers. Specific for acute cholecystitis. Sonographic Murphy sign: same concept during ultrasound examination. Other classic signs: McBurney point (appendicitis), Rovsing sign (appendicitis - pain in RLF with LLF palpation), Psoas sign (appendicitis/retroperitoneal abscess), Obturator sign (pelvic appendicitis/abscess), Cullen sign (periumbilical ecchymosis - hemorrhagic pancreatitis), Grey-Turner sign (flank ecchymosis - retroperitoneal hemorrhage).', 'easy'),

('e0000350-0005-0000-0000-000000000005', 'd0000350-0000-0000-0000-000000000050', 5,
'Most common type of thyroid cancer and its prognosis:',
'Anaplastic with excellent prognosis', 'Papillary thyroid cancer - most common (80-85%) with excellent prognosis', 'Medullary with poor prognosis', 'Follicular with worst prognosis', NULL,
'B', 'Thyroid cancer types: PAPILLARY: most common (80-85%), excellent prognosis (>95% 10-year survival), lymphatic spread, associated with radiation exposure, psammoma bodies. FOLLICULAR: 10-15%, hematogenous spread (bone, lung), capsular/vascular invasion on histology defines malignancy. MEDULLARY: 5%, from parafollicular C cells, produces calcitonin, associated with MEN2, familial forms. ANAPLASTIC: <2%, elderly patients, undifferentiated, very poor prognosis (months), rapidly enlarging mass, may be unresectable.', 'easy'),

('e0000350-0006-0000-0000-000000000006', 'd0000350-0000-0000-0000-000000000050', 6,
'The critical view of safety (CVS) in laparoscopic cholecystectomy requires:',
'Identification of common bile duct', 'Clear hepatocystic triangle, cystic duct and artery as only structures entering gallbladder, and lower third of gallbladder separated from liver', 'Cholangiography in all cases', 'Only clipping the cystic duct', NULL,
'B', 'Critical View of Safety (CVS): most important technique to prevent bile duct injury in laparoscopic cholecystectomy. Three criteria: (1) Hepatocystic triangle cleared of fat and fibrous tissue; (2) Cystic duct and cystic artery are the ONLY two structures entering gallbladder; (3) Lower 1/3 of gallbladder separated from cystic plate (liver bed). Only after achieving CVS should structures be clipped and divided. If CVS cannot be achieved: bail-out options (subtotal cholecystectomy, fundus-first, open conversion). Document CVS with photograph.', 'medium'),

('e0000350-0007-0000-0000-000000000007', 'd0000350-0000-0000-0000-000000000050', 7,
'Glasgow Coma Scale ranges from:',
'0 to 10', '3 to 15 (E4 + V5 + M6)', '1 to 20', '5 to 15', NULL,
'B', 'Glasgow Coma Scale: Eye (E) 1-4, Verbal (V) 1-5, Motor (M) 1-6. Total: 3-15. Eye: 4=spontaneous, 3=to voice, 2=to pain, 1=none. Verbal: 5=oriented, 4=confused, 3=inappropriate words, 2=incomprehensible sounds, 1=none. Motor: 6=obeys commands, 5=localizes pain, 4=withdraws, 3=abnormal flexion (decorticate), 2=extension (decerebrate), 1=none. GCS 8 or less = coma, intubate for airway protection. Used in trauma assessment, TBI severity classification (mild 13-15, moderate 9-12, severe 3-8).', 'easy'),

('e0000350-0008-0000-0000-000000000008', 'd0000350-0000-0000-0000-000000000050', 8,
'Ranson criteria at admission for acute pancreatitis include:',
'Only age', 'Age, WBC, glucose, LDH, and AST', 'Creatinine only', 'Hematocrit only', NULL,
'B', 'Ranson criteria for acute pancreatitis - AT ADMISSION (GA LAW): Age >55, Glucose >200, AST >250, LDH >350, WBC >16,000. AT 48 HOURS (C HOBBS): Calcium <8, Hematocrit drop >10%, Oxygen PaO2 <60, Base deficit >4, BUN increase >5, Fluid sequestration >6L (estimated). Score 0-2: mild (<1% mortality); 3-4: moderate (15%); 5-6: severe (40%); >7: critical (100%). Other scoring: APACHE II, BISAP, CT Severity Index. Ranson criteria cannot be completed until 48 hours.', 'medium'),

('e0000350-0009-0000-0000-000000000009', 'd0000350-0000-0000-0000-000000000050', 9,
'Duke criteria are used to diagnose:',
'Appendicitis', 'Infective endocarditis', 'Acute pancreatitis', 'Colorectal cancer staging', NULL,
'B', 'Duke criteria: diagnostic criteria for INFECTIVE ENDOCARDITIS. Major criteria: (1) Positive blood cultures (typical organisms in 2 cultures, or persistently positive); (2) Evidence of endocardial involvement (vegetation, abscess, new regurgitation on echo). Minor criteria: predisposing condition, fever >38C, vascular phenomena (emboli, Janeway lesions), immunologic phenomena (Osler nodes, Roth spots, RF), microbiologic evidence not meeting major criteria. Definite IE: 2 major, or 1 major + 3 minor, or 5 minor criteria. Note: Duke staging is for colorectal cancer (different Duke).', 'easy'),

('e0000350-0010-0000-0000-000000000010', 'd0000350-0000-0000-0000-000000000050', 10,
'Most common complication of a Meckel diverticulum in children is:',
'Perforation', 'GI bleeding from ectopic gastric mucosa', 'Malignancy', 'Fistula formation', NULL,
'B', 'Meckel diverticulum: most common congenital GI anomaly (Rule of 2s: 2% population, 2 feet from ileocecal valve, 2 inches long, 2% symptomatic, 2 types of ectopic tissue - gastric and pancreatic). Complications by age: CHILDREN - painless rectal bleeding (most common, from ectopic gastric mucosa causing peptic ulceration of adjacent ileum); ADULTS - obstruction (most common, from bands, intussusception, volvulus). Diagnosis: Meckel scan (Tc-99m pertechnetate - taken up by ectopic gastric mucosa). Treatment: surgical resection if symptomatic.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 50 (High-Yield Surgery Board Review) with 10 self-assessment questions inserted' as status;
