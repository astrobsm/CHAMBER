-- ============================================================================
-- SURGERY 3 CME ARTICLE 13: Urological Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000079-0000-0000-0000-000000000079', 'a0000003-0000-0000-0000-000000000003', 'Urological Surgery', 'Surgical conditions of the urinary tract and male reproductive system')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000313-0000-0000-0000-000000000013',
    'c0000079-0000-0000-0000-000000000079',
    'a0000003-0000-0000-0000-000000000003',
    'Urological Surgery: Common Conditions and Management',
    'Urolithiasis, BPH, Prostate Cancer, and Urological Emergencies',
    'This article covers urinary stone disease (urolithiasis), benign prostatic hyperplasia, prostate cancer screening and treatment, renal cell carcinoma, bladder cancer, testicular torsion, and other urological emergencies requiring surgical intervention.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000313-0001-0000-0000-000000000001', 'd0000313-0000-0000-0000-000000000013', 1,
'The most common type of urinary stone is:',
'Uric acid', 'Struvite (magnesium ammonium phosphate)', 'Calcium oxalate', 'Cystine', NULL,
'C', 'Calcium oxalate stones are most common (70-80%), followed by calcium phosphate, uric acid (10-15%), struvite (10-15%, associated with UTI by urease-producing bacteria), and cystine (rare, hereditary). Calcium stones are radio-opaque; uric acid stones are radiolucent on X-ray but visible on CT. Metabolic workup includes 24-hour urine collection for stone formers.', 'easy'),

('e0000313-0002-0000-0000-000000000002', 'd0000313-0000-0000-0000-000000000013', 2,
'A patient with a 6mm ureteric stone with severe pain but no obstruction or infection is best managed with:',
'Immediate surgery', 'Conservative management with analgesia, hydration, and alpha-blocker (medical expulsive therapy)', 'Permanent nephrostomy', 'Nephrectomy', NULL,
'B', 'Medical expulsive therapy (MET) with alpha-blockers (tamsulosin) and analgesia is first-line for uncomplicated ureteric stones <10mm. Passage rates: <5mm: 90%, 5-7mm: 50%, >7mm: <10%. Indications for intervention: obstruction with infection (emergency), intractable pain, persistent obstruction, stone unlikely to pass. Options include ESWL, ureteroscopy, or PCNL depending on stone size and location.', 'medium'),

('e0000313-0003-0000-0000-000000000003', 'd0000313-0000-0000-0000-000000000013', 3,
'The classic triad of renal cell carcinoma is:',
'Frequency, urgency, dysuria', 'Hematuria, flank pain, palpable mass', 'Fever, weight loss, night sweats', 'Oliguria, edema, hypertension', NULL,
'B', 'The classic triad of RCC (hematuria, flank pain, palpable abdominal mass) is present in only 10% of patients. Most are now incidentally discovered on imaging. Paraneoplastic syndromes occur in 20%: hypercalcemia (PTHrP), erythrocytosis (EPO), hypertension (renin), Stauffer syndrome (hepatic dysfunction). RCC may extend into renal vein and IVC; surgery is curative for localized disease.', 'easy'),

('e0000313-0004-0000-0000-000000000004', 'd0000313-0000-0000-0000-000000000013', 4,
'The investigation of choice for staging a known renal cell carcinoma is:',
'Ultrasound', 'CT abdomen and pelvis with contrast (CT urography)', 'Intravenous urography (IVU)', 'MRI brain', NULL,
'B', 'CT abdomen/pelvis with contrast is standard for RCC staging: assesses tumor size, local extension, lymph nodes, venous involvement (renal vein, IVC), adrenals, and distant metastases. Chest CT for lung metastases. MRI may be used for IVC thrombus characterization. TNM staging guides treatment: partial/radical nephrectomy for localized disease, systemic therapy for metastatic (targeted therapy, immunotherapy).', 'easy'),

('e0000313-0005-0000-0000-000000000005', 'd0000313-0000-0000-0000-000000000013', 5,
'The most common presenting symptom of bladder cancer is:',
'Urinary retention', 'Painless gross hematuria', 'Recurrent UTIs', 'Bilateral leg swelling', NULL,
'B', 'Painless gross hematuria is the most common presentation (80-90%) of bladder cancer. Risk factors: smoking (most important), occupational exposure (aromatic amines, dyes), chronic irritation, Schistosoma haematobium. Most are transitional cell (urothelial) carcinoma. Diagnosis by cystoscopy and biopsy. TURBT is both diagnostic and therapeutic for non-muscle invasive; radical cystectomy for muscle-invasive.', 'easy'),

