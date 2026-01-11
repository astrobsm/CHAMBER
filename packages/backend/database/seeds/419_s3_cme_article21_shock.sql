-- ============================================================================
-- SURGERY 3 CME ARTICLE 21: Shock and Resuscitation
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000087-0000-0000-0000-000000000087', 'a0000003-0000-0000-0000-000000000003', 'Shock Management', 'Classification, pathophysiology and treatment of shock')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000321-0000-0000-0000-000000000021',
    'c0000087-0000-0000-0000-000000000087',
    'a0000003-0000-0000-0000-000000000003',
    'Shock and Resuscitation: Recognition and Management',
    'Classification, Pathophysiology and Goal-Directed Therapy',
    'This article covers shock classification (hypovolemic, cardiogenic, distributive, obstructive), pathophysiology, clinical recognition, resuscitation principles, blood product transfusion, massive transfusion protocols, and vasopressor/inotrope selection.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000321-0001-0000-0000-000000000001', 'd0000321-0000-0000-0000-000000000021', 1,
'Shock is best defined as:',
'Low blood pressure', 'Inadequate tissue perfusion and cellular oxygen delivery', 'Rapid heart rate', 'Loss of consciousness', NULL,
'B', 'Shock is a state of inadequate tissue perfusion and cellular oxygen delivery leading to cellular hypoxia and organ dysfunction. Hypotension is a late sign and may not be present initially (compensated shock). Early recognition requires assessment of perfusion: mental status, capillary refill, urine output, lactate. Blood pressure may be maintained by compensatory mechanisms until decompensation.', 'easy'),

('e0000321-0002-0000-0000-000000000002', 'd0000321-0000-0000-0000-000000000021', 2,
'The four main categories of shock are:',
'Mild, moderate, severe, critical', 'Hypovolemic, cardiogenic, distributive, obstructive', 'Acute, subacute, chronic, recurrent', 'Reversible, irreversible, compensated, decompensated', NULL,
'B', 'Shock classification: Hypovolemic (hemorrhage, dehydration), Cardiogenic (pump failure - MI, arrhythmia), Distributive (vasodilation - sepsis, anaphylaxis, neurogenic), Obstructive (mechanical obstruction - PE, tamponade, tension pneumothorax). Each has different hemodynamic profile and treatment. Mixed types can occur. Recognition of type guides resuscitation strategy.', 'easy'),

('e0000321-0003-0000-0000-000000000003', 'd0000321-0000-0000-0000-000000000021', 3,
'Septic shock is characterized by:',
'High SVR and low cardiac output', 'Low SVR (vasodilation), high cardiac output initially, and hypotension refractory to fluid resuscitation', 'Normal hemodynamics', 'Only occurs with positive blood cultures', NULL,
'B', 'Septic shock (distributive) features: vasodilation (low SVR), initially high cardiac output (hyperdynamic), hypotension persisting despite adequate fluid resuscitation (requiring vasopressors), and lactate >2 mmol/L. Caused by inflammatory response to infection. Surviving Sepsis Campaign guidelines: early antibiotics, source control, fluid bolus, vasopressors (norepinephrine first-line) if needed, monitor lactate.', 'medium'),

('e0000321-0004-0000-0000-000000000004', 'd0000321-0000-0000-0000-000000000021', 4,
'In hemorrhagic shock, the initial resuscitation fluid of choice is:',
'Dextrose 5% water', 'Crystalloid (lactated Ringer or normal saline) followed by blood products', 'Albumin', 'Hypertonic saline only', NULL,
'B', 'Initial resuscitation for hemorrhagic shock: crystalloid (LR preferred over NS to avoid hyperchloremic acidosis) while blood products are prepared. Damage control resuscitation: permissive hypotension (SBP 80-90 mmHg until bleeding controlled), minimize crystalloid, early blood products, 1:1:1 ratio (PRBC:FFP:platelets). Massive transfusion protocol activation for severe hemorrhage. Control the bleeding source.', 'easy'),

('e0000321-0005-0000-0000-000000000005', 'd0000321-0000-0000-0000-000000000021', 5,
'The target ratio for massive transfusion in trauma (PROPPR trial) is:',
'10:1:1 (PRBC:FFP:Platelets)', '1:1:1 (PRBC:FFP:Platelets)', '3:1:1 (PRBC:FFP:Platelets)', 'PRBC only', NULL,
'B', 'PROPPR trial demonstrated 1:1:1 ratio (PRBC:FFP:Platelets) achieves better hemostasis and reduces death from exsanguination in first 24 hours compared to 1:1:2. Massive transfusion = >10 units PRBC in 24 hours or >4 units in 1 hour. Also give tranexamic acid (TXA) within 3 hours of injury, calcium replacement, avoid hypothermia. Monitor with TEG/ROTEM for goal-directed therapy.', 'medium'),

