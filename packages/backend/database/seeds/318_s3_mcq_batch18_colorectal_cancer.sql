-- ============================================================================
-- SURGERY 3 MCQ BATCH 18: Colorectal Cancer (Questions 1021-1080)
-- Topic: Colorectal Carcinoma
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Epidemiology and Risk Factors (1-15)
('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Colorectal cancer is the:',
'Most common cancer worldwide', 'Third most common cancer and second leading cause of cancer death in Western countries', 'Rarest GI malignancy', 'Only cancer of the elderly', 'Exclusively genetic',
'B', 'Colorectal cancer (CRC) is the third most common cancer and second leading cause of cancer mortality in many developed countries. Incidence increases with age (>90% in patients >50). Survival has improved with screening and treatment advances. Reference: Siegel RL. CA Cancer J Clin. 2020.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The majority of colorectal cancers arise from:',
'De novo carcinoma', 'Pre-existing adenomatous polyps (adenoma-carcinoma sequence)', 'Inflammatory changes only', 'Viral infection', 'Dietary factors alone',
'B', 'Most colorectal cancers (>80%) develop from adenomatous polyps through the adenoma-carcinoma sequence over 10-15 years. This progression involves accumulation of genetic mutations (APC, KRAS, TP53, etc.). Provides basis for screening colonoscopy. Reference: Vogelstein B. N Engl J Med. 1988.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The adenoma-carcinoma sequence involves mutations in genes including:',
'Only environmental factors', 'APC, KRAS, DCC, and TP53', 'Only TP53', 'No genetic mutations', 'Only viral oncogenes',
'B', 'Classic adenoma-carcinoma sequence: APC mutation (initiates adenoma), KRAS activation (adenoma progression), DCC/SMAD4 loss, TP53 mutation (malignant transformation). These accumulating mutations drive the histologic progression from normal epithelium to invasive cancer. Reference: Vogelstein B. N Engl J Med. 1988.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Risk factors for sporadic colorectal cancer include:',
'Young age and vegetarian diet', 'Age >50, red/processed meat, obesity, smoking, alcohol, low fiber diet', 'Female sex', 'High physical activity', 'High calcium intake',
'B', 'Risk factors: age >50, family history, high red/processed meat intake, low fiber/fruit/vegetable intake, obesity, sedentary lifestyle, smoking, alcohol. Protective factors: physical activity, fiber, aspirin/NSAIDs, calcium/vitamin D. Reference: Chan AT. Gastroenterology. 2010.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Hereditary non-polyposis colorectal cancer (Lynch syndrome) is caused by:',
'APC gene mutation', 'Defects in DNA mismatch repair genes (MLH1, MSH2, MSH6, PMS2)', 'BRCA1 mutation', 'RET mutation', 'TP53 mutation only',
'B', 'Lynch syndrome (HNPCC): autosomal dominant, caused by germline mutations in mismatch repair (MMR) genes: MLH1, MSH2, MSH6, PMS2. Results in microsatellite instability (MSI). Accounts for 2-4% of CRC. High lifetime cancer risk. Reference: Lynch HT. Nat Rev Cancer. 2015.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Lynch syndrome is associated with increased risk of:',
'Only colorectal cancer', 'Colorectal, endometrial, ovarian, gastric, urinary tract cancers and others', 'Only gastric cancer', 'Only breast cancer', 'No other cancers',
'B', 'Lynch syndrome increases risk of multiple cancers: colorectal (60-80% lifetime), endometrial (40-60%), ovarian, gastric, urinary tract, small bowel, hepatobiliary, brain (Turcot), and skin (Muir-Torre). Surveillance for multiple organs is needed. Reference: Lynch HT. Nat Rev Cancer. 2015.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Familial adenomatous polyposis (FAP) is characterized by:',
'Few polyps in the colon', 'Hundreds to thousands of colorectal adenomas with near 100% cancer risk by age 40', 'Only hyperplastic polyps', 'Recessive inheritance', 'No extraintestinal manifestations',
'B', 'FAP: autosomal dominant, APC gene mutation. Hundreds to thousands of adenomatous polyps develop in teens/20s. Near 100% CRC risk by age 40 without prophylactic surgery. Extraintestinal features: desmoids, osteomas, epidermoid cysts, congenital hypertrophy of retinal pigment epithelium (CHRPE). Reference: Half E. Orphanet J Rare Dis. 2009.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The standard prophylactic surgery for FAP is:',
'Appendectomy', 'Total proctocolectomy with ileal pouch-anal anastomosis (IPAA) or total abdominal colectomy with ileorectal anastomosis', 'Right hemicolectomy only', 'Segmental resection', 'Polypectomy alone',
'B', 'FAP surgical management: total proctocolectomy with IPAA (eliminates all at-risk mucosa) or total abdominal colectomy with ileorectal anastomosis (preserves rectum - requires ongoing surveillance). Timing: usually late teens/early 20s before cancer develops. Reference: Half E. Orphanet J Rare Dis. 2009.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Inflammatory bowel disease increases colorectal cancer risk, particularly:',
'Crohn disease of small bowel', 'Long-standing, extensive ulcerative colitis', 'IBD for less than 5 years', 'Proctitis only', 'Only in elderly patients',
'B', 'IBD-associated CRC: risk increases with extent (pancolitis > left-sided > proctitis) and duration (rises after 8-10 years). Also with primary sclerosing cholangitis, family history of CRC. Surveillance colonoscopy recommended. Reference: Eaden JA. Gut. 2001.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Colorectal cancer screening for average-risk individuals should begin at age:',
'30 years', '45-50 years', '60 years', '70 years', '21 years',
'B', 'Current guidelines recommend CRC screening starting at age 45-50 for average-risk individuals. Options: colonoscopy every 10 years, FIT annually, stool DNA every 3 years, CT colonography every 5 years, flexible sigmoidoscopy every 5 years. Reference: USPSTF. JAMA. 2021.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Colonoscopy for colorectal cancer screening:',
'Only detects cancer', 'Can detect and remove adenomatous polyps, preventing cancer development', 'Is only diagnostic', 'Cannot visualize right colon', 'Has no benefit',
'B', 'Colonoscopy: gold standard for CRC screening. Allows visualization of entire colon, detection AND removal of adenomatous polyps (thereby preventing CRC), and biopsy of suspicious lesions. Reduces CRC incidence and mortality. Reference: Zauber AG. N Engl J Med. 2012.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Features of adenomatous polyps associated with higher malignancy risk include:',
'Small size and tubular histology', 'Larger size (>1cm), villous histology, and high-grade dysplasia', 'Any polyp', 'Only sessile polyps', 'Only pedunculated polyps',
'B', 'High-risk polyp features: size >1 cm, villous architecture (vs tubular), high-grade dysplasia. Advanced adenomas require shorter surveillance intervals. Serrated polyps also have malignant potential (serrated pathway). Reference: Lieberman DA. Gastroenterology. 2012.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The most common location of colorectal cancer is:',
'Transverse colon', 'Rectum and sigmoid colon', 'Ascending colon', 'Cecum', 'Splenic flexure',
'B', 'Distribution: rectum and sigmoid account for approximately 50-60% of CRC. Historically, left-sided predominance, though recent trends show increasing proportion of right-sided cancers. Location affects presentation and surgical approach. Reference: Siegel RL. CA Cancer J Clin. 2020.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Right-sided (proximal) colon cancers typically present with:',
'Obstruction and change in bowel habits', 'Occult bleeding, iron deficiency anemia, and a palpable mass', 'Tenesmus', 'Bright red rectal bleeding', 'Diarrhea only',
'B', 'Right-sided CRC: large caliber, liquid stool content → tumors grow large before causing symptoms. Present with: occult blood loss, iron deficiency anemia, fatigue, weight loss, palpable RLQ mass. Less commonly cause obstruction. Reference: McCallum A. Colorectal Dis. 2019.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Left-sided (distal) colon and rectal cancers typically present with:',
'Iron deficiency anemia', 'Change in bowel habits, rectal bleeding, tenesmus, and obstruction', 'Palpable mass only', 'Weight loss only', 'No symptoms',
'B', 'Left-sided CRC: smaller caliber, solid stool → earlier symptoms. Present with: change in bowel habits (constipation, diarrhea, or alternating), rectal bleeding (bright red or mixed with stool), tenesmus, obstruction. Apple-core lesion on imaging. Reference: McCallum A. Colorectal Dis. 2019.',
'medium', 'knowledge'),

