-- Article 49: Haematuria
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000049-0000-0000-0000-000000000049'::uuid, 'introduction', 1, 'Introduction to Haematuria', 'Haematuria is the presence of blood in urine and is a common urological presentation requiring thorough evaluation. It may be visible (gross/macroscopic) or non-visible (microscopic). Any episode of visible haematuria in adults requires investigation to exclude urological malignancy, particularly bladder cancer. The source may be anywhere from the kidneys to the urethral meatus. A systematic approach to diagnosis is essential, with the priority being exclusion of malignancy in at-risk patients.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 'content', 2, 'Classification and Causes', 'CLASSIFICATION:
Visible (gross/macroscopic) haematuria - blood visible to naked eye
Non-visible (microscopic) haematuria - detected on dipstick or microscopy (greater than 3 RBC per high power field)
Symptomatic vs asymptomatic
Painful vs painless (painless more concerning for malignancy)

UROLOGICAL CAUSES (Surgical):
Bladder cancer (most common cause of visible haematuria in adults over 40)
Renal cell carcinoma
Upper tract urothelial carcinoma
Prostate cancer or BPH
Urinary stones
Urinary tract infection/cystitis
Trauma
Urethral stricture
Radiation cystitis

NEPHROLOGICAL (GLOMERULAR) CAUSES:
IgA nephropathy (commonest glomerulonephritis)
Thin basement membrane disease
Post-streptococcal glomerulonephritis
Alport syndrome
Other glomerulonephritides

OTHER CAUSES:
Anticoagulation (but still investigate for underlying cause)
Exercise-induced haematuria
Menstrual contamination
Factitious (Munchausen)
Schistosomiasis (endemic areas)

RED FLAGS: Age over 40, smoking history, painless visible haematuria, persistent non-visible haematuria.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 'content', 3, 'Clinical Assessment', 'HISTORY:
Timing - initial (urethral), terminal (bladder neck/prostate), total (bladder or upper tract)
Clots - suggests significant bleeding
Pain - renal colic (stones), dysuria (infection), painless (malignancy)
Associated symptoms - LUTS, weight loss, fever
Risk factors - smoking, occupational exposure, previous pelvic radiation
Medications - anticoagulants (but still investigate)
Family history - polycystic kidneys, Alport syndrome

THREE-GLASS TEST (rarely used now):
First glass - urethral source
Second glass - bladder source
Third glass - prostatic/bladder neck source

PHYSICAL EXAMINATION:
General - pallor, lymphadenopathy
Abdomen - renal masses, palpable bladder
DRE - prostate assessment
External genitalia - meatal lesions, urethral discharge