('e0000321-0006-0000-0000-000000000006', 'd0000321-0000-0000-0000-000000000021', 6,
'Norepinephrine is the first-line vasopressor for septic shock because:',
'It only increases heart rate', 'It provides both alpha-adrenergic (vasoconstriction) and beta-adrenergic effects with less tachycardia than dopamine', 'It is the cheapest option', 'It has no cardiac effects', NULL,
'B', 'Norepinephrine is first-line for septic shock (Surviving Sepsis Guidelines). It provides potent alpha-1 vasoconstriction (increases SVR) with modest beta-1 effect (maintains cardiac output) and less tachycardia/arrhythmia than dopamine. Vasopressin can be added as second-line. Epinephrine for refractory shock. Dobutamine added if poor cardiac output despite adequate filling pressures.', 'medium'),

('e0000321-0007-0000-0000-000000000007', 'd0000321-0000-0000-0000-000000000021', 7,
'Cardiogenic shock is treated primarily with:',
'Large volume fluid resuscitation', 'Inotropic support, diuresis if volume overloaded, and treatment of underlying cause', 'Vasodilators only', 'Blood transfusion', NULL,
'B', 'Cardiogenic shock (pump failure) requires: identify and treat cause (revascularization for MI, antiarrhythmics, valve intervention), inotropic support (dobutamine, milrinone), careful fluid management (avoid overload), vasopressors if needed (norepinephrine), mechanical support (IABP, Impella, ECMO) for refractory cases. Avoid excessive fluid which worsens pulmonary edema. Different from hypovolemic shock management.', 'medium'),

('e0000321-0008-0000-0000-000000000008', 'd0000321-0000-0000-0000-000000000021', 8,
'Lactate level is useful in shock because:',
'It measures blood pressure', 'Elevated lactate indicates tissue hypoperfusion and anaerobic metabolism; clearance guides resuscitation', 'It is always normal in shock', 'It only indicates liver failure', NULL,
'B', 'Lactate is produced during anaerobic metabolism when oxygen delivery is inadequate. Elevated lactate (>2 mmol/L) indicates tissue hypoperfusion even when blood pressure is normal. Serial lactate measurements guide resuscitation adequacy - lactate clearance (>10-20% decrease in 2-6 hours) indicates improving perfusion and is associated with better outcomes. Lactate is more sensitive than blood pressure.', 'easy'),

('e0000321-0009-0000-0000-000000000009', 'd0000321-0000-0000-0000-000000000021', 9,
'Anaphylactic shock treatment includes:',
'Antibiotics as first-line', 'Intramuscular epinephrine, IV fluids, antihistamines, steroids, airway management', 'Norepinephrine only', 'Observation only', NULL,
'B', 'Anaphylaxis treatment: (1) Remove trigger if possible; (2) Epinephrine IM 0.3-0.5 mg (anterolateral thigh) - FIRST AND MOST IMPORTANT; (3) Airway management (early intubation if angioedema); (4) IV fluids (distributive shock); (5) Antihistamines (H1 and H2 blockers); (6) Corticosteroids (prevent biphasic reaction); (7) Glucagon if on beta-blockers. Repeat epinephrine every 5-15 minutes if needed.', 'easy'),

('e0000321-0010-0000-0000-000000000010', 'd0000321-0000-0000-0000-000000000021', 10,
'Neurogenic shock differs from other forms of distributive shock by:',
'Causing tachycardia', 'Causing bradycardia with hypotension due to loss of sympathetic tone', 'Always requiring surgery', 'Being the most common form of shock', NULL,
'B', 'Neurogenic shock (spinal cord injury above T6) causes loss of sympathetic tone: vasodilation (hypotension) AND bradycardia (loss of cardiac sympathetic input, unopposed vagal tone). This differs from other distributive shocks (septic, anaphylactic) which cause reflex tachycardia. Treatment: fluids, vasopressors (norepinephrine, phenylephrine), atropine or pacing for bradycardia. Must rule out concurrent hemorrhagic shock in trauma.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 21 (Shock & Resuscitation) with 10 self-assessment questions inserted' as status;
