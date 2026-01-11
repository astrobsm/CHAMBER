-- CME Article 49: Hernia Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040049-0000-0000-0000-000000000049', 'c4000043-0000-0000-0000-000000000043', 'a0000004-0000-0000-0000-000000000004', 'Abdominal Wall Hernias', 'Repair Techniques and Outcomes', 'Comprehensive review of inguinal, femoral, umbilical, and incisional hernias with repair options.', 'UNTH Surgery Department', 30, 2.0, 'easy', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040049-0000-0000-0000-000000000049', 'introduction', 1, 'Introduction', 'Hernia: abnormal protrusion of tissue through a defect. Types: inguinal (most common), femoral, umbilical, incisional, ventral. Risk factors: obesity, chronic cough, heavy lifting, previous surgery, collagen disorders.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040049-0000-0000-0000-000000000049', 'learning_objectives', 2, 'Learning Objectives', '1. Classify hernias by type and location\n2. Distinguish direct from indirect\n3. Recognize incarceration/strangulation\n4. Know mesh repair principles\n5. Choose open vs laparoscopic\n6. Manage emergencies\n7. Prevent recurrence');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040049-0000-0000-0000-000000000049', 'content', 3, 'Inguinal Hernias', 'Indirect: through internal ring, lateral to epigastric vessels, most common. Direct: through Hesselbach triangle, medial to vessels. Femoral: below inguinal ligament, more common in women, high strangulation risk.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040049-0000-0000-0000-000000000049', 'content', 4, 'Other Hernias', 'Umbilical: common in children (may close), adults need repair. Incisional: previous surgical site, 10-15% of laparotomies. Epigastric: midline, linea alba. Spigelian: lateral to rectus. Obturator: rare, Howship-Romberg sign.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040049-0000-0000-0000-000000000049', 'content', 5, 'Surgical Management', 'Mesh repair: reduces recurrence. Open: Lichtenstein (tension-free). Laparoscopic: TEP, TAPP. Emergency: incarcerated/strangulated, bowel resection if needed. Watchful waiting for asymptomatic inguinal in men possible.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040049-0000-0000-0000-000000000049', 'key_points', 6, 'Key Points', 'Indirect most common type. Femoral has high strangulation risk. Mesh reduces recurrence. Lichtenstein is standard open repair. Emergency for incarceration. Incisional hernias common after laparotomy.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040049-0000-0000-0000-000000000049', 1, 'Most common type of hernia:', 'Femoral', 'Direct inguinal', 'Indirect inguinal', 'Umbilical', 'Incisional', 'C', 'Indirect inguinal is most common'),
('d0040049-0000-0000-0000-000000000049', 2, 'Indirect hernia is lateral to:', 'Inferior epigastric vessels', 'Femoral vessels', 'External iliac', 'Obturator vessels', 'Pudendal vessels', 'A', 'Indirect is lateral to epigastric vessels'),
('d0040049-0000-0000-0000-000000000049', 3, 'Hernia with highest strangulation risk:', 'Direct inguinal', 'Indirect inguinal', 'Femoral', 'Umbilical', 'Incisional', 'C', 'Femoral has highest strangulation risk'),
('d0040049-0000-0000-0000-000000000049', 4, 'Standard tension-free open repair:', 'Bassini', 'Shouldice', 'Lichtenstein', 'McVay', 'Tissue repair', 'C', 'Lichtenstein is standard tension-free mesh repair'),
('d0040049-0000-0000-0000-000000000049', 5, 'Howship-Romberg sign suggests:', 'Inguinal hernia', 'Femoral hernia', 'Obturator hernia', 'Umbilical hernia', 'Spigelian hernia', 'C', 'Howship-Romberg sign seen in obturator hernia');
