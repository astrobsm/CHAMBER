-- CME Article 56: Inflammatory Bowel Disease Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040056-0000-0000-0000-000000000056', 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004', 'Surgical Management of IBD', 'Crohn Disease and Ulcerative Colitis', 'Review of surgical indications and procedures for inflammatory bowel disease.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040056-0000-0000-0000-000000000056', 'introduction', 1, 'Introduction', 'IBD: Crohn disease (transmural, any GI site) and ulcerative colitis (mucosa, colon only). 70-90% of Crohn patients need surgery. 25-30% of UC patients need surgery. Surgery curative in UC, not in Crohn.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040056-0000-0000-0000-000000000056', 'learning_objectives', 2, 'Learning Objectives', '1. Distinguish UC from Crohn surgically\n2. Know surgical indications\n3. Understand IPAA procedure\n4. Manage Crohn strictures\n5. Handle perianal Crohn\n6. Recognize complications\n7. Plan staged procedures');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040056-0000-0000-0000-000000000056', 'content', 3, 'Ulcerative Colitis', 'Indications: refractory to medical therapy, dysplasia/cancer, fulminant colitis, toxic megacolon. Procedure: total proctocolectomy with ileal pouch-anal anastomosis (IPAA). J-pouch most common. Curative. Pouchitis in 50%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040056-0000-0000-0000-000000000056', 'content', 4, 'Crohn Disease', 'Indications: obstruction, fistula, abscess, perforation, hemorrhage, failed medical therapy. Conservative resection (limited margins). Strictureplasty for short strictures. Not curative - recurrence 50% at 10 years.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040056-0000-0000-0000-000000000056', 'content', 5, 'Complications', 'Crohn: fistulas (entero-enteric, entero-cutaneous, entero-vesical), abscesses, short bowel. UC: toxic megacolon, massive bleeding, cancer risk. Post-IPAA: pouchitis, anastomotic leak, pouch failure.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040056-0000-0000-0000-000000000056', 'key_points', 6, 'Key Points', 'Surgery curative in UC only. IPAA is procedure of choice for UC. Crohn: conservative resection. Strictureplasty preserves bowel. High recurrence in Crohn. Toxic megacolon needs urgent surgery.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040056-0000-0000-0000-000000000056', 1, 'Surgery is curative in:', 'Crohn disease', 'Ulcerative colitis', 'Both', 'Neither', 'Only with biologics', 'B', 'Proctocolectomy is curative for UC'),
('d0040056-0000-0000-0000-000000000056', 2, 'Procedure of choice for UC:', 'Subtotal colectomy', 'IPAA', 'Hemicolectomy', 'Proctectomy only', 'Ileostomy only', 'B', 'IPAA is procedure of choice for UC'),
('d0040056-0000-0000-0000-000000000056', 3, 'Strictureplasty is used in:', 'UC', 'Crohn disease', 'Both equally', 'Neither', 'Diverticulitis', 'B', 'Strictureplasty preserves bowel in Crohn'),
('d0040056-0000-0000-0000-000000000056', 4, 'Crohn recurrence after surgery:', '5%', '20%', '50% at 10 years', '90%', 'Never recurs', 'C', 'About 50% recurrence at 10 years'),
('d0040056-0000-0000-0000-000000000056', 5, 'Toxic megacolon requires:', 'Observation', 'Medical therapy only', 'Urgent surgery', 'Outpatient management', 'Colonoscopy', 'C', 'Toxic megacolon needs urgent surgical intervention');
