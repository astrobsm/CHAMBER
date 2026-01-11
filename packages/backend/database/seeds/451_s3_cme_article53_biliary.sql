-- ============================================================================
-- SURGERY 3 CME ARTICLE 53: Cholecystitis and Biliary Disease
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000119-0000-0000-0000-000000000119', 'a0000003-0000-0000-0000-000000000003', 'Cholecystitis and Biliary Disease', 'Comprehensive gallbladder and biliary management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000353-0000-0000-0000-000000000053',
    'c0000119-0000-0000-0000-000000000119',
    'a0000003-0000-0000-0000-000000000003',
    'Biliary Disease: From Cholelithiasis to Cholangitis',
    'Complete Guide to Gallbladder and Biliary Pathology',
    'This article covers the spectrum of biliary disease including asymptomatic gallstones, biliary colic, acute cholecystitis, choledocholithiasis, and cholangitis with emphasis on clinical presentation, imaging, and management strategies.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000353-0001-0000-0000-000000000001', 'd0000353-0000-0000-0000-000000000053', 1,
'Biliary colic differs from acute cholecystitis in that biliary colic:',
'Lasts for days', 'Is episodic pain lasting less than 6 hours without systemic inflammation or continuous pain', 'Always has fever', 'Has positive Murphy sign', NULL,
'B', 'Biliary colic: transient cystic duct obstruction by stone. Features: (1) Episodic RUQ/epigastric pain, often postprandial (fatty meals); (2) Duration typically 30 minutes to 6 hours (longer suggests cholecystitis); (3) No fever, normal WBC; (4) Normal US (except gallstones); (5) Pain resolves completely between episodes. Acute cholecystitis: persistent cystic duct obstruction leading to inflammation. Features: (1) Continuous RUQ pain >6 hours; (2) Fever, leukocytosis; (3) Positive Murphy sign; (4) US: gallstones, wall thickening >4mm, pericholecystic fluid, sonographic Murphy.', 'easy'),

('e0000353-0002-0000-0000-000000000002', 'd0000353-0000-0000-0000-000000000053', 2,
'Ultrasound findings in acute cholecystitis include:',
'Normal gallbladder only', 'Gallstones, wall thickening greater than 4mm, pericholecystic fluid, and sonographic Murphy sign', 'Dilated common bile duct only', 'Pneumobilia only', NULL,
'B', 'Ultrasound in acute cholecystitis (sensitivity 80-90%): (1) Gallstones (present in 90-95% of cholecystitis); (2) Gallbladder wall thickening >4mm; (3) Pericholecystic fluid; (4) Sonographic Murphy sign (tenderness when US probe compresses GB); (5) Gallbladder distension. HIDA scan: if US equivocal - non-visualization of GB at 4 hours = cystic duct obstruction (sensitivity 95%). CT: for complications (perforation, gangrenous cholecystitis, emphysematous cholecystitis - gas in wall).', 'easy'),

('e0000353-0003-0000-0000-000000000003', 'd0000353-0000-0000-0000-000000000053', 3,
'Timing of cholecystectomy for acute cholecystitis:',
'Should always be delayed 6-8 weeks', 'Early cholecystectomy (within 72 hours of symptoms, ideally within 7 days of admission) is preferred', 'Is never indicated', 'Should be immediate regardless of patient status', NULL,
'B', 'Cholecystectomy timing for acute cholecystitis: Early (index admission) is now standard. Best: within 72 hours of symptom onset (easier dissection before dense inflammation/fibrosis). Acceptable: within 7-10 days of admission. Benefits of early surgery: shorter total hospital stay, lower morbidity, lower cost, avoids waiting for interval surgery. Delayed/interval cholecystectomy (6-8 weeks): reserved for patients presenting late (>7-10 days with significant inflammation), high surgical risk, severe sepsis requiring stabilization. Cholecystostomy (percutaneous drainage) for patients too ill for surgery.', 'medium'),

('e0000353-0004-0000-0000-000000000004', 'd0000353-0000-0000-0000-000000000053', 4,
'Emphysematous cholecystitis:',
'Is a benign condition', 'Is gas-forming infection of the gallbladder, more common in diabetics, with high perforation risk requiring urgent surgery', 'Only occurs in young females', 'Never requires surgery', NULL,
'B', 'Emphysematous cholecystitis: gas-forming infection of gallbladder wall. Organisms: Clostridium, E. coli, Klebsiella. Risk factors: diabetes (30-50%), males, elderly, immunocompromised. Often acalculous. Presentation: severe, rapidly progressive, toxic. Diagnosis: CT shows gas in gallbladder wall/lumen. Complications: high perforation rate (75%), gangrene, sepsis. Treatment: URGENT cholecystectomy, broad-spectrum antibiotics. Higher morbidity/mortality than typical cholecystitis. Do not delay surgery.', 'medium'),

('e0000353-0005-0000-0000-000000000005', 'd0000353-0000-0000-0000-000000000053', 5,
'Choledocholithiasis (CBD stone) is suggested by:',
'Normal liver function tests', 'Elevated bilirubin, ALP, and GGT, with dilated CBD greater than 6mm on imaging', 'Leukocytosis only', 'Positive Murphy sign alone', NULL,
'B', 'Choledocholithiasis predictors: (1) Elevated bilirubin (conjugated/direct); (2) Elevated ALP and GGT; (3) Dilated CBD on US (>6mm, or >8-10mm post-cholecystectomy/with age); (4) Stone visible in CBD on imaging. ASGE risk stratification: HIGH risk (visible CBD stone, cholangitis, bilirubin >4) - ERCP before or during cholecystectomy. INTERMEDIATE risk (dilated CBD, abnormal LFTs, age >55, pancreatitis) - further evaluation (MRCP, EUS, IOC). LOW risk (normal LFTs, normal CBD) - proceed with cholecystectomy.', 'easy'),

