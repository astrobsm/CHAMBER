-- CME Article 6: Burns - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040006-0000-0000-0000-000000000006', 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004', 'Burns: Assessment and Management', 'Initial Evaluation, Resuscitation, and Wound Care', 'Comprehensive review of burn injury covering classification, TBSA calculation, fluid resuscitation, wound management, and complications.', 'UNTH Surgery Department', 35, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040006-0000-0000-0000-000000000006', 'introduction', 1, 'Introduction', 'Burns are tissue damage from thermal, chemical, electrical, or radiation injury. Major burns cause systemic inflammatory response. Classification by depth: superficial (epidermis), partial thickness (dermis), full thickness (subcutaneous). Rule of 9s for TBSA estimation.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040006-0000-0000-0000-000000000006', 'learning_objectives', 2, 'Learning Objectives', '1. Classify burns by depth and cause\n2. Calculate TBSA using Rule of 9s\n3. Apply Parkland formula for resuscitation\n4. Recognize major burn criteria\n5. Manage airway in burn patients\n6. Implement wound care\n7. Identify and treat complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040006-0000-0000-0000-000000000006', 'content', 3, 'Classification', 'Superficial (1st): red, painful, no blisters, heals 5-7 days. Superficial partial (2nd): blisters, painful, moist, heals 2-3 weeks. Deep partial (2nd): pale, less painful, may need grafting. Full thickness (3rd): leathery, painless, requires grafting. Rule of 9s: head 9%, arm 9%, leg 18%, trunk 36%, perineum 1%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040006-0000-0000-0000-000000000006', 'content', 4, 'Resuscitation', 'Parkland formula: 4mL x weight(kg) x %TBSA. Give half in first 8 hours from injury, half over next 16 hours. Use LR. Titrate to urine output 0.5-1 mL/kg/hr. Major burns: >20% TBSA in adults, >10% in children, full thickness >5%, face/hands/feet/perineum, inhalation, electrical.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040006-0000-0000-0000-000000000006', 'content', 5, 'Wound Management', 'Cool running water for 20 minutes (not ice). Remove clothing and jewelry. Clean with saline. Debride devitalized tissue. Topical antimicrobials: silver sulfadiazine (avoid in sulfa allergy, face), silver dressings, bacitracin. Escharotomy for circumferential burns with compartment syndrome.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040006-0000-0000-0000-000000000006', 'key_points', 6, 'Key Points', 'Classify by depth and TBSA. Rule of 9s for TBSA. Parkland: 4mL x kg x %TBSA. First 8 hours = half total volume. Major burns need referral. Escharotomy for circumferential burns. Watch for airway injury with facial burns.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040006-0000-0000-0000-000000000006', 1, 'Parkland formula coefficient is:', '2 mL', '3 mL', '4 mL', '5 mL', '6 mL', 'C', 'Parkland: 4mL x weight(kg) x %TBSA'),
('d0040006-0000-0000-0000-000000000006', 2, 'Using Rule of 9s, both legs equal:', '9%', '18%', '27%', '36%', '45%', 'D', 'Each leg is 18%, so both legs = 36%'),
('d0040006-0000-0000-0000-000000000006', 3, 'Target urine output for burn resuscitation:', '0.1-0.3 mL/kg/hr', '0.5-1.0 mL/kg/hr', '1.5-2.0 mL/kg/hr', '2.0-3.0 mL/kg/hr', '3.0-4.0 mL/kg/hr', 'B', 'Target urine output 0.5-1 mL/kg/hr'),
('d0040006-0000-0000-0000-000000000006', 4, 'Full thickness burns are characterized by:', 'Blisters', 'Severe pain', 'Leathery, painless', 'Red and moist', 'Rapid healing', 'C', 'Full thickness burns are leathery and painless due to nerve destruction'),
('d0040006-0000-0000-0000-000000000006', 5, 'Half of Parkland volume given in first:', '4 hours', '8 hours', '12 hours', '16 hours', '24 hours', 'B', 'Half volume in first 8 hours from time of injury');
