-- CME Article 11: Thyroid Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040011-0000-0000-0000-000000000011', 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004', 'Thyroid Cancer: Surgical Management', 'Evaluation, Classification, and Operative Approach', 'Review of thyroid cancer types, diagnostic workup, and surgical management including extent of thyroidectomy and lymph node dissection.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040011-0000-0000-0000-000000000011', 'introduction', 1, 'Introduction', 'Thyroid cancer most common endocrine malignancy. Types: papillary (80%, best prognosis), follicular (10%), medullary (5%, from C-cells, MEN2), anaplastic (1%, worst prognosis). Risk factors: radiation exposure, family history, iodine deficiency.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040011-0000-0000-0000-000000000011', 'learning_objectives', 2, 'Learning Objectives', '1. Classify thyroid cancer types\n2. Evaluate thyroid nodules\n3. Apply Bethesda system\n4. Determine extent of surgery\n5. Manage lymph nodes\n6. Understand RAI therapy\n7. Monitor for recurrence');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040011-0000-0000-0000-000000000011', 'content', 3, 'Nodule Evaluation', 'TSH first, then ultrasound. Suspicious features: hypoechoic, irregular margins, microcalcifications, taller-than-wide. FNA based on size and US features. Bethesda: I nondiagnostic, II benign, III atypia, IV follicular neoplasm, V suspicious, VI malignant.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040011-0000-0000-0000-000000000011', 'content', 4, 'Surgical Management', 'Lobectomy: low-risk differentiated cancer <4cm without extrathyroidal extension. Total thyroidectomy: >4cm, bilateral disease, extrathyroidal extension, planned RAI. Central neck dissection for clinically positive nodes. Lateral neck dissection if metastatic.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040011-0000-0000-0000-000000000011', 'content', 5, 'Complications and Follow-up', 'Complications: RLN injury (1-2%), hypoparathyroidism (1-2%), bleeding/hematoma. RAI for high-risk differentiated cancer. TSH suppression with levothyroxine. Monitor with thyroglobulin, ultrasound. Medullary: monitor calcitonin, CEA.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040011-0000-0000-0000-000000000011', 'key_points', 6, 'Key Points', 'Papillary most common, best prognosis. FNA for nodule diagnosis. Bethesda guides management. Lobectomy for low-risk <4cm. Total thyroidectomy for high-risk. Monitor thyroglobulin post-operatively.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040011-0000-0000-0000-000000000011', 1, 'Most common type of thyroid cancer:', 'Follicular', 'Papillary', 'Medullary', 'Anaplastic', 'Lymphoma', 'B', 'Papillary carcinoma is most common (80%)'),
('d0040011-0000-0000-0000-000000000011', 2, 'Bethesda category VI indicates:', 'Benign', 'Atypia', 'Follicular neoplasm', 'Suspicious', 'Malignant', 'E', 'Bethesda VI = malignant'),
('d0040011-0000-0000-0000-000000000011', 3, 'Medullary thyroid cancer arises from:', 'Follicular cells', 'C-cells', 'Thyroglobulin', 'TSH receptors', 'Parathyroid cells', 'B', 'Medullary cancer arises from C-cells (calcitonin-producing)'),
('d0040011-0000-0000-0000-000000000011', 4, 'Marker for monitoring differentiated thyroid cancer:', 'Calcitonin', 'CEA', 'Thyroglobulin', 'TSH', 'T4', 'C', 'Thyroglobulin monitors differentiated thyroid cancer'),
('d0040011-0000-0000-0000-000000000011', 5, 'Worst prognosis thyroid cancer:', 'Papillary', 'Follicular', 'Medullary', 'Anaplastic', 'Hurthle cell', 'D', 'Anaplastic has worst prognosis (aggressive, undifferentiated)');
