-- ============================================================================
-- SURGERY 3 CME ARTICLE 56: Acute Pancreatitis Complete Guide
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000122-0000-0000-0000-000000000122', 'a0000003-0000-0000-0000-000000000003', 'Acute Pancreatitis Complete Guide', 'Comprehensive acute pancreatitis management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000356-0000-0000-0000-000000000056',
    'c0000122-0000-0000-0000-000000000122',
    'a0000003-0000-0000-0000-000000000003',
    'Acute Pancreatitis: Etiology to Intervention',
    'Complete Clinical Management Guide',
    'This article covers acute pancreatitis including etiology (I GET SMASHED mnemonic), severity scoring, local and systemic complications, fluid resuscitation, nutrition, and indications for intervention including cholecystectomy timing and necrosectomy.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000356-0001-0000-0000-000000000001', 'd0000356-0000-0000-0000-000000000056', 1,
'The two most common causes of acute pancreatitis are:',
'Trauma and drugs', 'Gallstones and alcohol', 'Hypercalcemia and hypertriglyceridemia', 'Idiopathic and autoimmune', NULL,
'B', 'Acute pancreatitis etiology - I GET SMASHED: Idiopathic, Gallstones (40% - most common), Ethanol/alcohol (30-40% - second most common), Trauma, Steroids, Mumps/malignancy, Autoimmune, Scorpion sting, Hyperlipidemia/Hypercalcemia/Hypothermia, ERCP, Drugs (azathioprine, valproic acid, thiazides, estrogens). Gallstones and alcohol account for 70-80% of cases. Always determine etiology to guide management and prevent recurrence.', 'easy'),

('e0000356-0002-0000-0000-000000000002', 'd0000356-0000-0000-0000-000000000056', 2,
'Severe acute pancreatitis is defined by:',
'Mild abdominal pain only', 'Persistent organ failure lasting greater than 48 hours according to the Revised Atlanta Classification', 'Any elevation in lipase', 'Presence of gallstones', NULL,
'B', 'Revised Atlanta Classification of acute pancreatitis severity: MILD: no organ failure, no local/systemic complications; MODERATELY SEVERE: transient organ failure (<48 hours) AND/OR local complications; SEVERE: persistent organ failure (>48 hours). Organ failure defined using Modified Marshall Score: respiratory (PaO2/FiO2 <300), renal (creatinine >1.9), cardiovascular (systolic BP <90 despite fluids). Mortality: mild <3%, moderate 5-10%, severe 30-50%. Early severity assessment guides ICU admission and management intensity.', 'medium'),

('e0000356-0003-0000-0000-000000000003', 'd0000356-0000-0000-0000-000000000056', 3,
'Initial fluid resuscitation in acute pancreatitis:',
'Should be minimal to avoid edema', 'Should be aggressive early (5-10 mL/kg/hour initially) with goal-directed adjustments, preferably with lactated Ringer solution', 'Is not important', 'Should use hypertonic saline', NULL,
'B', 'Fluid resuscitation in acute pancreatitis: CRITICAL in first 12-24 hours. Third-spacing and hypovolemia common. Initial: 5-10 mL/kg/hour (or 250-500 mL/hour), reassess frequently. Goals: urine output >0.5 mL/kg/hour, HR <120, MAP >65 mmHg, BUN decrease. Preferred fluid: Lactated Ringer (some evidence of reduced SIRS vs normal saline). After initial resuscitation: goal-directed, avoid over-resuscitation (can worsen edema, IAH, respiratory failure). BUN is useful marker for adequate resuscitation.', 'medium'),

('e0000356-0004-0000-0000-000000000004', 'd0000356-0000-0000-0000-000000000056', 4,
'Pancreatic necrosis vs acute peripancreatic fluid collection:',
'Are identical', 'Necrosis involves non-enhancement of pancreatic parenchyma on contrast CT, while acute fluid collection is interstitial edema without necrosis', 'Neither requires imaging', 'Both resolve without treatment', NULL,
'B', 'Local complications of acute pancreatitis: (1) Acute peripancreatic fluid collection (<4 weeks, no wall, interstitial pancreatitis); (2) Pseudocyst (>4 weeks, encapsulated, no necrotic debris, arises from acute fluid collection); (3) Acute necrotic collection (<4 weeks, contains necrotic debris, necrotizing pancreatitis); (4) Walled-off necrosis (WON) (>4 weeks, encapsulated necrosis). CT findings: necrosis = non-enhancing pancreatic tissue (>30% = severe). Distinguish because management differs - pseudocyst can be drained; WON may need debridement.', 'medium'),

('e0000356-0005-0000-0000-000000000005', 'd0000356-0000-0000-0000-000000000056', 5,
'Nutrition in acute pancreatitis:',
'NPO for 2 weeks minimum', 'Early enteral nutrition (within 24-72 hours) is preferred over parenteral, and oral feeding can be started when pain improves', 'Always requires TPN', 'Should be high in fat', NULL,
'B', 'Nutrition in acute pancreatitis: ENTERAL nutrition preferred (maintains gut barrier, reduces infection, reduces mortality). Timing: start within 24-72 hours if cannot take orally. Route: nasogastric or nasojejunal (both acceptable). ORAL feeding: can start when pain decreasing, nausea/vomiting resolved - low-fat solid diet as tolerated (do not wait for lipase normalization). TPN: only if enteral not tolerated. "Pancreatic rest" concept is outdated - early feeding is beneficial.', 'medium'),

