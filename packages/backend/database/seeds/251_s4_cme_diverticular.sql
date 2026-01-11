-- CME Article 51: Diverticular Disease - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040051-0000-0000-0000-000000000051', 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004', 'Diverticular Disease', 'From Diverticulosis to Complicated Diverticulitis', 'Review of diverticular disease covering spectrum from asymptomatic to complicated disease and surgical management.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040051-0000-0000-0000-000000000051', 'introduction', 1, 'Introduction', 'Diverticulosis: outpouchings of colonic wall. Prevalence increases with age (>50% by age 60). Most asymptomatic. Diverticulitis: inflammation/infection of diverticulum. Sigmoid colon most common site. Low fiber diet is risk factor.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040051-0000-0000-0000-000000000051', 'learning_objectives', 2, 'Learning Objectives', '1. Understand pathophysiology\n2. Classify diverticulitis (Hinchey)\n3. Diagnose acute diverticulitis\n4. Manage uncomplicated disease\n5. Know surgical indications\n6. Handle complications\n7. Plan elective surgery');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040051-0000-0000-0000-000000000051', 'content', 3, 'Presentation and Diagnosis', 'LLQ pain (left-sided appendicitis), fever, leukocytosis. CT: gold standard - thickened wall, pericolic fat stranding, abscess. Hinchey classification: I (pericolic abscess), II (pelvic abscess), III (purulent peritonitis), IV (fecal peritonitis).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040051-0000-0000-0000-000000000051', 'content', 4, 'Medical Management', 'Uncomplicated: antibiotics, bowel rest. Outpatient for mild cases. Small abscess (<3cm): antibiotics alone. Larger abscess: percutaneous drainage. Colonoscopy 6-8 weeks after resolution to exclude malignancy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040051-0000-0000-0000-000000000051', 'content', 5, 'Surgical Management', 'Emergency: Hinchey III/IV, failed conservative. Hartmann procedure (sigmoid resection + colostomy) vs primary anastomosis. Elective: recurrent episodes, stricture, fistula. Laparoscopic approach when feasible.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040051-0000-0000-0000-000000000051', 'key_points', 6, 'Key Points', 'LLQ pain classic. CT for diagnosis. Hinchey classification guides management. Drain abscesses >3cm. Colonoscopy after resolution. Hartmann for complicated cases.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040051-0000-0000-0000-000000000051', 1, 'Most common site for diverticulosis:', 'Ascending colon', 'Transverse colon', 'Sigmoid colon', 'Rectum', 'Cecum', 'C', 'Sigmoid colon is most common site'),
('d0040051-0000-0000-0000-000000000051', 2, 'Hinchey III is:', 'Pericolic abscess', 'Pelvic abscess', 'Purulent peritonitis', 'Fecal peritonitis', 'Phlegmon', 'C', 'Hinchey III = purulent peritonitis'),
('d0040051-0000-0000-0000-000000000051', 3, 'Imaging of choice for diverticulitis:', 'X-ray', 'Barium enema', 'CT', 'Colonoscopy', 'Ultrasound', 'C', 'CT is gold standard for acute diverticulitis'),
('d0040051-0000-0000-0000-000000000051', 4, 'Colonoscopy after diverticulitis should be done:', 'Immediately', '6-8 weeks after resolution', '6 months later', '1 year later', 'Never needed', 'B', 'Colonoscopy 6-8 weeks after to exclude cancer'),
('d0040051-0000-0000-0000-000000000051', 5, 'Hartmann procedure involves:', 'Colostomy only', 'Sigmoid resection with colostomy', 'Primary anastomosis', 'Ileostomy', 'Appendectomy', 'B', 'Hartmann: sigmoid resection + end colostomy');
