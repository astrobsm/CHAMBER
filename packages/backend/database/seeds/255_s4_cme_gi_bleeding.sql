-- CME Article 55: GI Bleeding - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040055-0000-0000-0000-000000000055', 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004', 'Gastrointestinal Bleeding', 'Upper and Lower GI Hemorrhage', 'Comprehensive review of GI bleeding covering causes, resuscitation, diagnosis, and surgical intervention.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040055-0000-0000-0000-000000000055', 'introduction', 1, 'Introduction', 'GI bleeding: upper (proximal to ligament of Treitz) vs lower. UGIB: PUD most common (50%), varices, Mallory-Weiss. LGIB: diverticulosis (40%), angiodysplasia, hemorrhoids, cancer. Mortality 5-10%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040055-0000-0000-0000-000000000055', 'learning_objectives', 2, 'Learning Objectives', '1. Distinguish upper from lower GI bleeding\n2. Resuscitate appropriately\n3. Risk stratify patients\n4. Know endoscopic treatment\n5. Identify surgical indications\n6. Manage variceal bleeding\n7. Handle obscure bleeding');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040055-0000-0000-0000-000000000055', 'content', 3, 'Presentation', 'UGIB: hematemesis, melena, coffee-ground emesis. LGIB: hematochezia (can be brisk UGIB). BUN/Cr ratio >20 suggests UGIB. Glasgow-Blatchford score for risk. NG aspirate: not routine but can help.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040055-0000-0000-0000-000000000055', 'content', 4, 'Management', 'ABC, large-bore IV, transfuse if needed. UGIB: EGD within 24 hours (urgent if unstable). PPI infusion. Endoscopic therapy: injection, clips, thermal. LGIB: colonoscopy when stable. Tagged RBC scan, angiography for ongoing bleeding.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040055-0000-0000-0000-000000000055', 'content', 5, 'Surgical Intervention', 'UGIB surgery: failed endoscopy x2, >6 units transfusion, rebleeding. LGIB surgery: massive ongoing bleeding, localized source. Varices: TIPS if endoscopy fails. Obscure bleeding: capsule endoscopy, enteroscopy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040055-0000-0000-0000-000000000055', 'key_points', 6, 'Key Points', 'PUD most common cause of UGIB. Diverticulosis most common LGIB. EGD within 24 hours for UGIB. Melena = upper or proximal lower. Surgery for failed endoscopic treatment. Resuscitate before investigation.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040055-0000-0000-0000-000000000055', 1, 'Most common cause of UGIB:', 'Varices', 'Mallory-Weiss tear', 'Peptic ulcer disease', 'Gastritis', 'Cancer', 'C', 'PUD accounts for ~50% of UGIB'),
('d0040055-0000-0000-0000-000000000055', 2, 'Most common cause of LGIB:', 'Cancer', 'Hemorrhoids', 'Diverticulosis', 'IBD', 'Angiodysplasia', 'C', 'Diverticulosis is most common LGIB cause'),
('d0040055-0000-0000-0000-000000000055', 3, 'Melena indicates bleeding from:', 'Anus', 'Rectum', 'Upper GI or proximal colon', 'Left colon', 'Hemorrhoids', 'C', 'Melena suggests upper GI or right colon'),
('d0040055-0000-0000-0000-000000000055', 4, 'EGD timing for stable UGIB:', 'Immediate', 'Within 24 hours', 'Within 1 week', 'Outpatient', 'Not needed', 'B', 'EGD within 24 hours for UGIB'),
('d0040055-0000-0000-0000-000000000055', 5, 'BUN/Cr ratio >20 suggests:', 'Lower GI bleeding', 'Upper GI bleeding', 'Renal failure', 'Dehydration only', 'Normal', 'B', 'Elevated BUN/Cr ratio suggests UGIB');
