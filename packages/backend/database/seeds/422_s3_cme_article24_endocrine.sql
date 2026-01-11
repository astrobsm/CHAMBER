-- ============================================================================
-- SURGERY 3 CME ARTICLE 24: Endocrine Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000090-0000-0000-0000-000000000090', 'a0000003-0000-0000-0000-000000000003', 'Endocrine Surgery', 'Adrenal and parathyroid surgical conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000324-0000-0000-0000-000000000024',
    'c0000090-0000-0000-0000-000000000090',
    'a0000003-0000-0000-0000-000000000003',
    'Endocrine Surgery: Adrenal and Parathyroid Disorders',
    'Adrenal Tumors, Hyperparathyroidism and Pheochromocytoma',
    'This article covers adrenal incidentalomas, functioning adrenal tumors (Cushing syndrome, Conn syndrome, pheochromocytoma), adrenal carcinoma, primary hyperparathyroidism, parathyroid adenoma localization, and surgical management of endocrine disorders.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000324-0001-0000-0000-000000000001', 'd0000324-0000-0000-0000-000000000024', 1,
'An adrenal incidentaloma requires workup to assess for:',
'Size only', 'Hormonal function (cortisol, aldosterone, catecholamines) and malignancy potential', 'Patient symptoms only', 'Family history only', NULL,
'B', 'Adrenal incidentaloma workup: (1) Hormonal function - 1mg dexamethasone suppression test (Cushing), plasma metanephrines (pheochromocytoma), aldosterone/renin ratio if hypertensive (Conn syndrome); (2) Malignancy assessment - size (>4-6cm suspicious), imaging characteristics (Hounsfield units >10, heterogeneous, irregular margins). All incidentalomas need functional workup regardless of size. Consider surgery for functional tumors or suspicious for malignancy.', 'medium'),

('e0000324-0002-0000-0000-000000000002', 'd0000324-0000-0000-0000-000000000024', 2,
'Pheochromocytoma is diagnosed biochemically by:',
'Serum cortisol', 'Elevated plasma or 24-hour urine metanephrines and catecholamines', 'Serum calcium', 'TSH level', NULL,
'B', 'Pheochromocytoma diagnosis: plasma free metanephrines (most sensitive) or 24-hour urine fractionated metanephrines and catecholamines. Symptoms: episodic hypertension, headache, sweating, palpitations, pallor (rule of 10s: 10% bilateral, 10% extra-adrenal, 10% malignant, 10% familial). Localize with CT/MRI. MIBG scan for extra-adrenal or metastatic. Surgery after alpha-blockade (phenoxybenzamine) for 10-14 days, then beta-blockade if tachycardic.', 'easy'),

('e0000324-0003-0000-0000-000000000003', 'd0000324-0000-0000-0000-000000000024', 3,
'Preoperative preparation for pheochromocytoma surgery requires:',
'No special preparation', 'Alpha-adrenergic blockade first, followed by beta-blockade if needed, volume expansion', 'Beta-blockade first, then alpha-blockade', 'Immediate surgery without medical preparation', NULL,
'B', 'Pheochromocytoma preoperative preparation: (1) Alpha-blockade FIRST (phenoxybenzamine or doxazosin) for 10-14 days - prevents hypertensive crisis from tumor manipulation; (2) Beta-blockade AFTER adequate alpha-blockade only if tachycardia (never before alpha - causes unopposed alpha vasoconstriction, hypertensive crisis); (3) Volume expansion with salt and fluid intake; (4) Metyrosine in some cases. Goals: BP control, minimize intraoperative swings.', 'medium'),

('e0000324-0004-0000-0000-000000000004', 'd0000324-0000-0000-0000-000000000024', 4,
'Primary hyperparathyroidism is characterized by:',
'Low calcium and high PTH', 'Elevated calcium and elevated or inappropriately normal PTH', 'Low calcium and low PTH', 'Normal calcium and low PTH', NULL,
'B', 'Primary hyperparathyroidism: hypercalcemia with elevated or inappropriately normal PTH (should be suppressed). Most common cause: parathyroid adenoma (85%), followed by hyperplasia (10-15%), carcinoma (<1%). Symptoms: stones, bones, groans, moans, psychiatric overtones. Most are asymptomatic, detected incidentally. Also check 24-hour urine calcium to exclude familial hypocalciuric hypercalcemia (FHH).', 'easy'),

('e0000324-0005-0000-0000-000000000005', 'd0000324-0000-0000-0000-000000000024', 5,
'Localization studies for parathyroid adenoma include:',
'CT brain', 'Sestamibi scan and neck ultrasound', 'Chest X-ray only', 'Thyroid function tests', NULL,
'B', 'Parathyroid localization: (1) Sestamibi (Tc-99m) scan - adenomas retain tracer longer than thyroid; (2) Neck ultrasound - operator dependent, may miss ectopic glands; (3) 4D-CT parathyroid - excellent localization; (4) Intraoperative PTH monitoring - confirms successful removal (>50% drop in 10 minutes). Localization guides minimally invasive parathyroidectomy. If localization negative/discordant, may need bilateral neck exploration.', 'medium'),