('e0000313-0006-0000-0000-000000000006', 'd0000313-0000-0000-0000-000000000013', 6,
'A man presents with lower urinary tract symptoms (LUTS) including hesitancy, weak stream, and nocturia. The most likely diagnosis is:',
'Bladder cancer', 'Benign prostatic hyperplasia (BPH)', 'Urethral stricture', 'Prostatitis', NULL,
'B', 'BPH is the most common cause of LUTS in men >50 years. Obstructive symptoms: hesitancy, weak stream, intermittency, straining, incomplete emptying, dribbling. Irritative symptoms: frequency, urgency, nocturia. IPSS (International Prostate Symptom Score) assesses severity. Treatment: watchful waiting (mild), alpha-blockers or 5-alpha-reductase inhibitors (moderate), TURP or other surgical options (severe/refractory).', 'easy'),

('e0000313-0007-0000-0000-000000000007', 'd0000313-0000-0000-0000-000000000013', 7,
'PSA (prostate-specific antigen) screening for prostate cancer:',
'Is recommended for all men annually from age 40', 'Should involve shared decision-making discussing benefits and harms', 'Completely eliminates prostate cancer mortality', 'Has no role in modern urology', NULL,
'B', 'PSA screening is controversial. Guidelines recommend shared decision-making (age 50-70, or 45 for high-risk groups). Benefits: early detection of significant cancer. Harms: overdiagnosis and overtreatment of indolent cancers, false positives, biopsy complications. PSA >4 ng/mL may prompt further evaluation but is not diagnostic; PSAD, free PSA ratio, and MRI help risk stratification. Biopsy confirms diagnosis.', 'medium'),

('e0000313-0008-0000-0000-000000000008', 'd0000313-0000-0000-0000-000000000013', 8,
'A 16-year-old presents with sudden severe testicular pain, nausea, and a high-riding horizontal testicle. The most likely diagnosis is:',
'Epididymitis', 'Testicular torsion', 'Testicular tumor', 'Hydrocele', NULL,
'B', 'Testicular torsion presents with sudden severe testicular pain, nausea/vomiting, high-riding horizontal testicle, and absent cremasteric reflex. Peak incidence: neonates and adolescents. Surgical emergency - must detorse within 6 hours to preserve testicular viability (>6 hours: 50% orchiectomy rate). Doppler ultrasound confirms absent blood flow, but should not delay surgery if clinical suspicion is high. Bilateral orchiopexy is performed.', 'easy'),

('e0000313-0009-0000-0000-000000000009', 'd0000313-0000-0000-0000-000000000013', 9,
'The Gleason score for prostate cancer:',
'Measures PSA level', 'Grades tumor differentiation from biopsy (sum of two most common patterns)', 'Determines tumor size only', 'Is based on imaging findings', NULL,
'B', 'Gleason grading assesses tumor differentiation on biopsy. Score = primary pattern + secondary pattern (each graded 1-5). Higher score = less differentiated = more aggressive. Grade groups: 1 (Gleason 6), 2 (Gleason 3+4=7), 3 (Gleason 4+3=7), 4 (Gleason 8), 5 (Gleason 9-10). Combined with PSA and clinical stage for risk stratification guiding treatment (active surveillance, surgery, radiation, ADT).', 'medium'),

('e0000313-0010-0000-0000-000000000010', 'd0000313-0000-0000-0000-000000000013', 10,
'Fournier gangrene is:',
'A benign scrotal condition', 'Necrotizing fasciitis of the perineum and genitalia - a surgical emergency', 'A type of testicular tumor', 'Chronic prostatitis', NULL,
'B', 'Fournier gangrene is necrotizing fasciitis of the perineum/genitalia - a urological and surgical emergency with 20-40% mortality. Risk factors: diabetes, immunosuppression, local trauma, perianal infection. Presents with severe perineal pain, fever, crepitus, rapidly progressing cellulitis. Treatment: aggressive surgical debridement (may require multiple operations), broad-spectrum antibiotics, ICU support. Delay worsens outcomes.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 13 (Urological Surgery) with 10 self-assessment questions inserted' as status;
