-- CME Article 48: Parathyroid Disorders - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040048-0000-0000-0000-000000000048', 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004', 'Primary Hyperparathyroidism', 'Diagnosis and Surgical Treatment', 'Review of primary hyperparathyroidism covering diagnosis, localization, and parathyroidectomy.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040048-0000-0000-0000-000000000048', 'introduction', 1, 'Introduction', 'Primary hyperparathyroidism: excessive PTH from parathyroid glands. Causes: adenoma (85%), hyperplasia (10%), carcinoma (1%). Most common: asymptomatic hypercalcemia. Classic symptoms: bones, stones, groans, moans.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040048-0000-0000-0000-000000000048', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize hypercalcemia symptoms\n2. Diagnose primary hyperparathyroidism\n3. Differentiate from other causes\n4. Know indications for surgery\n5. Localize parathyroid\n6. Perform parathyroidectomy\n7. Manage complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040048-0000-0000-0000-000000000048', 'content', 3, 'Diagnosis', 'Lab: elevated calcium with elevated or inappropriately normal PTH. 24-hour urine calcium to exclude FHH. Vitamin D level. Bones, stones (renal), groans (abdominal), moans (psychiatric). Most discovered incidentally.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040048-0000-0000-0000-000000000048', 'content', 4, 'Localization', 'Sestamibi scan: most common, identifies adenoma. Ultrasound: operator-dependent. 4D-CT: excellent localization. Not needed before initial surgery by experienced surgeon. Localization before re-operation essential.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040048-0000-0000-0000-000000000048', 'content', 5, 'Surgical Treatment', 'Indications: symptomatic, Ca >1mg/dL above normal, osteoporosis, renal impairment, age <50. Focused parathyroidectomy with intraoperative PTH (drop >50%). Bilateral exploration if hyperplasia. Hungry bone syndrome post-op.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040048-0000-0000-0000-000000000048', 'key_points', 6, 'Key Points', 'Adenoma in 85% of cases. Elevated Ca with elevated PTH diagnostic. Bones, stones, groans, moans. Sestamibi for localization. Intraoperative PTH confirms cure. Watch for hungry bone post-op.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040048-0000-0000-0000-000000000048', 1, 'Most common cause of primary hyperparathyroidism:', 'Hyperplasia', 'Adenoma', 'Carcinoma', 'Secondary', 'MEN syndrome', 'B', 'Single adenoma causes 85% of cases'),
('d0040048-0000-0000-0000-000000000048', 2, 'Bones, stones, groans, moans refers to:', 'Thyroid disease', 'Hyperparathyroidism', 'Hyperthyroidism', 'Adrenal disease', 'Pituitary disease', 'B', 'Classic symptoms of hyperparathyroidism'),
('d0040048-0000-0000-0000-000000000048', 3, 'Hungry bone syndrome is:', 'Hypercalcemia', 'Hypocalcemia post-op', 'Hyperkalemia', 'Hypophosphatemia', 'Hypermagnesemia', 'B', 'Calcium drops as bones uptake calcium'),
('d0040048-0000-0000-0000-000000000048', 4, 'Intraoperative PTH drop for cure:', '>25%', '>50%', '>75%', '>90%', 'Any drop', 'B', '>50% drop in PTH indicates successful removal'),
('d0040048-0000-0000-0000-000000000048', 5, 'Most common localization study:', 'CT', 'MRI', 'Sestamibi', 'PET', 'X-ray', 'C', 'Sestamibi scan is standard for localization');
