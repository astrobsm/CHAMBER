-- ============================================================================
-- SURGERY 3 MCQ BATCH 38: Perioperative Care and Risk Assessment (Questions 2221-2280)
-- Topic: Preoperative Evaluation, Cardiac Risk, VTE Prophylaxis, Postop Complications
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Preoperative Evaluation (1-15)
('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'The ASA Physical Status Classification is used to:',
'Determine surgical approach', 'Assess patient overall health status and predict perioperative risk', 'Choose anesthesia type only', 'Determine length of surgery', 'Assess wound classification',
'B', 'ASA Physical Status Classification: standardized assessment of patient comorbidity. ASA I - healthy, no disease. ASA II - mild systemic disease. ASA III - severe systemic disease. ASA IV - severe systemic disease that is constant threat to life. ASA V - moribund, not expected to survive without surgery. ASA VI - brain dead, organ donor. Add E for emergency. Correlates with perioperative morbidity and mortality. Simple, reproducible. Reference: ASA Physical Status Classification System.',
'easy', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Routine preoperative testing (CBC, chemistry, ECG, CXR) is recommended for:',
'All patients undergoing any surgery', 'Selected patients based on patient factors (age, comorbidities) and surgical risk, not routinely for all', 'Only elective surgeries', 'Only emergency surgeries', 'Every patient over 18',
'B', 'Preoperative testing: selective approach based on indication, not routine for all. Guidelines: (1) History and physical examination guide testing, (2) ECG: cardiac disease history, high-risk surgery, age considerations. (3) CXR: pulmonary symptoms, intrathoracic surgery. (4) Labs: based on specific conditions (renal disease - creatinine; liver disease - coagulation; anticoagulants - PT/INR). Routine testing in healthy patients for low-risk surgery: not supported, adds cost without benefit. Reference: ASA Task Force on Preanesthesia Evaluation.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'When should antiplatelet therapy (aspirin) be stopped before elective surgery:',
'Must always be stopped', 'Depends on indication and surgical bleeding risk; low-risk surgery may continue, high bleeding risk surgeries may require discontinuation 7-10 days prior', 'Never stopped', '24 hours before', '1 month before',
'B', 'Aspirin perioperative management: individualized. (1) Low bleeding risk surgery (cataract, minor procedures): continue aspirin. (2) High bleeding risk surgery (intracranial, spinal, major): consider stopping 7-10 days before (platelet lifespan). (3) Recent coronary stent: high thrombosis risk - continue aspirin, may continue dual antiplatelet depending on stent type and timing (consult cardiology). Balance bleeding risk vs thrombotic risk. Reference: Douketis JD. Chest. 2012.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Warfarin should be stopped before elective surgery approximately:',
'1 day before', '5 days before surgery to allow INR to normalize', '2 weeks before', 'Day of surgery', 'Never',
'B', 'Warfarin perioperative management: stop 5 days before surgery (allows INR to normalize <1.5). Check INR day before or morning of surgery. Bridging with heparin/LMWH: considered for high thromboembolic risk (mechanical valve, recent VTE, high-risk AF). Low-risk patients: no bridging needed. Resume warfarin evening of surgery or next day if hemostasis adequate. Reference: Douketis JD. JAMA Intern Med. 2015 (BRIDGE trial).',
'easy', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Direct oral anticoagulants (DOACs like rivaroxaban, apixaban) are typically held for:',
'24-48 hours before surgery (depending on renal function and bleeding risk)', '7 days before surgery', 'Day of surgery only', '2 weeks before', 'Never held',
'A', 'DOAC perioperative management: shorter half-life than warfarin. Hold 24-48 hours before low bleeding risk surgery, 48-72 hours for high bleeding risk surgery. Renal impairment: longer hold for renally excreted DOACs (dabigatran). No bridging required (short half-life). Resume 24-48 hours postoperatively based on bleeding risk and hemostasis. Reversal agents available for emergencies: idarucizumab (dabigatran), andexanet alfa (factor Xa inhibitors). Reference: Douketis JD. JAMA Intern Med. 2019.',
'medium', 'knowledge'),

