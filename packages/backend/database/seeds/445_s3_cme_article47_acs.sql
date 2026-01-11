-- ============================================================================
-- SURGERY 3 CME ARTICLE 47: Abdominal Compartment Syndrome
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000113-0000-0000-0000-000000000113', 'a0000003-0000-0000-0000-000000000003', 'Abdominal Compartment Syndrome', 'IAH and ACS recognition and management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000347-0000-0000-0000-000000000047',
    'c0000113-0000-0000-0000-000000000113',
    'a0000003-0000-0000-0000-000000000003',
    'Intra-abdominal Hypertension and Abdominal Compartment Syndrome',
    'Recognition, Prevention, and Management',
    'This article covers intra-abdominal pressure measurement, definitions of intra-abdominal hypertension and abdominal compartment syndrome, risk factors, pathophysiology of organ dysfunction, and management strategies including decompressive laparotomy.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000347-0001-0000-0000-000000000001', 'd0000347-0000-0000-0000-000000000047', 1,
'Normal intra-abdominal pressure (IAP) in critically ill adults is:',
'0 mmHg', '5-7 mmHg', '20 mmHg', '30 mmHg', NULL,
'B', 'Normal IAP: 5-7 mmHg in critically ill adults (0-5 mmHg in non-critically ill). Intra-abdominal hypertension (IAH): sustained IAP greater than or equal to 12 mmHg. Grades: I (12-15), II (16-20), III (21-25), IV (>25 mmHg). Abdominal compartment syndrome (ACS): sustained IAP >20 mmHg PLUS new organ dysfunction. Measurement: standard method is via urinary bladder (instill 25 mL saline, measure at end-expiration, supine, transducer zeroed at mid-axillary line). IAP varies with respiration, patient position.', 'easy'),

('e0000347-0002-0000-0000-000000000002', 'd0000347-0000-0000-0000-000000000047', 2,
'Abdominal compartment syndrome is defined as:',
'IAP greater than 12 mmHg', 'Sustained IAP greater than 20 mmHg with new organ dysfunction attributable to elevated IAP', 'Any abdominal distension', 'IAP greater than 10 mmHg', NULL,
'B', 'Abdominal compartment syndrome (ACS) definition: sustained IAP >20 mmHg AND new organ dysfunction/failure attributable to elevated IAP. Types: (1) Primary ACS: originates from abdominal/pelvic pathology (trauma, hemorrhage, peritonitis, pancreatitis); (2) Secondary ACS: from extra-abdominal causes (massive fluid resuscitation, burns, sepsis); (3) Recurrent/tertiary ACS: recurrence after treatment. The key distinction from IAH: must have organ dysfunction. ACS is a surgical emergency.', 'easy'),

('e0000347-0003-0000-0000-000000000003', 'd0000347-0000-0000-0000-000000000047', 3,
'Elevated intra-abdominal pressure affects the kidneys by:',
'Having no effect', 'Compressing renal veins and reducing renal blood flow, leading to acute kidney injury', 'Increasing urine output', 'Improving filtration', NULL,
'B', 'IAH renal effects: (1) Direct compression of renal parenchyma and renal veins; (2) Reduced renal blood flow and GFR; (3) Compression of renal collecting system; (4) Reduced cardiac output further reduces renal perfusion. Results in: oliguria progressing to anuria, elevated creatinine. AKI occurs at IAP as low as 15-20 mmHg. Renal failure is reversible with timely decompression. Abdominal perfusion pressure (APP) = MAP - IAP; APP <60 mmHg associated with poor renal outcomes.', 'medium'),

('e0000347-0004-0000-0000-000000000004', 'd0000347-0000-0000-0000-000000000047', 4,
'Respiratory effects of abdominal compartment syndrome include:',
'Improved lung compliance', 'Elevated diaphragm causing reduced lung compliance, hypoxia, and hypercarbia', 'No respiratory impact', 'Decreased peak airway pressures', NULL,
'B', 'IAH/ACS respiratory effects: (1) Cephalad displacement of diaphragm; (2) Reduced functional residual capacity; (3) Decreased lung and chest wall compliance; (4) Atelectasis; (5) V/Q mismatch. Results in: increased peak airway pressures, hypoxia (reduced PaO2/FiO2), hypercarbia, difficulty ventilating. Mimics ARDS. May require increased PEEP and tidal volumes. Importantly: plateau pressures do not accurately reflect alveolar pressure in ACS. Respiratory failure may improve dramatically with abdominal decompression.', 'medium'),

('e0000347-0005-0000-0000-000000000005', 'd0000347-0000-0000-0000-000000000047', 5,
'Risk factors for developing IAH/ACS include all EXCEPT:',
'Massive fluid resuscitation', 'Abdominal trauma', 'Elective minor surgery without complications', 'Pancreatitis and peritonitis', NULL,
'C', 'IAH/ACS risk factors: (1) Decreased abdominal wall compliance: tight closure, prone positioning, burns; (2) Increased intraluminal contents: ileus, bowel obstruction; (3) Increased abdominal contents: ascites, hemoperitoneum, intra-abdominal masses, retroperitoneal hemorrhage; (4) Capillary leak/fluid resuscitation: massive resuscitation (>5L/24hr), sepsis, burns, coagulopathy. High-risk settings: damage control surgery, massive transfusion, abdominal trauma, severe acute pancreatitis, peritonitis. Routine outpatient surgery without complications is not a risk factor.', 'easy'),

