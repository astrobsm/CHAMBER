-- ============================================================================
-- SURGERY 3 CME ARTICLE 73: Adrenal Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000139-0000-0000-0000-000000000139', 'a0000003-0000-0000-0000-000000000003', 'Adrenal Surgery', 'Adrenal tumors and adrenalectomy')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000373-0000-0000-0000-000000000073',
    'c0000139-0000-0000-0000-000000000139',
    'a0000003-0000-0000-0000-000000000003',
    'Adrenal Surgery: From Incidentaloma to Pheochromocytoma',
    'Evaluation and Management of Adrenal Masses',
    'This article covers adrenal anatomy and physiology, evaluation of adrenal incidentaloma, Cushing syndrome, primary aldosteronism, pheochromocytoma workup and perioperative management, adrenocortical carcinoma, and laparoscopic adrenalectomy.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000373-0001-0000-0000-000000000001', 'd0000373-0000-0000-0000-000000000073', 1,
'An incidentally discovered adrenal mass should be evaluated for:',
'Size only', 'Hormonal function (pheochromocytoma, aldosteronism, Cushing) and malignancy potential', 'No workup needed if asymptomatic', 'Immediate surgery always', NULL,
'B', 'Adrenal incidentaloma evaluation: all masses require FUNCTIONAL and MALIGNANCY assessment. FUNCTIONAL workup: (1) Pheochromocytoma - plasma/urine metanephrines (mandatory - surgery without preparation is dangerous); (2) Aldosteronism - if hypertensive, aldosterone/renin ratio; (3) Cushing - 1mg dexamethasone suppression test. MALIGNANCY assessment: size (>4 cm higher risk), CT characteristics (HU <10 benign, washout pattern), growth on interval imaging. Even "incidental" masses can be hormonally active without obvious symptoms.', 'easy'),

('e0000373-0002-0000-0000-000000000002', 'd0000373-0000-0000-0000-000000000073', 2,
'Pheochromocytoma requires preoperative preparation with:',
'Beta-blockers first, then alpha-blockers', 'Alpha-blockade first (phenoxybenzamine or doxazosin) followed by beta-blockade and volume expansion', 'No preoperative preparation needed', 'Calcium channel blockers only', NULL,
'B', 'Pheochromocytoma preoperative preparation: ALPHA-BLOCKADE FIRST (phenoxybenzamine or doxazosin), started 10-14 days before surgery. Purpose: prevent intraoperative hypertensive crisis from catecholamine release during tumor manipulation. THEN beta-blockade (only AFTER adequate alpha-blockade to prevent unopposed alpha-mediated vasoconstriction). VOLUME EXPANSION: patients are chronically vasoconstricted, intravascularly depleted - liberal salt, fluids. Alternative: metyrosine (blocks catecholamine synthesis). Intraoperative management: short-acting agents for BP control, volume replacement.', 'easy'),

('e0000373-0003-0000-0000-000000000003', 'd0000373-0000-0000-0000-000000000073', 3,
'Primary aldosteronism (Conn syndrome) is characterized by:',
'Hypokalemia, hypertension, and low aldosterone', 'Hypertension, hypokalemia (may be normal), elevated aldosterone, and suppressed renin', 'Hyperkalemia and hypotension', 'Elevated renin levels', NULL,
'B', 'Primary aldosteronism (Conn syndrome): autonomous aldosterone production. Features: HYPERTENSION (often resistant), HYPOKALEMIA (but may be normokalemic), metabolic alkalosis, ELEVATED ALDOSTERONE, SUPPRESSED RENIN (high aldosterone:renin ratio screening). Causes: aldosterone-producing adenoma (APA, 35% - unilateral, surgical), bilateral adrenal hyperplasia (BAH, 60% - medical management with MRA). Workup: ARR screening, confirmatory testing, adrenal CT, adrenal vein sampling (AVS) to lateralize if CT unclear. Surgery for unilateral disease; spironolactone for bilateral.', 'easy'),

('e0000373-0004-0000-0000-000000000004', 'd0000373-0000-0000-0000-000000000073', 4,
'CT characteristics suggesting benign adrenal adenoma include:',
'Heterogeneous enhancement and irregular margins', 'Low attenuation (less than 10 Hounsfield units) on non-contrast CT indicating lipid-rich lesion', 'Size greater than 6 cm', 'Calcifications and necrosis', NULL,
'B', 'Adrenal imaging characterization: BENIGN adenoma features on CT: LOW ATTENUATION (<10 HU on non-contrast = lipid-rich adenoma), homogeneous, well-defined margins, >50% absolute washout at 10 minutes. CONCERNING for malignancy: high attenuation (>10 HU), heterogeneous, irregular margins, large size (>4-6 cm), calcifications, necrosis, invasion. MRI: chemical shift - signal loss on out-of-phase indicates lipid (adenoma). PET: benign adenomas usually low FDG uptake. Growing lesions concerning regardless of other features.', 'easy'),

('e0000373-0005-0000-0000-000000000005', 'd0000373-0000-0000-0000-000000000073', 5,
'Adrenocortical carcinoma is suggested by:',
'Small homogeneous mass with low HU', 'Large tumor (greater than 4-6 cm), heterogeneous, irregular margins, invasion, and hormonal excess', 'Bilateral small nodules', 'Normal adrenal imaging', NULL,
'B', 'Adrenocortical carcinoma (ACC): rare, aggressive malignancy. Features suggesting ACC: LARGE SIZE (most >4-6 cm at diagnosis), heterogeneous, irregular margins, necrosis, calcification, local invasion (kidney, IVC), rapid growth. Hormonal: 60% functional - cortisol excess most common (Cushing), androgens (virilization), aldosterone, mixed. Staging determines prognosis. Treatment: SURGICAL RESECTION (complete R0 if possible), mitotane (adrenolytic agent), chemotherapy for advanced disease. 5-year survival: localized 60-80%, advanced <35%. Open surgery preferred over laparoscopic for large/suspicious masses.', 'medium'),

