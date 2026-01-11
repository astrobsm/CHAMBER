-- CME Article 4: Abdominal Aortic Aneurysm - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040004-0000-0000-0000-000000000004', 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004', 'Abdominal Aortic Aneurysm', 'Screening, Surveillance, and Management', 'Comprehensive review of AAA including epidemiology, natural history, screening guidelines, and treatment options including open repair and EVAR.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040004-0000-0000-0000-000000000004', 'introduction', 1, 'Introduction', 'AAA defined as aortic diameter >3cm or 1.5x normal. Prevalence 4-8% in men >65 years. Risk factors: smoking (strongest), male sex, age, family history, hypertension, atherosclerosis. 80% infrarenal. Rupture mortality 80-90%. Most are asymptomatic until rupture.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040004-0000-0000-0000-000000000004', 'learning_objectives', 2, 'Learning Objectives', '1. Define AAA and identify risk factors\n2. Understand natural history and rupture risk\n3. Apply screening guidelines\n4. Establish surveillance protocols\n5. Determine repair thresholds\n6. Compare EVAR vs open repair\n7. Recognize ruptured AAA presentation');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040004-0000-0000-0000-000000000004', 'content', 3, 'Screening and Surveillance', 'USPSTF: One-time ultrasound screening for men 65-75 who ever smoked. Surveillance by size: 3.0-3.9cm every 3 years, 4.0-4.9cm annually, 5.0-5.4cm every 6 months. Annual rupture risk: 3.0-3.9cm 0%, 4.0-4.9cm 1%, 5.0-5.9cm 3-15%, 6.0-6.9cm 10-20%, >7.0cm 30-50%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040004-0000-0000-0000-000000000004', 'content', 4, 'Repair Indications', 'Elective repair: diameter ≥5.5cm men or ≥5.0cm women, growth >1cm/year, symptomatic AAA. Open repair: proven durability, no surveillance needed, better for young patients. EVAR: less invasive, shorter recovery, requires surveillance, anatomic requirements (neck length, angulation).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040004-0000-0000-0000-000000000004', 'content', 5, 'Ruptured AAA', 'Classic triad: abdominal/back pain, pulsatile mass, hypotension (present in 50%). Hemodynamically stable patients may have contained rupture. CT for stable patients. Unstable patients go directly to OR. Mortality 40-50% even with repair. Permissive hypotension until aortic control.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040004-0000-0000-0000-000000000004', 'key_points', 6, 'Key Points', 'AAA = aorta >3cm. Screen men 65-75 who smoked. Repair at 5.5cm men, 5.0cm women. Rupture risk increases exponentially with size. EVAR less invasive but needs surveillance. Ruptured AAA triad: pain, mass, hypotension.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040004-0000-0000-0000-000000000004', 1, 'AAA is defined as aortic diameter:', '>2.0 cm', '>2.5 cm', '>3.0 cm', '>4.0 cm', '>5.0 cm', 'C', 'AAA defined as diameter >3cm'),
('d0040004-0000-0000-0000-000000000004', 2, 'Elective repair threshold for AAA in men:', '4.0 cm', '4.5 cm', '5.0 cm', '5.5 cm', '6.0 cm', 'D', 'Repair indicated at ≥5.5cm in men'),
('d0040004-0000-0000-0000-000000000004', 3, 'Screening for AAA recommended for:', 'All adults >50', 'Men 65-75 who smoked', 'All men >65', 'Women >70', 'All adults >70', 'B', 'USPSTF recommends screening men 65-75 who ever smoked'),
('d0040004-0000-0000-0000-000000000004', 4, 'Classic triad of ruptured AAA includes all EXCEPT:', 'Abdominal pain', 'Pulsatile mass', 'Hypotension', 'Hematuria', 'Back pain', 'D', 'Triad: pain, pulsatile mass, hypotension'),
('d0040004-0000-0000-0000-000000000004', 5, 'Surveillance interval for 4.5 cm AAA:', 'Monthly', 'Every 3 months', 'Every 6 months', 'Annually', 'Every 3 years', 'D', '4.0-4.9cm AAA surveilled annually');
