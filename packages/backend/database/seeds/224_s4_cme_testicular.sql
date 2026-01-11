-- CME Article 24: Testicular Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040024-0000-0000-0000-000000000024', 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004', 'Testicular Cancer', 'Diagnosis and Management', 'Review of testicular cancer covering types, tumor markers, orchiectomy, and management of seminoma vs NSGCT.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040024-0000-0000-0000-000000000024', 'introduction', 1, 'Introduction', 'Testicular cancer most common solid tumor in men 15-35 years. Types: germ cell (95%) - seminoma (40%) and nonseminomatous (NSGCT). Risk factors: cryptorchidism (strongest), family history, prior testicular cancer. Highly curable even with metastases.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040024-0000-0000-0000-000000000024', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize clinical presentation\n2. Apply tumor markers\n3. Perform radical orchiectomy\n4. Stage testicular cancer\n5. Distinguish seminoma from NSGCT\n6. Select appropriate therapy\n7. Understand surveillance');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040024-0000-0000-0000-000000000024', 'content', 3, 'Diagnosis', 'Painless testicular mass. Do NOT biopsy - risk of seeding. Tumor markers: AFP (never elevated in pure seminoma), beta-hCG, LDH. Scrotal ultrasound to confirm. CT chest/abdomen/pelvis for staging.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040024-0000-0000-0000-000000000024', 'content', 4, 'Surgical Management', 'Radical inguinal orchiectomy is diagnostic and therapeutic. NEVER transscrotal approach. High ligation of spermatic cord at internal ring. Prosthesis optional. RPLND for residual mass after chemo in NSGCT.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040024-0000-0000-0000-000000000024', 'content', 5, 'Adjuvant Therapy', 'Stage I seminoma: surveillance or adjuvant carboplatin or RT. Stage I NSGCT: surveillance or RPLND. Advanced disease: BEP chemotherapy (bleomycin, etoposide, cisplatin). Seminoma radiosensitive. NSGCT chemosensitive.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040024-0000-0000-0000-000000000024', 'key_points', 6, 'Key Points', 'Most common solid tumor in young men. Never biopsy - orchiectomy. AFP elevated = not pure seminoma. Inguinal approach mandatory. BEP chemo for advanced. Highly curable.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040024-0000-0000-0000-000000000024', 1, 'Strongest risk factor for testicular cancer:', 'Smoking', 'Cryptorchidism', 'Obesity', 'Trauma', 'Infection', 'B', 'Cryptorchidism is strongest risk factor'),
('d0040024-0000-0000-0000-000000000024', 2, 'AFP is never elevated in:', 'NSGCT', 'Mixed germ cell', 'Pure seminoma', 'Choriocarcinoma', 'Embryonal carcinoma', 'C', 'AFP is never elevated in pure seminoma'),
('d0040024-0000-0000-0000-000000000024', 3, 'Approach for radical orchiectomy:', 'Transscrotal', 'Inguinal', 'Retroperitoneal', 'Laparoscopic', 'Any approach', 'B', 'Inguinal approach is mandatory'),
('d0040024-0000-0000-0000-000000000024', 4, 'Standard chemotherapy for advanced testicular cancer:', 'FOLFOX', 'BEP', 'CHOP', 'AC', 'Cisplatin alone', 'B', 'BEP (bleomycin, etoposide, cisplatin) is standard'),
('d0040024-0000-0000-0000-000000000024', 5, 'Age group most affected by testicular cancer:', '0-14', '15-35', '36-50', '51-65', '>65', 'B', 'Most common in men 15-35 years');
