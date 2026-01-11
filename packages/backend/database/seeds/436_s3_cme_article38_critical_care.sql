-- ============================================================================
-- SURGERY 3 CME ARTICLE 38: Surgical Critical Care
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000104-0000-0000-0000-000000000104', 'a0000003-0000-0000-0000-000000000003', 'Surgical Critical Care', 'ICU management principles for surgical patients')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000338-0000-0000-0000-000000000038',
    'c0000104-0000-0000-0000-000000000104',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Critical Care: ICU Essentials',
    'Ventilation, Hemodynamics, and Organ Support',
    'This article covers surgical critical care including mechanical ventilation, hemodynamic monitoring, vasopressor use, ARDS management, sepsis protocols, acute kidney injury, nutrition in critical illness, and sedation/analgesia in the ICU.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000338-0001-0000-0000-000000000001', 'd0000338-0000-0000-0000-000000000038', 1,
'ARDS is defined by the Berlin criteria which include:',
'Only low oxygen levels', 'Acute onset (within 1 week), bilateral opacities on imaging, PaO2/FiO2 ratio less than 300, and respiratory failure not fully explained by cardiac failure', 'Chronic progressive disease', 'Unilateral infiltrates only', NULL,
'B', 'Berlin ARDS criteria (2012): (1) Timing: within 1 week of known insult or new/worsening respiratory symptoms; (2) Imaging: bilateral opacities not fully explained by effusions, collapse, or nodules; (3) Origin: not fully explained by cardiac failure or fluid overload; (4) Oxygenation (on PEEP/CPAP ≥5): Mild P/F 200-300, Moderate P/F 100-200, Severe P/F <100. Common causes: sepsis, aspiration, pneumonia, trauma, pancreatitis, transfusion. Mortality: mild 27%, moderate 32%, severe 45%.', 'medium'),

('e0000338-0002-0000-0000-000000000002', 'd0000338-0000-0000-0000-000000000038', 2,
'Lung protective ventilation strategy for ARDS includes:',
'High tidal volumes (12 mL/kg)', 'Low tidal volumes (6 mL/kg predicted body weight), plateau pressure less than 30 cmH2O, and adequate PEEP', 'No PEEP', 'High respiratory rates only', NULL,
'B', 'Lung protective ventilation (ARDSNet): (1) Low tidal volume: 6 mL/kg predicted body weight (based on height/sex, not actual weight); (2) Plateau pressure <30 cmH2O (prevents barotrauma); (3) Adequate PEEP (prevents atelectrauma, improves oxygenation); (4) Permissive hypercapnia (accept higher CO2 to maintain protective settings). Reduces mortality by ~9%. Other strategies: prone positioning for severe ARDS (improves V/Q matching), neuromuscular blockade, ECMO for refractory cases.', 'medium'),

('e0000338-0003-0000-0000-000000000003', 'd0000338-0000-0000-0000-000000000038', 3,
'The first-line vasopressor for septic shock is:',
'Dopamine', 'Norepinephrine', 'Phenylephrine', 'Epinephrine', NULL,
'B', 'Norepinephrine: first-line vasopressor for septic shock (Surviving Sepsis Campaign guidelines). Potent alpha-1 agonist (vasoconstriction) with some beta-1 effect (inotropy). Increases MAP without significantly increasing heart rate. Second-line options: vasopressin (synergistic, may reduce norepinephrine dose), epinephrine (if cardiac dysfunction), dobutamine (if cardiac dysfunction with adequate MAP). Dopamine associated with more arrhythmias - not first-line. Goal MAP typically ≥65 mmHg. Fluid resuscitation should precede/accompany vasopressors.', 'easy'),

('e0000338-0004-0000-0000-000000000004', 'd0000338-0000-0000-0000-000000000038', 4,
'The Surviving Sepsis Campaign 1-hour bundle includes:',
'Observation only', 'Measure lactate, obtain blood cultures, administer antibiotics, give fluid bolus for hypotension/lactate over 4, start vasopressors if hypotension persists', 'Steroids for all patients', 'Surgical intervention first', NULL,
'B', 'Hour-1 bundle (sepsis/septic shock): (1) Measure lactate (remeasure if elevated); (2) Obtain blood cultures before antibiotics; (3) Administer broad-spectrum antibiotics; (4) Give 30 mL/kg crystalloid for hypotension or lactate ≥4 mmol/L; (5) Start vasopressors if hypotension persists during/after fluid resuscitation to maintain MAP ≥65. Each hour delay in antibiotics increases mortality. Source control essential (drain abscesses, remove infected devices). Reassess volume status and tissue perfusion frequently.', 'medium'),

('e0000338-0005-0000-0000-000000000005', 'd0000338-0000-0000-0000-000000000038', 5,
'Central venous pressure (CVP) as a predictor of fluid responsiveness:',
'Is highly accurate', 'Is unreliable - dynamic measures like pulse pressure variation or passive leg raise are better predictors', 'Should guide all fluid decisions', 'Always correlates with cardiac output', NULL,
'B', 'CVP as fluid responsiveness predictor: poor correlation with blood volume or preload. Static measures (CVP, PAOP) do not reliably predict fluid responsiveness. Dynamic measures are superior: (1) Pulse pressure variation/stroke volume variation (>12-13% predicts response, requires mechanical ventilation, regular rhythm); (2) Passive leg raise test (autotransfusion, monitor cardiac output change); (3) Fluid challenge with response assessment. Only ~50% of ICU patients are fluid responsive. Excessive fluid administration is harmful.', 'hard'),

