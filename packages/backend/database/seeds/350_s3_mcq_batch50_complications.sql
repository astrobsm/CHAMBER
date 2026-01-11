-- ============================================================================
-- SURGERY 3 MCQ BATCH 50: Surgical Complications and Management
-- Topic: Postoperative Complications - Recognition and Treatment
-- ============================================================================

-- First create the topic if not exists
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003', 'Surgical Complications', 'Postoperative complications recognition and management')
ON CONFLICT DO NOTHING;

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Wound Complications (1-15)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Surgical site infection (SSI) is most commonly caused by which organism?',
'Escherichia coli', 'Staphylococcus aureus, including MRSA strains', 'Pseudomonas aeruginosa', 'Bacteroides fragilis', 'Candida albicans',
'B', 'SSI microbiology: (1) Staphylococcus aureus: most common overall (20-30%), from skin flora. (2) MRSA: increasingly common, associated with healthcare exposure. (3) Coagulase-negative staph: common in prosthetic/implant infections. (4) E. coli and gram-negatives: common in GI/GU surgery. (5) Anaerobes: colorectal, gynecologic surgery. Prevention: appropriate antibiotic prophylaxis, skin preparation, normothermia, glycemic control. Reference: Mangram AJ. Infect Control Hosp Epidemiol. 1999.',
'easy', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'A superficial SSI is defined as occurring within:',
'7 days of surgery', '30 days of surgery and involving only skin and subcutaneous tissue', '90 days of surgery', '1 year of surgery', '24 hours of surgery',
'B', 'SSI classification (CDC): (1) Superficial incisional SSI: within 30 days, involves only skin/subcutaneous tissue. (2) Deep incisional SSI: within 30 days (or 90 days if implant), involves deep soft tissues (fascia, muscle). (3) Organ/space SSI: within 30 days (or 90 days if implant), involves organ/space opened or manipulated during surgery. Criteria: purulent drainage, organisms from culture, signs/symptoms of infection, surgeon diagnosis. Reference: CDC/NHSN SSI definitions.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Wound dehiscence typically occurs on which postoperative day?',
'Day 1', 'Days 5-10 postoperatively, during the nadir of wound tensile strength', 'Day 30', 'Day 60', 'Within first 24 hours',
'B', 'Wound dehiscence timing: (1) Peak: POD 5-10, when inflammatory phase transitions to proliferative phase. (2) Wound strength: minimal during first 2 weeks (depends on sutures). (3) Risk factors: malnutrition, diabetes, steroids, obesity, coughing/straining, infection, poor surgical technique. (4) Warning sign: salmon-colored (serosanguinous) drainage. (5) Evisceration: bowel protrusion through dehisced wound - surgical emergency. Prevention: mass closure with slow-absorbable suture, 4:1 suture length to wound ratio. Reference: van Ramshorst GH. Ann Surg. 2010.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The most appropriate initial management of a seroma is:',
'Immediate surgical exploration', 'Observation or needle aspiration if symptomatic', 'IV antibiotics', 'Wound debridement', 'Hyperbaric oxygen',
'B', 'Seroma management: (1) Definition: collection of serous fluid in wound/tissue planes. (2) Risk factors: extensive dissection, lymph node dissection, drain removal. (3) Initial management: observation (most resolve), aspiration if symptomatic or tense. (4) Recurrent seromas: may need repeated aspiration, sclerotherapy, or operative drainage. (5) Prevention: minimize dead space, appropriate drain use, compression garments. Distinguish from hematoma (blood), abscess (purulent), lymphocele. Reference: Sampathraju S. Indian J Surg. 2010.',
'easy', 'application'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'A patient develops fever, wound erythema, crepitus, and severe pain out of proportion 36 hours after abdominal surgery. The most likely diagnosis is:',
'Simple SSI', 'Necrotizing fasciitis, requiring emergent surgical debridement', 'Normal wound healing', 'Drug reaction', 'Seroma',
'B', 'Necrotizing fasciitis: (1) Presentation: rapid progression, pain out of proportion, systemic toxicity, skin changes (erythema, bullae, necrosis), crepitus (gas in tissues). (2) Types: Type I (polymicrobial), Type II (Group A Strep or Staph), Type III (Clostridial gas gangrene). (3) Diagnosis: clinical suspicion, CT may show gas in soft tissues. (4) Treatment: EMERGENT wide surgical debridement, broad-spectrum antibiotics, ICU care. (5) Mortality: 20-40% even with treatment. Delay in surgery increases mortality. Reference: Wong CH. Crit Care Med. 2004.',
'medium', 'application'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The LRINEC score is used to help diagnose:',
'Appendicitis', 'Necrotizing soft tissue infections, using lab values including CRP, WBC, hemoglobin, sodium, glucose, and creatinine', 'Bowel obstruction', 'Pulmonary embolism', 'Acute cholecystitis',
'B', 'LRINEC score (Laboratory Risk Indicator for Necrotizing Fasciitis): Parameters: CRP (>150), WBC (>15 or <25), Hemoglobin (<13.5 or <11), Sodium (<135), Creatinine (>1.6), Glucose (>180). Scoring: 0-13 points. Score >6: suspicion for NSTI. Score >8: strongly predictive. Limitations: should not delay surgery if clinical suspicion high - false negatives occur. Clinical judgment remains paramount. Reference: Wong CH. Crit Care Med. 2004.',
'hard', 'knowledge'),