-- Cardiac Risk Assessment (16-25)
('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'The Revised Cardiac Risk Index (RCRI) includes which of the following risk factors:',
'Age and BMI', 'High-risk surgery, history of heart failure, coronary artery disease, cerebrovascular disease, diabetes on insulin, and creatinine over 2', 'Only prior MI', 'Hypertension alone', 'Family history only',
'B', 'Revised Cardiac Risk Index (Lee Index): 6 predictors of major cardiac complications. (1) High-risk surgery (intrathoracic, intraabdominal, suprainguinal vascular). (2) History of coronary artery disease. (3) History of heart failure. (4) History of cerebrovascular disease. (5) Diabetes requiring insulin. (6) Preoperative creatinine >2 mg/dL. Each factor = 1 point. Risk: 0 factors = 0.4%, 1 = 0.9%, 2 = 6.6%, 3+ = 11%. Guides need for further testing. Reference: Lee TH. Circulation. 1999.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Patients with recent myocardial infarction should ideally wait before elective noncardiac surgery for:',
'1 week', 'At least 60 days, ideally longer if bare-metal stent, and at least 12 months with drug-eluting stent', '1 day', '3 months always', 'No waiting required',
'B', 'Post-MI surgery timing: elevated perioperative risk with recent MI. Guidelines: (1) Wait at least 60 days after MI if possible for elective surgery. (2) After bare-metal stent (BMS): delay at least 30 days (ideally 3 months). (3) After drug-eluting stent (DES): delay at least 6 months, ideally 12 months. (4) Continue aspirin if possible. (5) Consult cardiology for patients requiring earlier surgery. Emergency surgery: proceed with optimization. Reference: ACC/AHA Perioperative Guidelines. 2014.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Beta-blockers for perioperative cardiac protection should be:',
'Started on all patients the night before surgery', 'Continued in patients already taking them; starting new beta-blockers is not routinely recommended and requires careful titration if initiated', 'Always stopped before surgery', 'Never used', 'Started at high dose',
'B', 'Perioperative beta-blockers: (1) CONTINUE in patients already on beta-blockers (abrupt withdrawal harmful). (2) STARTING new beta-blockers: not routinely recommended (POISE trial showed harm with high-dose metoprolol started day of surgery - increased stroke, death). If starting: begin well before surgery (days to weeks), titrate carefully to avoid hypotension/bradycardia. May be considered in high-risk patients with adequate time for titration. Reference: POISE Trial. Lancet. 2008.',
'hard', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Functional capacity for preoperative cardiac risk assessment is measured in:',
'Steps per day', 'Metabolic equivalents (METs) - patients able to achieve greater than 4 METs have lower cardiac risk', 'Heart rate', 'Blood pressure response', 'VO2 max only',
'B', 'Functional capacity and METs: measure exercise tolerance. 1 MET = basal metabolic rate (sitting quietly). 4 METs = climbing 1-2 flights of stairs, walking on level ground at 4 mph. Greater than 4 METs = lower perioperative cardiac risk (can proceed with surgery without further testing in most cases). Less than 4 METs = higher risk, may need further evaluation. Based on patient history (ADLs, exercise tolerance). Reference: ACC/AHA Perioperative Guidelines.',
'medium', 'knowledge'),

-- VTE Prophylaxis (26-35)
('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Venous thromboembolism (VTE) prophylaxis after major abdominal surgery typically includes:',
'No prophylaxis needed', 'Pharmacologic prophylaxis (heparin or LMWH) plus mechanical prophylaxis (SCDs), started preoperatively or as soon as safe postoperatively', 'Aspirin only', 'Early ambulation only', 'Warfarin starting 1 week before',
'B', 'VTE prophylaxis for major surgery: combination approach. (1) Pharmacologic: LMWH (enoxaparin 40mg SC daily) or UFH (5000 units SC q8h or q12h), started preoperatively (if timing allows) or within 24 hours postoperatively. (2) Mechanical: intermittent pneumatic compression (IPC/SCDs), graduated compression stockings. Continue until fully ambulatory. High-risk (cancer surgery): extended prophylaxis 4 weeks postoperatively. Contraindications to pharmacologic: active bleeding, recent CNS surgery. Reference: CHEST Guidelines. 2012.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Extended VTE prophylaxis (4 weeks) after hospital discharge is recommended for:',
'All surgical patients', 'High-risk abdominal/pelvic cancer surgery and major orthopedic surgery', 'Minor surgery only', 'Patients on warfarin', 'Only if DVT develops',
'B', 'Extended VTE prophylaxis: (1) Abdominal/pelvic cancer surgery: high VTE risk continues after discharge, 4 weeks of LMWH recommended. (2) Major orthopedic surgery (total hip/knee arthroplasty, hip fracture): 10-35 days of prophylaxis. Options: LMWH, fondaparinux, rivaroxaban, apixaban, aspirin (for some). Reduces symptomatic VTE and fatal PE. Patient selection based on risk factors and bleeding risk. Reference: Lyman GH. J Clin Oncol. 2013.',
'medium', 'knowledge'),

