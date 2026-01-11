-- Surgery 4 MCQ Question Bank - Batch 20
-- Section E: Oncology - Prostate Cancer
-- 40 Questions

-- Topic: Prostate Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000020-0000-0000-0000-000000000020', 'Prostate Cancer', 'a0000004-0000-0000-0000-000000000004', 'Prostate cancer epidemiology, screening, diagnosis, staging, and treatment', 20, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Prostate cancer is the most common cancer in men after:',
 'Lung cancer', 'Skin cancer', 'Colon cancer', 'Bladder cancer', 'Kidney cancer',
 'B', 'Prostate cancer is the most common non-skin cancer in men. Second most common cause of cancer death after lung cancer. Incidence increases with age. Rare before 50 years.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The most significant risk factors for prostate cancer include:',
 'Smoking and alcohol', 'Age African American race and family history', 'Diet high in vegetables', 'Early sexual activity', 'Circumcision',
 'B', 'Major risk factors: increasing age (>50), African American race (higher incidence and mortality), family history (2-3x risk with first-degree relative). BRCA2 also increases risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The normal PSA level upper limit generally accepted is:',
 '1 ng/mL', '4 ng/mL', '10 ng/mL', '20 ng/mL', '0.1 ng/mL',
 'B', 'PSA: generally <4 ng/mL considered normal. However, age-specific ranges exist. PSA is organ-specific not cancer-specific. Elevated in BPH, prostatitis, instrumentation, cancer.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'PSA velocity refers to:',
 'Single PSA value', 'Rate of change of PSA over time', 'Ratio of free to total PSA', 'PSA level after treatment', 'PSA during DRE',
 'B', 'PSA velocity: rate of PSA change over time. >0.75 ng/mL/year concerning for cancer. PSA doubling time also important for prognosis and monitoring after treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Free PSA to total PSA ratio is useful because:',
 'Lower ratio suggests cancer', 'Always diagnostic', 'Replaces biopsy', 'Only useful after treatment', 'Higher ratio suggests cancer',
 'A', 'Free to total PSA ratio: cancer produces more bound PSA. Ratio <10% higher cancer risk. Ratio >25% lower cancer risk. Helps decide on biopsy for PSA 4-10 (gray zone).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Digital rectal examination (DRE) in prostate cancer may reveal:',
 'Soft boggy prostate', 'Hard nodule or asymmetry', 'Tender prostate', 'Normal examination always', 'Crepitus',
 'B', 'DRE findings suspicious for cancer: hard nodule, asymmetry, induration, loss of median sulcus, fixation. Normal DRE does not exclude cancer. DRE + PSA complementary.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The standard method for diagnosing prostate cancer is:',
 'PSA alone', 'CT scan', 'Transrectal ultrasound guided biopsy or MRI-fusion biopsy', 'Bone scan', 'Cystoscopy',
 'C', 'TRUS-guided systematic biopsy: standard for decades. Now MRI-fusion biopsy becoming standard (targets suspicious lesions). 12-core systematic biopsy. Antibiotic prophylaxis essential.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Multiparametric MRI of prostate before biopsy:',
 'Is not useful', 'Can detect significant cancers and guide targeted biopsy', 'Replaces biopsy', 'Only used after treatment', 'Detects all cancers',
 'B', 'mpMRI: T2, DWI, DCE imaging. PI-RADS scoring (1-5). Can identify clinically significant cancers, reduce unnecessary biopsies, guide targeted biopsy. Standard in many centers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The Gleason score is determined by:',
 'PSA level', 'Sum of the two most prevalent histologic patterns in biopsy', 'Tumor size', 'Number of positive cores', 'Patient age',
 'B', 'Gleason score: grades glandular differentiation (patterns 1-5, now 3-5 clinically). Sum of most prevalent and second most prevalent patterns. Range 6-10. Now using Grade Groups 1-5.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Gleason score 8-10 indicates:',
 'Well differentiated low risk cancer', 'Poorly differentiated high grade cancer', 'Benign prostatic hyperplasia', 'Pre-malignant condition', 'In situ carcinoma',
 'B', 'Gleason 8-10 (Grade Group 4-5): high grade, aggressive, higher metastatic potential, worse prognosis. Requires definitive treatment. Gleason 6 is low grade, Gleason 7 intermediate.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The TNM staging T2b prostate cancer indicates:',
 'Tumor confined to less than half of one lobe', 'Tumor involves more than half of one lobe but not both lobes', 'Tumor extends beyond prostate capsule', 'Seminal vesicle invasion', 'Lymph node metastases',
 'B', 'T2 = organ confined. T2a: <50% one lobe. T2b: >50% one lobe. T2c: both lobes. T3a: extracapsular extension. T3b: seminal vesicle invasion. T4: fixed/invades adjacent structures.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Risk stratification for localized prostate cancer uses:',
 'PSA alone', 'PSA Gleason score and clinical stage combined', 'Age only', 'Symptoms only', 'DRE only',
 'B', 'Risk groups (NCCN/D Amico): Low (PSA<10, Gleason 6, T1-2a), Intermediate (PSA 10-20 or Gleason 7 or T2b-c), High (PSA>20 or Gleason 8-10 or T3+). Guides treatment selection.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Active surveillance is appropriate for:',
 'All prostate cancers', 'Very low-risk and low-risk localized prostate cancer', 'Metastatic cancer', 'High-grade cancer', 'Any PSA level',
 'B', 'Active surveillance: for low-risk/very low-risk. Avoids overtreatment. Monitoring with PSA, DRE, repeat biopsy, MRI. Conversion to treatment if progression. Not watchful waiting (which is for limited life expectancy).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Radical prostatectomy involves:',
 'Partial prostate removal', 'Complete removal of prostate and seminal vesicles', 'TURP', 'Cryotherapy', 'Hormone therapy only',
 'B', 'Radical prostatectomy: complete removal of prostate, seminal vesicles, and possibly pelvic lymph nodes. Approaches: open retropubic, laparoscopic, robotic. Curative intent for localized disease.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Major complications of radical prostatectomy include:',
 'Hair loss', 'Erectile dysfunction and urinary incontinence', 'Diarrhea', 'Weight gain', 'Gynecomastia',
 'B', 'Prostatectomy complications: erectile dysfunction (nerve injury, 30-70%), urinary incontinence (10-20% long term), bladder neck contracture, lymphocele, DVT. Nerve-sparing technique reduces ED.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Nerve-sparing radical prostatectomy aims to preserve:',
 'Urethral sphincter', 'Neurovascular bundles for erectile function', 'Seminal vesicles', 'Bladder neck', 'Rectum',
 'B', 'Neurovascular bundles: posterolateral to prostate, contain cavernous nerves for erection. Preservation improves potency rates. May compromise oncologic control if tumor near bundles.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'External beam radiation therapy for prostate cancer:',
 'Is rarely used', 'Is an alternative to surgery with similar oncologic outcomes for localized disease', 'Only for metastatic cancer', 'Has no side effects', 'Requires hospitalization',
 'B', 'EBRT: curative for localized prostate cancer. Similar outcomes to surgery. IMRT/IGRT techniques reduce toxicity. Side effects: bowel/bladder irritation, ED (gradual onset). Outpatient daily for weeks.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Brachytherapy for prostate cancer involves:',
 'External radiation', 'Placement of radioactive seeds directly into prostate', 'Chemotherapy implants', 'Hormone implants', 'Cryotherapy',
 'B', 'Brachytherapy: radioactive seeds (I-125, Pd-103) implanted into prostate. Low-dose rate (permanent seeds) or high-dose rate (temporary). For low-intermediate risk. Can be monotherapy or boost.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Androgen deprivation therapy (ADT) for prostate cancer:',
 'Stimulates testosterone', 'Reduces testosterone to suppress tumor growth', 'Is only surgical', 'Has no role in treatment', 'Cures all cancers',
 'B', 'ADT: reduces testosterone (surgical castration or LHRH agonists/antagonists). Prostate cancer is androgen-dependent. Used for advanced/metastatic disease, combined with radiation for high-risk localized.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'LHRH agonists (leuprolide goserelin) work by:',
 'Directly blocking androgen receptor', 'Initial stimulation then downregulation of pituitary causing testosterone suppression', 'Inhibiting adrenal androgens', 'Blocking 5-alpha reductase', 'Stimulating testosterone production',
 'B', 'LHRH agonists: initial testosterone flare (days 1-2 weeks) then receptor downregulation and testosterone suppression. Flare can be blocked with antiandrogens. Depot injections monthly/quarterly.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Side effects of androgen deprivation therapy include:',
 'Improved bone density', 'Hot flashes fatigue loss of libido osteoporosis and metabolic syndrome', 'Hair growth', 'Weight loss', 'Improved sexual function',
 'B', 'ADT side effects: hot flashes, fatigue, decreased libido/ED, osteoporosis, metabolic syndrome (obesity, diabetes, cardiovascular), gynecomastia, anemia, cognitive changes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Castration-resistant prostate cancer (CRPC) is defined as:',
 'Cancer cured by castration', 'Disease progression despite castrate testosterone levels', 'Cancer that has never been treated', 'Benign condition', 'PSA undetectable',
 'B', 'CRPC: disease progression (rising PSA, imaging progression) despite testosterone <50 ng/dL. Previously called hormone-refractory. Still responds to additional hormonal manipulations and chemotherapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Enzalutamide and abiraterone are used for:',
 'BPH only', 'Castration-resistant prostate cancer', 'Early prostate cancer', 'Prostatitis', 'Prevention only',
 'B', 'Enzalutamide: androgen receptor antagonist. Abiraterone: CYP17 inhibitor (blocks androgen synthesis). Both approved for metastatic CRPC and now for metastatic hormone-sensitive disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The first-line chemotherapy for metastatic castration-resistant prostate cancer is:',
 'Paclitaxel', 'Docetaxel', '5-fluorouracil', 'Methotrexate', 'Cisplatin',
 'B', 'Docetaxel: first chemo to show survival benefit in mCRPC. Every 3 weeks with prednisone. Cabazitaxel for docetaxel-resistant disease. Now also used upfront for high-volume metastatic hormone-sensitive disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Bone metastases from prostate cancer are typically:',
 'Lytic', 'Osteoblastic (sclerotic)', 'Mixed', 'Never occur', 'Only in spine',
 'B', 'Prostate cancer bone metastases: characteristically osteoblastic (sclerotic). Contrast with breast/lung/renal which are often lytic. Detected on bone scan, may see elevated alkaline phosphatase.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Bone-targeted therapy for prostate cancer metastases includes:',
 'Antibiotics', 'Bisphosphonates or denosumab', 'Vitamin D only', 'Calcium only', 'Exercise only',
 'B', 'Bisphosphonates (zoledronic acid) and denosumab (RANKL inhibitor): reduce skeletal-related events (fractures, cord compression, need for radiation). Also radium-223 for bone metastases.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Radium-223 is indicated for:',
 'Localized prostate cancer', 'Symptomatic bone metastases in CRPC without visceral metastases', 'All metastatic cancer', 'Soft tissue metastases', 'Prevention',
 'B', 'Radium-223: alpha-emitter targeting bone. Improves survival in symptomatic bone-metastatic CRPC without visceral disease. Localizes to areas of increased bone turnover.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'PSA after radical prostatectomy should be:',
 '4 ng/mL or less', 'Undetectable (less than 0.1-0.2 ng/mL)', '10 ng/mL or less', '20 ng/mL or less', 'Same as before surgery',
 'B', 'Post-prostatectomy: PSA should be undetectable (<0.1-0.2 depending on assay). Detectable PSA = biochemical recurrence. After radiation, nadir typically higher.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Biochemical recurrence after radical prostatectomy is defined as:',
 'Any detectable PSA', 'PSA 0.2 ng/mL or greater with confirmation', 'PSA greater than 4', 'PSA greater than 10', 'No definition exists',
 'B', 'BCR post-prostatectomy: PSA >=0.2 ng/mL confirmed on repeat testing. After radiation: PSA nadir + 2 ng/mL (Phoenix definition). Not all BCR progresses to clinical disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Salvage radiation therapy is used for:',
 'Initial treatment', 'Biochemical recurrence after radical prostatectomy', 'Metastatic disease', 'CRPC', 'Prevention',
 'B', 'Salvage RT: for BCR after prostatectomy with no evidence of metastases. Targets prostatic fossa. Better outcomes with lower PSA at treatment. May add ADT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'PSMA PET scan is useful in prostate cancer for:',
 'Replacing biopsy', 'Detecting recurrence and metastases with high sensitivity', 'Initial screening', 'Determining Gleason score', 'Measuring testosterone',
 'B', 'PSMA PET/CT: targets prostate-specific membrane antigen. Superior to conventional imaging for detecting recurrence, lymph node and bone metastases. Changing staging and management.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of death in men with low-risk prostate cancer is:',
 'Prostate cancer', 'Other causes unrelated to prostate cancer', 'Treatment complications', 'Bone metastases', 'Urinary obstruction',
 'B', 'Low-risk prostate cancer: excellent prognosis. Most men die of other causes (heart disease, other cancers). Supports active surveillance approach. Overtreatment concern.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Prostate cancer screening with PSA:',
 'Is universally recommended', 'Should involve shared decision-making about benefits and risks', 'Should start at age 30 for all men', 'Is never recommended', 'Only for symptomatic men',
 'B', 'PSA screening: controversial. Reduces prostate cancer mortality but overdiagnosis/overtreatment concerns. Guidelines recommend shared decision-making, informed consent about benefits/harms. Age 50-70 for average risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Focal therapy for prostate cancer includes:',
 'Radical prostatectomy', 'Cryotherapy or HIFU targeting specific tumor foci', 'Total gland radiation', 'Chemotherapy', 'Hormone therapy',
 'B', 'Focal therapy: treats only tumor-containing region. Modalities: cryotherapy, HIFU, laser ablation. Investigational for selected cases. Aims to reduce treatment morbidity while controlling cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'High-intensity focused ultrasound (HIFU) for prostate cancer:',
 'Uses radiation', 'Uses focused ultrasound waves to ablate tissue', 'Is standard first-line treatment', 'Has no complications', 'Requires surgery',
 'B', 'HIFU: transrectal device focuses ultrasound energy to ablate prostate tissue. No radiation, minimally invasive. For localized disease, focal or whole gland. Not yet widely adopted.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Genetic testing in prostate cancer is recommended for:',
 'No patients', 'Patients with metastatic disease or high-risk features for BRCA and other mutations', 'All men over 50', 'Only for screening', 'Only after treatment failure',
 'B', 'Germline testing: for metastatic, high-risk localized, strong family history. BRCA2, other DNA repair genes. Implications for treatment (PARP inhibitors), family counseling. Somatic tumor testing also important.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Pelvic lymph node dissection in prostate cancer is performed:',
 'For all cases', 'For intermediate and high-risk disease during radical prostatectomy', 'Only for metastatic cancer', 'Never', 'Only after radiation',
 'B', 'PLND: staging procedure. Extended PLND for intermediate/high risk (higher yield). Identifies nodal metastases affecting prognosis and adjuvant treatment decisions. Can omit for very low/low risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000020-0000-0000-0000-000000000020', 'a0000004-0000-0000-0000-000000000004',
 'Spinal cord compression from prostate cancer metastases is treated with:',
 'Observation only', 'Emergency corticosteroids and radiation or surgery', 'Antibiotics', 'Chemotherapy alone', 'NSAIDs only',
 'B', 'Cord compression: oncologic emergency. High-dose corticosteroids immediately. Radiation therapy for most. Surgery (decompression) for spinal instability, neurologic deterioration, or radiation-resistant tumors.', 'medium', 'application');