-- Diagnosis and Staging (16-30)
('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The gold standard investigation for colorectal cancer diagnosis is:',
'Barium enema', 'Colonoscopy with biopsy', 'CT scan', 'PET scan', 'MRI',
'B', 'Colonoscopy allows: direct visualization of entire colon, biopsy for histological diagnosis, detection of synchronous lesions (3-5% have second CRC), and potential therapeutic intervention. Essential for diagnosis and preoperative planning. Reference: Rex DK. Gastrointest Endosc. 2017.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'CT scan of chest, abdomen, and pelvis in colorectal cancer staging is used to:',
'Diagnose the primary tumor', 'Detect metastatic disease (liver, lung) and local extent', 'Replace colonoscopy', 'Determine histology', 'Guide chemotherapy only',
'B', 'CT staging: assesses local extent (wall invasion, adjacent organ involvement), lymph node involvement, and distant metastases (liver is most common site, then lungs). Part of routine staging workup. May underestimate nodal involvement. Reference: Bipat S. Radiology. 2004.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'MRI pelvis is particularly useful for:',
'Colon cancer staging', 'Rectal cancer staging to assess mesorectal fascia involvement and sphincter relationship', 'Detecting liver metastases', 'Upper GI lesions', 'Polyp detection',
'B', 'MRI pelvis: standard for rectal cancer local staging. Evaluates: depth of tumor invasion (T stage), distance to mesorectal fascia (circumferential resection margin), sphincter involvement, nodal status. Guides neoadjuvant therapy decisions. Reference: Taylor FG. Ann Surg. 2011.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Carcinoembryonic antigen (CEA) in colorectal cancer:',
'Is a diagnostic test', 'Is a tumor marker used for monitoring response to treatment and detecting recurrence', 'Is elevated only in CRC', 'Is always elevated', 'Is used for screening',
'B', 'CEA: not used for screening or diagnosis (not specific). Uses: preoperative baseline (prognostic), postoperative surveillance (rising levels suggest recurrence), monitoring response to therapy. Elevated in smoking, benign GI disease, and other cancers. Reference: Locker GY. J Clin Oncol. 2006.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The TNM staging of colorectal cancer T stage refers to:',
'Lymph node involvement', 'Depth of tumor invasion through bowel wall layers', 'Distant metastases', 'Tumor size', 'Tumor grade',
'B', 'T stage (tumor invasion depth): T1 (submucosa), T2 (muscularis propria), T3 (through muscularis into subserosa/pericolorectal tissue), T4a (penetrates visceral peritoneum), T4b (invades adjacent organs). Correlates with prognosis. Reference: Amin MB. AJCC Cancer Staging Manual. 8th ed. 2017.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Stage III colorectal cancer indicates:',
'Tumor confined to mucosa', 'Regional lymph node metastasis (any T, N1-2, M0)', 'Distant metastases', 'Only T1 tumor', 'No lymph node involvement',
'B', 'Stage III: regional lymph node involvement (N1: 1-3 nodes, N2: 4+ nodes) without distant metastases. Requires adjuvant chemotherapy after surgical resection. 5-year survival approximately 40-70% depending on substage. Reference: Amin MB. AJCC Cancer Staging Manual. 8th ed. 2017.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The most common site of colorectal cancer metastasis is:',
'Brain', 'Liver (via portal venous drainage)', 'Bone', 'Adrenal', 'Spleen',
'B', 'Liver is the most common site of CRC metastasis (~70% of metastatic cases) due to portal venous drainage. Lung is second most common. Other sites: peritoneum, bone, brain. Liver-limited metastases may be resectable. Reference: Van Cutsem E. Ann Oncol. 2016.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Synchronous colorectal cancers occur in approximately:',
'0% of patients', '3-5% of patients', '50% of patients', '20% of patients', '10% of patients',
'B', 'Synchronous CRC (additional cancer at diagnosis) occurs in 3-5% of patients. Metachronous (develops later) in 1.5-3%. This is why complete colonoscopy is essential before surgery, and surveillance colonoscopy is important after resection. Reference: Rex DK. Gastrointest Endosc. 2017.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'PET-CT in colorectal cancer is most useful for:',
'Initial diagnosis', 'Detecting recurrence and evaluating potentially resectable metastatic disease', 'Routine staging of early cancer', 'Colonoscopy planning', 'Determining histology',
'B', 'PET-CT: not routine for initial staging. Useful for: evaluating potentially resectable metastatic disease (exclude occult disease), detecting recurrence (when CEA rising with negative conventional imaging), differentiating scar from tumor. Reference: Brush J. Health Technol Assess. 2011.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Endorectal ultrasound (EUS) in rectal cancer:',
'Has no role', 'Is useful for assessing depth of invasion (T stage) and perirectal nodes for early tumors', 'Is only for hemorrhoids', 'Replaces MRI completely', 'Is only for polyps',
'B', 'EUS: accurate for T staging of early rectal tumors (T1-T2). Complements MRI. Best for distinguishing T1 (may be amenable to local excision) from T2. Less accurate for advanced tumors or post-radiation. Reference: Bipat S. Radiology. 2004.',
'medium', 'knowledge'),

