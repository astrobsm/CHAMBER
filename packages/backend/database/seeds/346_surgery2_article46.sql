-- Article 46: Benign Prostatic Hyperplasia (BPH)
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000046-0000-0000-0000-000000000046'::uuid, 'introduction', 1, 'Introduction to BPH', 'Benign prostatic hyperplasia (BPH) is histological diagnosis of prostatic enlargement affecting the transition zone. It is extremely common, present in 50% of men by age 50 and 90% by age 80. While histological BPH is ubiquitous, only about 50% develop clinical symptoms (LUTS - lower urinary tract symptoms). BPH can cause bladder outlet obstruction leading to significant morbidity including acute urinary retention, recurrent UTI, bladder stones, and renal impairment. Treatment ranges from watchful waiting to medical therapy and surgical intervention.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 'content', 2, 'Pathophysiology and Clinical Features', 'PATHOPHYSIOLOGY: Hyperplasia of stromal and glandular tissue in transition zone. Requires androgens (testosterone and DHT) and aging. Two components: static (gland size) and dynamic (smooth muscle tone). Alpha-adrenergic receptors in stroma cause smooth muscle contraction.

CLINICAL FEATURES: LUTS - lower urinary tract symptoms. Storage (irritative) symptoms: frequency, urgency, nocturia, urge incontinence. Voiding (obstructive) symptoms: hesitancy, weak stream, intermittency, straining, incomplete emptying, terminal dribbling. Post-micturition symptoms: post-void dribbling.

COMPLICATIONS: Acute urinary retention (AUR), chronic urinary retention with overflow incontinence, recurrent UTI, bladder diverticula, bladder stones, hydronephrosis, renal impairment (obstructive uropathy).

DIFFERENTIAL DIAGNOSIS: Prostate cancer, urethral stricture, bladder neck obstruction, neurogenic bladder, overactive bladder, nocturnal polyuria.

ASSESSMENT: DRE (smooth, firm, enlarged), urinalysis, PSA (may be mildly elevated in BPH), renal function, post-void residual (PVR), uroflowmetry (Qmax less than 15 ml/s suggests obstruction), IPSS scoring.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 'content', 3, 'Medical Management', 'WATCHFUL WAITING: For mild symptoms (IPSS less than 8) with minimal bother. Lifestyle modifications: reduce caffeine/alcohol, bladder training, timed voiding.

ALPHA-BLOCKERS: First-line therapy. Block alpha-1 adrenergic receptors in prostate smooth muscle. Rapid onset (days to weeks). Examples: tamsulosin, alfuzosin, silodosin, terazosin, doxazosin. Non-selective agents (terazosin, doxazosin) cause more hypotension. Selective agents (tamsulosin) - less hypotension but may cause ejaculatory dysfunction, intraoperative floppy iris syndrome (IFIS).

5-ALPHA REDUCTASE INHIBITORS (5ARIs): Block conversion of testosterone to DHT. Reduce prostate size by 20-30%. Take 3-6 months for effect. Reduce AUR and need for surgery. Examples: finasteride, dutasteride. Side effects: sexual dysfunction, reduced PSA (must double PSA for cancer screening), rare: gynecomastia.

COMBINATION THERAPY: Alpha-blocker plus 5ARI more effective than either alone for larger prostates (greater than 40g).

PHOSPHODIESTERASE-5 INHIBITORS: Tadalafil approved for BPH/LUTS. Especially useful with concurrent erectile dysfunction.

ANTIMUSCARINICS: For storage symptoms, but caution in high PVR. May worsen retention.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 'content', 4, 'Surgical Management', 'INDICATIONS: Refractory to medical therapy, recurrent urinary retention, recurrent UTI, bladder stones, renal impairment, patient preference.

TURP (Transurethral Resection of Prostate): Gold standard surgical treatment. Removes transition zone tissue endoscopically. Complications: bleeding, TUR syndrome (hyponatremia from glycine absorption - rare with bipolar), retrograde ejaculation (70-90%), erectile dysfunction (5-10%), urethral stricture, bladder neck contracture.

