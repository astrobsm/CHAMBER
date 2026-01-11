-- CME Article 9: Abdominal Trauma - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040009-0000-0000-0000-000000000009', 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004', 'Abdominal Trauma', 'Assessment and Management of Blunt and Penetrating Injuries', 'Review of abdominal trauma covering mechanisms, assessment, imaging, and management of solid organ and hollow viscus injuries.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040009-0000-0000-0000-000000000009', 'introduction', 1, 'Introduction', 'Abdominal trauma: blunt (90%) vs penetrating (10%). Blunt: MVA, falls, assault. Penetrating: stab, gunshot. Missed abdominal injuries common cause of preventable death. Priorities: resuscitation, rapid assessment, timely intervention.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040009-0000-0000-0000-000000000009', 'learning_objectives', 2, 'Learning Objectives', '1. Apply ATLS principles\n2. Assess hemodynamic stability\n3. Select appropriate imaging\n4. Grade solid organ injuries\n5. Determine operative vs non-operative management\n6. Recognize hollow viscus injury\n7. Apply damage control surgery');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040009-0000-0000-0000-000000000009', 'content', 3, 'Assessment', 'ATLS primary survey: ABCDE. Physical exam: inspection, tenderness, peritonitis, seat belt sign. FAST: free fluid in hepatorenal, splenorenal, pelvis, pericardium. CT: stable patients, grades injuries. DPL: largely replaced by FAST/CT. Repeat exams essential.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040009-0000-0000-0000-000000000009', 'content', 4, 'Solid Organ Injuries', 'Spleen: most commonly injured in blunt trauma. Non-operative management if stable. Liver: second most common. Most stop bleeding spontaneously. Kidney: hematuria indicator. Most managed non-operatively. Grading I-V determines management.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040009-0000-0000-0000-000000000009', 'content', 5, 'Operative Indications', 'Absolute: hemodynamic instability, peritonitis, evisceration, GSW traversing peritoneum. Relative: free air, mesenteric injury, high-grade solid organ injury with blush. Damage control: for hypothermia, acidosis, coagulopathy (lethal triad).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040009-0000-0000-0000-000000000009', 'key_points', 6, 'Key Points', 'FAST for unstable patients. CT for stable patients. Non-operative management for most solid organ injuries if stable. Peritonitis = laparotomy. Damage control for lethal triad. Serial exams essential.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040009-0000-0000-0000-000000000009', 1, 'Most commonly injured organ in blunt abdominal trauma:', 'Liver', 'Spleen', 'Kidney', 'Bowel', 'Pancreas', 'B', 'Spleen is most commonly injured in blunt abdominal trauma'),
('d0040009-0000-0000-0000-000000000009', 2, 'FAST exam evaluates all EXCEPT:', 'Hepatorenal space', 'Splenorenal space', 'Pelvis', 'Retroperitoneum', 'Pericardium', 'D', 'FAST does not evaluate retroperitoneum'),
('d0040009-0000-0000-0000-000000000009', 3, 'Lethal triad in trauma includes:', 'HTN, tachycardia, fever', 'Hypothermia, acidosis, coagulopathy', 'Hypoxia, hypotension, tachycardia', 'Fever, leukocytosis, tachycardia', 'Bradycardia, hypotension, hypothermia', 'B', 'Lethal triad: hypothermia, acidosis, coagulopathy'),
('d0040009-0000-0000-0000-000000000009', 4, 'Indication for immediate laparotomy:', 'Stable patient with splenic laceration', 'Hemodynamic instability', 'Microscopic hematuria', 'Small liver laceration', 'Stable renal contusion', 'B', 'Hemodynamic instability is indication for immediate laparotomy'),
('d0040009-0000-0000-0000-000000000009', 5, 'Preferred imaging for stable abdominal trauma patient:', 'X-ray', 'Ultrasound', 'CT scan', 'MRI', 'DPL', 'C', 'CT scan preferred for stable abdominal trauma patients');