-- Pulmonary Complications (16-25)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The most common pulmonary complication after major abdominal surgery is:',
'Pneumothorax', 'Atelectasis, especially in the first 24-48 hours', 'Pulmonary embolism', 'ARDS', 'Aspiration pneumonia',
'B', 'Postoperative atelectasis: (1) Most common pulmonary complication. (2) Timing: first 24-48 hours. (3) Causes: decreased respiratory effort, pain-limited breathing, residual anesthesia, mucus plugging. (4) Presentation: fever (usually low-grade), decreased breath sounds, hypoxia. (5) Prevention: incentive spirometry, early ambulation, adequate pain control. (6) Treatment: aggressive pulmonary toilet, bronchoscopy for mucus plugging. Reference: Smetana GW. N Engl J Med. 1999.',
'easy', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Aspiration pneumonitis results from aspiration of:',
'Bacteria-laden oropharyngeal secretions', 'Sterile gastric contents (chemical pneumonitis)', 'Blood', 'Food particles only', 'Saliva',
'B', 'Aspiration syndromes: (1) Aspiration pneumonitis (Mendelson syndrome): chemical injury from sterile acidic gastric contents. Rapid onset (hours), bilateral infiltrates, may improve rapidly. (2) Aspiration pneumonia: bacterial infection from oropharyngeal flora. Delayed onset (days), requires antibiotics. (3) Risk factors: impaired consciousness, NG tube, supine position, poor gag. Prevention: NPO, head of bed elevation, rapid sequence induction. Treatment of pneumonitis: supportive; antibiotics only if secondary infection. Reference: Marik PE. N Engl J Med. 2001.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Postoperative pneumonia typically develops:',
'Within 6 hours of surgery', 'After 48-72 hours postoperatively', 'During surgery', 'At 30 days', 'Only if intubated',
'B', 'Postoperative pneumonia: (1) Timing: typically 48-72+ hours after surgery. (2) Earlier onset: suggests aspiration at induction. (3) Risk factors: prolonged intubation, COPD, smoking, thoracic/upper abdominal surgery, obesity, age. (4) Pathogens: early - community organisms; late - nosocomial (gram-negatives, MRSA). (5) Diagnosis: fever, productive cough, infiltrate on CXR, leukocytosis. (6) Prevention: incentive spirometry, early extubation, HOB elevation, oral care. Reference: Canet J. Anesthesiology. 2010.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The Wells score for pulmonary embolism includes which of the following criteria?',
'Fever and chills', 'Clinical signs of DVT, heart rate >100, immobilization, previous VTE, hemoptysis, malignancy, and PE most likely diagnosis', 'Only D-dimer level', 'Chest X-ray findings', 'Arterial blood gas results',
'B', 'Wells score for PE: (1) Clinical signs/symptoms of DVT: 3 points. (2) PE most likely diagnosis: 3 points. (3) Heart rate >100: 1.5 points. (4) Immobilization >3 days or surgery in past 4 weeks: 1.5 points. (5) Previous PE/DVT: 1.5 points. (6) Hemoptysis: 1 point. (7) Malignancy: 1 point. Interpretation: Low probability (<2), intermediate (2-6), high (>6). Low probability + negative D-dimer: PE ruled out. Otherwise: CT angiography. Reference: Wells PS. Ann Intern Med. 2001.',
'hard', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'First-line treatment for hemodynamically stable pulmonary embolism is:',
'Thrombolysis', 'Anticoagulation with heparin or direct oral anticoagulants (DOACs)', 'IVC filter', 'Surgical embolectomy', 'Observation only',
'B', 'PE treatment: (1) Hemodynamically stable: anticoagulation - LMWH, unfractionated heparin, fondaparinux, or DOACs (rivaroxaban, apixaban). (2) Massive/unstable PE: consider thrombolysis (alteplase) or embolectomy. (3) Contraindication to anticoagulation: IVC filter. (4) Duration: provoked (3 months), unprovoked (extended). (5) Subsegmental PE: individualized decision. Perioperative PE: balance bleeding risk with anticoagulation. Reference: Konstantinides SV. Eur Heart J. 2020.',
'medium', 'application'),

