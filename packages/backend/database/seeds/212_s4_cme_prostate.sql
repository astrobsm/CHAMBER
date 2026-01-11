-- CME Article 12: Prostate Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040012-0000-0000-0000-000000000012', 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004', 'Prostate Cancer: Surgical Management', 'Diagnosis, Risk Stratification, and Treatment Options', 'Review of prostate cancer covering PSA screening, biopsy, Gleason grading, and surgical vs non-surgical management.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040012-0000-0000-0000-000000000012', 'introduction', 1, 'Introduction', 'Prostate cancer most common male cancer. Risk factors: age >50, African ancestry, family history. Most are adenocarcinomas in peripheral zone. Screening controversial: PSA + DRE. Many are indolent; active surveillance appropriate for low-risk.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040012-0000-0000-0000-000000000012', 'learning_objectives', 2, 'Learning Objectives', '1. Understand PSA and its limitations\n2. Perform DRE evaluation\n3. Interpret prostate biopsy\n4. Apply Gleason grading\n5. Risk stratify patients\n6. Compare treatment options\n7. Manage complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040012-0000-0000-0000-000000000012', 'content', 3, 'Diagnosis', 'PSA: >4 ng/mL warrants evaluation, PSA density, velocity, free/total ratio. DRE: nodule, asymmetry. MRI for staging and fusion biopsy guidance. TRUS-guided biopsy: 12-core systematic. Gleason score: primary + secondary grade (1-5 each).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040012-0000-0000-0000-000000000012', 'content', 4, 'Risk Stratification', 'Low risk: PSA <10, Gleason ≤6, T1-T2a. Intermediate: PSA 10-20, Gleason 7, T2b. High risk: PSA >20, Gleason ≥8, T2c-T3. Active surveillance for low-risk: PSA, DRE, repeat biopsy. Treatment for intermediate/high-risk.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040012-0000-0000-0000-000000000012', 'content', 5, 'Treatment Options', 'Radical prostatectomy: removes prostate + seminal vesicles, open/laparoscopic/robotic. Radiation: external beam or brachytherapy. ADT for advanced disease. Complications: ED (30-70%), incontinence (5-20%), rectal injury (<1%).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040012-0000-0000-0000-000000000012', 'key_points', 6, 'Key Points', 'PSA screening controversial. Peripheral zone most common location. Gleason score = primary + secondary. Active surveillance for low-risk. Radical prostatectomy for localized disease. Main complications: ED, incontinence.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040012-0000-0000-0000-000000000012', 1, 'Most prostate cancers arise in:', 'Central zone', 'Peripheral zone', 'Transition zone', 'Anterior fibromuscular stroma', 'Verumontanum', 'B', 'Peripheral zone is site of most prostate cancers'),
('d0040012-0000-0000-0000-000000000012', 2, 'Gleason 7 prostate cancer is considered:', 'Low risk', 'Intermediate risk', 'High risk', 'Very high risk', 'Metastatic', 'B', 'Gleason 7 = intermediate risk'),
('d0040012-0000-0000-0000-000000000012', 3, 'Active surveillance appropriate for:', 'All prostate cancer', 'Low-risk prostate cancer', 'Intermediate-risk', 'High-risk', 'Metastatic', 'B', 'Active surveillance for low-risk prostate cancer'),
('d0040012-0000-0000-0000-000000000012', 4, 'Most common complication of radical prostatectomy:', 'Urethral stricture', 'Rectal injury', 'Erectile dysfunction', 'Bladder injury', 'Lymphocele', 'C', 'ED is most common complication (30-70%)'),
('d0040012-0000-0000-0000-000000000012', 5, 'PSA threshold typically prompting evaluation:', '>2 ng/mL', '>4 ng/mL', '>10 ng/mL', '>20 ng/mL', '>50 ng/mL', 'B', 'PSA >4 ng/mL typically warrants further evaluation');
