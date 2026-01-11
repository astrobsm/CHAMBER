-- CME Article 40: Necrotizing Fasciitis - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040040-0000-0000-0000-000000000040', 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004', 'Necrotizing Fasciitis', 'Recognition and Surgical Emergency', 'Comprehensive review of necrotizing soft tissue infections covering types, diagnosis, and urgent surgical management.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040040-0000-0000-0000-000000000040', 'introduction', 1, 'Introduction', 'Necrotizing fasciitis: rapidly progressive soft tissue infection along fascial planes. Life-threatening. Type I: polymicrobial. Type II: Group A Streptococcus (most virulent). Mortality 20-40% even with treatment. Surgical emergency.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040040-0000-0000-0000-000000000040', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize early signs\n2. Know risk factors\n3. Distinguish from cellulitis\n4. Use LRINEC score\n5. Perform urgent debridement\n6. Choose empiric antibiotics\n7. Plan serial debridements');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040040-0000-0000-0000-000000000040', 'content', 3, 'Clinical Features', 'Pain out of proportion to appearance (early). Rapid progression. Skin changes: erythema, edema, bullae, necrosis, crepitus. Systemic toxicity: fever, tachycardia, hypotension. Risk factors: diabetes, immunosuppression, IV drug use.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040040-0000-0000-0000-000000000040', 'content', 4, 'Diagnosis', 'Clinical diagnosis primarily. LRINEC score: WBC, Hb, Na, glucose, creatinine, CRP. Score >6 concerning. Finger test: lack of tissue plane resistance. CT: gas in soft tissues. Do not delay surgery for imaging.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040040-0000-0000-0000-000000000040', 'content', 5, 'Treatment', 'Surgical: aggressive debridement - early and complete. Return to OR every 24-48 hours. Antibiotics: broad-spectrum (vancomycin + pip-tazo + clindamycin). Clindamycin for toxin suppression. ICU support. Consider IVIG for streptococcal.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040040-0000-0000-0000-000000000040', 'key_points', 6, 'Key Points', 'Pain out of proportion is early sign. Do not delay surgery for tests. Aggressive debridement essential. Type II (GAS) most virulent. Clindamycin for toxin suppression. Serial debridements needed.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040040-0000-0000-0000-000000000040', 1, 'Early sign of necrotizing fasciitis:', 'Skin necrosis', 'Pain out of proportion', 'Crepitus', 'Bullae', 'Hypotension', 'B', 'Pain disproportionate to appearance is early'),
('d0040040-0000-0000-0000-000000000040', 2, 'Most virulent type of necrotizing fasciitis:', 'Type I polymicrobial', 'Type II streptococcal', 'Type III clostridial', 'Type IV fungal', 'All equal', 'B', 'Type II (GAS) is most virulent'),
('d0040040-0000-0000-0000-000000000040', 3, 'Priority treatment for necrotizing fasciitis:', 'Antibiotics first', 'Hyperbaric oxygen', 'Surgical debridement', 'CT scan', 'Blood cultures', 'C', 'Surgical debridement is priority'),
('d0040040-0000-0000-0000-000000000040', 4, 'Clindamycin is added for:', 'Gram-negative coverage', 'Toxin suppression', 'Better penetration', 'Cost', 'Convenience', 'B', 'Clindamycin suppresses toxin production'),
('d0040040-0000-0000-0000-000000000040', 5, 'LRINEC score >6 suggests:', 'Cellulitis', 'Necrotizing fasciitis', 'Normal tissue', 'Abscess', 'Erysipelas', 'B', 'LRINEC >6 is concerning for necrotizing fasciitis');
