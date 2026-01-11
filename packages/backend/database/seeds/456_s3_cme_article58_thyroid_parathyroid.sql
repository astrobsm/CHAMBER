-- ============================================================================
-- SURGERY 3 CME ARTICLE 58: Thyroid and Parathyroid Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000124-0000-0000-0000-000000000124', 'a0000003-0000-0000-0000-000000000003', 'Thyroid and Parathyroid Surgery', 'Endocrine neck surgery management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000358-0000-0000-0000-000000000058',
    'c0000124-0000-0000-0000-000000000124',
    'a0000003-0000-0000-0000-000000000003',
    'Thyroid and Parathyroid Surgery: Comprehensive Guide',
    'Indications, Techniques, and Complications',
    'This article covers thyroid and parathyroid surgery including evaluation of thyroid nodules, thyroid cancer types, surgical indications, operative techniques, and management of complications including hypocalcemia and recurrent laryngeal nerve injury.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000358-0001-0000-0000-000000000001', 'd0000358-0000-0000-0000-000000000058', 1,
'Thyroid nodule evaluation with fine-needle aspiration (FNA) is indicated for:',
'All nodules regardless of size', 'Nodules greater than 1cm with suspicious ultrasound features, or smaller nodules with highly suspicious features', 'Only palpable nodules', 'Nodules with benign appearance only', NULL,
'B', 'Thyroid nodule FNA indications: based on US features and size. High suspicion (microcalcifications, taller-than-wide, irregular margins, hypoechoic): FNA if >1cm. Intermediate suspicion: FNA if >1cm. Low suspicion (isoechoic, hyperechoic): FNA if >1.5-2cm. Very low suspicion (spongiform/cystic): FNA if >2cm or observe. Features prompting FNA of smaller nodules: lymphadenopathy, extrathyroidal extension, associated symptoms. Bethesda system classifies cytology: I (non-diagnostic), II (benign), III (AUS/FLUS), IV (follicular neoplasm), V (suspicious for malignancy), VI (malignant).', 'medium'),

('e0000358-0002-0000-0000-000000000002', 'd0000358-0000-0000-0000-000000000058', 2,
'Recurrent laryngeal nerve:',
'Can be sacrificed without consequence', 'Is at risk during thyroid surgery, lies in the tracheoesophageal groove, and injury causes vocal cord paralysis', 'Is not near the thyroid', 'Has no anatomical variations', NULL,
'B', 'Recurrent laryngeal nerve (RLN): critical structure in thyroid surgery. Anatomy: lies in or near tracheoesophageal groove, enters larynx behind cricothyroid joint, innervates all intrinsic laryngeal muscles except cricothyroid. Right RLN loops around subclavian artery (more lateral course, shorter); Left RLN loops around aortic arch (more medial). Non-recurrent RLN (right side only, 0.5-1%): associated with aberrant subclavian artery. Injury: unilateral = hoarseness; bilateral = airway obstruction (may need tracheostomy). Prevention: identify and protect RLN during surgery, neuromonitoring may help.', 'easy'),

('e0000358-0003-0000-0000-000000000003', 'd0000358-0000-0000-0000-000000000058', 3,
'Post-thyroidectomy hypocalcemia is caused by:',
'Thyroid hormone deficiency', 'Parathyroid gland injury or devascularization leading to hypoparathyroidism', 'Excessive calcium intake', 'Normal finding not requiring treatment', NULL,
'B', 'Post-thyroidectomy hypocalcemia: due to parathyroid gland injury, removal, or devascularization. Parathyroid glands (usually 4) receive blood supply from inferior thyroid artery. Risk: total thyroidectomy > hemithyroidectomy, central neck dissection, reoperative surgery. Presentation: perioral numbness/tingling, paresthesias, muscle cramps/spasms, tetany. Signs: Chvostek (facial twitch with cheek tap), Trousseau (carpal spasm with BP cuff). Management: oral calcium +/- calcitriol; IV calcium gluconate if severe/symptomatic. Transient hypocalcemia common; permanent (<1%) if parathyroids devascularized/removed.', 'easy'),

('e0000358-0004-0000-0000-000000000004', 'd0000358-0000-0000-0000-000000000058', 4,
'Medullary thyroid cancer:',
'Arises from follicular cells', 'Arises from parafollicular C cells, secretes calcitonin, and is associated with MEN2 syndromes', 'Is the most common thyroid cancer', 'Never has familial forms', NULL,
'B', 'Medullary thyroid carcinoma (MTC): arises from parafollicular C cells (neuroendocrine origin). Secretes calcitonin (tumor marker). Represents 3-5% of thyroid cancers. Forms: sporadic (75%), hereditary (25% - MEN2A, MEN2B, familial MTC). MEN2A: MTC + pheochromocytoma + hyperparathyroidism; MEN2B: MTC + pheochromocytoma + mucosal neuromas + marfanoid habitus. RET proto-oncogene mutations. Screening: serum calcitonin, genetic testing. Treatment: total thyroidectomy + central neck dissection. Does not concentrate iodine (no RAI therapy). Prognosis intermediate.', 'medium'),

('e0000358-0005-0000-0000-000000000005', 'd0000358-0000-0000-0000-000000000058', 5,
'Primary hyperparathyroidism is most commonly caused by:',
'Parathyroid carcinoma', 'Single parathyroid adenoma (80-85% of cases)', 'Four-gland hyperplasia', 'Vitamin D toxicity', NULL,
'B', 'Primary hyperparathyroidism causes: Single parathyroid adenoma (80-85%, most common), Four-gland hyperplasia (10-15%, associated with MEN syndromes), Double adenoma (2-5%), Parathyroid carcinoma (<1%, rare). Presentation: hypercalcemia with elevated or inappropriately normal PTH. Symptoms: "bones, stones, groans, and psychiatric moans" - osteoporosis, kidney stones, abdominal pain/constipation, depression/confusion. Many asymptomatic (detected on routine labs). Treatment: surgical parathyroidectomy (minimally invasive for localized adenoma, bilateral exploration for hyperplasia or non-localized).', 'easy'),

