-- ============================================================================
-- SURGERY 3 MCQ BATCH 36: Surgical Oncology Principles (Questions 2101-2160)
-- Topic: Cancer Biology, Staging, Multimodality Treatment, Surgical Margins
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Cancer Biology and Staging (1-15)
('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'The hallmarks of cancer include all of the following EXCEPT:',
'Sustaining proliferative signaling', 'Normal programmed cell death (apoptosis)', 'Evading growth suppressors', 'Activating invasion and metastasis', 'Inducing angiogenesis',
'B', 'Hallmarks of Cancer (Hanahan and Weinberg): (1) Sustaining proliferative signaling, (2) Evading growth suppressors, (3) RESISTING cell death (not normal apoptosis), (4) Enabling replicative immortality, (5) Inducing angiogenesis, (6) Activating invasion and metastasis. Added hallmarks: (7) Reprogramming energy metabolism, (8) Evading immune destruction. Enabling characteristics: genome instability, tumor-promoting inflammation. Reference: Hanahan D. Cell. 2011.',
'easy', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Tumor suppressor genes differ from oncogenes in that:',
'They promote cell growth', 'They normally inhibit cell proliferation, and BOTH alleles must be inactivated for cancer development (two-hit hypothesis)', 'Single mutation causes cancer', 'They are never inherited', 'They cause benign tumors only',
'B', 'Tumor suppressor genes: normally inhibit cell growth/proliferation, promote apoptosis, DNA repair. Two-hit hypothesis (Knudson): both alleles must be inactivated for loss of function. Examples: TP53 (guardian of genome), RB, APC, BRCA1/2. Contrast with oncogenes: gain-of-function mutations, single mutant allele sufficient (dominant). Proto-oncogenes become oncogenes. Examples: RAS, MYC, HER2. Reference: Knudson AG. Nat Rev Cancer. 2001.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'TP53 is the most commonly mutated gene in human cancers. Its normal function includes:',
'Promoting cell division', 'Cell cycle arrest, DNA repair, and induction of apoptosis in response to DNA damage', 'Inhibiting apoptosis', 'Promoting angiogenesis', 'Telomerase activation',
'B', 'TP53 (p53 - guardian of the genome): tumor suppressor on chromosome 17p. Functions: (1) Cell cycle arrest at G1/S checkpoint (allows DNA repair), (2) Promotes DNA repair, (3) Induces apoptosis if damage unrepairable. Mutated/inactivated in >50% of cancers. Li-Fraumeni syndrome: germline TP53 mutation - multiple cancers at young age (sarcoma, breast, brain, adrenal). Reference: Levine AJ. Cell. 1997.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'The TNM staging system is based on:',
'Only tumor size', 'Tumor extent (T), regional lymph node involvement (N), and distant metastases (M)', 'Only lymph nodes', 'Only metastases', 'Histological grade only',
'B', 'TNM staging (AJCC/UICC): standardized cancer staging. T - Primary tumor: size and local extent (T1-T4, Tis, T0). N - Regional lymph Nodes: number and location of involved nodes (N0-N3). M - Distant Metastases: presence/absence (M0, M1). Combined into stage groups (I-IV). Stage determines prognosis and guides treatment. Separate systems for different cancer types. Clinical staging (cTNM) vs pathological staging (pTNM). Reference: AJCC Cancer Staging Manual, 8th Edition.',
'easy', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Sentinel lymph node biopsy is based on the principle that:',
'All lymph nodes drain equally', 'Lymphatic drainage from a primary tumor follows a predictable pattern to a specific first-echelon node', 'Cancer skips lymph nodes', 'Only for melanoma', 'Removes all lymph nodes',
'B', 'Sentinel lymph node (SLN) concept: first lymph node(s) receiving drainage from primary tumor site. If SLN negative: high likelihood remaining nodes negative, avoiding complete lymphadenectomy (reduced morbidity). Technique: inject tracer (blue dye, radiotracer, ICG) near tumor, identify and remove SLN, pathologic examination. Used in: melanoma (Morton), breast cancer (Giuliano), others. False negative rate 5-10%. Reference: Morton DL. Arch Surg. 1992.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'A positive surgical margin (R1 resection) indicates:',
'Complete tumor removal', 'Microscopic tumor present at the resection margin', 'Grossly positive margin', 'No tumor present', 'Benign tumor',
'B', 'Resection margin classification (R status): R0 - complete resection, no microscopic tumor at margin (goal of curative surgery). R1 - incomplete resection, microscopic tumor at margin. R2 - incomplete resection, macroscopic (gross) tumor left behind. Margin status is critical prognostic factor. R1/R2 associated with higher local recurrence and worse survival. May require re-excision, adjuvant therapy, or consideration of palliation. Reference: AJCC Cancer Staging Manual.',
'easy', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Grade refers to tumor:',
'Size', 'Degree of differentiation - how closely tumor cells resemble normal tissue', 'Location', 'Stage', 'Blood vessel involvement',
'B', 'Tumor grading: degree of differentiation. Grade 1 (low grade/well-differentiated): cells closely resemble normal tissue, slower growing, better prognosis. Grade 2 (intermediate/moderately differentiated). Grade 3 (high grade/poorly differentiated): cells look very abnormal, faster growing, worse prognosis. Grade 4 (undifferentiated/anaplastic): worst prognosis. Different grading systems for different tumors (Gleason - prostate, Nottingham - breast, FNCLCC - sarcoma). Reference: AJCC Cancer Staging Manual.',
'easy', 'knowledge'),