LASER PROCEDURES: HoLEP (Holmium laser enucleation) - excellent for large prostates, steep learning curve. GreenLight (PVP) - vaporization, less bleeding, suitable for anticoagulated patients. Thulium laser.

MINIMALLY INVASIVE: UroLift (prostatic urethral lift) - preserves ejaculatory function. Rezum (water vapor therapy) - thermal ablation. TUMT (transurethral microwave thermotherapy). TUNA (transurethral needle ablation).

OPEN/ROBOTIC SIMPLE PROSTATECTOMY: For very large prostates (greater than 80-100g). Removes adenoma, preserves capsule (unlike radical prostatectomy). Robotic approach increasingly used.

PROSTATIC ARTERY EMBOLIZATION (PAE): Interventional radiology procedure. Reduces blood flow to prostate.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'BPH affects transition zone; cancer affects peripheral zone. Alpha-blockers work quickly; 5ARIs take months. Tamsulosin can cause IFIS during cataract surgery. Always double PSA value if patient on 5ARI. TURP is gold standard but causes retrograde ejaculation. UroLift and Rezum preserve ejaculatory function.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 'key_points', 6, 'Key Points Summary', 'BPH arises in transition zone, present in 50% by age 50. LUTS: storage and voiding symptoms. Alpha-blockers first-line, rapid onset. 5ARIs reduce size but take months, reduce PSA by 50%. TURP is gold standard surgery. Complications: TUR syndrome (rare with bipolar), retrograde ejaculation. Newer techniques (UroLift, Rezum) preserve ejaculation.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000046-0000-0000-0000-000000000046'::uuid, 1, 'BPH arises from which zone of the prostate?', 'Peripheral zone', 'Transition zone', 'Central zone', 'Anterior fibromuscular zone', 'All zones equally', 'B', 'BPH arises from the transition zone surrounding the urethra, unlike prostate cancer which mainly affects the peripheral zone.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 2, 'First-line medical therapy for BPH is:', '5-alpha reductase inhibitors', 'Alpha-blockers', 'Antimuscarinics', 'Antibiotics', 'Phosphodiesterase inhibitors', 'B', 'Alpha-blockers (tamsulosin, alfuzosin) are first-line therapy with rapid onset of action.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 3, 'Alpha-blockers work by:', 'Reducing prostate size', 'Relaxing prostatic smooth muscle', 'Blocking androgens', 'Increasing bladder contractility', 'Reducing urine production', 'B', 'Alpha-blockers relax smooth muscle in the prostate and bladder neck by blocking alpha-1 adrenergic receptors.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 4, '5-alpha reductase inhibitors take how long to show effect?', 'Days', 'Weeks', '3-6 months', '1 year', 'Immediate', 'C', '5ARIs (finasteride, dutasteride) take 3-6 months to show maximal effect as they reduce prostate size.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 5, 'Effect of 5-alpha reductase inhibitors on PSA is:', 'No change', 'Increase by 50%', 'Decrease by approximately 50%', 'Variable', 'Complete suppression', 'C', '5ARIs reduce PSA by approximately 50%. The PSA value must be doubled for cancer screening purposes.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 6, 'TURP syndrome is caused by:', 'Infection', 'Bleeding', 'Absorption of hypotonic irrigation fluid causing hyponatremia', 'Urethral stricture', 'Retrograde ejaculation', 'C', 'TUR syndrome results from absorption of hypotonic glycine irrigation causing dilutional hyponatremia. Rare with bipolar TURP (saline irrigation).'),
('d2000046-0000-0000-0000-000000000046'::uuid, 7, 'Most common complication after TURP is:', 'Erectile dysfunction', 'Retrograde ejaculation', 'Urethral stricture', 'TUR syndrome', 'Incontinence', 'B', 'Retrograde ejaculation occurs in 70-90% of patients after TURP due to damage to the bladder neck.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 8, 'IPSS is used to assess:', 'Prostate size', 'Severity of lower urinary tract symptoms', 'Cancer risk', 'PSA level', 'Bladder function', 'B', 'IPSS (International Prostate Symptom Score) is a 7-question validated tool to assess LUTS severity.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 9, 'Intraoperative Floppy Iris Syndrome (IFIS) is associated with:', 'Finasteride', 'Tamsulosin', 'Terazosin', 'Dutasteride', 'Tadalafil', 'B', 'IFIS during cataract surgery is associated with tamsulosin (and other alpha-blockers, especially alpha-1A selective).'),
('d2000046-0000-0000-0000-000000000046'::uuid, 10, 'Voiding (obstructive) symptoms include all EXCEPT:', 'Hesitancy', 'Weak stream', 'Urgency', 'Straining', 'Intermittency', 'C', 'Urgency is a storage (irritative) symptom. Voiding symptoms include hesitancy, weak stream, straining, intermittency.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 11, 'Storage symptoms include all EXCEPT:', 'Frequency', 'Nocturia', 'Urgency', 'Poor stream', 'Urge incontinence', 'D', 'Poor stream is a voiding (obstructive) symptom. Storage symptoms include frequency, urgency, nocturia.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 12, 'On uroflowmetry, Qmax suggesting obstruction is:', 'Greater than 25 ml/s', 'Greater than 20 ml/s', 'Less than 15 ml/s', 'Less than 25 ml/s', 'Any value', 'C', 'Qmax (maximum flow rate) less than 15 ml/s suggests bladder outlet obstruction.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 13, 'Indications for BPH surgery include all EXCEPT:', 'Mild symptoms well controlled on medication', 'Recurrent urinary retention', 'Bladder stones', 'Recurrent UTI', 'Renal impairment due to obstruction', 'A', 'Surgery is indicated for refractory symptoms, retention, stones, recurrent UTI, renal impairment. Well-controlled symptoms do not require surgery.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 14, 'HoLEP stands for:', 'High-output laser endoscopic prostatectomy', 'Holmium laser enucleation of prostate', 'Hot laser excision of prostate', 'Harmonic laser evacuation procedure', 'None of the above', 'B', 'HoLEP - Holmium Laser Enucleation of Prostate - excellent for large prostates with durable results.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 15, 'Simple prostatectomy differs from radical prostatectomy in that:', 'It removes the capsule', 'It removes only the adenoma, preserving the capsule', 'It is done for cancer', 'It includes lymph node dissection', 'It removes seminal vesicles', 'B', 'Simple prostatectomy for BPH removes the adenoma but preserves the prostatic capsule, unlike radical prostatectomy for cancer.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 16, 'Procedure that preserves ejaculatory function is:', 'TURP', 'HoLEP', 'UroLift', 'Simple prostatectomy', 'TUMT', 'C', 'UroLift (prostatic urethral lift) preserves ejaculatory function as it does not remove or ablate tissue.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 17, 'Rezum treatment uses:', 'Laser energy', 'Radiofrequency', 'Water vapor thermal therapy', 'Cryotherapy', 'Microwave', 'C', 'Rezum uses convective water vapor (steam) to ablate prostatic tissue.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 18, 'Which medication is suitable for BPH with concurrent erectile dysfunction?', 'Tamsulosin', 'Finasteride', 'Tadalafil', 'Oxybutynin', 'Doxazosin', 'C', 'Tadalafil (PDE5 inhibitor) is approved for BPH/LUTS and is especially useful when ED is also present.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 19, 'Complication of untreated severe BPH includes:', 'Prostate cancer', 'Hydronephrosis and renal impairment', 'Testicular atrophy', 'Penile shortening', 'Gynecomastia', 'B', 'Untreated BOO from BPH can cause bladder dysfunction, hydronephrosis, and obstructive uropathy with renal impairment.'),
('d2000046-0000-0000-0000-000000000046'::uuid, 20, 'Bipolar TURP advantage over monopolar is:', 'Faster procedure', 'Reduced TUR syndrome risk', 'Better hemostasis', 'Smaller prostate treatment', 'Cheaper equipment', 'B', 'Bipolar TURP uses saline irrigation instead of glycine, virtually eliminating TUR syndrome risk.');
