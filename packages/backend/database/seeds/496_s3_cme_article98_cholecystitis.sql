-- ============================================================================
-- SURGERY 3 CME ARTICLE 98: Cholecystitis and Biliary Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000164-0000-0000-0000-000000000164', 'a0000003-0000-0000-0000-000000000003', 'Cholecystitis and Biliary Surgery', 'Gallbladder disease and biliary tract surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000398-0000-0000-0000-000000000098',
    'c0000164-0000-0000-0000-000000000164',
    'a0000003-0000-0000-0000-000000000003',
    'Cholecystitis and Biliary Surgery: Comprehensive Management',
    'From Gallstones to Common Bile Duct Exploration',
    'This article covers gallstone pathophysiology, biliary colic, acute cholecystitis, cholangitis, choledocholithiasis, laparoscopic cholecystectomy technique including critical view of safety, bile duct injury prevention and management, and acalculous cholecystitis.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000398-0001-0000-0000-000000000001', 'd0000398-0000-0000-0000-000000000098', 1,
'The Charcot triad of acute cholangitis consists of:',
'Only fever', 'Fever, right upper quadrant pain, and jaundice, indicating infection of the biliary tract', 'Fever and jaundice only', 'Hypotension and confusion',
'B', 'CHARCOT TRIAD (acute cholangitis): (1) FEVER with chills/rigors; (2) RIGHT UPPER QUADRANT PAIN; (3) JAUNDICE. Indicates BILIARY TRACT INFECTION, usually from obstruction (choledocholithiasis most common). Present in 50-70% of cholangitis. REYNOLDS PENTAD: Charcot triad + (4) HYPOTENSION + (5) ALTERED MENTAL STATUS (indicates severe/suppurative cholangitis - septic shock). TREATMENT: antibiotics, biliary drainage (ERCP preferred, or percutaneous transhepatic if ERCP fails). Emergency - can be rapidly fatal without decompression.', 'easy'),

('e0000398-0002-0000-0000-000000000002', 'd0000398-0000-0000-0000-000000000098', 2,
'The critical view of safety (CVS) during laparoscopic cholecystectomy:',
'Is optional for experienced surgeons', 'Requires clearing the hepatocystic triangle, separating the lower gallbladder from the liver bed, and visualizing only two structures entering the gallbladder before division', 'Only applies to open surgery', 'Requires routine cholangiogram',
'B', 'CRITICAL VIEW OF SAFETY (Strasberg): technique to prevent bile duct injury during laparoscopic cholecystectomy. THREE CRITERIA: (1) HEPATOCYSTIC TRIANGLE cleared of fat and fibrous tissue; (2) LOWER ONE-THIRD of gallbladder separated from cystic plate (liver bed); (3) ONLY TWO STRUCTURES (cystic duct and cystic artery) seen entering gallbladder. Do NOT clip or cut until CVS achieved. If cannot obtain CVS: bailout options (subtotal cholecystectomy, open conversion, cholecystostomy). CVS reduces bile duct injury rate. Photo documentation recommended.', 'easy'),

('e0000398-0003-0000-0000-000000000003', 'd0000398-0000-0000-0000-000000000098', 3,
'Timing of cholecystectomy for acute cholecystitis:',
'Should be delayed for weeks', 'Early cholecystectomy within 72 hours is preferred, with lower morbidity and shorter hospital stay compared to delayed surgery', 'Surgery is contraindicated', 'Always requires immediate surgery',
'B', 'TIMING of cholecystectomy in acute cholecystitis: EARLY (within 72 hours of symptom onset) vs DELAYED (6-8 weeks after resolution). EVIDENCE: Early cholecystectomy is PREFERRED - shorter total HOSPITAL STAY, similar/lower complication rates, no recurrent episodes while waiting, one hospitalization vs two. Tokyo Guidelines support early surgery for mild-moderate cases. SEVERE cholecystitis: may need percutaneous cholecystostomy first if patient too ill for surgery. Delayed considered if: very late presentation (>7 days with phlegmon), severe comorbidities requiring optimization.', 'easy'),

