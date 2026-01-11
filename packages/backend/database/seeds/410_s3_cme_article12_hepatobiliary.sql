-- ============================================================================
-- SURGERY 3 CME ARTICLE 12: Hepatobiliary and Pancreatic Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000078-0000-0000-0000-000000000078', 'a0000003-0000-0000-0000-000000000003', 'Hepatobiliary Surgery', 'Liver, biliary and pancreatic surgical conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000312-0000-0000-0000-000000000012',
    'c0000078-0000-0000-0000-000000000078',
    'a0000003-0000-0000-0000-000000000003',
    'Hepatobiliary and Pancreatic Surgery: Principles and Practice',
    'Liver Tumors, Gallstone Disease, Biliary Obstruction and Pancreatic Disorders',
    'This article covers surgical anatomy of the liver and biliary tree, management of hepatocellular carcinoma and liver metastases, choledocholithiasis and cholangitis, obstructive jaundice workup, acute and chronic pancreatitis, and pancreatic cancer diagnosis and treatment.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000312-0001-0000-0000-000000000001', 'd0000312-0000-0000-0000-000000000012', 1,
'Couinaud classification divides the liver into how many functionally independent segments?',
'4', '6', '8', '10', NULL,
'C', 'Couinaud classification divides the liver into 8 functionally independent segments based on hepatic vein and portal vein branches. Each segment has its own portal pedicle (portal vein, hepatic artery, bile duct) and hepatic venous drainage. The caudate lobe (segment 1) drains directly into the IVC. This allows anatomic liver resections preserving vascular and biliary supply to remaining liver.', 'medium'),

('e0000312-0002-0000-0000-000000000002', 'd0000312-0000-0000-0000-000000000012', 2,
'The most common primary malignant liver tumor is:',
'Cholangiocarcinoma', 'Hepatocellular carcinoma (HCC)', 'Hepatoblastoma', 'Angiosarcoma', NULL,
'B', 'Hepatocellular carcinoma is the most common primary liver malignancy (75-85%), usually arising in cirrhotic liver. Risk factors: hepatitis B and C, cirrhosis, aflatoxin exposure, alcoholism. AFP is elevated in 70%. Diagnosis often made by imaging (CT/MRI) with characteristic arterial enhancement and washout. Treatment: resection, transplant (Milan criteria), ablation, TACE, or systemic therapy.', 'easy'),

('e0000312-0003-0000-0000-000000000003', 'd0000312-0000-0000-0000-000000000012', 3,
'Charcot triad of ascending cholangitis includes:',
'Fever, RUQ pain, and hypotension', 'Fever, jaundice, and RUQ pain', 'Jaundice, altered mental status, and hypotension', 'Fever, diarrhea, and weight loss', NULL,
'B', 'Charcot triad: fever with chills/rigors, jaundice, and right upper quadrant pain - indicates ascending cholangitis (infected bile duct obstruction). Present in 50-75% of cases. Reynolds pentad adds hypotension and altered mental status (septic shock) - indicates severe/suppurative cholangitis requiring urgent biliary decompression (ERCP preferred). Tokyo Guidelines help severity grading.', 'easy'),

('e0000312-0004-0000-0000-000000000004', 'd0000312-0000-0000-0000-000000000012', 4,
'The initial imaging of choice for a patient with obstructive jaundice is:',
'CT abdomen with contrast', 'Transabdominal ultrasound', 'MRCP', 'ERCP', NULL,
'B', 'Transabdominal ultrasound is first-line for obstructive jaundice: noninvasive, available, inexpensive, can detect dilated bile ducts (confirms obstruction), gallstones, liver masses. If dilated ducts, further characterization with CT or MRCP determines level and cause of obstruction. ERCP is therapeutic, not diagnostic first-line. CBD >7mm on US (or >10mm post-cholecystectomy) suggests obstruction.', 'easy'),

('e0000312-0005-0000-0000-000000000005', 'd0000312-0000-0000-0000-000000000012', 5,
'ERCP is indicated for:',
'Diagnosis of pancreatic cancer', 'Therapeutic removal of common bile duct stones', 'Staging of cholangiocarcinoma', 'Surveillance of chronic pancreatitis', NULL,
'B', 'ERCP is primarily therapeutic: CBD stone extraction (sphincterotomy and stone removal), biliary stenting for malignant obstruction, treatment of bile leaks, sphincter of Oddi dysfunction. Diagnostic ERCP has been replaced by MRCP (noninvasive). ERCP complications include post-ERCP pancreatitis (3-5%), bleeding, perforation, cholangitis. MRCP is the diagnostic modality for biliary/pancreatic duct imaging.', 'medium'),