('e0000358-0006-0000-0000-000000000006', 'd0000358-0000-0000-0000-000000000058', 6,
'Preoperative localization for parathyroidectomy includes:',
'No imaging needed', 'Sestamibi scan and ultrasound to identify adenoma location, enabling focused exploration', 'Only CT scan', 'Only MRI', NULL,
'B', 'Parathyroid localization studies: (1) Sestamibi (Tc-99m-MIBI) scan: most common, parathyroid adenoma shows delayed washout compared to thyroid. Sensitivity 80-90% for adenoma. (2) Ultrasound: operator-dependent, identifies 60-80%, cannot see ectopic glands. (3) 4D-CT: increasingly used, high sensitivity. (4) Sestamibi-SPECT/CT: combines functional and anatomical imaging. Purpose: enable focused (minimally invasive) parathyroidectomy for localized adenoma. If non-localizing or hyperplasia suspected: bilateral neck exploration with identification of all 4 glands. Intraoperative PTH confirms successful excision.', 'medium'),

('e0000358-0007-0000-0000-000000000007', 'd0000358-0000-0000-0000-000000000058', 7,
'Thyroid storm is characterized by:',
'Only mild symptoms', 'Severe thyrotoxicosis with fever, tachycardia, altered mental status, and cardiovascular instability requiring emergency treatment', 'Normal thyroid function tests', 'Only treated with surgery', NULL,
'B', 'Thyroid storm (thyrotoxic crisis): life-threatening exacerbation of hyperthyroidism. Precipitants: surgery (especially thyroid surgery in uncontrolled hyperthyroidism), infection, trauma, iodine load. Features: high fever (>40C), severe tachycardia/AF, CHF, altered mental status, GI symptoms (diarrhea, vomiting), multi-organ failure. Burch-Wartofsky score aids diagnosis. Treatment: (1) Beta-blockers (propranolol - also blocks T4→T3 conversion); (2) PTU or methimazole (block hormone synthesis); (3) Iodine (after thionamide - blocks release); (4) Corticosteroids (block conversion, adrenal support); (5) Supportive care, cooling. High mortality if untreated.', 'hard'),

('e0000358-0008-0000-0000-000000000008', 'd0000358-0000-0000-0000-000000000058', 8,
'Radioactive iodine (RAI) ablation after thyroidectomy for differentiated thyroid cancer:',
'Is needed for all patients', 'Is used for intermediate and high-risk patients to ablate remnant thyroid tissue and treat residual/metastatic disease', 'Is contraindicated in thyroid cancer', 'Has no role post-surgery', NULL,
'B', 'RAI (I-131) ablation in differentiated thyroid cancer (papillary, follicular): Goals: (1) Ablate normal thyroid remnant; (2) Treat residual microscopic disease; (3) Treat distant metastases; (4) Enable thyroglobulin monitoring. Indications (risk-stratified): LOW risk (small papillary, confined to thyroid): may not need RAI; INTERMEDIATE risk: RAI ablation recommended; HIGH risk (gross extrathyroidal extension, distant metastases): RAI therapy. Preparation: thyroid hormone withdrawal or recombinant TSH to elevate TSH. Not used for medullary or anaplastic (do not concentrate iodine).', 'medium'),

('e0000358-0009-0000-0000-000000000009', 'd0000358-0000-0000-0000-000000000058', 9,
'Indications for total thyroidectomy include all EXCEPT:',
'Papillary thyroid cancer greater than 4cm', 'Confirmed small solitary benign nodule in an otherwise normal thyroid', 'Graves disease (medical therapy failed or contraindicated)', 'Bilateral multinodular goiter with compressive symptoms', NULL,
'B', 'Total thyroidectomy indications: (1) Thyroid cancer - most differentiated cancers >1cm, all medullary/anaplastic; (2) Bilateral multinodular goiter with compressive symptoms; (3) Graves disease (surgery option after medical failure, patient preference, large goiter); (4) Suspicious/indeterminate nodules bilaterally. LOBECTOMY (hemithyroidectomy) indications: small (<1cm) low-risk papillary cancer, unilateral benign nodule requiring surgery, diagnostic for indeterminate FNA (Bethesda III-IV). Small benign nodule in otherwise normal thyroid: observation or lobectomy if surgery indicated, not total thyroidectomy.', 'easy'),

('e0000358-0010-0000-0000-000000000010', 'd0000358-0000-0000-0000-000000000058', 10,
'Hungry bone syndrome after parathyroidectomy:',
'Is a minor issue', 'Is severe prolonged hypocalcemia due to rapid bone uptake of calcium, more common after surgery for severe hyperparathyroidism', 'Causes hypercalcemia', 'Requires no treatment', NULL,
'B', 'Hungry bone syndrome: severe, prolonged hypocalcemia following parathyroidectomy due to rapid calcium deposition into bone. Occurs when chronic PTH excess has caused significant bone resorption; after PTH removal, bones aggressively remineralize, consuming calcium, phosphorus, magnesium. Risk factors: high preoperative PTH, large adenoma, significant bone disease, elevated ALP (bone turnover marker). Presentation: hypocalcemia, hypophosphatemia, hypomagnesemia lasting weeks to months. Treatment: aggressive calcium (oral +/- IV), calcitriol, magnesium replacement. May require prolonged supplementation.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 58 (Thyroid and Parathyroid Surgery) with 10 self-assessment questions inserted' as status;
