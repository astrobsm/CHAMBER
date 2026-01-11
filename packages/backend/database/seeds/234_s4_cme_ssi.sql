-- CME Article 34: Surgical Site Infections - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040034-0000-0000-0000-000000000034', 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004', 'Surgical Site Infections', 'Prevention and Management', 'Comprehensive review of SSI covering classification, risk factors, prevention bundles, and treatment.', 'UNTH Surgery Department', 25, 1.5, 'easy', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040034-0000-0000-0000-000000000034', 'introduction', 1, 'Introduction', 'Surgical site infection: occurs within 30 days (or 1 year with implant). Classification: superficial incisional, deep incisional, organ/space. Most common healthcare-associated infection in surgical patients. Significant morbidity and cost.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040034-0000-0000-0000-000000000034', 'learning_objectives', 2, 'Learning Objectives', '1. Classify surgical wounds\n2. Identify risk factors\n3. Implement prevention bundles\n4. Time antibiotic prophylaxis\n5. Recognize SSI types\n6. Manage infected wounds\n7. Know causative organisms');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040034-0000-0000-0000-000000000034', 'content', 3, 'Wound Classification', 'Clean: no inflammation, no entry to viscera. Clean-contaminated: controlled entry to GI/respiratory/GU. Contaminated: open trauma, major break in technique. Dirty: established infection, perforated viscus. Infection rates: 1-2%, 3-4%, 5-10%, 10-20%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040034-0000-0000-0000-000000000034', 'content', 4, 'Risk Factors', 'Patient: diabetes, obesity, malnutrition, immunosuppression, smoking. Procedure: duration, technique, hypothermia, hypoxia. Microbial: contamination level, virulence. Most common organisms: S. aureus (including MRSA), coagulase-negative staph.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040034-0000-0000-0000-000000000034', 'content', 5, 'Prevention and Treatment', 'Prevention bundle: appropriate prophylaxis (within 60 min), skin prep, normothermia, glycemic control, hair clipping not shaving. Treatment: open wound, drainage, antibiotics if cellulitis/sepsis. NPWT for complex wounds.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040034-0000-0000-0000-000000000034', 'key_points', 6, 'Key Points', 'Prophylaxis within 60 minutes of incision. Clip hair, dont shave. Maintain normothermia. S. aureus most common organism. Open infected wounds. SSI bundle reduces infection rates.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040034-0000-0000-0000-000000000034', 1, 'Most common organism in SSI:', 'E. coli', 'Pseudomonas', 'S. aureus', 'Streptococcus', 'Enterococcus', 'C', 'S. aureus is most common SSI organism'),
('d0040034-0000-0000-0000-000000000034', 2, 'Antibiotic prophylaxis timing:', 'Night before', '2 hours before', 'Within 60 minutes', 'After incision', 'Post-op only', 'C', 'Prophylaxis should be within 60 minutes'),
('d0040034-0000-0000-0000-000000000034', 3, 'Clean-contaminated wound infection rate:', '1-2%', '3-4%', '5-10%', '10-20%', '30%', 'B', 'Clean-contaminated has 3-4% infection rate'),
('d0040034-0000-0000-0000-000000000034', 4, 'Hair removal should be by:', 'Razor shaving', 'Clipping', 'Depilatory cream only', 'Waxing', 'No removal needed', 'B', 'Clipping preferred over shaving'),
('d0040034-0000-0000-0000-000000000034', 5, 'SSI definition timeframe with implant:', '30 days', '60 days', '90 days', '1 year', 'Indefinite', 'D', 'SSI defined as within 1 year with implant');