('e0000356-0006-0000-0000-000000000006', 'd0000356-0000-0000-0000-000000000056', 6,
'Cholecystectomy for gallstone pancreatitis should be performed:',
'Never', 'During same admission for mild pancreatitis, after resolution for severe/necrotizing pancreatitis', '6 months after discharge', 'Only if cholangitis present', NULL,
'B', 'Cholecystectomy timing in gallstone pancreatitis: MILD pancreatitis: same admission cholecystectomy (before discharge) - reduces recurrent pancreatitis from 30% to <5%. SEVERE/necrotizing pancreatitis: delay until inflammation resolves, local complications managed (usually 6-8 weeks). If delayed beyond discharge: high recurrence risk while waiting. If CBD stone suspected: ERCP (before or during cholecystectomy) or IOC. Recurrent pancreatitis from residual stones is preventable with timely cholecystectomy.', 'medium'),

('e0000356-0007-0000-0000-000000000007', 'd0000356-0000-0000-0000-000000000056', 7,
'Infected pancreatic necrosis:',
'Is managed with antibiotics alone', 'Requires drainage/debridement, preferably using step-up approach (percutaneous/endoscopic drainage first, surgery if needed)', 'Is benign', 'Never requires intervention', NULL,
'B', 'Infected pancreatic necrosis management: (1) Suspect infection if: clinical deterioration after first week, persistent/new fever, rising WBC, gas in necrosis on CT; (2) Confirm: FNA culture (not always needed if clinical picture clear); (3) Treatment: antibiotics + SOURCE CONTROL (drainage/debridement). Step-up approach: percutaneous catheter drainage or endoscopic (transgastric) drainage first → if fails, minimally invasive necrosectomy (VARD, endoscopic) → open necrosectomy if above fail. Delay intervention to 4 weeks if possible (walled-off necrosis easier to debride).', 'hard'),

('e0000356-0008-0000-0000-000000000008', 'd0000356-0000-0000-0000-000000000056', 8,
'BISAP score for predicting severe acute pancreatitis includes:',
'Only amylase level', 'BUN greater than 25, Impaired mental status, SIRS, Age greater than 60, and Pleural effusion', 'Only blood pressure', 'CT findings only', NULL,
'B', 'BISAP score (Bedside Index of Severity in Acute Pancreatitis): calculated within 24 hours of admission. Components: BUN >25 mg/dL (1 point), Impaired mental status (1 point), SIRS present (1 point), Age >60 (1 point), Pleural effusion on imaging (1 point). Score 0-2: low mortality (<2%); Score 3-5: high mortality (>15%). Advantages: simple, bedside, early assessment. Other scores: Ranson (at admission and 48h), APACHE II, CT Severity Index, Modified Marshall (for organ failure).', 'medium'),

('e0000356-0009-0000-0000-000000000009', 'd0000356-0000-0000-0000-000000000056', 9,
'Grey-Turner and Cullen signs indicate:',
'Mild pancreatitis', 'Severe hemorrhagic pancreatitis with retroperitoneal (flank) and periumbilical ecchymosis respectively', 'Gallstone disease', 'Normal findings', NULL,
'B', 'Grey-Turner sign: ecchymosis of the flanks; Cullen sign: periumbilical ecchymosis. Both indicate retroperitoneal hemorrhage, seen in severe hemorrhagic/necrotizing pancreatitis. Rare findings (1-3% of cases) but indicate severe disease. Other physical findings in severe pancreatitis: abdominal distension, decreased bowel sounds, guarding, fever, tachycardia, hypotension. Fox sign: ecchymosis of inguinal ligament (rare). These are late findings - absence does not exclude severe pancreatitis.', 'easy'),

('e0000356-0010-0000-0000-000000000010', 'd0000356-0000-0000-0000-000000000056', 10,
'Prophylactic antibiotics in acute pancreatitis:',
'Are always indicated', 'Are NOT routinely recommended even in severe/necrotizing pancreatitis, as they do not reduce mortality or infection rates', 'Prevent all complications', 'Should be given for 4 weeks', NULL,
'B', 'Prophylactic antibiotics in acute pancreatitis: NOT recommended. Multiple RCTs and meta-analyses show no reduction in infected necrosis or mortality with prophylactic antibiotics. Risk of selecting resistant organisms and fungal infection. Current guidelines: antibiotics only for documented infection (infected necrosis, cholangitis, other infections). If infected necrosis suspected: carbapenems or quinolone + metronidazole (penetrate necrotic tissue). Duration: until source control achieved and infection resolved.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 56 (Acute Pancreatitis Complete Guide) with 10 self-assessment questions inserted' as status;
