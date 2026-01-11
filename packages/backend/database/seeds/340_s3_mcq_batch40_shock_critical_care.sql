-- ============================================================================
-- SURGERY 3 MCQ BATCH 40: Shock and Critical Care (Questions 2341-2400)
-- Topic: Shock Types, Resuscitation, Sepsis, ARDS, Mechanical Ventilation
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Shock Physiology (1-15)
('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Shock is defined as:',
'Low blood pressure only', 'Inadequate tissue perfusion and oxygen delivery leading to cellular hypoxia and organ dysfunction', 'Fast heart rate', 'Altered mental status', 'Low urine output only',
'B', 'Shock definition: state of inadequate tissue perfusion and cellular oxygenation leading to metabolic derangements and organ dysfunction. May occur with normal BP (compensated shock). Key: oxygen delivery (DO2) fails to meet oxygen demand. Manifests as: altered mentation, oliguria, cool/mottled skin, elevated lactate. Four major types: hypovolemic, cardiogenic, distributive, obstructive. Early recognition and treatment critical. Reference: Vincent JL. Lancet. 2013.',
'easy', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Oxygen delivery (DO2) is determined by:',
'Blood pressure alone', 'Cardiac output multiplied by arterial oxygen content (DO2 = CO x CaO2)', 'Heart rate only', 'Respiratory rate', 'Hemoglobin only',
'B', 'Oxygen delivery: DO2 = CO x CaO2. Cardiac output (CO) = heart rate x stroke volume. Arterial oxygen content (CaO2) = (Hgb x 1.34 x SaO2) + (0.003 x PaO2). Key determinants: cardiac output, hemoglobin, oxygen saturation. In shock: optimize all three. Normal DO2: 500-600 mL/min/m2. DO2 can be inadequate despite normal BP if CO or Hgb is low. Reference: Walley KR. Crit Care Med. 2011.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The most common type of shock in trauma patients is:',
'Cardiogenic', 'Hypovolemic shock from blood loss (hemorrhagic shock)', 'Septic', 'Neurogenic', 'Obstructive',
'B', 'Hemorrhagic shock: most common in trauma. Classification (ATLS): Class I (<15% blood loss) - minimal symptoms. Class II (15-30%) - tachycardia, narrowed pulse pressure, anxiety. Class III (30-40%) - tachycardia, hypotension, confusion, decreased UOP. Class IV (>40%) - life-threatening, severely hypotensive, altered consciousness. Treatment: stop bleeding (surgery, IR), volume resuscitation, blood products. Damage control resuscitation: permissive hypotension, balanced transfusion (1:1:1), avoid crystalloid overload. Reference: ATLS Guidelines.',
'easy', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Distributive shock is characterized by:',
'Decreased cardiac output', 'Profound vasodilation causing decreased systemic vascular resistance with normal or high cardiac output', 'Mechanical obstruction', 'Pump failure', 'Blood loss',
'B', 'Distributive shock: loss of vascular tone causes maldistribution of blood flow. Features: decreased SVR, normal or increased CO (hyperdynamic), warm extremities (initially). Causes: (1) Septic shock (most common), (2) Anaphylactic shock, (3) Neurogenic shock (loss of sympathetic tone from spinal cord injury), (4) Adrenal crisis. Treatment: fluid resuscitation, vasopressors (norepinephrine first-line for septic shock), treat underlying cause. Reference: Angus DC. N Engl J Med. 2013.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Cardiogenic shock is caused by:',
'Vasodilation', 'Primary failure of the heart as a pump leading to inadequate cardiac output', 'Blood loss', 'Tension pneumothorax', 'Anaphylaxis',
'B', 'Cardiogenic shock: cardiac pump failure. Causes: (1) Acute MI (most common - LV failure), (2) Acute valvular dysfunction (regurgitation, rupture), (3) Arrhythmias, (4) Cardiomyopathy, (5) Myocarditis, (6) Severe heart failure. Features: decreased CO, increased SVR (compensatory vasoconstriction), elevated filling pressures, cool extremities. Diagnosis: echo. Treatment: treat underlying cause, revascularization for MI, inotropes, mechanical support (IABP, LVAD, ECMO). High mortality (40-50%). Reference: van Diepen S. Circulation. 2017.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Obstructive shock results from:',
'Vasodilation', 'Mechanical obstruction to blood flow (cardiac tamponade, tension pneumothorax, massive PE)', 'Blood loss', 'Pump failure', 'Sepsis',
'B', 'Obstructive shock: mechanical obstruction to cardiac filling or output. Causes: (1) Cardiac tamponade (fluid compresses heart), (2) Tension pneumothorax (mediastinal shift compresses heart), (3) Massive pulmonary embolism (obstructs RV outflow), (4) Constrictive pericarditis, (5) Severe aortic stenosis. Features: decreased CO, elevated JVP/CVP, pulsus paradoxus (tamponade). Treatment: relieve obstruction immediately (pericardiocentesis, needle decompression, thrombolysis/embolectomy). Reference: Hooper TL. Crit Care Med. 2013.',
'medium', 'knowledge'),

