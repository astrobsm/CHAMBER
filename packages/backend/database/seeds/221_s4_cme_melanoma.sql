-- CME Article 21: Melanoma and Skin Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040021-0000-0000-0000-000000000021', 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004', 'Melanoma: Surgical Management', 'Diagnosis, Staging, and Treatment', 'Review of melanoma covering ABCDE criteria, Breslow depth, sentinel node biopsy, and surgical margins.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040021-0000-0000-0000-000000000021', 'introduction', 1, 'Introduction', 'Melanoma accounts for <5% of skin cancers but majority of skin cancer deaths. Risk factors: UV exposure, fair skin, multiple nevi, family history, immunosuppression. Incidence rising. Early detection critical for survival.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040021-0000-0000-0000-000000000021', 'learning_objectives', 2, 'Learning Objectives', '1. Apply ABCDE criteria\n2. Understand Breslow depth\n3. Determine surgical margins\n4. Apply sentinel node biopsy\n5. Stage melanoma\n6. Understand adjuvant therapy\n7. Perform surveillance');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040021-0000-0000-0000-000000000021', 'content', 3, 'Diagnosis', 'ABCDE: Asymmetry, Border irregularity, Color variation, Diameter >6mm, Evolution. Excisional biopsy preferred (1-3mm margins). Never shave suspected melanoma. Breslow depth most important prognostic factor. Clark levels less used now.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040021-0000-0000-0000-000000000021', 'content', 4, 'Surgical Management', 'Wide local excision margins: in situ 0.5-1cm, <1mm 1cm, 1-2mm 1-2cm, >2mm 2cm. Sentinel lymph node biopsy for >0.8mm depth or ulcerated. Completion lymphadenectomy if positive (controversial). No role for elective node dissection.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040021-0000-0000-0000-000000000021', 'content', 5, 'Adjuvant Therapy', 'Immunotherapy: pembrolizumab, nivolumab for stage III/IV. Targeted therapy: BRAF/MEK inhibitors for BRAF-mutated. No role for adjuvant radiation in primary. Surveillance: skin exam, node exam, imaging based on stage.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040021-0000-0000-0000-000000000021', 'key_points', 6, 'Key Points', 'ABCDE for detection. Excisional biopsy preferred. Breslow depth determines prognosis and margins. SLNB for >0.8mm or ulcerated. Immunotherapy for advanced disease.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040021-0000-0000-0000-000000000021', 1, 'Most important prognostic factor in melanoma:', 'Clark level', 'Breslow depth', 'Ulceration', 'Mitotic rate', 'Location', 'B', 'Breslow depth is most important prognostic factor'),
('d0040021-0000-0000-0000-000000000021', 2, 'Margin for 1.5mm melanoma:', '0.5 cm', '1 cm', '1-2 cm', '2 cm', '3 cm', 'C', '1-2mm depth requires 1-2cm margin'),
('d0040021-0000-0000-0000-000000000021', 3, 'SLNB indicated for melanoma:', 'All melanomas', '>0.8mm or ulcerated', 'In situ only', '>4mm only', 'Never indicated', 'B', 'SLNB for >0.8mm depth or ulcerated lesions'),
('d0040021-0000-0000-0000-000000000021', 4, 'Preferred biopsy for suspected melanoma:', 'Shave biopsy', 'Punch biopsy', 'Excisional biopsy', 'Incisional biopsy', 'FNA', 'C', 'Excisional biopsy preferred for melanoma'),
('d0040021-0000-0000-0000-000000000021', 5, 'D in ABCDE represents:', 'Depth', 'Diameter', 'Duration', 'Dermoscopy', 'Density', 'B', 'D = Diameter >6mm');