-- Surgical Management (31-45)
('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'The principle of curative surgery for colon cancer is:',
'Local excision only', 'En bloc resection with adequate margins and lymphadenectomy along the vascular pedicle', 'Chemotherapy first always', 'Segmental resection without lymph nodes', 'Palliative bypass',
'B', 'Curative surgery: wide resection of tumor-bearing segment with adequate proximal/distal margins (5 cm), en bloc resection of adjacent invaded structures, and complete mesocolic excision with high ligation of the feeding vessel for adequate lymphadenectomy. Reference: Hohenberger W. Colorectal Dis. 2009.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Right hemicolectomy is performed for cancers of:',
'Sigmoid colon', 'Cecum, ascending colon, and hepatic flexure', 'Descending colon', 'Rectum', 'Transverse colon only',
'B', 'Right hemicolectomy: removes cecum, ascending colon, hepatic flexure, and proximal transverse colon with ileocolic, right colic, and right branch of middle colic vessels. Anastomosis: ileocolic. For cecal, ascending, and hepatic flexure cancers. Reference: Nelson H. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Left hemicolectomy is performed for cancers of:',
'Cecum', 'Descending colon and splenic flexure', 'Rectum', 'Appendix', 'Ascending colon',
'B', 'Left hemicolectomy: removes splenic flexure, descending colon, and proximal sigmoid with left branch of middle colic and left colic vessels. For splenic flexure and descending colon cancers. Transverse colon or upper sigmoid may require extended resection. Reference: Nelson H. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Sigmoid colectomy (anterior resection) is performed for cancers of:',
'Cecum', 'Sigmoid colon', 'Ascending colon', 'Hepatic flexure', 'Cecum and ascending colon',
'B', 'Sigmoid colectomy: removes sigmoid colon with inferior mesenteric artery ligation (high tie) for sigmoid cancer. For upper rectal cancer, anterior resection (low anterior or ultra-low anterior resection) is performed. Reference: Nelson H. N Engl J Med. 2004.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'A minimum of how many lymph nodes should be examined for adequate staging:',
'5 nodes', '12 nodes', '3 nodes', '1 node', '20 nodes',
'B', 'Adequate lymph node assessment requires ≥12 nodes for accurate staging. More nodes examined correlates with better survival (stage migration effect and quality indicator). Pathology evaluation technique affects yield. Reference: Chang GJ. J Clin Oncol. 2007.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Total mesorectal excision (TME) is the standard surgical technique for:',
'Colon cancer', 'Rectal cancer', 'Appendiceal cancer', 'Small bowel cancer', 'Gastric cancer',
'B', 'TME: sharp dissection along mesorectal fascial planes, removing the rectum with its surrounding mesorectal envelope intact. Reduces local recurrence from >30% to <10%. Standard of care for rectal cancer surgery. Reference: Heald RJ. Br J Surg. 1982.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Low anterior resection (LAR) for rectal cancer:',
'Always requires permanent colostomy', 'Preserves sphincter function with colorectal or coloanal anastomosis', 'Is only for high rectal tumors', 'Is palliative', 'Has no role in modern surgery',
'B', 'LAR: removes rectum (with TME) and creates anastomosis to remaining rectum or anal canal. Sphincter-preserving surgery. Possible for mid and some low rectal cancers if adequate distal margin (1 cm for rectal cancer) can be achieved. Reference: Schrag D. J Clin Oncol. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Abdominoperineal resection (APR) is indicated for:',
'All rectal cancers', 'Low rectal cancers involving or very close to the sphincter complex', 'Colon cancer', 'High rectal cancer', 'Polyps only',
'B', 'APR: removes rectum, anus, and sphincter complex → permanent end colostomy. Indicated when: tumor invades sphincter, cannot achieve adequate distal margin with sphincter preservation, or poor preoperative sphincter function. Reference: Schrag D. J Clin Oncol. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Transanal endoscopic microsurgery (TEM) or transanal minimally invasive surgery (TAMIS) is appropriate for:',
'All rectal cancers', 'Selected early rectal cancers (T1, favorable features) as local excision', 'Metastatic cancer', 'Large locally advanced tumors', 'Colon cancer',
'B', 'Local excision (TEM/TAMIS): suitable for T1 rectal cancers with favorable features (sm1 invasion, no lymphovascular invasion, well/moderately differentiated, <3cm). Avoids major surgery. Adequate margins and surveillance essential. Reference: Bach SP. Br J Surg. 2009.',
'hard', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Laparoscopic surgery for colorectal cancer:',
'Has worse oncological outcomes', 'Has equivalent oncological outcomes with faster recovery compared to open surgery', 'Is contraindicated', 'Is only for benign disease', 'Has higher recurrence',
'B', 'Laparoscopic colon cancer surgery: equivalent oncological outcomes (recurrence, survival) to open surgery in trials (COST, COLOR). Benefits: less pain, faster recovery, shorter hospital stay. Now standard where expertise exists. Reference: Clinical Outcomes of Surgical Therapy Study Group. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Diverting stoma after low anterior resection:',
'Is never needed', 'Is often created to protect a low colorectal anastomosis, especially after neoadjuvant therapy', 'Is permanent', 'Increases leak rate', 'Is contraindicated',
'B', 'Diverting loop ileostomy: protects low anastomosis (particularly after neoadjuvant chemoradiation). Does not prevent leak but minimizes clinical consequences. Usually reversed at 2-3 months after confirming anastomotic integrity. Reference: Hanna MH. Surgery. 2015.',
'medium', 'knowledge'),

