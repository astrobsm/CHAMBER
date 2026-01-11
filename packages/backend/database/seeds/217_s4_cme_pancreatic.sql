-- CME Article 17: Pancreatic Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040017-0000-0000-0000-000000000017', 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004', 'Pancreatic Cancer: Surgical Approach', 'Diagnosis, Staging, and Resection', 'Review of pancreatic cancer covering diagnosis, resectability criteria, surgical techniques, and perioperative management.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040017-0000-0000-0000-000000000017', 'introduction', 1, 'Introduction', 'Pancreatic adenocarcinoma has poor prognosis (5-year survival <10%). Risk factors: smoking, diabetes, chronic pancreatitis, family history, BRCA2. 60-70% in head. Presents late: jaundice, weight loss, pain. Only 15-20% resectable at diagnosis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040017-0000-0000-0000-000000000017', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize clinical presentation\n2. Apply diagnostic imaging\n3. Assess resectability\n4. Perform staging laparoscopy\n5. Select surgical approach\n6. Manage biliary obstruction\n7. Understand neoadjuvant therapy');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040017-0000-0000-0000-000000000017', 'content', 3, 'Diagnosis and Staging', 'CT pancreas protocol with thin cuts. Resectability: clear fat planes around SMA/celiac, patent SMV/portal vein. CA 19-9 marker. EUS for tissue diagnosis, staging. ERCP/PTC for biliary obstruction. Staging laparoscopy to exclude occult metastases.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040017-0000-0000-0000-000000000017', 'content', 4, 'Surgical Treatment', 'Pancreaticoduodenectomy (Whipple): head tumors, includes duodenum, distal bile duct, gallbladder. Distal pancreatectomy + splenectomy: body/tail tumors. Vascular resection for borderline resectable. Mortality <5% at high-volume centers.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040017-0000-0000-0000-000000000017', 'content', 5, 'Perioperative Care', 'Neoadjuvant therapy for borderline resectable. Biliary stenting if cholangitis/delay to surgery. Adjuvant chemotherapy (FOLFIRINOX or gemcitabine/capecitabine). Delayed gastric emptying most common complication. Pancreatic fistula graded A-C.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040017-0000-0000-0000-000000000017', 'key_points', 6, 'Key Points', 'Poor prognosis, only 15-20% resectable. CT pancreas protocol for diagnosis. Clear SMA/celiac = resectable. Whipple for head tumors. Staging laparoscopy excludes occult disease. Adjuvant chemo improves survival.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040017-0000-0000-0000-000000000017', 1, 'Most common location for pancreatic cancer:', 'Head', 'Body', 'Tail', 'Uncinate', 'Diffuse', 'A', 'Head of pancreas is most common location (60-70%)'),
('d0040017-0000-0000-0000-000000000017', 2, 'Tumor marker for pancreatic cancer:', 'AFP', 'CEA', 'CA 19-9', 'PSA', 'CA 125', 'C', 'CA 19-9 is marker for pancreatic cancer'),
('d0040017-0000-0000-0000-000000000017', 3, 'Vascular structure determining resectability:', 'IVC', 'Aorta', 'SMA', 'Hepatic artery', 'Splenic artery', 'C', 'SMA involvement determines resectability'),
('d0040017-0000-0000-0000-000000000017', 4, 'Standard procedure for pancreatic head cancer:', 'Distal pancreatectomy', 'Pancreaticoduodenectomy', 'Total pancreatectomy', 'Enucleation', 'Central pancreatectomy', 'B', 'Pancreaticoduodenectomy (Whipple) for head tumors'),
('d0040017-0000-0000-0000-000000000017', 5, 'Most common complication after Whipple:', 'Bleeding', 'Anastomotic leak', 'Delayed gastric emptying', 'Wound infection', 'DVT', 'C', 'Delayed gastric emptying is most common complication');
