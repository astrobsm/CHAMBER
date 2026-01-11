-- CME Article 31: Hydrocephalus - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040031-0000-0000-0000-000000000031', 'c4000027-0000-0000-0000-000000000027', 'a0000004-0000-0000-0000-000000000004', 'Hydrocephalus: Principles and Management', 'Understanding CSF Dynamics', 'Review of hydrocephalus covering types, causes, presentation, and surgical management options.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040031-0000-0000-0000-000000000031', 'introduction', 1, 'Introduction', 'Hydrocephalus: accumulation of CSF causing ventricular dilatation. Communicating: CSF reaches subarachnoid space (absorption problem). Non-communicating (obstructive): blockage within ventricular system. CSF production: 500ml/day, choroid plexus.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040031-0000-0000-0000-000000000031', 'learning_objectives', 2, 'Learning Objectives', '1. Understand CSF physiology\n2. Distinguish communicating from obstructive\n3. Recognize clinical features by age\n4. Interpret imaging\n5. Know surgical options\n6. Manage shunt complications\n7. Understand NPH');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040031-0000-0000-0000-000000000031', 'content', 3, 'Causes and Types', 'Obstructive: aqueduct stenosis, tumors, Chiari malformation. Communicating: post-hemorrhagic, post-meningitis, SAH. Normal pressure hydrocephalus (NPH): elderly, triad of dementia, gait disturbance, incontinence (wet, wobbly, wacky).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040031-0000-0000-0000-000000000031', 'content', 4, 'Presentation', 'Infants: enlarging head, bulging fontanelle, sunset sign (eyes), irritability. Children/adults: headache, vomiting, papilledema, altered consciousness. NPH: gait disturbance earliest, urinary urgency, dementia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040031-0000-0000-0000-000000000031', 'content', 5, 'Management', 'Imaging: CT/MRI shows ventricular dilatation. Acute: EVD (external ventricular drain). Definitive: VP shunt (ventriculoperitoneal), VA shunt. ETV: endoscopic third ventriculostomy for obstructive type. Shunt complications: infection, malfunction, overdrainage.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040031-0000-0000-0000-000000000031', 'key_points', 6, 'Key Points', 'Communicating vs obstructive distinction important. Infants: enlarging head. NPH: wet, wobbly, wacky triad. VP shunt most common procedure. ETV for obstructive type. Watch for shunt malfunction.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040031-0000-0000-0000-000000000031', 1, 'Classic triad of NPH:', 'Headache, vomiting, papilledema', 'Dementia, gait, incontinence', 'Fever, neck stiffness, photophobia', 'Diplopia, ataxia, weakness', 'Seizures, confusion, coma', 'B', 'NPH triad: dementia, gait disturbance, incontinence'),
('d0040031-0000-0000-0000-000000000031', 2, 'Daily CSF production:', '50 ml', '150 ml', '500 ml', '1000 ml', '2000 ml', 'C', 'CSF production approximately 500ml/day'),
('d0040031-0000-0000-0000-000000000031', 3, 'Sunset sign seen in:', 'Infant hydrocephalus', 'Adult hydrocephalus', 'NPH', 'Meningitis', 'Brain tumor', 'A', 'Sunset sign is seen in infant hydrocephalus'),
('d0040031-0000-0000-0000-000000000031', 4, 'ETV is best for:', 'Communicating hydrocephalus', 'Obstructive hydrocephalus', 'NPH', 'Post-hemorrhagic', 'All types', 'B', 'ETV best for obstructive hydrocephalus'),
('d0040031-0000-0000-0000-000000000031', 5, 'Most common shunt placement:', 'Ventriculoperitoneal', 'Ventriculoatrial', 'Ventriculopleural', 'Lumboperitoneal', 'Subdural', 'A', 'VP shunt is most commonly used');
