-- ============================================================================
-- SURGERY 3 CME ARTICLE 39: Pancreatic Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000105-0000-0000-0000-000000000105', 'a0000003-0000-0000-0000-000000000003', 'Pancreatic Surgery', 'Surgical management of pancreatic diseases')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000339-0000-0000-0000-000000000039',
    'c0000105-0000-0000-0000-000000000105',
    'a0000003-0000-0000-0000-000000000003',
    'Pancreatic Surgery: Indications and Techniques',
    'Pancreatitis, Tumors, and Resection Procedures',
    'This article covers surgical management of pancreatic diseases including acute and chronic pancreatitis, pancreatic cystic lesions, pancreatic adenocarcinoma, neuroendocrine tumors, and surgical procedures including Whipple, distal pancreatectomy, and drainage procedures.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000339-0001-0000-0000-000000000001', 'd0000339-0000-0000-0000-000000000039', 1,
'The most common indication for pancreaticoduodenectomy (Whipple procedure) is:',
'Chronic pancreatitis', 'Pancreatic head adenocarcinoma', 'Pseudocyst', 'Acute pancreatitis', NULL,
'B', 'Pancreaticoduodenectomy indications: (1) Pancreatic head adenocarcinoma (most common); (2) Ampullary carcinoma; (3) Distal bile duct cancer; (4) Duodenal cancer; (5) Selected periampullary tumors, neuroendocrine tumors, cystic neoplasms. Procedure removes: pancreatic head, duodenum, distal stomach (or pylorus-preserving), distal bile duct, gallbladder. Reconstructions: pancreaticojejunostomy, hepaticojejunostomy, gastrojejunostomy. Mortality at high-volume centers <3%. Only 15-20% of pancreatic cancers resectable at presentation.', 'easy'),

('e0000339-0002-0000-0000-000000000002', 'd0000339-0000-0000-0000-000000000039', 2,
'Pancreatic fistula after pancreatic resection is defined as:',
'Any abdominal drain output', 'Drain output with amylase level more than 3 times serum amylase after postoperative day 3', 'Bile leak only', 'Wound infection', NULL,
'B', 'ISGPS pancreatic fistula definition: drain output any measurable volume on or after POD 3 with amylase content >3x upper limit of normal serum amylase. Grading: Biochemical leak - no clinical impact; Grade B - requires change in management (prolonged drain, antibiotics, TPN); Grade C - organ failure, reoperation, death. Risk factors: soft pancreas texture, small main pancreatic duct (<3mm), high-risk pathology, blood loss. Prevention: drain placement, octreotide (controversial). Treatment: drain management, NPO/TPN, interventional drainage if needed.', 'medium'),

('e0000339-0003-0000-0000-000000000003', 'd0000339-0000-0000-0000-000000000039', 3,
'Pancreatic pseudocyst drainage is indicated when:',
'All pseudocysts should be drained immediately', 'Symptomatic (pain, gastric outlet obstruction), infected, enlarging, or greater than 6 cm persisting beyond 6 weeks', 'Never required', 'Only by surgery', NULL,
'B', 'Pseudocyst intervention indications: (1) Symptomatic (pain, early satiety, nausea, weight loss); (2) Infected (pancreatic abscess); (3) Complications (hemorrhage, obstruction, rupture); (4) Enlarging; (5) >6 cm persisting >6 weeks (increased complication risk). Drainage options: (1) Endoscopic - transmural (cystogastrostomy/cystoduodenostomy) or transpapillary if communicates with duct; (2) Percutaneous - if infected, immature wall; (3) Surgical - cystogastrostomy, cystojejunostomy. Mature wall (>6 weeks) required for internal drainage.', 'medium'),

('e0000339-0004-0000-0000-000000000004', 'd0000339-0000-0000-0000-000000000039', 4,
'The tumor marker commonly elevated in pancreatic adenocarcinoma is:',
'AFP', 'CA 19-9', 'CEA only', 'PSA', NULL,
'B', 'CA 19-9: most commonly used tumor marker for pancreatic adenocarcinoma. Sensitivity ~80%, specificity ~80-90%. Limitations: not for screening, elevated in other conditions (cholangitis, pancreatitis, other GI cancers), 5-10% population lacks Lewis antigen and cannot produce CA 19-9. Uses: (1) Baseline before treatment; (2) Assess response to therapy; (3) Surveillance for recurrence. Very high levels (>1000) suggest unresectable/metastatic disease. CEA also elevated in some cases.', 'easy'),

('e0000339-0005-0000-0000-000000000005', 'd0000339-0000-0000-0000-000000000039', 5,
'Delayed gastric emptying after Whipple procedure:',
'Never occurs', 'Is the most common complication, usually resolving with conservative management', 'Requires immediate reoperation', 'Indicates anastomotic leak', NULL,
'B', 'Delayed gastric emptying (DGE): most common complication after Whipple (20-40%). Definition (ISGPS): NGT requirement or inability to tolerate diet by various postoperative days (Grade A, B, C). Causes: disruption of gastric neural pathways, peripancreatic inflammation, other complications. Usually self-limiting. Treatment: NGT decompression, prokinetics (erythromycin, metoclopramide), nutritional support, exclude other complications (leak, obstruction). Most resolve within 2-4 weeks. Pylorus-preserving technique may have higher DGE rates.', 'medium'),

