-- CME Article 46: Splenic Disorders - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040046-0000-0000-0000-000000000046', 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004', 'Spleen: Trauma and Splenectomy', 'Indications and Post-splenectomy Care', 'Review of splenic trauma, indications for splenectomy, and post-splenectomy management.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040046-0000-0000-0000-000000000046', 'introduction', 1, 'Introduction', 'Spleen: most commonly injured abdominal organ in blunt trauma. Functions: immune (encapsulated bacteria), filtration, reservoir. Splenectomy indications: trauma, hematologic (ITP, spherocytosis), malignancy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040046-0000-0000-0000-000000000046', 'learning_objectives', 2, 'Learning Objectives', '1. Grade splenic injuries\n2. Know non-operative management\n3. Identify indications for splenectomy\n4. Prevent OPSI\n5. Vaccinate appropriately\n6. Recognize hypersplenism\n7. Manage thrombocytosis');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040046-0000-0000-0000-000000000046', 'content', 3, 'Splenic Trauma', 'Grading (AAST): I-V based on hematoma and laceration. Non-operative: stable patients, grades I-III, close monitoring. Angioembolization for active bleeding. Operative: hemodynamic instability, grade V, failed non-operative.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040046-0000-0000-0000-000000000046', 'content', 4, 'Elective Indications', 'ITP: refractory to steroids. Hereditary spherocytosis: symptomatic. Hypersplenism: cytopenias. Staging: Hodgkin lymphoma (rare now). Splenic cysts/tumors. Splenomegaly: may need open approach.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040046-0000-0000-0000-000000000046', 'content', 5, 'Post-splenectomy', 'OPSI: overwhelming post-splenectomy infection, encapsulated organisms (S. pneumoniae, H. influenzae, N. meningitidis). Vaccination: 2 weeks before elective, immediately after emergency. Lifelong antibiotic awareness. Thrombocytosis: peaks day 7-10.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040046-0000-0000-0000-000000000046', 'key_points', 6, 'Key Points', 'Most injured abdominal organ. Non-operative management for stable patients. OPSI from encapsulated bacteria. Vaccinate before elective splenectomy. Thrombocytosis common post-op. Lifelong infection awareness.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040046-0000-0000-0000-000000000046', 1, 'Most commonly injured abdominal organ:', 'Liver', 'Spleen', 'Kidney', 'Bowel', 'Pancreas', 'B', 'Spleen most commonly injured in blunt trauma'),
('d0040046-0000-0000-0000-000000000046', 2, 'OPSI is caused by:', 'Gram-negative rods', 'Encapsulated organisms', 'Fungi', 'Viruses', 'Anaerobes', 'B', 'Encapsulated bacteria cause OPSI'),
('d0040046-0000-0000-0000-000000000046', 3, 'Timing of vaccination before elective splenectomy:', 'Day before', '2 weeks before', '1 month before', '3 months before', 'After surgery only', 'B', 'Vaccinate 2 weeks before elective splenectomy'),
('d0040046-0000-0000-0000-000000000046', 4, 'Post-splenectomy thrombocytosis peaks:', 'Day 1', 'Day 7-10', 'Day 21', 'Week 4', 'Day 3', 'B', 'Thrombocytosis peaks around day 7-10'),
('d0040046-0000-0000-0000-000000000046', 5, 'Non-operative management suitable for:', 'Hemodynamically unstable', 'Grade V injury', 'Stable patient grades I-III', 'All patients', 'None', 'C', 'Non-op for stable patients with lower grades');
