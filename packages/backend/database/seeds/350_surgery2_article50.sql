-- Article 50: Urolithiasis (Urinary Stone Disease)
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000050-0000-0000-0000-000000000050'::uuid, 'introduction', 1, 'Introduction to Urolithiasis', 'Urolithiasis (urinary stone disease) is extremely common, affecting approximately 10% of the population during their lifetime. Stones may form anywhere in the urinary tract - kidneys, ureters, bladder, or urethra. Renal colic is one of the most severe pains known and is a common emergency presentation. Understanding stone composition, risk factors, and management options is essential for urological practice. Prevention of recurrence through metabolic evaluation and lifestyle modification is increasingly important.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 'content', 2, 'Stone Types and Risk Factors', 'STONE COMPOSITION:
Calcium stones (75-80%) - calcium oxalate (most common), calcium phosphate
Uric acid stones (5-10%) - radiolucent, associated with gout, low urine pH
Struvite stones (10-15%) - magnesium ammonium phosphate, infection stones (urease-producing organisms)
Cystine stones (1-2%) - hereditary cystinuria, hexagonal crystals

RISK FACTORS:
Dehydration - low urine volume is most important modifiable factor
Diet - high sodium, high protein, low calcium paradoxically increases risk, high oxalate foods
Metabolic - hypercalciuria, hyperoxaluria, hypocitraturia, hyperuricosuria
Medical conditions - gout, hyperparathyroidism, RTA type 1, inflammatory bowel disease
Anatomical - PUJ obstruction, horseshoe kidney, medullary sponge kidney
Medications - topiramate, acetazolamide, vitamin C excess

