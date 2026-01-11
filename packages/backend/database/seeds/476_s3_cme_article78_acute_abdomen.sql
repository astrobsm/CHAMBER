-- ============================================================================
-- SURGERY 3 CME ARTICLE 78: Acute Abdomen and Peritonitis
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000144-0000-0000-0000-000000000144', 'a0000003-0000-0000-0000-000000000003', 'Acute Abdomen and Peritonitis', 'Evaluation and management of acute abdominal pain')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000378-0000-0000-0000-000000000078',
    'c0000144-0000-0000-0000-000000000144',
    'a0000003-0000-0000-0000-000000000003',
    'Acute Abdomen: Evaluation, Differential Diagnosis, and Peritonitis',
    'When to Operate',
    'This article covers approach to acute abdominal pain, differential diagnosis by location, physical examination findings, imaging, primary vs secondary peritonitis, indications for urgent laparotomy, and non-operative causes of acute abdomen.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000378-0001-0000-0000-000000000001', 'd0000378-0000-0000-0000-000000000078', 1,
'Peritonitis is characterized on examination by:',
'Soft, non-tender abdomen', 'Guarding, rigidity, rebound tenderness, and absent bowel sounds', 'Hyperactive bowel sounds only', 'Distension without tenderness',
'B', 'Peritonitis signs: GUARDING (voluntary then involuntary muscle contraction), RIGIDITY (board-like abdomen in severe cases), REBOUND TENDERNESS (pain on release worse than on compression), ABSENT or hypoactive bowel sounds (ileus). Patient lies still (movement worsens pain). Fever, tachycardia, hypotension in advanced cases. Generalized vs localized peritonitis. Requires urgent surgical evaluation.', 'easy'),

('e0000378-0002-0000-0000-000000000002', 'd0000378-0000-0000-0000-000000000078', 2,
'Primary peritonitis (spontaneous bacterial peritonitis) differs from secondary peritonitis in that:',
'It requires surgery', 'It occurs without visceral perforation, typically in patients with ascites, and is treated medically', 'It is always polymicrobial', 'It is more common than secondary',
'B', 'Primary peritonitis (SBP): infection of peritoneal cavity WITHOUT visceral perforation or intra-abdominal source. Typically in patients with ASCITES (cirrhosis, nephrotic syndrome). Usually MONOMICROBIAL (E. coli, Klebsiella, pneumococcus). Treatment: ANTIBIOTICS (ceftriaxone, fluoroquinolone), NOT surgery. Secondary peritonitis: due to perforation, appendicitis, etc. - polymicrobial, requires SOURCE CONTROL (surgery) plus antibiotics.', 'easy'),

('e0000378-0003-0000-0000-000000000003', 'd0000378-0000-0000-0000-000000000078', 3,
'Free air under the diaphragm on upright chest X-ray indicates:',
'Pneumonia', 'Hollow viscus perforation until proven otherwise', 'Normal finding', 'Small bowel obstruction',
'B', 'Free air (pneumoperitoneum) under diaphragm: indicates HOLLOW VISCUS PERFORATION until proven otherwise. Most common cause: perforated peptic ulcer. Also: perforated appendix, diverticulitis, colonic perforation, trauma. Upright CXR: free air under right hemidiaphragm (easier to see). Left lateral decubitus: alternative if patient cannot stand. CT more sensitive for small amounts of free air. Surgical emergency in most cases (exception: post-laparoscopy air can persist for days).', 'easy'),

('e0000378-0004-0000-0000-000000000004', 'd0000378-0000-0000-0000-000000000078', 4,
'Rovsing sign in appendicitis refers to:',
'Pain at McBurney point', 'Right lower quadrant pain elicited by palpation of the left lower quadrant', 'Increased pain with right hip extension', 'Increased pain with right thigh flexion against resistance',
'B', 'Appendicitis signs: ROVSING SIGN - RLQ pain when palpating LLQ (peritoneal irritation transmitted). McBURNEY POINT - tenderness 1/3 distance from ASIS to umbilicus. PSOAS SIGN - pain with right hip extension (retrocecal appendix). OBTURATOR SIGN - pain with internal rotation of flexed right thigh (pelvic appendix). BLUMBERG SIGN - rebound tenderness. These signs support clinical diagnosis of appendicitis.', 'easy'),

