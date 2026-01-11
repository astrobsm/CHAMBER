-- ============================================================================
-- SURGERY 3 CME ARTICLE 7: Thyroid Disease and Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000073-0000-0000-0000-000000000073', 'a0000003-0000-0000-0000-000000000003', 'Thyroid Disease', 'Thyroid nodules, goiter, cancer and surgical management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000307-0000-0000-0000-000000000007',
    'c0000073-0000-0000-0000-000000000073',
    'a0000003-0000-0000-0000-000000000003',
    'Thyroid Disease: Evaluation and Surgical Management',
    'Goiter, Thyroid Nodules and Thyroid Cancer',
    'This article covers the spectrum of thyroid disease including goiter classification, thyroid nodule workup (TSH, ultrasound, FNAC, Bethesda system), thyroid cancer types, surgical options (hemithyroidectomy vs total thyroidectomy), and management of complications including recurrent laryngeal nerve injury and hypoparathyroidism.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000307-0001-0000-0000-000000000001', 'd0000307-0000-0000-0000-000000000007', 1,
'The first investigation for a patient with a thyroid nodule is:',
'Fine needle aspiration cytology', 'Serum TSH level', 'Thyroid ultrasound', 'Radioactive iodine scan', NULL,
'B', 'TSH is the first test for thyroid nodules. If TSH is low (hyperthyroidism), perform radioiodine scan - hot nodules (functioning) rarely harbor malignancy and may not need FNAC. If TSH is normal or high, proceed with ultrasound and FNAC based on suspicious features. This approach avoids unnecessary biopsies of functioning nodules.', 'medium'),

('e0000307-0002-0000-0000-000000000002', 'd0000307-0000-0000-0000-000000000007', 2,
'Which ultrasound feature of a thyroid nodule is MOST suspicious for malignancy?',
'Purely cystic nodule', 'Microcalcifications', 'Well-defined margins', 'Hyperechoic appearance', NULL,
'B', 'Microcalcifications (psammoma bodies) are highly suspicious for papillary thyroid carcinoma. Other suspicious features: hypoechoic, taller-than-wide shape, irregular margins, extrathyroidal extension, abnormal cervical lymph nodes. Purely cystic nodules are almost always benign. TI-RADS scoring combines features to risk-stratify nodules for FNAC.', 'easy'),

('e0000307-0003-0000-0000-000000000003', 'd0000307-0000-0000-0000-000000000007', 3,
'The Bethesda System for thyroid cytopathology categorizes FNAC results. Category III (Atypia of Undetermined Significance) has a malignancy risk of approximately:',
'1-4%', '10-30%', '60-75%', '97-99%', NULL,
'B', 'Bethesda categories and malignancy risk: I (Non-diagnostic) 1-4%, II (Benign) 0-3%, III (AUS/FLUS) 10-30%, IV (Follicular Neoplasm) 25-40%, V (Suspicious for Malignancy) 50-75%, VI (Malignant) 97-99%. Category III typically requires repeat FNAC or molecular testing. Category IV requires diagnostic lobectomy because FNAC cannot distinguish follicular adenoma from carcinoma.', 'medium'),

('e0000307-0004-0000-0000-000000000004', 'd0000307-0000-0000-0000-000000000007', 4,
'The most common type of thyroid cancer is:',
'Follicular carcinoma', 'Papillary carcinoma', 'Medullary carcinoma', 'Anaplastic carcinoma', NULL,
'B', 'Papillary thyroid carcinoma (PTC) is the most common (80-85%). It has excellent prognosis (10-year survival >95%), spreads via lymphatics to cervical nodes (30-40% at presentation, but this does not worsen prognosis significantly). Histology shows psammoma bodies, ground-glass (Orphan Annie) nuclei, and nuclear grooves. Follicular (10-15%), Medullary (3-5%), Anaplastic (<2%) are less common.', 'easy'),

('e0000307-0005-0000-0000-000000000005', 'd0000307-0000-0000-0000-000000000007', 5,
'Medullary thyroid carcinoma arises from:',
'Follicular cells', 'Parafollicular C cells', 'Thyroid stromal cells', 'Parathyroid cells', NULL,
'B', 'Medullary thyroid carcinoma (MTC) arises from parafollicular C cells that produce calcitonin. Calcitonin and CEA are tumor markers. 25% are hereditary (MEN 2A, MEN 2B, familial MTC) with RET proto-oncogene mutations. Screen family members with RET testing. Prophylactic thyroidectomy is offered for RET mutation carriers. Treatment is total thyroidectomy with central neck dissection.', 'easy'),

