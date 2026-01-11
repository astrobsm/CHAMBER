-- CME Article 3: Varicose Veins - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040003-0000-0000-0000-000000000003', 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004', 'Varicose Veins and Chronic Venous Insufficiency', 'Pathophysiology, Classification, and Treatment Options', 'Review of varicose veins and CVI covering venous anatomy, pathophysiology, CEAP classification, and treatment modalities including compression, sclerotherapy, and surgical options.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040003-0000-0000-0000-000000000003', 'introduction', 1, 'Introduction', 'Varicose veins affect 25-30% of adults. Chronic venous insufficiency results from valve incompetence or obstruction. Risk factors: age, female sex, pregnancy, obesity, prolonged standing, family history. Complications include edema, skin changes, ulceration, and bleeding.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040003-0000-0000-0000-000000000003', 'learning_objectives', 2, 'Learning Objectives', '1. Describe venous anatomy and physiology\n2. Explain pathophysiology of venous reflux\n3. Apply CEAP classification\n4. Perform clinical and duplex evaluation\n5. Select appropriate treatment modality\n6. Manage venous ulcers\n7. Understand compression therapy');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040003-0000-0000-0000-000000000003', 'content', 3, 'CEAP Classification', 'Clinical: C0=no visible disease, C1=telangiectasia/reticular, C2=varicose veins, C3=edema, C4a=pigmentation/eczema, C4b=lipodermatosclerosis, C5=healed ulcer, C6=active ulcer. Etiology: primary, secondary, congenital. Anatomy: superficial, perforator, deep. Pathophysiology: reflux, obstruction, both.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040003-0000-0000-0000-000000000003', 'content', 4, 'Diagnosis', 'Clinical exam: standing position, varicosity distribution, skin changes, ulceration. Trendelenburg test, tap test. Duplex ultrasound: reflux >0.5 seconds abnormal. Assess great saphenous, small saphenous, perforators, deep veins. Venography rarely needed.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040003-0000-0000-0000-000000000003', 'content', 5, 'Treatment', 'Conservative: compression stockings 20-30 mmHg, leg elevation, exercise. Sclerotherapy for telangiectasia and small varicosities. Endovenous ablation (radiofrequency or laser) for saphenous reflux - preferred over stripping. Phlebectomy for branch varicosities. Venous ulcer: compression is cornerstone.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040003-0000-0000-0000-000000000003', 'key_points', 6, 'Key Points', 'CEAP classifies venous disease. Duplex ultrasound is diagnostic standard. Reflux >0.5 seconds is abnormal. Compression therapy for all CVI. Endovenous ablation preferred for saphenous reflux. Compression cornerstone of ulcer management.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040003-0000-0000-0000-000000000003', 1, 'CEAP C6 represents:', 'No visible disease', 'Varicose veins', 'Edema', 'Healed ulcer', 'Active ulcer', 'E', 'C6 = active venous ulcer'),
('d0040003-0000-0000-0000-000000000003', 2, 'Venous reflux abnormal if duration exceeds:', '0.1 seconds', '0.3 seconds', '0.5 seconds', '1.0 seconds', '2.0 seconds', 'C', 'Reflux >0.5 seconds is abnormal'),
('d0040003-0000-0000-0000-000000000003', 3, 'First-line treatment for chronic venous insufficiency:', 'Surgery', 'Sclerotherapy', 'Compression stockings', 'Endovenous ablation', 'Anticoagulation', 'C', 'Compression therapy is first-line for CVI'),
('d0040003-0000-0000-0000-000000000003', 4, 'Preferred treatment for great saphenous reflux:', 'Stripping', 'Endovenous ablation', 'Sclerotherapy alone', 'Compression only', 'No treatment', 'B', 'Endovenous ablation preferred over stripping'),
('d0040003-0000-0000-0000-000000000003', 5, 'Cornerstone of venous ulcer management:', 'Antibiotics', 'Skin grafting', 'Compression therapy', 'Surgery', 'Bed rest', 'C', 'Compression is cornerstone of venous ulcer treatment');
