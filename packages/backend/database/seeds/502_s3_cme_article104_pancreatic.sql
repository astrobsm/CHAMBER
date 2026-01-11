-- ============================================================================
-- SURGERY 3 CME ARTICLE 104: Pancreatic Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000170-0000-0000-0000-000000000170', 'a0000003-0000-0000-0000-000000000003', 'Pancreatic Surgery', 'Surgical management of pancreatic tumors and inflammatory disease')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000404-0000-0000-0000-000000000104',
    'c0000170-0000-0000-0000-000000000170',
    'a0000003-0000-0000-0000-000000000003',
    'Pancreatic Surgery: Technical and Oncologic Principles',
    'Comprehensive Pancreatic Surgical Management',
    'This article covers pancreatic anatomy, pancreatic cancer evaluation and staging, pancreaticoduodenectomy (Whipple procedure), distal pancreatectomy, management of pancreatic cysts, and surgical management of chronic pancreatitis.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000404-0001-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 1,
'The pancreaticoduodenectomy (Whipple procedure) removes:',
'Only the pancreas', 'The pancreatic head, duodenum, distal common bile duct, gallbladder, and distal stomach (classic) or preserves the pylorus (PPPD)', 'Only the duodenum', 'The entire pancreas',
'B', 'PANCREATICODUODENECTOMY (WHIPPLE): standard operation for pancreatic head, periampullary, and distal bile duct tumors. RESECTION: PANCREATIC HEAD (to left of SMV), DUODENUM (all), DISTAL COMMON BILE DUCT, GALLBLADDER. Classic Whipple: also distal STOMACH (antrectomy). PYLORUS-PRESERVING (PPPD): preserves stomach and pylorus. RECONSTRUCTION (3 anastomoses): pancreaticojejunostomy (or pancreaticogastrostomy), hepaticojejunostomy (bile duct), gastrojejunostomy (or duodenojejunostomy in PPPD). Highly complex operation; morbidity 30-40%, mortality <5% at high-volume centers. Volume-outcome relationship important.', 'easy'),

('e0000404-0002-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 2,
'The most serious complication specific to pancreatic surgery is:',
'Wound infection', 'Postoperative pancreatic fistula (POPF), which is leakage of amylase-rich fluid from the pancreatic anastomosis or transection margin', 'DVT', 'Atelectasis',
'B', 'POSTOPERATIVE PANCREATIC FISTULA (POPF): most significant pancreatic surgery complication. DEFINITION (ISGPS): drain output with amylase >3x serum on/after POD3. GRADES: Grade A (biochemical leak): no clinical impact. Grade B: requires intervention (drainage, antibiotics, somatostatin analogues, TPN). Grade C: organ failure, reoperation, death. RISK FACTORS: soft pancreatic texture (high risk), small pancreatic duct (<3mm), ampullary/duodenal pathology (non-pancreatic cancer), high BMI, intraoperative blood loss. CONSEQUENCES: abscess, hemorrhage (from pseudoaneurysm eroding into vessels - can be fatal), delayed gastric emptying. Prevention: careful anastomosis, stents, octreotide (controversial).', 'medium'),

('e0000404-0003-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 3,
'Criteria determining resectability of pancreatic cancer include:',
'Only tumor size', 'Absence of distant metastases, no involvement of superior mesenteric artery (SMA) or celiac axis, and limited involvement of SMV/portal vein that is reconstructable', 'Only patient age', 'Symptoms only',
'B', 'PANCREATIC CANCER RESECTABILITY CRITERIA: RESECTABLE: no distant METASTASES, no SMA or celiac artery involvement, no SMV/portal vein involvement or limited contact with reconstruction possible. BORDERLINE RESECTABLE: tumor abutting SMA or hepatic artery (<180°), encasement or occlusion of SMV/portal vein if reconstructable, limited IVC involvement. LOCALLY ADVANCED (UNRESECTABLE): encasement of SMA or celiac (>180°), unreconstructable SMV/portal vein, aortic involvement. ASSESSMENT: high-quality CT (pancreas protocol), EUS for staging, staging laparoscopy (detect occult metastases). Borderline resectable: neoadjuvant therapy may convert to resectable.', 'medium'),