STRUVITE (INFECTION) STONES:
Urease-producing organisms: Proteus, Klebsiella, Pseudomonas, Staphylococcus (not E. coli)
High pH urine (greater than 7)
May form staghorn calculi filling renal pelvis and calyces
Require complete stone removal plus infection eradication'),
('d2000050-0000-0000-0000-000000000050'::uuid, 'content', 3, 'Clinical Presentation and Diagnosis', 'RENAL COLIC:
Sudden onset severe colicky flank pain radiating to groin/testis/labia
Pain comes in waves (ureteric peristalsis)
Restless patient (unlike peritonitis where patient lies still)
Nausea and vomiting
Microscopic or gross haematuria (85%)
May have LUTS if stone at VUJ

SITES OF URETERIC NARROWING (where stones commonly impact):
PUJ (pelviureteric junction)
Pelvic brim (crossing iliac vessels)
VUJ (vesicoureteric junction) - narrowest point

DIFFERENTIAL DIAGNOSIS:
Appendicitis, diverticulitis, AAA, ectopic pregnancy, ovarian torsion, pyelonephritis, musculoskeletal pain

INVESTIGATIONS:
CT KUB (non-contrast) - gold standard, detects all stone types including uric acid (sensitivity greater than 95%)
Urinalysis - haematuria, pH (high in struvite, low in uric acid), crystals
Urine culture - rule out infection
Blood - creatinine (renal function), calcium, uric acid
Plain KUB - limited, misses radiolucent stones
Ultrasound - hydronephrosis, stones (limited sensitivity for ureteric stones)'),
('d2000050-0000-0000-0000-000000000050'::uuid, 'content', 4, 'Management', 'ACUTE MANAGEMENT:
Analgesia - NSAIDs first-line (diclofenac), opioids second-line
IV fluids if dehydrated or vomiting
Alpha-blockers (tamsulosin) - medical expulsive therapy for distal stones
Antibiotics if infected

INDICATIONS FOR INTERVENTION:
Infected obstructed kidney - EMERGENCY (sepsis, pyonephrosis)
Intractable pain or vomiting
Solitary kidney with obstruction
Bilateral obstructing stones
Stone unlikely to pass (greater than 6mm in ureter)
Failure of conservative management

STONE PASSAGE PROBABILITY:
Less than 4mm - 80% pass spontaneously
4-6mm - 50% pass
Greater than 6mm - less than 20% pass

TREATMENT OPTIONS:
ESWL (Extracorporeal Shock Wave Lithotripsy) - non-invasive, outpatient, stones less than 2cm, not for cystine or hard stones
URS (Ureteroscopy) - endoscopic, laser fragmentation, stent placement
PCNL (Percutaneous Nephrolithotomy) - large stones greater than 2cm, staghorn calculi
Open surgery - rarely needed now

EMERGENCY DRAINAGE (infected obstructed kidney):
Ureteric stent (retrograde) or Nephrostomy (antegrade)
Definitive stone treatment after sepsis resolved

PREVENTION:
High fluid intake (greater than 2.5L urine/day)
Dietary modification based on stone type
Metabolic evaluation for recurrent stone formers
Thiazides for hypercalciuria, potassium citrate for hypocitraturia'),
('d2000050-0000-0000-0000-000000000050'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'CT KUB is gold standard - detects all stone types. Patient with renal colic is restless (unlike peritonitis). Infected obstructed kidney is urology emergency - drain first. NSAIDs are first-line analgesia. Struvite stones require complete removal plus infection treatment. Uric acid stones are radiolucent on X-ray. Tamsulosin aids passage of distal ureteric stones.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 'key_points', 6, 'Key Points Summary', 'Calcium oxalate is most common stone type. Low urine volume is key modifiable risk factor. Struvite stones: infection with urease producers, high pH. CT KUB: gold standard, all stones visible. Less than 4mm stones: 80% pass spontaneously. Infected obstructed kidney: emergency drainage. ESWL for less than 2cm stones, PCNL for greater than 2cm or staghorn.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000050-0000-0000-0000-000000000050'::uuid, 1, 'Most common type of urinary stone is:', 'Uric acid', 'Struvite', 'Calcium oxalate', 'Cystine', 'Calcium phosphate', 'C', 'Calcium oxalate stones are the most common type, accounting for approximately 75% of all urinary stones.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 2, 'Struvite stones are associated with:', 'Low urine pH', 'Urease-producing bacteria and high pH', 'Gout', 'Cystinuria', 'Hypercalciuria', 'B', 'Struvite (infection) stones form in alkaline urine with urease-producing organisms like Proteus.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 3, 'Uric acid stones are:', 'Radiopaque', 'Radiolucent on X-ray', 'Always visible on ultrasound', 'Associated with high urine pH', 'Caused by infection', 'B', 'Uric acid stones are radiolucent on plain X-ray but visible on CT scan.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 4, 'Gold standard imaging for suspected renal colic is:', 'Plain KUB X-ray', 'Ultrasound', 'Non-contrast CT KUB', 'IVU', 'MRI', 'C', 'Non-contrast CT KUB is the gold standard with greater than 95% sensitivity for all stone types.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 5, 'Narrowest point of the ureter is the:', 'PUJ', 'Pelvic brim', 'VUJ (vesicoureteric junction)', 'Mid-ureter', 'Renal pelvis', 'C', 'The VUJ is the narrowest point of the ureter, where stones commonly impact.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 6, 'First-line analgesia for renal colic is:', 'Paracetamol', 'Opioids', 'NSAIDs (diclofenac)', 'Antispasmodics', 'Tramadol', 'C', 'NSAIDs (diclofenac) are first-line analgesia for renal colic - reduce ureteric spasm and inflammation.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 7, 'Probability of spontaneous passage for stone less than 4mm is:', '20%', '50%', '80%', '95%', '10%', 'C', 'Stones less than 4mm have approximately 80% chance of spontaneous passage.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 8, 'Infected obstructed kidney requires:', 'ESWL urgently', 'Oral antibiotics only', 'Emergency drainage (stent or nephrostomy)', 'Conservative management', 'Nephrectomy', 'C', 'Infected obstructed kidney is a urological emergency requiring urgent drainage before definitive treatment.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 9, 'Medical expulsive therapy with alpha-blockers is used for:', 'All renal stones', 'Distal ureteric stones', 'Staghorn calculi', 'Bladder stones', 'Infected stones', 'B', 'Tamsulosin (alpha-blocker) relaxes ureteral smooth muscle and aids passage of distal ureteric stones.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 10, 'PCNL is indicated for:', 'Small ureteric stones', 'Stones less than 1cm', 'Large renal stones greater than 2cm or staghorn calculi', 'Bladder stones', 'All stones', 'C', 'PCNL (Percutaneous Nephrolithotomy) is used for large renal stones greater than 2cm and staghorn calculi.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 11, 'ESWL is contraindicated in:', 'Pregnancy', 'Stone less than 2cm', 'Calcium stones', 'Adult patients', 'Renal stones', 'A', 'ESWL is contraindicated in pregnancy, bleeding disorders, aortic aneurysm, and stones overlying aorta.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 12, 'Hexagonal crystals on urine microscopy indicate:', 'Calcium oxalate stones', 'Cystine stones', 'Uric acid stones', 'Struvite stones', 'Calcium phosphate stones', 'B', 'Hexagonal (benzene ring shaped) crystals are pathognomonic of cystine stones.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 13, 'Patient with renal colic typically:', 'Lies completely still', 'Is restless and cannot find a comfortable position', 'Has rebound tenderness', 'Has board-like rigidity', 'Is pain-free between attacks', 'B', 'Patients with renal colic are characteristically restless, unlike those with peritonitis who lie still.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 14, 'Urease is NOT produced by:', 'Proteus', 'Klebsiella', 'E. coli', 'Pseudomonas', 'Staphylococcus', 'C', 'E. coli does not produce urease, so does not cause struvite stones despite being common UTI pathogen.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 15, 'Staghorn calculus typically consists of:', 'Calcium oxalate', 'Uric acid', 'Struvite (magnesium ammonium phosphate)', 'Cystine', 'Calcium phosphate', 'C', 'Staghorn calculi are typically struvite (infection) stones that fill the renal pelvis and calyces.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 16, 'Most important modifiable risk factor for stone formation is:', 'High protein diet', 'Low calcium diet', 'Low urine volume', 'High oxalate intake', 'Genetic factors', 'C', 'Low urine volume (dehydration) is the most important modifiable risk factor - aim for greater than 2.5L urine/day.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 17, 'Low dietary calcium increases stone risk because:', 'Less calcium in urine', 'More oxalate absorption from gut', 'Decreased urine output', 'Changes urine pH', 'Increases uric acid', 'B', 'Low calcium diet leads to increased intestinal oxalate absorption and hyperoxaluria.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 18, 'Haematuria is present in renal colic in approximately:', '25%', '50%', '85%', '100%', '10%', 'C', 'Microscopic or gross haematuria is present in approximately 85% of patients with renal colic.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 19, 'Thiazide diuretics are used to prevent stones in patients with:', 'Hyperuricosuria', 'Hypercalciuria', 'Cystinuria', 'Struvite stones', 'Low urine volume', 'B', 'Thiazides decrease urinary calcium excretion and are used for hypercalciuric stone formers.'),
('d2000050-0000-0000-0000-000000000050'::uuid, 20, 'Hyperparathyroidism causes stones by:', 'Increasing uric acid', 'Causing hypercalcemia and hypercalciuria', 'Producing urease', 'Decreasing citrate', 'Increasing oxalate', 'B', 'Primary hyperparathyroidism causes hypercalcemia and hypercalciuria, increasing calcium stone risk.');
