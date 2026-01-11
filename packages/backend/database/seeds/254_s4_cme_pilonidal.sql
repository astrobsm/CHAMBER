-- CME Article 54: Pilonidal Disease - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040054-0000-0000-0000-000000000054', 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004', 'Pilonidal Disease', 'Diagnosis and Surgical Options', 'Review of pilonidal sinus disease covering pathogenesis, presentation, and various surgical treatment options.', 'UNTH Surgery Department', 20, 1.0, 'easy', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040054-0000-0000-0000-000000000054', 'introduction', 1, 'Introduction', 'Pilonidal disease: chronic infection at natal cleft. Hair penetrates skin forming sinus. Peak age 15-35, males predominant. Risk factors: hirsutism, obesity, sedentary occupation, poor hygiene. Not congenital despite name.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040054-0000-0000-0000-000000000054', 'learning_objectives', 2, 'Learning Objectives', '1. Understand pathogenesis\n2. Recognize clinical presentations\n3. Manage acute abscess\n4. Know surgical options\n5. Compare closure techniques\n6. Minimize recurrence\n7. Provide wound care');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040054-0000-0000-0000-000000000054', 'content', 3, 'Presentation', 'Acute abscess: painful swelling, erythema, fluctuance. Chronic sinus: intermittent drainage, pits at midline. Multiple openings possible. Differential: perianal abscess, hidradenitis, furuncle.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040054-0000-0000-0000-000000000054', 'content', 4, 'Treatment Options', 'Abscess: incision and drainage (off midline). Chronic: excision with primary closure, open healing, flap procedures. Bascom procedure: pit excision. Karydakis flap: off-midline closure. Limberg flap: rhomboid flap.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040054-0000-0000-0000-000000000054', 'content', 5, 'Outcomes', 'Open healing: longest healing time but lowest recurrence. Midline closure: high recurrence (20%). Off-midline/flap: lower recurrence (5-10%). Post-op: shaving, hygiene, hair removal. Recurrence up to 30%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040054-0000-0000-0000-000000000054', 'key_points', 6, 'Key Points', 'Acquired not congenital. I&D for acute abscess. Off-midline closure preferred. Flaps reduce recurrence. Hair removal reduces recurrence. High recurrence rate overall.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040054-0000-0000-0000-000000000054', 1, 'Pilonidal disease is:', 'Congenital', 'Acquired', 'Autoimmune', 'Malignant', 'Infectious only', 'B', 'Pilonidal disease is acquired, not congenital'),
('d0040054-0000-0000-0000-000000000054', 2, 'Peak age for pilonidal disease:', '5-10 years', '15-35 years', '50-60 years', '70-80 years', 'Any age equally', 'B', 'Peak incidence is 15-35 years'),
('d0040054-0000-0000-0000-000000000054', 3, 'Treatment for acute pilonidal abscess:', 'Antibiotics alone', 'Excision with primary closure', 'Incision and drainage', 'Observation', 'Flap procedure', 'C', 'I&D is treatment for acute abscess'),
('d0040054-0000-0000-0000-000000000054', 4, 'Lowest recurrence after:', 'Midline closure', 'Off-midline/flap closure', 'I&D alone', 'Antibiotics', 'No treatment', 'B', 'Off-midline closure has lower recurrence'),
('d0040054-0000-0000-0000-000000000054', 5, 'Reduces pilonidal recurrence:', 'More sitting', 'Hair removal', 'Tight clothing', 'Ignoring symptoms', 'Antibiotics', 'B', 'Hair removal helps prevent recurrence');
