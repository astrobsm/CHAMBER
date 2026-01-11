-- Surgery 4 MCQ Question Bank - Batch 28
-- Section E: Oncology - Pancreatic Cancer
-- 40 Questions

-- Topic: Pancreatic Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000028-0000-0000-0000-000000000028', 'Pancreatic Cancer', 'a0000004-0000-0000-0000-000000000004', 'Pancreatic cancer diagnosis, staging, and management', 28, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of pancreatic cancer is:',
 'Islet cell tumor', 'Pancreatic ductal adenocarcinoma', 'Acinar cell carcinoma', 'Pancreatic lymphoma', 'Solid pseudopapillary tumor',
 'B', 'Pancreatic ductal adenocarcinoma (PDAC): 85-90% of pancreatic cancers. Arises from ductal epithelium. Poor prognosis. Neuroendocrine tumors (islet cell) have different behavior.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The most common location of pancreatic adenocarcinoma is:',
 'Tail', 'Body', 'Head', 'Uncinate process only', 'Entire pancreas equally',
 'C', 'Pancreatic head: 60-70% of cancers. Present earlier (jaundice from bile duct obstruction). Body/tail tumors often present late (no early symptoms). Head tumors may be more resectable due to earlier symptoms.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for pancreatic cancer include:',
 'High vegetable intake', 'Smoking chronic pancreatitis diabetes obesity and family history', 'Young age', 'Female gender', 'Low-fat diet',
 'B', 'Risk factors: smoking (strongest modifiable), chronic pancreatitis, new-onset diabetes, obesity, family history, hereditary syndromes (BRCA2, Lynch, FAMMM, PRSS1). Age >50, male predominance.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The classic triad of symptoms in pancreatic head cancer is:',
 'Fever chills and jaundice', 'Painless jaundice weight loss and new-onset diabetes', 'Nausea vomiting and diarrhea', 'Back pain hematuria and fever', 'Melena hematemesis and jaundice',
 'B', 'Pancreatic head cancer: painless obstructive jaundice (common presentation), weight loss, diabetes (new-onset may precede diagnosis). Pain (often back pain) indicates more advanced disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Courvoisier sign refers to:',
 'Murphy sign positive', 'Palpable non-tender gallbladder in the presence of jaundice suggesting malignant obstruction', 'Jaundice with fever', 'Dilated bile ducts on imaging', 'Positive stool guaiac',
 'B', 'Courvoisier sign: palpable non-tender gallbladder with jaundice. Suggests malignant biliary obstruction (pancreatic cancer, ampullary cancer). In gallstone disease, GB is usually scarred and not palpable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'CA 19-9 in pancreatic cancer is used for:',
 'Screening general population', 'Diagnosis monitoring treatment response and surveillance', 'Replacing imaging', 'Always diagnostic', 'Only for staging',
 'B', 'CA 19-9: elevated in 80% of PDAC. Not specific (elevated in other GI cancers, benign biliary disease). Used for baseline, treatment monitoring, surveillance. Not for screening. False negative in Lewis antigen negative patients.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The imaging modality of choice for pancreatic cancer diagnosis and staging is:',
 'Ultrasound', 'Pancreatic protocol CT scan', 'Plain X-ray', 'MRI only', 'PET scan alone',
 'B', 'Pancreatic protocol CT: multiphase with thin slices. Assesses tumor, vascular involvement (resectability), liver metastases, nodes. Most important for treatment planning. MRI and EUS complementary.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopic ultrasound (EUS) in pancreatic cancer is useful for:',
 'Replacing CT', 'Tissue diagnosis (FNA) and detecting small tumors not seen on CT', 'Treating the cancer', 'Only for cysts', 'Staging distant metastases',
 'B', 'EUS: high sensitivity for pancreatic masses (especially small <2 cm). FNA for tissue diagnosis. Also assesses local staging, nodes. May detect tumors not visible on CT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Resectability of pancreatic cancer is primarily determined by:',
 'Tumor size only', 'Involvement of major vessels (SMA SMV portal vein celiac axis)', 'CA 19-9 level only', 'Patient age', 'Histologic grade',
 'B', 'Resectability: vascular involvement key. Resectable (no arterial, limited venous), borderline resectable (venous involvement reconstructable, limited arterial abutment), locally advanced (encasement/occlusion). NCCN criteria.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Borderline resectable pancreatic cancer typically has:',
 'No vascular involvement', 'Tumor abutment or involvement of vessels that may be reconstructable', 'Distant metastases', 'Only lymph node involvement', 'Only local symptoms',
 'B', 'Borderline resectable: SMV/portal vein involvement (>180 degrees or reconstructable), SMA abutment (<180 degrees), GDA encasement up to hepatic artery. May become resectable after neoadjuvant therapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Neoadjuvant therapy for borderline resectable pancreatic cancer:',
 'Is never used', 'May improve resectability and R0 resection rates', 'Decreases survival', 'Replaces surgery always', 'Is only radiation',
 'B', 'Neoadjuvant therapy: for borderline resectable and locally advanced. May downstage to resectable. Improves R0 rates, identifies rapidly progressive disease (avoid futile surgery). Chemo +/- radiation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The standard surgical procedure for pancreatic head cancer is:',
 'Total pancreatectomy', 'Pancreaticoduodenectomy (Whipple procedure)', 'Distal pancreatectomy', 'Enucleation', 'Cholecystectomy only',
 'B', 'Whipple procedure: for pancreatic head/uncinate, ampullary, distal bile duct, duodenal cancers. Removes head of pancreas, duodenum, distal bile duct, gallbladder, proximal jejunum, +/- distal stomach.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The Whipple procedure involves reconstruction with:',
 'Only one anastomosis', 'Pancreaticojejunostomy hepaticojejunostomy and gastrojejunostomy', 'Only hepaticojejunostomy', 'No reconstruction needed', 'Roux-en-Y to stomach only',
 'B', 'Whipple reconstruction: three anastomoses - pancreaticojejunostomy (or pancreaticogastrostomy), hepaticojejunostomy, gastrojejunostomy (or duodenojejunostomy if pylorus-preserving).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Pylorus-preserving pancreaticoduodenectomy differs from classic Whipple by:',
 'More extensive resection', 'Preserving the pylorus and proximal duodenum', 'Including total gastrectomy', 'No bile duct resection', 'Only for benign disease',
 'B', 'Pylorus-preserving: preserves pylorus and 2-3 cm duodenum. Potentially better gastric emptying and nutritional outcomes. Oncologically equivalent to classic Whipple for most pancreatic cancers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Distal pancreatectomy is performed for:',
 'Pancreatic head cancer', 'Body and tail pancreatic cancer usually with splenectomy', 'Ampullary cancer', 'Bile duct cancer', 'Duodenal cancer',
 'B', 'Distal pancreatectomy: for body/tail cancers. Usually includes splenectomy (splenic vessels run along pancreas). Spleen-preserving possible for benign lesions or selected cancers.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The most serious complication specific to pancreaticoduodenectomy is:',
 'Wound infection', 'Pancreatic fistula and associated hemorrhage', 'Urinary retention', 'Pneumonia', 'DVT',
 'B', 'Pancreatic fistula: most dreaded complication. Can lead to intra-abdominal abscess, erosion into vessels, hemorrhage. Risk factors: soft pancreas, small duct, high-risk histology. ISGPS grading.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Delayed gastric emptying after pancreaticoduodenectomy:',
 'Never occurs', 'Is common occurring in 20-40 percent and usually resolves with conservative management', 'Requires immediate surgery', 'Is permanent', 'Only occurs with pylorus preservation',
 'B', 'DGE: common postoperative problem. Nasogastric decompression, prokinetics, nutrition support. Usually resolves in weeks. Rule out mechanical obstruction or leak. May be slightly higher with pylorus-preservation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Adjuvant chemotherapy after resection of pancreatic cancer:',
 'Is not beneficial', 'Improves survival and is standard of care', 'Only for node-positive disease', 'Is radiation only', 'Only for margin-positive resection',
 'B', 'Adjuvant therapy: standard after R0/R1 resection. Modified FOLFIRINOX or gemcitabine/capecitabine preferred. Improves median survival significantly. Radiation role controversial.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The standard first-line chemotherapy for metastatic pancreatic cancer in fit patients is:',
 'Gemcitabine alone', 'FOLFIRINOX or gemcitabine plus nab-paclitaxel', 'FOLFOX', 'Single agent 5-FU', 'No chemotherapy available',
 'B', 'Metastatic PDAC: FOLFIRINOX (5-FU, leucovorin, irinotecan, oxaliplatin) or gemcitabine/nab-paclitaxel for fit patients. Gemcitabine alone for less fit. Median survival still poor (~1 year).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Biliary obstruction from pancreatic cancer is palliated with:',
 'Surgery always', 'Endoscopic stenting (ERCP) or surgical bypass', 'Medication only', 'No treatment available', 'Radiation only',
 'B', 'Biliary obstruction palliation: ERCP with metal stent preferred for unresectable. Surgical biliary bypass (hepaticojejunostomy) if surgery being performed for other reasons or stenting fails.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Duodenal obstruction from pancreatic cancer is palliated with:',
 'Medication only', 'Endoscopic duodenal stenting or surgical gastrojejunostomy', 'No treatment available', 'Chemotherapy alone', 'Total gastrectomy',
 'B', 'Gastric outlet obstruction: surgical gastrojejunostomy (durable) or endoscopic duodenal stenting (faster recovery, shorter duration). Choice depends on prognosis, patient status.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Pain management in pancreatic cancer may include:',
 'Analgesics only', 'Opioids celiac plexus block and radiation', 'No effective options', 'Surgery only', 'Antibiotics',
 'B', 'Pain management: opioids (mainstay), celiac plexus neurolysis (EUS-guided or percutaneous), radiation for local pain control. Multimodal approach. Pain significantly impacts quality of life.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'The overall 5-year survival rate for pancreatic adenocarcinoma is approximately:',
 '50 percent', '30 percent', '10 percent', '75 percent', '1 percent',
 'C', '5-year survival: ~10% overall (all stages). Localized resected: 20-25%. Most present with advanced disease. One of the deadliest cancers. Research ongoing.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Pancreatic neuroendocrine tumors (PNETs) differ from adenocarcinoma in that they:',
 'Are always aggressive', 'Generally have better prognosis and may be functional or non-functional', 'Are not treated surgically', 'Are more common', 'Never metastasize',
 'B', 'PNETs: arise from islet cells. Better prognosis than PDAC. Functional (insulinoma, gastrinoma, etc.) or non-functional. Surgery often curative for localized. Somatostatin analogs, targeted therapy, chemo for advanced.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Insulinoma presents with:',
 'Hyperglycemia', 'Whipple triad (hypoglycemia symptoms low glucose relief with glucose administration)', 'Diabetes', 'Zollinger-Ellison syndrome', 'Diarrhea',
 'B', 'Insulinoma: insulin-secreting PNET. Whipple triad: symptoms of hypoglycemia, documented low glucose, relief with glucose. Usually benign, solitary. Treatment: enucleation or partial pancreatectomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Gastrinoma causes:',
 'Hypoglycemia', 'Zollinger-Ellison syndrome with severe peptic ulcer disease and diarrhea', 'Diabetes', 'Carcinoid syndrome', 'Cushing syndrome',
 'B', 'Gastrinoma (Zollinger-Ellison): gastrin hypersecretion, severe peptic ulcers (often multiple, unusual locations), diarrhea, esophagitis. Part of MEN1 in 25%. May be malignant and metastatic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Intraductal papillary mucinous neoplasm (IPMN) of the pancreas:',
 'Is always benign', 'Is a cystic neoplasm with malignant potential especially main duct type', 'Only affects young women', 'Never requires surveillance', 'Is adenocarcinoma',
 'B', 'IPMN: mucin-producing, cystic dilation of pancreatic ducts. Main duct IPMN: higher malignancy risk, surgery often indicated. Branch duct: lower risk, surveillance or surgery based on features.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'High-risk features in pancreatic cysts (IPMN, MCN) that warrant surgery include:',
 'Small cyst size', 'Main duct involvement mural nodule positive cytology or main duct dilation greater than 10 mm', 'Patient age over 70', 'Location in tail', 'Stable size on surveillance',
 'B', 'High-risk features: obstructive jaundice, enhancing mural nodule, main pancreatic duct >10 mm, positive cytology. Worrisome features: cyst >3 cm, thickened walls, duct 5-9 mm, lymphadenopathy. Guide surgery vs surveillance.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Mucinous cystic neoplasm (MCN) of the pancreas:',
 'Occurs equally in males and females', 'Almost exclusively occurs in women and is located in the body or tail', 'Communicates with pancreatic duct', 'Is always benign', 'Has no malignant potential',
 'B', 'MCN: almost exclusively women, body/tail location, does not communicate with duct. Ovarian-type stroma. Malignant potential. Surgical resection recommended (usually distal pancreatectomy).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Solid pseudopapillary neoplasm (SPN) of the pancreas:',
 'Is most common in elderly men', 'Occurs mostly in young women and has low malignant potential', 'Is adenocarcinoma', 'Cannot be cured', 'Is always malignant',
 'B', 'SPN: young women (20s-30s), well-encapsulated, low-grade malignant potential. Excellent prognosis after resection. Large at presentation but usually curable with surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Serous cystadenoma of the pancreas:',
 'Has high malignant potential', 'Is benign and can be observed if asymptomatic', 'Requires immediate surgery', 'Is inflammatory', 'Only occurs after pancreatitis',
 'B', 'Serous cystadenoma: benign. Microcystic (honeycomb) appearance on imaging. Usually asymptomatic. Can be observed. Surgery for symptoms or diagnostic uncertainty. No surveillance needed after confirmed diagnosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'BRCA mutations in pancreatic cancer:',
 'Have no significance', 'May predict response to platinum-based chemotherapy and PARP inhibitors', 'Indicate better prognosis always', 'Only affect breast/ovary', 'Are never tested',
 'B', 'BRCA1/2 mutations: 5-10% of PDAC (higher in Ashkenazi Jewish). Predict platinum sensitivity. PARP inhibitors (olaparib) approved for maintenance after platinum-based chemo. Universal genetic testing recommended.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Staging laparoscopy before planned pancreatic cancer resection:',
 'Is never useful', 'May detect occult peritoneal or liver metastases avoiding unnecessary laparotomy', 'Is required for all patients', 'Replaces imaging', 'Has no role in current practice',
 'B', 'Staging laparoscopy: for borderline resectable, locally advanced, high CA 19-9, body/tail tumors. Detects occult metastases in 10-20% not seen on imaging. Avoids non-therapeutic laparotomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Pancreatic enzyme replacement therapy is needed after:',
 'Any abdominal surgery', 'Pancreaticoduodenectomy or distal pancreatectomy to treat exocrine insufficiency', 'Chemotherapy only', 'Never after surgery', 'Only for diabetics',
 'B', 'PERT: for exocrine insufficiency after pancreatic resection. Steatorrhea, malabsorption. Dose with meals. Improves nutrition and quality of life. Lifelong for most patients.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000028-0000-0000-0000-000000000028', 'a0000004-0000-0000-0000-000000000004',
 'Venous resection and reconstruction (portal vein or SMV) during pancreaticoduodenectomy:',
 'Is contraindicated', 'Is performed when needed and does not significantly worsen outcomes in experienced centers', 'Indicates unresectable disease', 'Worsens survival significantly', 'Is only experimental',
 'B', 'Vascular resection: when needed for R0 resection. Venous reconstruction safe in experienced hands. Outcomes similar to standard Whipple if R0 achieved. Arterial resection more controversial, higher morbidity.', 'hard', 'knowledge');
