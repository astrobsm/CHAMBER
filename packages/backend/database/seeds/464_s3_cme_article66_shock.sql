-- ============================================================================
-- SURGERY 3 CME ARTICLE 66: Shock and Resuscitation Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000132-0000-0000-0000-000000000132', 'a0000003-0000-0000-0000-000000000003', 'Shock and Resuscitation Principles', 'Classification and management of shock states')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000366-0000-0000-0000-000000000066',
    'c0000132-0000-0000-0000-000000000132',
    'a0000003-0000-0000-0000-000000000003',
    'Shock: Classification, Recognition, and Resuscitation',
    'From Hypovolemia to Sepsis',
    'This article covers shock physiology, classification (hypovolemic, cardiogenic, obstructive, distributive), clinical recognition, ATLS hemorrhagic shock classes, damage control resuscitation, vasopressors, and endpoints of resuscitation including lactate and base deficit.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000366-0001-0000-0000-000000000001', 'd0000366-0000-0000-0000-000000000066', 1,
'A patient with blood loss of 750 mL (approximately 15% blood volume) would be classified as which ATLS hemorrhagic shock class?',
'Class I', 'Class II', 'Class III', 'Class IV', NULL,
'A', 'ATLS Hemorrhagic Shock Classification: CLASS I: <15% blood volume (<750 mL), minimal tachycardia, normal BP, RR, urine output, mental status - typically requires crystalloid only. CLASS II: 15-30% (750-1500 mL), HR >100, normal BP, RR 20-30, urine 20-30 mL/hr, anxious - crystalloid, possible blood. CLASS III: 30-40% (1500-2000 mL), HR >120, decreased BP, RR 30-40, urine 5-15 mL/hr, confused - blood transfusion. CLASS IV: >40% (>2000 mL), HR >140, markedly decreased BP, RR >35, negligible urine, lethargic - massive transfusion, surgical control.', 'easy'),

('e0000366-0002-0000-0000-000000000002', 'd0000366-0000-0000-0000-000000000066', 2,
'Cardiogenic shock is characterized by:',
'Low filling pressures and high cardiac output', 'High filling pressures and low cardiac output with evidence of organ hypoperfusion', 'Low systemic vascular resistance and high cardiac output', 'Normal cardiac output', NULL,
'B', 'Cardiogenic shock: pump failure with inadequate cardiac output. Hemodynamics: LOW cardiac output/index (CI <2.2 L/min/m2), HIGH filling pressures (PCWP >18 mmHg), increased SVR (compensatory vasoconstriction), low mixed venous O2 saturation. Causes: acute MI (most common, especially anterior/large), severe valvular disease, arrhythmias, myocarditis, cardiomyopathy. Clinical: hypotension, cold/clammy extremities, pulmonary edema (JVD, rales), altered mental status. Treatment: inotropes (dobutamine), vasopressors if needed, IABP, revascularization for MI (primary PCI), mechanical support (ECMO, Impella).', 'easy'),

('e0000366-0003-0000-0000-000000000003', 'd0000366-0000-0000-0000-000000000066', 3,
'Septic shock differs from other shock states by:',
'Having low cardiac output', 'Featuring low systemic vascular resistance with warm extremities initially (warm shock) before progressing to cold shock', 'Always having low filling pressures', 'Responding to fluids alone', NULL,
'B', 'Septic shock (distributive): inflammatory mediators cause vasodilation, capillary leak, myocardial depression. HEMODYNAMICS: LOW SVR (vasodilation), initially HIGH cardiac output (compensatory - "warm shock" with warm extremities), progresses to "cold shock" with myocardial depression. Definition: sepsis + hypotension requiring vasopressors + lactate >2 despite adequate fluid resuscitation. Treatment: early antibiotics, source control, fluid resuscitation (30 mL/kg crystalloid initially), vasopressors (norepinephrine first-line) if hypotension persists. Differs from hypovolemic/cardiogenic (high SVR, cold extremities).', 'medium'),

('e0000366-0004-0000-0000-000000000004', 'd0000366-0000-0000-0000-000000000066', 4,
'Obstructive shock caused by tension pneumothorax requires:',
'Immediate chest CT', 'Immediate needle decompression followed by chest tube insertion', 'Fluid resuscitation first', 'Pericardiocentesis', NULL,
'B', 'Tension pneumothorax: life-threatening obstructive shock requiring IMMEDIATE intervention. Mechanism: one-way valve effect, progressive air accumulation, mediastinal shift, impaired venous return. Signs: hypotension, JVD, absent breath sounds (affected side), tracheal deviation (away from tension), hyperresonance. Treatment: NEEDLE DECOMPRESSION - 14-16G needle, 2nd intercostal space midclavicular line (or 4th/5th ICS anterior axillary line), followed by chest tube. Do NOT delay for CXR/CT in unstable patient. Obstructive shock causes: tension pneumothorax, cardiac tamponade, massive PE - all have mechanical obstruction to circulation.', 'easy'),

('e0000366-0005-0000-0000-000000000005', 'd0000366-0000-0000-0000-000000000066', 5,
'The lethal triad in trauma that worsens coagulopathy includes:',
'Hyperglycemia, hypertension, and tachycardia', 'Hypothermia, acidosis, and coagulopathy', 'Hyperthermia, alkalosis, and thrombosis', 'Anemia, hyperkalemia, and hypocalcemia', NULL,
'B', 'LETHAL TRIAD (vicious cycle): (1) HYPOTHERMIA - impairs clotting enzyme function, platelet dysfunction; (2) ACIDOSIS - inhibits clotting factors, impairs cardiovascular function; (3) COAGULOPATHY - from consumption, dilution, hypothermia, acidosis. Each worsens the others. Prevention: damage control resuscitation - permissive hypotension (SBP 80-90), minimize crystalloids, early blood products (1:1:1 ratio), warm fluids, prevent heat loss, correct acidosis, goal-directed resuscitation. Damage control surgery: abbreviated surgery for hemorrhage control, delayed definitive repair after resuscitation.', 'easy'),

