-- ============================================================================
-- SURGERY 3 CME ARTICLE 2: Acute Appendicitis
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic for Acute Appendicitis
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000068-0000-0000-0000-000000000068', 'a0000003-0000-0000-0000-000000000003', 'Acute Appendicitis', 'Diagnosis and management of acute appendicitis')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000302-0000-0000-0000-000000000002',
    'c0000068-0000-0000-0000-000000000068',
    'a0000003-0000-0000-0000-000000000003',
    'Acute Appendicitis: Diagnosis and Management',
    'A Comprehensive Guide to the Most Common Surgical Emergency',
    'Acute appendicitis is the most common surgical emergency worldwide with a lifetime risk of 7-8%. This article covers pathophysiology, clinical presentation, diagnostic evaluation including scoring systems and imaging, surgical and non-operative management, and complications. Special populations including pregnant women, children, and elderly are discussed.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Article Sections
INSERT INTO article_sections (id, article_id, section_type, section_order, title, content, is_expandable) VALUES

('a3000302-0001-0000-0000-000000000001', 'd0000302-0000-0000-0000-000000000002', 'learning_objectives', 1, 'Learning Objectives',
'After completing this article, learners will be able to:
1. Understand the pathophysiology and clinical presentation of acute appendicitis
2. Apply clinical scoring systems for risk stratification
3. Interpret diagnostic imaging appropriately
4. Manage appendicitis including surgical and non-operative approaches
5. Recognize and manage complications', false),

('a3000302-0002-0000-0000-000000000002', 'd0000302-0000-0000-0000-000000000002', 'content', 2, 'Introduction',
'Acute appendicitis is the most common surgical emergency worldwide, with a lifetime risk of approximately 7-8%. It affects all age groups but is most common between ages 10-30 years. Early diagnosis and treatment are essential to prevent complications such as perforation, abscess formation, and peritonitis.', false),

('a3000302-0003-0000-0000-000000000003', 'd0000302-0000-0000-0000-000000000002', 'content', 3, 'Anatomy',
'The appendix is a blind-ended tube arising from the posteromedial aspect of the cecum, approximately 2 cm below the ileocecal valve. Its position is variable:

**Retrocecal (65%)**: Behind the cecum - most common position
**Pelvic (30%)**: Descending into the pelvis
**Subcecal (2%)**: Below the cecum
**Pre-ileal/Post-ileal (2%)**: Anterior or posterior to ileum
**Paracolic (1%)**: Along the lateral cecal wall

The base of the appendix is consistently located at the convergence of the three taeniae coli, which is a reliable surgical landmark.', true),

('a3000302-0004-0000-0000-000000000004', 'd0000302-0000-0000-0000-000000000002', 'content', 4, 'Pathophysiology',
'The classic theory of appendicitis involves:

1. **Luminal obstruction**: Caused by fecaliths (most common), lymphoid hyperplasia, parasites, tumors, or foreign bodies
2. **Mucosal secretion continues**: Leading to increased intraluminal pressure
3. **Venous congestion**: Impaired venous drainage causes edema
4. **Bacterial invasion**: Translocation of gut bacteria through compromised mucosa
5. **Arterial compromise**: Progressive ischemia
6. **Gangrene and perforation**: If untreated, typically occurs 24-72 hours after symptom onset', true),

('a3000302-0005-0000-0000-000000000005', 'd0000302-0000-0000-0000-000000000002', 'content', 5, 'Classic Clinical Presentation',
'The classic presentation occurs in only 50-60% of patients:

1. **Periumbilical pain**: Visceral pain from appendiceal distension (T10 dermatome)
2. **Migration to RLQ**: Pain localizes to McBurney point (one-third distance from ASIS to umbilicus) as parietal peritoneum becomes inflamed
3. **Anorexia**: Present in 80% of cases
4. **Nausea and vomiting**: Usually follows onset of pain
5. **Low-grade fever**: 37.5-38.5C', false),

('a3000302-0006-0000-0000-000000000006', 'd0000302-0000-0000-0000-000000000002', 'content', 6, 'Atypical Presentations',
'**Retrocecal appendix**: Back pain, psoas sign positive, minimal abdominal findings
**Pelvic appendix**: Suprapubic pain, urinary symptoms, diarrhea
**Pregnancy**: RUQ pain (displaced appendix), may mimic obstetric conditions
**Elderly**: Vague symptoms, delayed presentation, higher perforation rates
**Children**: Difficulty localizing pain, rapid progression to perforation
**Immunocompromised**: Blunted inflammatory response, atypical presentation', true),

('a3000302-0007-0000-0000-000000000007', 'd0000302-0000-0000-0000-000000000002', 'content', 7, 'Physical Examination Signs',
'**McBurney point tenderness**: Point one-third from ASIS to umbilicus
**Rovsing sign**: RLQ pain with palpation of LLQ
**Psoas sign**: Pain with right hip extension (retrocecal appendix)
**Obturator sign**: Pain with internal rotation of flexed right hip (pelvic appendix)
**Dunphy sign**: Increased pain with coughing
**Rebound tenderness**: Suggests peritoneal irritation
**Guarding/rigidity**: Indicates peritonitis', false),

('a3000302-0008-0000-0000-000000000008', 'd0000302-0000-0000-0000-000000000002', 'content', 8, 'Laboratory Studies',
'**WBC count**: Elevated (>10,000/uL) in 80-85% of cases
**Left shift**: Increased neutrophils, bandemia
**CRP**: Elevated, useful for monitoring and predicting perforation
**Urinalysis**: May show sterile pyuria or microscopic hematuria (irritation from adjacent appendix)
**Beta-hCG**: Essential in women of childbearing age to rule out ectopic pregnancy', false),

('a3000302-0009-0000-0000-000000000009', 'd0000302-0000-0000-0000-000000000002', 'content', 9, 'Alvarado Score (MANTRELS)',
'**M**igration of pain: 1 point
**A**norexia: 1 point
**N**ausea/vomiting: 1 point
**T**enderness in RLQ: 2 points
**R**ebound pain: 1 point
**E**levation of temperature: 1 point
**L**eukocytosis: 2 points
**S**hift to left: 1 point
**Total: 10 points**

**Interpretation:**
- Score 1-4: Appendicitis unlikely
- Score 5-6: Possible appendicitis (observe or image)
- Score 7-8: Probable appendicitis
- Score 9-10: Very probable appendicitis', true),

('a3000302-0010-0000-0000-000000000010', 'd0000302-0000-0000-0000-000000000002', 'content', 10, 'Imaging Studies',
'**Ultrasound**
- First-line in children and pregnant women (no radiation)
- Findings: Non-compressible, aperistaltic appendix >6mm, appendicolith, periappendiceal fluid
- Sensitivity: 78-83%, Specificity: 83-93%
- Limitations: Operator-dependent, obesity, bowel gas

**CT Scan with IV Contrast**
- Gold standard in adults
- Findings: Dilated appendix >6mm, wall thickening, periappendiceal fat stranding, appendicolith, abscess
- Sensitivity: 94-98%, Specificity: 95-98%

**MRI**
- Alternative in pregnant women when US inconclusive
- Sensitivity: 90-97%, Specificity: 94-99%
- No radiation exposure', true),

('a3000302-0011-0000-0000-000000000011', 'd0000302-0000-0000-0000-000000000002', 'content', 11, 'Surgical Treatment',
'**Laparoscopic appendectomy** is the preferred approach:
- Diagnostic and therapeutic
- Lower wound infection rates
- Less postoperative pain
- Faster recovery
- Better visualization (diagnostic advantage)

**Open appendectomy** via McBurney (muscle-splitting) or Rocky-Davis (transverse) incision remains appropriate for:
- Limited laparoscopic expertise
- Extensive adhesions
- Some cases of perforation with diffuse peritonitis

**Timing of Surgery**
- Uncomplicated appendicitis: Surgery within 24 hours (urgent, not emergent)
- Complicated appendicitis with sepsis: Emergent surgery after resuscitation', false),

('a3000302-0012-0000-0000-000000000012', 'd0000302-0000-0000-0000-000000000002', 'content', 12, 'Non-Operative Management',
'Antibiotic-first strategy may be considered for:
- Uncomplicated appendicitis in selected patients
- Appendiceal phlegmon/abscess: Initial antibiotics with or without percutaneous drainage, interval appendectomy at 6-8 weeks

**Evidence**: The CODA trial showed that antibiotics alone were non-inferior to surgery for uncomplicated appendicitis, but 30% required appendectomy within 90 days.', true),

('a3000302-0013-0000-0000-000000000013', 'd0000302-0000-0000-0000-000000000002', 'content', 13, 'Complications',
'**Perforation**: Risk increases with duration of symptoms (>24-36 hours). Higher rates in children (<5 years) and elderly (>65 years).

**Appendiceal Abscess**: Management with antibiotics and percutaneous drainage if accessible. Interval appendectomy at 6-8 weeks.

**Wound Infection**: Higher with open surgery and perforation.

**Stump Appendicitis**: Recurrent appendicitis from inadequately resected stump. More common after laparoscopic surgery.

**Negative Appendectomy**: With CT imaging, rate is now <5%.', true),

('a3000302-0014-0000-0000-000000000014', 'd0000302-0000-0000-0000-000000000002', 'key_points', 14, 'Key Points Summary',
'1. Appendicitis is the most common surgical emergency
2. Classic presentation (migrating pain, RLQ tenderness, fever) occurs in only 50-60%
3. CT is the imaging gold standard in adults; US for children and pregnant women
4. Laparoscopic appendectomy is the preferred surgical approach
5. Antibiotics alone may be appropriate for selected uncomplicated cases
6. Perforation risk increases after 24-36 hours of symptoms
7. Special populations (pregnant, pediatric, elderly) require modified approaches', false)

ON CONFLICT DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000302-0001-0000-0000-000000000001', 'd0000302-0000-0000-0000-000000000002', 1,
'A 22-year-old man presents with 12 hours of periumbilical pain that has migrated to the right lower quadrant. He has anorexia, nausea, and a temperature of 38.0C. WBC is 14,000/uL. What is the most likely diagnosis?',
'Acute cholecystitis', 'Acute appendicitis', 'Mesenteric adenitis', 'Crohn disease', NULL,
'B', 'This is a classic presentation of acute appendicitis: periumbilical pain migrating to RLQ, anorexia, nausea, low-grade fever, and leukocytosis. The migration of pain is due to initial visceral pain progressing to parietal peritoneal irritation.', 'easy'),

('e0000302-0002-0000-0000-000000000002', 'd0000302-0000-0000-0000-000000000002', 2,
'Which imaging modality is the first-line choice for suspected appendicitis in a pregnant woman?',
'CT scan with IV contrast', 'Abdominal X-ray', 'Ultrasound', 'PET scan', NULL,
'C', 'Ultrasound is the first-line imaging choice in pregnant women because it avoids ionizing radiation. If ultrasound is inconclusive, MRI is the preferred second-line study.', 'easy'),

('e0000302-0003-0000-0000-000000000003', 'd0000302-0000-0000-0000-000000000002', 3,
'The McBurney point is located at:',
'Midway between umbilicus and symphysis pubis', 'One-third of the distance from the ASIS to the umbilicus', 'One-third of the distance from the umbilicus to the xiphoid', 'At the level of the umbilicus on the right', NULL,
'B', 'McBurney point is located one-third of the distance from the anterior superior iliac spine (ASIS) to the umbilicus. This corresponds to the usual base of the appendix.', 'easy'),

('e0000302-0004-0000-0000-000000000004', 'd0000302-0000-0000-0000-000000000002', 4,
'A patient with appendicitis has pain in the right lower quadrant when the left lower quadrant is palpated. This finding is known as:',
'Psoas sign', 'Obturator sign', 'Rovsing sign', 'Murphy sign', NULL,
'C', 'Rovsing sign is RLQ pain elicited by palpation of the LLQ. Pressure in the LLQ pushes contents toward the RLQ, causing pain from the inflamed appendix.', 'medium'),

('e0000302-0005-0000-0000-000000000005', 'd0000302-0000-0000-0000-000000000002', 5,
'What is the most common position of the appendix?',
'Pelvic', 'Retrocecal', 'Subcecal', 'Pre-ileal', NULL,
'B', 'The retrocecal position is the most common, occurring in approximately 65% of cases. The pelvic position is second most common at about 30%.', 'easy'),

('e0000302-0006-0000-0000-000000000006', 'd0000302-0000-0000-0000-000000000002', 6,
'In the Alvarado score, which finding receives the highest point value?',
'Anorexia', 'Migration of pain to RLQ', 'Right lower quadrant tenderness', 'Elevation of temperature', NULL,
'C', 'In the Alvarado score, RLQ tenderness and leukocytosis each receive 2 points, the highest values. Other criteria each receive 1 point.', 'medium'),

('e0000302-0007-0000-0000-000000000007', 'd0000302-0000-0000-0000-000000000002', 7,
'What is the preferred surgical approach for uncomplicated appendicitis?',
'Open appendectomy via midline incision', 'Laparoscopic appendectomy', 'Open appendectomy via McBurney incision', 'Percutaneous drainage', NULL,
'B', 'Laparoscopic appendectomy is preferred, offering lower wound infection rates, less postoperative pain, faster recovery, and better visualization.', 'easy'),

('e0000302-0008-0000-0000-000000000008', 'd0000302-0000-0000-0000-000000000002', 8,
'A 70-year-old man presents with vague abdominal pain for 4 days and is found to have a perforated appendix. Which factor most likely contributed to the delayed diagnosis?',
'Rapid progression in elderly', 'Atypical presentation with blunted symptoms in elderly patients', 'Higher pain threshold in elderly', 'Absence of appendix in elderly', NULL,
'B', 'Elderly patients often have atypical presentations with blunted inflammatory responses, vague symptoms, and less pronounced findings, leading to delayed diagnosis and higher perforation rates.', 'medium'),

('e0000302-0009-0000-0000-000000000009', 'd0000302-0000-0000-0000-000000000002', 9,
'The CODA trial demonstrated that for uncomplicated appendicitis, antibiotics alone compared to surgery resulted in:',
'Higher mortality', 'Non-inferiority but 30% required appendectomy within 90 days', 'Superior outcomes with no patients needing surgery', 'Significantly higher perforation rates', NULL,
'B', 'The CODA trial showed antibiotics were non-inferior to appendectomy, but about 30% required appendectomy within 90 days. Antibiotics are an option but not superior to surgery.', 'hard'),

('e0000302-0010-0000-0000-000000000010', 'd0000302-0000-0000-0000-000000000002', 10,
'What is the recommended management for a patient with appendiceal abscess?',
'Emergent appendectomy', 'Antibiotics with or without percutaneous drainage, followed by interval appendectomy', 'Observation only', 'Total colectomy', NULL,
'B', 'Appendiceal abscess is managed with antibiotics and percutaneous drainage if accessible, allowing inflammation to resolve. Interval appendectomy is performed 6-8 weeks later.', 'medium')

ON CONFLICT DO NOTHING;

-- Insert References
INSERT INTO article_references (id, article_id, reference_number, citation, doi, pubmed_id) VALUES
('f0000302-0001-0000-0000-000000000001', 'd0000302-0000-0000-0000-000000000002', 1, 'Di Saverio S, et al. Diagnosis and treatment of acute appendicitis: 2020 update of the WSES Jerusalem guidelines. World J Emerg Surg. 2020;15:27.', '10.1186/s13017-020-00306-3', '32295644'),
('f0000302-0002-0000-0000-000000000002', 'd0000302-0000-0000-0000-000000000002', 2, 'Bhangu A, et al. Acute appendicitis: modern understanding of pathogenesis, diagnosis, and management. Lancet. 2015;386:1278-87.', '10.1016/S0140-6736(15)00275-5', '26460662'),
('f0000302-0003-0000-0000-000000000003', 'd0000302-0000-0000-0000-000000000002', 3, 'CODA Collaborative. A randomized trial comparing antibiotics with appendectomy for appendicitis. N Engl J Med. 2020;383:1907-1919.', '10.1056/NEJMoa2014320', '33017106'),
('f0000302-0004-0000-0000-000000000004', 'd0000302-0000-0000-0000-000000000002', 4, 'Alvarado A. A practical score for the early diagnosis of acute appendicitis. Ann Emerg Med. 1986;15:557-64.', '10.1016/S0196-0644(86)80993-3', '3963537')
ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 2 (Acute Appendicitis) with 10 self-assessment questions inserted' as status;
