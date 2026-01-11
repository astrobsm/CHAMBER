-- CME Article 10: Colorectal Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040010-0000-0000-0000-000000000010', 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004', 'Colorectal Cancer: Surgical Principles', 'Diagnosis, Staging, and Operative Management', 'Comprehensive review of colorectal cancer surgery covering screening, staging, surgical techniques, and adjuvant therapy.', 'UNTH Surgery Department', 35, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040010-0000-0000-0000-000000000010', 'introduction', 1, 'Introduction', 'Colorectal cancer is third most common cancer worldwide. Risk factors: age >50, polyps, IBD, family history, Lynch syndrome, FAP. Screening colonoscopy from age 45. Most arise from adenomatous polyps over 10-15 years (adenoma-carcinoma sequence).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040010-0000-0000-0000-000000000010', 'learning_objectives', 2, 'Learning Objectives', '1. Identify risk factors and screening guidelines\n2. Understand adenoma-carcinoma sequence\n3. Stage colorectal cancer (TNM)\n4. Apply surgical principles\n5. Determine extent of resection\n6. Understand role of adjuvant therapy\n7. Manage emergencies');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040010-0000-0000-0000-000000000010', 'content', 3, 'Staging', 'TNM staging: Tis (in situ), T1 (submucosa), T2 (muscularis), T3 (subserosa), T4 (serosa/adjacent). N1 (1-3 nodes), N2 (4+ nodes). Stage I: T1-2 N0, Stage II: T3-4 N0, Stage III: any N+, Stage IV: metastatic. CEA for monitoring.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040010-0000-0000-0000-000000000010', 'content', 4, 'Surgical Principles', 'Goals: R0 resection, adequate margins (5cm proximal/distal for colon, 2cm for rectum), lymph node harvest (≥12 nodes). Procedures: right hemicolectomy, left hemicolectomy, sigmoid colectomy, low anterior resection, abdominoperineal resection.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040010-0000-0000-0000-000000000010', 'content', 5, 'Adjuvant Therapy', 'Stage II high-risk and Stage III: adjuvant chemotherapy (FOLFOX). Rectal cancer: neoadjuvant chemoradiation for T3/T4 or N+. Total mesorectal excision (TME) standard for rectal cancer. Follow-up: CEA, colonoscopy, imaging.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040010-0000-0000-0000-000000000010', 'key_points', 6, 'Key Points', 'Screening from age 45. Adenoma-carcinoma sequence. R0 resection with ≥12 lymph nodes. Stage III gets adjuvant chemo. Rectal cancer: neoadjuvant chemoRT for T3/N+. TME for rectal cancer.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040010-0000-0000-0000-000000000010', 1, 'Minimum lymph nodes for adequate staging:', '5', '8', '12', '15', '20', 'C', 'Minimum 12 lymph nodes for adequate staging'),
('d0040010-0000-0000-0000-000000000010', 2, 'T3 colon cancer invades:', 'Mucosa', 'Submucosa', 'Muscularis propria', 'Subserosa/pericolic fat', 'Adjacent organs', 'D', 'T3 invades through muscularis into subserosa'),
('d0040010-0000-0000-0000-000000000010', 3, 'Stage III colon cancer is defined by:', 'T4 lesion', 'Lymph node involvement', 'Distant metastasis', 'Local invasion', 'Perforation', 'B', 'Stage III = lymph node positive'),
('d0040010-0000-0000-0000-000000000010', 4, 'Standard surgery for rectal cancer:', 'APR', 'TME', 'Local excision', 'Colectomy', 'Hartmann', 'B', 'Total mesorectal excision (TME) is standard'),
('d0040010-0000-0000-0000-000000000010', 5, 'Neoadjuvant chemoradiation indicated for rectal cancer:', 'All stages', 'T1-2 N0', 'T3/T4 or N+', 'Metastatic only', 'Never indicated', 'C', 'Neoadjuvant chemoRT for T3/T4 or node-positive rectal cancer');
