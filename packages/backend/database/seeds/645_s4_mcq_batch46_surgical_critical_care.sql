-- Surgery 4 MCQ Question Bank - Batch 46
-- Section H: Special Topics - Surgical Critical Care
-- 40 Questions

-- Topic: Surgical Critical Care
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000046-0000-0000-0000-000000000046', 'Surgical Critical Care', 'a0000004-0000-0000-0000-000000000004', 'ICU management, shock, sepsis, and multi-organ dysfunction', 46, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Shock is defined as:',
 'Low blood pressure only', 'Inadequate tissue perfusion and oxygen delivery to meet metabolic demands', 'High cardiac output', 'Normal physiology', 'Only hypovolemia',
 'B', 'Shock: circulatory failure with inadequate tissue perfusion and oxygenation. May have normal, low, or high BP. Recognize by signs of poor perfusion: altered mental status, oliguria, elevated lactate, cool extremities.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'The four main types of shock are:',
 'Only cardiogenic', 'Hypovolemic cardiogenic distributive and obstructive', 'Hemorrhagic only', 'Septic only', 'Neurogenic only',
 'B', 'Shock classification: hypovolemic (hemorrhage, dehydration), cardiogenic (MI, arrhythmia), distributive (septic, neurogenic, anaphylactic), obstructive (PE, tamponade, tension pneumothorax). Treatment depends on type.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Hypovolemic shock is characterized by:',
 'Warm extremities and low SVR', 'Low preload low cardiac output and high systemic vascular resistance', 'High cardiac output', 'Low SVR', 'Normal filling pressures',
 'B', 'Hypovolemic shock hemodynamics: decreased preload (low CVP, PCWP), decreased cardiac output, compensatory increased SVR (cold, clamped down). Tachycardia, narrow pulse pressure, cool extremities.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Cardiogenic shock is characterized by:',
 'Low filling pressures', 'Low cardiac output with elevated filling pressures', 'High cardiac output', 'Low SVR', 'Hypovolemia',
 'B', 'Cardiogenic shock: pump failure. Low cardiac output, elevated filling pressures (high PCWP), compensatory elevated SVR. Causes: MI, arrhythmia, acute valve failure. Treatment: inotropes, IABP, revascularization.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Distributive shock such as septic shock shows:',
 'High SVR and low cardiac output', 'Low systemic vascular resistance with high or normal cardiac output', 'Elevated filling pressures', 'Low heart rate', 'Cold extremities',
 'B', 'Distributive shock: vasodilation (low SVR), initially high cardiac output (hyperdynamic). Warm shock: warm extremities, bounding pulses. Late septic shock may have myocardial depression. Treat underlying cause + vasopressors.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Obstructive shock is caused by:',
 'Hypovolemia', 'Mechanical obstruction to cardiac filling or output such as cardiac tamponade or PE', 'Sepsis', 'Heart attack', 'Distributive causes',
 'B', 'Obstructive shock: external compression or obstruction. Causes: cardiac tamponade, tension pneumothorax, massive PE. Low cardiac output, elevated filling pressures. Treatment: relieve obstruction (pericardiocentesis, chest tube, embolectomy).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Lactate elevation in shock indicates:',
 'Normal metabolism', 'Anaerobic metabolism due to tissue hypoperfusion', 'Liver failure only', 'Kidney failure only', 'No clinical significance',
 'B', 'Lactate: marker of tissue hypoxia (anaerobic glycolysis), poor prognosis indicator. Normal <2 mmol/L. >4 mmol/L = severe. Lactate clearance correlates with survival. Non-hypoperfusion causes: liver failure, medications.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Sepsis is defined as:',
 'Bacteremia', 'Life-threatening organ dysfunction caused by dysregulated host response to infection', 'Any infection', 'Low blood pressure only', 'Fever only',
 'B', 'Sepsis (Sepsis-3): life-threatening organ dysfunction due to dysregulated host response to infection. Organ dysfunction = SOFA score increase >=2. qSOFA screening: RR >=22, altered mentation, SBP <=100.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Septic shock is defined as:',
 'Same as sepsis', 'Sepsis with hypotension requiring vasopressors and lactate greater than 2 despite adequate resuscitation', 'Any infection with fever', 'Bacteremia', 'UTI with fever',
 'B', 'Septic shock: sepsis with vasopressor requirement to maintain MAP >=65 despite adequate fluid resuscitation AND lactate >2 mmol/L. Indicates profound circulatory, cellular, metabolic abnormalities. High mortality.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'The Surviving Sepsis Campaign Hour-1 bundle includes:',
 'Antibiotics only', 'Lactate measurement blood cultures broad-spectrum antibiotics fluids and vasopressors if needed', 'Surgery only', 'No specific interventions', 'Only IV access',
 'B', 'Sepsis Hour-1 bundle: measure lactate (remeasure if >2), obtain blood cultures before antibiotics, administer broad-spectrum antibiotics, 30 mL/kg crystalloid for hypotension or lactate >=4, start vasopressors if hypotensive during/after fluids.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'The first-line vasopressor for septic shock is:',
 'Dopamine', 'Norepinephrine', 'Epinephrine', 'Vasopressin', 'Phenylephrine',
 'B', 'Norepinephrine: first-line vasopressor for septic shock. Alpha-1 (vasoconstriction) + beta-1 (inotropy). Raises MAP effectively. Add vasopressin (non-catecholamine) as second agent. Epinephrine if additional agent needed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Source control in sepsis refers to:',
 'Blood pressure control', 'Physical measures to eliminate infectious focus such as drainage or debridement', 'Antibiotic therapy only', 'Fluid resuscitation', 'Vasopressor therapy',
 'B', 'Source control: essential in sepsis. Remove infected devices, drain abscesses, debride necrotic tissue, definitive surgery when needed. Antibiotics alone insufficient if undrained collection or necrotic tissue. Early source control improves survival.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Multi-organ dysfunction syndrome (MODS) is:',
 'Single organ failure', 'Failure of two or more organ systems due to systemic inflammatory response', 'Only seen in sepsis', 'Only affects lungs', 'Always irreversible',
 'B', 'MODS: progressive dysfunction of 2+ organ systems. Triggered by sepsis, trauma, pancreatitis, burns. Organs: respiratory (ARDS), renal (AKI), hepatic, cardiovascular, hematologic (DIC), neurologic. High mortality correlates with number of organs.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'ARDS is defined by:',
 'Chronic lung disease', 'Acute onset bilateral infiltrates hypoxemia not explained by heart failure and PaO2/FiO2 ratio abnormality', 'Only pulmonary edema', 'Pneumonia only', 'COPD exacerbation',
 'B', 'ARDS Berlin criteria: acute onset (within 1 week), bilateral opacities on CXR/CT (not fully explained by effusion, collapse, nodules), respiratory failure not fully explained by cardiac failure, PaO2/FiO2 <=300 (mild), <=200 (moderate), <=100 (severe).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Lung protective ventilation in ARDS includes:',
 'High tidal volumes', 'Low tidal volume (6 mL/kg ideal body weight) and plateau pressure less than 30', 'High PEEP only', 'No PEEP', 'Pressure control only',
 'B', 'Lung protective ventilation (ARDSnet): low tidal volume (6 mL/kg IBW), plateau pressure <30 cm H2O, permissive hypercapnia acceptable. Reduces ventilator-induced lung injury. PEEP to maintain oxygenation. Mortality benefit proven.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Prone positioning in severe ARDS:',
 'Has no benefit', 'Improves oxygenation and reduces mortality when used early for prolonged periods', 'Increases mortality', 'Is contraindicated', 'Only used briefly',
 'B', 'Prone positioning: for severe ARDS (P/F <150). Improves V/Q matching, recruits dorsal lung. PROSEVA trial: 16+ hours/day reduced mortality. Start early, continue until improvement. Logistics challenging but effective.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Acute kidney injury in the ICU:',
 'Is rare', 'Is common and associated with increased mortality and length of stay', 'Has no impact on outcomes', 'Always requires dialysis', 'Is always prerenal',
 'B', 'AKI in ICU: affects 50%+ of critically ill. Causes: sepsis, nephrotoxins, ischemia, obstruction. Associated with increased mortality, LOS, progression to CKD. KDIGO staging by creatinine and urine output.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Indications for renal replacement therapy in AKI include:',
 'Any creatinine elevation', 'Refractory hyperkalemia acidosis volume overload or uremic symptoms', 'Only if dialysis-dependent at baseline', 'Mild azotemia', 'Only uremic symptoms',
 'B', 'RRT indications (AEIOU): Acidosis (refractory), Electrolytes (hyperkalemia refractory), Intoxication (dialyzable toxin), Overload (volume refractory to diuretics), Uremia (encephalopathy, pericarditis, bleeding).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Continuous renal replacement therapy (CRRT) compared to intermittent hemodialysis in ICU:',
 'Is contraindicated', 'Provides more hemodynamic stability and is preferred in unstable patients', 'Has faster clearance', 'Is never used', 'Requires more anticoagulation',
 'B', 'CRRT: slower, continuous solute and fluid removal. Better hemodynamic tolerance in unstable patients. Modes: CVVH, CVVHD, CVVHDF. IHD: faster clearance, intermittent, for stable patients. Mortality similar overall.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Disseminated intravascular coagulation (DIC) is characterized by:',
 'Isolated thrombosis', 'Simultaneous widespread thrombosis and bleeding with consumption of factors and platelets', 'Only bleeding', 'Only low platelets', 'High fibrinogen',
 'B', 'DIC: systemic activation of coagulation. Microvascular thrombosis causes organ dysfunction. Consumption of factors/platelets causes bleeding. Labs: low platelets, prolonged PT/PTT, low fibrinogen, elevated D-dimer, schistocytes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of DIC focuses on:',
 'Heparin always', 'Treating the underlying cause with supportive transfusion as needed', 'Only FFP', 'Only platelets', 'Anticoagulation always',
 'B', 'DIC treatment: treat underlying cause (sepsis, malignancy, obstetric). Supportive transfusion: platelets if bleeding/<10-20k, FFP/cryo if bleeding/low fibrinogen. Heparin controversial - consider in thrombosis-predominant DIC.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Stress ulcer prophylaxis in ICU:',
 'Is not needed', 'Is indicated in high-risk patients including those on mechanical ventilation or with coagulopathy', 'Is always H2 blockers', 'Increases C. diff risk', 'Never uses PPI',
 'B', 'Stress ulcer prophylaxis: for high-risk ICU patients (mechanical ventilation >48h, coagulopathy). PPIs or H2 blockers. PPIs more effective but associated with increased pneumonia, C. diff. Balance benefits/risks.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'DVT prophylaxis in surgical ICU patients:',
 'Is optional', 'Is essential using pharmacological and/or mechanical methods', 'Is contraindicated', 'Only mechanical', 'Only pharmacological',
 'B', 'VTE prophylaxis: critically ill at high risk. Pharmacological: LMWH, UFH, or fondaparinux unless contraindicated. Mechanical: SCDs if bleeding risk. Combine if very high risk. Early mobilization when possible.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Goal-directed therapy for hemodynamic resuscitation involves:',
 'Fixed protocols only', 'Using dynamic parameters to guide fluid and vasopressor therapy', 'Only blood pressure targets', 'No monitoring needed', 'Static measurements only',
 'B', 'Goal-directed therapy: use physiologic targets (lactate clearance, ScvO2, cardiac output) to guide resuscitation. Dynamic parameters (PPV, SVV, passive leg raise) predict fluid responsiveness better than static (CVP).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Central venous oxygen saturation (ScvO2) reflects:',
 'Arterial oxygenation', 'Balance between oxygen delivery and consumption', 'Lung function only', 'Cardiac output only', 'Hemoglobin only',
 'B', 'ScvO2: oxygen saturation in central venous blood (SVC). Reflects O2 extraction. Low ScvO2 (<70%) suggests inadequate delivery or increased demand. High ScvO2 can indicate poor extraction (septic shock mitochondrial dysfunction).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Fluid responsiveness is best predicted by:',
 'Central venous pressure', 'Dynamic parameters such as pulse pressure variation or passive leg raise', 'Urine output', 'Blood pressure', 'Heart rate',
 'B', 'Fluid responsiveness: dynamic tests better than static (CVP unreliable). PPV/SVV (in mechanically ventilated, sinus rhythm). Passive leg raise (autotransfusion effect). Predict if CO will increase with fluids. Avoid unnecessary fluid.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Abdominal compartment syndrome:',
 'Is low abdominal pressure', 'Is intra-abdominal pressure greater than 20 mmHg with new organ dysfunction', 'Only occurs with ascites', 'Is not a surgical emergency', 'Never requires surgery',
 'B', 'Abdominal compartment syndrome: sustained IAP >20 mmHg with new organ failure (renal, respiratory, cardiovascular). Causes: massive resuscitation, abdominal surgery, pancreatitis, ascites. Treatment: decompressive laparotomy if medical measures fail.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Intra-abdominal pressure is measured via:',
 'Direct measurement only', 'Bladder pressure measurement using a Foley catheter', 'Blood pressure cuff', 'Ultrasound', 'CT scan',
 'B', 'IAP measurement: bladder pressure via Foley (gold standard). Instill 25 mL saline, measure at end-expiration, supine, zeroed at symphysis pubis. Normal <12 mmHg. IAH: sustained >=12. ACS: >20 with organ dysfunction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Nutritional support in critically ill patients should be:',
 'Withheld for first week', 'Initiated early preferably enterally within 24-48 hours', 'Only parenteral', 'Delayed until extubation', 'Only after bowel sounds',
 'B', 'Early enteral nutrition: within 24-48 hours if hemodynamically stable. Maintains gut integrity, reduces infection. Trophic/full feeding. TPN if EN contraindicated/not tolerated for >7 days. Don''t wait for bowel sounds.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Enteral nutrition is preferred over parenteral because:',
 'Is cheaper only', 'Maintains gut integrity reduces infection and has fewer complications', 'Is more convenient', 'Has higher caloric content', 'Provides better protein',
 'B', 'Enteral nutrition benefits: maintains gut mucosal integrity (reduces bacterial translocation), lower infection rate, fewer metabolic complications, cheaper, more physiologic. TPN: central line risk, infection, liver dysfunction.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Blood glucose management in critically ill patients targets:',
 'Tight control 80-110 mg/dL', 'Moderate control 140-180 mg/dL avoiding hypoglycemia', 'Any glucose level acceptable', 'Very high glucose preferred', 'No monitoring needed',
 'B', 'Glucose control in ICU: target 140-180 mg/dL. NICE-SUGAR trial: tight control (81-108) increased mortality due to hypoglycemia. Avoid hypoglycemia. Insulin infusion for persistent hyperglycemia. Moderate control is safer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Ventilator-associated pneumonia prevention bundles include:',
 'No specific measures', 'Head of bed elevation oral care and subglottic suctioning', 'Routine antibiotics', 'Frequent bronchoscopy', 'Prolonged sedation',
 'B', 'VAP prevention bundle: HOB elevation 30-45 degrees, daily sedation interruption, daily assessment of readiness to extubate, oral care with chlorhexidine, peptic ulcer prophylaxis, DVT prophylaxis, subglottic suctioning ETT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Central line-associated bloodstream infection prevention includes:',
 'No specific measures', 'Hand hygiene maximal barrier precautions chlorhexidine skin prep and daily line review', 'Routine antibiotics', 'Weekly line changes', 'No dressing needed',
 'B', 'CLABSI prevention bundle: hand hygiene, maximal sterile barriers, chlorhexidine skin antisepsis, optimal site selection (avoid femoral), daily review of line necessity, prompt removal when not needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Sedation in mechanically ventilated patients should:',
 'Be continuous and deep', 'Be minimized using light sedation targets and daily interruption', 'Use only benzodiazepines', 'Continue until extubation', 'Not use protocols',
 'B', 'Sedation strategy: light sedation (RASS 0 to -2), daily spontaneous awakening trial (SAT) paired with breathing trial (SBT). Avoid deep sedation. Dexmedetomidine or propofol preferred over benzodiazepines. Reduces delirium, ventilator days.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'ICU delirium:',
 'Is benign', 'Is common associated with poor outcomes and should be prevented and detected', 'Cannot be prevented', 'Only occurs in elderly', 'Is always drug-related',
 'B', 'ICU delirium: acute brain dysfunction, very common (60-80% ventilated patients). Associated with prolonged ventilation, ICU stay, cognitive decline, mortality. Prevention: ABCDEF bundle. Detection: CAM-ICU. Treat underlying causes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'The ABCDEF bundle for ICU care includes:',
 'Antibiotics only', 'Assess pain manage breathing coordination sedation delirium early mobility family engagement', 'Only sedation protocols', 'Only pain management', 'No specific components',
 'B', 'ABCDEF bundle: Assess/prevent/manage pain, Both SAT and SBT, Choice of sedation, Delirium assess/prevent/manage, Early mobility, Family engagement. Evidence-based approach to reduce ICU complications, improve outcomes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Early mobilization in ICU patients:',
 'Is dangerous', 'Reduces delirium ventilator days and improves functional outcomes', 'Should wait until discharge', 'Increases complications', 'Is not feasible',
 'B', 'Early mobilization: safe and beneficial in appropriately selected ICU patients, even on mechanical ventilation. Reduces delirium, ICU-acquired weakness, ventilator days. Requires multidisciplinary team. Part of ABCDEF bundle.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'ICU-acquired weakness:',
 'Is rare', 'Is common neuromuscular disorder affecting critically ill with prolonged weakness', 'Only affects arms', 'Is always reversible within days', 'Cannot be prevented',
 'B', 'ICU-acquired weakness: critical illness polyneuropathy and/or myopathy. Common after severe illness, sepsis, MODS. Symmetric, proximal > distal, respiratory muscles affected. Prolongs ventilator weaning. Prevention: early mobilization, glucose control.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000046-0000-0000-0000-000000000046', 'a0000004-0000-0000-0000-000000000004',
 'Transfusion threshold for hemoglobin in stable critically ill patients:',
 'Always transfuse if less than 10', 'Restrictive strategy targeting hemoglobin 7-8 g/dL is appropriate', 'Transfuse if less than 12', 'Never transfuse', 'Always transfuse if less than 9',
 'B', 'Restrictive transfusion: target Hgb 7-8 g/dL in stable, non-bleeding patients. Liberal transfusion (threshold 10) doesn''t improve outcomes, may increase complications. Higher thresholds for active bleeding, ACS. Individualize.', 'medium', 'knowledge');