('e0000307-0006-0000-0000-000000000006', 'd0000307-0000-0000-0000-000000000007', 6,
'During thyroidectomy, the recurrent laryngeal nerve is at risk of injury. Unilateral injury results in:',
'Complete aphonia', 'Hoarseness due to vocal cord paralysis', 'Stridor requiring tracheostomy', 'Hypocalcemia', NULL,
'B', 'Unilateral recurrent laryngeal nerve (RLN) injury causes ipsilateral vocal cord paralysis resulting in hoarseness and weak voice. Bilateral RLN injury causes bilateral vocal cord paralysis in adduction, leading to stridor and potential airway obstruction requiring reintubation or tracheostomy. The RLN runs in the tracheoesophageal groove and should be identified to prevent injury. Intraoperative nerve monitoring helps but does not replace careful dissection.', 'easy'),

('e0000307-0007-0000-0000-000000000007', 'd0000307-0000-0000-0000-000000000007', 7,
'Post-thyroidectomy hypocalcemia is caused by:',
'Damage to the thyroid gland itself', 'Injury or devascularization of the parathyroid glands', 'Iodine deficiency', 'Excessive thyroxine production', NULL,
'B', 'Hypocalcemia after thyroidectomy results from parathyroid gland injury or devascularization (parathyroids receive blood from inferior thyroid artery). Transient hypocalcemia occurs in 20-30% after total thyroidectomy; permanent in 1-2%. Symptoms: perioral numbness, Chvostek and Trousseau signs, tetany. Monitor calcium postoperatively; treat with calcium and vitamin D supplementation.', 'easy'),

('e0000307-0008-0000-0000-000000000008', 'd0000307-0000-0000-0000-000000000007', 8,
'Anaplastic thyroid carcinoma is characterized by:',
'Excellent prognosis with radioactive iodine', 'Rapid progression with very poor prognosis', 'Origin from C cells', 'Elevated calcitonin levels', NULL,
'B', 'Anaplastic (undifferentiated) thyroid carcinoma is the most aggressive thyroid cancer with median survival of 3-6 months. It presents with rapidly enlarging neck mass, often with local invasion (dysphagia, stridor, hoarseness). It does not take up radioactive iodine. Treatment includes surgery (if resectable), external beam radiation, and chemotherapy. May arise from dedifferentiation of papillary or follicular carcinoma.', 'medium'),

('e0000307-0009-0000-0000-000000000009', 'd0000307-0000-0000-0000-000000000007', 9,
'A patient with MEN 2A syndrome (multiple endocrine neoplasia) will have medullary thyroid carcinoma associated with:',
'Pituitary adenoma and pancreatic tumors', 'Pheochromocytoma and hyperparathyroidism', 'Parathyroid carcinoma and insulinoma', 'Adrenal insufficiency and diabetes', NULL,
'B', 'MEN 2A (Sipple syndrome) includes medullary thyroid carcinoma (100%), pheochromocytoma (50%), and hyperparathyroidism (20-30%). MEN 2B includes MTC, pheochromocytoma, marfanoid habitus, and mucosal neuromas (but no hyperparathyroidism). Both are caused by RET mutations. Screen for pheochromocytoma before thyroidectomy to prevent hypertensive crisis during surgery.', 'medium'),

('e0000307-0010-0000-0000-000000000010', 'd0000307-0000-0000-0000-000000000007', 10,
'Radioactive iodine (I-131) ablation after thyroidectomy is used for:',
'All thyroid cancers', 'Differentiated thyroid cancers (papillary and follicular) with higher risk features', 'Medullary thyroid carcinoma', 'Anaplastic thyroid carcinoma', NULL,
'B', 'Radioactive iodine is used for differentiated thyroid cancers (papillary and follicular) that take up iodine. Indications include intermediate/high-risk tumors, residual disease, distant metastases. TSH stimulation (withdrawal or recombinant TSH) is required for uptake. Medullary and anaplastic cancers do not concentrate iodine and are not treated with RAI. Low-risk papillary microcarcinomas may not need RAI.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 7 (Thyroid Disease) with 10 self-assessment questions inserted' as status;
