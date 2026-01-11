-- Surgery 4 MCQ Question Bank - Batch 24
-- Section E: Oncology - Colorectal Cancer
-- 40 Questions

-- Topic: Colorectal Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000024-0000-0000-0000-000000000024', 'Colorectal Cancer', 'a0000004-0000-0000-0000-000000000004', 'Colorectal cancer screening, diagnosis, staging, and surgical management', 24, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Colorectal cancer is the most common cancer of the:',
 'Esophagus', 'Gastrointestinal tract', 'Small bowel', 'Stomach', 'Anus',
 'B', 'Colorectal cancer: most common GI malignancy. Third most common cancer overall. Incidence increases with age. Majority are adenocarcinomas arising from adenomatous polyps.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The adenoma-carcinoma sequence suggests that most colorectal cancers arise from:',
 'Normal mucosa directly', 'Adenomatous polyps through accumulation of genetic mutations', 'Hyperplastic polyps', 'Inflammatory changes', 'Viral infection',
 'B', 'Adenoma-carcinoma sequence: progression from normal epithelium to adenoma to carcinoma. Takes 10-15 years. Involves APC, KRAS, p53 mutations. Basis for screening and polyp removal.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Modifiable risk factors for colorectal cancer include:',
 'Age and family history', 'Obesity processed meat alcohol and smoking', 'Inflammatory bowel disease', 'Genetic syndromes', 'All risk factors are modifiable',
 'B', 'Modifiable risks: obesity, red/processed meat, alcohol, smoking, sedentary lifestyle. Non-modifiable: age, family history, IBD, hereditary syndromes. Diet high in fiber, fruits, vegetables may be protective.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Screening colonoscopy for average-risk individuals is recommended starting at age:',
 '40', '45', '55', '60', '70',
 'B', 'Screening: age 45 for average risk (updated from 50). Options: colonoscopy every 10 years, FIT annually, stool DNA every 3 years, CT colonography every 5 years. Earlier if high risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Lynch syndrome (hereditary nonpolyposis colorectal cancer) is caused by mutations in:',
 'APC gene', 'Mismatch repair genes (MLH1 MSH2 MSH6 PMS2)', 'BRCA genes', 'p53 gene', 'RET gene',
 'B', 'Lynch syndrome: autosomal dominant. MMR gene mutations (MLH1, MSH2 most common). Increased CRC, endometrial, ovarian, other cancers. Microsatellite instability. Screening starting age 20-25.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Familial adenomatous polyposis (FAP) is characterized by:',
 'Few polyps with high cancer risk', 'Hundreds to thousands of colorectal polyps with near 100 percent cancer risk by age 40', 'Only hyperplastic polyps', 'No cancer risk', 'Recessive inheritance',
 'B', 'FAP: APC gene mutation, autosomal dominant. >100 polyps (often thousands). 100% CRC risk by 40 if untreated. Prophylactic colectomy indicated. Also duodenal adenomas, desmoid tumors.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Right-sided colon cancers typically present with:',
 'Obstruction', 'Iron deficiency anemia and occult blood loss', 'Bright red rectal bleeding', 'Change in stool caliber', 'Tenesmus',
 'B', 'Right-sided CRC: larger lumen, liquid stool - often asymptomatic until advanced. Iron deficiency anemia from chronic occult blood loss. Palpable mass. Left-sided: obstruction, bleeding, change in bowel habits.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The most common presenting symptom of left-sided colorectal cancer is:',
 'Weight loss', 'Change in bowel habits or rectal bleeding', 'Fever', 'Back pain', 'Asymptomatic',
 'B', 'Left-sided CRC: smaller lumen, formed stool. Obstruction symptoms (change in caliber, constipation, cramping), hematochezia. More likely to present with obstruction than right-sided.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Colonoscopy in colorectal cancer diagnosis is important for:',
 'Treatment only', 'Tissue diagnosis synchronous lesion detection and marking tumor location', 'Replacing CT scan', 'Staging distant metastases', 'Only for screening',
 'B', 'Colonoscopy: tissue biopsy (histologic diagnosis), evaluate for synchronous polyps/cancers (3-5%), tattoo tumor for surgical identification. Complete colonoscopy before or within 6 months of surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'CEA (carcinoembryonic antigen) in colorectal cancer is used for:',
 'Screening general population', 'Preoperative baseline and postoperative surveillance for recurrence', 'Definitive diagnosis', 'Determining chemotherapy type', 'Staging lymph nodes',
 'B', 'CEA: not for screening (not specific). Preoperative level has prognostic value. Post-resection monitoring - rising CEA suggests recurrence. Also monitored during treatment for metastatic disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Staging workup for colorectal cancer includes:',
 'Colonoscopy only', 'CT chest abdomen and pelvis plus colonoscopy and CEA', 'MRI brain only', 'PET scan for all patients', 'Blood tests only',
 'B', 'Staging: CT CAP (liver, lung metastases, local extent), complete colonoscopy, CEA. Rectal cancer: MRI pelvis and/or EUS for local staging. PET for select cases (suspected recurrence, before hepatic resection).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The TNM stage that indicates tumor invading through muscularis propria into pericolorectal tissues is:',
 'T1', 'T2', 'T3', 'T4', 'Tis',
 'C', 'T staging: Tis (in situ), T1 (submucosa), T2 (muscularis propria), T3 (through muscularis into pericolorectal tissues), T4a (visceral peritoneum), T4b (adjacent organs). T3 is most common at diagnosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Surgical treatment of colon cancer involves:',
 'Local excision only', 'Segmental resection with adequate margins and regional lymphadenectomy', 'Total colectomy always', 'Chemotherapy first always', 'Radiation therapy only',
 'B', 'Surgical principles: en bloc resection with 5 cm margins, ligation of feeding vessels at origin, regional lymphadenectomy (minimum 12 nodes for adequate staging). Complete mesocolic excision advocated.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The minimum number of lymph nodes recommended for adequate staging in colon cancer is:',
 '3', '6', '12', '20', '1',
 'C', 'Minimum 12 lymph nodes: adequate staging. More nodes examined = better staging accuracy. Node positivity indicates need for adjuvant chemotherapy. Fewer nodes associated with understaging.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Right hemicolectomy is indicated for tumors of the:',
 'Sigmoid colon', 'Cecum ascending colon and hepatic flexure', 'Descending colon', 'Rectum', 'Transverse colon only',
 'B', 'Right hemicolectomy: cecum, ascending colon, hepatic flexure, proximal transverse colon. Ligates ileocolic, right colic, and right branch of middle colic vessels. Ileocolic anastomosis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Sigmoid colectomy with colorectal anastomosis is performed for:',
 'Cecal cancer', 'Sigmoid colon cancer', 'Rectal cancer', 'Transverse colon cancer', 'Appendiceal cancer',
 'B', 'Sigmoid colectomy: for sigmoid cancer. Ligate inferior mesenteric artery (or at least left colic). Colorectal or colocolonic anastomosis depending on level. Preserve left colic artery if possible.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Laparoscopic colectomy for colon cancer compared to open surgery:',
 'Has worse oncologic outcomes', 'Has equivalent oncologic outcomes with faster recovery', 'Should not be performed', 'Is only for benign disease', 'Increases recurrence rates',
 'B', 'Laparoscopic colectomy: equivalent oncologic outcomes (multiple RCTs). Shorter hospital stay, less pain, faster return of bowel function. Standard approach when feasible. Conversion rate ~5-10%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Adjuvant chemotherapy for colon cancer is indicated for:',
 'All colon cancers', 'Stage III (node-positive) and high-risk stage II colon cancer', 'Stage I only', 'Only if CEA elevated', 'Only for rectal cancer',
 'B', 'Adjuvant chemo: stage III (standard, improves survival), high-risk stage II (T4, poorly differentiated, LVI, perineural invasion, inadequate nodes, obstruction/perforation). FOLFOX or CAPOX.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The standard adjuvant chemotherapy regimen for stage III colon cancer is:',
 'Single agent 5-FU', 'FOLFOX (5-FU leucovorin oxaliplatin) or CAPOX', 'Irinotecan alone', 'Bevacizumab alone', 'No chemotherapy needed',
 'B', 'FOLFOX or CAPOX: oxaliplatin-based combinations. 3-6 months depending on risk. Oxaliplatin adds survival benefit to fluoropyrimidine alone. Neuropathy is dose-limiting toxicity of oxaliplatin.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Microsatellite instability-high (MSI-H) tumors:',
 'Have worse prognosis', 'Have better prognosis and may respond to immunotherapy but derive less benefit from 5-FU', 'Are always hereditary', 'Need more chemotherapy', 'Are rare',
 'B', 'MSI-H: ~15% of CRC. Better prognosis in early stages. May not benefit from 5-FU alone in stage II. Respond well to checkpoint inhibitors in metastatic setting. Test all CRC for MSI/MMR.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Rectal cancer differs from colon cancer in management because:',
 'Same treatment approach', 'Neoadjuvant chemoradiation is standard for locally advanced disease and local recurrence risk is higher', 'Only surgery is needed', 'No chemotherapy ever', 'Better prognosis always',
 'B', 'Rectal cancer: neoadjuvant chemoRT for T3/T4 or node-positive (improves local control, sphincter preservation). Total mesorectal excision (TME) standard. Higher local recurrence risk than colon cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Total mesorectal excision (TME) refers to:',
 'Removing entire colon', 'Complete removal of rectum with surrounding mesorectum as intact package', 'Partial rectal resection', 'Only lymph node removal', 'Transanal approach only',
 'B', 'TME: sharp dissection along mesorectal plane, removing rectum with intact mesorectal envelope. Reduces local recurrence. Standard for mid and lower rectal cancers. Quality of TME affects outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Low anterior resection (LAR) for rectal cancer:',
 'Always requires permanent colostomy', 'Removes rectum with colorectal or coloanal anastomosis preserving sphincter', 'Is only for upper rectal tumors', 'Has no complications', 'Is obsolete',
 'B', 'LAR: for mid and some low rectal cancers. Preserves sphincters. May require diverting ileostomy temporarily. Low anastomosis associated with anterior resection syndrome (urgency, frequency).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Abdominoperineal resection (APR) is indicated when:',
 'All rectal cancers', 'Tumor involves sphincter complex or adequate distal margin cannot be achieved', 'Preferred over LAR always', 'Only for colon cancer', 'No indications exist',
 'B', 'APR: removes rectum, anal canal, sphincters. Permanent colostomy. For very low tumors involving sphincters where sphincter preservation not possible. Less common now with neoadjuvant therapy and surgical techniques.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Neoadjuvant chemoradiation for locally advanced rectal cancer:',
 'Is never used', 'Improves local control downstages tumors and may enable sphincter preservation', 'Increases recurrence', 'Is only radiation', 'Worsens outcomes',
 'B', 'Neoadjuvant chemoRT: for T3/T4 or node-positive rectal cancer. 5-FU based chemo with radiation. Surgery 6-12 weeks later. Downstaging allows sphincter preservation. Total neoadjuvant therapy (TNT) emerging.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Complete clinical response after neoadjuvant treatment for rectal cancer:',
 'Requires immediate surgery', 'May allow watch-and-wait (non-operative management) approach in selected patients', 'Is never achieved', 'Means treatment failure', 'Requires more chemotherapy',
 'B', 'Complete clinical response: watch-and-wait approach being studied. Avoids surgery morbidity. Intensive surveillance required. ~25% achieve cCR. Salvage surgery if regrowth. Organ preservation strategy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Hepatic metastases from colorectal cancer:',
 'Are never resectable', 'Can be resected for cure in selected patients with good long-term survival', 'Indicate terminal disease always', 'Are best treated with radiation', 'Never occur',
 'B', 'Hepatic metastases: resectable in ~20% of patients. 5-year survival 40-50% after resection. Selection: good performance, resectable with adequate remnant, control of primary. Perioperative chemotherapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The most common site of colorectal cancer metastasis is:',
 'Brain', 'Bone', 'Liver', 'Lung', 'Adrenal',
 'C', 'Liver: most common metastatic site (portal venous drainage). Followed by lung, peritoneum. Rectal cancer also metastasizes to lung directly (systemic venous drainage of lower rectum).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'KRAS and NRAS mutation testing in metastatic colorectal cancer is important because:',
 'Determines surgery timing', 'RAS wild-type tumors may respond to anti-EGFR therapy while mutant tumors do not', 'All tumors are mutant', 'Determines radiation dose', 'Not clinically relevant',
 'B', 'RAS testing: EGFR inhibitors (cetuximab, panitumumab) only effective in RAS wild-type tumors. KRAS/NRAS mutations = no benefit from anti-EGFR. BRAF mutation also tested (prognostic, targeted therapy).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Bevacizumab in metastatic colorectal cancer:',
 'Is chemotherapy', 'Is an anti-VEGF antibody that improves survival when added to chemotherapy', 'Is only for first-line', 'Has no role', 'Is hormonal therapy',
 'B', 'Bevacizumab: anti-VEGF monoclonal antibody. Added to chemotherapy for mCRC. Improves PFS and OS. Side effects: hypertension, proteinuria, bleeding, thrombosis, wound healing issues.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Pembrolizumab (checkpoint inhibitor) in colorectal cancer is approved for:',
 'All colorectal cancers', 'MSI-high or MMR-deficient metastatic colorectal cancer', 'Only as adjuvant therapy', 'Only for early stage', 'Never approved',
 'B', 'Pembrolizumab: for MSI-H/dMMR mCRC. High response rates. First-line or subsequent lines. Now also first-line for MSI-H metastatic (KEYNOTE-177 - superior to chemotherapy). Test all mCRC for MSI.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Obstructing colon cancer is managed with:',
 'Chemotherapy first', 'Emergency surgery (resection or diversion) or stenting as bridge to surgery', 'Observation', 'Radiation only', 'No treatment needed',
 'B', 'Obstructing CRC: emergency. Options: resection with primary anastomosis or stoma, stenting as bridge to elective surgery (allows staging, optimization, single-stage resection). Depends on patient status and expertise.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance after curative resection of colorectal cancer includes:',
 'No follow-up needed', 'CEA every 3-6 months CT scans and colonoscopy at intervals', 'Annual colonoscopy only', 'CEA only', 'Only if symptomatic',
 'B', 'Surveillance: CEA every 3-6 months for 3 years then every 6 months for 2 years, CT CAP yearly for 3-5 years, colonoscopy at 1 year then every 3-5 years if normal. Aims to detect curable recurrence.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Anastomotic leak after colorectal surgery:',
 'Is always benign', 'Is a serious complication presenting with sepsis and may require reoperation', 'Never occurs with experienced surgeons', 'Is treated with antibiotics only', 'Has no consequences',
 'B', 'Anastomotic leak: serious complication (5-15% for rectal, lower for colon). Presents with fever, tachycardia, peritonitis, drain output. CT confirms. Management: antibiotics, drainage, often reoperation with diversion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'The role of PET scan in colorectal cancer includes:',
 'Initial screening', 'Evaluation of suspected recurrence or before hepatic metastasectomy', 'Staging all patients', 'Replacing colonoscopy', 'No role',
 'B', 'PET-CT: not routine staging. Useful for suspected recurrence (rising CEA, indeterminate CT findings), before hepatic resection (detect occult extrahepatic disease). False positives with inflammation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000024-0000-0000-0000-000000000024', 'a0000004-0000-0000-0000-000000000004',
 'Cytoreductive surgery with HIPEC (heated intraperitoneal chemotherapy) is used for:',
 'All metastatic colorectal cancer', 'Selected patients with peritoneal carcinomatosis from colorectal cancer', 'Liver metastases', 'Lung metastases', 'Early stage disease',
 'B', 'CRS + HIPEC: for peritoneal carcinomatosis from CRC in selected patients (low PCI, complete cytoreduction possible). Improves survival in selected cases. High morbidity. Specialized centers.', 'hard', 'knowledge');