-- Cardiovascular Complications (26-35)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Postoperative myocardial infarction most commonly occurs:',
'During surgery', 'Within the first 24-72 hours after surgery', 'At 2 weeks postoperatively', 'Only in cardiac surgery', 'Never in non-cardiac surgery',
'B', 'Postoperative MI: (1) Peak incidence: first 24-72 hours (hemodynamic stress, catecholamine surge, hypercoagulability). (2) Presentation: often atypical - may lack chest pain (anesthesia, analgesics). Watch for hypotension, arrhythmias, heart failure, elevated troponins. (3) Risk factors: CAD, recent MI, heart failure, valvular disease, diabetes. (4) Type 2 MI: demand ischemia more common than plaque rupture. (5) Prevention: beta-blockers (if already on), avoid tachycardia/hypotension. Reference: Devereaux PJ. Lancet. 2008.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The most common arrhythmia in the postoperative period is:',
'Ventricular fibrillation', 'Atrial fibrillation, especially after thoracic and cardiac surgery', 'Complete heart block', 'Torsades de pointes', 'Ventricular tachycardia',
'B', 'Postoperative atrial fibrillation: (1) Most common arrhythmia after surgery. (2) Peak: POD 2-4. (3) Highest incidence: thoracic surgery (20-50%), cardiac surgery (30-50%). (4) Risk factors: age, history of AF, cardiac disease, electrolyte abnormalities, sepsis. (5) Treatment: rate control (beta-blockers, diltiazem), anticoagulation if >48 hours, cardioversion if unstable. (6) Prevention (high-risk): amiodarone, beta-blockers, magnesium. Reference: Amar D. Chest. 2000.',
'easy', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Perioperative beta-blocker therapy:',
'Should be started the morning of surgery in all patients', 'Should be continued in patients already on beta-blockers, but initiating high-dose beta-blockers perioperatively may increase stroke risk', 'Is contraindicated in all surgical patients', 'Should be stopped 1 week before surgery', 'Is only used for thyroid storm',
'B', 'Perioperative beta-blockers: (1) Continue: in patients already on beta-blockers (stopping increases risk). (2) Initiate: carefully in high-risk patients, weeks before surgery if possible. (3) POISE trial: aggressive beta-blockade reduced MI but increased stroke and mortality. (4) Current recommendation: titrate to heart rate, avoid hypotension, do not start high-dose on day of surgery. (5) Use: CAD, hypertension, arrhythmia prophylaxis. Reference: Devereaux PJ (POISE). Lancet. 2008.',
'hard', 'knowledge'),

