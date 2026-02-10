-- Article 45: Prostate Cancer
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000045-0000-0000-0000-000000000045'::uuid, 'introduction', 1, 'Introduction to Prostate Cancer', 'Prostate cancer is the most common cancer in men and second leading cause of cancer death. It is predominantly a disease of older men with median age at diagnosis around 66 years. The disease ranges from indolent tumors requiring only surveillance to aggressive cancers requiring multimodal treatment. Understanding risk stratification, staging, and treatment options is essential. The prostate-specific antigen (PSA) test has revolutionized detection but also led to overdiagnosis and overtreatment debates.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 'content', 2, 'Epidemiology and Pathology', 'EPIDEMIOLOGY: Most common male cancer. Risk increases with age - rare before 50. Risk factors: age, African ancestry (2x risk), family history (first-degree relative doubles risk), BRCA2 mutation, high-fat diet.

ANATOMY: Prostate is divided into zones - peripheral zone (70% of gland, 70% of cancers arise here), transition zone (BPH arises here, 20% of cancers), central zone. Prostate lies below bladder, surrounds prostatic urethra.

PATHOLOGY: Adenocarcinoma in over 95% of cases. Small cell carcinoma, ductal carcinoma, transitional cell carcinoma rare. Multifocal in 85% of cases.

GLEASON GRADING: Based on glandular architecture. Primary pattern (most common) plus secondary pattern. Gleason score 2-10. Grade groups: Group 1 (Gleason 6), Group 2 (Gleason 3+4=7), Group 3 (Gleason 4+3=7), Group 4 (Gleason 8), Group 5 (Gleason 9-10). Higher grade correlates with worse prognosis.

SPREAD: Local extension to seminal vesicles, bladder, rectum. Lymphatic to obturator and iliac nodes. Haematogenous to bone (osteoblastic - sclerotic metastases), lung, liver.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 'content', 3, 'Diagnosis and Staging', 'PSA (PROSTATE-SPECIFIC ANTIGEN): Organ-specific, not cancer-specific. Normal usually less than 4 ng/mL but age-adjusted values used. Elevated in BPH, prostatitis, UTI, recent ejaculation, instrumentation. PSA velocity and PSA density improve specificity. Free-to-total PSA ratio (low ratio suggests cancer).

DIGITAL RECTAL EXAMINATION (DRE): Hard, irregular nodule, loss of median sulcus suggests cancer. Normal DRE does not exclude cancer.

DIAGNOSIS: Transrectal ultrasound (TRUS)-guided biopsy (12-core systematic). MRI-TRUS fusion biopsy improves detection. Transperineal biopsy reduces infection risk.

STAGING: TNM system. T1 (clinically inapparent), T2 (confined to prostate), T3 (extracapsular extension, T3a or seminal vesicle invasion T3b), T4 (invades adjacent structures). N (lymph nodes), M (metastases, M1b bone).

RISK STRATIFICATION: Low risk - T1-T2a, Gleason 6 or less, PSA less than 10. Intermediate risk - T2b-c, Gleason 7, PSA 10-20. High risk - T3 or above, Gleason 8 or more, PSA greater than 20.

INVESTIGATIONS: mpMRI (multiparametric MRI) - PI-RADS scoring. Bone scan for metastases (if PSA greater than 10 or high-grade). CT or MRI for nodal staging. PSMA PET-CT increasingly used.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 'content', 4, 'Management Options', 'LOCALIZED PROSTATE CANCER:

Active surveillance: For low-risk disease. Regular PSA, DRE, repeat biopsies. Intervention if progression detected. Reduces overtreatment while maintaining cure potential.

Radical prostatectomy: Open, laparoscopic, or robotic-assisted. Removes prostate, seminal vesicles, and pelvic lymph nodes. Complications: erectile dysfunction (30-70%), urinary incontinence (5-20%), bladder neck stricture.

Radiotherapy: External beam (EBRT) or brachytherapy (seed implantation). Complications: radiation proctitis, cystitis, erectile dysfunction (40-50%).