('e0000378-0005-0000-0000-000000000005', 'd0000378-0000-0000-0000-000000000078', 5,
'Indications for urgent laparotomy include all EXCEPT:',
'Generalized peritonitis', 'Evisceration', 'Massive GI hemorrhage not controlled by endoscopy', 'Uncomplicated ureteric colic',
'D', 'Urgent laparotomy indications: GENERALIZED PERITONITIS, EVISCERATION (bowel through wound), massive/uncontrolled GI HEMORRHAGE, ISCHEMIC BOWEL, PERFORATED VISCUS, STRANGULATED OBSTRUCTION, intra-abdominal sepsis, trauma with hemodynamic instability. URETERIC COLIC is typically managed conservatively or with urologic intervention (stenting, lithotripsy) - NOT a surgical emergency requiring laparotomy.', 'easy'),

('e0000378-0006-0000-0000-000000000006', 'd0000378-0000-0000-0000-000000000078', 6,
'Referred pain to the right shoulder in acute abdomen may indicate:',
'Pelvic pathology', 'Diaphragmatic irritation from conditions like perforated ulcer or subphrenic abscess', 'Appendicitis always', 'Urinary tract infection',
'B', 'Referred shoulder pain (especially right): DIAPHRAGMATIC irritation. Mechanism: phrenic nerve (C3-5) - "C3-4-5 keeps the diaphragm alive." Causes: perforated peptic ulcer, subphrenic abscess, ruptured spleen/liver, ruptured ectopic pregnancy (with intra-abdominal blood). Also: basal pneumonia, MI (left arm/jaw). Understanding referred pain patterns aids diagnosis.', 'easy'),

('e0000378-0007-0000-0000-000000000007', 'd0000378-0000-0000-0000-000000000078', 7,
'Murphy sign is positive in:',
'Appendicitis', 'Acute cholecystitis causing arrest of inspiration during RUQ palpation', 'Pancreatitis', 'Renal colic',
'B', 'Murphy sign: inspiratory ARREST during deep palpation of RUQ as liver/gallbladder descend onto examining fingers. Positive in ACUTE CHOLECYSTITIS. Technique: place hand at right costal margin, ask patient to take deep breath, positive if they catch breath due to pain. Sensitivity ~65-95% for cholecystitis. Sonographic Murphy: tenderness with ultrasound probe over gallbladder (more specific). Negative Murphy does not exclude cholecystitis.', 'easy'),

('e0000378-0008-0000-0000-000000000008', 'd0000378-0000-0000-0000-000000000078', 8,
'The differential diagnosis of acute abdominal pain must include:',
'Only surgical conditions', 'Medical and non-abdominal causes including myocardial infarction, pneumonia, and diabetic ketoacidosis', 'Gynecologic causes in males', 'Trauma only',
'B', 'Non-surgical causes of acute abdomen: CARDIAC (MI - especially inferior can mimic acute abdomen), PULMONARY (pneumonia, PE), METABOLIC (DKA - pseudoperitonitis, Addisonian crisis, uremia, porphyria), HEMATOLOGIC (sickle cell crisis), INFECTIOUS (herpes zoster before rash), NEUROLOGIC (tabes dorsalis). Always consider medical causes before surgery. ECG, CXR, glucose, urinalysis part of workup.', 'easy'),

('e0000378-0009-0000-0000-000000000009', 'd0000378-0000-0000-0000-000000000078', 9,
'CT scan of the abdomen for acute abdominal pain:',
'Should never be used', 'Is highly sensitive and specific for many causes and has become the imaging modality of choice in many clinical scenarios', 'Is only useful for trauma', 'Cannot detect free fluid',
'B', 'CT scan for acute abdomen: highly sensitive and specific. Advantages: identifies specific diagnosis (appendicitis, diverticulitis, obstruction, perforation, abscess), detects free air, free fluid, ischemia. Contrast (oral, IV) enhances evaluation. Limitations: radiation, contrast risks, cost, may miss some early pathology. Often guides decision for surgery vs conservative management. Ultrasound preferred for biliary disease, pregnancy, pediatrics. CT is standard for undifferentiated abdominal pain in adults.', 'easy'),

('e0000378-0010-0000-0000-000000000010', 'd0000378-0000-0000-0000-000000000078', 10,
'Cullen and Grey Turner signs suggest:',
'Appendicitis', 'Retroperitoneal hemorrhage such as from severe pancreatitis or ruptured AAA', 'Bowel obstruction', 'Cholecystitis',
'B', 'Cullen and Grey Turner signs: ecchymosis indicating RETROPERITONEAL HEMORRHAGE. CULLEN sign: periumbilical ecchymosis. GREY TURNER sign: flank ecchymosis. Causes: severe acute PANCREATITIS (hemorrhagic), ruptured AAA, retroperitoneal bleeding. Late signs (24-48 hours) indicating severe hemorrhage. Associated with high mortality. Rare findings but highly suggestive when present.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 78 (Acute Abdomen and Peritonitis) with 10 self-assessment questions inserted' as status;