('e0000373-0006-0000-0000-000000000006', 'd0000373-0000-0000-0000-000000000073', 6,
'The rule of 10s for pheochromocytoma states that approximately 10% are:',
'Malignant only', 'Bilateral, extra-adrenal, malignant, familial, and in children', 'Located in the thyroid', 'Asymptomatic', NULL,
'B', 'Rule of 10s for pheochromocytoma (historical, actual percentages vary): 10% BILATERAL, 10% EXTRA-ADRENAL (paraganglioma - along sympathetic chain, organ of Zuckerkandl), 10% MALIGNANT, 10% FAMILIAL/hereditary (MEN2, VHL, NF1, SDH mutations), 10% in CHILDREN, 10% recur. Modern understanding: hereditary cases more common (up to 40% with genetic syndromes). Genetic testing recommended for all. Extra-adrenal locations: head/neck (parasympathetic, usually non-functional), thoracic, abdominal (most along aorta), bladder.', 'easy'),

('e0000373-0007-0000-0000-000000000007', 'd0000373-0000-0000-0000-000000000073', 7,
'Laparoscopic adrenalectomy is preferred for:',
'All adrenal masses regardless of size', 'Benign functional tumors and small non-functional masses, with open approach for suspected malignancy or very large tumors', 'Adrenocortical carcinoma', 'Pheochromocytoma is a contraindication', NULL,
'B', 'Laparoscopic adrenalectomy: preferred approach for most adrenal surgery. Indications: functional adenomas (aldosteronoma, cortisol-producing adenoma, small pheochromocytoma), non-functional masses <4-6 cm, myelolipoma. Advantages: less pain, shorter stay, faster recovery, fewer complications. OPEN surgery preferred: suspected adrenocortical carcinoma (risk of capsule rupture, port-site recurrence), very large tumors (>6-8 cm controversial), locally invasive tumors. Pheochromocytoma: laparoscopic approach safe with proper preoperative preparation. Posterior retroperitoneal approach: alternative, especially for bilateral.', 'easy'),

('e0000373-0008-0000-0000-000000000008', 'd0000373-0000-0000-0000-000000000073', 8,
'After unilateral adrenalectomy for Cushing syndrome, patients require:',
'No postoperative management', 'Perioperative and postoperative glucocorticoid replacement until the contralateral adrenal recovers from chronic suppression', 'Immediate cessation of all steroids', 'Mineralocorticoid replacement lifelong', NULL,
'B', 'Post-adrenalectomy for Cushing syndrome: STEROID REPLACEMENT required. Reason: chronic cortisol excess from adenoma SUPPRESSES contralateral adrenal and HPA axis. After tumor removal, remaining adrenal is atrophic, cannot produce adequate cortisol. Management: stress-dose hydrocortisone perioperatively, taper over months as HPA axis recovers (may take 6-18 months). Monitor clinically and with morning cortisol/ACTH stimulation tests. Mineralocorticoid replacement usually not needed (aldosterone production preserved). Adrenal crisis can occur if steroids stopped abruptly.', 'medium'),

('e0000373-0009-0000-0000-000000000009', 'd0000373-0000-0000-0000-000000000073', 9,
'Bilateral adrenalectomy results in:',
'No hormonal changes', 'Lifelong glucocorticoid and mineralocorticoid replacement (Addison disease)', 'Only temporary hormonal changes', 'Hyperaldosteronism', NULL,
'B', 'Bilateral adrenalectomy: results in primary adrenal insufficiency (Addison disease). Requires LIFELONG replacement: (1) GLUCOCORTICOID - hydrocortisone 15-25 mg/day in divided doses (or equivalent), stress dosing during illness/surgery; (2) MINERALOCORTICOID - fludrocortisone 0.05-0.2 mg/day. Patient education: sick day rules, medical alert bracelet, emergency injection kit. Without replacement: life-threatening adrenal crisis (hypotension, hypoglycemia, hyperkalemia, hyponatremia). Indications for bilateral: bilateral pheochromocytoma (MEN2), refractory Cushing disease, bilateral ACC (rare).', 'easy'),

('e0000373-0010-0000-0000-000000000010', 'd0000373-0000-0000-0000-000000000073', 10,
'The biochemical test to screen for pheochromocytoma is:',
'Serum cortisol', 'Plasma or 24-hour urine fractionated metanephrines and catecholamines', 'Aldosterone:renin ratio', 'Dexamethasone suppression test', NULL,
'B', 'Pheochromocytoma biochemical diagnosis: PLASMA FREE METANEPHRINES preferred screening (high sensitivity 96-100%). Alternative: 24-hour URINE FRACTIONATED METANEPHRINES and catecholamines. Metanephrines (metabolites of catecholamines) are continuously secreted, not episodic like catecholamines - better sensitivity. Elevated levels: if >2-4 times upper normal = diagnostic; mildly elevated = repeat, consider confounders (medications, stress). Confirm with imaging (CT/MRI). Functional imaging (MIBG, PET) for localization of extra-adrenal, metastatic, or recurrent disease. ALL adrenal incidentalomas need metanephrine testing before any surgery.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 73 (Adrenal Surgery) with 10 self-assessment questions inserted' as status;
