-- CME Article 20: BPH - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040020-0000-0000-0000-000000000020', 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004', 'Benign Prostatic Hyperplasia', 'Evaluation and Management of LUTS', 'Review of BPH covering pathophysiology, evaluation with IPSS, medical therapy, and surgical options including TURP.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040020-0000-0000-0000-000000000020', 'introduction', 1, 'Introduction', 'BPH affects 50% of men by age 60, 90% by age 85. Transition zone hyperplasia causes LUTS. Obstructive symptoms: hesitancy, weak stream, straining. Irritative: frequency, urgency, nocturia. Can lead to retention, UTI, stones, renal failure.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040020-0000-0000-0000-000000000020', 'learning_objectives', 2, 'Learning Objectives', '1. Understand BPH pathophysiology\n2. Apply IPSS scoring\n3. Perform prostate evaluation\n4. Select medical therapy\n5. Identify surgical indications\n6. Compare surgical options\n7. Manage complications');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040020-0000-0000-0000-000000000020', 'content', 3, 'Evaluation', 'IPSS (International Prostate Symptom Score): 0-7 mild, 8-19 moderate, 20-35 severe. DRE for size and cancer screening. PSA (may be elevated in BPH). Urinalysis. Post-void residual. Uroflowmetry. Cystoscopy if hematuria.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040020-0000-0000-0000-000000000020', 'content', 4, 'Medical Treatment', 'Alpha-blockers (tamsulosin, alfuzosin): relax smooth muscle, rapid effect, may cause orthostatic hypotension. 5-alpha reductase inhibitors (finasteride, dutasteride): shrink prostate, take 6 months, may affect PSA. Combination therapy for large prostates.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040020-0000-0000-0000-000000000020', 'content', 5, 'Surgical Treatment', 'Indications: refractory retention, recurrent UTI, bladder stones, renal insufficiency, failed medical therapy. TURP: gold standard, resection with electrocautery. HoLEP: laser enucleation. Open prostatectomy for very large (>80-100g).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040020-0000-0000-0000-000000000020', 'key_points', 6, 'Key Points', 'Transition zone hyperplasia. IPSS grades severity. Alpha-blockers rapid effect. 5ARI shrink prostate (6 months). TURP gold standard surgery. Watch for TUR syndrome with prolonged resection.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040020-0000-0000-0000-000000000020', 1, 'BPH arises from:', 'Peripheral zone', 'Transition zone', 'Central zone', 'Anterior stroma', 'Periurethral glands', 'B', 'BPH arises from transition zone'),
('d0040020-0000-0000-0000-000000000020', 2, 'IPSS score 22 indicates:', 'Mild symptoms', 'Moderate symptoms', 'Severe symptoms', 'Asymptomatic', 'Complete obstruction', 'C', 'IPSS 20-35 = severe symptoms'),
('d0040020-0000-0000-0000-000000000020', 3, 'Alpha-blocker side effect:', 'Gynecomastia', 'Decreased libido', 'Orthostatic hypotension', 'Elevated PSA', 'Weight gain', 'C', 'Alpha-blockers can cause orthostatic hypotension'),
('d0040020-0000-0000-0000-000000000020', 4, 'Time for 5ARI effect:', '1 week', '1 month', '3 months', '6 months', '1 year', 'D', '5ARI takes 6 months for full effect'),
('d0040020-0000-0000-0000-000000000020', 5, 'Gold standard surgery for BPH:', 'Open prostatectomy', 'TURP', 'HoLEP', 'UroLift', 'Rezum', 'B', 'TURP is gold standard surgical treatment');
