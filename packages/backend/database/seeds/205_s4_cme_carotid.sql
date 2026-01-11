-- CME Article 5: Carotid Artery Disease - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040005-0000-0000-0000-000000000005', 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004', 'Carotid Artery Disease and Stroke Prevention', 'Evaluation and Management of Extracranial Carotid Stenosis', 'Review of carotid artery disease covering pathophysiology, diagnosis, and treatment options including carotid endarterectomy and carotid artery stenting.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040005-0000-0000-0000-000000000005', 'introduction', 1, 'Introduction', 'Carotid artery disease causes 15-20% of ischemic strokes. Atherosclerosis at carotid bifurcation most common. Risk factors: hypertension, smoking, diabetes, hyperlipidemia, age. Symptomatic vs asymptomatic disease determines management. Annual stroke risk: asymptomatic 1-2%, symptomatic 13%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040005-0000-0000-0000-000000000005', 'learning_objectives', 2, 'Learning Objectives', '1. Describe carotid artery anatomy\n2. Identify stroke risk factors\n3. Differentiate TIA from stroke\n4. Apply diagnostic modalities\n5. Determine indications for intervention\n6. Compare CEA vs CAS\n7. Manage perioperative complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040005-0000-0000-0000-000000000005', 'content', 3, 'Clinical Presentation', 'Asymptomatic: discovered on screening, bruit. Symptomatic: TIA (symptoms <24h), stroke (permanent deficit). Symptoms ipsilateral to lesion: amaurosis fugax (monocular blindness), hemiparesis, hemisensory loss, aphasia (dominant hemisphere). Posterior circulation not affected by carotid disease.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040005-0000-0000-0000-000000000005', 'content', 4, 'Diagnosis', 'Duplex ultrasound: first-line, peak systolic velocity >125 cm/s suggests >50% stenosis, >230 cm/s suggests >70%. CTA: anatomic detail, aortic arch. MRA: no contrast, may overestimate. Catheter angiography: gold standard but invasive. NASCET method for calculating stenosis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040005-0000-0000-0000-000000000005', 'content', 5, 'Treatment', 'Medical therapy for all: antiplatelet, statin, BP control, smoking cessation. CEA indications: symptomatic >50%, asymptomatic >70% with life expectancy >5 years. CAS: alternative for high surgical risk, post-radiation, recurrent stenosis. CEA within 2 weeks of symptoms optimal.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040005-0000-0000-0000-000000000005', 'key_points', 6, 'Key Points', 'Carotid disease causes 15-20% of strokes. Duplex ultrasound first-line. Symptomatic >50% benefit from CEA. Asymptomatic >70% may benefit if life expectancy >5 years. CEA within 2 weeks of symptoms. Medical therapy for all patients.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040005-0000-0000-0000-000000000005', 1, 'Carotid disease causes what percentage of strokes?', '5-10%', '15-20%', '30-40%', '50-60%', '70-80%', 'B', 'Carotid disease causes 15-20% of ischemic strokes'),
('d0040005-0000-0000-0000-000000000005', 2, 'First-line imaging for carotid stenosis:', 'CT angiography', 'MR angiography', 'Duplex ultrasound', 'Catheter angiography', 'Plain radiograph', 'C', 'Duplex ultrasound is first-line for carotid evaluation'),
('d0040005-0000-0000-0000-000000000005', 3, 'CEA indicated for symptomatic stenosis exceeding:', '30%', '50%', '60%', '70%', '80%', 'B', 'CEA indicated for symptomatic stenosis >50%'),
('d0040005-0000-0000-0000-000000000005', 4, 'Optimal timing for CEA after TIA:', '24 hours', '2 weeks', '6 weeks', '3 months', '6 months', 'B', 'CEA within 2 weeks of symptoms provides greatest benefit'),
('d0040005-0000-0000-0000-000000000005', 5, 'Amaurosis fugax affects:', 'Both eyes', 'One eye ipsilateral to lesion', 'Contralateral eye', 'Peripheral vision only', 'Central vision only', 'B', 'Amaurosis fugax is monocular blindness ipsilateral to carotid lesion');