('e0000366-0006-0000-0000-000000000006', 'd0000366-0000-0000-0000-000000000066', 6,
'Lactate as a marker of tissue hypoperfusion:',
'Decreasing lactate during resuscitation indicates improved perfusion and better outcomes', 'Rising lactate is a good prognostic sign', 'Lactate should not be measured in shock', 'Lactate greater than 1 is always fatal', NULL,
'A', 'Lactate in shock: marker of tissue hypoxia, anaerobic metabolism. ELEVATED lactate (>2 mmol/L) indicates tissue hypoperfusion. SERIAL LACTATE MONITORING: lactate clearance (decreasing lactate) during resuscitation correlates with improved outcomes. Target: normalize lactate or decrease by >20% per 2 hours. Causes of elevated lactate: shock (all types), hypoxemia, liver dysfunction (impaired clearance), seizures, medications (metformin), mesenteric ischemia. Base deficit: related marker; base deficit >-6 indicates significant metabolic acidosis. Both guide resuscitation adequacy.', 'easy'),

('e0000366-0007-0000-0000-000000000007', 'd0000366-0000-0000-0000-000000000066', 7,
'First-line vasopressor for septic shock after adequate fluid resuscitation is:',
'Dopamine', 'Norepinephrine', 'Phenylephrine', 'Epinephrine', NULL,
'B', 'Vasopressors in septic shock: NOREPINEPHRINE is first-line (Surviving Sepsis Campaign). Potent alpha-agonist (vasoconstriction) with modest beta-1 (inotropic). Dopamine: associated with more arrhythmias, higher mortality in some studies. VASOPRESSIN: second-line, add to norepinephrine (0.03 units/min, not titrated), reduces norepinephrine requirements. EPINEPHRINE: alternative, strong inotrope and vasopressor. PHENYLEPHRINE: pure alpha, can decrease cardiac output. DOBUTAMINE: added for persistent hypoperfusion despite adequate MAP, myocardial dysfunction. Target MAP 65 mmHg initially.', 'easy'),

('e0000366-0008-0000-0000-000000000008', 'd0000366-0000-0000-0000-000000000066', 8,
'Permissive hypotension in trauma resuscitation refers to:',
'Allowing blood pressure to fall to zero', 'Accepting lower than normal blood pressure (SBP 80-90 mmHg) until surgical hemorrhage control to avoid disrupting clot and dilutional coagulopathy', 'Using only vasopressors without fluids', 'Ignoring vital signs', NULL,
'B', 'Permissive hypotension: component of damage control resuscitation. Rationale: aggressive fluid resuscitation before hemorrhage control: (1) Dilutes clotting factors (coagulopathy); (2) Raises BP, disrupts forming clot; (3) Causes hypothermia (cold fluids); (4) Worsens acidosis (dilutional). Target SBP 80-90 mmHg (MAP 50-60) until SURGICAL HEMORRHAGE CONTROL achieved. EXCEPTIONS (target normal BP): traumatic brain injury (maintain cerebral perfusion), spinal cord injury. After hemorrhage control: resuscitate to normal parameters. Part of DCR with 1:1:1 blood product ratio, limited crystalloid, hemorrhage control surgery.', 'medium'),

('e0000366-0009-0000-0000-000000000009', 'd0000366-0000-0000-0000-000000000066', 9,
'Cardiac tamponade (obstructive shock) classically presents with:',
'Beck triad: hypotension, distended neck veins, and muffled heart sounds', 'Widened pulse pressure', 'Absent neck veins', 'Bradycardia', NULL,
'A', 'Cardiac tamponade: fluid in pericardial sac compressing heart, impairing filling. BECK TRIAD (classic but not always present): (1) Hypotension (low cardiac output); (2) Distended neck veins/elevated JVP (impaired venous return to heart); (3) Muffled/distant heart sounds. Other signs: pulsus paradoxus (>10 mmHg inspiratory drop in SBP), tachycardia (compensatory), Kussmaul sign (JVP rise with inspiration). ECG: low voltage, electrical alternans. Echo: diagnostic (pericardial effusion, diastolic collapse of RV). Treatment: PERICARDIOCENTESIS (temporizing) or surgical pericardial window. Causes: trauma, malignancy, uremia, infection.', 'easy'),

('e0000366-0010-0000-0000-000000000010', 'd0000366-0000-0000-0000-000000000066', 10,
'Massive transfusion protocol activation is typically triggered by:',
'Hemoglobin less than 12', 'Anticipated need for more than 10 units pRBCs in 24 hours or more than 4 units in 1 hour with ongoing hemorrhage', 'Any trauma patient', 'Elective surgery blood requirement', NULL,
'B', 'Massive transfusion: historically >10 units pRBCs in 24 hours; operationally, anticipated need for ongoing large-volume transfusion. Activation criteria vary by institution: >4 units pRBCs in 1 hour with ongoing bleeding, >10 units in 24 hours, hemodynamic instability with known hemorrhage. PROTOCOL: balanced resuscitation with pRBCs:FFP:platelets in 1:1:1 ratio, early cryoprecipitate/fibrinogen, tranexamic acid (within 3 hours of injury), calcium replacement (citrate chelation), rewarming, early surgical/interventional hemorrhage control. MTP reduces mortality compared to historical practices.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 66 (Shock and Resuscitation) with 10 self-assessment questions inserted' as status;
