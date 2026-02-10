-- Article 47: LUTS and IPSS Scoring
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000047-0000-0000-0000-000000000047'::uuid, 'introduction', 1, 'Introduction to LUTS', 'Lower urinary tract symptoms (LUTS) encompass a broad range of symptoms related to bladder storage and emptying dysfunction. LUTS affects both men and women and has significant impact on quality of life. In men, LUTS is commonly associated with BPH, but many other conditions can cause similar symptoms. The International Prostate Symptom Score (IPSS) is a validated questionnaire used to assess severity and guide management decisions. Understanding LUTS classification and assessment is fundamental to urological practice.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 'content', 2, 'Classification of LUTS', 'LUTS are categorized into three groups based on the phase of the micturition cycle affected:

STORAGE SYMPTOMS (formerly irritative): Daytime frequency (voiding more than 8 times during waking hours), nocturia (waking to void one or more times at night), urgency (sudden compelling desire to void), urge incontinence (involuntary leakage with urgency), stress incontinence, mixed incontinence.

VOIDING SYMPTOMS (formerly obstructive): Slow/weak stream, splitting or spraying, intermittent stream (stopping and starting), hesitancy (difficulty initiating), straining to void, terminal dribbling.

POST-MICTURITION SYMPTOMS: Post-void dribbling, sensation of incomplete emptying.

ETIOLOGY IN MEN: BPH (most common), prostate cancer, urethral stricture, bladder neck obstruction, detrusor underactivity, neurogenic bladder.

ETIOLOGY IN WOMEN: Overactive bladder (OAB), stress incontinence (urethral hypermobility, intrinsic sphincter deficiency), mixed incontinence, pelvic organ prolapse, urethral diverticulum.

NEUROGENIC CAUSES: Spinal cord injury, multiple sclerosis, Parkinson disease, stroke, diabetic neuropathy.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 'content', 3, 'IPSS - International Prostate Symptom Score', 'IPSS QUESTIONNAIRE: Seven symptom questions scored 0-5 (total 0-35) plus one quality of life question.

THE SEVEN QUESTIONS assess over the past month:
1. Incomplete emptying - sensation of not emptying bladder completely
2. Frequency - voiding again less than 2 hours after finishing
3. Intermittency - stopping and starting several times during urination
4. Urgency - difficulty postponing urination
5. Weak stream - weak urinary stream
6. Straining - pushing or straining to begin urination
7. Nocturia - number of times waking to urinate at night (scored 0 to 5 for 0 to 5+ times)

SCORING: Each question scored 0 (not at all) to 5 (almost always). Question 7 scored 0-5 based on number of times.

INTERPRETATION: Mild symptoms (0-7), moderate symptoms (8-19), severe symptoms (20-35).

QUALITY OF LIFE QUESTION: How would you feel if you had to live with current urinary condition for rest of your life? Scored 0 (delighted) to 6 (terrible).

CLINICAL USE: Baseline assessment, monitoring treatment response, guiding management decisions. Mild symptoms - watchful waiting. Moderate - medical therapy. Severe - consider surgical options.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 'content', 4, 'Assessment and Investigation', 'HISTORY: Detailed symptom assessment using IPSS, duration, impact on QoL, fluid intake patterns, medication review (diuretics, antihistamines, decongestants), comorbidities, sexual function.

PHYSICAL EXAMINATION: Abdominal examination (palpable bladder), digital rectal examination (prostate size, consistency, nodules), external genitalia, focused neurological examination.

BASIC INVESTIGATIONS: Urinalysis (infection, hematuria), renal function (if retention suspected), PSA (after counseling), frequency-volume chart (bladder diary 3 days).

SPECIALIZED TESTS: Uroflowmetry - measures flow rate (Qmax normal greater than 15 ml/s), flow pattern (bell-shaped normal, plateau suggests obstruction). Post-void residual (PVR) - ultrasound or catheter (greater than 100-200 ml significant). Urodynamics - pressure-flow studies for complex cases. Cystoscopy - if hematuria, stricture suspected, or before surgery.

FREQUENCY-VOLUME CHART: Records time and volume of each void and fluid intake. Identifies: polyuria (greater than 3L/day), nocturnal polyuria (greater than 33% of 24h output at night), small functional capacity.

