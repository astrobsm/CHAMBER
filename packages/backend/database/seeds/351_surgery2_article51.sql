-- Article 51: Male Infertility
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000051-0000-0000-0000-000000000051'::uuid, 'introduction', 1, 'Introduction to Male Infertility', 'Infertility is defined as failure to conceive after 12 months of regular unprotected intercourse. Male factors contribute to approximately 50% of infertility cases. Evaluation of the male partner is essential in any infertile couple. Causes include pretesticular (hormonal), testicular (primary), and post-testicular (obstructive or ejaculatory dysfunction). Semen analysis is the cornerstone of evaluation. Treatment depends on the underlying cause and may range from medical therapy to surgical intervention or assisted reproductive techniques.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 'content', 2, 'Causes and Classification', 'PRETESTICULAR CAUSES (Hypogonadotropic hypogonadism):
Hypothalamic - Kallmann syndrome (anosmia), idiopathic
Pituitary - tumors, hyperprolactinemia, hemochromatosis
Systemic - chronic illness, obesity, drugs (steroids, opioids)

TESTICULAR CAUSES (Primary testicular failure):
Genetic - Klinefelter syndrome (47,XXY), Y chromosome microdeletions
Developmental - cryptorchidism, testicular dysgenesis
Acquired - mumps orchitis, trauma, torsion, radiation, chemotherapy
Varicocele - most common correctable cause
Idiopathic - majority of cases

POST-TESTICULAR CAUSES:
Obstructive azoospermia - congenital bilateral absence of vas deferens (CBAVD, associated with CF mutations), post-vasectomy, epididymal obstruction, ejaculatory duct obstruction
Ejaculatory dysfunction - retrograde ejaculation, anejaculation
Sperm dysfunction - antisperm antibodies, immotile cilia syndrome

