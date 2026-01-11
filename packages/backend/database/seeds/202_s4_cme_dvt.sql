-- CME Article 2: Deep Vein Thrombosis - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040002-0000-0000-0000-000000000002', 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004', 'Deep Vein Thrombosis and Pulmonary Embolism', 'Diagnosis and Management of Venous Thromboembolism', 'Comprehensive review of DVT and PE covering pathophysiology, risk factors, diagnosis, and treatment including anticoagulation and thrombolysis.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040002-0000-0000-0000-000000000002', 'introduction', 1, 'Introduction', 'Venous thromboembolism (VTE) includes DVT and PE. Virchow triad: stasis, endothelial injury, hypercoagulability. Risk factors: surgery, immobilization, malignancy, pregnancy, OCPs, thrombophilia. Annual incidence 1-2 per 1000. PE mortality 30% if untreated, 2-8% if treated.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040002-0000-0000-0000-000000000002', 'learning_objectives', 2, 'Learning Objectives', '1. Describe Virchow triad\n2. Identify VTE risk factors\n3. Recognize clinical presentation\n4. Apply Wells criteria\n5. Select appropriate diagnostic tests\n6. Initiate anticoagulation\n7. Identify indications for thrombolysis\n8. Implement VTE prophylaxis');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040002-0000-0000-0000-000000000002', 'content', 3, 'Clinical Presentation', 'DVT: leg swelling, pain, warmth, erythema, palpable cord, Homans sign (unreliable). PE: dyspnea, pleuritic chest pain, hemoptysis, tachycardia, hypoxia. Massive PE: hypotension, syncope, RV failure. Wells DVT score: active cancer, paralysis, bedridden >3 days, localized tenderness, entire leg swollen, calf >3cm, pitting edema, collateral veins.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040002-0000-0000-0000-000000000002', 'content', 4, 'Diagnosis', 'DVT: D-dimer (negative excludes in low probability), compression ultrasound (gold standard). PE: D-dimer, CT pulmonary angiography (gold standard), V/Q scan if contrast contraindicated, echocardiogram for RV strain. Wells PE score determines pretest probability.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040002-0000-0000-0000-000000000002', 'content', 5, 'Treatment', 'Anticoagulation: LMWH, fondaparinux, UFH, DOACs (rivaroxaban, apixaban). Duration: provoked 3 months, unprovoked 6+ months, recurrent indefinite. Thrombolysis for massive PE with hemodynamic instability. IVC filter if anticoagulation contraindicated. Compression stockings for post-thrombotic syndrome.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040002-0000-0000-0000-000000000002', 'key_points', 6, 'Key Points', 'Virchow triad: stasis, injury, hypercoagulability. Wells criteria guide testing. D-dimer excludes VTE in low probability. Ultrasound for DVT, CTPA for PE. DOACs preferred for most patients. Thrombolysis for massive PE with shock.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040002-0000-0000-0000-000000000002', 1, 'Virchow triad includes all EXCEPT:', 'Stasis', 'Endothelial injury', 'Hypercoagulability', 'Hypoxia', 'All are included', 'D', 'Virchow triad: stasis, endothelial injury, hypercoagulability'),
('d0040002-0000-0000-0000-000000000002', 2, 'Gold standard for DVT diagnosis:', 'D-dimer', 'CT venography', 'Compression ultrasound', 'MR venography', 'Clinical exam', 'C', 'Compression ultrasound is gold standard for DVT'),
('d0040002-0000-0000-0000-000000000002', 3, 'Duration of anticoagulation for unprovoked DVT:', '2 weeks', '6 weeks', '3 months', '6 months or longer', '2 weeks', 'D', 'Unprovoked VTE requires 6+ months anticoagulation'),
('d0040002-0000-0000-0000-000000000002', 4, 'Indication for systemic thrombolysis in PE:', 'All PE patients', 'Submassive PE', 'Massive PE with shock', 'Chronic PE', 'DVT extension', 'C', 'Thrombolysis indicated for massive PE with hemodynamic instability'),
('d0040002-0000-0000-0000-000000000002', 5, 'Wells criteria component for DVT:', 'Chest pain', 'Dyspnea', 'Calf swelling >3cm', 'Hemoptysis', 'Tachycardia', 'C', 'Calf >3cm compared to asymptomatic leg is Wells DVT criterion');
