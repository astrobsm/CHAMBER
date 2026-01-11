-- CME Article 50: Appendicitis - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040050-0000-0000-0000-000000000050', 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004', 'Acute Appendicitis', 'Diagnosis and Surgical Management', 'Review of acute appendicitis covering presentation, diagnosis, and appendectomy techniques.', 'UNTH Surgery Department', 25, 1.5, 'easy', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040050-0000-0000-0000-000000000050', 'introduction', 1, 'Introduction', 'Appendicitis: most common surgical emergency. Peak age 10-30 years. Caused by obstruction (fecalith, lymphoid hyperplasia). Without treatment: perforation, abscess, peritonitis. Lifetime risk 7-8%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040050-0000-0000-0000-000000000050', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize classic presentation\n2. Know atypical presentations\n3. Use Alvarado score\n4. Interpret imaging\n5. Choose surgical approach\n6. Manage complicated appendicitis\n7. Know alternative diagnoses');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040050-0000-0000-0000-000000000050', 'content', 3, 'Clinical Presentation', 'Classic: periumbilical pain migrating to RLQ (visceral to somatic). Anorexia, nausea, vomiting. Low-grade fever. McBurney point tenderness. Rovsing sign, psoas sign, obturator sign. Retrocecal: atypical presentation.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040050-0000-0000-0000-000000000050', 'content', 4, 'Diagnosis', 'Clinical diagnosis primarily. Alvarado score: migration, anorexia, nausea, RLQ tenderness, rebound, fever, leukocytosis, shift. CT: most accurate, >95% sensitivity. US: first-line in children and pregnancy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040050-0000-0000-0000-000000000050', 'content', 5, 'Treatment', 'Appendectomy: laparoscopic preferred. Simple: surgery within 24 hours. Complicated (abscess): antibiotics, possible interval appendectomy. Phlegmon: conservative, then interval surgery. Negative appendectomy rate: acceptable <15%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040050-0000-0000-0000-000000000050', 'key_points', 6, 'Key Points', 'Pain migration classic feature. CT most accurate imaging. Laparoscopic appendectomy standard. Complicated: antibiotics first. McBurney point at 1/3 from ASIS to umbilicus. Early surgery prevents perforation.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040050-0000-0000-0000-000000000050', 1, 'McBurney point is located:', 'Midway umbilicus to pubis', '1/3 from ASIS to umbilicus', 'RUQ', 'LLQ', 'Epigastrium', 'B', 'McBurney point: 1/3 from ASIS to umbilicus'),
('d0040050-0000-0000-0000-000000000050', 2, 'Classic appendicitis pain pattern:', 'RLQ from start', 'Periumbilical migrating to RLQ', 'LLQ to RLQ', 'Epigastric only', 'Back pain', 'B', 'Pain migrates from periumbilical to RLQ'),
('d0040050-0000-0000-0000-000000000050', 3, 'Most accurate imaging for appendicitis:', 'X-ray', 'Ultrasound', 'CT', 'MRI', 'Barium enema', 'C', 'CT has >95% sensitivity for appendicitis'),
('d0040050-0000-0000-0000-000000000050', 4, 'First-line imaging in pregnant patient:', 'CT', 'X-ray', 'Ultrasound', 'PET', 'None', 'C', 'Ultrasound first-line in pregnancy'),
('d0040050-0000-0000-0000-000000000050', 5, 'Rovsing sign is:', 'RLQ pain with palpation', 'RLQ pain with LLQ palpation', 'Pain with hip flexion', 'Pain with hip rotation', 'Rebound tenderness', 'B', 'Rovsing: RLQ pain when pressing LLQ');
