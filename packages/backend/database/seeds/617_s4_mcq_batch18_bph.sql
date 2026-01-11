-- Surgery 4 MCQ Question Bank - Batch 18
-- Section D: Urology - Benign Prostatic Hyperplasia
-- 40 Questions

-- Topic: Benign Prostatic Hyperplasia
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000018-0000-0000-0000-000000000018', 'Benign Prostatic Hyperplasia', 'a0000004-0000-0000-0000-000000000004', 'BPH pathophysiology, evaluation, and management options', 18, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'The zone of the prostate most commonly affected by BPH is:',
 'Peripheral zone', 'Transition zone', 'Central zone', 'Anterior fibromuscular stroma', 'All zones equally',
 'B', 'Transition zone: surrounds prostatic urethra, site of BPH development. Peripheral zone: 70% of glandular tissue, site of most prostate cancers. Central zone: surrounds ejaculatory ducts.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'The prevalence of BPH at age 80 is approximately:',
 '10 percent', '30 percent', '50 percent', '80-90 percent', '100 percent',
 'D', 'BPH prevalence increases with age: 50% at age 50, 70% at 60, 80-90% at age 80. However, not all have significant symptoms (LUTS affects about 50% of those with histological BPH).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Lower urinary tract symptoms (LUTS) in BPH are classified as:',
 'Acute and chronic', 'Storage and voiding (obstructive) symptoms', 'Painful and painless', 'Upper and lower', 'Simple and complicated',
 'B', 'LUTS: Storage/irritative (frequency, urgency, nocturia), Voiding/obstructive (hesitancy, weak stream, intermittency, straining, incomplete emptying), Post-micturition (dribbling).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Voiding (obstructive) symptoms of BPH include all EXCEPT:',
 'Hesitancy', 'Weak stream', 'Urgency', 'Incomplete emptying', 'Straining',
 'C', 'Voiding symptoms: hesitancy, poor stream, intermittency, straining, incomplete emptying. Urgency is a storage symptom (along with frequency and nocturia).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'The IPSS (International Prostate Symptom Score) is used to:',
 'Diagnose prostate cancer', 'Quantify severity of LUTS and monitor treatment response', 'Measure prostate size', 'Detect UTI', 'Screen for BPH',
 'B', 'IPSS: 7 questions scoring 0-5 each (0-35 total). Mild 0-7, moderate 8-19, severe 20-35. Plus quality of life question. Standardized symptom assessment and treatment monitoring.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Digital rectal examination in BPH typically reveals:',
 'Hard nodular prostate', 'Smooth enlarged rubbery prostate with preserved median sulcus', 'Tender prostate', 'Fixed prostate', 'Normal size hard prostate',
 'B', 'BPH on DRE: symmetrically enlarged, smooth, rubbery, non-tender, preserved median sulcus. Hard nodule suggests cancer. Tender suggests prostatitis. Note: DRE underestimates true size.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'PSA in BPH is:',
 'Always normal', 'May be mildly elevated due to increased glandular tissue', 'Diagnostic for BPH', 'Always highly elevated', 'Not affected by prostate size',
 'B', 'PSA may be elevated in BPH (approximately 0.3 ng/mL per gram of BPH tissue). Useful for monitoring, predicting progression, and ruling out cancer. PSA density may help differentiate from cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Uroflowmetry in BPH typically shows:',
 'Normal flow pattern', 'Decreased maximum flow rate (Qmax less than 15 mL/s) with prolonged voiding', 'Increased flow rate', 'Normal Qmax', 'Intermittent high flow',
 'B', 'BPH uroflow: decreased Qmax (<15 mL/s suggests obstruction, <10 mL/s significant), plateau/flat curve, prolonged voiding time, decreased voided volume. Normal Qmax >15 mL/s.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Post-void residual urine volume greater than 200 mL indicates:',
 'Normal emptying', 'Significant incomplete bladder emptying requiring consideration for intervention', 'Dehydration', 'UTI', 'Prostate cancer',
 'B', 'PVR >200 mL: significant retention requiring attention. >300 mL: high risk for complications. Measured by ultrasound or catheterization. Part of BPH evaluation before and during treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Alpha-1 adrenergic blockers for BPH work by:',
 'Reducing prostate size', 'Relaxing smooth muscle in prostate and bladder neck', 'Blocking testosterone', 'Increasing bladder contractility', 'Reducing PSA',
 'B', 'Alpha-blockers (tamsulosin, alfuzosin, silodosin): relax smooth muscle in prostate stroma and bladder neck. Rapid symptom relief (days to weeks). Do not reduce prostate size.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Common side effects of alpha-blockers include:',
 'Gynecomastia', 'Orthostatic hypotension dizziness and retrograde ejaculation', 'Weight gain', 'Increased libido', 'Hirsutism',
 'B', 'Alpha-blocker side effects: orthostatic hypotension, dizziness (especially non-selective), retrograde ejaculation (especially tamsulosin), nasal congestion. Floppy iris syndrome (cataract surgery).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 '5-alpha reductase inhibitors (finasteride, dutasteride) work by:',
 'Relaxing smooth muscle', 'Blocking conversion of testosterone to DHT reducing prostate size', 'Direct cytotoxic effect', 'Blocking estrogen', 'Increasing testosterone',
 'B', '5-ARIs block testosterone to DHT conversion. DHT is main growth factor for prostate. Reduce prostate size by 20-30% over 6-12 months. Also reduce PSA by 50%.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 '5-alpha reductase inhibitors are most effective in patients with:',
 'Small prostates', 'Prostate volume greater than 40 mL or PSA greater than 1.4 ng/mL', 'All patients equally', 'Pure storage symptoms', 'Acute retention only',
 'B', '5-ARIs most beneficial for larger prostates (>40 mL) or PSA >1.4 (correlates with size). Reduce progression risk, retention, and need for surgery. Less effective for small prostates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Side effects of 5-alpha reductase inhibitors include:',
 'Orthostatic hypotension', 'Decreased libido erectile dysfunction and reduced ejaculate volume', 'Dizziness', 'Nasal congestion', 'Floppy iris syndrome',
 'B', '5-ARI side effects: decreased libido (3-4%), erectile dysfunction (5-8%), decreased ejaculate volume, gynecomastia (rare). May persist after stopping in some patients.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Combination therapy (alpha-blocker plus 5-ARI) is indicated for:',
 'All BPH patients', 'Men with significant LUTS and enlarged prostate at risk for progression', 'Mild symptoms only', 'Pure storage symptoms', 'After failed surgery',
 'B', 'Combination therapy: for men with both bothersome symptoms AND risk factors for progression (enlarged prostate, elevated PSA). MTOPS and CombAT trials showed superiority for preventing progression.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Anticholinergic medications may be added for BPH patients with:',
 'Voiding symptoms only', 'Predominant storage (overactive bladder) symptoms', 'Large post-void residual', 'Acute retention history', 'Prostate cancer',
 'B', 'Anticholinergics: for storage symptoms (urgency, frequency). Caution with large PVR (>150-200 mL) due to retention risk. Often added to alpha-blocker if storage symptoms persist.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Indications for surgical intervention in BPH include:',
 'Mild symptoms only', 'Refractory retention recurrent UTI bladder stones renal insufficiency or failed medical therapy', 'All BPH patients', 'Age over 60', 'PSA elevation alone',
 'B', 'Surgery indications: refractory urinary retention, recurrent UTI, bladder stones, renal insufficiency from BPH, recurrent gross hematuria, failed/intolerant to medical therapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'TURP (Transurethral Resection of Prostate) is considered the:',
 'Only treatment option', 'Gold standard surgical treatment for BPH', 'Outdated procedure', 'First-line treatment', 'Last resort only',
 'B', 'TURP: gold standard surgery for 30-80 mL prostates. Endoscopic resection. Durable results. Alternatives emerging but TURP remains reference standard for comparison.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'TUR syndrome is caused by:',
 'Infection', 'Absorption of hypotonic irrigation fluid causing dilutional hyponatremia', 'Anesthesia reaction', 'Blood loss', 'Bladder perforation',
 'B', 'TUR syndrome: absorption of hypotonic irrigation fluid (glycine) causing dilutional hyponatremia, fluid overload. Symptoms: confusion, nausea, visual changes, hypertension. Prevented by limiting resection time, using bipolar/saline.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Bipolar TURP offers the advantage of:',
 'Faster procedure', 'Use of saline irrigation reducing TUR syndrome risk', 'Better symptom improvement', 'No bleeding risk', 'Outpatient procedure always',
 'B', 'Bipolar TURP: uses saline (isotonic) irrigation instead of glycine. Eliminates TUR syndrome risk. Similar efficacy to monopolar. Allows longer resection time for larger prostates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Holmium laser enucleation of prostate (HoLEP) is suitable for:',
 'Small prostates only', 'Prostates of any size including very large ones', 'Only as second procedure', 'Only on anticoagulation', 'Prostate cancer',
 'B', 'HoLEP: size-independent technique. Especially useful for large prostates (>100 mL) where TURP risky. Enucleates adenoma like open surgery. Steeper learning curve. Excellent outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Open simple prostatectomy is indicated for:',
 'All BPH cases', 'Very large prostates (greater than 80-100 mL) or concurrent bladder pathology', 'Small prostates', 'First-line treatment', 'Prostate cancer',
 'B', 'Open prostatectomy: for very large prostates (>80-100 mL), concurrent bladder diverticula or stones requiring open removal. Retropubic (Millin) or suprapubic (Freyer) approaches.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'GreenLight laser vaporization (PVP) advantage is:',
 'Better long-term outcomes than TURP', 'Minimal bleeding suitable for patients on anticoagulation', 'Lower cost', 'No catheter needed', 'Removes tissue for pathology',
 'B', 'PVP advantages: excellent hemostasis (suitable for anticoagulated patients), shorter catheterization, shorter hospital stay. Vaporizes tissue (no specimen for pathology). May need retreatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Prostatic urethral lift (UroLift) is:',
 'Laser treatment', 'Minimally invasive procedure using implants to hold open prostatic urethra', 'Medication', 'Open surgery', 'Catheter treatment',
 'B', 'UroLift: implants compress lateral lobes, opening prostatic urethra. Preserves ejaculation. Office-based option. For prostates <80 mL without median lobe. Less durable than TURP.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Rezum water vapor therapy uses:',
 'Cold therapy', 'Steam injection to cause thermal ablation of prostatic tissue', 'Electrical current', 'Ultrasound waves', 'Radiation',
 'B', 'Rezum: convective water vapor (steam) injected into transition zone. Thermal ablation causes tissue necrosis and resorption. Office-based. Preserves ejaculatory function. Catheter 3-7 days.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Retrograde ejaculation after TURP occurs in approximately:',
 '5 percent', '25 percent', '65-75 percent', '100 percent', 'Never occurs',
 'C', 'Retrograde ejaculation: most common long-term side effect of TURP (65-75%). Bladder neck opened during resection. Important to counsel patients preoperatively. Does not affect orgasm.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'The risk of erectile dysfunction after TURP is approximately:',
 '0 percent', '5-10 percent', '50 percent', '90 percent', '100 percent',
 'B', 'ED after TURP: 5-10% (conflicting data, some studies suggest lower). Less than open surgery. Mechanism unclear (thermal injury, psychological). Important in preoperative counseling.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Urethral stricture after TURP may present with:',
 'Immediate improvement then worsening symptoms', 'Continuous improvement', 'No symptoms', 'Hematuria only', 'Incontinence only',
 'A', 'Urethral stricture: late complication. Initial improvement then gradual symptom recurrence. Risk with larger resectoscope, prolonged procedure. Diagnosed by cystoscopy. Treat with dilation/urethrotomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Bladder neck contracture after TURP presents with:',
 'Incontinence', 'Recurrent obstructive symptoms after initial improvement', 'Hematuria', 'Urgency only', 'Pain only',
 'B', 'Bladder neck contracture: scarring at bladder neck. Presents with recurrent voiding symptoms after initial improvement. Risk higher with smaller prostates. Treat with incision.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Incidental prostate cancer found on TURP specimens occurs in approximately:',
 '1 percent', '5-15 percent', '50 percent', '80 percent', 'Never occurs',
 'B', 'Incidental prostate cancer on TURP: 5-15% (variable by population). Usually low-grade, low-volume. Management depends on volume, grade, and patient factors. Reason to send all chips for pathology.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Watchful waiting is appropriate for BPH patients with:',
 'Severe symptoms', 'Mild symptoms with minimal bother and no complications', 'Acute retention', 'Bladder stones', 'Renal impairment',
 'B', 'Watchful waiting: for mild symptoms (IPSS <8), minimal bother, no complications. Lifestyle modifications (fluid management, avoid caffeine/alcohol, timed voiding). Reassess periodically.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Lifestyle modifications for BPH include all EXCEPT:',
 'Reducing evening fluid intake', 'Avoiding caffeine and alcohol', 'Increasing salt intake', 'Timed voiding', 'Avoiding constipation',
 'C', 'Lifestyle modifications: reduce evening fluids, avoid caffeine/alcohol (diuretic, irritant), timed voiding, double voiding, treat constipation, review medications. Increasing salt not recommended.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Medications that may worsen BPH symptoms include:',
 'Alpha-blockers', 'Anticholinergics sympathomimetics and diuretics', 'Statins', 'ACE inhibitors', 'Calcium channel blockers',
 'B', 'Medications worsening LUTS: anticholinergics (retention), decongestants/sympathomimetics (alpha stimulation), diuretics (increase output), opioids (retention), antihistamines.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'After successful trial without catheter (TWOC) following acute retention:',
 'No further treatment needed', 'Alpha-blocker therapy should be continued and cause addressed', 'Immediate surgery', 'Long-term catheter', 'Repeat catheterization',
 'B', 'Post-TWOC: continue alpha-blocker (improves TWOC success and reduces re-retention), address precipitant, follow up with urologist, consider 5-ARI for large prostates, discuss surgical options.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'Prostate artery embolization (PAE) for BPH:',
 'Is the gold standard treatment', 'Is a minimally invasive alternative reducing prostate volume via ischemia', 'Requires general anesthesia always', 'Has better outcomes than TURP', 'Is not performed currently',
 'B', 'PAE: interventional radiology procedure. Embolizes prostatic arteries causing ischemia and volume reduction. Minimally invasive, preserves ejaculation. Less improvement than TURP. Still being studied.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000018-0000-0000-0000-000000000018', 'a0000004-0000-0000-0000-000000000004',
 'PDE5 inhibitors (tadalafil) for BPH:',
 'Have no role', 'Are approved for BPH/LUTS and may improve symptoms especially in men with ED', 'Work faster than alpha-blockers', 'Reduce prostate size', 'Are first-line therapy',
 'B', 'Tadalafil (5mg daily): FDA approved for BPH/LUTS. Improves symptoms (mechanism: smooth muscle relaxation, increased NO). Particularly useful in men with both LUTS and ED. Can combine with alpha-blocker.', 'medium', 'knowledge');
