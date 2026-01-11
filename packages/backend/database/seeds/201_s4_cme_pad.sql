-- CME Article 1: Peripheral Arterial Disease - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040001-0000-0000-0000-000000000001', 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004', 'Peripheral Arterial Disease', 'Diagnosis and Management of Lower Extremity PAD', 'Comprehensive review of PAD covering pathophysiology, clinical presentation, diagnostic evaluation, and treatment options.', 'UNTH Surgery Department', 35, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040001-0000-0000-0000-000000000001', 'introduction', 1, 'Introduction', 'Peripheral arterial disease (PAD) is atherosclerotic occlusive disease of the lower extremities affecting 12-20% of adults over 60 years. Risk factors include smoking (strongest - 4x risk), diabetes, hypertension, and hyperlipidemia. Natural history: 70-80% stable, 10-20% worsen, 5-10% develop critical limb ischemia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040001-0000-0000-0000-000000000001', 'learning_objectives', 2, 'Learning Objectives', '1. Describe PAD pathophysiology and risk factors\n2. Perform and interpret ABI\n3. Apply Fontaine classification\n4. Differentiate claudication from CLI\n5. Select appropriate imaging\n6. Implement medical management\n7. Identify revascularization indications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040001-0000-0000-0000-000000000001', 'content', 3, 'Clinical Presentation', 'Intermittent claudication: reproducible muscle pain with exertion, relieved by rest. Location indicates disease level - calf (SFA) most common. Critical limb ischemia: rest pain >2 weeks, tissue loss, ABI <0.4. Fontaine: I=asymptomatic, IIa=mild, IIb=moderate, III=rest pain, IV=tissue loss.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040001-0000-0000-0000-000000000001', 'content', 4, 'Diagnosis', 'ABI is first-line: Normal 1.0-1.3, Mild 0.7-0.9, Moderate 0.4-0.7, Severe <0.4, Non-compressible >1.3. Imaging: Duplex ultrasound first-line, CTA for planning, catheter angiography gold standard.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040001-0000-0000-0000-000000000001', 'content', 5, 'Treatment', 'Medical: smoking cessation (most important), antiplatelet (aspirin/clopidogrel), statin, supervised exercise. Cilostazol improves walking distance but contraindicated in heart failure. Revascularization for lifestyle-limiting claudication or CLI.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040001-0000-0000-0000-000000000001', 'key_points', 6, 'Key Points', 'PAD = systemic atherosclerosis marker. ABI <0.9 diagnostic. Smoking cessation most important. Supervised exercise first-line. Cilostazol contraindicated in HF. CLI requires urgent evaluation.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040001-0000-0000-0000-000000000001', 1, 'ABI of 0.65 indicates:', 'Normal', 'Mild PAD', 'Moderate PAD', 'Severe PAD', 'Non-compressible', 'C', 'ABI 0.4-0.7 = moderate PAD'),
('d0040001-0000-0000-0000-000000000001', 2, 'Most common claudication location:', 'Buttock', 'Thigh', 'Calf', 'Foot', 'Hip', 'C', 'Calf from SFA disease most common'),
('d0040001-0000-0000-0000-000000000001', 3, 'Strongest modifiable PAD risk factor:', 'Diabetes', 'HTN', 'Smoking', 'Hyperlipidemia', 'Obesity', 'C', 'Smoking = 4x risk'),
('d0040001-0000-0000-0000-000000000001', 4, 'Cilostazol contraindicated in:', 'Diabetes', 'HTN', 'Heart failure', 'CKD', 'Hyperlipidemia', 'C', 'PDE3 inhibitor contraindicated in HF'),
('d0040001-0000-0000-0000-000000000001', 5, 'First-line claudication treatment:', 'Endovascular', 'Surgery', 'Supervised exercise', 'Cilostazol', 'Amputation', 'C', 'Exercise therapy first-line');
