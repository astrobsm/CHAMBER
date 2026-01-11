-- CME Article 22: Renal Tumors - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040022-0000-0000-0000-000000000022', 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004', 'Renal Cell Carcinoma', 'Diagnosis and Surgical Management', 'Review of RCC covering presentation, staging, and surgical options including partial and radical nephrectomy.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040022-0000-0000-0000-000000000022', 'introduction', 1, 'Introduction', 'RCC accounts for 90% of kidney cancers. Clear cell most common subtype (75%). Classic triad (hematuria, flank pain, mass) in <10%. Most discovered incidentally on imaging. Risk factors: smoking, obesity, hypertension, VHL syndrome.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040022-0000-0000-0000-000000000022', 'learning_objectives', 2, 'Learning Objectives', '1. Identify RCC subtypes\n2. Recognize clinical presentation\n3. Stage renal tumors\n4. Select appropriate surgery\n5. Understand active surveillance\n6. Apply systemic therapy\n7. Manage metastatic disease');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040022-0000-0000-0000-000000000022', 'content', 3, 'Diagnosis and Staging', 'CT with contrast is standard imaging. Staging: T1a ≤4cm, T1b 4-7cm, T2a 7-10cm, T2b >10cm, T3 vein/perinephric, T4 beyond Gerota. Biopsy rarely needed. Paraneoplastic syndromes: hypercalcemia, polycythemia, hypertension.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040022-0000-0000-0000-000000000022', 'content', 4, 'Surgical Treatment', 'Partial nephrectomy: preferred for T1a (<4cm), imperative for solitary kidney. Radical nephrectomy: for larger tumors, adrenal sparing unless upper pole/adrenal involvement. Lymphadenectomy if enlarged nodes. IVC thrombectomy for tumor thrombus.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040022-0000-0000-0000-000000000022', 'content', 5, 'Systemic Therapy', 'RCC resistant to chemotherapy. Targeted therapy: TKIs (sunitinib, pazopanib), mTOR inhibitors. Immunotherapy: checkpoint inhibitors (nivolumab, ipilimumab). Cytoreductive nephrectomy in metastatic disease selected cases.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040022-0000-0000-0000-000000000022', 'key_points', 6, 'Key Points', 'Clear cell most common (75%). Most found incidentally. Partial nephrectomy for T1a. RCC chemoresistant. TKIs and immunotherapy for advanced disease.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040022-0000-0000-0000-000000000022', 1, 'Most common RCC subtype:', 'Papillary', 'Chromophobe', 'Clear cell', 'Collecting duct', 'Oncocytoma', 'C', 'Clear cell is most common (75%)'),
('d0040022-0000-0000-0000-000000000022', 2, 'T1a renal tumor size:', '≤4 cm', '4-7 cm', '7-10 cm', '>10 cm', 'Any size', 'A', 'T1a = ≤4cm'),
('d0040022-0000-0000-0000-000000000022', 3, 'Preferred surgery for 3cm renal mass:', 'Radical nephrectomy', 'Partial nephrectomy', 'Ablation only', 'Observation', 'Biopsy only', 'B', 'Partial nephrectomy preferred for T1a'),
('d0040022-0000-0000-0000-000000000022', 4, 'Classic triad of RCC present in:', '<10%', '25%', '50%', '75%', '>90%', 'A', 'Classic triad present in <10%'),
('d0040022-0000-0000-0000-000000000022', 5, 'RCC response to chemotherapy:', 'Highly sensitive', 'Moderately sensitive', 'Resistant', 'Complete response', 'Unknown', 'C', 'RCC is chemotherapy resistant');