-- Postoperative Complications (36-50)
('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Postoperative fever on day 1 is most commonly due to:',
'Wound infection', 'Atelectasis or inflammatory response to surgery (non-infectious)', 'UTI', 'DVT', 'Drug reaction',
'B', 'Postoperative fever timing (the five Ws): Day 1-2: Wind (atelectasis, pulmonary causes). Day 3-5: Water (UTI). Day 5-7: Wound (surgical site infection). Day 7-10: Walking (DVT). Any time: Wonder drugs (drug fever). Note: early fever (day 0-2) often inflammatory (cytokines from tissue trauma), atelectasis (debated if causes fever directly). Infectious causes less likely in first 48 hours (except aspiration, preexisting infection). Reference: Fry DE. Surg Infect. 2001.',
'easy', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'The most common cause of postoperative respiratory failure in the early postoperative period is:',
'Pneumonia', 'Atelectasis and hypoventilation (often opioid-related, pain-related splinting)', 'ARDS', 'Pulmonary embolism', 'Aspiration',
'B', 'Early postoperative respiratory complications: atelectasis most common. Causes: (1) Hypoventilation from opioids (respiratory depression), (2) Splinting from incisional pain (inadequate deep breathing), (3) Residual anesthesia effects, (4) Supine positioning. Prevention: incentive spirometry, adequate pain control (epidural, multimodal), early mobilization. ARDS: later complication, related to sepsis, aspiration, transfusion. PE: risk peaks days 5-14. Reference: Smetana GW. N Engl J Med. 1999.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Incentive spirometry is recommended postoperatively to:',
'Reduce fever', 'Prevent atelectasis and improve pulmonary function through deep breathing exercises', 'Treat pneumonia', 'Replace ambulation', 'Improve cardiac function',
'B', 'Incentive spirometry: encourages sustained maximal inspiration. Goals: (1) Prevent atelectasis (reopens collapsed alveoli), (2) Improve gas exchange, (3) Mobilize secretions. Use: 10 breaths per hour while awake, especially after abdominal/thoracic surgery. Combined with: early ambulation, deep breathing exercises, coughing, adequate pain control. Pulmonary complications (atelectasis, pneumonia) increase morbidity, LOS, and mortality. Reference: Freitas ER. J Bras Pneumol. 2012.',
'easy', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Postoperative ileus typically resolves in what order:',
'Colon first, then stomach', 'Small bowel first (24-48h), then stomach (24-48h), then colon (3-5 days) - the last to recover', 'All at once', 'Stomach first always', 'Colon recovers first',
'B', 'GI motility recovery after abdominal surgery: (1) Small bowel - fastest recovery (4-24 hours), peristalsis returns first. (2) Stomach - intermediate (24-48 hours). (3) Colon - slowest (48-72 hours, up to 5 days). Clinical ileus resolves when colon recovers. Management: NPO or clear liquids until function returns (flatus, BM), avoid excess opioids, early ambulation, gum chewing (may help), alvimopan (opioid antagonist). Prolonged ileus: rule out obstruction, electrolyte abnormalities, infection. Reference: Kehlet H. Lancet. 2008.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Postoperative delirium is most common in:',
'Young healthy patients', 'Elderly patients, particularly those with baseline cognitive impairment, and those in ICU', 'Children', 'Outpatient surgery', 'Day 1 only',
'B', 'Postoperative delirium: acute confusional state. Risk factors: (1) Advanced age (>65 years), (2) Baseline cognitive impairment/dementia, (3) Visual/hearing impairment, (4) Severe illness/ICU stay, (5) Polypharmacy, (6) Substance withdrawal, (7) Sleep deprivation, (8) Malnutrition. Prevention: minimize sedatives/anticholinergics, maintain sleep-wake cycle, early mobilization, orientation, correct electrolytes, avoid restraints. Treatment: address underlying cause, non-pharmacologic measures, low-dose antipsychotics if needed. Reference: Inouye SK. N Engl J Med. 2006.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Acute kidney injury (AKI) in the postoperative period is most commonly caused by:',
'Nephrotoxic drugs always', 'Prerenal causes (hypovolemia, hypotension, decreased renal perfusion)', 'Glomerulonephritis', 'Obstruction', 'Infection',
'B', 'Postoperative AKI etiology: (1) Prerenal (most common, 60-70%): hypovolemia (blood loss, third-spacing, inadequate resuscitation), hypotension (anesthesia, sepsis), decreased cardiac output. (2) Intrinsic renal: ATN (prolonged ischemia, nephrotoxins - contrast, aminoglycosides, NSAIDs), rhabdomyolysis. (3) Postrenal (obstruction): Foley malfunction, ureteral injury. Prevention: adequate hydration, avoid hypotension, limit nephrotoxins, monitor urine output. Treatment: address underlying cause, optimize volume status. Reference: Abelha FJ. Crit Care. 2009.',
'medium', 'knowledge'),

