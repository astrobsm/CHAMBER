-- CME Article 43: Biliary Tract Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040043-0000-0000-0000-000000000043', 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004', 'Biliary Tract Surgery', 'Gallstones and Complications', 'Comprehensive review of biliary surgery covering cholelithiasis, cholecystitis, and biliary complications.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040043-0000-0000-0000-000000000043', 'introduction', 1, 'Introduction', 'Gallstone disease affects 10-15% of population. Types: cholesterol (80%), pigment (20%). Risk factors: Female, Fat, Forty, Fertile, Fair. Most asymptomatic. Complications: cholecystitis, choledocholithiasis, pancreatitis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040043-0000-0000-0000-000000000043', 'learning_objectives', 2, 'Learning Objectives', '1. Know gallstone types and risks\n2. Diagnose acute cholecystitis\n3. Time cholecystectomy\n4. Recognize CBD stones\n5. Manage biliary complications\n6. Know critical view of safety\n7. Handle bile duct injury');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040043-0000-0000-0000-000000000043', 'content', 3, 'Acute Cholecystitis', 'Murphy sign: inspiratory arrest on RUQ palpation. Ultrasound: stones, thickened wall >3mm, pericholecystic fluid. HIDA: non-visualization confirms. Tokyo guidelines for severity. Early cholecystectomy preferred (<72 hours).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040043-0000-0000-0000-000000000043', 'content', 4, 'Complications', 'Choledocholithiasis: CBD stones, jaundice, cholangitis. Cholangitis: Charcot triad (fever, jaundice, RUQ pain), Reynolds pentad adds confusion and hypotension. Gallstone pancreatitis. Mirizzi syndrome: cystic duct stone compressing CBD.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040043-0000-0000-0000-000000000043', 'content', 5, 'Cholecystectomy', 'Laparoscopic: gold standard. Critical view of safety: clear triangle of Calot, only two structures entering gallbladder. Bile duct injury: most serious complication (0.3-0.6%). IOC: intraoperative cholangiogram if suspected CBD stone.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040043-0000-0000-0000-000000000043', 'key_points', 6, 'Key Points', 'Early cholecystectomy for acute cholecystitis. Critical view of safety prevents injury. Charcot triad = cholangitis. ERCP for CBD stones. Bile duct injury: major complication. Most gallstones asymptomatic.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040043-0000-0000-0000-000000000043', 1, 'Most common type of gallstone:', 'Pigment', 'Cholesterol', 'Mixed', 'Calcium', 'Bilirubin', 'B', 'Cholesterol stones account for 80%'),
('d0040043-0000-0000-0000-000000000043', 2, 'Murphy sign is positive in:', 'Pancreatitis', 'Cholecystitis', 'Appendicitis', 'Peptic ulcer', 'Hepatitis', 'B', 'Murphy sign is positive in cholecystitis'),
('d0040043-0000-0000-0000-000000000043', 3, 'Charcot triad includes all EXCEPT:', 'Fever', 'Jaundice', 'RUQ pain', 'Hypotension', 'All included', 'D', 'Hypotension is in Reynolds pentad'),
('d0040043-0000-0000-0000-000000000043', 4, 'Critical view of safety requires:', 'Three structures', 'Two structures into gallbladder', 'Complete dissection', 'IOC', 'Conversion', 'B', 'Two structures (cystic duct and artery) only'),
('d0040043-0000-0000-0000-000000000043', 5, 'Timing of cholecystectomy for acute cholecystitis:', 'Immediate', 'Within 72 hours', '6 weeks later', '3 months later', 'Conservative only', 'B', 'Early cholecystectomy within 72 hours preferred');
