-- CME Article 39: Acute Limb Ischemia - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040039-0000-0000-0000-000000000039', 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004', 'Acute Limb Ischemia', 'Emergency Vascular Management', 'Review of acute limb ischemia covering etiology, the 6 Ps, classification, and revascularization options.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040039-0000-0000-0000-000000000039', 'introduction', 1, 'Introduction', 'Acute limb ischemia: sudden decrease in perfusion threatening limb viability. Causes: embolism (60%), thrombosis (40%). Embolism: cardiac source (AF, MI, valve disease). Thrombosis: atherosclerotic disease. Time-critical emergency.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040039-0000-0000-0000-000000000039', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize the 6 Ps\n2. Distinguish embolism from thrombosis\n3. Classify limb viability\n4. Initiate anticoagulation\n5. Choose revascularization method\n6. Recognize compartment syndrome\n7. Manage reperfusion injury');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040039-0000-0000-0000-000000000039', 'content', 3, 'The 6 Ps', 'Pain: sudden, severe. Pallor: white/mottled. Pulselessness: no distal pulse. Paresthesias: early sensory loss. Paralysis: late, ominous sign. Poikilothermia: cold. Paralysis indicates advanced ischemia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040039-0000-0000-0000-000000000039', 'content', 4, 'Classification', 'Rutherford classification: I: Viable (no immediate threat). IIa: Marginally threatened (salvageable with prompt treatment). IIb: Immediately threatened (salvageable with immediate revascularization). III: Irreversible (amputation needed).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040039-0000-0000-0000-000000000039', 'content', 5, 'Treatment', 'Immediate: anticoagulation (heparin). Revascularization: surgical embolectomy (Fogarty catheter), thrombolysis (catheter-directed), bypass. Fasciotomy for compartment syndrome. Post-revascularization: watch for reperfusion injury, hyperkalemia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040039-0000-0000-0000-000000000039', 'key_points', 6, 'Key Points', '6 Ps: Pain, Pallor, Pulselessness, Paresthesias, Paralysis, Poikilothermia. Embolism more common than thrombosis. Immediate anticoagulation. Paralysis indicates advanced ischemia. Watch for compartment syndrome.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040039-0000-0000-0000-000000000039', 1, 'Most common cause of acute limb ischemia:', 'Trauma', 'Thrombosis', 'Embolism', 'Dissection', 'Vasospasm', 'C', 'Embolism causes ~60% of acute limb ischemia'),
('d0040039-0000-0000-0000-000000000039', 2, 'Ominous sign in acute limb ischemia:', 'Pain', 'Pallor', 'Paralysis', 'Paresthesias', 'Pulselessness', 'C', 'Paralysis indicates advanced ischemia'),
('d0040039-0000-0000-0000-000000000039', 3, 'Most common cardiac source of embolism:', 'Atrial fibrillation', 'Mitral stenosis', 'MI', 'Endocarditis', 'Prosthetic valve', 'A', 'AF is most common cardiac source'),
('d0040039-0000-0000-0000-000000000039', 4, 'Rutherford class III indicates:', 'Viable', 'Marginally threatened', 'Immediately threatened', 'Irreversible', 'Mildly ischemic', 'D', 'Class III = irreversible, needs amputation'),
('d0040039-0000-0000-0000-000000000039', 5, 'Immediate treatment for acute limb ischemia:', 'Aspirin only', 'Warfarin', 'Heparin', 'Observation', 'Elevation', 'C', 'Immediate heparin anticoagulation required');