-- GI Complications (36-45)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Postoperative ileus typically resolves in what order?',
'Colon first, then small intestine', 'Small intestine first (24 hours), then stomach (24-48 hours), then colon (3-5 days)', 'All segments simultaneously', 'Stomach first', 'Rectum first',
'B', 'Postoperative ileus recovery: (1) Small intestine: first to recover (4-24 hours). (2) Stomach: 24-48 hours. (3) Colon: last (3-5 days, up to 7 days). (4) Causes: surgical manipulation, anesthesia, opioids, electrolyte imbalances. (5) Prevention: early enteral feeding, minimize opioids, chewing gum, early ambulation. (6) Prolonged ileus (>5-7 days): consider mechanical obstruction, abscess, or other complication. Reference: Livingston EH. Ann Surg. 1990.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Anastomotic leak after colorectal surgery most commonly presents:',
'Immediately after surgery', 'Between postoperative days 5-10, with fever, tachycardia, abdominal pain, and elevated WBC', 'At 30 days', 'Only as localized abscess', 'With massive hemorrhage',
'B', 'Anastomotic leak: (1) Timing: POD 5-10 (peak collagen breakdown, before adequate healing). (2) Presentation: fever, tachycardia, abdominal pain, peritonitis, elevated WBC, worsening clinical status. May be subtle initially. (3) Diagnosis: CT with rectal contrast, clinical suspicion. (4) Management: depends on severity - antibiotics, drainage, diversion, or takedown with end ostomy. (5) Risk factors: malnutrition, steroids, radiation, tension, poor blood supply, technical error. Reference: Kingham TP. Ann Surg. 2009.',
'medium', 'application'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Ogilvie syndrome (acute colonic pseudo-obstruction) is treated with:',
'Emergent colectomy', 'Neostigmine as first-line pharmacologic therapy, with colonoscopic decompression if unsuccessful', 'Antibiotics alone', 'Total parenteral nutrition', 'Only observation',
'B', 'Ogilvie syndrome: (1) Definition: acute colonic pseudo-obstruction without mechanical cause. (2) Risk factors: postoperative, critical illness, electrolyte imbalance, medications (opioids). (3) Concern: perforation if cecum >12 cm. (4) Treatment: correct electrolytes, stop offending medications, mobilize. Neostigmine 2 mg IV (if no contraindications) - 80-90% response. Colonoscopic decompression if neostigmine fails. Surgery: rarely needed, for perforation. Reference: Ponec RJ. N Engl J Med. 1999.',
'medium', 'application'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Stress ulcer prophylaxis in ICU patients is indicated for:',
'All hospitalized patients', 'Patients with mechanical ventilation >48 hours, coagulopathy, head injury, severe burns, or history of GI bleeding', 'Only diabetic patients', 'Patients on steroids only', 'Never indicated',
'B', 'Stress ulcer prophylaxis: (1) Indications: mechanical ventilation >48 hours, coagulopathy, prior GI bleed history, TBI/spinal cord injury, major burns, multiple organ failure, sepsis, high-dose steroids. (2) Agents: PPIs or H2 blockers. (3) Routine use discouraged: risk of pneumonia, C. diff. (4) Not needed in patients tolerating enteral feeds (feeds are protective). (5) Discontinue when risk factors resolve. Reference: ASHP guidelines. Am J Health Syst Pharm. 1999.',
'medium', 'knowledge'),