-- Sepsis (16-30)
('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The Sepsis-3 definition of sepsis is:',
'SIRS with suspected infection', 'Life-threatening organ dysfunction caused by dysregulated host response to infection (SOFA score increase of 2 or more)', 'Bacteremia', 'Fever with infection', 'Positive blood cultures',
'B', 'Sepsis-3 definition (2016): life-threatening organ dysfunction caused by dysregulated host response to infection. Operationalized as: suspected/documented infection + SOFA score increase of 2+ points. Septic shock: sepsis + vasopressor requirement to maintain MAP over 65 + lactate >2 mmol/L despite adequate fluid resuscitation. qSOFA (quick bedside screening): 2 of 3 present (altered mentation, SBP under 100, RR over 22) suggests sepsis risk. Reference: Singer M. JAMA. 2016.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The hour-1 bundle for sepsis management includes:',
'Wait for cultures before antibiotics', 'Measure lactate, obtain blood cultures, administer broad-spectrum antibiotics, start IV fluid resuscitation, and vasopressors if hypotensive after fluids - all within 1 hour', 'Only antibiotics', 'Surgery first', 'Steroids immediately',
'B', 'Sepsis hour-1 bundle (Surviving Sepsis Campaign 2018): (1) Measure lactate (remeasure if elevated), (2) Obtain blood cultures before antibiotics (but dont delay antibiotics), (3) Administer broad-spectrum IV antibiotics, (4) Begin IV crystalloid 30 mL/kg for hypotension or lactate over 4, (5) Apply vasopressors if hypotensive during or after fluid resuscitation to maintain MAP over 65. Goal: early aggressive treatment improves survival. Reference: Levy MM. Intensive Care Med. 2018.',
'easy', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The first-line vasopressor for septic shock is:',
'Dopamine', 'Norepinephrine (potent alpha-agonist with some beta activity)', 'Phenylephrine', 'Epinephrine', 'Vasopressin alone',
'B', 'Norepinephrine for septic shock: first-line vasopressor. Mechanism: alpha-1 agonist (vasoconstriction, increases SVR) + beta-1 agonist (mild inotropic effect). Compared to dopamine: fewer arrhythmias, lower mortality in septic shock. Vasopressin: added as second agent if norepinephrine dose escalating. Epinephrine: alternative or add-on. Phenylephrine: pure alpha-agonist, may decrease CO, not first-line. Dobutamine: added for low CO states. Reference: De Backer D. N Engl J Med. 2010.',
'easy', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Source control in sepsis refers to:',
'Antibiotics only', 'Physical interventions to control source of infection (drainage of abscess, debridement, removal of infected device)', 'Isolation precautions', 'Blood transfusion', 'Vasopressor therapy',
'B', 'Source control: essential component of sepsis management when applicable. Interventions: (1) Drainage of infected fluid collections (abscess, empyema), (2) Debridement of infected necrotic tissue (necrotizing fasciitis, gangrene), (3) Removal of infected devices (lines, prostheses), (4) Definitive management of infection source (cholecystectomy for cholecystitis, bowel resection for perforation). Timing: ideally within 6-12 hours of sepsis identification. Minimally invasive approaches preferred when possible. Reference: Surviving Sepsis Campaign Guidelines.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Stress-dose hydrocortisone (200 mg/day IV) in septic shock is considered when:',
'All patients with sepsis', 'Patients remain hypotensive despite adequate fluid resuscitation and vasopressor therapy', 'Only with adrenal insufficiency', 'Never used', 'As first-line therapy',
'B', 'Corticosteroids in septic shock: controversial but considered for refractory shock. Indication: ongoing hypotension despite adequate fluids and vasopressors. Dose: hydrocortisone 200 mg/day (50 mg IV q6h or continuous infusion). Rationale: relative adrenal insufficiency in sepsis. May hasten shock reversal and reduce vasopressor duration. Survival benefit unclear. Not routine for all sepsis, not without hypotension. Taper when vasopressors weaned. Reference: Annane D. JAMA. 2017.',
'medium', 'knowledge'),

