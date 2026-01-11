-- CME Article 44: Acute Pancreatitis - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040044-0000-0000-0000-000000000044', 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004', 'Acute Pancreatitis Management', 'From Diagnosis to Surgical Intervention', 'Review of acute pancreatitis covering causes, severity assessment, and management including surgical indications.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040044-0000-0000-0000-000000000044', 'introduction', 1, 'Introduction', 'Acute pancreatitis: inflammation of pancreas. Main causes: Gallstones (40%), Alcohol (40%). Others: trauma, drugs, hyperlipidemia, hypercalcemia. Mild: interstitial. Severe: necrotizing with complications. Mortality up to 30% in severe.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040044-0000-0000-0000-000000000044', 'learning_objectives', 2, 'Learning Objectives', '1. Know causes (GET SMASHED)\n2. Diagnose acute pancreatitis\n3. Assess severity\n4. Manage supportive care\n5. Recognize complications\n6. Know surgical indications\n7. Plan follow-up');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040044-0000-0000-0000-000000000044', 'content', 3, 'Diagnosis', 'Clinical: epigastric pain radiating to back, worse with eating. Labs: lipase >3x normal (more specific than amylase). CT: not needed early unless diagnostic uncertainty. Ranson, BISAP, APACHE II for severity.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040044-0000-0000-0000-000000000044', 'content', 4, 'Management', 'Supportive: aggressive IV fluids, analgesia, NPO initially. Early enteral feeding when tolerated. Antibiotics: only for infected necrosis. ERCP: for cholangitis or persistent biliary obstruction. Cholecystectomy for gallstone pancreatitis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040044-0000-0000-0000-000000000044', 'content', 5, 'Complications', 'Local: necrosis, pseudocyst, abscess. Systemic: ARDS, AKI, DIC, multiorgan failure. Infected necrosis: necrosectomy. Pseudocyst: drainage if symptomatic or >6cm. Walled-off necrosis: step-up approach.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040044-0000-0000-0000-000000000044', 'key_points', 6, 'Key Points', 'Gallstones and alcohol main causes. Lipase more specific than amylase. Aggressive fluid resuscitation. Early enteral feeding. Cholecystectomy same admission for gallstone pancreatitis. Infected necrosis needs intervention.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040044-0000-0000-0000-000000000044', 1, 'Most common causes of acute pancreatitis:', 'Trauma and drugs', 'Gallstones and alcohol', 'Infection and tumor', 'Hyperlipidemia only', 'Idiopathic', 'B', 'Gallstones and alcohol account for 80%'),
('d0040044-0000-0000-0000-000000000044', 2, 'More specific enzyme for pancreatitis:', 'Amylase', 'Lipase', 'ALT', 'AST', 'GGT', 'B', 'Lipase is more specific for pancreatitis'),
('d0040044-0000-0000-0000-000000000044', 3, 'Antibiotics in acute pancreatitis:', 'Always given', 'Only for infected necrosis', 'Prophylactically', 'Never needed', 'First 24 hours only', 'B', 'Antibiotics only for infected necrosis'),
('d0040044-0000-0000-0000-000000000044', 4, 'Cholecystectomy for gallstone pancreatitis:', 'Never needed', 'Same admission', '6 weeks later', '6 months later', 'Only if recurs', 'B', 'Same admission cholecystectomy prevents recurrence'),
('d0040044-0000-0000-0000-000000000044', 5, 'Pseudocyst drainage indicated when:', 'All pseudocysts', 'Symptomatic or >6cm', 'Immediately', 'Never', 'Only if infected', 'B', 'Drainage for symptomatic or large pseudocysts');
