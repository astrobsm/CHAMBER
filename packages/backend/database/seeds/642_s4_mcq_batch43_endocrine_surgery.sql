-- Surgery 4 MCQ Question Bank - Batch 43
-- Section H: Special Topics - Endocrine Surgery
-- 40 Questions

-- Topic: Endocrine Surgery (Adrenal and Parathyroid)
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000043-0000-0000-0000-000000000043', 'Endocrine Surgery - Adrenal and Parathyroid', 'a0000004-0000-0000-0000-000000000004', 'Adrenal tumors, hyperparathyroidism, and parathyroid surgery', 43, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'The adrenal cortex produces:',
 'Catecholamines only', 'Glucocorticoids mineralocorticoids and androgens', 'Only epinephrine', 'Insulin', 'Thyroid hormone',
 'B', 'Adrenal cortex zones: zona glomerulosa (aldosterone/mineralocorticoids), zona fasciculata (cortisol/glucocorticoids), zona reticularis (androgens/DHEA). Medulla produces catecholamines (epinephrine, norepinephrine).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'The adrenal medulla produces:',
 'Cortisol', 'Catecholamines including epinephrine and norepinephrine', 'Aldosterone', 'Androgens', 'Thyroid hormone',
 'B', 'Adrenal medulla: chromaffin cells (neural crest origin). Produces catecholamines: epinephrine (80%), norepinephrine (20%). Tumors: pheochromocytoma (catecholamine-secreting), neuroblastoma (pediatric).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Adrenal incidentaloma is defined as:',
 'Symptomatic adrenal mass', 'Adrenal mass discovered incidentally on imaging performed for unrelated reasons', 'Known metastasis', 'Adrenal hemorrhage', 'Infection',
 'B', 'Adrenal incidentaloma: found on CT/MRI done for other reasons. Prevalence increases with age (4-5% of CT scans). Evaluation needed: is it functional? Is it malignant? Hormone workup and imaging characteristics guide management.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Initial evaluation of adrenal incidentaloma includes:',
 'Immediate surgery', 'Hormonal workup for hypersecretion and imaging to assess malignancy risk', 'No workup needed', 'Biopsy first', 'Observation only',
 'B', 'Incidentaloma workup: functional assessment (1mg DST for cortisol, plasma metanephrines for pheo, aldosterone/renin if hypertensive). Imaging: size, attenuation (>10 HU suggests malignancy), enhancement washout. Biopsy rarely indicated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'CT features suggestive of benign adrenal adenoma include:',
 'High HU and poor washout', 'Low attenuation less than 10 HU on unenhanced CT and rapid contrast washout', 'Large size over 6 cm', 'Irregular margins', 'Calcifications',
 'B', 'Benign adenoma CT features: low unenhanced attenuation (<10 HU = lipid-rich adenoma), rapid contrast washout (>50% at 10 min), small size (<4 cm), homogeneous, smooth margins. Higher HU requires washout study or further workup.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Adrenalectomy is generally recommended for adrenal incidentalomas that are:',
 'All incidentalomas', 'Functional or larger than 4 cm or with suspicious imaging features', 'Only if symptomatic', 'Only if less than 1 cm', 'Never surgical',
 'B', 'Adrenalectomy indications: functional tumors (any size), size >4-6 cm (malignancy risk), suspicious imaging (high HU, heterogeneous, irregular, growth), known malignancy elsewhere (after workup). Observe small, non-functional adenomas.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Pheochromocytoma arises from:',
 'Adrenal cortex', 'Chromaffin cells of the adrenal medulla', 'Zona glomerulosa', 'Thyroid', 'Pituitary',
 'B', 'Pheochromocytoma: catecholamine-secreting tumor from chromaffin cells (adrenal medulla). Extra-adrenal = paraganglioma. 10% rule (malignant, bilateral, extra-adrenal, familial) - now revised with genetic testing.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Classic symptoms of pheochromocytoma include:',
 'Weight gain and fatigue', 'Paroxysmal hypertension headache sweating and palpitations', 'Hypotension', 'Polyuria only', 'No symptoms',
 'B', 'Pheochromocytoma triad: headache, diaphoresis, palpitations with hypertension (paroxysmal or sustained). May have anxiety, tremor, pallor. Hypertensive crises. Mimics panic attacks. Can be life-threatening if undiagnosed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'The best biochemical test for pheochromocytoma is:',
 '24-hour urine cortisol', 'Plasma or 24-hour urine metanephrines', 'Serum catecholamines', 'Blood glucose', 'Serum aldosterone',
 'B', 'Pheo diagnosis: plasma free metanephrines (high sensitivity) or 24-hour urine metanephrines/catecholamines. Metanephrines are metabolites, more stable than catecholamines. Highly sensitive, false positives possible (stress, medications).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Preoperative management of pheochromocytoma includes:',
 'Immediate surgery', 'Alpha-blockade followed by beta-blockade and volume expansion', 'Beta-blockade first', 'No preparation needed', 'Chemotherapy',
 'B', 'Pheo preop: alpha-blockade FIRST (phenoxybenzamine 10-14 days, or doxazosin), then beta-blockade (for tachycardia). Never beta first (unopposed alpha = crisis). Liberal salt/fluid. Goal: normalize BP, restore volume. Critical for safe surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Why is beta-blockade alone contraindicated in pheochromocytoma:',
 'No contraindication', 'Unopposed alpha stimulation can cause severe hypertensive crisis', 'Causes hypotension', 'Causes bradycardia', 'Ineffective',
 'B', 'Beta-blockade alone in pheo: blocks vasodilatory beta-2 receptors while alpha vasoconstriction unopposed. Results in severe hypertensive crisis. Always alpha-block first, then add beta if tachycardia present.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Hereditary syndromes associated with pheochromocytoma include:',
 'None', 'MEN2 VHL neurofibromatosis and SDH mutations', 'Down syndrome', 'Turner syndrome', 'Marfan syndrome',
 'B', 'Pheo genetic syndromes: MEN2A/2B (RET), VHL (VHL gene), NF1, SDH mutations (SDHB, SDHD), MAX, TMEM127. 30-40% hereditary. All pheo patients should have genetic counseling/testing. Affects screening and management.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Cushing syndrome is caused by:',
 'Cortisol deficiency', 'Excess cortisol from any source', 'Aldosterone excess', 'Catecholamine excess', 'Thyroid excess',
 'B', 'Cushing syndrome: clinical manifestations of excess cortisol. Causes: exogenous steroids (most common), pituitary adenoma (Cushing disease), adrenal tumors, ectopic ACTH. Symptoms: obesity, striae, hypertension, diabetes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Clinical features of Cushing syndrome include:',
 'Weight loss', 'Central obesity moon facies buffalo hump purple striae and hypertension', 'Hypotension', 'Hypoglycemia', 'Normal appearance',
 'B', 'Cushing features: central obesity, moon facies, dorsocervical fat pad (buffalo hump), proximal weakness, purple striae, thin skin, easy bruising, hypertension, diabetes, osteoporosis, mood changes, hirsutism.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'The 1 mg overnight dexamethasone suppression test is used to:',
 'Confirm pheochromocytoma', 'Screen for hypercortisolism in Cushing syndrome', 'Test thyroid function', 'Measure aldosterone', 'Diagnose diabetes',
 'B', '1mg DST: screening test for Cushing. Give 1mg dexamethasone at 11 PM, check cortisol at 8 AM. Normal suppresses to <1.8 mcg/dL. Lack of suppression suggests hypercortisolism. High sensitivity, confirm with additional tests.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Cushing disease specifically refers to:',
 'Any cause of Cushing syndrome', 'Cushing syndrome caused by pituitary ACTH-secreting adenoma', 'Adrenal adenoma', 'Ectopic ACTH', 'Exogenous steroids',
 'B', 'Cushing disease: hypercortisolism from pituitary ACTH-secreting adenoma. Most common endogenous cause. Differentiated by ACTH levels (elevated), inferior petrosal sinus sampling. Treatment: transsphenoidal surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Conn syndrome (primary hyperaldosteronism) presents with:',
 'Hypotension', 'Hypertension and hypokalemia', 'Weight loss', 'Hyperkalemia', 'Hypoglycemia',
 'B', 'Conn syndrome (primary aldosteronism): aldosterone excess from adrenal adenoma or bilateral hyperplasia. Hypertension (often resistant), hypokalemia (not always), metabolic alkalosis. Common cause of secondary hypertension.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Screening for primary aldosteronism involves:',
 'Serum cortisol', 'Aldosterone to renin ratio', 'Urinary catecholamines', 'TSH', 'Glucose tolerance test',
 'B', 'Primary aldosteronism screening: aldosterone-to-renin ratio (ARR). Elevated aldosterone with suppressed renin. Screen in resistant HTN, hypokalemia, adrenal incidentaloma with HTN. Confirm with salt loading or fludrocortisone suppression.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Adrenal vein sampling is used in primary aldosteronism to:',
 'Measure cortisol', 'Lateralize aldosterone secretion to determine if unilateral adenoma or bilateral hyperplasia', 'Diagnose pheochromocytoma', 'No indication', 'Biopsy the adrenal',
 'B', 'AVS: gold standard for lateralization in primary aldosteronism. Compares aldosterone/cortisol ratios between adrenal veins. Unilateral = adrenalectomy curative. Bilateral = medical therapy (mineralocorticoid receptor antagonists).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Adrenocortical carcinoma is:',
 'Always benign', 'A rare aggressive malignancy often presenting with hormone excess and large size', 'Common tumor', 'Never functional', 'Easily cured',
 'B', 'Adrenocortical carcinoma: rare, aggressive. Often large at diagnosis (>6 cm). 60% functional (cortisol, androgens, mixed). Features: rapid growth, invasion, metastases. Treatment: complete surgical resection, mitotane. Poor prognosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Laparoscopic adrenalectomy is preferred for:',
 'All adrenal tumors', 'Most adrenal tumors less than 6 cm that are not suspected carcinoma', 'Only pheochromocytoma', 'Only Conn syndrome', 'Never indicated',
 'B', 'Laparoscopic adrenalectomy: standard for most benign adrenal tumors. Benefits: less pain, shorter stay, faster recovery. Preferred for functional adenomas, small non-functional masses. Open surgery for suspected carcinoma, large tumors, invasion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'The parathyroid glands are located:',
 'In the thyroid', 'Posterior to the thyroid gland usually four in number', 'Anterior to thyroid', 'In the mediastinum only', 'In the neck fascia',
 'B', 'Parathyroid anatomy: usually 4 glands posterior to thyroid. Superior: from 4th pharyngeal pouch, more consistent location. Inferior: from 3rd pouch, more variable (can be in thymus, mediastinum). Variable number and location.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'The function of parathyroid hormone is to:',
 'Decrease calcium', 'Increase serum calcium by bone resorption renal reabsorption and vitamin D activation', 'Decrease phosphate only', 'No function', 'Regulate sodium',
 'B', 'PTH actions: increase serum calcium via bone resorption (osteoclasts), increase renal calcium reabsorption, stimulate 1-alpha-hydroxylase (active vitamin D production), decrease phosphate reabsorption. Tightly regulated by calcium.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Primary hyperparathyroidism is most commonly caused by:',
 'Parathyroid carcinoma', 'Single parathyroid adenoma', 'Four-gland hyperplasia', 'Renal failure', 'Vitamin D deficiency',
 'B', 'Primary HPT causes: single adenoma (85%), multigland hyperplasia (10-15%), double adenoma (2-5%), carcinoma (<1%). PTH elevated with high/high-normal calcium. Distinguish from secondary/tertiary HPT.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Symptoms of primary hyperparathyroidism include:',
 'Only hypotension', 'Kidney stones bone pain abdominal pain fatigue and psychiatric symptoms', 'Weight gain', 'Hyperkalemia', 'No symptoms ever',
 'B', 'Primary HPT symptoms: "stones, bones, abdominal groans, and psychic moans." Nephrolithiasis, osteoporosis, constipation, nausea, fatigue, depression, cognitive changes. Many now asymptomatic (discovered on routine labs).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Laboratory findings in primary hyperparathyroidism show:',
 'Low calcium, high PTH', 'High or high-normal calcium with elevated or inappropriately normal PTH', 'Low PTH', 'High phosphate', 'Normal calcium and PTH',
 'B', 'Primary HPT labs: elevated calcium with elevated or inappropriately normal PTH (should be suppressed). Low phosphate, elevated urine calcium, elevated 1,25-vitamin D. 24-hour urine calcium to rule out familial hypocalciuric hypercalcemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Indications for surgery in asymptomatic primary hyperparathyroidism include:',
 'No indications', 'Age less than 50 calcium greater than 1 above normal GFR reduction or osteoporosis', 'All asymptomatic patients', 'Only symptomatic patients', 'Medication always preferred',
 'B', 'Asymptomatic HPT surgery criteria: calcium >1 mg/dL above normal, CrCl <60, T-score <-2.5 (osteoporosis/any site), vertebral fracture, age <50, 24h urine Ca >400, nephrolithiasis/nephrocalcinosis. Surgery curative.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Preoperative localization studies for parathyroid surgery include:',
 'No imaging needed', 'Sestamibi scan and neck ultrasound', 'CT only', 'MRI only', 'Biopsy',
 'B', 'Parathyroid localization: sestamibi scan (Tc-99m, uptake in hyperfunctioning tissue), ultrasound (complementary), 4D-CT (if discordant/negative). Localization allows focused/minimally invasive surgery. Bilateral exploration if not localized.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Intraoperative PTH monitoring is used to:',
 'Localize the adenoma', 'Confirm successful adenoma removal by demonstrating PTH drop', 'Replace imaging', 'Diagnose hyperparathyroidism', 'Measure calcium',
 'B', 'Intraoperative PTH (IOPTH): PTH half-life 3-5 minutes. Measure before and after excision. >50% drop from highest pre-excision value to normal range indicates cure. Allows focused surgery, avoids missed multigland disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Focused parathyroidectomy compared to bilateral exploration:',
 'Has worse outcomes', 'Is effective when single adenoma is well-localized with lower morbidity', 'Requires more anesthesia', 'Misses all multigland disease', 'Is never done',
 'B', 'Focused parathyroidectomy: single adenoma excision through small incision when well-localized preoperatively. Uses IOPTH confirmation. Benefits: shorter surgery, can be done under local, same cure rate (97%+). Bilateral if localization unclear.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Complications of parathyroid surgery include:',
 'No complications', 'Hypocalcemia recurrent laryngeal nerve injury and hematoma', 'Only bleeding', 'Only infection', 'No risk of hypocalcemia',
 'B', 'Parathyroidectomy complications: hypocalcemia (transient or permanent - hungry bone syndrome), RLN injury (hoarseness), hematoma, infection, persistent/recurrent hyperparathyroidism. Experienced surgeons have lower complication rates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Hungry bone syndrome after parathyroidectomy:',
 'Is hypercalcemia', 'Is hypocalcemia from rapid bone uptake of calcium after removing parathyroid source', 'Is hyperphosphatemia', 'Is rare', 'Never requires treatment',
 'B', 'Hungry bone syndrome: profound hypocalcemia after parathyroidectomy for severe/longstanding disease. Calcium floods into bone (remineralization). Risk factors: high preop PTH, bone disease. Treatment: aggressive IV and oral calcium, vitamin D.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Secondary hyperparathyroidism is caused by:',
 'Parathyroid adenoma', 'Chronic stimulation of parathyroid glands due to hypocalcemia often from renal failure', 'Parathyroid carcinoma', 'MEN syndrome', 'Vitamin D excess',
 'B', 'Secondary HPT: parathyroid hyperplasia from chronic hypocalcemia (CKD most common). Low calcium + low vitamin D stimulates PTH. All 4 glands enlarged. Medical treatment first. Surgery (subtotal parathyroidectomy) if refractory.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Tertiary hyperparathyroidism occurs when:',
 'Same as primary', 'Secondary hyperparathyroidism becomes autonomous usually after renal transplant', 'First parathyroid problem', 'Only in children', 'Vitamin D dependent',
 'B', 'Tertiary HPT: autonomous parathyroid function after prolonged secondary HPT. Glands no longer respond to calcium. Often post-renal transplant with persistent hypercalcemia. Treatment: subtotal parathyroidectomy or total with autotransplant.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'MEN1 syndrome includes:',
 'Thyroid cancer only', 'Parathyroid hyperplasia pituitary tumors and pancreatic neuroendocrine tumors', 'Pheochromocytoma', 'Medullary thyroid cancer', 'Colon cancer',
 'B', 'MEN1: parathyroid hyperplasia (95%), pituitary adenomas (prolactinoma, GH, ACTH), pancreatic NETs (gastrinoma, insulinoma). MEN1 gene (menin). HPT usually multigland - subtotal parathyroidectomy, not focused surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'MEN2A syndrome includes:',
 'Parathyroid adenoma, pituitary tumor, pancreatic tumor', 'Medullary thyroid carcinoma pheochromocytoma and primary hyperparathyroidism', 'Gastrinoma', 'Only thyroid cancer', 'Brain tumors',
 'B', 'MEN2A: medullary thyroid carcinoma (MTC, 100%), pheochromocytoma (50%), primary HPT (20-30%). RET proto-oncogene. Prophylactic thyroidectomy based on mutation. Screen for pheo before thyroid surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Parathyroid carcinoma:',
 'Is very common', 'Is rare presenting with severe hypercalcemia and palpable neck mass', 'Has excellent prognosis', 'Never causes hypercalcemia', 'Is treated medically',
 'B', 'Parathyroid carcinoma: <1% of HPT. Features: very high calcium (often >14), markedly elevated PTH, palpable neck mass, local invasion. Diagnosis often intraoperative (invasion). Treatment: en bloc resection. Recurrence common.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004',
 'Familial hypocalciuric hypercalcemia (FHH) is important to distinguish from primary HPT because:',
 'It requires surgery', 'It is benign and does not require parathyroidectomy', 'It is malignant', 'It causes severe symptoms', 'Same treatment as HPT',
 'B', 'FHH: autosomal dominant, CaSR mutation. Mild hypercalcemia, low-normal urinary calcium (Ca/Cr clearance ratio <0.01). Benign - NO surgery needed (parathyroidectomy won''t cure). Family history helpful. 24h urine calcium distinguishes from HPT.', 'hard', 'knowledge');
