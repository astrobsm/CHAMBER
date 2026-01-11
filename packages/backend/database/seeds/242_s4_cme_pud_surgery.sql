-- CME Article 42: Peptic Ulcer Disease Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040042-0000-0000-0000-000000000042', 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004', 'Surgical Management of Peptic Ulcer Disease', 'Complications and Operative Treatment', 'Review of PUD complications requiring surgery including perforation, bleeding, and obstruction.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040042-0000-0000-0000-000000000042', 'introduction', 1, 'Introduction', 'PUD complications requiring surgery: perforation, hemorrhage, obstruction. H. pylori and NSAIDs main causes. Emergency surgery for perforation and refractory bleeding. Definitive surgery less common with PPI era.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040042-0000-0000-0000-000000000042', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize perforated ulcer\n2. Know surgical options for perforation\n3. Manage bleeding ulcer\n4. Understand gastric outlet obstruction\n5. Know definitive procedures\n6. Recognize complications\n7. Plan post-op management');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040042-0000-0000-0000-000000000042', 'content', 3, 'Perforation', 'Presentation: sudden severe epigastric pain, peritonitis, free air. Erect CXR: pneumoperitoneum (75%). Surgery: omental patch (Graham patch) most common. Laparoscopic approach possible. Test for H. pylori and treat.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040042-0000-0000-0000-000000000042', 'content', 4, 'Bleeding', 'First-line: endoscopy (injection, clips, thermal). Surgery if: failed endoscopy x2, hemodynamic instability, transfusion >6 units. Procedure: oversew bleeding vessel, may add vagotomy/pyloroplasty. Posterior DU: gastroduodenal artery.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040042-0000-0000-0000-000000000042', 'content', 5, 'Obstruction', 'Gastric outlet obstruction: vomiting, succussion splash, metabolic alkalosis. NG decompression, correct electrolytes. Endoscopy to rule out malignancy (biopsy). Surgery: pyloroplasty, gastrojejunostomy, antrectomy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040042-0000-0000-0000-000000000042', 'key_points', 6, 'Key Points', 'Erect CXR shows free air in perforation. Graham patch for simple repair. GDA artery in posterior DU bleeding. Gastric outlet obstruction: rule out malignancy. Treat H. pylori post-operatively.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040042-0000-0000-0000-000000000042', 1, 'Most common procedure for perforated duodenal ulcer:', 'Gastrectomy', 'Graham patch', 'Vagotomy', 'Billroth I', 'Billroth II', 'B', 'Graham (omental) patch is most common'),
('d0040042-0000-0000-0000-000000000042', 2, 'Artery causing posterior DU bleeding:', 'Left gastric', 'Splenic', 'Gastroduodenal', 'Hepatic', 'Superior mesenteric', 'C', 'GDA erodes in posterior duodenal ulcers'),
('d0040042-0000-0000-0000-000000000042', 3, 'Metabolic abnormality in gastric outlet obstruction:', 'Metabolic acidosis', 'Metabolic alkalosis', 'Respiratory acidosis', 'Respiratory alkalosis', 'Normal pH', 'B', 'Loss of gastric acid causes metabolic alkalosis'),
('d0040042-0000-0000-0000-000000000042', 4, 'CXR finding in perforated ulcer:', 'Widened mediastinum', 'Pneumoperitoneum', 'Consolidation', 'Effusion', 'Normal', 'B', 'Free air under diaphragm in perforation'),
('d0040042-0000-0000-0000-000000000042', 5, 'Surgery for bleeding ulcer indicated when:', 'First bleed', 'Stable patient', 'Failed endoscopy x2', 'Minor bleeding', 'All patients', 'C', 'Surgery after failed endoscopic treatment');