IMAGING: Ultrasound (kidneys, bladder, prostate volume). CT urogram if hematuria. MRI for prostate characterization.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'IPSS assesses symptoms only, not diagnosis. Same symptoms can arise from different causes. Storage symptoms more bothersome to patients than voiding symptoms. Nocturia has many causes including nocturnal polyuria, not just prostate. Frequency-volume chart provides objective data. Uroflowmetry Qmax less than 15 ml/s suggests obstruction.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 'key_points', 6, 'Key Points Summary', 'LUTS: storage, voiding, and post-micturition symptoms. IPSS has 7 questions scored 0-35. Mild (0-7), moderate (8-19), severe (20-35). QoL question is separate (0-6). LUTS affects both sexes from various causes. Assessment: history, DRE, urinalysis, PSA, uroflowmetry, PVR. Frequency-volume chart useful for nocturia evaluation.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000047-0000-0000-0000-000000000047'::uuid, 1, 'LUTS stands for:', 'Lower urethral tract syndrome', 'Lower urinary tract symptoms', 'Lumbar urological testing system', 'Lateral urinary tract stricture', 'Lower ureteral tract syndrome', 'B', 'LUTS - Lower Urinary Tract Symptoms - encompasses storage, voiding, and post-micturition symptoms.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 2, 'Storage symptoms include all EXCEPT:', 'Frequency', 'Urgency', 'Nocturia', 'Hesitancy', 'Urge incontinence', 'D', 'Hesitancy is a voiding symptom. Storage symptoms include frequency, urgency, nocturia, incontinence.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 3, 'Voiding symptoms include all EXCEPT:', 'Weak stream', 'Straining', 'Intermittency', 'Urgency', 'Terminal dribbling', 'D', 'Urgency is a storage symptom. Voiding symptoms include weak stream, straining, intermittency, hesitancy.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 4, 'IPSS has how many symptom questions?', '5', '6', '7', '8', '10', 'C', 'IPSS has 7 symptom questions (each scored 0-5) plus one quality of life question.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 5, 'Maximum IPSS symptom score is:', '21', '28', '35', '42', '50', 'C', 'Maximum IPSS symptom score is 35 (7 questions x 5 points each).'),
('d2000047-0000-0000-0000-000000000047'::uuid, 6, 'Moderate LUTS on IPSS is defined as:', '0-7', '8-19', '20-35', '15-25', '10-20', 'B', 'IPSS interpretation: mild (0-7), moderate (8-19), severe (20-35).'),
('d2000047-0000-0000-0000-000000000047'::uuid, 7, 'The quality of life question in IPSS is scored:', '0-5', '0-6', '0-7', '0-10', '1-5', 'B', 'QoL question: How would you feel living with current symptoms? Scored 0 (delighted) to 6 (terrible).'),
('d2000047-0000-0000-0000-000000000047'::uuid, 8, 'Normal Qmax on uroflowmetry is:', 'Less than 5 ml/s', 'Less than 10 ml/s', 'Greater than 15 ml/s', 'Greater than 5 ml/s only', 'Any value', 'C', 'Normal Qmax is greater than 15 ml/s. Less than 15 ml/s suggests bladder outlet obstruction.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 9, 'Post-void residual volume considered significant is:', 'Greater than 50 ml', 'Greater than 100-200 ml', 'Greater than 500 ml only', 'Any amount', 'Greater than 20 ml', 'B', 'PVR greater than 100-200 ml is generally considered significant and may indicate retention.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 10, 'Nocturnal polyuria is defined as:', 'Any nocturia', 'Greater than 33% of 24-hour urine output at night', 'Greater than 50% output at night', 'Greater than 500 ml at night', 'Waking more than twice', 'B', 'Nocturnal polyuria is defined as greater than one-third (33%) of 24-hour urine output occurring at night.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 11, 'Frequency-volume chart helps assess:', 'Prostate size', 'Fluid intake and voiding patterns', 'PSA level', 'Kidney function', 'Bladder compliance', 'B', 'Frequency-volume chart (bladder diary) records void times, volumes, and fluid intake over 3 days.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 12, 'Overactive bladder (OAB) primarily causes:', 'Voiding symptoms', 'Storage symptoms', 'Post-micturition symptoms', 'Obstructive symptoms only', 'No symptoms', 'B', 'OAB is characterized by storage symptoms: urgency (with or without incontinence), frequency, and nocturia.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 13, 'Which IPSS question specifically asks about nocturia?', 'Question 1', 'Question 4', 'Question 5', 'Question 7', 'Quality of life question', 'D', 'Question 7 asks about nocturia: how many times do you typically get up at night to urinate?'),
('d2000047-0000-0000-0000-000000000047'::uuid, 14, 'Plateau pattern on uroflowmetry suggests:', 'Normal voiding', 'Urethral stricture or obstruction', 'Overactive bladder', 'Large prostate only', 'Detrusor overactivity', 'B', 'Plateau (flat) pattern on uroflowmetry is characteristic of urethral stricture or fixed obstruction.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 15, 'Bell-shaped curve on uroflowmetry indicates:', 'Obstruction', 'Normal voiding pattern', 'Stricture', 'Detrusor failure', 'Bladder stones', 'B', 'A bell-shaped curve is the normal uroflowmetry pattern indicating unobstructed voiding.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 16, 'Urodynamic studies are indicated for:', 'All LUTS patients', 'Complex cases and pre-surgical evaluation', 'Mild symptoms only', 'Young patients only', 'Never needed', 'B', 'Urodynamics are reserved for complex cases, neurogenic bladder, previous failed surgery, or when diagnosis is unclear.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 17, 'Medications that may worsen LUTS include:', 'Alpha-blockers', 'Antihistamines and decongestants', 'Tamsulosin', 'Finasteride', 'Tadalafil', 'B', 'Antihistamines (anticholinergic) and decongestants (alpha-agonists) can worsen LUTS.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 18, 'Post-micturition symptoms include:', 'Frequency', 'Urgency', 'Post-void dribbling and incomplete emptying sensation', 'Hesitancy', 'Nocturia', 'C', 'Post-micturition symptoms are post-void dribbling and sensation of incomplete emptying.'),
('d2000047-0000-0000-0000-000000000047'::uuid, 19, 'Polyuria is defined as 24-hour urine output greater than:', '1 liter', '2 liters', '3 liters', '4 liters', '5 liters', 'C', 'Polyuria is defined as 24-hour urine output greater than 3 liters (3000 ml).'),
('d2000047-0000-0000-0000-000000000047'::uuid, 20, 'IPSS is validated for:', 'Women only', 'Men only', 'Both men and women', 'Children only', 'Post-surgical patients only', 'C', 'Although originally for prostate symptoms, IPSS is validated and used for LUTS assessment in both sexes.');
