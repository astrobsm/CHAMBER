-- CME Article 28: Amputation - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040028-0000-0000-0000-000000000028', 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004', 'Lower Extremity Amputation', 'Principles and Techniques', 'Comprehensive review of lower limb amputations covering indications, levels, technique, and rehabilitation.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040028-0000-0000-0000-000000000028', 'introduction', 1, 'Introduction', 'Amputation is surgical removal of limb or part. Indications: peripheral vascular disease (most common), diabetes, trauma, tumors, infection, congenital. Goal: preserve maximum function while removing all non-viable tissue.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040028-0000-0000-0000-000000000028', 'learning_objectives', 2, 'Learning Objectives', '1. Know indications for amputation\n2. Select appropriate level\n3. Assess tissue viability\n4. Understand amputation levels\n5. Manage stump complications\n6. Plan rehabilitation\n7. Address phantom limb');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040028-0000-0000-0000-000000000028', 'content', 3, 'Amputation Levels', 'Toe: forefoot preservation. Ray: includes metatarsal. Transmetatarsal: all toes. Syme: ankle disarticulation. Below-knee (BKA): 12-15cm below tibial tuberosity. Above-knee (AKA): thigh. Knee disarticulation. Hip disarticulation.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040028-0000-0000-0000-000000000028', 'content', 4, 'Level Selection', 'Preserve length when possible. BKA preferred over AKA (better function). Assess: pulses, skin, tissue oxygen, bleeding at surgery. Energy expenditure: BKA 40-60% increase, AKA 60-100% increase over normal walking.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040028-0000-0000-0000-000000000028', 'content', 5, 'Complications', 'Wound complications: infection, dehiscence, necrosis. Stump problems: contracture, neuroma, phantom pain. Phantom limb: sensation or pain in absent limb. Prevention: adequate debridement, tension-free closure, early mobilization.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040028-0000-0000-0000-000000000028', 'key_points', 6, 'Key Points', 'PVD is most common indication. Preserve length when viable. BKA preferred over AKA for function. Energy cost increases with higher level. Early prosthetic fitting improves outcomes. Address phantom limb pain.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040028-0000-0000-0000-000000000028', 1, 'Most common indication for amputation:', 'Trauma', 'Peripheral vascular disease', 'Tumor', 'Infection', 'Congenital', 'B', 'PVD is most common indication for amputation'),
('d0040028-0000-0000-0000-000000000028', 2, 'BKA length from tibial tuberosity:', '5-8 cm', '12-15 cm', '20-25 cm', '30 cm', '8-10 cm', 'B', 'Ideal BKA is 12-15 cm from tibial tuberosity'),
('d0040028-0000-0000-0000-000000000028', 3, 'Energy expenditure increase with AKA:', '10-20%', '20-40%', '40-60%', '60-100%', 'No increase', 'D', 'AKA increases energy expenditure 60-100%'),
('d0040028-0000-0000-0000-000000000028', 4, 'Syme amputation is at level of:', 'Forefoot', 'Ankle', 'Below knee', 'Above knee', 'Hip', 'B', 'Syme is ankle disarticulation'),
('d0040028-0000-0000-0000-000000000028', 5, 'Phantom limb pain treatment includes:', 'Re-amputation', 'Mirror therapy', 'Ignoring it', 'Immediate surgery', 'All above', 'B', 'Mirror therapy helps phantom limb pain');
