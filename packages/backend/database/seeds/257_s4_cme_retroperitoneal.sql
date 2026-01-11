-- CME Article 57: Retroperitoneal Tumors - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040057-0000-0000-0000-000000000057', 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004', 'Retroperitoneal Tumors', 'Diagnosis and Surgical Approach', 'Review of primary retroperitoneal tumors covering presentation, imaging, and surgical resection.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040057-0000-0000-0000-000000000057', 'introduction', 1, 'Introduction', 'Primary retroperitoneal tumors: rare, often large at diagnosis. Most are malignant (80%). Sarcomas most common. Other: lymphoma, germ cell tumors, neurogenic tumors. Space allows growth before symptoms.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040057-0000-0000-0000-000000000057', 'learning_objectives', 2, 'Learning Objectives', '1. Know retroperitoneal anatomy\n2. Recognize common tumor types\n3. Interpret imaging\n4. Plan surgical resection\n5. Manage adjacent organ involvement\n6. Understand prognosis\n7. Know adjuvant therapy role');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040057-0000-0000-0000-000000000057', 'content', 3, 'Presentation', 'Vague abdominal symptoms, palpable mass, back pain. Often incidental on imaging. Large size common (>10cm). Compression symptoms: venous obstruction, ureteral obstruction. Constitutional symptoms if malignant.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040057-0000-0000-0000-000000000057', 'content', 4, 'Diagnosis', 'CT: primary imaging, defines extent. MRI: vascular involvement. Biopsy: often not needed before surgery unless lymphoma suspected. Markers: AFP, HCG for germ cell. Staging CT chest.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040057-0000-0000-0000-000000000057', 'content', 5, 'Treatment', 'Complete surgical resection: only chance for cure. May require en-bloc organ resection. Margins important but challenging. Liposarcoma most common sarcoma type. Radiation: limited role. Chemotherapy: for germ cell, lymphoma.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040057-0000-0000-0000-000000000057', 'key_points', 6, 'Key Points', 'Most are malignant. Large at presentation. Complete resection is goal. Liposarcoma most common sarcoma. Biopsy if lymphoma suspected. Prognosis depends on complete resection.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040057-0000-0000-0000-000000000057', 1, 'Percentage of retroperitoneal tumors that are malignant:', '20%', '40%', '60%', '80%', '100%', 'D', 'About 80% are malignant'),
('d0040057-0000-0000-0000-000000000057', 2, 'Most common retroperitoneal sarcoma:', 'Leiomyosarcoma', 'Liposarcoma', 'Fibrosarcoma', 'Rhabdomyosarcoma', 'Angiosarcoma', 'B', 'Liposarcoma is most common'),
('d0040057-0000-0000-0000-000000000057', 3, 'Biopsy before surgery is needed for:', 'All tumors', 'Suspected lymphoma', 'Never needed', 'Sarcomas only', 'Small tumors', 'B', 'Biopsy if lymphoma suspected as chemo is primary'),
('d0040057-0000-0000-0000-000000000057', 4, 'Key to prognosis:', 'Tumor size', 'Complete surgical resection', 'Chemotherapy', 'Radiation', 'Age', 'B', 'Complete resection is key prognostic factor'),
('d0040057-0000-0000-0000-000000000057', 5, 'Retroperitoneal tumors are often large because:', 'Rapid growth', 'Space allows growth', 'Hormone effects', 'Blood supply', 'Age of patients', 'B', 'Retroperitoneal space allows growth before symptoms');
