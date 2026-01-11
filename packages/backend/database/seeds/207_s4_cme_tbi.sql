-- CME Article 7: Traumatic Brain Injury - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040007-0000-0000-0000-000000000007', 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004', 'Traumatic Brain Injury', 'Assessment, Classification, and Management', 'Review of TBI covering GCS, classification, CT findings, ICP management, and surgical indications.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040007-0000-0000-0000-000000000007', 'introduction', 1, 'Introduction', 'TBI is leading cause of death in young adults. Classification by GCS: mild 13-15, moderate 9-12, severe 3-8. Primary injury at impact, secondary injury from hypoxia, hypotension, edema. Goals: prevent secondary injury, control ICP, maintain cerebral perfusion.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040007-0000-0000-0000-000000000007', 'learning_objectives', 2, 'Learning Objectives', '1. Apply Glasgow Coma Scale\n2. Classify TBI severity\n3. Identify CT indications\n4. Recognize hemorrhage types\n5. Manage elevated ICP\n6. Determine surgical indications\n7. Understand herniation syndromes');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040007-0000-0000-0000-000000000007', 'content', 3, 'Glasgow Coma Scale', 'Eye opening: spontaneous 4, to voice 3, to pain 2, none 1. Verbal: oriented 5, confused 4, inappropriate 3, incomprehensible 2, none 1. Motor: obeys 6, localizes 5, withdraws 4, flexion 3, extension 2, none 1. Total 3-15. Intubated patients: record as E_VtM_.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040007-0000-0000-0000-000000000007', 'content', 4, 'Hemorrhage Types', 'Epidural: lens-shaped, arterial (middle meningeal), lucid interval, surgical emergency. Subdural: crescent-shaped, venous (bridging veins), elderly/alcoholics. Subarachnoid: blood in sulci, trauma or aneurysm. Intracerebral: contusion or hemorrhage within parenchyma.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040007-0000-0000-0000-000000000007', 'content', 5, 'ICP Management', 'Normal ICP <20 mmHg. CPP = MAP - ICP, target >60. Steps: head elevation 30°, sedation, osmotherapy (mannitol 0.5-1g/kg, hypertonic saline), hyperventilation (temporary), decompressive craniectomy. Cushing triad: hypertension, bradycardia, irregular respiration.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040007-0000-0000-0000-000000000007', 'key_points', 6, 'Key Points', 'GCS classifies severity: mild 13-15, moderate 9-12, severe 3-8. Epidural = lens-shaped, lucid interval. Subdural = crescent-shaped. Normal ICP <20 mmHg, CPP >60. Prevent secondary injury: avoid hypoxia, hypotension.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040007-0000-0000-0000-000000000007', 1, 'GCS score for severe TBI:', '13-15', '9-12', '3-8', '1-3', '8-12', 'C', 'Severe TBI defined as GCS 3-8'),
('d0040007-0000-0000-0000-000000000007', 2, 'Classic epidural hematoma appearance on CT:', 'Crescent-shaped', 'Lens-shaped (biconvex)', 'Diffuse', 'Star-shaped', 'Ring-enhancing', 'B', 'Epidural is lens-shaped (biconvex)'),
('d0040007-0000-0000-0000-000000000007', 3, 'Target cerebral perfusion pressure:', '>40 mmHg', '>50 mmHg', '>60 mmHg', '>70 mmHg', '>80 mmHg', 'C', 'CPP target >60 mmHg'),
('d0040007-0000-0000-0000-000000000007', 4, 'Cushing triad includes all EXCEPT:', 'Hypertension', 'Bradycardia', 'Irregular respiration', 'Tachycardia', 'Widened pulse pressure', 'D', 'Cushing triad: HTN, bradycardia, irregular breathing'),
('d0040007-0000-0000-0000-000000000007', 5, 'Most common artery in epidural hematoma:', 'Anterior cerebral', 'Middle cerebral', 'Middle meningeal', 'Posterior cerebral', 'Basilar', 'C', 'Middle meningeal artery laceration causes epidural hematoma');
