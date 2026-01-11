-- CME Article 8: Breast Cancer Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040008-0000-0000-0000-000000000008', 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004', 'Breast Cancer: Surgical Management', 'Diagnosis, Staging, and Treatment Options', 'Comprehensive review of breast cancer surgery covering diagnosis, staging, surgical options, and multidisciplinary treatment.', 'UNTH Surgery Department', 35, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040008-0000-0000-0000-000000000008', 'introduction', 1, 'Introduction', 'Breast cancer is most common cancer in women. Lifetime risk 1 in 8. Risk factors: age, BRCA mutations, family history, early menarche, late menopause, nulliparity, obesity, HRT. Triple assessment: clinical, imaging, pathology.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040008-0000-0000-0000-000000000008', 'learning_objectives', 2, 'Learning Objectives', '1. Apply triple assessment\n2. Understand breast imaging (BI-RADS)\n3. Perform breast biopsy techniques\n4. Stage breast cancer (TNM)\n5. Compare BCS vs mastectomy\n6. Apply sentinel node biopsy\n7. Understand adjuvant therapy');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040008-0000-0000-0000-000000000008', 'content', 3, 'Diagnosis', 'Clinical: breast mass, skin changes, nipple discharge. Mammography: screening and diagnostic. Ultrasound: distinguish solid vs cystic. MRI: high-risk screening, extent of disease. Biopsy: FNA, core needle (preferred), excisional. BI-RADS: 0-6 classification.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040008-0000-0000-0000-000000000008', 'content', 4, 'Staging', 'TNM staging: T1 ≤2cm, T2 2-5cm, T3 >5cm, T4 chest wall/skin. N1 mobile axillary, N2 fixed axillary, N3 infraclavicular/supraclavicular. Receptor status: ER, PR, HER2. Molecular subtypes: Luminal A/B, HER2-enriched, triple-negative.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040008-0000-0000-0000-000000000008', 'content', 5, 'Surgical Treatment', 'Breast-conserving surgery (BCS): lumpectomy + radiation, equivalent survival to mastectomy. Mastectomy: for large tumors, multicentric disease, radiation contraindicated, patient preference. Sentinel node biopsy: standard for clinically node-negative. Axillary dissection if SLN positive.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040008-0000-0000-0000-000000000008', 'key_points', 6, 'Key Points', 'Triple assessment: clinical, imaging, pathology. Core biopsy preferred. BCS + radiation = mastectomy for survival. Sentinel node biopsy for clinically N0. Receptor status guides therapy. Multidisciplinary approach essential.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040008-0000-0000-0000-000000000008', 1, 'Triple assessment includes all EXCEPT:', 'Clinical exam', 'Imaging', 'Pathology', 'MRI', 'All are included', 'D', 'Triple assessment: clinical, imaging, pathology'),
('d0040008-0000-0000-0000-000000000008', 2, 'BCS compared to mastectomy shows:', 'Worse survival', 'Better survival', 'Equivalent survival', 'Higher recurrence', 'Not comparable', 'C', 'BCS + radiation equivalent survival to mastectomy'),
('d0040008-0000-0000-0000-000000000008', 3, 'T2 breast tumor size is:', '<1 cm', '1-2 cm', '2-5 cm', '>5 cm', 'Any size with skin involvement', 'C', 'T2 = 2-5 cm'),
('d0040008-0000-0000-0000-000000000008', 4, 'Sentinel node biopsy indicated for:', 'All breast cancer', 'Clinically node-negative', 'Clinically node-positive', 'Inflammatory cancer', 'DCIS only', 'B', 'SLN biopsy for clinically node-negative patients'),
('d0040008-0000-0000-0000-000000000008', 5, 'Preferred biopsy method for breast lesions:', 'FNA', 'Core needle biopsy', 'Excisional biopsy', 'Incisional biopsy', 'Punch biopsy', 'B', 'Core needle biopsy preferred for breast lesions');