('e0000404-0004-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 4,
'Distal pancreatectomy with splenectomy is performed for:',
'Head lesions only', 'Tumors of the pancreatic body and tail, with spleen usually removed en bloc with the specimen due to vascular supply and oncologic principles', 'All pancreatic cysts', 'Acute pancreatitis only',
'B', 'DISTAL PANCREATECTOMY: for tumors of pancreatic BODY and TAIL. PROCEDURE: transect pancreas (usually at neck/body junction), remove distal pancreas. SPLENECTOMY usually included: splenic vessels run along pancreas, often involved by tumor or require sacrifice for adequate resection. Oncologic resection: splenectomy ensures adequate margins and nodal clearance. SPLEEN-PRESERVING distal pancreatectomy: possible for benign/low-grade lesions, preserves immune function. Two techniques: Kimura (preserve splenic vessels) or Warshaw (ligate vessels, spleen survives on short gastric collaterals). Main complication: POPF from transection margin. Stapling with mesh reinforcement common.', 'medium'),

('e0000404-0005-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 5,
'Management of pancreatic cystic lesions depends on:',
'Treating all cysts surgically', 'Cyst type (mucinous vs serous), size, presence of concerning features (nodularity, main duct dilation), and patient fitness for surgery', 'Ignoring all cysts', 'Only cyst size',
'B', 'PANCREATIC CYSTIC LESIONS management: (1) SEROUS cystadenoma: benign, microcystic appearance, no malignant potential - observation unless symptomatic. (2) MUCINOUS cystic neoplasm (MCN): women, distal pancreas, malignant potential - resect if fit. (3) IPMN (Intraductal Papillary Mucinous Neoplasm): MAIN-DUCT: high malignancy risk (30-50%) - resect. BRANCH-DUCT: variable risk, follow guidelines for resection (Fukuoka/AGA) based on concerning features: nodularity, main duct dilation >5mm, size >3cm, symptoms. (4) Solid pseudopapillary neoplasm: young women, low malignant potential - resect. (5) Pseudocyst (not neoplasm): after pancreatitis, drain if symptomatic.', 'medium'),

('e0000404-0006-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 6,
'The Frey procedure for chronic pancreatitis involves:',
'Total pancreatectomy', 'Longitudinal pancreaticojejunostomy combined with coring out of the pancreatic head to drain both the main duct and head parenchyma', 'Distal pancreatectomy only', 'Pancreatic transplant',
'B', 'FREY PROCEDURE: for chronic pancreatitis with main duct dilation AND pancreatic head mass/inflammation. TECHNIQUE: (1) LONGITUDINAL PANCREATICOJEJUNOSTOMY (Puestow): open main pancreatic duct along body and tail, anastomose to Roux limb for drainage. (2) LOCAL RESECTION/CORING of pancreatic HEAD (partial head resection): remove inflammatory mass, additional drainage of head. RATIONALE: addresses both ductal obstruction AND head-dominant disease (inflammatory mass causing symptoms). Compare to PUESTOW (Partington-Rochelle): only longitudinal drainage, no head coring. BEGER procedure: duodenum-preserving head resection. Choice depends on disease pattern and surgeon expertise.', 'hard'),