-- Urinary and Renal Complications (46-52)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Postoperative urinary retention is most common after which type of surgery?',
'Thyroid surgery', 'Anorectal surgery and inguinal hernia repair, especially with spinal anesthesia', 'Appendectomy', 'Cholecystectomy', 'Breast surgery',
'B', 'Postoperative urinary retention: (1) Highest risk: anorectal surgery (10-50%), inguinal hernia repair. (2) Risk factors: spinal/epidural anesthesia, opioids, anticholinergics, male gender, BPH, pelvic surgery. (3) Prevention: avoid bladder overdistension, minimize IV fluids. (4) Treatment: bladder scan (>400-500 mL indicates retention), catheterization. (5) Alpha-blockers (tamsulosin) may help in men with BPH. Usually resolves within 24-48 hours. Reference: Baldini G. Anesthesiology. 2009.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Acute kidney injury (AKI) in the postoperative period is most commonly caused by:',
'Contrast nephropathy', 'Prerenal azotemia due to hypovolemia and hypoperfusion', 'Glomerulonephritis', 'Urinary tract obstruction', 'Aminoglycoside toxicity',
'B', 'Postoperative AKI: (1) Most common: prerenal (hypovolemia, hypotension, decreased cardiac output). (2) Intrinsic: ATN (prolonged ischemia, nephrotoxins - contrast, aminoglycosides, NSAIDs). (3) Postrenal: obstruction (catheter issues, ureteral injury). (4) Diagnosis: rising creatinine, decreased urine output. FENa <1% suggests prerenal. (5) Prevention: optimize volume status, avoid nephrotoxins, maintain perfusion pressure. Treatment: address underlying cause, supportive care, dialysis if indicated. Reference: Kheterpal S. Anesthesiology. 2009.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The fractional excretion of sodium (FENa) in prerenal azotemia is typically:',
'>2%', '<1%, indicating avid sodium retention by functioning kidneys', 'Between 1-2%', '>3%', 'Unmeasurable',
'B', 'FENa interpretation: (1) Formula: (UNa x PCr) / (PNa x UCr) x 100. (2) Prerenal azotemia: <1% (kidneys retain sodium to preserve volume). (3) Intrinsic renal failure (ATN): >2% (tubular damage impairs sodium reabsorption). (4) Limitations: diuretics increase FENa, may be low in contrast nephropathy, rhabdomyolysis, acute GN. (5) FEUrea: more reliable if on diuretics (<35% suggests prerenal). BUN:Cr ratio >20:1 also suggests prerenal. Reference: Espinel CH. Am J Med. 1976.',
'hard', 'knowledge'),

-- Thromboembolic and Hematologic (53-57)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Heparin-induced thrombocytopenia (HIT) typically occurs:',
'Within 24 hours of heparin exposure', 'Between 5-10 days after heparin exposure (or earlier if prior exposure)', 'At 30 days', 'Only with high-dose heparin', 'Never with LMWH',
'B', 'HIT timing: (1) Typical onset: 5-10 days after heparin start. (2) Rapid-onset HIT: within 24 hours if prior heparin exposure (past 100 days). (3) Mechanism: antibodies to platelet factor 4-heparin complex causing platelet activation and thrombosis. (4) Diagnosis: 4T score (thrombocytopenia, timing, thrombosis, other causes), PF4/heparin antibody, serotonin release assay. (5) Treatment: STOP all heparin, start alternative anticoagulant (argatroban, bivalirudin, fondaparinux). Paradoxically thrombotic, not bleeding. Reference: Warkentin TE. N Engl J Med. 2001.',
'hard', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'The 4T score for HIT includes:',
'Temperature, tachycardia, tenderness, trauma', 'Thrombocytopenia severity, Timing of platelet fall, Thrombosis, and other causes of Thrombocytopenia', 'Only platelet count', 'D-dimer and fibrinogen', 'PTT and INR',
'B', '4T score for HIT: (1) Thrombocytopenia: degree of platelet fall (>50% = 2 points, 30-50% = 1, <30% = 0). (2) Timing: 5-10 days or <1 day if recent heparin (2 points if typical). (3) Thrombosis: new thrombosis, skin necrosis, acute reaction (2 points if present). (4) Other causes: no other apparent cause (2 points), possible cause (1), definite cause (0). Score: 0-3 low probability, 4-5 intermediate, 6-8 high. High score: stop heparin, send confirmatory testing, start alternative anticoagulant. Reference: Lo GK. J Thromb Haemost. 2006.',
'hard', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Disseminated intravascular coagulation (DIC) is characterized by:',
'Elevated fibrinogen and normal platelets', 'Thrombocytopenia, prolonged PT/PTT, elevated D-dimer, and decreased fibrinogen', 'Isolated platelet elevation', 'Normal coagulation studies', 'Only affects clotting time',
'B', 'DIC laboratory findings: (1) Thrombocytopenia: platelet consumption. (2) Prolonged PT and PTT: clotting factor consumption. (3) Elevated D-dimer/FDP: fibrinolysis of clots. (4) Decreased fibrinogen: consumed in clot formation. (5) Schistocytes: microangiopathic hemolysis. Causes: sepsis, trauma, malignancy, obstetric complications. Pathophysiology: widespread activation of coagulation leading to consumptive coagulopathy. Treatment: treat underlying cause, support (FFP, platelets, cryoprecipitate). Reference: Levi M. N Engl J Med. 1999.',
'medium', 'knowledge'),