('e0000339-0006-0000-0000-000000000006', 'd0000339-0000-0000-0000-000000000039', 6,
'Mucinous cystic neoplasms (MCN) of the pancreas:',
'Occur equally in men and women', 'Occur almost exclusively in women, have ovarian-type stroma, and should be resected due to malignant potential', 'Are always benign', 'Do not communicate with pancreatic duct', NULL,
'B', 'MCN characteristics: (1) Almost exclusively in women (>95%); (2) Body/tail location predominant; (3) Ovarian-type stroma (pathognomonic); (4) Do NOT communicate with pancreatic duct; (5) Malignant potential (invasive carcinoma in 10-17%). No septations/nodules. Treatment: surgical resection (distal pancreatectomy usually). Contrast with IPMN: occurs in both sexes, communicates with duct system, can be main duct or branch duct type. Serous cystadenomas are benign, can be observed if asymptomatic.', 'medium'),

('e0000339-0007-0000-0000-000000000007', 'd0000339-0000-0000-0000-000000000039', 7,
'The Ranson criteria for acute pancreatitis severity are assessed at:',
'Any single time point', 'Admission and 48 hours', 'Only at 72 hours', 'One week after admission', NULL,
'B', 'Ranson criteria timing: At admission: Age >55, WBC >16,000, Glucose >200, LDH >350, AST >250. At 48 hours: Hct drop >10%, BUN rise >5, Calcium <8, PaO2 <60, Base deficit >4, Fluid sequestration >6L. Score ≥3 indicates severe pancreatitis. Limitations: requires 48 hours to complete. Alternatives: APACHE II (any time), BISAP (simpler, early), CT severity index. Current focus on organ failure (Atlanta classification) and persistent vs transient organ failure for prognosis.', 'medium'),

('e0000339-0008-0000-0000-000000000008', 'd0000339-0000-0000-0000-000000000039', 8,
'Insulinoma is characterized by:',
'Hyperglycemia and weight loss', 'Whipple triad: hypoglycemia, neuroglycopenic symptoms, and relief with glucose administration', 'Always malignant', 'No surgical treatment', NULL,
'B', 'Insulinoma: most common functioning pancreatic neuroendocrine tumor. Whipple triad: (1) Symptoms of hypoglycemia (confusion, diaphoresis, palpitations, seizures); (2) Low blood glucose (<50 mg/dL); (3) Relief of symptoms with glucose. Diagnosis: supervised fasting test (inappropriately elevated insulin/C-peptide during hypoglycemia). Localization: CT/MRI, endoscopic ultrasound, intraoperative ultrasound. Treatment: surgical enucleation or resection (>90% benign, curable). Rule out MEN1.', 'medium'),

('e0000339-0009-0000-0000-000000000009', 'd0000339-0000-0000-0000-000000000039', 9,
'The Puestow procedure (lateral pancreaticojejunostomy) is indicated for:',
'Pancreatic cancer', 'Chronic pancreatitis with dilated main pancreatic duct (chain of lakes appearance)', 'Acute pancreatitis', 'Pseudocyst without ductal dilation', NULL,
'B', 'Puestow procedure (lateral pancreaticojejunostomy/LPJ): drainage procedure for chronic pancreatitis with dilated main pancreatic duct (>7mm, chain of lakes). Technique: pancreatic duct opened along its length, side-to-side anastomosis to Roux-en-Y jejunal limb. Provides drainage and pain relief (60-80%). Alternative: Frey procedure (LPJ + local head coring, for inflammatory head mass). Beger procedure: duodenum-preserving pancreatic head resection. Selection depends on anatomy and head involvement.', 'hard'),

('e0000339-0010-0000-0000-000000000010', 'd0000339-0000-0000-0000-000000000039', 10,
'Borderline resectable pancreatic cancer is defined by:',
'Distant metastases', 'Tumor involvement of major vessels that may be reconstructable with negative margins', 'Completely encased SMA', 'No vascular involvement', NULL,
'B', 'Borderline resectable pancreatic cancer: tumor-vessel relationships that question ability to achieve R0 resection, but potentially reconstructable. Criteria vary but include: SMV/PV involvement with distortion, narrowing, or short-segment occlusion suitable for resection/reconstruction; SMA abutment <180 degrees; short-segment hepatic artery involvement. Management: neoadjuvant chemotherapy +/- radiation, then restage. If no progression, surgical exploration. Contrasts with locally advanced (unresectable without distant disease) and resectable (clear planes around vessels).', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 39 (Pancreatic Surgery) with 10 self-assessment questions inserted' as status;
