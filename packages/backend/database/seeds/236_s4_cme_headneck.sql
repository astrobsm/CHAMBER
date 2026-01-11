-- CME Article 36: Head and Neck Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040036-0000-0000-0000-000000000036', 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004', 'Head and Neck Cancer Overview', 'Diagnosis and Surgical Management', 'Comprehensive review of head and neck squamous cell carcinoma covering risk factors, presentation, staging, and treatment.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040036-0000-0000-0000-000000000036', 'introduction', 1, 'Introduction', 'Head and neck cancer: 90% squamous cell carcinoma. Sites: oral cavity, oropharynx, larynx, hypopharynx, nasopharynx. Risk factors: tobacco, alcohol (synergistic), HPV (oropharyngeal), betel nut. HPV-positive has better prognosis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040036-0000-0000-0000-000000000036', 'learning_objectives', 2, 'Learning Objectives', '1. Know risk factors and sites\n2. Recognize presentation\n3. Understand nodal drainage\n4. Stage appropriately\n5. Plan surgical approach\n6. Know reconstruction options\n7. Manage airway concerns');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040036-0000-0000-0000-000000000036', 'content', 3, 'Presentation', 'Oral cavity: non-healing ulcer, leukoplakia. Larynx: hoarseness >3 weeks. Oropharynx: sore throat, dysphagia, neck mass. Nasopharynx: epistaxis, nasal obstruction, cranial neuropathies. Any suspicious lesion >3 weeks needs biopsy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040036-0000-0000-0000-000000000036', 'content', 4, 'Nodal Levels', 'Level I: submental/submandibular. Level II: upper jugular. Level III: mid jugular. Level IV: lower jugular. Level V: posterior triangle. Level VI: central compartment. Nodal spread follows predictable patterns by primary site.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040036-0000-0000-0000-000000000036', 'content', 5, 'Treatment', 'Early stage: surgery or radiation alone. Advanced: multimodal - surgery, radiation, chemotherapy. Neck dissection: selective or modified radical. Reconstruction: primary closure, local flaps, free flaps. Tracheostomy may be needed for airway.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040036-0000-0000-0000-000000000036', 'key_points', 6, 'Key Points', '90% squamous cell. Tobacco and alcohol synergistic. HPV-positive better prognosis. Hoarseness >3 weeks needs evaluation. Multimodal therapy for advanced. Know nodal levels.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040036-0000-0000-0000-000000000036', 1, 'Most common type of head and neck cancer:', 'Adenocarcinoma', 'Squamous cell carcinoma', 'Lymphoma', 'Sarcoma', 'Melanoma', 'B', '90% of head and neck cancers are SCC'),
('d0040036-0000-0000-0000-000000000036', 2, 'Tobacco and alcohol risk is:', 'Additive', 'Synergistic', 'Same as tobacco alone', 'Protective', 'No effect', 'B', 'Tobacco and alcohol have synergistic effect'),
('d0040036-0000-0000-0000-000000000036', 3, 'HPV-positive oropharyngeal cancer has:', 'Worse prognosis', 'Better prognosis', 'Same prognosis', 'No effect', 'Higher recurrence', 'B', 'HPV-positive has better prognosis'),
('d0040036-0000-0000-0000-000000000036', 4, 'Level II nodes are:', 'Submental', 'Upper jugular', 'Mid jugular', 'Lower jugular', 'Posterior triangle', 'B', 'Level II = upper jugular nodes'),
('d0040036-0000-0000-0000-000000000036', 5, 'Hoarseness concerning for cancer if lasting:', '1 week', '2 weeks', 'Over 3 weeks', '1 day', '6 months', 'C', 'Hoarseness >3 weeks warrants investigation');