('e0000347-0006-0000-0000-000000000006', 'd0000347-0000-0000-0000-000000000047', 6,
'Medical management of IAH includes:',
'Aggressive fluid resuscitation only', 'NG decompression, rectal decompression, neuromuscular blockade, avoiding excessive fluids, and sedation', 'No effective medical therapy exists', 'Immediate surgery for any IAH', NULL,
'B', 'Medical management of IAH - reduce each component: (1) Evacuate intraluminal contents: NG decompression, rectal tube, prokinetics, enemas; (2) Evacuate abdominal fluid collections: paracentesis, percutaneous drainage; (3) Improve abdominal wall compliance: sedation, analgesia, neuromuscular blockade, avoid head of bed >20 degrees; (4) Optimize fluid balance: avoid over-resuscitation, diuretics if appropriate, consider hypertonic solutions; (5) Optimize systemic perfusion: vasopressors to maintain APP >60 mmHg. Surgery reserved for ACS or failure of medical management.', 'medium'),

('e0000347-0007-0000-0000-000000000007', 'd0000347-0000-0000-0000-000000000047', 7,
'Decompressive laparotomy for ACS:',
'Should be performed in the ICU only', 'Is the definitive treatment for ACS when medical management fails, and should not be delayed', 'Is never indicated', 'Should wait until organ failure is irreversible', NULL,
'B', 'Decompressive laparotomy for ACS: definitive treatment when medical management fails or patient is deteriorating. Indications: (1) ACS (IAP >20 with organ dysfunction) refractory to medical therapy; (2) Severe Grade III/IV IAH with progressive organ dysfunction. Timing: should NOT be delayed - organ dysfunction can become irreversible. Location: preferably OR, but bedside in ICU if patient too unstable for transport. Effect: dramatic improvement in hemodynamics, oxygenation, urine output often seen immediately. Abdomen left open (temporary abdominal closure).', 'medium'),

('e0000347-0008-0000-0000-000000000008', 'd0000347-0000-0000-0000-000000000047', 8,
'Temporary abdominal closure (open abdomen) techniques include:',
'Primary fascial closure only', 'Negative pressure wound therapy (NPWT), Bogota bag, and other temporary closure methods with planned delayed closure', 'Skin grafting immediately', 'No coverage needed', NULL,
'B', 'Temporary abdominal closure (TAC) techniques: (1) Negative pressure wound therapy (NPWT/VAC): most commonly used, maintains domain, removes fluid, facilitates closure - commercial or improvised; (2) Bogota bag: plastic sheet sutured to fascia; (3) Wittmann patch: Velcro-like device for gradual approximation; (4) Mesh closure (absorbable or non-absorbable). Goals: protect viscera, maintain abdominal domain, allow re-exploration, facilitate eventual closure. Primary fascial closure is the goal - achievable in 60-80% with sequential NPWT. Planned ventral hernia if closure not possible.', 'medium'),

('e0000347-0009-0000-0000-000000000009', 'd0000347-0000-0000-0000-000000000047', 9,
'Following decompression, reperfusion syndrome may manifest as:',
'Only local abdominal effects', 'Hypotension, hyperkalemia, acidosis, and arrhythmias from washout of ischemic metabolites', 'Improved cardiac output only', 'No systemic effects', NULL,
'B', 'Reperfusion syndrome after decompressive laparotomy: release of accumulated ischemic metabolites into circulation. Manifestations: (1) Hypotension: vasodilation, relative hypovolemia; (2) Hyperkalemia: release from ischemic tissues, can cause arrhythmias; (3) Metabolic acidosis: lactate washout; (4) Cardiac arrhythmias: from hyperkalemia, acidosis; (5) Myocardial depression. Prevention/management: anticipate with volume resuscitation before/during decompression, have calcium and sodium bicarbonate ready, cardiac monitoring. Be prepared for cardiovascular collapse.', 'hard'),

('e0000347-0010-0000-0000-000000000010', 'd0000347-0000-0000-0000-000000000047', 10,
'Prevention of ACS in at-risk patients includes:',
'Aggressive crystalloid resuscitation without limits', 'Damage control resuscitation, goal-directed fluid therapy, leaving abdomen open if at high risk, and frequent IAP monitoring', 'Ignoring IAP measurements', 'Primary fascial closure in all cases', NULL,
'B', 'ACS prevention strategies: (1) Damage control resuscitation: limit crystalloid (permissive hypotension, balanced transfusion ratios); (2) Goal-directed fluid therapy: avoid over-resuscitation; (3) Prophylactic open abdomen: leave open after damage control surgery in high-risk patients (coagulopathy, acidosis, hypothermia, massive resuscitation); (4) Early decompressive laparotomy if developing ACS; (5) Serial IAP monitoring in at-risk patients (every 4-6 hours). Crystalloid minimization is key - the third space fluid and bowel edema contribute to IAH.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 47 (Abdominal Compartment Syndrome) with 10 self-assessment questions inserted' as status;
