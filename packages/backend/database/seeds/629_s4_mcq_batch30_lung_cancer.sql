-- Surgery 4 MCQ Question Bank - Batch 30
-- Section E: Oncology - Lung Cancer
-- 40 Questions

-- Topic: Lung Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000030-0000-0000-0000-000000000030', 'Lung Cancer', 'a0000004-0000-0000-0000-000000000004', 'Non-small cell and small cell lung cancer diagnosis and treatment', 30, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of lung cancer is:',
 'Small cell lung cancer', 'Non-small cell lung cancer', 'Carcinoid tumor', 'Mesothelioma', 'Lymphoma',
 'B', 'NSCLC: 80-85% of lung cancers. Subtypes: adenocarcinoma (most common), squamous cell, large cell. SCLC: 15-20%. Treatment approaches differ significantly between NSCLC and SCLC.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'The most common histological subtype of non-small cell lung cancer is:',
 'Squamous cell carcinoma', 'Adenocarcinoma', 'Large cell carcinoma', 'Adenosquamous carcinoma', 'Carcinoid',
 'B', 'Adenocarcinoma: now most common NSCLC (40-50%). Often peripheral, more common in never-smokers and women. Squamous cell was previously most common, associated with central tumors and smoking.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'The primary risk factor for lung cancer is:',
 'Alcohol', 'Tobacco smoking', 'Asbestos alone', 'Genetics only', 'Air pollution alone',
 'B', 'Smoking: 85% of lung cancers attributable to tobacco. Other factors: radon, asbestos, air pollution, prior radiation, family history, occupational exposures. Risk increases with duration and intensity.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Lung cancer screening with low-dose CT is recommended for:',
 'All adults', 'High-risk individuals (50-80 years with 20+ pack-year smoking history)', 'Only symptomatic patients', 'Never-smokers only', 'Only those with family history',
 'B', 'LDCT screening: USPSTF recommends for 50-80 years, >=20 pack-years, current smoker or quit within 15 years. NELSON and NLST trials showed mortality reduction. Annual screening.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Common presenting symptoms of lung cancer include:',
 'Asymptomatic only', 'Cough hemoptysis dyspnea chest pain and weight loss', 'Diarrhea', 'Lower extremity edema only', 'Headache only',
 'B', 'Lung cancer symptoms: cough (most common), hemoptysis, dyspnea, chest pain, wheezing, recurrent pneumonia, weight loss. May be asymptomatic (found on screening). Late: hoarseness (recurrent laryngeal nerve), SVC syndrome.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Pancoast tumor presents with:',
 'Hemoptysis only', 'Shoulder pain and Horner syndrome due to superior sulcus location', 'Abdominal pain', 'Lower extremity weakness', 'Jaundice',
 'B', 'Pancoast (superior sulcus tumor): apical lung tumor invading chest wall, brachial plexus, cervical sympathetic chain. Symptoms: shoulder/arm pain, Horner syndrome (miosis, ptosis, anhidrosis), hand weakness.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Horner syndrome in lung cancer indicates:',
 'Metastatic disease always', 'Involvement of the cervical sympathetic chain typically from apical tumors', 'Central tumor', 'Stage I disease', 'Response to treatment',
 'B', 'Horner syndrome: miosis, ptosis, anhidrosis, enophthalmos. From superior sulcus tumors invading sympathetic chain. Ipsilateral. May still be resectable with multimodal approach.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Superior vena cava syndrome in lung cancer:',
 'Is always an emergency', 'Causes facial and upper extremity swelling from SVC obstruction usually by right-sided tumors', 'Only occurs with small cell', 'Is treated with surgery first', 'Is painless',
 'B', 'SVC syndrome: facial edema, jugular distention, upper extremity swelling, dyspnea, cyanosis. Usually right-sided tumors or nodes compressing SVC. Most commonly SCLC, NSCLC. Treatment: stent, chemo/RT, steroids.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Initial workup for suspected lung cancer includes:',
 'Surgery first', 'CT chest and tissue diagnosis', 'PET scan only', 'Sputum cytology only', 'Observation',
 'B', 'Lung cancer workup: chest CT, tissue diagnosis (bronchoscopy, CT-guided biopsy, EBUS, surgery). Staging: PET-CT, brain MRI. Molecular testing for adenocarcinoma. Assess operability and resectability.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'PET-CT in lung cancer staging:',
 'Is never needed', 'Assesses for mediastinal and distant metastases with metabolic activity', 'Replaces all other imaging', 'Is diagnostic of histology', 'Is only for follow-up',
 'B', 'PET-CT: standard for staging. Identifies mediastinal nodes (>1 cm or FDG-avid need tissue confirmation), distant metastases. Higher sensitivity/specificity than CT alone. False positives with inflammation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Brain MRI is recommended in lung cancer staging because:',
 'It is rarely positive', 'Lung cancer commonly metastasizes to the brain and PET has limited sensitivity for brain lesions', 'It replaces CT', 'Only for headache', 'Only for SCLC',
 'B', 'Brain MRI: routine in NSCLC staging (especially stage II+) and SCLC. Brain metastases common. PET has limited sensitivity for brain due to high background FDG uptake. Detects asymptomatic metastases.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'EBUS (endobronchial ultrasound) in lung cancer:',
 'Is a surgical procedure', 'Allows minimally invasive mediastinal lymph node sampling for staging', 'Is only for treatment', 'Cannot biopsy lymph nodes', 'Is contraindicated in lung cancer',
 'B', 'EBUS-TBNA: real-time ultrasound-guided transbronchial needle aspiration of mediastinal/hilar nodes. Minimally invasive staging. Also EUS (esophageal ultrasound) for posterior mediastinum.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'TNM staging in lung cancer:',
 'Uses only tumor size', 'Incorporates tumor size invasion nodal involvement and distant metastases', 'Is not used', 'Is different from other cancers', 'Only applies to SCLC',
 'B', 'TNM (8th edition): T = tumor size and local invasion, N = nodal involvement (N0-N3), M = metastases. Stages I-IV. Guides treatment decisions. Stage grouping determines prognosis and treatment.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for stage I and II NSCLC is:',
 'Chemotherapy only', 'Surgical resection with consideration for adjuvant therapy', 'Radiation only', 'Immunotherapy only', 'Observation',
 'B', 'Early-stage NSCLC: surgical resection (lobectomy preferred). Adjuvant chemotherapy for stage II and some IB. Adjuvant osimertinib for EGFR+ resected stage IB-IIIA. SBRT for medically inoperable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'The standard surgical resection for lung cancer is:',
 'Wedge resection', 'Lobectomy with mediastinal lymph node dissection', 'Pneumonectomy always', 'Segmentectomy for all', 'Endobronchial treatment',
 'B', 'Lobectomy: standard for resectable NSCLC. Complete mediastinal lymph node dissection or sampling. Segmentectomy or wedge for small tumors (<2 cm) or limited pulmonary reserve. Pneumonectomy avoided if possible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Video-assisted thoracoscopic surgery (VATS) for lung cancer:',
 'Is not used for cancer', 'Is minimally invasive with equivalent oncologic outcomes to open thoracotomy', 'Has higher recurrence rates', 'Is only for benign disease', 'Prevents adequate lymph node sampling',
 'B', 'VATS lobectomy: minimally invasive approach. Equivalent oncologic outcomes, less pain, shorter hospital stay, preserved pulmonary function. Now standard at experienced centers. Robotic-assisted also used.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Stereotactic body radiation therapy (SBRT) for lung cancer:',
 'Is for all stages', 'Is a curative option for early-stage NSCLC in medically inoperable patients', 'Replaces surgery always', 'Is only palliative', 'Has no role in lung cancer',
 'B', 'SBRT: high-dose precisely targeted radiation. For stage I NSCLC in patients not surgical candidates (comorbidities, pulmonary function). High local control rates. Comparable outcomes to surgery in some series.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for stage III NSCLC:',
 'Surgery alone', 'Is multimodal often involving concurrent chemoradiation or chemoimmunotherapy followed by surgery or durvalumab', 'Radiation alone', 'Chemotherapy alone', 'Observation only',
 'B', 'Stage III NSCLC: heterogeneous, multimodal treatment. Options: concurrent chemoRT followed by durvalumab (PACIFIC), neoadjuvant chemo/immunotherapy + surgery for resectable IIIA. Multidisciplinary discussion essential.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'The PACIFIC regimen for stage III NSCLC involves:',
 'Surgery first', 'Concurrent chemoradiation followed by durvalumab consolidation', 'Chemotherapy only', 'Immunotherapy only', 'Radiation only',
 'B', 'PACIFIC trial: concurrent chemoRT followed by 1 year durvalumab (PD-L1 inhibitor) for unresectable stage III NSCLC. Improved OS and PFS. Now standard of care for eligible patients.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Molecular testing in advanced NSCLC adenocarcinoma should include:',
 'EGFR only', 'EGFR ALK ROS1 BRAF KRAS MET NTRK RET and PD-L1', 'No molecular testing needed', 'HER2 only', 'KIT only',
 'B', 'Molecular testing: critical for adenocarcinoma and non-squamous NSCLC. Targetable drivers: EGFR, ALK, ROS1, BRAF V600E, KRAS G12C, MET exon 14, RET, NTRK, HER2. PD-L1 for immunotherapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'EGFR mutations in NSCLC:',
 'Are rare', 'Are more common in never-smokers and are targeted with TKIs like osimertinib', 'Have no treatment', 'Are treated with chemotherapy only', 'Are only in squamous cell',
 'B', 'EGFR mutations: 10-15% Caucasians, 30-50% Asian. More common in never-smokers, women, adenocarcinoma. First-line TKIs: osimertinib (preferred), gefitinib, erlotinib, afatinib. Excellent responses.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Osimertinib in EGFR-mutant NSCLC:',
 'Is only second-line', 'Is a third-generation TKI that is first-line for sensitizing EGFR mutations with better CNS penetration', 'Has no CNS activity', 'Is chemotherapy', 'Is immunotherapy',
 'B', 'Osimertinib: 3rd gen EGFR TKI. First-line for EGFR-mutant NSCLC (FLAURA - superior OS). Also for T790M resistance mutation. Better CNS penetration, activity against brain metastases.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'ALK rearrangements in NSCLC:',
 'Are very common', 'Occur in 3-5 percent and are treated with ALK inhibitors like alectinib or lorlatinib', 'Have no targeted therapy', 'Are only in elderly', 'Are in SCLC only',
 'B', 'ALK rearrangements: 3-5% of NSCLC. More common in younger, never/light smokers, adenocarcinoma. TKIs: alectinib, lorlatinib (preferred 1st line), brigatinib, crizotinib. Excellent responses.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'KRAS G12C mutations in NSCLC:',
 'Are not targetable', 'Are now targetable with sotorasib or adagrasib', 'Are only in SCLC', 'Are treated with immunotherapy only', 'Are associated with never-smokers',
 'B', 'KRAS G12C: ~13% of NSCLC, associated with smoking. Previously undruggable. Sotorasib (AMG 510), adagrasib: covalent inhibitors. FDA-approved for previously treated NSCLC. Ongoing studies for first-line.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'PD-L1 expression in NSCLC:',
 'Has no clinical significance', 'Guides immunotherapy decisions with higher expression suggesting greater benefit from checkpoint inhibitors', 'Is only in SCLC', 'Contraindicates immunotherapy', 'Is always high',
 'B', 'PD-L1: predicts immunotherapy benefit. High PD-L1 (>50%): pembrolizumab monotherapy option. Any PD-L1: chemo-immunotherapy. Testing standard. Not perfect predictor - some respond regardless of PD-L1.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for metastatic NSCLC without driver mutations:',
 'Chemotherapy only', 'Pembrolizumab alone for high PD-L1 or chemotherapy plus immunotherapy for others', 'Targeted therapy', 'Surgery', 'Radiation only',
 'B', 'Metastatic NSCLC no drivers: PD-L1 >=50%: pembrolizumab monotherapy or chemo-IO. PD-L1 <50%: chemo-IO (pembrolizumab, atezolizumab, nivolumab/ipilimumab combinations). Histology guides chemo backbone.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Small cell lung cancer (SCLC):',
 'Is slow growing', 'Is a neuroendocrine tumor that is aggressive and strongly associated with smoking', 'Is usually peripheral', 'Is treated with surgery first', 'Has no paraneoplastic syndromes',
 'B', 'SCLC: neuroendocrine, aggressive, rapid doubling time. Central tumors. 95% associated with smoking. Often presents with metastases. Paraneoplastic syndromes common (SIADH, Lambert-Eaton, Cushing).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'SCLC is staged as:',
 'TNM stages I-IV only', 'Limited stage (confined to hemithorax) or extensive stage (beyond hemithorax)', 'Early or late', 'Low or high grade', 'Not staged',
 'B', 'SCLC staging: limited (can be encompassed in one radiation field, one hemithorax +/- mediastinal/supraclavicular nodes) vs extensive (spread beyond this). Determines treatment approach.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for limited-stage SCLC is:',
 'Surgery alone', 'Concurrent chemoradiation with prophylactic cranial irradiation for responders', 'Chemotherapy only', 'Immunotherapy only', 'Observation',
 'B', 'Limited SCLC: concurrent chemoRT (cisplatin/etoposide + thoracic RT). PCI for responders (reduces brain metastases, improves survival). Rare cases: surgery for very early stage followed by chemo.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for extensive-stage SCLC is:',
 'Radiation alone', 'Platinum-etoposide chemotherapy plus checkpoint inhibitor (atezolizumab or durvalumab)', 'Surgery first', 'TKIs', 'Best supportive care only',
 'B', 'Extensive SCLC: platinum (cisplatin or carboplatin) + etoposide + atezolizumab or durvalumab (IMpower133, CASPIAN). Consolidation thoracic RT considered. PCI controversial in extensive stage.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Prophylactic cranial irradiation (PCI) in SCLC:',
 'Is never used', 'Reduces brain metastases and may improve survival in responders to initial therapy', 'Is for all patients', 'Worsens survival', 'Is only for NSCLC',
 'B', 'PCI: SCLC has high rate of brain metastases. PCI reduces brain mets, improves survival in limited-stage responders. Role in extensive-stage more controversial. MRI surveillance alternative.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Bronchial carcinoid tumors:',
 'Are the same as small cell', 'Are low-grade neuroendocrine tumors treated primarily with surgical resection', 'Are non-surgical', 'Are always benign', 'Do not metastasize',
 'B', 'Bronchial carcinoids: low-grade neuroendocrine tumors. Typical (more common, excellent prognosis) vs atypical (more aggressive). Treatment: surgical resection. Less associated with smoking than SCLC.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Paraneoplastic syndromes associated with lung cancer include:',
 'None', 'SIADH Lambert-Eaton myasthenic syndrome and hypercalcemia', 'Only Cushing syndrome', 'Only peripheral neuropathy', 'Only anemia',
 'B', 'Paraneoplastic syndromes: SCLC - SIADH, Lambert-Eaton, ectopic Cushing. Squamous NSCLC - hypercalcemia (PTHrP). Also: dermatomyositis, hypertrophic osteoarthropathy, cerebellar degeneration.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'SIADH in lung cancer:',
 'Causes hypernatremia', 'Causes hyponatremia due to inappropriate ADH secretion usually from SCLC', 'Is always asymptomatic', 'Is treated with salt restriction', 'Only occurs after treatment',
 'B', 'SIADH: most common in SCLC. Euvolemic hyponatremia. Treatment: fluid restriction, treat underlying cancer. Severe: hypertonic saline, vasopressin antagonists (tolvaptan). Improves with tumor response.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Lambert-Eaton myasthenic syndrome:',
 'Is the same as myasthenia gravis', 'Is associated with SCLC and causes proximal muscle weakness that improves with repeated use', 'Only affects ocular muscles', 'Is not associated with cancer', 'Worsens with acetylcholinesterase inhibitors',
 'B', 'Lambert-Eaton: paraneoplastic (usually SCLC) or autoimmune. Antibodies against voltage-gated calcium channels at NMJ. Proximal weakness, improves with activity (post-exercise facilitation). Autonomic symptoms.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Malignant pleural effusion in lung cancer:',
 'Is stage IIIA', 'Indicates stage IVA metastatic disease', 'Is always benign', 'Is treated with antibiotics', 'Does not require biopsy',
 'B', 'Malignant pleural effusion: M1a in NSCLC, indicates stage IV. Confirms by positive cytology or pleural biopsy. Treatment: drainage, pleurodesis, indwelling catheter. Systemic therapy for underlying cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Mesothelioma differs from lung cancer in that:',
 'It arises from the pleura and is strongly associated with asbestos exposure', 'It is more common', 'It arises from bronchial epithelium', 'It responds better to chemotherapy', 'It is unrelated to asbestos',
 'B', 'Mesothelioma: from mesothelial cells of pleura (or peritoneum, pericardium). Strong asbestos association (70-80%). Latency 20-50 years. Treatment: surgery (pleurectomy/EPP), chemo (pemetrexed/cisplatin), immunotherapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'Pulmonary function testing before lung resection:',
 'Is not needed', 'Assesses ability to tolerate resection using FEV1 DLCO and predicted postoperative values', 'Only measures FVC', 'Is only for COPD patients', 'Is done after surgery',
 'B', 'Pre-op PFTs: FEV1, DLCO. Calculate predicted post-op values based on resection extent. ppoFEV1 and ppoDLCO >40% generally acceptable. Additional testing (exercise, V/Q) if borderline. Optimize before surgery.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000030-0000-0000-0000-000000000030', 'a0000004-0000-0000-0000-000000000004',
 'The 5-year survival rate for stage I NSCLC after complete resection is approximately:',
 '10 percent', '20-30 percent', '60-80 percent', '50 percent', '95 percent',
 'C', 'Stage I NSCLC: 5-year survival 68-92% depending on substage and patient factors. Stage IA1: ~92%, Stage IB: ~68%. Early detection and complete resection crucial for favorable outcomes.', 'medium', 'knowledge');
