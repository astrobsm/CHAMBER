-- CME Article 27: Lymphedema - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040027-0000-0000-0000-000000000027', 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004', 'Lymphedema: Diagnosis and Management', 'Understanding and Treating Lymphatic Disorders', 'Review of lymphedema covering primary vs secondary causes, staging, conservative management, and surgical options.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040027-0000-0000-0000-000000000027', 'introduction', 1, 'Introduction', 'Lymphedema is chronic swelling due to impaired lymphatic drainage. Primary: congenital or hereditary lymphatic abnormalities. Secondary: more common - surgery, radiation, infection (filariasis worldwide), trauma. Breast cancer-related most common in developed countries.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040027-0000-0000-0000-000000000027', 'learning_objectives', 2, 'Learning Objectives', '1. Distinguish primary from secondary\n2. Stage lymphedema\n3. Differentiate from venous edema\n4. Implement complete decongestive therapy\n5. Recognize complications\n6. Consider surgical options\n7. Prevent progression');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040027-0000-0000-0000-000000000027', 'content', 3, 'Classification and Staging', 'Primary: congenital (birth), praecox (<35 years), tarda (>35 years). Stage 0: subclinical. Stage I: pitting, reversible. Stage II: non-pitting, fibrosis. Stage III: elephantiasis, skin changes. Stemmer sign positive (cannot pinch skin at base of second toe).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040027-0000-0000-0000-000000000027', 'content', 4, 'Diagnosis', 'Clinical diagnosis primarily. Stemmer sign. Lymphoscintigraphy: gold standard imaging. MRI/CT to exclude malignancy. Distinguish from: venous edema (improves with elevation, ulcers), lipedema (spares feet, symmetric), cardiac/renal edema (bilateral, pitting).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040027-0000-0000-0000-000000000027', 'content', 5, 'Treatment', 'Complete Decongestive Therapy (CDT): manual lymphatic drainage, compression bandaging, exercise, skin care. Compression garments for maintenance. Surgical: debulking (excisional), liposuction, microsurgical lymphovenous anastomosis, vascularized lymph node transfer.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040027-0000-0000-0000-000000000027', 'key_points', 6, 'Key Points', 'Secondary more common than primary. Stemmer sign is pathognomonic. CDT is cornerstone of treatment. Compression for maintenance. Microsurgery for selected patients. Watch for cellulitis and lymphangiosarcoma.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040027-0000-0000-0000-000000000027', 1, 'Most common cause of secondary lymphedema worldwide:', 'Breast cancer treatment', 'Filariasis', 'Trauma', 'Radiation', 'Surgery', 'B', 'Filariasis is most common cause worldwide'),
('d0040027-0000-0000-0000-000000000027', 2, 'Stemmer sign is:', 'Negative in lymphedema', 'Positive in lymphedema', 'Positive in venous edema', 'Positive in lipedema', 'Always absent', 'B', 'Stemmer sign is positive in lymphedema'),
('d0040027-0000-0000-0000-000000000027', 3, 'Stage II lymphedema is characterized by:', 'Reversible pitting', 'Non-pitting fibrosis', 'Elephantiasis', 'Subclinical', 'Ulceration', 'B', 'Stage II = non-pitting, fibrotic changes'),
('d0040027-0000-0000-0000-000000000027', 4, 'Cornerstone of lymphedema treatment:', 'Surgery', 'Complete decongestive therapy', 'Diuretics', 'Elevation alone', 'Antibiotics', 'B', 'CDT is cornerstone of treatment'),
('d0040027-0000-0000-0000-000000000027', 5, 'Gold standard imaging for lymphedema:', 'CT', 'MRI', 'Ultrasound', 'Lymphoscintigraphy', 'X-ray', 'D', 'Lymphoscintigraphy is gold standard');
