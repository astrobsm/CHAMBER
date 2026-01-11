-- ============================================================================
-- SURGERY 3 CME ARTICLE 110: Adrenal Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000176-0000-0000-0000-000000000176', 'a0000003-0000-0000-0000-000000000003', 'Adrenal Surgery', 'Surgical management of adrenal tumors and disorders')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000410-0000-0000-0000-000000000110',
    'c0000176-0000-0000-0000-000000000176',
    'a0000003-0000-0000-0000-000000000003',
    'Adrenal Surgery: From Incidentaloma to Malignancy',
    'Comprehensive Adrenal Gland Surgical Management',
    'This article covers adrenal anatomy and physiology, evaluation of adrenal incidentaloma, pheochromocytoma workup and perioperative management, Cushing syndrome, primary aldosteronism, adrenocortical carcinoma, and adrenalectomy techniques.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000410-0001-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 1,
'An adrenal incidentaloma is discovered on imaging and should be evaluated for:',
'Only size', 'Hormone function (cortisol excess, catecholamine excess, aldosterone excess if hypertensive) and malignant potential based on imaging characteristics and size', 'No workup needed', 'Symptoms only',
'B', 'ADRENAL INCIDENTALOMA evaluation: adrenal mass found on imaging for unrelated reason. Two key questions: (1) Is it FUNCTIONING (secreting hormones)? (2) Is it MALIGNANT? HORMONAL workup (all incidentalomas): CORTISOL excess - 1mg overnight dexamethasone suppression test (Cushing). CATECHOLAMINES - plasma fractionated metanephrines or 24h urine catecholamines (pheochromocytoma). ALDOSTERONE - if hypertensive/hypokalemic, aldosterone/renin ratio (primary aldosteronism). MALIGNANCY assessment: SIZE (>4-6cm higher risk), imaging characteristics (irregular borders, high HU, heterogeneous enhancement, delayed washout), interval growth. Most are benign non-functioning adenomas.', 'easy'),

('e0000410-0002-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 2,
'Preoperative preparation for pheochromocytoma resection includes:',
'No preparation needed', 'Alpha-adrenergic blockade for at least 10-14 days before surgery, followed by beta-blockade if needed for tachycardia, with volume resuscitation', 'Beta-blockade first', 'Immediate surgery',
'B', 'PHEOCHROMOCYTOMA PREOPERATIVE PREPARATION: critical to prevent intraoperative hypertensive crisis. (1) ALPHA-BLOCKADE FIRST: phenoxybenzamine (non-selective, irreversible) or doxazosin/prazosin (selective alpha-1), for 10-14 DAYS. Goal: blood pressure control, orthostatic hypotension. (2) VOLUME EXPANSION: alpha blockade unmasks contracted blood volume, give fluids/sodium. (3) BETA-BLOCKADE ONLY AFTER alpha blockade: if tachycardia or arrhythmia. Never give beta first (unopposed alpha causes hypertensive crisis). Other: calcium channel blockers, metyrosine (inhibits catecholamine synthesis) in select cases. Adequate preparation reduces mortality significantly.', 'easy'),

('e0000410-0003-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 3,
'Laparoscopic adrenalectomy:',
'Is contraindicated for all tumors', 'Is the approach of choice for most benign adrenal tumors and small to moderate-sized malignancies, offering faster recovery than open surgery', 'Requires conversion in all cases', 'Is only for small tumors',
'B', 'LAPAROSCOPIC ADRENALECTOMY: STANDARD approach for most adrenal tumors. INDICATIONS: functioning adenomas (pheochromocytoma, aldosterone-producing adenoma, cortisol-producing adenoma), non-functioning adenomas meeting size criteria, small adrenal metastases. CONTRAINDICATIONS: suspected adrenocortical carcinoma (large, invasive), very large tumors (though hand-assisted extends limits). APPROACHES: transabdominal (lateral), posterior retroperitoneoscopic (avoids peritoneal cavity). ADVANTAGES: less pain, shorter stay, faster recovery, better cosmesis. SIZE: most surgeons prefer laparoscopic for tumors <6-8cm; larger or invasive lesions may warrant open approach.', 'easy'),