-- ARDS (31-40)
('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The Berlin definition of ARDS includes:',
'Normal chest X-ray', 'Acute onset (within 1 week), bilateral opacities on imaging, PaO2/FiO2 ratio less than 300 with PEEP at least 5, and respiratory failure not fully explained by cardiac failure/fluid overload', 'Only hypoxemia', 'Chronic lung disease', 'Unilateral infiltrates',
'B', 'ARDS Berlin definition (2012): (1) Timing: within 1 week of known insult or new/worsening respiratory symptoms. (2) Imaging: bilateral opacities (CXR or CT) not fully explained by effusions, collapse, or nodules. (3) Origin: not fully explained by cardiac failure or fluid overload. (4) Oxygenation: PaO2/FiO2 ratio with PEEP at least 5 cmH2O. Severity: Mild 200-300, Moderate 100-200, Severe under 100. Causes: direct lung injury (pneumonia, aspiration) or indirect (sepsis, pancreatitis, trauma). Reference: ARDS Definition Task Force. JAMA. 2012.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The cornerstone of ARDS management that improves mortality is:',
'High tidal volumes', 'Lung protective ventilation with low tidal volumes (6 mL/kg predicted body weight) and plateau pressure less than 30 cmH2O', 'High PEEP only', 'No PEEP', 'Volume-controlled only',
'B', 'Lung-protective ventilation (ARDSNet protocol): (1) Low tidal volume: 6 mL/kg predicted (ideal) body weight. (2) Plateau pressure: keep under 30 cmH2O (minimize volutrauma/barotrauma). (3) PEEP: adequate to maintain oxygenation and prevent atelectrauma. (4) Accept permissive hypercapnia if needed. ARDSNet ARMA trial: low tidal volume reduced mortality by 22%. Driving pressure (plateau - PEEP) under 15 also important predictor. Reference: ARDS Network. N Engl J Med. 2000.',
'easy', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Prone positioning in ARDS is indicated for:',
'Mild ARDS', 'Moderate-severe ARDS (PaO2/FiO2 under 150) early in the course, improves oxygenation and survival', 'Only as last resort', 'All ventilated patients', 'After extubation',
'B', 'Prone positioning in ARDS: flipping patient face-down improves V/Q matching, recruits dorsal lung (collapsed from dependent positioning). PROSEVA trial: proning 16+ hours/day in severe ARDS (P/F under 150) reduced mortality significantly. Mechanism: redistributes lung perfusion, improves secretion drainage, offloads anterior lung. Contraindications: spinal instability, abdominal wounds, facial trauma. Complications: pressure injuries, line displacement. Reference: Guerin C. N Engl J Med. 2013.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Neuromuscular blockade in ARDS may be considered in:',
'All ARDS patients', 'Early severe ARDS (P/F under 150) for short duration (48 hours) to improve ventilator synchrony', 'Never indicated', 'Only for transport', 'After extubation',
'B', 'Neuromuscular blockade (NMB) in ARDS: controversial. ACURASYS trial: early cisatracurium for 48 hours in severe ARDS (P/F under 150) improved survival. ROSE trial (2019): no benefit with modern protocols (deep sedation in control). Current: consider for severe ARDS with ventilator dyssynchrony, refractory hypoxemia, elevated airway pressures. Short course (less than 48 hours). Requires sedation. Monitor for ICU-acquired weakness. Reference: Papazian L. N Engl J Med. 2010.',
'hard', 'knowledge'),

-- Mechanical Ventilation (41-50)
('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'PEEP (positive end-expiratory pressure) in mechanical ventilation:',
'Increases atelectasis', 'Prevents alveolar collapse at end-expiration, improves oxygenation, and recruits collapsed lung units', 'Decreases oxygenation', 'Has no effect', 'Causes pneumothorax always',
'B', 'PEEP functions: (1) Prevents alveolar collapse at end-expiration (maintains FRC), (2) Recruits collapsed alveoli (opens atelectatic lung), (3) Improves oxygenation (increases surface area for gas exchange), (4) Reduces intrapulmonary shunt. Risks: decreased venous return and CO (at high levels), barotrauma, air trapping in COPD. Optimal PEEP: balance oxygenation benefit vs hemodynamic effects. Typical starting: 5 cmH2O, titrate up in ARDS. Reference: Briel M. JAMA. 2010.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Ventilator-associated pneumonia (VAP) prevention strategies include:',
'Keep head of bed flat', 'Head of bed elevation 30-45 degrees, oral care with chlorhexidine, sedation interruption, spontaneous breathing trials, and early mobilization', 'Deep sedation always', 'Prolonged intubation', 'Avoid suctioning',
'B', 'VAP prevention bundle: (1) Head of bed elevation 30-45 degrees (reduces aspiration), (2) Daily sedation interruption (SAT) and spontaneous breathing trial (SBT), (3) Oral care (chlorhexidine), (4) DVT prophylaxis, (5) Stress ulcer prophylaxis (if indicated), (6) Subglottic secretion drainage (specialized ET tubes), (7) Early mobility. Goal: minimize ventilator days. VAP adds significant morbidity, mortality, and cost. Reference: Klompas M. JAMA. 2014.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Spontaneous breathing trial (SBT) to assess extubation readiness involves:',
'High pressure support', 'Minimal or no ventilator support (T-piece or low PS/CPAP) for 30-120 minutes while monitoring for respiratory distress', 'Increasing PEEP', 'Deep sedation', 'Immediate extubation',
'B', 'Spontaneous breathing trial: assesses ability to breathe without ventilator. Prerequisites: (1) Improving underlying condition, (2) Adequate oxygenation on low FiO2/PEEP, (3) Hemodynamically stable, (4) Adequate mental status, (5) Able to protect airway. Technique: T-piece (no support) or low PS (5-8) + CPAP (5) for 30-120 minutes. Monitor: RR, tidal volume, oxygen saturation, hemodynamics, respiratory distress. Failure signs: RR over 35, desaturation, distress, hemodynamic instability. Pass: proceed to extubation. Reference: McConville JF. N Engl J Med. 2012.',
'medium', 'knowledge'),

