-- ============================================================================
-- SURGERY 3 CME ARTICLE 36: Surgical Radiology and Imaging
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000102-0000-0000-0000-000000000102', 'a0000003-0000-0000-0000-000000000003', 'Surgical Radiology and Imaging', 'Imaging modalities for surgical planning and diagnosis')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000336-0000-0000-0000-000000000036',
    'c0000102-0000-0000-0000-000000000102',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Radiology: Imaging for the Surgeon',
    'X-ray, CT, MRI, and Ultrasound in Surgical Practice',
    'This article covers the use of imaging modalities in surgical practice including plain radiographs, CT, MRI, ultrasound, and nuclear medicine. Understanding appropriate imaging selection, radiation safety, contrast considerations, and interpretation of common findings is essential for surgical decision-making.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000336-0001-0000-0000-000000000001', 'd0000336-0000-0000-0000-000000000036', 1,
'The imaging modality of choice for suspected appendicitis in adults is:',
'Plain abdominal X-ray', 'CT abdomen and pelvis with IV contrast', 'MRI', 'Ultrasound only', NULL,
'B', 'CT abdomen/pelvis with IV contrast: imaging of choice for suspected appendicitis in adults. Sensitivity 95-100%, specificity 95-98%. Shows dilated appendix (>6mm), periappendiceal fat stranding, appendicolith, complications (perforation, abscess). Alternatives: ultrasound first-line in children, pregnant women, and thin adults (no radiation), MRI for pregnant patients if US inconclusive. Plain X-ray has limited role (may show appendicolith, but sensitivity low). Oral contrast not routinely needed and delays imaging.', 'easy'),

('e0000336-0002-0000-0000-000000000002', 'd0000336-0000-0000-0000-000000000036', 2,
'The best imaging modality to evaluate the biliary tree and detect common bile duct stones is:',
'Plain abdominal X-ray', 'Magnetic Resonance Cholangiopancreatography (MRCP)', 'CT without contrast', 'Chest X-ray', NULL,
'B', 'MRCP: non-invasive MRI technique visualizing biliary and pancreatic ducts. No contrast or radiation needed. Sensitivity/specificity for CBD stones: 90-95%/95-98%. Alternative to diagnostic ERCP (which carries procedural risks). Indications: suspected choledocholithiasis, biliary stricture, pancreatic duct pathology. Limitations: cannot intervene (unlike ERCP), motion artifact, claustrophobia, contraindications to MRI. Ultrasound first-line for gallbladder (stones, cholecystitis) but limited for distal CBD. Endoscopic ultrasound also excellent for distal CBD.', 'medium'),

('e0000336-0003-0000-0000-000000000003', 'd0000336-0000-0000-0000-000000000036', 3,
'Contrast-induced nephropathy risk is increased in patients with:',
'Normal renal function', 'Pre-existing renal impairment, diabetes, dehydration, and use of nephrotoxic medications', 'Young age', 'High blood pressure alone', NULL,
'B', 'Contrast-induced nephropathy (CIN) risk factors: (1) Pre-existing renal impairment (eGFR <30 high risk, 30-60 moderate); (2) Diabetes mellitus; (3) Dehydration/volume depletion; (4) Nephrotoxic drugs (NSAIDs, aminoglycosides, metformin - hold after contrast); (5) Multiple myeloma; (6) Large contrast volume; (7) Intra-arterial administration. Prevention: IV hydration (most important), use lowest contrast dose, consider iso-osmolar contrast. N-acetylcysteine controversial. Check renal function before contrast in at-risk patients.', 'medium'),

('e0000336-0004-0000-0000-000000000004', 'd0000336-0000-0000-0000-000000000036', 4,
'FAST ultrasound (Focused Assessment with Sonography in Trauma) evaluates:',
'Only solid organ injury', 'Free fluid in the pericardium, perihepatic space, perisplenic space, and pelvis', 'Bone fractures', 'Vascular injuries only', NULL,
'B', 'FAST examination: rapid bedside ultrasound in trauma. Views: (1) Subxiphoid/cardiac - pericardial effusion; (2) RUQ/Morison pouch - perihepatic fluid; (3) LUQ/perisplenic - perisplenic fluid; (4) Suprapubic - pelvic free fluid. Extended FAST (eFAST) adds bilateral anterior chest for pneumothorax. Detects free fluid, not organ injury. Sensitivity improves with larger fluid volumes. Negative FAST does not exclude injury - serial exams or CT may be needed. Positive FAST in unstable patient: OR; stable patient: CT for further evaluation.', 'easy'),

