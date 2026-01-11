-- CME Article 58: Surgical Wound Management - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040058-0000-0000-0000-000000000058', 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004', 'Surgical Wound Management', 'Healing and Complications', 'Review of wound healing, closure techniques, and management of wound complications.', 'UNTH Surgery Department', 25, 1.5, 'easy', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040058-0000-0000-0000-000000000058', 'introduction', 1, 'Introduction', 'Wound healing: inflammation (1-4 days), proliferation (4-21 days), remodeling (21 days-1 year). Closure types: primary (immediate), secondary (open healing), tertiary (delayed primary). Maximum tensile strength 80% at 3 months.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040058-0000-0000-0000-000000000058', 'learning_objectives', 2, 'Learning Objectives', '1. Understand healing phases\n2. Choose closure type\n3. Select suture materials\n4. Manage wound complications\n5. Know factors affecting healing\n6. Use negative pressure therapy\n7. Treat chronic wounds');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040058-0000-0000-0000-000000000058', 'content', 3, 'Wound Closure', 'Primary: clean wounds, adequate blood supply. Secondary: contaminated, infected wounds. Tertiary: contaminated wound left open, closed at 3-5 days. Sutures: absorbable (gut, vicryl) vs non-absorbable (nylon, prolene).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040058-0000-0000-0000-000000000058', 'content', 4, 'Factors Affecting Healing', 'Local: blood supply, infection, foreign body, technique. Systemic: diabetes, malnutrition, steroids, chemotherapy, smoking, anemia. Vitamin C, zinc, protein important. Moist wound healing optimal.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040058-0000-0000-0000-000000000058', 'content', 5, 'Complications', 'Seroma: serous fluid collection. Hematoma: blood collection, may need drainage. Dehiscence: wound separation, fascial needs surgery. Evisceration: bowel through wound, emergency. Incisional hernia: late complication.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040058-0000-0000-0000-000000000058', 'key_points', 6, 'Key Points', 'Three phases of healing. Primary closure for clean wounds. Maximum strength 80% at 3 months. Moist healing is optimal. Dehiscence needs exploration. NPWT for complex wounds.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040058-0000-0000-0000-000000000058', 1, 'Maximum wound tensile strength is:', '50%', '80%', '100%', '120%', '60%', 'B', 'Maximum tensile strength is about 80%'),
('d0040058-0000-0000-0000-000000000058', 2, 'Proliferative phase of wound healing:', 'Days 1-4', 'Days 4-21', 'Days 21-30', 'Months 1-3', 'Year 1', 'B', 'Proliferation occurs days 4-21'),
('d0040058-0000-0000-0000-000000000058', 3, 'Tertiary wound closure:', 'Immediate closure', 'Never closes', 'Delayed primary closure', 'Open healing only', 'Skin graft', 'C', 'Tertiary is delayed primary closure'),
('d0040058-0000-0000-0000-000000000058', 4, 'Evisceration requires:', 'Observation', 'Antibiotics only', 'Emergency surgery', 'Dressings only', 'Outpatient care', 'C', 'Evisceration is surgical emergency'),
('d0040058-0000-0000-0000-000000000058', 5, 'Important vitamin for wound healing:', 'Vitamin A', 'Vitamin B12', 'Vitamin C', 'Vitamin D', 'Vitamin E', 'C', 'Vitamin C essential for collagen synthesis');
