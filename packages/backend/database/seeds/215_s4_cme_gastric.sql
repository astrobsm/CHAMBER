-- CME Article 15: Gastric Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040015-0000-0000-0000-000000000015', 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004', 'Gastric Cancer: Surgical Management', 'Diagnosis, Staging, and Resection', 'Review of gastric cancer covering risk factors, diagnosis, staging, surgical options, and adjuvant therapy.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040015-0000-0000-0000-000000000015', 'introduction', 1, 'Introduction', 'Gastric cancer fourth leading cause of cancer death globally. Higher in Asia, Eastern Europe. Risk factors: H. pylori, diet (smoked/salted foods), smoking, atrophic gastritis, pernicious anemia. Most are adenocarcinomas. Often presents late.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040015-0000-0000-0000-000000000015', 'learning_objectives', 2, 'Learning Objectives', '1. Identify risk factors\n2. Recognize clinical presentation\n3. Apply staging workup\n4. Determine resection extent\n5. Perform adequate lymphadenectomy\n6. Understand adjuvant therapy\n7. Manage complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040015-0000-0000-0000-000000000015', 'content', 3, 'Diagnosis and Staging', 'Symptoms: dyspepsia, weight loss, early satiety, vomiting. Signs: Virchow node (left supraclavicular), Sister Mary Joseph node (umbilical), Blumer shelf (rectal), Krukenberg tumor (ovarian). EGD with biopsy. CT for staging. PET-CT. Staging laparoscopy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040015-0000-0000-0000-000000000015', 'content', 4, 'Surgical Treatment', 'Distal gastrectomy: antral tumors, 4-6cm proximal margin. Total gastrectomy: proximal or diffuse tumors. D2 lymphadenectomy standard: perigastric + nodes along named vessels. Minimum 15 nodes for staging. Margins assessed intraoperatively.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040015-0000-0000-0000-000000000015', 'content', 5, 'Perioperative Therapy', 'Neoadjuvant chemotherapy: FLOT protocol for resectable disease. Adjuvant chemoradiation or chemotherapy for node-positive. Palliative options: bypass, stenting for obstruction. Prognosis related to stage and resection completeness.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040015-0000-0000-0000-000000000015', 'key_points', 6, 'Key Points', 'H. pylori major risk factor. Eponymous signs indicate metastasis. EGD with biopsy for diagnosis. D2 lymphadenectomy standard. 15+ nodes for staging. Neoadjuvant chemotherapy for resectable disease.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040015-0000-0000-0000-000000000015', 1, 'Virchow node is located:', 'Right supraclavicular', 'Left supraclavicular', 'Umbilical', 'Inguinal', 'Axillary', 'B', 'Virchow node is left supraclavicular'),
('d0040015-0000-0000-0000-000000000015', 2, 'Krukenberg tumor refers to metastasis to:', 'Liver', 'Lung', 'Brain', 'Ovary', 'Bone', 'D', 'Krukenberg tumor is ovarian metastasis from gastric cancer'),
('d0040015-0000-0000-0000-000000000015', 3, 'Standard lymphadenectomy for gastric cancer:', 'D0', 'D1', 'D2', 'D3', 'No lymphadenectomy', 'C', 'D2 lymphadenectomy is standard'),
('d0040015-0000-0000-0000-000000000015', 4, 'Minimum lymph nodes for adequate staging:', '5', '10', '15', '20', '25', 'C', 'Minimum 15 lymph nodes for adequate staging'),
('d0040015-0000-0000-0000-000000000015', 5, 'Major risk factor for gastric cancer:', 'GERD', 'H. pylori', 'Alcohol', 'NSAIDs', 'Obesity', 'B', 'H. pylori is major risk factor for gastric cancer');
