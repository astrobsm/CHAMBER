-- ============================================================================
-- SURGERY 3 CME ARTICLE 80: Surgical Critical Care
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000146-0000-0000-0000-000000000146', 'a0000003-0000-0000-0000-000000000003', 'Surgical Critical Care', 'ICU management of the surgical patient')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000380-0000-0000-0000-000000000080',
    'c0000146-0000-0000-0000-000000000146',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Critical Care: ICU Essentials',
    'Managing the Complex Surgical Patient',
    'This article covers ICU admission criteria, mechanical ventilation basics, hemodynamic monitoring, sepsis bundles, acute kidney injury, ICU nutrition, sedation and analgesia, VAP prevention, and ICU delirium.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000380-0001-0000-0000-000000000001', 'd0000380-0000-0000-0000-000000000080', 1,
'ARDS (Acute Respiratory Distress Syndrome) Berlin criteria include:',
'Onset within 1 month of insult', 'Acute onset within 1 week, bilateral opacities on imaging, PaO2/FiO2 ratio 300 or less, and not fully explained by cardiac failure', 'PaO2/FiO2 greater than 400', 'Unilateral infiltrates only',
'B', 'ARDS Berlin Definition: TIMING - within 1 WEEK of known clinical insult or worsening respiratory symptoms. IMAGING - bilateral opacities on CXR/CT not explained by effusions, collapse, or nodules. ORIGIN - not fully explained by cardiac failure or fluid overload. OXYGENATION (PaO2/FiO2 on PEEP >=5): Mild 200-300, Moderate 100-200, Severe <=100. Causes: pneumonia, sepsis, aspiration, trauma, pancreatitis, transfusion.', 'medium'),

('e0000380-0002-0000-0000-000000000002', 'd0000380-0000-0000-0000-000000000080', 2,
'Lung protective ventilation strategy in ARDS includes:',
'High tidal volumes of 12 mL/kg', 'Low tidal volumes (6 mL/kg predicted body weight), plateau pressure less than 30 cmH2O, and permissive hypercapnia', 'Zero PEEP', 'High respiratory rates of 40 per minute',
'B', 'Lung protective ventilation (ARDSNet): LOW TIDAL VOLUME (6 mL/kg PREDICTED body weight, not actual), PLATEAU PRESSURE <30 cmH2O (prevents barotrauma), adequate PEEP (prevents atelectrauma), permissive HYPERCAPNIA (allow CO2 to rise rather than increase volumes). Reduces mortality compared to traditional high-volume ventilation. Goal pH >7.15-7.20. Prone positioning for severe ARDS improves oxygenation and mortality.', 'medium'),

('e0000380-0003-0000-0000-000000000003', 'd0000380-0000-0000-0000-000000000080', 3,
'The Surviving Sepsis Campaign 1-hour bundle includes:',
'Delayed fluid resuscitation', 'Measure lactate, obtain blood cultures, administer broad-spectrum antibiotics, give crystalloid for hypotension/lactate over 4, and apply vasopressors if hypotensive after fluids', 'No source control', 'Steroids for all patients',
'B', 'Surviving Sepsis Campaign 1-HOUR BUNDLE: (1) Measure LACTATE (remeasure if >2); (2) Obtain BLOOD CULTURES before antibiotics; (3) Administer BROAD-SPECTRUM ANTIBIOTICS; (4) Begin rapid infusion of 30 mL/kg CRYSTALLOID for hypotension or lactate >=4; (5) Apply VASOPRESSORS if hypotensive during or after fluid resuscitation to maintain MAP >=65. Early implementation improves outcomes. Reassess volume status and perfusion. Source control within 6-12 hours.', 'medium'),

('e0000380-0004-0000-0000-000000000004', 'd0000380-0000-0000-0000-000000000080', 4,
'Central venous pressure (CVP) as a guide for fluid resuscitation:',
'Is the best indicator of fluid responsiveness', 'Is a poor predictor of fluid responsiveness; dynamic parameters like stroke volume variation are more reliable', 'Should always be maintained above 20', 'Is only measured in the subclavian vein',
'B', 'CVP for fluid resuscitation: traditionally targeted CVP 8-12 mmHg in sepsis. However, CVP is POOR PREDICTOR of fluid responsiveness (does not reliably predict whether patient will increase cardiac output with fluids). DYNAMIC PARAMETERS better: stroke volume variation (SVV), pulse pressure variation (PPV), passive leg raise test, fluid challenge with SV monitoring. CVP still useful for trends, right heart function, and guiding upper limit of filling. Move toward individualized, dynamic assessment.', 'medium'),

('e0000380-0005-0000-0000-000000000005', 'd0000380-0000-0000-0000-000000000080', 5,
'VAP (Ventilator-Associated Pneumonia) prevention bundle includes:',
'Flat supine positioning', 'Head of bed elevation 30-45 degrees, daily sedation interruption and assessment for extubation, DVT and peptic ulcer prophylaxis, and oral care with chlorhexidine', 'Prolonged ventilation', 'Avoiding oral hygiene',
'B', 'VAP prevention bundle: (1) HEAD OF BED elevation 30-45 degrees (reduces aspiration); (2) Daily SEDATION INTERRUPTION and spontaneous breathing trial (assess readiness for extubation); (3) DVT PROPHYLAXIS; (4) Peptic ULCER PROPHYLAXIS; (5) ORAL CARE with chlorhexidine. Also: subglottic suction ETT, minimize sedation, early mobilization, avoid unnecessary reintubation. Bundle compliance reduces VAP incidence significantly.', 'easy'),

