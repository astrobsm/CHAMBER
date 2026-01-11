-- CME Article 13: Lung Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040013-0000-0000-0000-000000000013', 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004', 'Lung Cancer: Surgical Principles', 'Diagnosis, Staging, and Resection', 'Review of lung cancer covering types, staging, preoperative evaluation, and surgical resection options.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040013-0000-0000-0000-000000000013', 'introduction', 1, 'Introduction', 'Lung cancer leading cause of cancer death. Types: NSCLC (85%) - adenocarcinoma, squamous, large cell; SCLC (15%). Risk factors: smoking (strongest), radon, asbestos, family history. Low-dose CT screening for high-risk.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040013-0000-0000-0000-000000000013', 'learning_objectives', 2, 'Learning Objectives', '1. Classify lung cancer types\n2. Apply TNM staging\n3. Evaluate surgical candidacy\n4. Determine resection extent\n5. Perform mediastinal staging\n6. Understand adjuvant therapy\n7. Manage complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040013-0000-0000-0000-000000000013', 'content', 3, 'Staging', 'TNM: T1 ≤3cm, T2 >3-5cm, T3 >5-7cm, T4 >7cm or invasion. N1 hilar, N2 ipsilateral mediastinal, N3 contralateral. PET-CT for staging. Mediastinal staging: EBUS-TBNA, mediastinoscopy. Brain MRI if symptoms or stage III.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040013-0000-0000-0000-000000000013', 'content', 4, 'Surgical Candidacy', 'Pulmonary function: FEV1, DLCO >40% predicted. Predicted postoperative FEV1 >800mL. Cardiac evaluation if risk factors. Performance status. Surgery for Stage I-II, select Stage IIIA. Induction chemo for N2 disease.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040013-0000-0000-0000-000000000013', 'content', 5, 'Surgical Options', 'Lobectomy: standard for operable NSCLC. Pneumonectomy: central tumors, mortality 5-8%. Segmentectomy/wedge: for poor pulmonary function, small peripheral tumors. VATS/RATS preferred approach. Lymph node dissection required.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040013-0000-0000-0000-000000000013', 'key_points', 6, 'Key Points', 'NSCLC 85%, SCLC 15%. PET-CT for staging. Mediastinal staging for N2 disease. Lobectomy is standard resection. FEV1 and DLCO for operability. Adjuvant chemo for stage II-III.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040013-0000-0000-0000-000000000013', 1, 'Most common type of lung cancer:', 'SCLC', 'Adenocarcinoma', 'Squamous cell', 'Large cell', 'Carcinoid', 'B', 'Adenocarcinoma is most common lung cancer'),
('d0040013-0000-0000-0000-000000000013', 2, 'Standard surgical resection for operable NSCLC:', 'Wedge resection', 'Segmentectomy', 'Lobectomy', 'Pneumonectomy', 'Sleeve resection', 'C', 'Lobectomy is standard surgical resection'),
('d0040013-0000-0000-0000-000000000013', 3, 'N2 disease indicates:', 'Hilar nodes', 'Ipsilateral mediastinal nodes', 'Contralateral mediastinal nodes', 'Supraclavicular nodes', 'No nodal involvement', 'B', 'N2 = ipsilateral mediastinal nodes'),
('d0040013-0000-0000-0000-000000000013', 4, 'Minimum predicted postoperative FEV1 for resection:', '400 mL', '600 mL', '800 mL', '1000 mL', '1500 mL', 'C', 'Predicted postop FEV1 should be >800mL'),
('d0040013-0000-0000-0000-000000000013', 5, 'Imaging for lung cancer staging:', 'Chest X-ray', 'CT chest', 'PET-CT', 'MRI chest', 'Ultrasound', 'C', 'PET-CT is standard for lung cancer staging');