-- Surgical Treatment Principles (16-30)
('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'En bloc resection in surgical oncology refers to:',
'Removing tumor only', 'Resection of primary tumor with surrounding tissues and lymph nodes as a single specimen without disrupting tumor planes', 'Piecemeal removal', 'Biopsy only', 'Palliative debulking',
'B', 'En bloc resection: fundamental oncologic principle. Remove primary tumor with adequate margins and regional lymphatics as a single continuous specimen. Avoid disrupting tumor planes (spillage, seeding). Includes: (1) Adequate margins (varies by tumor type), (2) Regional lymphadenectomy following vascular pedicle, (3) Resection of directly invaded adjacent structures if needed for R0. Examples: radical mastectomy, Whipple, TME, D2 gastrectomy. Reference: Bland KI. The Practice of General Surgery.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Neoadjuvant therapy refers to:',
'Treatment after surgery', 'Systemic or radiation therapy given BEFORE surgical resection to shrink tumor and improve resectability', 'Palliative treatment', 'Hormone replacement', 'Only chemotherapy',
'B', 'Neoadjuvant therapy: treatment before definitive surgery. Goals: (1) Downsize/downstage tumor (improve resectability, convert unresectable to resectable), (2) Improve local control, (3) Treat micrometastases early, (4) Assess tumor response (prognostic), (5) Enable organ preservation (rectal, larynx, breast). Examples: rectal cancer (chemoradiation), breast cancer (chemotherapy), locally advanced gastric/esophageal (chemo or chemoRT). Reference: Rustgi AK. N Engl J Med. 2007.',
'easy', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Adjuvant therapy is given:',
'Before surgery', 'AFTER surgical resection to eliminate residual microscopic disease and reduce recurrence', 'Instead of surgery', 'Only for metastatic disease', 'For diagnosis',
'B', 'Adjuvant therapy: treatment after definitive surgery. Goal: eliminate microscopic residual disease, reduce recurrence, improve survival. Given when high risk of recurrence despite R0 resection. Examples: (1) Colon cancer stage III - FOLFOX/CAPOX, (2) Breast cancer - chemotherapy, hormonal therapy, (3) Melanoma - immunotherapy, (4) Many solid tumors. Decision based on stage, pathology, molecular markers, patient factors. Reference: Meyerhardt JA. N Engl J Med. 2005.',
'easy', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Cytoreductive surgery with HIPEC is indicated for:',
'All cancers', 'Selected peritoneal surface malignancies (appendiceal, colorectal, ovarian) to remove visible disease followed by heated intraperitoneal chemotherapy', 'Brain tumors', 'Only for palliation', 'Lung cancer',
'B', 'CRS/HIPEC: complete cytoreductive surgery (remove all visible peritoneal disease) + hyperthermic intraperitoneal chemotherapy (heated chemo delivered directly to peritoneal cavity). Indications: (1) Appendiceal mucinous neoplasms/PMP (best results), (2) Colorectal peritoneal metastases (selected), (3) Peritoneal mesothelioma, (4) Ovarian cancer (debated). Requires complete/near-complete cytoreduction (CC-0/CC-1) for benefit. High morbidity (20-30%). Reference: Sugarbaker PH. Ann Surg. 1995.',
'hard', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'The role of surgery in metastatic cancer includes:',
'Never indicated', 'Potentially curative in oligometastatic disease (liver/lung metastases from colorectal cancer), palliation, and management of complications', 'Always indicated', 'Only for diagnosis', 'Contraindicated',
'B', 'Surgery in metastatic cancer: (1) Curative intent - oligometastatic disease (limited metastases to one or few organs): colorectal liver mets (30-50% 5-year survival with resection), colorectal lung mets, sarcoma lung mets, selected others. (2) Palliation - relieve obstruction, control bleeding, manage pain, improve quality of life. (3) Emergencies - perforation, obstruction, hemorrhage. (4) Debulking - ovarian cancer. Selection is key. Reference: Adam R. J Clin Oncol. 2009.',
'medium', 'knowledge'),

