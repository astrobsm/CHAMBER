-- CME Article 25: Spinal Injuries - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040025-0000-0000-0000-000000000025', 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004', 'Spinal Cord Injuries', 'Assessment and Initial Management', 'Review of spinal cord injuries covering immobilization, ASIA classification, spinal shock, and management principles.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040025-0000-0000-0000-000000000025', 'introduction', 1, 'Introduction', 'Spinal cord injury (SCI) affects 250,000-500,000 annually worldwide. Most common: cervical (55%), then thoracic, lumbar. Causes: MVA (most common), falls, violence, sports. Mean age increasing. Complete vs incomplete injury determines prognosis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040025-0000-0000-0000-000000000025', 'learning_objectives', 2, 'Learning Objectives', '1. Immobilize spine properly\n2. Perform neurological assessment\n3. Apply ASIA classification\n4. Recognize spinal shock\n5. Identify incomplete syndromes\n6. Manage acute SCI\n7. Prevent secondary injury');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040025-0000-0000-0000-000000000025', 'content', 3, 'ASIA Classification', 'ASIA Impairment Scale: A-Complete (no motor/sensory below), B-Sensory incomplete (sensory but no motor), C-Motor incomplete (motor <3), D-Motor incomplete (motor ≥3), E-Normal. Sacral sparing indicates incomplete injury. Key muscle groups and dermatomes tested.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040025-0000-0000-0000-000000000025', 'content', 4, 'Incomplete Syndromes', 'Central cord: upper > lower extremity weakness, elderly hyperextension. Anterior cord: motor loss, pain/temp loss, preserved proprioception. Brown-Sequard: ipsilateral motor/proprioception loss, contralateral pain/temp loss. Cauda equina: bowel/bladder dysfunction, saddle anesthesia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040025-0000-0000-0000-000000000025', 'content', 5, 'Management', 'Immobilization: cervical collar, logroll, backboard. Avoid hypotension (MAP >85 for first 7 days). Avoid hypoxia. Methylprednisolone controversial, not routine. Early decompression (<24 hours) may improve outcomes. DVT prophylaxis. Respiratory support for high cervical.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040025-0000-0000-0000-000000000025', 'key_points', 6, 'Key Points', 'Immobilize all trauma patients. ASIA scale for classification. Sacral sparing = incomplete. Maintain MAP >85. Early decompression when indicated. Central cord most common incomplete syndrome.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040025-0000-0000-0000-000000000025', 1, 'ASIA A indicates:', 'Sensory incomplete', 'Motor incomplete', 'Complete injury', 'Normal', 'Cannot classify', 'C', 'ASIA A = complete (no motor or sensory below level)'),
('d0040025-0000-0000-0000-000000000025', 2, 'Sacral sparing indicates:', 'Complete injury', 'Incomplete injury', 'Spinal shock', 'Cauda equina', 'Conus medullaris', 'B', 'Sacral sparing indicates incomplete injury'),
('d0040025-0000-0000-0000-000000000025', 3, 'Central cord syndrome affects:', 'Lower > upper extremity', 'Upper > lower extremity', 'One side only', 'Posterior columns only', 'Anterior cord only', 'B', 'Central cord: upper extremity weakness > lower'),
('d0040025-0000-0000-0000-000000000025', 4, 'Brown-Sequard syndrome features:', 'Bilateral motor loss', 'Ipsilateral motor, contralateral pain/temp loss', 'Complete sensory loss', 'Saddle anesthesia', 'Anterior cord loss', 'B', 'Brown-Sequard: hemisection syndrome'),
('d0040025-0000-0000-0000-000000000025', 5, 'MAP goal in acute SCI:', '>65 mmHg', '>75 mmHg', '>85 mmHg', '>95 mmHg', '>105 mmHg', 'C', 'MAP goal >85 mmHg for first 7 days');