('e0000338-0006-0000-0000-000000000006', 'd0000338-0000-0000-0000-000000000038', 6,
'Acute kidney injury (AKI) staging by KDIGO criteria uses:',
'Urine color only', 'Serum creatinine rise and/or urine output reduction', 'GFR alone', 'Blood pressure', NULL,
'B', 'KDIGO AKI staging: Stage 1: Cr increase ≥0.3 mg/dL (within 48h) or 1.5-1.9x baseline (within 7 days), OR UO <0.5 mL/kg/h for 6-12h. Stage 2: Cr 2-2.9x baseline, OR UO <0.5 mL/kg/h for ≥12h. Stage 3: Cr ≥3x baseline OR Cr ≥4 mg/dL OR initiation of RRT, OR UO <0.3 mL/kg/h for ≥24h or anuria ≥12h. Prevention: avoid nephrotoxins, maintain perfusion, contrast minimization. RRT indications: refractory hyperkalemia, acidosis, fluid overload, uremic complications.', 'medium'),

('e0000338-0007-0000-0000-000000000007', 'd0000338-0000-0000-0000-000000000038', 7,
'Enteral nutrition in ICU patients should be:',
'Avoided until fully recovered', 'Started early (within 24-48 hours) when feasible, as it maintains gut integrity', 'Replaced by TPN always', 'Delayed for 1 week', NULL,
'B', 'Early enteral nutrition (within 24-48 hours of ICU admission): maintains gut mucosal integrity, reduces bacterial translocation, modulates immune function, reduces infectious complications. Preferred over parenteral nutrition when GI tract functional. Start at trophic rates if hemodynamically unstable, advance as tolerated. Parenteral nutrition reserved for GI tract failure, not accessible, or insufficient EN. Glycemic control important. High protein intake (1.2-2 g/kg/day) recommended for critically ill. Monitor for refeeding syndrome.', 'easy'),

('e0000338-0008-0000-0000-000000000008', 'd0000338-0000-0000-0000-000000000038', 8,
'The Richmond Agitation-Sedation Scale (RASS) target for most ICU patients is:',
'-5 (unarousable)', '-2 to 0 (light sedation to calm and alert)', '+4 (combative)', '-4 (deep sedation)', NULL,
'B', 'RASS target: -2 to 0 (light sedation) for most patients. Scale: +4 combative, +3 very agitated, +2 agitated, +1 restless, 0 alert/calm, -1 drowsy, -2 light sedation, -3 moderate sedation, -4 deep sedation, -5 unarousable. Light sedation associated with shorter ventilator time, ICU stay, and improved outcomes. Daily sedation interruption (awakening trials) recommended. Analgesia-first approach (treat pain before adding sedatives). Avoid benzodiazepines when possible (associated with delirium).', 'easy'),

('e0000338-0009-0000-0000-000000000009', 'd0000338-0000-0000-0000-000000000038', 9,
'Stress ulcer prophylaxis in ICU is indicated for:',
'All ICU patients', 'High-risk patients: mechanical ventilation over 48 hours, coagulopathy, history of GI bleeding, traumatic brain injury', 'No ICU patients', 'Outpatients only', NULL,
'B', 'Stress ulcer prophylaxis indications (high risk for clinically important bleeding): (1) Mechanical ventilation >48 hours; (2) Coagulopathy; (3) History of GI ulcer/bleeding within 1 year; (4) Traumatic brain injury; (5) Major burns; (6) High-dose corticosteroids; (7) Multiple risk factors. Agents: PPIs or H2 blockers (PPIs more effective but may increase C. diff and pneumonia risk). Not recommended for low-risk patients. Early enteral nutrition may be protective. De-escalate when risk factors resolve.', 'medium'),

('e0000338-0010-0000-0000-000000000010', 'd0000338-0000-0000-0000-000000000038', 10,
'ECMO (extracorporeal membrane oxygenation) provides:',
'Only kidney support', 'Temporary cardiopulmonary support for reversible cardiac and/or respiratory failure', 'Permanent organ replacement', 'Nutritional support', NULL,
'B', 'ECMO: temporary extracorporeal life support. Types: (1) VV (veno-venous) - respiratory support only, blood drained from venous system, oxygenated, returned to venous system (heart must function); (2) VA (veno-arterial) - cardiac and respiratory support, blood returned to arterial system (bypasses heart). Indications: refractory ARDS (VV), cardiogenic shock, post-cardiotomy, bridge to transplant/decision (VA). Requires anticoagulation. Complications: bleeding, thrombosis, limb ischemia, infection. Specialized centers only. Bridge to recovery or other therapy, not destination.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 38 (Surgical Critical Care) with 10 self-assessment questions inserted' as status;