('e0000380-0006-0000-0000-000000000006', 'd0000380-0000-0000-0000-000000000080', 6,
'Acute kidney injury (AKI) in ICU is defined by KDIGO criteria as:',
'Only urine output less than 100 mL/day', 'Increase in creatinine by 0.3 mg/dL within 48 hours, OR increase to 1.5 times baseline within 7 days, OR urine output less than 0.5 mL/kg/hr for 6 hours', 'Creatinine above 5 only', 'Need for dialysis only',
'B', 'KDIGO AKI criteria: Stage 1 - creatinine increase >=0.3 mg/dL within 48 hours OR >=1.5-1.9x baseline within 7 days OR urine <0.5 mL/kg/hr for 6-12 hours. Stage 2 - creatinine 2-2.9x baseline OR urine <0.5 mL/kg/hr for >=12 hours. Stage 3 - creatinine >=3x baseline OR >=4.0 mg/dL OR initiation of RRT OR urine <0.3 mL/kg/hr for >=24 hours or anuria >=12 hours. Early recognition important for management.', 'medium'),

('e0000380-0007-0000-0000-000000000007', 'd0000380-0000-0000-0000-000000000080', 7,
'ICU delirium:',
'Is harmless and self-limiting', 'Is associated with increased mortality, prolonged ICU stay, and long-term cognitive impairment; prevention and early detection are important', 'Should be treated with benzodiazepines', 'Only occurs in elderly patients',
'B', 'ICU delirium: acute brain dysfunction. Incidence 60-80% in ventilated patients. CONSEQUENCES: increased mortality, prolonged ICU/hospital stay, long-term cognitive impairment. Risk factors: age, dementia, severity of illness, sedation (especially benzodiazepines), infection, metabolic derangements. Prevention: ABCDEF bundle (Assess/prevent pain, Both SAT+SBT, Choice of sedation, Delirium assessment, Early mobility, Family engagement). Screen with CAM-ICU. Avoid benzodiazepines (worsen delirium). Treat underlying cause.', 'easy'),

('e0000380-0008-0000-0000-000000000008', 'd0000380-0000-0000-0000-000000000080', 8,
'Stress ulcer prophylaxis in ICU:',
'Is needed for all hospitalized patients', 'Is indicated for patients with risk factors such as mechanical ventilation greater than 48 hours or coagulopathy', 'PPIs have no side effects', 'Is no longer recommended',
'B', 'Stress ulcer prophylaxis: indicated for HIGH-RISK ICU patients. Major risk factors: mechanical ventilation >48 hours, coagulopathy. Other risks: shock, sepsis, burns, head injury, hepatic failure, history of GI bleeding. Agents: PPIs or H2 blockers. Concerns with overuse: C. difficile infection, pneumonia (theoretical), drug interactions. Not needed for all ICU patients or floor patients. Discontinue when risk factors resolve or patient eating. Evaluate indication before continuing long-term.', 'easy'),

('e0000380-0009-0000-0000-000000000009', 'd0000380-0000-0000-0000-000000000080', 9,
'Glycemic control in critically ill surgical patients:',
'Target blood glucose less than 80 mg/dL', 'Target blood glucose 140-180 mg/dL to avoid both hyperglycemia and hypoglycemia', 'Blood glucose does not affect outcomes', 'No insulin should be given',
'B', 'ICU glycemic control: TARGET 140-180 mg/dL (moderate control). Rationale: NICE-SUGAR trial showed tight control (<110 mg/dL) associated with increased mortality, mainly from hypoglycemia. Hyperglycemia (>180) also harmful. Use IV insulin infusion for consistent control. Avoid hypoglycemia (<70 mg/dL) - associated with increased mortality. Frequent monitoring. Transition to subcutaneous when stable and eating. Stress hyperglycemia common in critical illness.', 'easy'),

('e0000380-0010-0000-0000-000000000010', 'd0000380-0000-0000-0000-000000000080', 10,
'Transfusion threshold in stable critically ill patients is:',
'Hemoglobin less than 10 g/dL', 'Hemoglobin less than 7 g/dL in most stable patients, with restrictive strategy showing equivalent or better outcomes', 'Hemoglobin less than 12 g/dL', 'Based on hematocrit only',
'B', 'Transfusion threshold in ICU: RESTRICTIVE strategy (Hb <7 g/dL) is safe and may be superior to liberal (Hb <10 g/dL) in most stable critically ill patients (TRICC trial). Exceptions: active bleeding, ACS (may use higher threshold <8 g/dL), severe hypoxemia. Transfusion not without risks: TACO, TRALI, infection, immunomodulation. Transfuse for symptoms, not number alone. Each unit should be justified. Consider physiologic triggers in addition to Hb level.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 80 (Surgical Critical Care) with 10 self-assessment questions inserted' as status;
