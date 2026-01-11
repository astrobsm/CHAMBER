-- CME Article 30: Subarachnoid Hemorrhage - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040030-0000-0000-0000-000000000030', 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004', 'Subarachnoid Hemorrhage', 'Diagnosis and Emergency Management', 'Comprehensive review of SAH covering aneurysmal and non-aneurysmal causes, presentation, diagnosis, and management.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040030-0000-0000-0000-000000000030', 'introduction', 1, 'Introduction', 'Subarachnoid hemorrhage (SAH): bleeding into subarachnoid space. 85% due to ruptured aneurysm. High mortality (40-50%). Risk factors: hypertension, smoking, family history, polycystic kidney disease, connective tissue disorders.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040030-0000-0000-0000-000000000030', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize SAH presentation\n2. Know diagnostic steps\n3. Understand aneurysm locations\n4. Manage initial stabilization\n5. Prevent rebleeding\n6. Recognize vasospasm\n7. Know treatment options');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040030-0000-0000-0000-000000000030', 'content', 3, 'Presentation', 'Thunderclap headache: worst headache of life, sudden onset. Meningismus: neck stiffness, photophobia. Loss of consciousness. Focal deficits. Hunt-Hess grading: I-V based on severity. WFNS scale uses GCS.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040030-0000-0000-0000-000000000030', 'content', 4, 'Diagnosis', 'CT head without contrast: sensitivity 95% day 1, decreases with time. Lumbar puncture if CT negative: xanthochromia, RBCs. CT angiography: detect aneurysm. Digital subtraction angiography: gold standard for aneurysm.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040030-0000-0000-0000-000000000030', 'content', 5, 'Management', 'Secure airway, BP control (<160 systolic). Nimodipine: prevents vasospasm. Definitive: clipping (surgical) or coiling (endovascular) within 72 hours. Complications: rebleeding, vasospasm (days 4-14), hydrocephalus, seizures.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040030-0000-0000-0000-000000000030', 'key_points', 6, 'Key Points', 'Thunderclap headache is classic. CT then LP if negative. 85% from aneurysms. Nimodipine for vasospasm prevention. Early aneurysm securing. Vasospasm peaks days 4-14.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040030-0000-0000-0000-000000000030', 1, 'Most common cause of SAH:', 'Trauma', 'Ruptured aneurysm', 'AVM', 'Hypertension', 'Coagulopathy', 'B', '85% of SAH from ruptured aneurysms'),
('d0040030-0000-0000-0000-000000000030', 2, 'Classic SAH presentation:', 'Gradual headache', 'Thunderclap headache', 'Focal weakness only', 'Seizure only', 'Confusion', 'B', 'Thunderclap headache is classic for SAH'),
('d0040030-0000-0000-0000-000000000030', 3, 'If CT is negative for SAH, next step:', 'Discharge', 'MRI brain', 'Lumbar puncture', 'Angiography', 'Repeat CT', 'C', 'LP if CT negative to look for xanthochromia'),
('d0040030-0000-0000-0000-000000000030', 4, 'Drug to prevent vasospasm:', 'Aspirin', 'Nimodipine', 'Mannitol', 'Dexamethasone', 'Phenytoin', 'B', 'Nimodipine prevents cerebral vasospasm'),
('d0040030-0000-0000-0000-000000000030', 5, 'Peak time for vasospasm after SAH:', 'Day 1', 'Days 4-14', 'Day 21', 'Week 4', 'Immediate', 'B', 'Vasospasm typically peaks days 4-14');
