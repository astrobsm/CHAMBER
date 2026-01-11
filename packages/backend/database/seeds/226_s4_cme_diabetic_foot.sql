-- CME Article 26: Gangrene and Diabetic Foot - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040026-0000-0000-0000-000000000026', 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004', 'Diabetic Foot and Gangrene', 'Prevention, Diagnosis, and Management', 'Review of diabetic foot complications covering neuropathy, infection, Wagner classification, and management including debridement and amputation.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040026-0000-0000-0000-000000000026', 'introduction', 1, 'Introduction', 'Diabetic foot ulcers affect 15-25% of diabetics. Leading cause of non-traumatic amputation. Pathophysiology: neuropathy (sensory, motor, autonomic), vascular disease, immunopathy. 50% of ulcers become infected. 20% require amputation.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040026-0000-0000-0000-000000000026', 'learning_objectives', 2, 'Learning Objectives', '1. Understand diabetic foot pathophysiology\n2. Perform foot examination\n3. Apply Wagner classification\n4. Assess vascular status\n5. Manage diabetic foot infections\n6. Determine debridement vs amputation\n7. Implement prevention');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040026-0000-0000-0000-000000000026', 'content', 3, 'Wagner Classification', 'Grade 0: intact skin, at risk. Grade 1: superficial ulcer. Grade 2: deep ulcer to tendon/bone. Grade 3: deep ulcer with abscess/osteomyelitis. Grade 4: localized gangrene (forefoot). Grade 5: extensive gangrene (whole foot).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040026-0000-0000-0000-000000000026', 'content', 4, 'Assessment', 'Vascular: pulses, ABI, toe pressure, TcPO2. Neuropathy: 10g monofilament, vibration, reflexes. Infection: probe-to-bone (osteomyelitis), X-ray, MRI. Cultures: deep tissue, not swabs. Common organisms: Staph, Strep, anaerobes, Pseudomonas.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040026-0000-0000-0000-000000000026', 'content', 5, 'Management', 'Offloading: essential for healing. Debridement: sharp, remove necrotic tissue. Antibiotics: based on severity and cultures. Revascularization: if PAD present and healing potential. Amputation: extensive necrosis, uncontrolled sepsis, non-reconstructable vascular disease.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040026-0000-0000-0000-000000000026', 'key_points', 6, 'Key Points', 'Neuropathy + PAD + immunopathy = triad. Wagner grades ulcer depth. Probe-to-bone suggests osteomyelitis. Offloading essential. Revascularize if possible. Amputation when limb-threatening sepsis.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040026-0000-0000-0000-000000000026', 1, 'Wagner Grade 3 indicates:', 'Superficial ulcer', 'Deep ulcer', 'Deep ulcer with abscess/osteomyelitis', 'Localized gangrene', 'Extensive gangrene', 'C', 'Grade 3 = deep ulcer with abscess or osteomyelitis'),
('d0040026-0000-0000-0000-000000000026', 2, 'Probe-to-bone test suggests:', 'Neuropathy', 'PAD', 'Osteomyelitis', 'Cellulitis', 'Abscess', 'C', 'Positive probe-to-bone suggests osteomyelitis'),
('d0040026-0000-0000-0000-000000000026', 3, 'Leading cause of non-traumatic amputation:', 'PAD alone', 'Diabetes', 'Trauma', 'Cancer', 'Infection', 'B', 'Diabetes is leading cause of non-traumatic amputation'),
('d0040026-0000-0000-0000-000000000026', 4, 'Most important intervention for diabetic foot ulcer:', 'Antibiotics', 'Debridement', 'Offloading', 'Revascularization', 'Amputation', 'C', 'Offloading is essential for healing'),
('d0040026-0000-0000-0000-000000000026', 5, 'Test for protective sensation:', 'ABI', '10g monofilament', 'TcPO2', 'Doppler', 'X-ray', 'B', '10g monofilament tests protective sensation');