-- Specific Cancer Screening and Prevention (31-45)
('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Prophylactic mastectomy is considered in:',
'All women with breast cancer', 'High-risk individuals with BRCA1/2 mutations, strong family history, or prior chest radiation', 'Routine screening', 'All dense breasts', 'Only contralateral breast',
'B', 'Prophylactic/risk-reducing mastectomy: (1) BRCA1/2 mutation carriers (lifetime breast cancer risk 60-80%), (2) Other high-risk mutations (TP53, PTEN, CDH1), (3) Very strong family history without identified mutation, (4) Prior chest radiation (Hodgkin lymphoma), (5) LCIS (selected). Reduces breast cancer risk by >90%. Bilateral for risk reduction, contralateral for unilateral cancer in high-risk. Reconstruction options discussed. Reference: Hartmann LC. N Engl J Med. 1999.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Screening colonoscopy has been shown to:',
'Have no effect on mortality', 'Reduce colorectal cancer incidence (by detecting/removing adenomas) and mortality', 'Increase cancer risk', 'Only detect advanced cancer', 'Replace surgery',
'B', 'Colonoscopy for CRC screening: removes adenomas (precancerous polyps) interrupting adenoma-carcinoma sequence. Reduces CRC incidence by 40-90% (left-sided more than right-sided). Reduces CRC mortality by 60-70%. Average-risk: start age 45, every 10 years if normal. High-risk: earlier, more frequent. Also detects early-stage cancer (better prognosis). Reference: Zauber AG. N Engl J Med. 2012.',
'easy', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'BRCA1 and BRCA2 mutations increase risk of:',
'Colon cancer only', 'Breast and ovarian cancer (BRCA1 also prostate, BRCA2 also pancreatic)', 'Lung cancer only', 'No cancer risk', 'Lymphoma only',
'B', 'BRCA1/2 mutations: hereditary breast and ovarian cancer syndrome. BRCA1 (chromosome 17): breast cancer (60-80% lifetime risk), ovarian (40-60%), also prostate, pancreatic. BRCA2 (chromosome 13): breast (40-60%), ovarian (15-25%), also male breast, prostate, pancreatic, melanoma. Screening: breast MRI + mammography, ovarian (difficult - consider risk-reducing salpingo-oophorectomy after childbearing). Management: enhanced surveillance, chemoprevention, prophylactic surgery. Reference: King MC. Science. 2003.',
'medium', 'knowledge'),

