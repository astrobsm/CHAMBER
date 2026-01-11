-- CME Article 41: Anorectal Disorders - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040041-0000-0000-0000-000000000041', 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004', 'Common Anorectal Disorders', 'Diagnosis and Management', 'Review of hemorrhoids, fissures, fistulas, and abscesses covering presentation and treatment options.', 'UNTH Surgery Department', 25, 1.5, 'easy', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040041-0000-0000-0000-000000000041', 'introduction', 1, 'Introduction', 'Anorectal disorders are common. Include hemorrhoids (most common), anal fissure, perianal abscess, fistula-in-ano. History and physical examination usually diagnostic. Proper examination: lateral position, anoscopy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040041-0000-0000-0000-000000000041', 'learning_objectives', 2, 'Learning Objectives', '1. Classify hemorrhoids\n2. Distinguish fissure from hemorrhoid\n3. Recognize perianal abscess\n4. Understand fistula anatomy\n5. Know treatment options\n6. Recognize emergencies\n7. Identify red flags');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040041-0000-0000-0000-000000000041', 'content', 3, 'Hemorrhoids', 'Internal: above dentate line, painless bleeding. External: below dentate line, painful if thrombosed. Grading: I (bleed), II (prolapse, reduce spontaneously), III (manual reduction), IV (irreducible). Treatment: fiber, banding, hemorrhoidectomy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040041-0000-0000-0000-000000000041', 'content', 4, 'Fissure and Abscess', 'Anal fissure: tear in anoderm, posterior midline (90%), severe pain with defecation. Treatment: fiber, sitz baths, GTN/diltiazem, sphincterotomy. Perianal abscess: painful swelling, requires I&D. Fournier gangrene: necrotizing perineal infection.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040041-0000-0000-0000-000000000041', 'content', 5, 'Fistula-in-Ano', 'Abnormal tract from anal canal to perianal skin. Follows abscess in 50%. Goodsall rule: posterior = curved tract to midline, anterior = straight. Treatment: fistulotomy (simple), seton, advancement flap (complex/high).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040041-0000-0000-0000-000000000041', 'key_points', 6, 'Key Points', 'Internal hemorrhoids are painless. Fissure at posterior midline. Abscess needs drainage. Fistula follows abscess. Goodsall rule for tract. Atypical fissure location warrants investigation.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040041-0000-0000-0000-000000000041', 1, 'Most common location for anal fissure:', 'Anterior midline', 'Posterior midline', 'Lateral', 'Right', 'Left', 'B', 'Posterior midline is location in 90% of fissures'),
('d0040041-0000-0000-0000-000000000041', 2, 'Grade III hemorrhoids:', 'Bleed only', 'Reduce spontaneously', 'Require manual reduction', 'Irreducible', 'No symptoms', 'C', 'Grade III require manual reduction'),
('d0040041-0000-0000-0000-000000000041', 3, 'Treatment for perianal abscess:', 'Antibiotics alone', 'Incision and drainage', 'Observation', 'Sitz baths', 'Fiber', 'B', 'Abscesses require surgical drainage'),
('d0040041-0000-0000-0000-000000000041', 4, 'Fistula-in-ano follows abscess in:', '10%', '30%', '50%', '70%', '90%', 'C', 'Fistula develops in ~50% of abscesses'),
('d0040041-0000-0000-0000-000000000041', 5, 'According to Goodsall rule, posterior fistula tract is:', 'Straight', 'Curved to midline', 'Always superficial', 'Complex', 'Absent', 'B', 'Posterior tracts curve to posterior midline');