('e0000398-0004-0000-0000-000000000004', 'd0000398-0000-0000-0000-000000000098', 4,
'Murphy sign in acute cholecystitis is:',
'Rebound tenderness', 'Inspiratory arrest during deep palpation of the right upper quadrant due to pain as the inflamed gallbladder descends and contacts the examining hand', 'Jaundice', 'Pulsatile abdominal mass',
'B', 'MURPHY SIGN: examiner palpates below right costal margin (gallbladder location); patient asked to take DEEP BREATH; INSPIRATORY ARREST occurs as inflamed gallbladder descends and contacts examining hand causing pain. Sensitivity ~65%, specificity ~87% for acute cholecystitis. SONOGRAPHIC Murphy sign: same principle with ultrasound probe - maximal tenderness over gallbladder visualized on ultrasound (more specific when positive). Other findings: RUQ tenderness, guarding, palpable gallbladder (uncommon).', 'easy'),

('e0000398-0005-0000-0000-000000000005', 'd0000398-0000-0000-0000-000000000098', 5,
'Choledocholithiasis (CBD stones) should be suspected when:',
'Gallstones are present', 'There is elevated bilirubin, dilated common bile duct on imaging (greater than 6 mm), elevated alkaline phosphatase, or history of pancreatitis or cholangitis', 'Patient is asymptomatic', 'Only after cholecystectomy',
'B', 'CHOLEDOCHOLITHIASIS (CBD stones) PREDICTORS - risk stratification: HIGH RISK (>50%): CBD stone on imaging, cholangitis, bilirubin >4. INTERMEDIATE RISK: abnormal LFTs (elevated bilirubin, ALP), dilated CBD (>6 mm, adjustfor age - add 1mm per decade over 60), age >55, gallstone pancreatitis. LOW RISK: normal LFTs, non-dilated CBD. MANAGEMENT: High risk - ERCP before cholecystectomy; Intermediate - MRCP, EUS, or IOC during cholecystectomy; Low risk - proceed to cholecystectomy. CBD dilation without stones may be post-cholecystectomy dilation, age-related, or prior stone passage.', 'medium'),

('e0000398-0006-0000-0000-000000000006', 'd0000398-0000-0000-0000-000000000098', 6,
'Bile duct injury during cholecystectomy:',
'Is common and inconsequential', 'Is a serious complication (0.1-0.5% incidence) that can cause significant morbidity, with outcomes depending on early recognition and appropriate repair', 'Cannot be prevented', 'Always requires liver transplant',
'B', 'BILE DUCT INJURY (BDI): serious cholecystectomy complication. INCIDENCE: 0.1-0.5% (slightly higher with laparoscopic than open in early experience, now similar). MECHANISMS: misidentification of CBD as cystic duct (most common), cautery injury, clips placed incorrectly. PRESENTATION: bile leak (drain output, pain, fever), jaundice, biloma, stricture (late). MANAGEMENT depends on injury type (Strasberg classification): minor leaks may seal with drainage/stent; major injuries require hepaticojejunostomy (Roux-en-Y) by experienced hepatobiliary surgeon. PREVENTION: critical view of safety, intraoperative cholangiogram when indicated, bailout when unsafe.', 'medium'),