-- Metabolic and Other (58-60)
('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Postoperative fever on POD 1-2 is most commonly caused by:',
'Surgical site infection', 'Atelectasis or inflammatory response to surgical trauma', 'UTI', 'Deep vein thrombosis', 'Drug reaction',
'B', 'Postoperative fever timing (mnemonic - Wind, Water, Wound, Walking, Wonder drugs): POD 0-2: Wind (atelectasis) - most common, also inflammatory response. POD 3-5: Water (UTI). POD 5-7: Wound (SSI). POD 5+: Walking (DVT/PE). Any time: Wonder drugs (drug fever), Waterways (abscess, anastomotic leak). Early fever (<48 hours) rarely infectious - usually atelectasis, SIRS from surgery, blood transfusion. Low-grade fever common POD 1-2 from cytokine release. Reference: Garibaldi RA. Am J Med. 1985.',
'medium', 'knowledge'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Adrenal insufficiency in the postoperative period should be suspected when:',
'Patient has normal blood pressure', 'Patient on chronic steroids develops refractory hypotension unresponsive to fluids and vasopressors', 'Patient has hyperglycemia', 'Patient is febrile', 'Patient has elevated cortisol',
'B', 'Postoperative adrenal crisis: (1) Risk: chronic steroid use causing HPA axis suppression. (2) Presentation: hypotension refractory to fluids/pressors, confusion, weakness, nausea, abdominal pain. (3) Labs: hyponatremia, hyperkalemia, hypoglycemia (may be subtle). (4) Diagnosis: random cortisol <15-18 mcg/dL in stressed patient suggests insufficiency. (5) Treatment: stress-dose steroids (hydrocortisone 100 mg IV, then 50 mg q6-8h), supportive care. Prevention: perioperative steroid coverage in at-risk patients. Reference: Coursin DB. Crit Care Med. 2002.',
'hard', 'application'),

('c0000065-0000-0000-0000-000000000065', 'a0000003-0000-0000-0000-000000000003',
'Malignant hyperthermia presents with:',
'Hypothermia and bradycardia', 'Masseter muscle rigidity, rapidly rising temperature, tachycardia, and elevated end-tidal CO2, triggered by volatile anesthetics or succinylcholine', 'Low CO2', 'Normal muscle tone', 'Only during emergence from anesthesia',
'B', 'Malignant hyperthermia: (1) Triggers: volatile anesthetics (sevoflurane, desflurane, isoflurane) and succinylcholine. (2) Mechanism: uncontrolled skeletal muscle calcium release (RYR1 mutation). (3) Signs: masseter rigidity, rapidly rising temperature, hypercarbia, tachycardia, metabolic and respiratory acidosis, hyperkalemia, rhabdomyolysis, DIC. (4) Treatment: STOP trigger, hyperventilate with 100% O2, dantrolene 2.5 mg/kg IV (repeat until symptoms resolve), cool patient, treat hyperkalemia. (5) Mortality: <10% with prompt treatment. Reference: Rosenberg H. Orphanet J Rare Dis. 2015.',
'hard', 'application');

SELECT 'Surgery 3 MCQ Batch 50 (Surgical Complications): 60 questions inserted' as status;
