-- CME Article 52: Mesenteric Ischemia - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040052-0000-0000-0000-000000000052', 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004', 'Mesenteric Ischemia', 'Acute and Chronic Presentations', 'Review of mesenteric vascular disease covering acute occlusion, non-occlusive ischemia, and chronic mesenteric ischemia.', 'UNTH Surgery Department', 25, 1.5, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040052-0000-0000-0000-000000000052', 'introduction', 1, 'Introduction', 'Mesenteric ischemia: inadequate blood flow to intestines. Acute: surgical emergency, high mortality. Types: arterial embolism (50%), arterial thrombosis (25%), non-occlusive (20%), venous thrombosis (5%). SMA territory most affected.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040052-0000-0000-0000-000000000052', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize acute mesenteric ischemia\n2. Know risk factors by type\n3. Diagnose promptly\n4. Understand non-occlusive ischemia\n5. Plan surgical intervention\n6. Assess bowel viability\n7. Know chronic ischemia');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040052-0000-0000-0000-000000000052', 'content', 3, 'Acute Mesenteric Ischemia', 'Presentation: pain out of proportion to exam (early), peritonitis (late). Embolic: sudden, AF history. Thrombotic: gradual, atherosclerosis. Labs: lactate elevated (late), leukocytosis. CT angiography: gold standard.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040052-0000-0000-0000-000000000052', 'content', 4, 'Non-Occlusive Mesenteric Ischemia', 'NOMI: vasospasm without occlusion. Risk: low-flow states (shock, cardiac surgery, dialysis). Diagnosis of exclusion. Treatment: correct underlying cause, vasodilators (papaverine). High mortality.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040052-0000-0000-0000-000000000052', 'content', 5, 'Treatment', 'Resuscitate, anticoagulate. Embolectomy for embolic. Bypass for thrombotic. Resect necrotic bowel. Second-look laparotomy at 24-48 hours. Chronic: intestinal angina (postprandial pain, weight loss), revascularization.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040052-0000-0000-0000-000000000052', 'key_points', 6, 'Key Points', 'Pain out of proportion is classic. Embolism most common acute cause. CT angiography for diagnosis. Lactate elevation is late sign. Second-look laparotomy important. High mortality even with treatment.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040052-0000-0000-0000-000000000052', 1, 'Most common cause of acute mesenteric ischemia:', 'Venous thrombosis', 'Arterial thrombosis', 'Arterial embolism', 'Non-occlusive', 'Trauma', 'C', 'Arterial embolism accounts for 50%'),
('d0040052-0000-0000-0000-000000000052', 2, 'Classic early finding in mesenteric ischemia:', 'Peritonitis', 'Pain out of proportion', 'Bloody stool', 'Distension', 'Fever', 'B', 'Pain disproportionate to exam is early finding'),
('d0040052-0000-0000-0000-000000000052', 3, 'Imaging of choice for mesenteric ischemia:', 'Plain X-ray', 'Ultrasound', 'CT angiography', 'Barium study', 'MRI', 'C', 'CT angiography is gold standard'),
('d0040052-0000-0000-0000-000000000052', 4, 'NOMI is caused by:', 'Embolism', 'Thrombosis', 'Vasospasm', 'Venous occlusion', 'Trauma', 'C', 'NOMI is due to vasospasm in low-flow states'),
('d0040052-0000-0000-0000-000000000052', 5, 'Chronic mesenteric ischemia presents with:', 'Acute pain', 'Postprandial pain and weight loss', 'Constipation', 'Bloody diarrhea', 'No symptoms', 'B', 'Intestinal angina: postprandial pain, weight loss');
