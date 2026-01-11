-- Surgery 4 MCQ Question Bank - Batch 27
-- Section E: Oncology - Thyroid Cancer
-- 40 Questions

-- Topic: Thyroid Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000027-0000-0000-0000-000000000027', 'Thyroid Cancer', 'a0000004-0000-0000-0000-000000000004', 'Thyroid cancer types, diagnosis, staging, and surgical management', 27, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of thyroid cancer is:',
 'Follicular carcinoma', 'Papillary carcinoma', 'Medullary carcinoma', 'Anaplastic carcinoma', 'Thyroid lymphoma',
 'B', 'Papillary thyroid carcinoma: 80-85% of thyroid cancers. Excellent prognosis. Differentiated cancer from follicular cells. Spreads to lymph nodes. Associated with radiation exposure.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for differentiated thyroid cancer (papillary and follicular) include:',
 'Iodine excess', 'Radiation exposure especially in childhood', 'High TSH always', 'Male gender predominantly', 'Smoking',
 'B', 'DTC risk factors: radiation exposure (especially childhood), family history, iodine deficiency (for follicular), some genetic syndromes. More common in females. Peak age 30-50 years.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'The initial evaluation of a thyroid nodule includes:',
 'Immediate surgery', 'TSH level and ultrasound followed by FNA if indicated', 'CT scan', 'Radioactive iodine scan only', 'Observation only',
 'B', 'Nodule evaluation: TSH (if low, consider functioning nodule/scan), ultrasound (characterize nodule, guide FNA), FNA based on size and ultrasound features. Most nodules are benign.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Ultrasound features suspicious for thyroid malignancy include:',
 'Pure cystic nodule', 'Hypoechogenicity microcalcifications irregular margins taller than wide shape', 'Hyperechoic nodule', 'Well-defined smooth borders', 'Posterior enhancement',
 'B', 'Suspicious US features: hypoechoic, microcalcifications (psammoma bodies), irregular/lobulated margins, taller-than-wide, extrathyroidal extension, abnormal lymph nodes. Risk stratification guides FNA.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Fine needle aspiration (FNA) cytology of thyroid nodules is reported using:',
 'TNM staging', 'Bethesda System for Reporting Thyroid Cytopathology', 'Gleason grading', 'BI-RADS', 'Fuhrman grading',
 'B', 'Bethesda System: 6 categories. I (nondiagnostic), II (benign), III (atypia/FLUS), IV (follicular neoplasm), V (suspicious for malignancy), VI (malignant). Risk of malignancy increases with category.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Bethesda category VI indicates:',
 'Benign nodule', 'Nondiagnostic sample', 'Malignant cytology', 'Atypia of undetermined significance', 'Follicular neoplasm',
 'C', 'Bethesda VI: malignant. 97-99% risk of malignancy. Surgery indicated. Category II (benign) has <3% malignancy risk - surveillance. Category III-V require further workup or surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Molecular testing (Afirma, ThyroSeq) in thyroid nodules is used for:',
 'All nodules', 'Indeterminate FNA results (Bethesda III-IV) to help avoid unnecessary surgery', 'Malignant nodules only', 'Staging', 'Replacing ultrasound',
 'B', 'Molecular testing: for indeterminate FNA. Rule-out tests (high NPV, can observe if negative) and rule-in tests (high PPV). Helps avoid diagnostic surgery for benign nodules.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Papillary thyroid carcinoma characteristically spreads to:',
 'Bone first', 'Regional cervical lymph nodes', 'Liver', 'Brain', 'Distant sites only',
 'B', 'PTC: lymph node metastases common (30-80%). Central and lateral neck nodes. Distant mets (lung, bone) less common. Lymph node involvement may not significantly affect survival in younger patients.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Follicular thyroid carcinoma is distinguished from follicular adenoma by:',
 'Cell appearance on cytology', 'Capsular or vascular invasion on histology', 'Size alone', 'FNA characteristics', 'Ultrasound features',
 'B', 'FTC: cannot diagnose on FNA (need to see invasion). Requires surgical excision for definitive diagnosis. Capsular and/or vascular invasion defines malignancy. Spreads hematogenously (lung, bone).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Hurthle cell carcinoma:',
 'Is a variant of papillary carcinoma', 'Is a variant of follicular carcinoma with oncocytic cells', 'Has excellent prognosis', 'Does not take up radioiodine well', 'Is always benign',
 'D', 'Hurthle cell carcinoma: variant of follicular carcinoma, oncocytic cells. Often less radioiodine avid. More aggressive than typical FTC. Now considered separate entity. Treated similarly but may be less responsive to RAI.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Medullary thyroid carcinoma arises from:',
 'Follicular cells', 'Parafollicular C cells', 'Parathyroid cells', 'Thyroid stroma', 'Lymphoid tissue',
 'B', 'MTC: from C cells (produce calcitonin). Not differentiated thyroid cancer. Sporadic (75%) or hereditary (25% - MEN2A, MEN2B, FMTC). Calcitonin is tumor marker.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'All patients with medullary thyroid carcinoma should be tested for:',
 'BRCA mutations', 'RET proto-oncogene mutations', 'BRAF mutations', 'TP53 mutations', 'APC mutations',
 'B', 'RET testing: all MTC patients. Identifies hereditary cases (MEN2A, MEN2B). Implications for family screening and prophylactic thyroidectomy in carriers. Specific RET mutations correlate with phenotype.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'MEN2A syndrome includes:',
 'Pheochromocytoma only', 'Medullary thyroid carcinoma pheochromocytoma and primary hyperparathyroidism', 'Pituitary adenoma', 'Pancreatic tumors', 'No thyroid involvement',
 'B', 'MEN2A: MTC (nearly 100%), pheochromocytoma (50%), primary hyperparathyroidism (20-30%). RET mutation. Screen for pheo before thyroid surgery. Prophylactic thyroidectomy in childhood for carriers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'MEN2B syndrome is characterized by:',
 'Hyperparathyroidism commonly', 'MTC pheochromocytoma mucosal neuromas and marfanoid habitus', 'Late onset MTC', 'Benign course', 'No pheo',
 'B', 'MEN2B: aggressive MTC (earliest, worst prognosis), pheochromocytoma, mucosal neuromas (lips, tongue), marfanoid habitus, intestinal ganglioneuromatosis. No hyperparathyroidism. Prophylactic thyroidectomy in infancy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Calcitonin is a tumor marker for:',
 'Papillary carcinoma', 'Medullary thyroid carcinoma', 'Follicular carcinoma', 'Anaplastic carcinoma', 'All thyroid cancers',
 'B', 'Calcitonin: produced by C cells, elevated in MTC. Used for diagnosis and monitoring. CEA also elevated in MTC. Doubling time of calcitonin/CEA has prognostic significance.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Anaplastic thyroid carcinoma is characterized by:',
 'Excellent prognosis', 'Rapid growth poor prognosis and often presents with locally advanced disease', 'Radioiodine sensitivity', 'Young age at presentation', 'Slow growth',
 'B', 'Anaplastic thyroid carcinoma: undifferentiated, aggressive. Rapid growth, often from longstanding goiter or DTC. Poor prognosis (median survival months). Not RAI avid. Multimodal therapy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Total thyroidectomy for differentiated thyroid cancer is performed to:',
 'Prevent hyperthyroidism', 'Enable radioiodine therapy and thyroglobulin surveillance', 'Remove all lymph nodes', 'Always required for any thyroid cancer', 'Reduce calcitonin',
 'B', 'Total thyroidectomy: allows RAI ablation of remnant and treatment of metastases. Thyroglobulin becomes tumor marker. Not always needed for low-risk small PTC (lobectomy may suffice).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Thyroid lobectomy alone may be adequate treatment for:',
 'All thyroid cancers', 'Low-risk papillary carcinoma less than 4 cm without extrathyroidal extension or nodal disease', 'Anaplastic carcinoma', 'Medullary carcinoma', 'Follicular carcinoma always',
 'B', 'Lobectomy: option for low-risk PTC (<4 cm, unifocal, no ETE, no nodes, no distant mets). Avoids bilateral RLN/parathyroid risk. No RAI possible but not always needed. Good prognosis anyway.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Central neck dissection in papillary thyroid carcinoma:',
 'Is never performed', 'Is performed therapeutically for clinically involved nodes and may be done prophylactically', 'Only for anaplastic carcinoma', 'Replaces total thyroidectomy', 'Only for lateral neck nodes',
 'B', 'Central neck dissection (level VI): therapeutic for clinically positive nodes. Prophylactic may be performed for advanced primary tumors. Removes pretracheal, paratracheal, prelaryngeal nodes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Lateral neck dissection for thyroid cancer is performed when:',
 'For all thyroid cancers', 'Clinically or biopsy-proven lateral neck nodal metastases are present', 'Prophylactically always', 'Only for medullary carcinoma', 'Never indicated',
 'B', 'Lateral neck dissection: therapeutic, not prophylactic. For clinically/radiologically/biopsy-proven lateral nodal disease. Modified radical or selective (levels II-V or II-IV).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Complications of thyroid surgery include:',
 'Only hyperthyroidism', 'Recurrent laryngeal nerve injury hypocalcemia and bleeding', 'No significant complications', 'Only cosmetic issues', 'Only hypothyroidism',
 'B', 'Complications: RLN injury (hoarseness, 1-2% permanent), hypocalcemia (hypoparathyroidism, 1-2% permanent), bleeding/hematoma, wound infection, chyle leak. Higher risk with extensive surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Postoperative hypocalcemia after thyroidectomy results from:',
 'Iodine deficiency', 'Parathyroid gland injury or devascularization', 'Excessive thyroid hormone', 'Infection', 'Bleeding',
 'B', 'Hypocalcemia: parathyroid injury or inadvertent removal. Temporary in most cases. Monitor calcium and PTH postop. May require calcium and vitamin D supplementation. Higher risk with central neck dissection.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Radioactive iodine (I-131) therapy for differentiated thyroid cancer:',
 'Is used for all patients', 'Ablates thyroid remnant and treats microscopic or macroscopic iodine-avid disease', 'Is used for medullary carcinoma', 'Replaces surgery', 'Has no side effects',
 'B', 'RAI therapy: for DTC (PTC, FTC). Ablates remnant (improves Tg surveillance), treats iodine-avid metastases. Not for MTC or anaplastic. Risk stratification determines who needs RAI.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Before radioactive iodine therapy patients should:',
 'Take levothyroxine', 'Be on low-iodine diet and have elevated TSH (withdrawal or recombinant TSH)', 'Take high-dose iodine', 'Have normal TSH', 'Take propylthiouracil',
 'B', 'RAI preparation: low-iodine diet (2 weeks), elevated TSH (>30) via thyroid hormone withdrawal or recombinant TSH injection. TSH stimulates RAI uptake. Pregnancy excluded.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Thyroglobulin is used as a tumor marker for:',
 'Medullary carcinoma', 'Differentiated thyroid cancer (papillary and follicular) after thyroidectomy', 'Anaplastic carcinoma', 'Parathyroid cancer', 'All thyroid nodules',
 'B', 'Thyroglobulin: produced only by thyroid tissue. After total thyroidectomy and RAI, should be undetectable. Rising Tg indicates recurrence. Measure with anti-Tg antibodies (can interfere).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'TSH suppression therapy in differentiated thyroid cancer:',
 'Is never used', 'Involves levothyroxine to maintain low TSH and reduce recurrence risk in intermediate and high-risk patients', 'Increases recurrence', 'Uses antithyroid drugs', 'Is only for hypothyroidism',
 'B', 'TSH suppression: levothyroxine doses to suppress TSH (removes growth stimulus). Degree of suppression based on risk. Low-risk: TSH 0.5-2. High-risk: TSH <0.1. Balance against hyperthyroidism risks.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'External beam radiation therapy for thyroid cancer is used for:',
 'All differentiated cancers', 'Locally advanced unresectable or anaplastic thyroid cancer', 'First-line treatment', 'Replacing RAI', 'Only for children',
 'B', 'EBRT: for gross residual disease after surgery, locally advanced unresectable disease, RAI-refractory disease with local symptoms, anaplastic carcinoma (with chemo). Not routine for DTC.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Tyrosine kinase inhibitors (lenvatinib, sorafenib) are used in thyroid cancer for:',
 'All newly diagnosed cases', 'RAI-refractory progressive differentiated thyroid cancer', 'First-line treatment', 'Replacing surgery', 'Only for PTC',
 'B', 'TKIs: for RAI-refractory progressive DTC. Lenvatinib, sorafenib, cabozantinib approved. Target VEGFR and other kinases. Side effects: hypertension, diarrhea, hand-foot syndrome.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'RET inhibitors (selpercatinib, pralsetinib) are used for:',
 'All thyroid cancers', 'RET-mutant medullary thyroid carcinoma and RET fusion-positive thyroid cancer', 'Only anaplastic cancer', 'Only papillary cancer', 'RAI-sensitive DTC',
 'B', 'RET inhibitors: highly selective, approved for RET-mutant MTC and RET fusion-positive DTC. High response rates. First-line or after other TKIs. Test for RET alterations.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'BRAF V600E mutation in papillary thyroid carcinoma:',
 'Is rare', 'Is common (40-60%) and associated with more aggressive features', 'Has no clinical significance', 'Is only in follicular carcinoma', 'Means better prognosis',
 'B', 'BRAF V600E: most common mutation in PTC. Associated with aggressive features (ETE, recurrence, RAI refractoriness, mortality). Targeted therapy (BRAF/MEK inhibitors) option for progressive disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'The prognosis of differentiated thyroid cancer is:',
 'Uniformly poor', 'Excellent with greater than 95 percent long-term survival for most patients', '50 percent 5-year survival', 'Worse than anaplastic', 'Unknown',
 'B', 'DTC prognosis: excellent. 10-year survival >90%. Age is major prognostic factor (worse >55). Stage, histology, completeness of resection also important. Deaths usually from advanced/aggressive disease.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'American Thyroid Association (ATA) risk stratification for differentiated thyroid cancer:',
 'Is based on age only', 'Categorizes patients as low intermediate or high risk for recurrence based on clinicopathologic features', 'Uses only staging', 'Is for medullary only', 'Is not used clinically',
 'B', 'ATA risk: low (intrathyroidal, no aggressive features), intermediate (minor ETE, vascular invasion, aggressive histology, nodes), high (gross ETE, incomplete resection, distant mets). Guides RAI and follow-up.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance for recurrence in differentiated thyroid cancer includes:',
 'Annual CT only', 'Neck ultrasound thyroglobulin levels and sometimes RAI scans', 'No surveillance needed', 'PET scan only', 'Blood tests only',
 'B', 'Surveillance: neck US (6-12 months, then based on risk), Tg with anti-Tg antibodies, diagnostic RAI scan in select cases. Frequency and intensity based on risk and response to treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Recurrent thyroid cancer in the neck is typically treated with:',
 'Observation only', 'Surgical resection and/or radioiodine therapy', 'Chemotherapy', 'EBRT alone', 'Hormone therapy',
 'B', 'Recurrence treatment: surgery for resectable nodal/local recurrence, RAI for iodine-avid disease. EBRT for unresectable/RAI-refractory. TKIs for progressive RAI-refractory disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Thyroid storm after thyroid surgery:',
 'Is common', 'Is rare and can be precipitated by surgery in unprepared hyperthyroid patients', 'Has no treatment', 'Only occurs after lobectomy', 'Is always fatal',
 'B', 'Thyroid storm: rare but life-threatening. Hyperthyroid patients should be euthyroid before surgery. If occurs: beta-blockers, thionamides, iodine (after thionamide), steroids, cooling, supportive care.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004',
 'Papillary thyroid microcarcinoma (PTMC) less than 1 cm:',
 'Always requires immediate surgery', 'May be managed with active surveillance in selected low-risk cases', 'Has poor prognosis', 'Requires RAI always', 'Is not cancer',
 'B', 'PTMC: often indolent. Active surveillance appropriate for low-risk (no ETE, nodes, aggressive histology). Many never progress. Avoids surgical morbidity. Japanese and Korean experience supports this.', 'medium', 'knowledge');
