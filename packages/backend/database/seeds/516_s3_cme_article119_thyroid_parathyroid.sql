-- CME Article 119: Surgical Management of Thyroid and Parathyroid Disease
-- Surgery 3 Rotation

-- Create topic for this article
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES (
  'c0000184-0000-0000-0000-000000000184',
  'Thyroid and Parathyroid Surgery',
  'a0000003-0000-0000-0000-000000000003',
  'Surgical management of thyroid and parathyroid disorders',
  184,
  true
) ON CONFLICT (id) DO NOTHING;

-- Create CME article
INSERT INTO cme_articles (
  id, topic_id, category_id, title, subtitle, abstract, authors,
  cme_credits, estimated_reading_minutes, difficulty_level,
  version, is_published, publish_date, keywords, cover_image_url
)
VALUES (
  'd0000419-0000-0000-0000-000000000119',
  'c0000184-0000-0000-0000-000000000184',
  'a0000003-0000-0000-0000-000000000003',
  'Thyroid and Parathyroid Surgery: Indications, Techniques, and Complications',
  'Comprehensive guide to endocrine neck surgery',
  'Thyroid and parathyroid surgery requires meticulous technique and understanding of complex regional anatomy. This article reviews the evaluation of thyroid nodules including fine-needle aspiration cytology and molecular testing. Indications for thyroidectomy (total vs lobectomy) in benign and malignant disease are discussed. For parathyroid disease, we cover the diagnosis of primary hyperparathyroidism and surgical approaches including focused parathyroidectomy and four-gland exploration. Complications including recurrent laryngeal nerve injury, hypocalcemia, and hematoma are addressed with prevention and management strategies.',
  'Department of Endocrine Surgery',
  1.0,
  30,
  'medium',
  1,
  true,
  CURRENT_DATE,
  ARRAY['thyroidectomy', 'parathyroidectomy', 'thyroid cancer', 'hyperparathyroidism', 'RLN'],
  NULL
) ON CONFLICT (id) DO NOTHING;

-- Self-assessment questions for Article 119
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES
('e1190001-0000-0000-0000-000000000001', 'd0000419-0000-0000-0000-000000000119', 1,
 'A thyroid nodule with which Bethesda category on FNA requires diagnostic lobectomy?',
 'Bethesda I - Nondiagnostic', 'Bethesda II - Benign', 'Bethesda IV - Follicular neoplasm', 'Bethesda VI - Malignant',
 'C', 'Bethesda IV (follicular neoplasm or suspicious for follicular neoplasm) typically requires diagnostic lobectomy as FNA cannot distinguish follicular adenoma from carcinoma (requires capsular/vascular invasion assessment).', 'medium'),
('e1190002-0000-0000-0000-000000000002', 'd0000419-0000-0000-0000-000000000119', 2,
 'The most common type of thyroid cancer is:',
 'Follicular thyroid cancer', 'Papillary thyroid cancer', 'Medullary thyroid cancer', 'Anaplastic thyroid cancer',
 'B', 'Papillary thyroid cancer accounts for 80-85% of all thyroid cancers. It has excellent prognosis with 10-year survival >95% and spreads primarily via lymphatics.', 'easy'),
('e1190003-0000-0000-0000-000000000003', 'd0000419-0000-0000-0000-000000000119', 3,
 'Indications for total thyroidectomy rather than lobectomy include all EXCEPT:',
 'Bilateral thyroid nodules', 'Thyroid cancer greater than 4 cm', 'History of neck radiation', 'Solitary 1 cm papillary microcarcinoma',
 'D', 'Low-risk papillary thyroid microcarcinoma (<1 cm) can be managed with lobectomy or even active surveillance. Total thyroidectomy is indicated for larger tumors, bilateral disease, and radiation history.', 'medium'),
('e1190004-0000-0000-0000-000000000004', 'd0000419-0000-0000-0000-000000000119', 4,
 'The recurrent laryngeal nerve:',
 'Runs anterior to the thyroid gland', 'Is at risk during superior pole dissection', 'Innervates all intrinsic laryngeal muscles except cricothyroid', 'Is only at risk during total thyroidectomy',
 'C', 'The RLN innervates all intrinsic laryngeal muscles except the cricothyroid (superior laryngeal nerve). It runs in the tracheoesophageal groove and is at risk during thyroid and parathyroid surgery.', 'medium'),
('e1190005-0000-0000-0000-000000000005', 'd0000419-0000-0000-0000-000000000119', 5,
 'Bilateral RLN injury results in:',
 'Hoarseness only', 'Airway obstruction requiring tracheostomy', 'Aspiration without voice changes', 'No clinical symptoms',
 'B', 'Bilateral RLN injury causes vocal cord adduction (paramedian position) leading to airway obstruction and stridor. This is a surgical emergency often requiring tracheostomy.', 'medium'),
('e1190006-0000-0000-0000-000000000006', 'd0000419-0000-0000-0000-000000000119', 6,
 'Primary hyperparathyroidism is most commonly caused by:',
 'Parathyroid hyperplasia', 'Parathyroid carcinoma', 'Single parathyroid adenoma', 'Ectopic parathyroid tissue',
 'C', 'Single parathyroid adenoma accounts for 80-85% of primary hyperparathyroidism. Multigland hyperplasia causes 10-15%, and carcinoma is rare (<1%).', 'medium'),
('e1190007-0000-0000-0000-000000000007', 'd0000419-0000-0000-0000-000000000119', 7,
 'The biochemical hallmark of primary hyperparathyroidism is:',
 'Low calcium, high PTH', 'High calcium, high PTH', 'High calcium, low PTH', 'Normal calcium, high PTH',
 'B', 'Primary hyperparathyroidism shows hypercalcemia with inappropriately elevated or non-suppressed PTH. In secondary hyperparathyroidism, PTH is elevated with normal/low calcium.', 'easy'),
('e1190008-0000-0000-0000-000000000008', 'd0000419-0000-0000-0000-000000000119', 8,
 'Intraoperative PTH monitoring during parathyroidectomy:',
 'Is not useful in minimally invasive surgery', 'Confirms successful adenoma removal when PTH drops greater than 50%', 'Should show PTH increase after excision', 'Is mandatory in all cases',
 'B', 'A >50% drop in PTH within 10 minutes of adenoma excision (Miami criterion) predicts cure. This allows minimally invasive focused parathyroidectomy when preoperative localization is concordant.', 'medium'),
('e1190009-0000-0000-0000-000000000009', 'd0000419-0000-0000-0000-000000000119', 9,
 'Post-thyroidectomy hypocalcemia is caused by:',
 'Removal of thyroid tissue', 'Injury or devascularization of parathyroid glands', 'Excessive calcium supplementation', 'Persistent hyperparathyroidism',
 'B', 'Hypocalcemia after thyroidectomy results from inadvertent removal, injury, or devascularization of parathyroid glands. It may be transient or permanent and is managed with calcium and vitamin D supplementation.', 'medium'),
('e1190010-0000-0000-0000-000000000010', 'd0000419-0000-0000-0000-000000000119', 10,
 'Which thyroid cancer requires total thyroidectomy with central neck dissection?',
 'Papillary microcarcinoma 0.5 cm', 'Follicular thyroid cancer 2 cm', 'Medullary thyroid cancer', 'Anaplastic thyroid cancer',
 'C', 'Medullary thyroid cancer (from parafollicular C cells) does not respond to RAI and requires total thyroidectomy with at minimum central neck dissection. Calcitonin is the tumor marker.', 'hard')
ON CONFLICT (id) DO NOTHING;
