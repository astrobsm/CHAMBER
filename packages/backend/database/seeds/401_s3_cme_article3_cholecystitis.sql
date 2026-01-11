-- ============================================================================
-- SURGERY 3 CME ARTICLE 3: Acute Cholecystitis
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000069-0000-0000-0000-000000000069', 'a0000003-0000-0000-0000-000000000003', 'Acute Cholecystitis', 'Diagnosis and management of gallbladder disease')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000303-0000-0000-0000-000000000003',
    'c0000069-0000-0000-0000-000000000069',
    'a0000003-0000-0000-0000-000000000003',
    'Acute Cholecystitis: From Diagnosis to Definitive Management',
    'Understanding Gallbladder Inflammation and Its Surgical Treatment',
    'Acute cholecystitis is inflammation of the gallbladder, usually caused by gallstone obstruction of the cystic duct. This article covers pathophysiology, clinical presentation with Murphy sign, Tokyo Guidelines for diagnosis and severity grading, imaging with ultrasound, and management including early laparoscopic cholecystectomy.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000303-0001-0000-0000-000000000001', 'd0000303-0000-0000-0000-000000000003', 1,
'A 45-year-old woman presents with right upper quadrant pain, fever of 38.2C, and a positive Murphy sign. Ultrasound shows gallstones with gallbladder wall thickening of 5mm and pericholecystic fluid. What is the most likely diagnosis?',
'Biliary colic', 'Acute cholecystitis', 'Acute cholangitis', 'Acute pancreatitis', NULL,
'B', 'This presentation is classic for acute cholecystitis: RUQ pain, fever, positive Murphy sign (inspiratory arrest during RUQ palpation), and ultrasound findings of gallstones with wall thickening >3mm and pericholecystic fluid. Biliary colic lacks fever and inflammatory signs. Cholangitis would have jaundice (Charcot triad).', 'easy'),

('e0000303-0002-0000-0000-000000000002', 'd0000303-0000-0000-0000-000000000003', 2,
'According to the Tokyo Guidelines, what is the imaging finding most suggestive of acute cholecystitis?',
'Common bile duct dilation', 'Gallbladder wall thickening greater than 3mm with pericholecystic fluid', 'Pancreatic head mass', 'Portal vein thrombosis', NULL,
'B', 'The Tokyo Guidelines diagnostic criteria include imaging findings of gallbladder wall thickening (>3mm), pericholecystic fluid, positive sonographic Murphy sign, and gallstones/sludge. CBD dilation suggests choledocholithiasis, not cholecystitis specifically.', 'medium'),

('e0000303-0003-0000-0000-000000000003', 'd0000303-0000-0000-0000-000000000003', 3,
'What is the Murphy sign?',
'Pain with palpation of the left lower quadrant', 'Inspiratory arrest during deep palpation of the right upper quadrant', 'Pain radiating to the back', 'Rebound tenderness in the RUQ', NULL,
'B', 'Murphy sign is inspiratory arrest (patient stops breathing in) during deep palpation of the RUQ as the inflamed gallbladder descends and contacts the examining fingers. It has high sensitivity (65-97%) for acute cholecystitis. Sonographic Murphy sign (pain when transducer presses on gallbladder) is also useful.', 'easy'),

('e0000303-0004-0000-0000-000000000004', 'd0000303-0000-0000-0000-000000000003', 4,
'What is the preferred timing for laparoscopic cholecystectomy in acute cholecystitis?',
'6-8 weeks after resolution of symptoms', 'Within 72 hours of presentation (early cholecystectomy)', 'Only if antibiotics fail after 2 weeks', 'Within 6 hours as emergent surgery', NULL,
'B', 'Current evidence supports early laparoscopic cholecystectomy within 72 hours (Tokyo Guidelines recommend within 1 week of symptom onset). Early surgery is associated with shorter total hospital stay, lower costs, and equivalent complication rates compared to delayed surgery. Waiting 6-8 weeks leads to recurrent attacks and higher conversion rates.', 'medium'),

