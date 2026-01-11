-- Surgery 4 MCQ Question Bank - Batch 23
-- Section E: Oncology - Testicular Cancer
-- 40 Questions

-- Topic: Testicular Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000023-0000-0000-0000-000000000023', 'Testicular Cancer', 'a0000004-0000-0000-0000-000000000004', 'Testicular tumors - epidemiology, diagnosis, staging, and treatment', 23, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Testicular cancer is most common in which age group:',
 '0-10 years', '15-35 years', '50-70 years', 'Over 80 years', 'All ages equally',
 'B', 'Testicular cancer: peak incidence 15-35 years. Most common solid tumor in young men. Bimodal peak in childhood (yolk sac tumor) and young adults (germ cell tumors).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The most significant risk factor for testicular cancer is:',
 'Family history', 'Cryptorchidism', 'Trauma', 'Vasectomy', 'Sexual activity',
 'B', 'Cryptorchidism: 4-10x increased risk. Risk remains even after orchidopexy. Intra-abdominal testes highest risk. Other factors: prior testicular cancer, family history, Klinefelter syndrome.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Germ cell tumors account for what percentage of testicular cancers:',
 '50 percent', '75 percent', '95 percent', '25 percent', '100 percent',
 'C', 'Germ cell tumors: 95% of testicular cancers. Divided into seminomas (40-50%) and non-seminomatous germ cell tumors (50-60%). Non-germ cell: Leydig cell, Sertoli cell tumors (rare).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Pure seminomas are characterized by:',
 'Elevated AFP', 'Sensitivity to radiation and chemotherapy with normal or elevated hCG', 'Rapid metastasis to liver', 'Poor prognosis', 'Elevated AFP always',
 'B', 'Seminoma: radiosensitive, chemosensitive. AFP never elevated (if elevated, treat as NSGCT). hCG may be mildly elevated (syncytiotrophoblasts present). Excellent prognosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Non-seminomatous germ cell tumors include all of the following EXCEPT:',
 'Embryonal carcinoma', 'Yolk sac tumor', 'Choriocarcinoma', 'Seminoma', 'Teratoma',
 'D', 'NSGCT types: embryonal carcinoma (most common component), yolk sac tumor, choriocarcinoma, teratoma. Mixed germ cell tumors common. Seminoma is separate category, but mixed tumors treated as NSGCT.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Alpha-fetoprotein (AFP) is elevated in:',
 'Pure seminoma', 'Yolk sac tumor and embryonal carcinoma', 'Pure choriocarcinoma', 'Leydig cell tumor', 'All testicular tumors',
 'B', 'AFP elevated in: yolk sac tumor (always), embryonal carcinoma, mixed GCT. Never in pure seminoma or pure choriocarcinoma. If AFP elevated with seminoma histology, treat as NSGCT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Human chorionic gonadotropin (hCG) is characteristically elevated in:',
 'Seminoma only', 'Choriocarcinoma and may be elevated in seminoma', 'Teratoma only', 'Yolk sac tumor only', 'Never elevated in testicular cancer',
 'B', 'hCG: highest in choriocarcinoma (contains syncytiotrophoblasts). May be elevated in seminoma (10-20%) and embryonal carcinoma. Very high levels suggest choriocarcinoma component.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'LDH (lactate dehydrogenase) in testicular cancer:',
 'Is never elevated', 'Is a marker of tumor burden and used in staging', 'Is specific for seminoma', 'Is only elevated in metastatic disease', 'Replaces other markers',
 'B', 'LDH: non-specific marker, reflects tumor burden. Part of IGCCCG staging for metastatic disease. Elevated in both seminoma and NSGCT. Used with AFP and hCG.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The typical presentation of testicular cancer is:',
 'Severe pain', 'Painless testicular mass or swelling', 'Infertility', 'Urinary symptoms', 'Gynecomastia',
 'B', 'Painless testicular mass: classic presentation. May have dull ache or heaviness. Pain can occur with hemorrhage or torsion. Any solid testicular mass in young man is cancer until proven otherwise.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The initial imaging modality for a suspected testicular mass is:',
 'CT scan', 'MRI', 'Scrotal ultrasound', 'X-ray', 'PET scan',
 'C', 'Scrotal ultrasound: first-line imaging. Distinguishes solid from cystic, intratesticular from extratesticular. Solid intratesticular mass is suspicious for malignancy. High sensitivity and specificity.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Radical inguinal orchiectomy involves:',
 'Scrotal incision and removal of testis', 'Inguinal incision with early vascular control and removal of testis cord and covering', 'Testis biopsy only', 'Partial orchiectomy', 'Retroperitoneal approach',
 'B', 'Radical inguinal orchiectomy: inguinal incision, early control of spermatic cord at internal ring, en bloc removal of testis with cord. Scrotal approach avoided (alters lymphatic drainage, increases recurrence risk).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Why is scrotal orchiectomy contraindicated for suspected testicular cancer:',
 'Higher complication rate', 'Alters lymphatic drainage and may contaminate scrotal skin increasing recurrence risk', 'Less accurate pathology', 'Longer recovery', 'Cosmetic concerns',
 'B', 'Scrotal violation: alters lymphatic drainage (scrotum drains to inguinal nodes), potential tumor seeding. Requires more extensive radiation field or surgery if needed. Inguinal approach standard.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Staging workup after orchiectomy for testicular cancer includes:',
 'Bone scan only', 'CT of chest abdomen and pelvis and serum tumor markers', 'MRI brain only', 'X-ray only', 'Physical exam only',
 'B', 'Staging: CT chest/abdomen/pelvis (retroperitoneal nodes, lung metastases), serum markers post-orchiectomy. Brain MRI if symptoms or widespread disease. PET may be used for residual seminoma evaluation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The primary lymphatic drainage of the testicle is to:',
 'Inguinal lymph nodes', 'Retroperitoneal para-aortic lymph nodes', 'Pelvic lymph nodes', 'Axillary lymph nodes', 'Mediastinal lymph nodes first',
 'B', 'Testicular lymphatics: drain to retroperitoneal nodes (para-aortic, paracaval). Right testis drains to interaortocaval nodes. Left testis drains to left para-aortic nodes. Inguinal only if scrotal violation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Clinical stage I testicular cancer means:',
 'Metastatic disease', 'Tumor confined to testis with normal post-orchiectomy markers and negative imaging', 'Retroperitoneal lymph node involvement', 'Distant metastases', 'Unable to stage',
 'B', 'Stage I: tumor confined to testis (any T stage), no evidence of metastases on imaging, normalized tumor markers after orchiectomy. Stage II: retroperitoneal nodes. Stage III: distant metastases or very elevated markers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Management options for clinical stage I seminoma after orchiectomy include:',
 'Chemotherapy always', 'Active surveillance adjuvant radiation or single-dose carboplatin', 'Retroperitoneal lymph node dissection', 'No further treatment ever', 'Repeat orchiectomy',
 'B', 'Stage I seminoma options: surveillance (preferred, 15-20% relapse), adjuvant radiation (para-aortic), or single-dose carboplatin. All have excellent cure rates (>95%). Surveillance preferred to reduce overtreatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Management options for clinical stage I non-seminomatous germ cell tumor after orchiectomy include:',
 'Radiation therapy', 'Active surveillance adjuvant chemotherapy or retroperitoneal lymph node dissection', 'No options available', 'Observation only', 'Hormonal therapy',
 'B', 'Stage I NSGCT options: surveillance (if compliant and low risk), RPLND (staging and therapeutic), or adjuvant BEP x 1-2 cycles. Risk stratified by lymphovascular invasion, embryonal predominance.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Retroperitoneal lymph node dissection (RPLND) for testicular cancer:',
 'Is only diagnostic', 'Is both staging and therapeutic removing affected lymph nodes', 'Is obsolete', 'Only for seminoma', 'Has no morbidity',
 'B', 'RPLND: staging and therapeutic for NSGCT. Removes retroperitoneal nodes. May be primary therapy for stage I or post-chemotherapy for residual masses. Nerve-sparing technique to preserve ejaculation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'A major complication of retroperitoneal lymph node dissection is:',
 'Urinary incontinence', 'Retrograde ejaculation due to sympathetic nerve injury', 'Erectile dysfunction', 'Leg weakness', 'Renal failure',
 'B', 'Retrograde ejaculation: from injury to sympathetic nerves (postganglionic fibers). Nerve-sparing RPLND preserves emission/ejaculation in >95%. Important for fertility in young men.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The standard chemotherapy regimen for metastatic testicular cancer is:',
 'CHOP', 'BEP (bleomycin etoposide cisplatin)', 'FOLFOX', 'MVAC', 'CMF',
 'B', 'BEP: standard regimen. 3-4 cycles depending on risk group. Highly effective (cure rates >80% even for metastatic disease). EP (without bleomycin) may be used to reduce pulmonary toxicity.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Bleomycin toxicity primarily affects:',
 'Kidneys', 'Lungs causing pulmonary fibrosis', 'Liver', 'Heart', 'Bone marrow only',
 'B', 'Bleomycin pulmonary toxicity: can cause fatal pulmonary fibrosis. Risk increases with cumulative dose, age, renal impairment, high FiO2. Monitor pulmonary function. Avoid in older patients.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The IGCCCG risk classification for metastatic germ cell tumors uses:',
 'Tumor size only', 'Primary tumor site presence of non-pulmonary visceral metastases and tumor marker levels', 'Age only', 'Histology only', 'Number of metastases only',
 'B', 'IGCCCG: Good, intermediate, poor risk based on: primary site (testis vs mediastinal), non-pulmonary visceral mets (liver, brain, bone), and marker levels (AFP, hCG, LDH). Guides treatment intensity.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Good-risk metastatic germ cell tumor has a cure rate of approximately:',
 '20 percent', '50 percent', '90 percent or higher', '75 percent', 'Less than 10 percent',
 'C', 'Good-risk GCT: >90% cure rate with 3 cycles BEP. Even metastatic testicular cancer is highly curable. Poor-risk: ~50% cure rate, requires 4 cycles BEP and often post-chemo surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Post-chemotherapy residual retroperitoneal mass in seminoma:',
 'Always requires surgery', 'Can be observed if less than 3 cm or PET-negative', 'Indicates treatment failure', 'Requires radiation', 'Means incurable disease',
 'B', 'Post-chemo residual seminoma: often fibrosis/necrosis. Observe if <3 cm. PET scan 6+ weeks after chemo to assess viability. Surgery reserved for PET-positive or growing masses.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Post-chemotherapy residual retroperitoneal mass in non-seminoma:',
 'Always observed', 'Requires surgical resection (post-chemotherapy RPLND)', 'Indicates cure', 'Requires radiation', 'Should be biopsied only',
 'B', 'Post-chemo residual NSGCT: surgical resection (PC-RPLND). May contain teratoma (40%), viable GCT (10-15%), or fibrosis/necrosis (40-50%). Teratoma can grow and transform. Surgery therapeutic.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Growing teratoma syndrome refers to:',
 'Rapid metastasis', 'Enlargement of teratoma masses during or after chemotherapy despite marker normalization', 'Teratoma transformation to carcinoma', 'Small teratoma', 'Benign condition always',
 'B', 'Growing teratoma syndrome: mature teratoma enlarges during/after chemo while markers normalize. Chemoresistant. Requires surgical resection. Can cause local complications. Not responsive to more chemo.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Primary mediastinal germ cell tumor:',
 'Has excellent prognosis', 'Is associated with Klinefelter syndrome and has worse prognosis than testicular primary', 'Is always seminoma', 'Is treated with surgery alone', 'Is the same as testicular GCT',
 'B', 'Mediastinal GCT: extragonadal primary. Worse prognosis than testicular. Associated with Klinefelter syndrome and hematologic malignancies. NSGCT type has poor prognosis. Always poor-risk category.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Sperm banking should be offered:',
 'After chemotherapy', 'Before orchiectomy and chemotherapy when feasible', 'Never for testicular cancer', 'Only for bilateral tumors', 'Only after treatment completion',
 'B', 'Sperm banking: before orchiectomy and treatment. Many patients already have impaired spermatogenesis at diagnosis. Chemotherapy and RPLND can further impair fertility. Important to discuss early.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance for stage I testicular cancer requires:',
 'Annual follow-up only', 'Frequent physical exams tumor markers and imaging for several years', 'No follow-up', 'CT scans weekly', 'Only if symptoms develop',
 'B', 'Surveillance protocol: frequent visits (every 1-2 months initially), tumor markers, CT scans (more frequent initially, decreasing over 5 years). Requires compliant patient. Catches relapses early.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Salvage chemotherapy for relapsed germ cell tumors uses:',
 'Same BEP regimen', 'Different regimens such as TIP (paclitaxel ifosfamide cisplatin) or high-dose chemotherapy', 'No effective options', 'Hormonal therapy', 'Radiation only',
 'B', 'Salvage therapy: conventional-dose (TIP, VeIP) or high-dose chemotherapy with stem cell rescue. Still potentially curable. High-dose chemotherapy improves outcomes for some. Surgery for residual disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Late relapse in testicular cancer (more than 2 years after treatment):',
 'Is common', 'Is rare but often contains teratoma and may require surgical resection', 'Has excellent chemotherapy response', 'Does not occur', 'Is always fatal',
 'B', 'Late relapse: uncommon but can occur years/decades later. Often contains teratoma or teratoma with malignant transformation. Chemoresistant. Surgical resection is primary treatment.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Long-term complications of testicular cancer treatment include:',
 'None', 'Cardiovascular disease secondary malignancies and metabolic syndrome', 'Only infertility', 'Only hearing loss', 'No long-term effects',
 'B', 'Long-term effects: increased cardiovascular disease, secondary malignancies (leukemia, solid tumors), metabolic syndrome, hearing loss (cisplatin), nephrotoxicity, pulmonary fibrosis (bleomycin). Survivorship care important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Leydig cell tumors of the testis:',
 'Are germ cell tumors', 'Are sex cord stromal tumors often presenting with hormonal manifestations', 'Are always malignant', 'Require chemotherapy', 'Only occur in elderly',
 'B', 'Leydig cell tumor: sex cord stromal tumor, not germ cell. May produce androgens or estrogens. Gynecomastia, precocious puberty. Usually benign. Treatment: orchiectomy. Malignant rare.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Sertoli cell tumors:',
 'Are the most common testicular tumor', 'Are rare sex cord stromal tumors usually benign', 'Always metastasize', 'Produce AFP', 'Require chemotherapy always',
 'B', 'Sertoli cell tumor: rare sex cord stromal tumor. Usually benign. May produce estrogen (gynecomastia). Large cell calcifying variant associated with Carney complex and Peutz-Jeghers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Testicular lymphoma:',
 'Is common in young men', 'Is the most common testicular malignancy in men over 60', 'Is always primary', 'Has excellent prognosis', 'Is a germ cell tumor',
 'B', 'Testicular lymphoma: most common testicular malignancy in men >60. Usually diffuse large B-cell lymphoma. Often bilateral (10-20%). Secondary involvement more common than primary. Treat as lymphoma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Carcinoma in situ (intratubular germ cell neoplasia) of the testis:',
 'Is benign', 'Is precursor lesion with high risk of progression to invasive germ cell tumor', 'Never progresses', 'Is treated with observation only', 'Only found after orchiectomy',
 'B', 'GCNIS (germ cell neoplasia in situ): precursor to invasive GCT. 50% progress to invasive tumor within 5 years. Found in contralateral testis in 5% of GCT patients. Treatment: low-dose radiation or surveillance.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'The risk of contralateral testicular cancer after germ cell tumor is:',
 'Same as general population', 'Increased about 2-5 percent lifetime risk', '50 percent', '100 percent', 'Zero',
 'B', 'Contralateral GCT risk: 2-5% lifetime (higher than general population). Recommend monthly self-exam. GCNIS in contralateral testis increases risk further. Surveillance includes contralateral exam.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000023-0000-0000-0000-000000000023', 'a0000004-0000-0000-0000-000000000004',
 'Pediatric testicular tumors are most commonly:',
 'Seminoma', 'Yolk sac tumor', 'Choriocarcinoma', 'Embryonal carcinoma', 'Teratoma equally with yolk sac tumor',
 'E', 'Pediatric testicular tumors: yolk sac tumor (prepubertal) and teratoma most common. Teratoma in children is benign (unlike adults). Treatment may differ from adults.', 'medium', 'knowledge');
