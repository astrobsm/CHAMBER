-- CME Article 53: Volvulus - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040053-0000-0000-0000-000000000053', 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004', 'Colonic Volvulus', 'Sigmoid and Cecal Volvulus', 'Review of colonic volvulus covering presentation, diagnosis, and management of sigmoid and cecal volvulus.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040053-0000-0000-0000-000000000053', 'introduction', 1, 'Introduction', 'Volvulus: twisting of bowel around its mesentery causing obstruction and ischemia. Sigmoid volvulus: most common (60-75%). Cecal volvulus: 25-40%. Risk factors: redundant colon, chronic constipation, high fiber diet, institutionalized patients.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040053-0000-0000-0000-000000000053', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize volvulus presentation\n2. Interpret imaging findings\n3. Distinguish sigmoid from cecal\n4. Know decompression techniques\n5. Plan definitive surgery\n6. Recognize ischemia\n7. Prevent recurrence');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040053-0000-0000-0000-000000000053', 'content', 3, 'Sigmoid Volvulus', 'Elderly, institutionalized, psychiatric patients. Gradual onset, massive distension. X-ray: coffee bean sign, bent inner tube sign. CT confirms. Non-gangrenous: flexible sigmoidoscopy decompression (70-90% success). High recurrence - needs definitive surgery.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040053-0000-0000-0000-000000000053', 'content', 4, 'Cecal Volvulus', 'Younger patients, mobile cecum. Acute onset. X-ray: kidney bean in LUQ. Endoscopic decompression less successful. Usually requires surgery: right hemicolectomy or cecopexy. Higher gangrene risk than sigmoid.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040053-0000-0000-0000-000000000053', 'content', 5, 'Management', 'If gangrenous: emergent surgery with resection. Sigmoid: Hartmann or primary anastomosis. Elective sigmoid colectomy after successful decompression. Recurrence rate 40-60% without surgery. Mortality 20-40% if gangrenous.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040053-0000-0000-0000-000000000053', 'key_points', 6, 'Key Points', 'Sigmoid most common volvulus. Coffee bean sign on X-ray. Endoscopic decompression for sigmoid. Cecal needs surgery. High recurrence without definitive surgery. Gangrene increases mortality.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040053-0000-0000-0000-000000000053', 1, 'Most common type of colonic volvulus:', 'Cecal', 'Sigmoid', 'Transverse', 'Splenic flexure', 'Hepatic flexure', 'B', 'Sigmoid volvulus is most common (60-75%)'),
('d0040053-0000-0000-0000-000000000053', 2, 'Coffee bean sign seen in:', 'Cecal volvulus', 'Sigmoid volvulus', 'Intussusception', 'Appendicitis', 'Diverticulitis', 'B', 'Coffee bean sign is classic for sigmoid volvulus'),
('d0040053-0000-0000-0000-000000000053', 3, 'First-line treatment for non-gangrenous sigmoid volvulus:', 'Surgery', 'Endoscopic decompression', 'Observation', 'Antibiotics', 'Enema', 'B', 'Endoscopic decompression is first-line'),
('d0040053-0000-0000-0000-000000000053', 4, 'Cecal volvulus treatment usually requires:', 'Observation', 'Endoscopic decompression', 'Surgery', 'Antibiotics only', 'Stenting', 'C', 'Cecal volvulus usually requires surgery'),
('d0040053-0000-0000-0000-000000000053', 5, 'Recurrence rate of sigmoid volvulus without surgery:', '5-10%', '20-30%', '40-60%', '80-90%', 'No recurrence', 'C', 'High recurrence (40-60%) without definitive surgery');