('e0000410-0004-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 4,
'Primary aldosteronism (Conn syndrome) with unilateral adenoma:',
'Is treated medically only', 'Is treated with laparoscopic adrenalectomy, which often cures or significantly improves hypertension and normalizes potassium', 'Requires bilateral adrenalectomy', 'Does not affect blood pressure',
'B', 'PRIMARY ALDOSTERONISM (Conn syndrome) management: excess aldosterone causing hypertension, hypokalemia. CAUSE: unilateral aldosterone-producing ADENOMA (APA, 30-40%) or bilateral adrenal hyperplasia (BAH, 60%). LATERALIZATION: adrenal vein sampling (AVS) distinguishes unilateral from bilateral. TREATMENT: UNILATERAL APA - LAPAROSCOPIC ADRENALECTOMY (curative in 30-50% for hypertension, normalizes potassium in most). BILATERAL hyperplasia - MEDICAL therapy (mineralocorticoid receptor antagonist: spironolactone, eplerenone). Surgery not helpful for bilateral disease. Preoperative potassium normalization, BP control with MR antagonist.', 'medium'),

('e0000410-0005-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 5,
'Patients undergoing adrenalectomy for Cushing syndrome require:',
'No special management', 'Perioperative stress-dose glucocorticoids and postoperative glucocorticoid replacement until the HPA axis recovers, which may take months', 'Insulin only', 'Mineralocorticoid replacement only',
'B', 'CUSHING SYNDROME PERIOPERATIVE MANAGEMENT: autonomous cortisol production suppresses contralateral adrenal and pituitary (ACTH). CONSEQUENCE: after adrenalectomy for cortisol-producing adenoma, remaining adrenal is SUPPRESSED - cannot respond to stress. MANAGEMENT: (1) STRESS-DOSE GLUCOCORTICOID perioperatively (hydrocortisone 100mg at induction, then taper). (2) Postoperative GLUCOCORTICOID REPLACEMENT (hydrocortisone) - gradually taper over MONTHS as HPA axis recovers. (3) Monitor for adrenal insufficiency (fatigue, hypotension, hyponatremia). Educate patient about sick-day rules. Recovery may take 6-18 months. Bilateral adrenalectomy: lifelong replacement (glucocorticoid + mineralocorticoid).', 'medium'),

('e0000410-0006-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 6,
'Adrenocortical carcinoma (ACC):',
'Is always benign', 'Is a rare but aggressive malignancy often presenting as large (>4cm), irregular adrenal mass, sometimes with hormone production, and requires complete surgical resection when possible', 'Is the same as adenoma', 'Never produces hormones',
'B', 'ADRENOCORTICAL CARCINOMA (ACC): rare, aggressive malignancy (1-2 per million). PRESENTATION: often LARGE (>4-6cm), irregular margins, necrosis, invasion, delayed contrast washout on CT. May be FUNCTIONING (50-60%) - often produce multiple hormones (cortisol + androgens common), causing Cushing syndrome, virilization. STAGING: based on size, local invasion, nodal and distant metastases. TREATMENT: COMPLETE SURGICAL RESECTION (R0) - open adrenalectomy preferred (wide margins, en bloc resection of invaded structures), avoid tumor rupture. Adjuvant MITOTANE (adrenolytic) reduces recurrence. Radiation and chemotherapy for advanced disease. PROGNOSIS: poor overall, 5-year survival 20-35%.', 'medium'),

('e0000410-0007-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 7,
'The diagnosis of pheochromocytoma is best made by:',
'CT alone', 'Biochemical testing showing elevated plasma fractionated metanephrines or 24-hour urine catecholamines and metanephrines, followed by localization imaging', 'Clinical symptoms only', 'Biopsy',
'B', 'PHEOCHROMOCYTOMA DIAGNOSIS: BIOCHEMICAL testing first. TESTS: PLASMA FRACTIONATED METANEPHRINES (most sensitive, preferred), or 24-hour urine catecholamines and metanephrines. Metanephrines are more stable than catecholamines. INTERPRETATION: elevation >2-4x upper limit highly specific. LOCALIZATION (after biochemical confirmation): CT or MRI abdomen (>95% are in adrenal). If adrenal negative: MIBG scan (I-123 or I-131 metaiodobenzylguanidine), PET scan (FDOPA, Ga-68 DOTATATE for metastatic). BIOPSY contraindicated (can trigger hypertensive crisis). 10% rule (oversimplification): ~10% bilateral, ~10% extra-adrenal (paraganglioma), ~10% malignant, ~10% familial.', 'easy'),