-- Tumor Markers (46-55)
('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'CA 19-9 is most commonly elevated in:',
'Breast cancer', 'Pancreatic cancer (80-90% of cases), also biliary, gastric cancers', 'Prostate cancer', 'Melanoma', 'Lymphoma',
'B', 'CA 19-9: carbohydrate antigen (sialylated Lewis A antigen). Most useful in pancreatic cancer (elevated in 80-90%). Also: biliary tract cancer, gastric cancer, some colon cancers. Uses: (1) Diagnosis (not screening), (2) Prognosis (higher = worse), (3) Monitor treatment response, (4) Detect recurrence. Limitations: false positives (cholestasis, benign pancreaticobiliary disease), ~10% are Lewis antigen-negative (cannot produce CA 19-9). Reference: Ballehaninna UK. J Gastrointest Oncol. 2012.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Alpha-fetoprotein (AFP) is a tumor marker for:',
'Breast cancer', 'Hepatocellular carcinoma and germ cell tumors (non-seminomatous)', 'Colon cancer', 'Lung cancer', 'Thyroid cancer',
'B', 'AFP: oncofetal protein. Elevated in: (1) Hepatocellular carcinoma (60-80%, used with imaging for surveillance in cirrhotics, diagnosis), (2) Non-seminomatous germ cell tumors (yolk sac, embryonal, mixed), (3) Benign: pregnancy, hepatitis, cirrhosis. Uses: surveillance (HCC in cirrhosis), diagnosis, treatment monitoring (germ cell). Half-life ~5 days (monitor response). Reference: Marrero JA. Hepatology. 2009.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'PSA (prostate-specific antigen) is used to:',
'Definitively diagnose prostate cancer', 'Screen for and monitor prostate cancer (but is not cancer-specific - elevated in BPH, prostatitis)', 'Stage prostate cancer', 'Treat prostate cancer', 'Prevent prostate cancer',
'B', 'PSA: glycoprotein produced by prostatic epithelium (not cancer-specific). Elevated in: prostate cancer, BPH (enlarged prostate), prostatitis, manipulation. Screening: controversial (US Preventive Services Task Force - shared decision making). Normal <4 ng/mL (age-adjusted). Monitoring: after treatment (should become undetectable post-prostatectomy, nadir after radiation). Rising PSA after treatment: biochemical recurrence. Variations: free PSA, PSA density, PSA velocity. Reference: Catalona WJ. JAMA. 2017.',
'medium', 'knowledge'),

-- Radiation Oncology Principles (56-60)
('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Radiation therapy works primarily by:',
'Direct thermal damage', 'Inducing DNA damage (double-strand breaks) leading to cell death, preferentially affecting rapidly dividing cells', 'Starving cells', 'Immune activation only', 'Mechanical disruption',
'B', 'Radiation mechanism: ionizing radiation deposits energy in tissue. Primary target: DNA. Causes: (1) Direct DNA damage (double-strand breaks most lethal), (2) Indirect damage (free radicals from water radiolysis). Rapidly dividing cells more sensitive (less time for repair). Fractionation: multiple small doses allow normal tissue recovery, exploit differences in repair between normal and tumor cells. 4 Rs: repair, repopulation, redistribution, reoxygenation. Reference: Hall EJ. Radiobiology for the Radiologist.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Brachytherapy involves:',
'External beam radiation', 'Placing radioactive sources directly into or adjacent to the tumor for localized high-dose radiation', 'Systemic radioisotopes', 'Chemotherapy only', 'Surgery',
'B', 'Brachytherapy: internal radiation therapy. Radioactive sources placed in/near tumor (intracavitary, interstitial, intraluminal). Advantages: very high dose to tumor, rapid dose fall-off (spares surrounding normal tissue), shorter treatment time. Types: (1) Low dose rate (LDR) - prostate seeds, (2) High dose rate (HDR) - cervical, esophageal. Uses: prostate (seed implants), cervical (tandem and ovoids), breast (accelerated partial breast), esophageal, soft tissue sarcoma. Reference: Nag S. Int J Radiat Oncol Biol Phys. 2001.',
'medium', 'knowledge'),

('c0000051-0000-0000-0000-000000000051', 'a0000003-0000-0000-0000-000000000003',
'Stereotactic body radiation therapy (SBRT) is characterized by:',
'Multiple small daily fractions over 6-8 weeks', 'High-dose, precisely targeted radiation delivered in few fractions (1-5) for small tumors', 'Low-dose palliative radiation', 'Whole body radiation', 'Only for brain tumors',
'B', 'SBRT: highly focused, high-dose radiation in 1-5 fractions (vs conventional 25-35 fractions). Requires precise targeting (image guidance, immobilization). Indications: (1) Early-stage lung cancer (medically inoperable), (2) Liver tumors/metastases, (3) Spine tumors, (4) Oligometastatic disease, (5) Prostate cancer. Achieves high local control (>90% for lung). Also: SRS (stereotactic radiosurgery) for brain. Reference: Timmerman RD. JAMA. 2010.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 36 (Surgical Oncology): 60 questions inserted' as status;
