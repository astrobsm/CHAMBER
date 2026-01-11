-- CME Article 29: Brain Tumors - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040029-0000-0000-0000-000000000029', 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004', 'Brain Tumors: A Surgical Perspective', 'Classification and Management', 'Overview of intracranial tumors covering primary vs metastatic, presentation, diagnosis, and surgical management principles.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040029-0000-0000-0000-000000000029', 'introduction', 1, 'Introduction', 'Brain tumors: primary or metastatic. Most common primary: gliomas, meningiomas. Metastatic more common overall (lung, breast, melanoma). Presentation depends on location and growth rate.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040029-0000-0000-0000-000000000029', 'learning_objectives', 2, 'Learning Objectives', '1. Classify brain tumors\n2. Recognize presentations\n3. Interpret imaging\n4. Understand surgical approaches\n5. Manage raised ICP\n6. Know prognosis by type\n7. Plan multimodal treatment');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040029-0000-0000-0000-000000000029', 'content', 3, 'Classification', 'Gliomas: astrocytoma, oligodendroglioma, glioblastoma (grade IV, worst prognosis). Meningioma: dura-based, mostly benign. Pituitary adenoma. Schwannoma (acoustic neuroma). Medulloblastoma (children). Metastatic: multiple lesions common.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040029-0000-0000-0000-000000000029', 'content', 4, 'Presentation', 'Raised ICP: headache (worse morning), vomiting, papilledema. Focal deficits based on location. Seizures (30-50%). Personality changes (frontal). Visual disturbance. Cushing triad: hypertension, bradycardia, irregular respiration (late sign).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040029-0000-0000-0000-000000000029', 'content', 5, 'Management', 'Imaging: MRI with contrast (gold standard). Manage ICP: dexamethasone, mannitol, elevation. Surgery: resection, biopsy, debulking. Adjuvant: radiation, chemotherapy (temozolomide for GBM). Palliative care when indicated.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040029-0000-0000-0000-000000000029', 'key_points', 6, 'Key Points', 'Metastatic more common overall. GBM is most aggressive primary. Morning headache suggests raised ICP. MRI is imaging of choice. Steroids for edema. Multimodal therapy for malignant tumors.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040029-0000-0000-0000-000000000029', 1, 'Most common brain tumor overall:', 'Glioblastoma', 'Meningioma', 'Metastatic', 'Astrocytoma', 'Pituitary adenoma', 'C', 'Metastatic tumors are most common overall'),
('d0040029-0000-0000-0000-000000000029', 2, 'Most aggressive primary brain tumor:', 'Meningioma', 'Acoustic neuroma', 'Glioblastoma', 'Pituitary adenoma', 'Astrocytoma grade I', 'C', 'GBM is most aggressive primary brain tumor'),
('d0040029-0000-0000-0000-000000000029', 3, 'Cushing triad includes all EXCEPT:', 'Hypertension', 'Bradycardia', 'Tachycardia', 'Irregular respiration', 'All above', 'C', 'Cushing triad: HTN, bradycardia, irregular breathing'),
('d0040029-0000-0000-0000-000000000029', 4, 'Best imaging for brain tumors:', 'CT without contrast', 'CT with contrast', 'MRI with contrast', 'X-ray skull', 'Ultrasound', 'C', 'MRI with contrast is gold standard'),
('d0040029-0000-0000-0000-000000000029', 5, 'Drug for brain tumor edema:', 'Dexamethasone', 'Aspirin', 'Chemotherapy', 'Antibiotics', 'Mannitol only', 'A', 'Dexamethasone for vasogenic edema');
