-- CME Article 60: Postoperative Complications - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040060-0000-0000-0000-000000000060', 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004', 'Postoperative Complications', 'Prevention and Management', 'Review of common postoperative complications covering fever, DVT, respiratory, and cardiac complications.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040060-0000-0000-0000-000000000060', 'introduction', 1, 'Introduction', 'Postoperative complications increase morbidity and mortality. Prevention through optimization and protocols. Early recognition and treatment improve outcomes. Common causes of post-op fever: 5 Ws.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040060-0000-0000-0000-000000000060', 'learning_objectives', 2, 'Learning Objectives', '1. Know 5 Ws of fever\n2. Prevent VTE\n3. Manage respiratory complications\n4. Recognize cardiac events\n5. Prevent pressure injuries\n6. Handle ileus vs obstruction\n7. Manage urinary retention');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040060-0000-0000-0000-000000000060', 'content', 3, 'Postoperative Fever', '5 Ws: Wind (atelectasis, day 1-2), Water (UTI, day 3-5), Wound (SSI, day 5-7), Walking (DVT/PE, day 5-10), Wonder drugs (drug fever). Atelectasis most common early cause. Blood cultures if septic.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040060-0000-0000-0000-000000000060', 'content', 4, 'VTE Prevention', 'Risk assessment. Mechanical: SCDs, TEDs. Pharmacological: LMWH, UFH. Early mobilization. Duration: until mobile, extended for cancer/major surgery. PE presents with dyspnea, tachycardia, hypoxia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040060-0000-0000-0000-000000000060', 'content', 5, 'Other Complications', 'Respiratory: atelectasis, pneumonia. Prevention: incentive spirometry, early mobilization. Cardiac: MI peaks day 3. Ileus: expected, resolves. Obstruction: concerning if late. Urinary retention: common after spinal anesthesia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040060-0000-0000-0000-000000000060', 'key_points', 6, 'Key Points', 'Atelectasis most common early fever. VTE prophylaxis essential. Early mobilization prevents many complications. MI risk peaks day 3. Incentive spirometry for respiratory prevention. 5 Ws for fever workup.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040060-0000-0000-0000-000000000060', 1, 'Most common cause of fever on post-op day 1:', 'UTI', 'Wound infection', 'Atelectasis', 'DVT', 'Drug fever', 'C', 'Atelectasis (Wind) is most common early cause'),
('d0040060-0000-0000-0000-000000000060', 2, 'Wound infection typically presents on:', 'Day 1', 'Day 3', 'Day 5-7', 'Day 14', 'Immediately', 'C', 'SSI typically presents day 5-7'),
('d0040060-0000-0000-0000-000000000060', 3, 'Peak time for postoperative MI:', 'Intraoperative', 'Day 1', 'Day 3', 'Day 7', 'Day 14', 'C', 'Postoperative MI peaks around day 3'),
('d0040060-0000-0000-0000-000000000060', 4, 'Best prevention for atelectasis:', 'Antibiotics', 'Incentive spirometry', 'Bed rest', 'IV fluids', 'Oxygen only', 'B', 'Incentive spirometry prevents atelectasis'),
('d0040060-0000-0000-0000-000000000060', 5, 'W in 5 Ws standing for DVT:', 'Wind', 'Water', 'Wound', 'Walking', 'Wonder drugs', 'D', 'Walking (lack of) relates to DVT');