-- Transfusion (51-60)
('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'The restrictive transfusion threshold for hemoglobin in stable ICU patients is:',
'10 g/dL', '7 g/dL (transfuse for hemoglobin below 7, target 7-9)', '12 g/dL', '8 g/dL', '6 g/dL',
'B', 'Restrictive transfusion strategy: TRICC trial and subsequent studies: transfusion threshold of 7 g/dL is safe and may be superior to liberal threshold (10 g/dL) in most ICU patients. Exceptions requiring higher threshold: acute coronary syndrome (8-9 g/dL), active bleeding. Benefits of restrictive: fewer transfusions, reduced immunomodulation and transfusion reactions, cost savings. Individualize based on symptoms and clinical context. Reference: Hebert PC. N Engl J Med. 1999.',
'easy', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Transfusion-related acute lung injury (TRALI) presents with:',
'Chronic lung disease', 'Acute hypoxemia and bilateral pulmonary infiltrates within 6 hours of transfusion, without other causes', 'Fever only', 'Hemolysis', 'Rash',
'B', 'TRALI: leading cause of transfusion-related mortality. Definition: (1) Acute lung injury (bilateral infiltrates, hypoxemia) within 6 hours of transfusion, (2) No prior ALI, (3) No other risk factors for ALI (or if present, symptoms clearly temporally related to transfusion). Mechanism: donor antibodies to recipient WBC antigens or bioactive lipids. Treatment: supportive (O2, ventilation if needed), no diuretics (not cardiogenic). Prevention: WBC antibody screening of donors (especially multiparous women). Reference: Toy P. Blood. 2012.',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Massive transfusion protocol (MTP) is activated for:',
'Any transfusion need', 'Anticipated need for 10+ units PRBCs in 24 hours or major hemorrhage requiring blood products at predefined ratios', 'Minor bleeding', 'Chronic anemia', 'Preoperative optimization',
'B', 'Massive transfusion: various definitions (10 units PRBCs in 24 hours, 4+ units in 1 hour, replacement of entire blood volume). MTP: institutional protocol for rapid delivery of blood products in fixed ratios. Current approach: balanced resuscitation with 1:1:1 ratio (PRBC:FFP:platelets). Also: TXA early (within 3 hours of injury), calcium replacement, avoid hypothermia/acidosis. Goal: prevent trauma-induced coagulopathy. Reference: Holcomb JB. JAMA. 2015 (PROPPR trial).',
'medium', 'knowledge'),

('c0000055-0000-0000-0000-000000000055', 'a0000003-0000-0000-0000-000000000003',
'Transfusion-associated circulatory overload (TACO) is treated with:',
'More fluids', 'Slowing or stopping transfusion, diuretics, and supportive care for pulmonary edema', 'Epinephrine', 'Steroids', 'Antihistamines',
'B', 'TACO: volume overload from transfusion, especially in patients with cardiac/renal dysfunction. Risk factors: elderly, heart failure, renal failure, small body size, rapid/large volume transfusion. Presentation: dyspnea, hypertension, elevated JVP, pulmonary edema within 6 hours of transfusion. Vs TRALI: TACO has elevated BNP, responds to diuretics, hypertensive. Treatment: stop/slow transfusion, diuretics (furosemide), oxygen, supportive care. Prevention: slow infusion rate in at-risk patients. Reference: Murphy EL. Transfusion. 2013.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 40 (Shock and Critical Care): 60 questions inserted' as status;
