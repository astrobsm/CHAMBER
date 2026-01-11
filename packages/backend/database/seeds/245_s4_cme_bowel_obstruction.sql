-- CME Article 45: Intestinal Obstruction - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040045-0000-0000-0000-000000000045', 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004', 'Intestinal Obstruction', 'Small and Large Bowel', 'Comprehensive review of mechanical bowel obstruction covering causes, diagnosis, and management.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040045-0000-0000-0000-000000000045', 'introduction', 1, 'Introduction', 'Bowel obstruction: mechanical or functional (ileus). Small bowel obstruction (SBO): adhesions (60%), hernias (20%), tumors. Large bowel obstruction (LBO): cancer (60%), volvulus (20%), diverticular disease. Urgent surgical problem.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040045-0000-0000-0000-000000000045', 'learning_objectives', 2, 'Learning Objectives', '1. Distinguish SBO from LBO\n2. Know causes by location\n3. Recognize strangulation\n4. Interpret imaging\n5. Manage conservatively when appropriate\n6. Know surgical indications\n7. Handle special situations');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040045-0000-0000-0000-000000000045', 'content', 3, 'Presentation', 'SBO: colicky pain, vomiting early, distension. LBO: distension early, vomiting late, absolute constipation. Strangulation: constant pain, fever, tachycardia, peritonitis. Closed-loop: risk of perforation (competent ileocecal valve).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040045-0000-0000-0000-000000000045', 'content', 4, 'Diagnosis', 'X-ray: dilated loops, air-fluid levels, absence of distal gas. CT: most sensitive, identifies transition point and cause. Small bowel >3cm, large bowel >6cm, cecum >9cm (3-6-9 rule). Look for closed loop, ischemia.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040045-0000-0000-0000-000000000045', 'content', 5, 'Management', 'Initial: NPO, NG decompression, IV fluids, correct electrolytes. Partial SBO: trial of conservative (48-72 hours). Complete/strangulated: surgery. LBO: usually surgical. Water-soluble contrast may predict resolution.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040045-0000-0000-0000-000000000045', 'key_points', 6, 'Key Points', 'Adhesions most common cause of SBO. Cancer most common cause of LBO. CT identifies transition point. Strangulation needs urgent surgery. 3-6-9 rule for bowel diameter. Resuscitate before surgery.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040045-0000-0000-0000-000000000045', 1, 'Most common cause of SBO:', 'Hernia', 'Adhesions', 'Tumor', 'Crohn disease', 'Volvulus', 'B', 'Adhesions cause 60% of SBO'),
('d0040045-0000-0000-0000-000000000045', 2, 'Most common cause of LBO:', 'Volvulus', 'Diverticulitis', 'Cancer', 'Hernia', 'Adhesions', 'C', 'Cancer causes 60% of LBO'),
('d0040045-0000-0000-0000-000000000045', 3, 'Cecal diameter concerning for perforation:', '>3 cm', '>6 cm', '>9 cm', '>12 cm', '>15 cm', 'C', '3-6-9 rule: cecum >9cm at risk'),
('d0040045-0000-0000-0000-000000000045', 4, 'Sign of strangulated obstruction:', 'Intermittent pain', 'Constant pain with fever', 'No vomiting', 'Mild distension', 'Gradual onset', 'B', 'Strangulation causes constant pain, fever'),
('d0040045-0000-0000-0000-000000000045', 5, 'Imaging of choice for bowel obstruction:', 'Plain X-ray', 'CT abdomen', 'Ultrasound', 'MRI', 'Barium enema', 'B', 'CT is most sensitive and identifies cause');