('e0000303-0005-0000-0000-000000000005', 'd0000303-0000-0000-0000-000000000003', 5,
'In a critically ill patient with acute cholecystitis who is too unstable for surgery, what is the recommended intervention?',
'Conservative management only with antibiotics', 'Percutaneous cholecystostomy for gallbladder drainage', 'ERCP with sphincterotomy', 'Endoscopic ultrasound', NULL,
'B', 'Percutaneous cholecystostomy (PC) is the recommended temporizing measure for high-risk patients (severe sepsis, multiple comorbidities) who cannot tolerate surgery. A catheter is placed into the gallbladder under imaging guidance to drain infected bile. This allows stabilization, with interval cholecystectomy performed later when the patient improves.', 'medium'),

('e0000303-0006-0000-0000-000000000006', 'd0000303-0000-0000-0000-000000000003', 6,
'What percentage of acute cholecystitis cases are acalculous (without gallstones)?',
'50%', 'Less than 10%', '25%', '75%', NULL,
'B', 'Acalculous cholecystitis accounts for 5-10% of cases. It typically occurs in critically ill patients (ICU, trauma, burns, TPN, post-major surgery) and is associated with gallbladder ischemia and bile stasis. It has higher morbidity and mortality than calculous cholecystitis due to delayed diagnosis and the underlying critical illness.', 'medium'),

('e0000303-0007-0000-0000-000000000007', 'd0000303-0000-0000-0000-000000000003', 7,
'The Calot triangle is bounded by:',
'Liver edge, stomach, and duodenum', 'Cystic duct, common hepatic duct, and inferior edge of the liver', 'Portal vein, hepatic artery, and bile duct', 'Left and right hepatic ducts and gallbladder', NULL,
'B', 'Calot triangle (hepatocystic triangle) boundaries: cystic duct inferiorly, common hepatic duct medially, and inferior liver edge (cystic plate) superiorly. Contents include cystic artery and cystic lymph node. Achieving the critical view of safety requires clearing this triangle to see only the cystic duct and artery entering the gallbladder.', 'easy'),

('e0000303-0008-0000-0000-000000000008', 'd0000303-0000-0000-0000-000000000003', 8,
'A patient undergoes laparoscopic cholecystectomy and develops a bile leak on postoperative day 2 with RUQ pain and bile in the drain. What is the most appropriate next step?',
'Immediate reoperation', 'ERCP to evaluate and potentially stent any bile duct injury', 'CT-guided drainage only', 'Observation', NULL,
'B', 'Postoperative bile leak should be evaluated with ERCP to identify the source (cystic duct stump leak vs bile duct injury) and provide treatment. Most cystic duct leaks and minor injuries can be managed with biliary stenting or sphincterotomy. CT-guided drainage of bilomas may be needed adjunctively. Major bile duct injuries may require surgical reconstruction.', 'hard'),

('e0000303-0009-0000-0000-000000000009', 'd0000303-0000-0000-0000-000000000003', 9,
'What finding on imaging suggests emphysematous cholecystitis?',
'Thickened gallbladder wall', 'Gas within the gallbladder wall', 'Pericholecystic fluid', 'Gallstones with acoustic shadowing', NULL,
'B', 'Emphysematous cholecystitis shows gas within the gallbladder wall or lumen on X-ray or CT. It is caused by gas-forming organisms (Clostridium, E. coli, Klebsiella) and is associated with diabetes in 30-50% of cases. It carries higher perforation risk and requires urgent cholecystectomy or cholecystostomy.', 'medium'),

('e0000303-0010-0000-0000-000000000010', 'd0000303-0000-0000-0000-000000000003', 10,
'The critical view of safety during laparoscopic cholecystectomy requires visualization of:',
'The cystic artery only', 'Only the cystic duct and artery entering the gallbladder with the hepatocystic triangle cleared', 'The common bile duct throughout', 'The portal vein', NULL,
'B', 'The critical view of safety (CVS) requires: (1) Hepatocystic triangle cleared of fat and fibrous tissue, (2) Lower third of gallbladder separated from liver to expose cystic plate, (3) Only two structures (cystic duct and cystic artery) entering the gallbladder. This ensures correct identification before clipping and cutting, preventing bile duct injuries.')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 3 (Acute Cholecystitis) with 10 self-assessment questions inserted' as status;