('e0000336-0005-0000-0000-000000000005', 'd0000336-0000-0000-0000-000000000036', 5,
'On CT, the Hounsfield unit (HU) of water is:',
'-1000', '0', '+1000', '+100', NULL,
'B', 'Hounsfield units (HU): standardized CT density scale. Water = 0 HU (reference), Air = -1000 HU, Fat = -50 to -100 HU, Muscle = +40 HU, Blood (acute) = +40-80 HU, Bone = +400 to +1000+ HU. Clinical applications: distinguishing fluid collections (blood vs seroma), identifying fatty infiltration, measuring adrenal nodules (low HU suggests adenoma), detecting calcifications. Contrast-enhanced structures show increased HU. Dual-energy CT can characterize materials based on differential attenuation.', 'easy'),

('e0000336-0006-0000-0000-000000000006', 'd0000336-0000-0000-0000-000000000036', 6,
'MRI is contraindicated in patients with:',
'Titanium implants', 'Non-MRI compatible pacemakers, certain cochlear implants, ferromagnetic cerebral aneurysm clips', 'Hip replacements', 'Knee prostheses', NULL,
'B', 'MRI contraindications (absolute): non-MRI compatible pacemakers/ICDs, certain cochlear implants, ferromagnetic cerebral aneurysm clips, metallic intraocular foreign bodies. Relative: claustrophobia, early pregnancy (first trimester), some newer cardiac devices (MR-conditional may be scanned under specific conditions). Most orthopedic implants (hip/knee replacements, plates, screws) are non-ferromagnetic and MRI-safe (may cause artifact). Always check device compatibility. MRI-safe vs MR-conditional vs MR-unsafe classification important.', 'medium'),

('e0000336-0007-0000-0000-000000000007', 'd0000336-0000-0000-0000-000000000036', 7,
'Free air on an erect chest X-ray is best seen:',
'At the lung bases', 'Under the diaphragm (subdiaphragmatic air)', 'In the costophrenic angles', 'In the mediastinum only', NULL,
'B', 'Pneumoperitoneum on erect CXR: free air collects under diaphragm, appearing as crescent of lucency between diaphragm and liver (right) or stomach (left). Most sensitive plain film finding - detects as little as 1-2mL air. Patient should be upright for 5-10 minutes before imaging. If patient cannot sit/stand, left lateral decubitus (air over liver) or cross-table lateral can be used. CT most sensitive for small amounts of free air. Common causes: perforated viscus (peptic ulcer, diverticulitis), recent surgery/procedure.', 'easy'),

('e0000336-0008-0000-0000-000000000008', 'd0000336-0000-0000-0000-000000000036', 8,
'The imaging modality of choice for evaluating soft tissue masses is:',
'Plain X-ray', 'MRI with contrast', 'CT without contrast', 'Ultrasound alone', NULL,
'B', 'MRI: imaging of choice for soft tissue masses. Superior soft tissue contrast resolution, multiplanar imaging, no ionizing radiation. Evaluates: tumor extent, relationship to neurovascular structures, compartmental involvement, bone/joint invasion. T1-weighted: anatomic detail (fat bright). T2-weighted: fluid/edema bright (most tumors bright). Gadolinium contrast: enhances vascularity, helps differentiate solid vs cystic. Essential for soft tissue sarcoma staging and surgical planning. CT useful for detecting calcification, ossification, lung metastases.', 'medium'),

('e0000336-0009-0000-0000-000000000009', 'd0000336-0000-0000-0000-000000000036', 9,
'PET-CT using FDG is most useful in surgical oncology for:',
'Detecting all cancers equally', 'Staging, detecting metastases, and assessing treatment response in metabolically active tumors', 'Replacing all other imaging', 'Only brain imaging', NULL,
'B', 'PET-CT with 18F-FDG: combines metabolic (PET - glucose uptake) and anatomic (CT) information. Applications: (1) Staging - lung cancer, lymphoma, melanoma, esophageal, colorectal; (2) Detecting occult metastases/primary; (3) Assessing treatment response; (4) Surveillance for recurrence; (5) Differentiating scar from recurrence. Limitations: false positives with inflammation/infection, low sensitivity for small lesions (<1cm), some tumors not FDG-avid (mucinous tumors, some prostate cancers). Patient should fast, avoid exercise before scan.', 'medium'),

('e0000336-0010-0000-0000-000000000010', 'd0000336-0000-0000-0000-000000000036', 10,
'The radiation dose from a CT abdomen/pelvis is approximately equivalent to:',
'1 chest X-ray', '100-500 chest X-rays', '1 ultrasound', 'No radiation', NULL,
'B', 'CT radiation doses (approximate): Chest X-ray = 0.1 mSv (reference). CT head = 2 mSv (20 CXRs). CT chest = 7 mSv (70 CXRs). CT abdomen/pelvis = 10-20 mSv (100-200 CXRs). ALARA principle: As Low As Reasonably Achievable. Consider radiation risk especially in young patients, women, repeated imaging. Ultrasound and MRI have no ionizing radiation. CT dose reduction strategies: lower kVp/mAs, iterative reconstruction, limiting scan phases. Benefits must outweigh risks for each examination.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 36 (Surgical Radiology and Imaging) with 10 self-assessment questions inserted' as status;
