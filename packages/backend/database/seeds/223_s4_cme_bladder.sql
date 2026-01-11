-- CME Article 23: Bladder Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040023-0000-0000-0000-000000000023', 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004', 'Bladder Cancer: Surgical Approach', 'Diagnosis and Management', 'Review of bladder cancer covering TURBT, staging, intravesical therapy, and radical cystectomy.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040023-0000-0000-0000-000000000023', 'introduction', 1, 'Introduction', 'Bladder cancer fourth most common cancer in men. 90% urothelial carcinoma. Risk factors: smoking (strongest), occupational exposures (dyes, rubber), schistosomiasis (squamous). Painless hematuria is hallmark. High recurrence rate.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040023-0000-0000-0000-000000000023', 'learning_objectives', 2, 'Learning Objectives', '1. Identify risk factors\n2. Perform cystoscopy and TURBT\n3. Stage bladder cancer\n4. Distinguish NMIBC from MIBC\n5. Apply intravesical therapy\n6. Select candidates for cystectomy\n7. Understand urinary diversion');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040023-0000-0000-0000-000000000023', 'content', 3, 'Diagnosis and Staging', 'Cystoscopy with TURBT for diagnosis and staging. Include detrusor muscle in specimen. Ta (papillary, noninvasive), T1 (lamina propria), T2 (muscle), T3 (perivesical), T4 (adjacent organs). CT/MRI for staging. Non-muscle invasive (NMIBC): Ta, T1, CIS.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040023-0000-0000-0000-000000000023', 'content', 4, 'NMIBC Management', 'Low-risk: TURBT + single immediate intravesical chemotherapy. Intermediate: TURBT + intravesical BCG or chemotherapy. High-risk (T1HG, CIS): BCG induction + maintenance. Repeat TURBT at 4-6 weeks for T1HG to ensure complete resection.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040023-0000-0000-0000-000000000023', 'content', 5, 'MIBC Management', 'Radical cystectomy with pelvic lymphadenectomy is standard. Neoadjuvant cisplatin-based chemotherapy. Urinary diversion: ileal conduit (incontinent), neobladder (orthotopic), continent cutaneous. Bladder preservation with chemoRT in select cases.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040023-0000-0000-0000-000000000023', 'key_points', 6, 'Key Points', 'Painless hematuria hallmark. TURBT for diagnosis/staging. Include muscle in specimen. BCG for high-risk NMIBC. Radical cystectomy for MIBC. Neoadjuvant chemo improves survival.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040023-0000-0000-0000-000000000023', 1, 'Most common bladder cancer type:', 'Squamous cell', 'Adenocarcinoma', 'Urothelial', 'Small cell', 'Sarcoma', 'C', 'Urothelial (transitional cell) is most common (90%)'),
('d0040023-0000-0000-0000-000000000023', 2, 'T2 bladder cancer invades:', 'Lamina propria', 'Muscularis propria', 'Perivesical tissue', 'Adjacent organs', 'Mucosa only', 'B', 'T2 = muscle invasive'),
('d0040023-0000-0000-0000-000000000023', 3, 'Intravesical therapy for high-risk NMIBC:', 'Mitomycin only', 'BCG', 'Cisplatin', 'Doxorubicin', 'No therapy needed', 'B', 'BCG for high-risk NMIBC'),
('d0040023-0000-0000-0000-000000000023', 4, 'Standard treatment for muscle-invasive bladder cancer:', 'TURBT alone', 'BCG', 'Radical cystectomy', 'Radiation alone', 'Chemotherapy alone', 'C', 'Radical cystectomy is standard for MIBC'),
('d0040023-0000-0000-0000-000000000023', 5, 'Strongest risk factor for bladder cancer:', 'Alcohol', 'Obesity', 'Smoking', 'Age', 'Diet', 'C', 'Smoking is strongest risk factor');