DISTINGUISHING FEATURES:
Glomerular haematuria: brown/cola colored, dysmorphic RBCs, RBC casts, proteinuria, no clots
Urological haematuria: bright red/pink, isomorphic RBCs, clots may be present, minimal protein'),
('d0000049-0000-0000-0000-000000000049'::uuid, 'content', 4, 'Investigation and Management', 'INITIAL INVESTIGATIONS:
Urinalysis - dipstick (blood, protein, nitrites, leukocytes), microscopy (RBC morphology, casts)
Urine culture - exclude UTI
Renal function - eGFR, creatinine
FBC - anemia assessment
Coagulation - if on anticoagulants

IMAGING:
CT urogram (CTU) - gold standard for upper tract evaluation, detects stones, tumors, other pathology
Ultrasound - first-line for non-visible haematuria in low-risk patients, assesses kidneys and bladder
Plain KUB - limited role, may show radio-opaque stones

CYSTOSCOPY:
Flexible cystoscopy - outpatient, local anesthetic, visualizes bladder mucosa
Rigid cystoscopy - under anesthesia, allows biopsy and TURBT
Indications: visible haematuria (mandatory), persistent non-visible haematuria in high-risk patients

URINE CYTOLOGY:
Detects high-grade urothelial malignancy
Low sensitivity for low-grade tumors
Useful for CIS detection and surveillance

REFERRAL CRITERIA (Two-week wait):
Age 45 or above with unexplained visible haematuria without UTI
Age 60 or above with non-visible haematuria plus dysuria or raised WCC

MANAGEMENT:
Treat underlying cause
UTI - antibiotics
Stones - appropriate stone management
Malignancy - staging and oncological treatment
Anticoagulation-related - still investigate, adjust if over-anticoagulated
Glomerular - nephrology referral'),
('d0000049-0000-0000-0000-000000000049'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Painless visible haematuria is bladder cancer until proven otherwise. Always investigate haematuria on anticoagulants - do not attribute to medication alone. CT urogram is gold standard for upper tract imaging. Flexible cystoscopy mandatory for visible haematuria. Dysmorphic RBCs and casts suggest glomerular source. Clots suggest urological rather than glomerular cause.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 'key_points', 6, 'Key Points Summary', 'Haematuria may be visible or non-visible. Bladder cancer is most common cause of visible haematuria in adults over 40. Painless haematuria more concerning for malignancy. Three investigations: urinalysis, imaging (CT urogram), cystoscopy. Glomerular blood: cola-colored, dysmorphic RBCs, casts, proteinuria. Urological blood: bright red, isomorphic RBCs, clots possible. Always investigate anticoagulated patients.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000049-0000-0000-0000-000000000049'::uuid, 1, 'Most common cause of visible haematuria in adults over 40 is:', 'Urinary tract infection', 'Bladder cancer', 'Kidney stones', 'BPH', 'Glomerulonephritis', 'B', 'Bladder cancer is the most common cause of visible haematuria in adults over 40 years old.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 2, 'Painless haematuria is most concerning for:', 'UTI', 'Kidney stones', 'Malignancy', 'Glomerulonephritis', 'Trauma', 'C', 'Painless haematuria is a red flag for urological malignancy, particularly bladder cancer.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 3, 'Non-visible haematuria is defined as:', 'Blood visible to naked eye', 'Greater than 3 RBCs per high power field on microscopy', 'Any color change in urine', 'Blood only on dipstick', 'Clots in urine', 'B', 'Non-visible (microscopic) haematuria is defined as greater than 3 RBCs per high power field on urine microscopy.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 4, 'Gold standard imaging for upper tract evaluation in haematuria is:', 'Ultrasound', 'Plain X-ray KUB', 'CT urogram', 'MRI', 'IVU', 'C', 'CT urogram (CTU) is the gold standard for evaluating the upper urinary tract in haematuria.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 5, 'Glomerular haematuria is characterized by:', 'Bright red blood with clots', 'Cola-colored urine with dysmorphic RBCs and casts', 'Initial stream bleeding only', 'Terminal haematuria', 'Painless gross haematuria', 'B', 'Glomerular bleeding produces cola/brown-colored urine with dysmorphic RBCs, RBC casts, and often proteinuria.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 6, 'Flexible cystoscopy is mandatory for:', 'All microscopic haematuria', 'Any visible haematuria in adults', 'Only patients with UTI', 'Children with haematuria', 'Patients on anticoagulants only', 'B', 'Flexible cystoscopy is mandatory for all adults with visible haematuria to exclude bladder pathology.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 7, 'Initial haematuria (blood at start of stream) suggests:', 'Bladder source', 'Kidney source', 'Urethral source', 'Ureteric source', 'Glomerular source', 'C', 'Initial haematuria suggests a urethral source of bleeding.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 8, 'Terminal haematuria suggests:', 'Urethral source', 'Bladder neck or prostatic source', 'Renal source', 'Ureteric source', 'Glomerular source', 'B', 'Terminal haematuria (at end of stream) suggests bleeding from bladder neck or prostate.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 9, 'Haematuria in a patient on anticoagulants should be:', 'Attributed to medication and observed', 'Fully investigated as in non-anticoagulated patients', 'Treated by stopping anticoagulation', 'Ignored if INR is therapeutic', 'Referred to haematology', 'B', 'Haematuria in anticoagulated patients must be fully investigated - anticoagulation may unmask underlying pathology.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 10, 'Most common glomerulonephritis causing haematuria is:', 'Post-streptococcal GN', 'IgA nephropathy', 'Membranous nephropathy', 'Minimal change disease', 'FSGS', 'B', 'IgA nephropathy (Berger disease) is the most common glomerulonephritis worldwide causing haematuria.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 11, 'Presence of blood clots in urine suggests:', 'Glomerular source', 'Urological (non-glomerular) source', 'Contamination', 'Factitious haematuria', 'Coagulation disorder', 'B', 'Blood clots suggest urological bleeding as glomerular bleeding does not produce clots (urokinase in tubules).'),
('d0000049-0000-0000-0000-000000000049'::uuid, 12, 'Urine cytology is most useful for detecting:', 'Low-grade bladder tumors', 'High-grade urothelial carcinoma and CIS', 'Kidney stones', 'UTI', 'BPH', 'B', 'Urine cytology has high sensitivity for high-grade urothelial carcinoma and CIS, but poor sensitivity for low-grade tumors.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 13, 'Risk factors for urological malignancy causing haematuria include all EXCEPT:', 'Smoking', 'Age over 40', 'Female gender', 'Occupational dye exposure', 'Previous pelvic radiation', 'C', 'Male gender is a risk factor for bladder cancer. Female gender is not a specific risk factor for urological malignancy.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 14, 'RBC casts in urine indicate:', 'Bladder source', 'Urethral source', 'Glomerular source', 'Prostatic source', 'Contamination', 'C', 'RBC casts form in renal tubules and indicate glomerular or intrarenal bleeding.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 15, 'Exercise-induced haematuria:', 'Requires urgent cystoscopy', 'Is usually benign and self-limiting', 'Always indicates pathology', 'Requires CT urogram', 'Is a sign of kidney disease', 'B', 'Exercise-induced haematuria is usually benign and resolves within 24-72 hours. Persistent cases need investigation.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 16, 'Schistosomiasis-related bladder cancer is usually:', 'Transitional cell carcinoma', 'Squamous cell carcinoma', 'Adenocarcinoma', 'Small cell carcinoma', 'Sarcoma', 'B', 'Schistosoma haematobium causes chronic bladder irritation leading to squamous cell carcinoma.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 17, 'First-line imaging for low-risk non-visible haematuria is:', 'CT urogram', 'MRI', 'Ultrasound', 'Plain KUB', 'IVU', 'C', 'Ultrasound is appropriate first-line imaging for low-risk patients with non-visible haematuria.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 18, 'Dysmorphic RBCs on urine microscopy suggest:', 'Bladder source', 'Urethral source', 'Glomerular source', 'Stone disease', 'Infection', 'C', 'Dysmorphic (irregular, fragmented) RBCs indicate passage through glomerular basement membrane.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 19, 'Two-week wait referral for haematuria applies to:', 'All patients with haematuria', 'Age 45 plus with unexplained visible haematuria', 'Only patients with clots', 'Microscopic haematuria only', 'Patients under 30', 'B', 'Two-week wait (urgent cancer referral) for patients 45 or older with unexplained visible haematuria without UTI.'),
('d0000049-0000-0000-0000-000000000049'::uuid, 20, 'Total haematuria (throughout stream) suggests source from:', 'Urethra', 'Prostate', 'Bladder or above (upper tract)', 'Bladder neck only', 'External genitalia', 'C', 'Total haematuria (blood throughout stream) suggests the source is from the bladder or upper urinary tract.');