LOCALLY ADVANCED: Radiotherapy plus androgen deprivation therapy (ADT). Radical prostatectomy in selected cases with adjuvant treatment.

METASTATIC DISEASE: ADT is mainstay - surgical (orchidectomy) or medical (LHRH agonists/antagonists). Antiandrogens (bicalutamide). Castration-resistant prostate cancer (CRPC): abiraterone, enzalutamide, docetaxel chemotherapy.

ANDROGEN DEPRIVATION THERAPY: LHRH agonists (goserelin, leuprolide) - initial flare, need antiandrogen cover. LHRH antagonists (degarelix) - no flare. Side effects: hot flashes, sexual dysfunction, osteoporosis, metabolic syndrome.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'PSA is organ-specific, not cancer-specific - elevated in BPH, prostatitis. Prostate cancer typically arises in peripheral zone. Bone metastases are osteoblastic (sclerotic) unlike most cancers. Active surveillance appropriate for low-risk disease. LHRH agonists cause initial testosterone flare - antiandrogen cover needed.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 'key_points', 6, 'Key Points Summary', 'Most common cancer in men. Adenocarcinoma in over 95%. Gleason grading based on architecture. PSA elevated in cancer, BPH, prostatitis. mpMRI with PI-RADS scoring guides biopsy. Treatment depends on risk stratification: active surveillance, surgery, radiotherapy. Metastatic disease: ADT with LHRH agonists or antagonists. Bone metastases are sclerotic.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000045-0000-0000-0000-000000000045'::uuid, 1, 'Most prostate cancers arise from:', 'Transition zone', 'Central zone', 'Peripheral zone', 'Anterior fibromuscular stroma', 'Periurethral glands', 'C', 'Approximately 70% of prostate cancers arise from the peripheral zone.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 2, 'Most common histological type of prostate cancer is:', 'Transitional cell carcinoma', 'Squamous cell carcinoma', 'Adenocarcinoma', 'Small cell carcinoma', 'Sarcoma', 'C', 'Adenocarcinoma accounts for over 95% of prostate cancers.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 3, 'Gleason score is based on:', 'Nuclear atypia', 'Glandular architecture pattern', 'Mitotic rate', 'Tumor size', 'PSA level', 'B', 'Gleason grading is based on the architectural pattern of tumor glands, not cytological features.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 4, 'PSA is:', 'Cancer-specific', 'Organ-specific', 'Cell-type specific', 'Metastasis-specific', 'Age-specific only', 'B', 'PSA is prostate-specific (organ-specific) but not cancer-specific - elevated in BPH, prostatitis, and cancer.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 5, 'PSA can be elevated in all EXCEPT:', 'BPH', 'Prostatitis', 'Recent ejaculation', 'Renal failure', 'Urinary tract infection', 'D', 'PSA is produced by prostate tissue and elevated in prostatic conditions. Renal failure does not directly elevate PSA.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 6, 'Bone metastases from prostate cancer are characteristically:', 'Lytic', 'Sclerotic (osteoblastic)', 'Mixed', 'Cystic', 'None - prostate cancer does not metastasize to bone', 'B', 'Prostate cancer bone metastases are characteristically osteoblastic (sclerotic), unlike most other cancers.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 7, 'Active surveillance for prostate cancer is appropriate for:', 'High-risk disease', 'Low-risk disease', 'Metastatic disease', 'All prostate cancers', 'Only patients over 80', 'B', 'Active surveillance is appropriate for low-risk prostate cancer (Gleason 6 or less, PSA less than 10, T1-T2a).'),
('d2000045-0000-0000-0000-000000000045'::uuid, 8, 'LHRH agonists cause initial:', 'Testosterone suppression', 'Testosterone flare', 'PSA decrease', 'Bone protection', 'Weight loss', 'B', 'LHRH agonists initially cause testosterone flare before suppression, requiring antiandrogen cover.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 9, 'BPH arises from which zone?', 'Peripheral zone', 'Transition zone', 'Central zone', 'Anterior zone', 'Posterior zone', 'B', 'BPH (benign prostatic hyperplasia) arises from the transition zone surrounding the urethra.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 10, 'Low-risk prostate cancer criteria include:', 'PSA greater than 20', 'Gleason 6 or less and PSA less than 10', 'Gleason 8', 'T3 disease', 'Bone metastases', 'B', 'Low-risk: Gleason 6 or less, PSA less than 10 ng/mL, clinical stage T1-T2a.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 11, 'Radical prostatectomy complications include all EXCEPT:', 'Erectile dysfunction', 'Urinary incontinence', 'Bowel obstruction', 'Bladder neck stricture', 'Lymphocele', 'C', 'Bowel obstruction is not a typical complication. ED, incontinence, stricture, and lymphocele are recognized complications.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 12, 'mpMRI with PI-RADS scoring is used for:', 'Staging bone metastases', 'Detecting clinically significant prostate cancer', 'Measuring PSA', 'Brachytherapy planning', 'Detecting bladder cancer', 'B', 'Multiparametric MRI with PI-RADS scoring helps detect and localize clinically significant prostate cancer.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 13, 'Castration-resistant prostate cancer (CRPC) is treated with:', 'LHRH agonists alone', 'Active surveillance', 'Abiraterone, enzalutamide, or chemotherapy', 'Antibiotics', 'Observation only', 'C', 'CRPC is treated with novel hormonal agents (abiraterone, enzalutamide), chemotherapy (docetaxel, cabazitaxel).'),
('d2000045-0000-0000-0000-000000000045'::uuid, 14, 'Bone scan for prostate cancer staging is indicated when:', 'PSA is less than 4', 'In all cases', 'PSA greater than 10 or high-grade disease', 'Only after treatment', 'Never', 'C', 'Bone scan is indicated when PSA greater than 10 ng/mL, Gleason 8 or above, or symptoms suggesting bone disease.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 15, 'LHRH antagonists compared to agonists:', 'Cause initial flare', 'Do not cause initial flare', 'Are more expensive only', 'Are less effective', 'Require antiandrogen cover', 'B', 'LHRH antagonists (degarelix) rapidly suppress testosterone without the initial flare seen with agonists.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 16, 'DRE finding suggestive of prostate cancer is:', 'Smooth, firm enlargement', 'Tender, boggy prostate', 'Hard, irregular nodule', 'Normal prostate', 'Cystic swelling', 'C', 'A hard, irregular nodule or loss of median sulcus on DRE is suggestive of prostate cancer.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 17, 'T3b prostate cancer indicates:', 'Tumor confined to prostate', 'Extracapsular extension', 'Seminal vesicle invasion', 'Bladder invasion', 'Distant metastasis', 'C', 'T3b indicates tumor invasion into the seminal vesicles. T3a is extracapsular extension only.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 18, 'Side effects of androgen deprivation therapy include all EXCEPT:', 'Hot flashes', 'Osteoporosis', 'Erectile dysfunction', 'Hair loss pattern change', 'Hyperthyroidism', 'E', 'ADT side effects include hot flashes, osteoporosis, ED, metabolic syndrome, gynecomastia. Hyperthyroidism is not a side effect.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 19, 'Brachytherapy for prostate cancer involves:', 'External beam radiation', 'Radioactive seed implantation', 'Chemotherapy injection', 'Cryotherapy', 'HIFU', 'B', 'Brachytherapy involves implanting radioactive seeds (usually iodine-125 or palladium-103) into the prostate.'),
('d2000045-0000-0000-0000-000000000045'::uuid, 20, 'Which gene mutation significantly increases prostate cancer risk?', 'APC', 'BRCA2', 'RET', 'VHL', 'NF1', 'B', 'BRCA2 mutation carriers have significantly increased risk of prostate cancer, often with aggressive disease.');
