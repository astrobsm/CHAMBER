-- CME Article 37: Soft Tissue Sarcoma - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040037-0000-0000-0000-000000000037', 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004', 'Soft Tissue Sarcomas', 'Diagnosis and Surgical Principles', 'Overview of soft tissue sarcomas covering classification, presentation, diagnosis, and surgical management.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040037-0000-0000-0000-000000000037', 'introduction', 1, 'Introduction', 'Soft tissue sarcomas: rare malignancies of mesenchymal origin. Comprise <1% of adult cancers. >50 histologic subtypes. Most common: undifferentiated pleomorphic sarcoma, liposarcoma, leiomyosarcoma. Extremities most common site.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040037-0000-0000-0000-000000000037', 'learning_objectives', 2, 'Learning Objectives', '1. Know sarcoma subtypes\n2. Recognize suspicious masses\n3. Understand biopsy principles\n4. Plan surgical margins\n5. Know role of radiation\n6. Understand metastatic patterns\n7. Recognize GIST');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040037-0000-0000-0000-000000000037', 'content', 3, 'Presentation', 'Painless, enlarging mass most common. Warning signs: >5cm, deep to fascia, growing. Any mass meeting these criteria needs workup. Retroperitoneal: large at diagnosis, abdominal symptoms. GIST: GI bleeding, obstruction.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040037-0000-0000-0000-000000000037', 'content', 4, 'Diagnosis', 'MRI: best for extremity. CT: retroperitoneal. Biopsy: core needle preferred, along planned excision path. Staging: CT chest for lung metastases. Grading based on differentiation, necrosis, mitotic rate.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040037-0000-0000-0000-000000000037', 'content', 5, 'Treatment', 'Surgery: wide local excision with negative margins (R0). Limb-sparing preferred. Radiation: adjuvant for high-grade, close margins. Chemotherapy: limited role except specific subtypes. GIST: imatinib (tyrosine kinase inhibitor).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040037-0000-0000-0000-000000000037', 'key_points', 6, 'Key Points', 'Any mass >5cm, deep, growing needs workup. MRI for extremity imaging. Core biopsy preferred. Wide excision is standard. Lung is main metastatic site. GIST responds to imatinib.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040037-0000-0000-0000-000000000037', 1, 'Warning sign for sarcoma in mass:', 'Painful', 'Superficial', 'Less than 2cm', 'Greater than 5cm', 'Stable size', 'D', 'Mass >5cm, deep, growing suggests sarcoma'),
('d0040037-0000-0000-0000-000000000037', 2, 'Best imaging for extremity sarcoma:', 'X-ray', 'CT', 'MRI', 'Ultrasound', 'PET', 'C', 'MRI is best for extremity soft tissue tumors'),
('d0040037-0000-0000-0000-000000000037', 3, 'Main metastatic site for soft tissue sarcoma:', 'Liver', 'Brain', 'Lung', 'Bone', 'Lymph nodes', 'C', 'Lung is main site for sarcoma metastasis'),
('d0040037-0000-0000-0000-000000000037', 4, 'GIST treatment includes:', 'Radiation only', 'Imatinib', 'Hormonal therapy', 'Chemotherapy only', 'Observation', 'B', 'Imatinib is targeted therapy for GIST'),
('d0040037-0000-0000-0000-000000000037', 5, 'Preferred biopsy method for sarcoma:', 'Excisional', 'Core needle', 'Shave', 'FNA', 'Open incisional', 'B', 'Core needle biopsy is preferred');