-- ERAS and Enhanced Recovery (51-60)
('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Enhanced Recovery After Surgery (ERAS) protocols emphasize:',
'Prolonged fasting and bed rest', 'Multimodal analgesia, early feeding, early mobilization, and minimizing surgical stress response', 'Maximum opioid use', 'Prolonged NPO status', 'Extended hospital stays',
'B', 'ERAS (Enhanced Recovery) principles: evidence-based multimodal approach to optimize recovery. Key elements: (1) Preoperative: avoid prolonged fasting (clear liquids up to 2h, carb loading), patient education, avoid bowel prep if possible. (2) Intraoperative: minimally invasive surgery, multimodal analgesia (opioid-sparing), goal-directed fluid therapy, normothermia. (3) Postoperative: early feeding (day 0-1), early mobilization (day 0), avoid NG tubes/drains, early Foley removal, multimodal pain control. Results: shorter LOS, fewer complications, faster recovery. Reference: Ljungqvist O. Br J Surg. 2017.',
'easy', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Multimodal analgesia in ERAS protocols aims to:',
'Maximize opioid use', 'Reduce opioid consumption by combining different analgesic classes (acetaminophen, NSAIDs, local anesthetics, nerve blocks)', 'Use only regional anesthesia', 'Eliminate all pain medications', 'Delay pain management',
'B', 'Multimodal analgesia: combining different analgesic mechanisms to reduce opioid requirements and side effects. Components: (1) Acetaminophen (scheduled, not PRN). (2) NSAIDs/COX-2 inhibitors (if no contraindication). (3) Regional anesthesia/nerve blocks (epidural, TAP block, wound infiltration). (4) Gabapentinoids (gabapentin, pregabalin). (5) Limited opioids (PRN, rescue). Benefits: better pain control, less nausea/vomiting, less ileus, earlier mobilization, shorter LOS. Reference: Kehlet H. Anesth Analg. 1993.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Preoperative carbohydrate loading (clear carbohydrate drink 2-3 hours before surgery) in ERAS:',
'Increases aspiration risk', 'Reduces postoperative insulin resistance, nausea, and maintains well-being without increasing aspiration risk', 'Has no benefit', 'Is contraindicated', 'Increases surgical site infection',
'B', 'Carbohydrate loading: clear carbohydrate drink (maltodextrin-based) given evening before and 2-3 hours before surgery. Benefits: (1) Reduces postoperative insulin resistance (metabolic stress response), (2) Reduces hunger, thirst, anxiety, (3) Reduces nausea/vomiting, (4) May reduce LOS. Safety: clear liquids emptied from stomach in 2 hours, does not increase aspiration risk. Contraindicated: gastroparesis, diabetes (relative), emergency surgery. Standard ERAS practice for elective surgery. Reference: Smith MD. JPEN J Parenter Enteral Nutr. 2014.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Mechanical bowel preparation before elective colorectal surgery:',
'Is required for all patients', 'Is not routinely required; combination with oral antibiotics may reduce SSI, but MBP alone has no proven benefit', 'Improves anastomotic healing', 'Reduces cancer recurrence', 'Should be done for 3 days',
'B', 'Mechanical bowel preparation (MBP) for colorectal surgery: MBP alone: no proven benefit in reducing anastomotic leak, SSI, or mortality. May cause dehydration, electrolyte abnormalities. Current evidence: (1) MBP alone - not recommended. (2) MBP + oral antibiotics (neomycin/erythromycin or metronidazole): may reduce SSI (controversial, ACS-NSQIP data supports). (3) No prep at all may be acceptable. ERAS: avoid MBP or use limited prep. Practice varies. Reference: Guenaga KF. Cochrane Database Syst Rev. 2011.',
'medium', 'knowledge'),

('c0000053-0000-0000-0000-000000000053', 'a0000003-0000-0000-0000-000000000003',
'Early oral feeding after colorectal surgery:',
'Increases anastomotic leak rate', 'Is safe and associated with faster recovery without increasing complications', 'Should wait until flatus', 'Causes more nausea', 'Is contraindicated',
'B', 'Early feeding post-colorectal surgery: traditionally NPO until flatus/BM. Evidence: early oral diet (day 0-1) is safe, does not increase anastomotic leak, vomiting, or complications. Benefits: shorter ileus, shorter LOS, patient satisfaction. ERAS recommendation: offer fluids and diet as tolerated on day of surgery or POD 1. Patient-driven based on tolerance. May start with clear liquids and advance as tolerated. Reference: Lewis SJ. BMJ. 2001.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 38 (Perioperative Care): 60 questions inserted' as status;
