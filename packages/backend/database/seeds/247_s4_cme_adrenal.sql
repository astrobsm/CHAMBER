-- CME Article 47: Adrenal Tumors - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040047-0000-0000-0000-000000000047', 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004', 'Adrenal Tumors and Adrenalectomy', 'Surgical Management', 'Review of adrenal tumors covering pheochromocytoma, adenomas, and carcinoma with surgical principles.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040047-0000-0000-0000-000000000047', 'introduction', 1, 'Introduction', 'Adrenal tumors: functioning or non-functioning. Incidentalomas common (4% on CT). Workup: functionality, size, imaging characteristics. Key tumors: pheochromocytoma, aldosteronoma, cortisol-producing adenoma, adrenocortical carcinoma.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040047-0000-0000-0000-000000000047', 'learning_objectives', 2, 'Learning Objectives', '1. Workup adrenal incidentaloma\n2. Recognize pheochromocytoma\n3. Diagnose primary hyperaldosteronism\n4. Identify malignancy features\n5. Prepare for adrenalectomy\n6. Manage perioperative care\n7. Know complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040047-0000-0000-0000-000000000047', 'content', 3, 'Pheochromocytoma', 'Catecholamine-producing tumor. Rule of 10s: 10% bilateral, 10% extra-adrenal, 10% malignant, 10% familial. Symptoms: HTN (paroxysmal), headache, sweating, palpitations. Diagnosis: 24-hour urine metanephrines. Alpha-blockade before surgery.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040047-0000-0000-0000-000000000047', 'content', 4, 'Other Tumors', 'Aldosteronoma (Conn syndrome): HTN, hypokalemia, metabolic alkalosis. Cushing syndrome: cortisol excess. Adrenocortical carcinoma: large (>6cm), irregular, poor prognosis. Non-functioning: observe if <4cm, homogeneous.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040047-0000-0000-0000-000000000047', 'content', 5, 'Surgery', 'Laparoscopic adrenalectomy: standard for benign <6cm. Open: large tumors, suspected malignancy. Pheochromocytoma: alpha-blockade (phenoxybenzamine) 10-14 days before. Volume expansion. Avoid tumor manipulation. Post-op: monitor for hypotension.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040047-0000-0000-0000-000000000047', 'key_points', 6, 'Key Points', 'All incidentalomas need functionality testing. Rule of 10s for pheochromocytoma. Alpha-blockade before beta-blockade. Conn = HTN + hypokalemia. Malignancy: large, irregular, local invasion. Laparoscopic for benign tumors.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040047-0000-0000-0000-000000000047', 1, 'First-line blockade for pheochromocytoma:', 'Beta-blocker', 'Alpha-blocker', 'Calcium channel blocker', 'ACE inhibitor', 'Diuretic', 'B', 'Alpha-blockade before beta-blockade'),
('d0040047-0000-0000-0000-000000000047', 2, 'Conn syndrome characterized by:', 'Hyperkalemia', 'Hypokalemia with HTN', 'Hypoglycemia', 'Hypercalcemia', 'Hypotension', 'B', 'Conn syndrome: HTN + hypokalemia'),
('d0040047-0000-0000-0000-000000000047', 3, 'Concerning size for adrenal malignancy:', '>2 cm', '>4 cm', '>6 cm', '>10 cm', 'Any size', 'C', 'Tumors >6cm higher risk of malignancy'),
('d0040047-0000-0000-0000-000000000047', 4, 'Diagnosis of pheochromocytoma:', 'Serum cortisol', 'Serum aldosterone', '24-hr urine metanephrines', 'Fasting glucose', 'Serum calcium', 'C', '24-hour urine metanephrines for diagnosis'),
('d0040047-0000-0000-0000-000000000047', 5, 'Rule of 10s applies to:', 'Aldosteronoma', 'Pheochromocytoma', 'Adrenocortical carcinoma', 'Adenoma', 'All adrenal tumors', 'B', 'Rule of 10s describes pheochromocytoma');