('e0000324-0006-0000-0000-000000000006', 'd0000324-0000-0000-0000-000000000024', 6,
'Conn syndrome (primary aldosteronism) presents with:',
'Hypotension and hyperkalemia', 'Hypertension and hypokalemia', 'Hypoglycemia', 'Weight loss and diarrhea', NULL,
'B', 'Conn syndrome (primary aldosteronism): hypertension (often resistant) with hypokalemia (though may be normokalemic), metabolic alkalosis. Aldosterone causes sodium retention and potassium excretion. Screening: aldosterone/renin ratio (ARR). Confirmatory testing: salt loading test, fludrocortisone suppression test. Subtype differentiation: adrenal CT, adrenal vein sampling. Treatment: unilateral adenoma → adrenalectomy; bilateral hyperplasia → mineralocorticoid receptor antagonist (spironolactone, eplerenone).', 'medium'),

('e0000324-0007-0000-0000-000000000007', 'd0000324-0000-0000-0000-000000000024', 7,
'Cushing syndrome due to adrenal adenoma is treated with:',
'Medical therapy alone', 'Unilateral adrenalectomy with perioperative glucocorticoid replacement', 'Bilateral adrenalectomy', 'Pituitary surgery', NULL,
'B', 'ACTH-independent Cushing syndrome from adrenal adenoma: unilateral adrenalectomy (laparoscopic preferred). The contralateral adrenal is suppressed due to chronic hypercortisolism, so perioperative and postoperative glucocorticoid replacement is essential until HPA axis recovers (may take months to years). ACTH-dependent Cushing (pituitary adenoma - Cushing disease) is treated with transsphenoidal surgery.', 'medium'),

('e0000324-0008-0000-0000-000000000008', 'd0000324-0000-0000-0000-000000000024', 8,
'Features suggesting adrenocortical carcinoma rather than adenoma include:',
'Size less than 2 cm', 'Size greater than 4-6 cm, irregular margins, heterogeneous appearance, local invasion', 'Homogeneous low-density lesion', 'Slow growth over years', NULL,
'B', 'Adrenocortical carcinoma features: large size (>4-6cm), irregular margins, heterogeneous enhancement, high attenuation on non-contrast CT (>10 HU), slow washout, local invasion, lymphadenopathy. Many are functional (cortisol, androgens). Poor prognosis. Treatment: complete surgical resection (open adrenalectomy for large/invasive tumors), adjuvant mitotane. Avoid biopsy (seeding risk). Adenomas are typically small, homogeneous, low density, lipid-rich.', 'medium'),

('e0000324-0009-0000-0000-000000000009', 'd0000324-0000-0000-0000-000000000024', 9,
'Hungry bone syndrome after parathyroidectomy refers to:',
'Elevated calcium levels', 'Severe hypocalcemia due to rapid calcium uptake by calcium-depleted bones', 'Bone pain from malignancy', 'Elevated phosphate levels', NULL,
'B', 'Hungry bone syndrome: severe hypocalcemia after parathyroidectomy for hyperparathyroidism, especially with significant bone disease (osteitis fibrosa cystica). Prolonged PTH elevation causes bone demineralization; after removal, calcium rapidly deposits into remineralizing bone. Risk factors: large adenoma, high preoperative PTH/ALP, significant bone disease. Management: aggressive calcium (IV and oral) and calcitriol supplementation. Monitor calcium closely postoperatively.', 'hard'),

('e0000324-0010-0000-0000-000000000010', 'd0000324-0000-0000-0000-000000000024', 10,
'Multiple Endocrine Neoplasia type 1 (MEN 1) includes:',
'Medullary thyroid carcinoma and pheochromocytoma', 'Parathyroid hyperplasia, pituitary adenoma, and pancreatic neuroendocrine tumors (3 Ps)', 'Only thyroid cancer', 'Adrenal insufficiency', NULL,
'B', 'MEN 1 (Wermer syndrome) - 3 Ps: Parathyroid hyperplasia (95%, most common), Pituitary adenoma (prolactinoma most common), Pancreatic neuroendocrine tumors (gastrinoma, insulinoma). Caused by MEN1 gene mutation (menin, tumor suppressor). Parathyroidectomy for hyperparathyroidism should remove 3.5 glands. Contrast with MEN 2 (medullary thyroid cancer, pheochromocytoma ± hyperparathyroidism in 2A).', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 24 (Endocrine Surgery) with 10 self-assessment questions inserted' as status;