VARICOCELE:
Abnormal dilation of pampiniform plexus
Left-sided in 90% (left testicular vein drains into left renal vein at 90 degrees)
Causes increased scrotal temperature affecting spermatogenesis
Bag of worms on palpation, increases with Valsalva
Present in 15% of men but 40% of infertile men'),
('d0000051-0000-0000-0000-000000000051'::uuid, 'content', 3, 'Evaluation', 'HISTORY:
Duration of infertility, previous pregnancies (with current or other partners)
Sexual history - frequency, timing, erectile function, ejaculation
Medical history - cryptorchidism, mumps, STIs, diabetes, CF
Surgical history - hernia repair, testicular surgery
Medications - steroids, chemotherapy, alpha-blockers
Lifestyle - smoking, alcohol, recreational drugs, occupation (heat exposure)

PHYSICAL EXAMINATION:
General - body habitus, gynecomastia, secondary sexual characteristics
Genitalia - penile abnormalities (hypospadias), testicular size and consistency, epididymis, vas deferens (absent in CBAVD)
Varicocele - examine standing, Valsalva maneuver

SEMEN ANALYSIS (WHO 2021 criteria):
Volume: greater than 1.4 mL
Concentration: greater than 16 million/mL
Total count: greater than 39 million per ejaculate
Motility: greater than 42% total, greater than 30% progressive
Morphology: greater than 4% normal forms
Two samples 2-4 weeks apart after 2-7 days abstinence

TERMINOLOGY:
Azoospermia - no sperm in ejaculate
Oligozoospermia - low concentration
Asthenozoospermia - reduced motility
Teratozoospermia - abnormal morphology
Oligoasthenoteratozoospermia (OAT) - combined

HORMONAL EVALUATION:
FSH - elevated in testicular failure, low in hypogonadotropic
LH, Testosterone
Prolactin if hypogonadism suspected

GENETIC TESTING:
Karyotype - Klinefelter syndrome
Y chromosome microdeletion - if severe oligospermia or azoospermia
CFTR testing - if CBAVD'),
('d0000051-0000-0000-0000-000000000051'::uuid, 'content', 4, 'Management', 'LIFESTYLE MODIFICATIONS:
Smoking cessation, reduce alcohol, weight loss, avoid heat exposure, optimize coital timing

MEDICAL TREATMENT:
Hypogonadotropic hypogonadism - hCG and FSH injections (NOT testosterone - suppresses spermatogenesis)
Hyperprolactinemia - dopamine agonists (cabergoline)
Antioxidants - limited evidence

SURGICAL TREATMENT:
Varicocele repair - microsurgical subinguinal ligation, improves semen parameters in 60-70%
Vasectomy reversal - vasovasostomy or vasoepididymostomy
TURED - transurethral resection of ejaculatory ducts for obstruction
Sperm retrieval - TESE, micro-TESE, MESA, PESA for obstructive and non-obstructive azoospermia

ASSISTED REPRODUCTION:
IUI (Intrauterine Insemination) - mild male factor
IVF (In Vitro Fertilization) - moderate male factor
ICSI (Intracytoplasmic Sperm Injection) - severe oligospermia, surgically retrieved sperm

OBSTRUCTIVE VS NON-OBSTRUCTIVE AZOOSPERMIA:
Obstructive: normal FSH, normal testicular volume, sperm retrieval successful
Non-obstructive: elevated FSH, small testes, micro-TESE may find sperm in 50%'),
('d0000051-0000-0000-0000-000000000051'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Always evaluate the male partner in infertile couple. Varicocele is most common correctable cause. Left-sided varicocele: left testicular vein drains into renal vein at 90 degrees. CBAVD associated with CFTR mutations (CF carrier). Testosterone therapy suppresses spermatogenesis - use hCG/FSH for hypogonadotropic hypogonadism. Two semen analyses required.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 'key_points', 6, 'Key Points Summary', 'Male factors in 50% of infertility. Causes: pretesticular, testicular, post-testicular. Varicocele: most common correctable cause, left-sided, bag of worms. Semen analysis: WHO criteria, two samples. Azoospermia: obstructive (normal FSH) vs non-obstructive (high FSH). Treatment: lifestyle, medical (hCG/FSH), surgical, ART (IUI, IVF, ICSI).');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000051-0000-0000-0000-000000000051'::uuid, 1, 'Most common correctable cause of male infertility is:', 'Cryptorchidism', 'Varicocele', 'Hypogonadism', 'Ejaculatory duct obstruction', 'Antisperm antibodies', 'B', 'Varicocele is the most common correctable cause of male infertility, present in 40% of infertile men.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 2, 'Varicocele is more common on the left side because:', 'Left testis is larger', 'Left testicular vein drains into left renal vein at 90 degrees', 'Left testis is lower', 'Anatomical variation', 'Unknown reason', 'B', 'Left testicular vein drains into the left renal vein at 90 degrees, creating higher pressure than right side (drains into IVC directly).'),
('d0000051-0000-0000-0000-000000000051'::uuid, 3, 'CBAVD (congenital bilateral absence of vas deferens) is associated with:', 'Klinefelter syndrome', 'CFTR gene mutations (cystic fibrosis)', 'Y chromosome microdeletion', 'Turner syndrome', 'Kallmann syndrome', 'B', 'CBAVD is associated with CFTR mutations. Patients and partners should be tested for CF carrier status.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 4, 'Kallmann syndrome is characterized by:', 'Primary testicular failure', 'Hypogonadotropic hypogonadism with anosmia', 'Karyotype 47,XXY', 'Obstructive azoospermia', 'Retrograde ejaculation', 'B', 'Kallmann syndrome is hypogonadotropic hypogonadism (low LH/FSH) with anosmia due to failed GnRH neuron migration.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 5, 'Klinefelter syndrome karyotype is:', '45,XO', '47,XXY', '47,XYY', '46,XX male', '46,XY', 'B', 'Klinefelter syndrome has 47,XXY karyotype with small firm testes, gynecomastia, and azoospermia.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 6, 'Azoospermia is defined as:', 'Low sperm count', 'Absence of sperm in ejaculate', 'Poor motility', 'Abnormal morphology', 'Low volume', 'B', 'Azoospermia is the complete absence of sperm in the ejaculate after centrifugation.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 7, 'In obstructive azoospermia, FSH level is:', 'Elevated', 'Normal', 'Low', 'Variable', 'Unmeasurable', 'B', 'In obstructive azoospermia, FSH is normal because testicular function is preserved. Elevated FSH suggests testicular failure.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 8, 'Treatment for hypogonadotropic hypogonadism to restore fertility is:', 'Testosterone injections', 'hCG and FSH injections', 'Clomiphene alone', 'Estrogen therapy', 'Varicocele repair', 'B', 'hCG (mimics LH) and FSH injections stimulate spermatogenesis. Testosterone suppresses gonadotropins and spermatogenesis.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 9, 'Why should testosterone NOT be used for male infertility?', 'It is expensive', 'It suppresses spermatogenesis', 'It causes liver damage', 'It reduces libido', 'It causes gynecomastia only', 'B', 'Exogenous testosterone suppresses pituitary gonadotropins (LH, FSH) leading to reduced spermatogenesis.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 10, 'WHO 2021 normal sperm concentration is greater than:', '5 million/mL', '10 million/mL', '16 million/mL', '20 million/mL', '40 million/mL', 'C', 'WHO 2021 lower reference limit for sperm concentration is greater than 16 million/mL.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 11, 'How many semen analyses are recommended for diagnosis?', 'One sample', 'Two samples 2-4 weeks apart', 'Three samples', 'Weekly samples for a month', 'One sample is sufficient', 'B', 'Two semen samples at least 2-4 weeks apart are recommended due to natural variability.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 12, 'ICSI is used for:', 'Female factor infertility only', 'Severe male factor infertility', 'Unexplained infertility only', 'Tubal disease', 'Endometriosis only', 'B', 'ICSI (Intracytoplasmic Sperm Injection) is used for severe oligospermia, surgically retrieved sperm, and failed IVF.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 13, 'Varicocele on examination feels like:', 'Solid mass', 'Bag of worms that increases with Valsalva', 'Cystic swelling', 'Tender nodule', 'Normal finding', 'B', 'Varicocele classically feels like a bag of worms (dilated pampiniform plexus) that increases with Valsalva.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 14, 'Micro-TESE is used for:', 'Obstructive azoospermia only', 'Non-obstructive azoospermia', 'Varicocele repair', 'Vasectomy reversal', 'Ejaculatory duct obstruction', 'B', 'Micro-TESE (microsurgical testicular sperm extraction) is used for non-obstructive azoospermia to find focal areas of spermatogenesis.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 15, 'Y chromosome microdeletion testing is indicated for:', 'All infertile men', 'Severe oligospermia or azoospermia', 'Varicocele only', 'Premature ejaculation', 'Erectile dysfunction', 'B', 'Y chromosome microdeletion testing is indicated for men with severe oligospermia (less than 5 million/mL) or non-obstructive azoospermia.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 16, 'Retrograde ejaculation is diagnosed by:', 'Semen analysis', 'Post-ejaculatory urine showing sperm', 'Ultrasound', 'Blood tests', 'Physical examination', 'B', 'Retrograde ejaculation is diagnosed by finding sperm in post-ejaculatory urine sample.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 17, 'Abstinence period before semen analysis should be:', 'Less than 24 hours', '2-7 days', '2 weeks', '1 month', 'No abstinence needed', 'B', 'Recommended abstinence period is 2-7 days for optimal semen analysis results.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 18, 'Elevated FSH with small testes suggests:', 'Obstructive azoospermia', 'Primary testicular failure', 'Hypogonadotropic hypogonadism', 'Ejaculatory duct obstruction', 'Varicocele', 'B', 'Elevated FSH with small testes indicates primary testicular failure (non-obstructive cause).'),
('d0000051-0000-0000-0000-000000000051'::uuid, 19, 'Varicocele repair improves semen parameters in approximately:', '20-30%', '40-50%', '60-70%', '90-100%', '10%', 'C', 'Varicocele repair (microsurgical ligation) improves semen parameters in 60-70% of men.'),
('d0000051-0000-0000-0000-000000000051'::uuid, 20, 'Hyperprolactinemia causing infertility is treated with:', 'Testosterone', 'Dopamine agonists (cabergoline)', 'GnRH agonists', 'Clomiphene', 'Surgery only', 'B', 'Dopamine agonists (cabergoline, bromocriptine) lower prolactin and restore gonadotropin secretion.');