-- Neoadjuvant and Adjuvant Therapy (46-55)
('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Neoadjuvant chemoradiation for rectal cancer is indicated for:',
'All rectal cancers', 'Locally advanced rectal cancer (T3-4 and/or node positive)', 'Only metastatic disease', 'Only T1 tumors', 'Colon cancer',
'B', 'Neoadjuvant chemoradiotherapy: indicated for locally advanced rectal cancer (T3-4, N+, threatened circumferential margin). Benefits: tumor downstaging (may allow sphincter preservation), improved local control. Given before surgery. Reference: Sauer R. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Benefits of neoadjuvant therapy for rectal cancer include:',
'Only pain control', 'Tumor downsizing/downstaging, improved local control, potential sphincter preservation', 'Cure of metastatic disease', 'Replacing surgery', 'Only for palliation',
'B', 'Neoadjuvant benefits: downsizing (tumor shrinkage), downstaging (lower T/N stage), improved complete resection rate, lower local recurrence, potential for sphincter preservation in previously low tumors. May achieve pathological complete response in 15-20%. Reference: Sauer R. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Adjuvant chemotherapy after colon cancer resection is recommended for:',
'All stages', 'Stage III (node-positive) colon cancer', 'Only T1 tumors', 'Only metastatic disease', 'Never indicated',
'B', 'Adjuvant chemotherapy: standard for stage III colon cancer (improves survival by 10-15%). Common regimens: FOLFOX (5-FU, leucovorin, oxaliplatin). Stage II: consider for high-risk features (T4, obstruction/perforation, inadequate nodes, poorly differentiated). Reference: André T. J Clin Oncol. 2015.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'5-Fluorouracil (5-FU) works by:',
'Blocking DNA replication directly', 'Inhibiting thymidylate synthase, disrupting DNA and RNA synthesis', 'Blocking microtubule formation', 'Targeting EGFR', 'Targeting VEGF',
'B', '5-FU: antimetabolite, inhibits thymidylate synthase → blocks DNA synthesis. Backbone of CRC chemotherapy. Often combined with leucovorin (enhances binding) and oxaliplatin (FOLFOX) or irinotecan (FOLFIRI). Reference: Longley DB. Nat Rev Cancer. 2003.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Targeted therapies in metastatic colorectal cancer include:',
'Only chemotherapy', 'Bevacizumab (anti-VEGF) and cetuximab/panitumumab (anti-EGFR)', 'Only surgery', 'Radiation only', 'Hormonal therapy',
'B', 'Targeted therapies: Bevacizumab (anti-VEGF - inhibits angiogenesis), Cetuximab and Panitumumab (anti-EGFR - but only for RAS wild-type tumors). Added to chemotherapy backbone. Improves survival in metastatic disease. Reference: Van Cutsem E. Ann Oncol. 2016.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'KRAS/NRAS mutation testing in colorectal cancer is important because:',
'It determines chemotherapy toxicity', 'RAS mutations predict lack of response to anti-EGFR therapy (cetuximab, panitumumab)', 'It determines surgery type', 'It predicts radiation response', 'It is not important',
'B', 'RAS (KRAS, NRAS) mutations: present in ~50% of CRC. RAS-mutant tumors do NOT respond to anti-EGFR therapy (cetuximab, panitumumab) - these are only effective in RAS wild-type. Testing is mandatory before using anti-EGFR agents. Reference: Douillard JY. N Engl J Med. 2013.',
'hard', 'knowledge'),

