-- CME Article 38: Surgical Critical Care - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040038-0000-0000-0000-000000000038', 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004', 'Surgical Critical Care Essentials', 'ICU Management for Surgical Patients', 'Review of critical care principles covering monitoring, ventilation, sepsis, and organ support in surgical patients.', 'UNTH Surgery Department', 35, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040038-0000-0000-0000-000000000038', 'introduction', 1, 'Introduction', 'Surgical critical care: management of complex post-operative and trauma patients. Requires understanding of physiology, monitoring, and organ support. Goal-directed therapy, evidence-based bundles, and teamwork essential.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040038-0000-0000-0000-000000000038', 'learning_objectives', 2, 'Learning Objectives', '1. Monitor critically ill patients\n2. Manage mechanical ventilation\n3. Recognize and treat sepsis\n4. Support failing organs\n5. Prevent ICU complications\n6. Understand hemodynamic monitoring\n7. Know weaning criteria');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040038-0000-0000-0000-000000000038', 'content', 3, 'Monitoring', 'Basic: HR, BP, SpO2, temperature, urine output. Arterial line for continuous BP. Central line for CVP. Pulmonary artery catheter: cardiac output, wedge pressure. Lactate: tissue perfusion marker. ScvO2: oxygen delivery adequacy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040038-0000-0000-0000-000000000038', 'content', 4, 'Ventilation', 'Indications: respiratory failure, airway protection, decreased consciousness. Modes: AC, SIMV, PSV. Lung-protective: low tidal volume (6ml/kg IBW), plateau <30. ARDS: PEEP optimization, prone positioning. Weaning: spontaneous breathing trial.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040038-0000-0000-0000-000000000038', 'content', 5, 'Sepsis Management', 'Sepsis-3: infection + organ dysfunction (SOFA). Hour-1 bundle: cultures, lactate, antibiotics, fluids, vasopressors if needed. Target MAP >65. Norepinephrine first-line vasopressor. Source control essential.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040038-0000-0000-0000-000000000038', 'key_points', 6, 'Key Points', 'Early goal-directed therapy. Lung-protective ventilation. Hour-1 bundle for sepsis. Norepinephrine first-line pressor. Lactate guides resuscitation. Source control essential.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040038-0000-0000-0000-000000000038', 1, 'First-line vasopressor in septic shock:', 'Dopamine', 'Norepinephrine', 'Epinephrine', 'Vasopressin', 'Dobutamine', 'B', 'Norepinephrine is first-line for septic shock'),
('d0040038-0000-0000-0000-000000000038', 2, 'Lung-protective tidal volume:', '4 ml/kg', '6 ml/kg', '10 ml/kg', '15 ml/kg', '20 ml/kg', 'B', 'Lung-protective uses 6 ml/kg ideal body weight'),
('d0040038-0000-0000-0000-000000000038', 3, 'Target MAP in sepsis:', '>50 mmHg', '>65 mmHg', '>80 mmHg', '>100 mmHg', '>120 mmHg', 'B', 'Target MAP >65 mmHg in sepsis'),
('d0040038-0000-0000-0000-000000000038', 4, 'Marker of tissue perfusion:', 'Hemoglobin', 'Lactate', 'Creatinine', 'Bilirubin', 'Albumin', 'B', 'Lactate reflects tissue perfusion'),
('d0040038-0000-0000-0000-000000000038', 5, 'ARDS management includes:', 'High tidal volumes', 'Low PEEP', 'Prone positioning', 'Fluid overload', 'Hyperventilation', 'C', 'Prone positioning improves oxygenation in ARDS');