('e0000404-0007-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 7,
'Delayed gastric emptying after Whipple procedure:',
'Never occurs', 'Is a common complication (20-30%) presenting with high nasogastric output and inability to tolerate oral intake, often self-limiting', 'Requires immediate reoperation', 'Is unrelated to surgery',
'B', 'DELAYED GASTRIC EMPTYING (DGE) after pancreaticoduodenectomy: common complication, 20-30%. PRESENTATION: high NG OUTPUT, nausea/vomiting, inability to tolerate oral diet. ISGPS CLASSIFICATION: Grade A (NG tube 4-7 days or reinsertion POD3), Grade B (NG 8-14 days or reinsertion POD7), Grade C (>14 days, reinsertion after POD14). CAUSES: loss of pyloric/duodenal pacemaker, vagal injury, anastomotic edema, intra-abdominal complications (fistula, abscess - always exclude). MANAGEMENT: usually SELF-LIMITING, supportive care - NG decompression, prokinetics (erythromycin, metoclopramide), rule out mechanical obstruction or fistula. Resolves in most by 2-4 weeks.', 'medium'),

('e0000404-0008-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 8,
'Neoadjuvant therapy for borderline resectable pancreatic cancer:',
'Is contraindicated', 'May improve R0 resection rates and outcomes by treating micrometastases early and selecting patients without progression for surgery', 'Eliminates need for surgery', 'Is only radiation',
'B', 'NEOADJUVANT THERAPY for borderline resectable pancreatic cancer: increasingly STANDARD approach. RATIONALE: (1) Treat MICROMETASTASES early (most patients have occult distant disease). (2) May DOWNSTAGE tumor, improve R0 resection rate. (3) SELECT patients who will benefit from surgery (those who progress on neoadjuvant have aggressive biology, surgery would not have helped). (4) Ensures delivery of systemic therapy (50% cannot receive adjuvant due to complications). REGIMENS: FOLFIRINOX or gemcitabine/nab-paclitaxel +/- radiation. SURGERY: performed if no progression after 2-4 months. Also being studied for upfront resectable disease.', 'medium'),

('e0000404-0009-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 9,
'CA 19-9 in pancreatic cancer:',
'Is always elevated', 'Is a tumor marker used for diagnosis support, prognosis, and monitoring response to therapy, but is not specific to pancreatic cancer', 'Replaces imaging', 'Is only elevated in benign disease',
'B', 'CA 19-9 (Carbohydrate Antigen 19-9): glycoprotein tumor marker for pancreatic cancer. CLINICAL USE: (1) DIAGNOSIS support (elevated in 80% of pancreatic adenocarcinoma, but not specific - also elevated in biliary obstruction, cholangitis, other GI cancers). (2) PROGNOSIS: high preoperative levels associated with worse outcomes. (3) MONITORING: track response to therapy, detect recurrence (rising levels suggest progression). LIMITATIONS: 5-10% are Lewis antigen negative (cannot produce CA 19-9 - will be low even with cancer), elevated in benign biliary obstruction. Not a screening test. Used in conjunction with imaging and clinical assessment.', 'easy'),

('e0000404-0010-0000-0000-000000000104', 'd0000404-0000-0000-0000-000000000104', 10,
'Total pancreatectomy results in:',
'No metabolic consequences', 'Complete exocrine insufficiency requiring lifelong pancreatic enzyme supplementation and brittle diabetes requiring careful insulin management', 'Temporary diabetes only', 'No endocrine effects',
'B', 'TOTAL PANCREATECTOMY consequences: removal of entire pancreas causes complete loss of pancreatic function. EXOCRINE: complete insufficiency - requires lifelong PANCREATIC ENZYME REPLACEMENT (PERT) with every meal to digest fats/proteins, prevent steatorrhea and malnutrition. ENDOCRINE: complete loss of both insulin AND glucagon - results in BRITTLE DIABETES. Insulin required but risk of hypoglycemia high (no glucagon counter-regulation), management challenging. INDICATIONS for total pancreatectomy: multifocal/extensive IPMN, positive margins at neck requiring more resection, total pancreatectomy with islet autotransplantation (TPIAT) for chronic pancreatitis. Quality of life implications significant.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 104 (Pancreatic Surgery) with 10 self-assessment questions inserted' as status;