('e0000353-0006-0000-0000-000000000006', 'd0000353-0000-0000-0000-000000000053', 6,
'Acute cholangitis requires:',
'Outpatient antibiotics only', 'Antibiotics AND biliary drainage (ERCP, PTC, or surgery) within 24-48 hours, emergently if severe', 'No specific treatment', 'Cholecystectomy only', NULL,
'B', 'Acute cholangitis management: TWO components essential: (1) IV antibiotics (gram-negative, anaerobic coverage); (2) Biliary drainage - infected bile under pressure must be decompressed. Methods: ERCP with sphincterotomy/stent (preferred), percutaneous transhepatic cholangiography/drainage (PTC if ERCP fails), surgical drainage (if above unavailable). Timing: mild-moderate = within 24-48 hours; SEVERE (Tokyo Grade III - organ dysfunction) = EMERGENT drainage within 12-24 hours. Antibiotics alone inadequate. Source control critical.', 'medium'),

('e0000353-0007-0000-0000-000000000007', 'd0000353-0000-0000-0000-000000000053', 7,
'Mirizzi syndrome is:',
'Gallbladder cancer', 'Extrinsic compression of the common hepatic duct by an impacted stone in the cystic duct or Hartmann pouch', 'Normal biliary anatomy', 'Pancreatic head mass', NULL,
'B', 'Mirizzi syndrome: impacted gallstone in cystic duct or Hartmann pouch (GB neck) causing extrinsic compression of common hepatic duct (CHD). Results in obstructive jaundice. Classification (Csendes): Type I: external compression of CHD; Type II-IV: cholecystocholedochal fistula (stone erodes into CHD) with varying degrees of CBD destruction. Diagnosis: MRCP, ERCP. Treatment: Type I - cholecystectomy (often open, careful dissection due to distorted anatomy); Types II-IV - may need biliary reconstruction (choledochoplasty, hepaticojejunostomy).', 'hard'),

('e0000353-0008-0000-0000-000000000008', 'd0000353-0000-0000-0000-000000000053', 8,
'Acalculous cholecystitis:',
'Only occurs in outpatients', 'Occurs in critically ill patients without gallstones, has high morbidity/mortality, and requires urgent treatment', 'Is less severe than calculous cholecystitis', 'Never requires intervention', NULL,
'B', 'Acalculous cholecystitis: acute cholecystitis WITHOUT gallstones (5-10% of cholecystitis). Setting: critically ill patients - ICU, post-surgery, burns, trauma, TPN, prolonged fasting, mechanical ventilation. Pathophysiology: bile stasis, gallbladder ischemia. Presentation: may be subtle (sepsis of unknown source in critically ill). Diagnosis: US (wall thickening, pericholecystic fluid, sludge but no stones), HIDA. Complications: high rates of gangrene (50%) and perforation. Treatment: cholecystostomy tube (percutaneous drainage) in unstable patients; cholecystectomy in stable. Mortality 10-50%.', 'medium'),

('e0000353-0009-0000-0000-000000000009', 'd0000353-0000-0000-0000-000000000053', 9,
'The commonest type of gallstone worldwide is:',
'Pure cholesterol stone', 'Mixed stones (cholesterol + calcium bilirubinate)', 'Pure pigment stones', 'Calcium carbonate stones', NULL,
'B', 'Gallstone types: (1) CHOLESTEROL stones (10%): pure cholesterol (>50%), radiolucent, associated with Western diet, obesity, female, rapid weight loss; (2) MIXED stones (80%): cholesterol + calcium salts + bile pigments, most common type overall, may be radiopaque; (3) PIGMENT stones: Black pigment (10%) - calcium bilirubinate, associated with hemolysis, cirrhosis, radiopaque; Brown pigment - associated with biliary infections/stasis, often in CBD, soft, earthy. Risk factors (4 Fs): Female, Forty, Fertile, Fat/Family history.', 'easy'),

('e0000353-0010-0000-0000-000000000010', 'd0000353-0000-0000-0000-000000000053', 10,
'Porcelain gallbladder (calcified gallbladder wall):',
'Is benign and requires no treatment', 'Has traditionally been associated with increased cancer risk and is an indication for cholecystectomy', 'Is always symptomatic', 'Never appears on X-ray', NULL,
'B', 'Porcelain gallbladder: calcification of gallbladder wall. Visible on X-ray and CT. Traditionally associated with gallbladder cancer (historical reports 12-60% cancer risk). Recent studies suggest lower risk than previously thought, especially with mucosal-pattern calcification (vs. complete wall calcification). Current recommendation: cholecystectomy is generally advised due to malignancy concern, especially if complete/intramural calcification. Selective observation may be reasonable for asymptomatic elderly with mucosal calcification only. If cancer found: extended cholecystectomy.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 53 (Cholecystitis and Biliary Disease) with 10 self-assessment questions inserted' as status;