('e0000410-0008-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 8,
'Hereditary syndromes associated with adrenal tumors include:',
'No hereditary syndromes exist', 'Multiple Endocrine Neoplasia type 2 (MEN2), von Hippel-Lindau (VHL), and neurofibromatosis type 1, which are associated with pheochromocytoma', 'Only Marfan syndrome', 'Only cystic fibrosis',
'B', 'HEREDITARY SYNDROMES with adrenal tumors: PHEOCHROMOCYTOMA/PARAGANGLIOMA: (1) MEN2 (A and B): RET mutation, bilateral pheochromocytoma + medullary thyroid cancer + parathyroid adenoma (MEN2A). (2) VON HIPPEL-LINDAU (VHL): VHL mutation, pheochromocytoma + renal cell carcinoma + hemangioblastoma + pancreatic neuroendocrine tumors. (3) NEUROFIBROMATOSIS TYPE 1 (NF1): neurofibromin mutation, pheochromocytoma (5%). (4) Succinate dehydrogenase (SDH) mutations: paraganglioma syndromes. Up to 25-40% of pheochromocytomas are hereditary. Screen for genetic syndromes, especially if young, bilateral, extra-adrenal, or malignant.', 'medium'),

('e0000410-0009-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 9,
'Intraoperative hypertensive crisis during pheochromocytoma resection:',
'Never occurs with preparation', 'Can occur despite preparation during tumor manipulation and is managed with short-acting IV antihypertensives and careful anesthetic technique', 'Is treated by stopping surgery', 'Requires immediate adrenal biopsy',
'B', 'INTRAOPERATIVE HYPERTENSIVE CRISIS in pheochromocytoma: can occur despite optimal preparation. CAUSE: tumor manipulation releases catecholamines. MANAGEMENT: SHORT-ACTING IV antihypertensives: phentolamine (alpha-blocker), nitroprusside, nicardipine. Esmolol for tachyarrhythmia. ANESTHETIC considerations: avoid histamine-releasing drugs, drugs that inhibit catecholamine reuptake, or induce catecholamine release. Minimize tumor manipulation; early vein ligation may reduce release. AFTER tumor removal: may see HYPOTENSION (sudden catecholamine withdrawal, vasodilation) - treat with fluids, vasopressors. Experienced anesthesia team essential. Hemodynamic monitoring: arterial line, central access.', 'medium'),

('e0000410-0010-0000-0000-000000000110', 'd0000410-0000-0000-0000-000000000110', 10,
'Indications for adrenalectomy include:',
'All adrenal masses', 'Functioning tumors (pheochromocytoma, aldosteronoma, cortisol-producing adenoma), non-functioning tumors larger than 4-6cm or with suspicious imaging features, and adrenocortical carcinoma', 'Only malignant tumors', 'Only symptomatic tumors',
'B', 'ADRENALECTOMY INDICATIONS: (1) FUNCTIONING tumors: pheochromocytoma (all), aldosterone-producing adenoma (unilateral), cortisol-producing adenoma. (2) NON-FUNCTIONING tumors: SIZE >4-6 cm (higher malignancy risk), SUSPICIOUS imaging features (irregular margins, heterogeneity, high HU, poor washout), interval GROWTH on surveillance. (3) ADRENOCORTICAL CARCINOMA: resection is only curative option. (4) Isolated adrenal METASTASES (selected cases - if primary controlled, adrenal is only site). (5) Symptomatic lesions. Observation appropriate for small (<4cm), benign-appearing, non-functioning adenomas with surveillance imaging.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 110 (Adrenal Surgery) with 10 self-assessment questions inserted' as status;
