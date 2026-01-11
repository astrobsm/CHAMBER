-- CME Article 32: Bariatric Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040032-0000-0000-0000-000000000032', 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004', 'Bariatric Surgery Overview', 'Surgical Management of Obesity', 'Comprehensive review of bariatric surgery covering indications, procedures, outcomes, and complications.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040032-0000-0000-0000-000000000032', 'introduction', 1, 'Introduction', 'Bariatric surgery: for morbid obesity when conservative measures fail. BMI criteria: >40 or >35 with comorbidities. Mechanisms: restriction, malabsorption, or combination. Most effective for sustained weight loss and comorbidity resolution.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040032-0000-0000-0000-000000000032', 'learning_objectives', 2, 'Learning Objectives', '1. Know BMI criteria for surgery\n2. Understand surgical options\n3. Compare procedures\n4. Manage complications\n5. Plan nutritional follow-up\n6. Recognize dumping syndrome\n7. Monitor metabolic changes');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040032-0000-0000-0000-000000000032', 'content', 3, 'Procedures', 'Restrictive: sleeve gastrectomy (most common now), gastric banding. Malabsorptive: biliopancreatic diversion. Combined: Roux-en-Y gastric bypass (gold standard historically). Sleeve: removes 80% of stomach. RYGB: small pouch + bypass.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040032-0000-0000-0000-000000000032', 'content', 4, 'Outcomes', 'Weight loss: 50-70% excess weight. Diabetes remission: 80% with RYGB. Improvement in hypertension, sleep apnea, GERD. Mortality reduction long-term. Sleeve: less malabsorption, simpler.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040032-0000-0000-0000-000000000032', 'content', 5, 'Complications', 'Early: leak, bleeding, PE. Late: dumping syndrome (post-RYGB), nutritional deficiencies (B12, iron, calcium), stricture, internal hernia. Dumping: nausea, diaphoresis, palpitations after eating sweets.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040032-0000-0000-0000-000000000032', 'key_points', 6, 'Key Points', 'BMI >40 or >35 with comorbidities. Sleeve most common now. RYGB best for diabetes. Lifelong vitamin supplementation. Watch for dumping syndrome. Internal hernia with RYGB.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040032-0000-0000-0000-000000000032', 1, 'BMI criterion for bariatric surgery alone:', '>25', '>30', '>35', '>40', '>45', 'D', 'BMI >40 alone qualifies for bariatric surgery'),
('d0040032-0000-0000-0000-000000000032', 2, 'Most common bariatric procedure currently:', 'Gastric banding', 'Sleeve gastrectomy', 'RYGB', 'Biliopancreatic diversion', 'Duodenal switch', 'B', 'Sleeve gastrectomy is now most common'),
('d0040032-0000-0000-0000-000000000032', 3, 'Best diabetes resolution with:', 'Sleeve', 'Gastric band', 'Roux-en-Y bypass', 'Diet alone', 'Banding', 'C', 'RYGB has highest diabetes remission rates'),
('d0040032-0000-0000-0000-000000000032', 4, 'Dumping syndrome symptoms include:', 'Constipation', 'Diaphoresis after sweets', 'Weight gain', 'Improved appetite', 'Dry mouth', 'B', 'Dumping: nausea, sweating after high sugar'),
('d0040032-0000-0000-0000-000000000032', 5, 'Common deficiency after RYGB:', 'Vitamin C', 'Vitamin B12', 'Vitamin A', 'Sodium', 'Potassium', 'B', 'B12 deficiency common after RYGB');