('e0000312-0006-0000-0000-000000000006', 'd0000312-0000-0000-0000-000000000012', 6,
'The Whipple procedure (pancreaticoduodenectomy) involves resection of:',
'Body and tail of pancreas with spleen', 'Head of pancreas, duodenum, distal stomach, common bile duct, and gallbladder', 'Entire pancreas', 'Only the duodenum', NULL,
'B', 'Pancreaticoduodenectomy (Whipple) resects: head of pancreas, duodenum, distal common bile duct, gallbladder, and distal stomach (or pylorus-preserving variant). Reconstructions: pancreaticojejunostomy, hepaticojejunostomy, and gastrojejunostomy. Indicated for periampullary tumors (pancreatic head, ampulla, distal CBD, duodenum). High-volume centers have lower morbidity and mortality.', 'medium'),

('e0000312-0007-0000-0000-000000000007', 'd0000312-0000-0000-0000-000000000012', 7,
'The Ranson criteria at admission for acute pancreatitis severity include all EXCEPT:',
'Age >55 years', 'WBC >16,000/mm3', 'Blood glucose >200 mg/dL', 'Serum calcium <8 mg/dL', NULL,
'D', 'Ranson criteria at admission (WAGAL): WBC >16,000, Age >55, Glucose >200, AST >250, LDH >350. At 48 hours (C-HOBBS): Calcium <8, Hematocrit drop >10%, PaO2 <60, BUN increase >5, Base deficit >4, Sequestered fluid >6L. Serum calcium is a 48-hour criterion, not at admission. Score ≥3 indicates severe pancreatitis. BISAP and APACHE II are also used for severity assessment.', 'hard'),

('e0000312-0008-0000-0000-000000000008', 'd0000312-0000-0000-0000-000000000012', 8,
'A pseudocyst of the pancreas is:',
'A true cyst with epithelial lining', 'An encapsulated collection of pancreatic fluid without epithelial lining', 'A solid pancreatic tumor', 'A congenital malformation', NULL,
'B', 'Pancreatic pseudocysts are encapsulated collections of enzyme-rich fluid that develop 4-6 weeks after acute pancreatitis. They lack an epithelial lining (distinguishing them from true cysts). Most resolve spontaneously. Intervention (endoscopic, percutaneous, or surgical drainage) indicated for: symptomatic, >6cm, enlarging, infected, or complicated (hemorrhage, obstruction). Cyst fluid analysis helps distinguish from cystic neoplasms.', 'medium'),

('e0000312-0009-0000-0000-000000000009', 'd0000312-0000-0000-0000-000000000012', 9,
'CA 19-9 tumor marker is most useful for:',
'Screening for pancreatic cancer in general population', 'Monitoring response to treatment and detecting recurrence in known pancreatic cancer', 'Diagnosing acute pancreatitis', 'Differentiating benign from malignant liver lesions', NULL,
'B', 'CA 19-9 is not useful for screening (low sensitivity/specificity in asymptomatic population). It is helpful for monitoring treatment response and detecting recurrence in diagnosed pancreatic cancer. Elevated in 75-85% of pancreatic cancers, but also in cholangitis, cirrhosis, other GI cancers. Level correlates with tumor burden; postoperative normalization suggests complete resection.', 'medium'),

('e0000312-0010-0000-0000-000000000010', 'd0000312-0000-0000-0000-000000000012', 10,
'Milan criteria for liver transplantation in HCC include:',
'Any number of tumors if total diameter <10cm', 'Single tumor ≤5cm, or up to 3 tumors each ≤3cm, no vascular invasion, no extrahepatic disease', 'Only single tumors <2cm', 'Tumors with portal vein thrombosis acceptable', NULL,
'B', 'Milan criteria for HCC liver transplant: single tumor ≤5cm OR up to 3 tumors each ≤3cm, with no macrovascular invasion and no extrahepatic spread. Patients meeting these criteria have excellent post-transplant outcomes (5-year survival ~70-75%). Downstaging protocols allow some patients beyond Milan to become eligible. UCSF criteria are expanded (single ≤6.5cm or 3 tumors ≤4.5cm with total ≤8cm).', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 12 (Hepatobiliary Surgery) with 10 self-assessment questions inserted' as status;