('e0000398-0007-0000-0000-000000000007', 'd0000398-0000-0000-0000-000000000098', 7,
'Acalculous cholecystitis:',
'Is the most common form', 'Occurs without gallstones, typically in critically ill patients (ICU, post-operative, trauma, burns), has high mortality, and is treated with cholecystectomy or percutaneous cholecystostomy', 'Only affects healthy outpatients', 'Resolves without treatment',
'B', 'ACALCULOUS CHOLECYSTITIS: gallbladder inflammation WITHOUT gallstones (5-10% of acute cholecystitis). SETTINGS: critically ill (ICU), post-operative, TRAUMA, burns, TPN, sepsis, mechanical ventilation, vasopressors. MECHANISM: gallbladder stasis + ischemia + bile stasis. HIGH MORTALITY (>30%) - often diagnosed late in sick patients. IMAGING: ultrasound (gallbladder distension, wall thickening, pericholecystic fluid, no stones, sonographic Murphy). CT or HIDA scan may help. TREATMENT: surgery (cholecystectomy) if patient can tolerate; percutaneous CHOLECYSTOSTOMY (drain placement) if too ill for OR. IV antibiotics.', 'medium'),

('e0000398-0008-0000-0000-000000000008', 'd0000398-0000-0000-0000-000000000098', 8,
'Gallstone pancreatitis is treated with:',
'Delayed cholecystectomy after months', 'Early cholecystectomy during same admission after resolution of pancreatitis to prevent recurrence, with ERCP if there is evidence of choledocholithiasis or cholangitis', 'No cholecystectomy needed', 'Immediate ERCP for all patients',
'B', 'GALLSTONE PANCREATITIS management: (1) Initial supportive care (fluids, analgesia, NPO); (2) ERCP indicated if: cholangitis, persistent biliary obstruction (rising bilirubin), or visible CBD stone - urgent ERCP. Most stones pass spontaneously; (3) CHOLECYSTECTOMY during SAME ADMISSION after pancreatitis resolves (reduces recurrence from 30-50% to <5%). Timing: mild pancreatitis - early cholecystectomy safe; severe pancreatitis - after clinical improvement, may need delayed. Do not discharge without cholecystectomy unless patient unfit (then interval cholecystectomy at 6 weeks).', 'medium'),

('e0000398-0009-0000-0000-000000000009', 'd0000398-0000-0000-0000-000000000098', 9,
'Subtotal cholecystectomy is performed when:',
'It is the preferred routine technique', 'Inflammation makes dissection of the gallbladder neck unsafe, and leaving the posterior wall prevents bile duct injury while removing most of the gallbladder', 'Patient refuses complete surgery', 'Only for malignancy',
'B', 'SUBTOTAL (partial) CHOLECYSTECTOMY: BAILOUT procedure when complete cholecystectomy is UNSAFE due to severe inflammation obscuring anatomy. TECHNIQUE: remove anterior/fundic portion of gallbladder, leave POSTERIOR WALL attached to liver (near CBD), extract stones, close or drain remnant. RATIONALE: "damage control" - prevents BILE DUCT INJURY, converts dangerous situation to safe one. Better than persisting with dangerous dissection or forced conversion. Can be fenestrating (remnant open, drain placed) or reconstituting (remnant closed). Low morbidity, rare symptomatic recurrence.', 'medium'),

('e0000398-0010-0000-0000-000000000010', 'd0000398-0000-0000-0000-000000000098', 10,
'Porcelain gallbladder (calcified gallbladder wall):',
'Requires no treatment', 'Was historically thought to have high malignancy risk requiring cholecystectomy, but recent data suggest lower risk; cholecystectomy still generally recommended', 'Is a contraindication to surgery', 'Is always benign',
'B', 'PORCELAIN GALLBLADDER: calcification of gallbladder wall. HISTORICAL teaching: 25% risk of gallbladder CANCER - cholecystectomy mandatory. RECENT DATA: malignancy risk much LOWER (0-7% in recent series), especially with stippled (incomplete) calcification. Complete mural calcification may have even lower risk. CURRENT PRACTICE: cholecystectomy still generally RECOMMENDED (eliminates any cancer risk, removes symptomatic gallstones), but not as emergent. If cholecystectomy performed, send specimen for pathology. In elderly/high-risk patients, may observe with imaging. Any suspicious findings warrant oncologic resection.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 98 (Cholecystitis and Biliary Surgery) with 10 self-assessment questions inserted' as status;