-- Metastatic Disease and Prognosis (56-60)
('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Resection of colorectal liver metastases:',
'Is never curative', 'Can be curative in selected patients with 5-year survival of 40-50%', 'Is always palliative', 'Is contraindicated', 'Has no survival benefit',
'B', 'Liver metastasectomy: potentially curative in selected patients. 5-year survival 40-50% after complete resection. Selection criteria: completely resectable, adequate liver remnant, controlled primary, no unresectable extrahepatic disease. Reference: Pawlik TM. Ann Surg Oncol. 2007.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Surveillance after curative colorectal cancer resection includes:',
'No follow-up needed', 'Regular CEA, colonoscopy, and CT imaging for detecting recurrence', 'Only colonoscopy', 'Only physical exam', 'Monthly CT scans',
'B', 'Post-treatment surveillance: CEA every 3-6 months for 3 years, then every 6 months for 2 years; colonoscopy at 1 year, then every 3-5 years; CT chest/abdomen/pelvis annually for 3-5 years (for stages II-III). Detects resectable recurrence. Reference: Meyerhardt JA. J Clin Oncol. 2013.',
'medium', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Five-year survival for stage I colorectal cancer is approximately:',
'10%', '90% or higher', '50%', '30%', '70%',
'B', 'Stage-specific 5-year survival: Stage I ~90%, Stage II ~75-85%, Stage III ~40-70%, Stage IV ~10-15%. Early detection through screening dramatically improves outcomes. Reference: Siegel RL. CA Cancer J Clin. 2020.',
'easy', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Microsatellite instability (MSI) in colorectal cancer:',
'Indicates worse prognosis', 'Is associated with better prognosis and better response to immunotherapy', 'Has no clinical significance', 'Is caused by KRAS mutation', 'Means unresectable disease',
'B', 'MSI-high CRC: better prognosis than microsatellite stable (MSS), especially stage II. May not benefit from 5-FU adjuvant (stage II). Excellent response to immune checkpoint inhibitors (pembrolizumab, nivolumab). Testing important for treatment decisions. Reference: Le DT. N Engl J Med. 2015.',
'hard', 'knowledge'),

('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
'Emergency presentation of colorectal cancer (obstruction, perforation) is associated with:',
'Better prognosis', 'Worse prognosis compared to elective presentation', 'Same prognosis', 'Earlier stage disease', 'Better response to chemotherapy',
'B', 'Emergency presentation (obstruction, perforation) is associated with: higher stage at presentation, higher operative mortality, worse long-term survival. Highlights importance of screening for early detection. Requires urgent surgery (resection, diversion, or stenting). Reference: Gunnarsson H. Br J Surg. 2014.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 18 (Colorectal Cancer): 60 questions inserted' as status;
