-- ============================================================================
-- SURGERY 3 CME ARTICLE 65: Fluid and Electrolyte Management
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000131-0000-0000-0000-000000000131', 'a0000003-0000-0000-0000-000000000003', 'Fluid and Electrolyte Management', 'Perioperative fluid therapy and electrolyte balance')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000365-0000-0000-0000-000000000065',
    'c0000131-0000-0000-0000-000000000131',
    'a0000003-0000-0000-0000-000000000003',
    'Fluid and Electrolyte Therapy: Perioperative Management',
    'Crystalloids, Colloids, and Electrolyte Disturbances',
    'This article covers fluid compartments, crystalloid vs colloid solutions, maintenance fluids, resuscitation, goal-directed therapy, and management of hyponatremia, hypernatremia, hypokalemia, hyperkalemia, hypocalcemia, and acid-base disorders.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000365-0001-0000-0000-000000000001', 'd0000365-0000-0000-0000-000000000065', 1,
'Total body water constitutes approximately what percentage of body weight in an adult male?',
'30%', '40%', '60%', '80%', NULL,
'C', 'Total Body Water (TBW): approximately 60% body weight in adult males, 50% in females (higher fat content), lower in elderly. Distribution: INTRACELLULAR fluid (ICF) = 40% body weight (2/3 TBW); EXTRACELLULAR fluid (ECF) = 20% body weight (1/3 TBW), subdivided into interstitial (15%) and plasma (5%). 70 kg male: TBW = 42L, ICF = 28L, ECF = 14L (interstitial 10.5L, plasma 3.5L). Cell membranes freely permeable to water; sodium-potassium ATPase maintains ionic gradients.', 'easy'),

('e0000365-0002-0000-0000-000000000002', 'd0000365-0000-0000-0000-000000000065', 2,
'Normal saline (0.9% NaCl) compared to Lactated Ringer solution:',
'Has less sodium', 'Has a pH closer to 7.4', 'Can cause hyperchloremic metabolic acidosis when used in large volumes', 'Is hypotonic', NULL,
'C', 'Normal Saline (0.9% NaCl): Na 154, Cl 154 mEq/L; pH 5.0; osmolarity 308. HIGH chloride content (154 vs plasma 100-106) leads to hyperchloremic metabolic acidosis with large-volume resuscitation. LACTATED RINGER: Na 130, Cl 109, K 4, Ca 3, lactate 28 mEq/L; pH 6.5; more physiologic, balanced crystalloid. Lactate metabolized to bicarbonate (does NOT cause acidosis). Current evidence: balanced crystalloids preferred for most resuscitation; NS for specific indications (hypochloremia, brain injury). Chloride overload associated with AKI in some studies.', 'easy'),

('e0000365-0003-0000-0000-000000000003', 'd0000365-0000-0000-0000-000000000065', 3,
'Daily maintenance fluid requirements for a 70 kg adult can be estimated as:',
'500 mL/day', '1500 mL/day', '2500-3000 mL/day using the 4-2-1 rule hourly rate or 30-40 mL/kg/day', '5000 mL/day', NULL,
'C', 'Maintenance fluid calculation: 4-2-1 RULE (Holliday-Segar): 4 mL/kg/hr for first 10 kg, 2 mL/kg/hr for next 10 kg, 1 mL/kg/hr for each kg thereafter. 70 kg: 40 + 20 + 50 = 110 mL/hr = 2640 mL/day. Alternative: 30-40 mL/kg/day. Requirements increase with fever, burns, losses. Maintenance includes: water, sodium (1-2 mEq/kg/day), potassium (0.5-1 mEq/kg/day). Typical order: D5 1/2NS + 20 mEq KCl/L at maintenance rate. Avoid fluid overload in elderly, cardiac, renal patients.', 'easy'),

('e0000365-0004-0000-0000-000000000004', 'd0000365-0000-0000-0000-000000000065', 4,
'Severe hyponatremia (less than 120 mEq/L) with neurological symptoms should be treated with:',
'Free water restriction only', 'Aggressive correction exceeding 15 mEq/L in 24 hours', 'Hypertonic saline (3% NaCl) with careful monitoring and correction not exceeding 8-10 mEq/L in 24 hours to avoid osmotic demyelination', 'Normal saline boluses only', NULL,
'C', 'Severe hyponatremia with symptoms: HYPERTONIC SALINE (3% NaCl): 100-150 mL bolus over 10-20 minutes, repeat if symptoms persist. CORRECTION LIMITS: maximum 8-10 mEq/L in first 24 hours, 18 mEq/L in 48 hours. Overcorrection risk: OSMOTIC DEMYELINATION SYNDROME (central pontine myelinolysis) - quadriparesis, dysarthria, locked-in syndrome. High-risk patients: chronic hyponatremia, alcoholism, malnutrition, hypokalemia. If overcorrected: give D5W, consider desmopressin. Chronic asymptomatic hyponatremia: treat underlying cause, slower correction.', 'medium'),

('e0000365-0005-0000-0000-000000000005', 'd0000365-0000-0000-0000-000000000065', 5,
'ECG changes in hyperkalemia include all EXCEPT:',
'Peaked T waves', 'Widened QRS complex', 'Shortened QT interval', 'Sine wave pattern in severe cases', NULL,
'C', 'Hyperkalemia ECG changes (progressive with severity): (1) PEAKED T WAVES (earliest, K >5.5-6.0); (2) Prolonged PR interval; (3) Flattened/absent P waves; (4) WIDENED QRS complex; (5) SINE WAVE pattern (QRS merges with T wave, pre-arrest); (6) VF/asystole. QT is typically SHORTENED (not prolonged) initially in hyperkalemia (potassium accelerates repolarization), but QT can be difficult to measure as QRS widens. QT prolongation is characteristic of HYPOKALEMIA and hypocalcemia. Treatment: calcium gluconate (membrane stabilization), insulin/glucose, beta-agonists, kayexalate, dialysis.', 'medium'),

('e0000365-0006-0000-0000-000000000006', 'd0000365-0000-0000-0000-000000000065', 6,
'Treatment of hyperkalemia (K greater than 6.5 mEq/L with ECG changes) includes:',
'Potassium replacement', 'Calcium gluconate to stabilize myocardium, followed by insulin with glucose, and measures to eliminate potassium', 'Oral kayexalate alone', 'Observation only', NULL,
'B', 'Hyperkalemia treatment (ABCDE approach): (1) CALCIUM GLUCONATE 10% 10-20 mL IV - membrane stabilization, works in minutes, does NOT lower K; (2) INSULIN 10 units + GLUCOSE 50 mL D50W - shifts K into cells, onset 15-30 min; (3) BETA-AGONISTS (salbutamol nebulized) - shifts K intracellularly; (4) KAYEXALATE (sodium polystyrene sulfonate) - GI elimination, slow onset; (5) LOOP DIURETICS if urine output present; (6) HEMODIALYSIS for refractory cases, renal failure. Also treat underlying cause. Stop potassium-sparing drugs, K supplements, ACE inhibitors.', 'easy'),

('e0000365-0007-0000-0000-000000000007', 'd0000365-0000-0000-0000-000000000065', 7,
'Hypokalemia is commonly associated with:',
'Metabolic acidosis', 'Metabolic alkalosis due to hydrogen-potassium exchange and intracellular potassium shift', 'Respiratory acidosis', 'Has no acid-base effects', NULL,
'B', 'Hypokalemia and acid-base: METABOLIC ALKALOSIS causes and accompanies hypokalemia. Mechanisms: (1) H+/K+ exchange - alkalosis drives K into cells, acidosis drives K out; (2) Renal: alkalosis leads to increased K excretion, K depletion maintains alkalosis; (3) Common causes causing both: vomiting (loss of HCl and K), diuretics, hyperaldosteronism. Conversely: hypokalemia worsens alkalosis (renal H+ excretion, intracellular shift of H+). Treatment: correct BOTH - KCl replaces potassium AND chloride. Each 10 mEq deficit corresponds to approximately 0.1 drop in serum K.', 'medium'),

('e0000365-0008-0000-0000-000000000008', 'd0000365-0000-0000-0000-000000000065', 8,
'Hypocalcemia presenting with tetany and positive Chvostek and Trousseau signs is treated with:',
'Oral calcium supplements only', 'IV calcium gluconate with cardiac monitoring', 'Vitamin D alone', 'No treatment needed', NULL,
'B', 'Symptomatic hypocalcemia treatment: IV CALCIUM GLUCONATE 10% 10-20 mL over 10-20 minutes (1-2 g), with continuous cardiac monitoring. Follow with calcium infusion if needed (100-300 mg elemental calcium/hour). Calcium chloride: more calcium per volume but caustic (central line preferred). Clinical signs: Chvostek (facial twitch with tap), Trousseau (carpal spasm with BP cuff), perioral numbness, tetany, seizures, prolonged QT. Causes: post-thyroidectomy/parathyroidectomy (hungry bone syndrome), pancreatitis, renal failure. Also correct hypomagnesemia (required for PTH action).', 'easy'),

('e0000365-0009-0000-0000-000000000009', 'd0000365-0000-0000-0000-000000000065', 9,
'In goal-directed fluid therapy (GDFT):',
'Fixed volumes are given regardless of patient response', 'Fluid administration is titrated to hemodynamic parameters such as stroke volume variation or cardiac output', 'Crystalloids are never used', 'Urine output is the only parameter followed', NULL,
'B', 'Goal-directed fluid therapy (GDFT): individualized approach using dynamic hemodynamic parameters to optimize tissue perfusion. Parameters: STROKE VOLUME VARIATION (SVV), pulse pressure variation (PPV), cardiac output/index, mixed venous oxygen saturation. Monitors: esophageal Doppler, arterial waveform analysis (FloTrac, LiDCO), echocardiography. Fluid challenge: give fluid bolus (250 mL), assess response (>10% increase in SV = fluid responsive). Benefits: reduced complications, shorter hospital stay, reduced AKI in some studies. Avoid both hypovolemia and fluid overload.', 'medium'),

('e0000365-0010-0000-0000-000000000010', 'd0000365-0000-0000-0000-000000000065', 10,
'Third-space fluid losses in surgical patients:',
'Do not require replacement', 'Represent fluid sequestration in non-functional compartments and may require replacement during surgery', 'Only occur in cardiac surgery', 'Are measured directly by laboratory tests', NULL,
'B', 'Third-space losses: fluid redistribution to interstitial/transcellular spaces, non-functional for circulation. Occurs in: bowel obstruction, peritonitis, burns, pancreatitis, major surgery (tissue trauma, inflammation). Not directly measurable. Traditional approach: add "third-space replacement" (variable amounts based on surgery). Modern approach: restrictive/goal-directed fluid management - avoid excessive fluid (associated with edema, anastomotic leak, pulmonary complications). Balance: prevent hypovolemia while avoiding fluid overload. Third-space fluid eventually remobilizes (postoperative diuresis).', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 65 (Fluid and Electrolyte Management) with 10 self-assessment questions inserted' as status;
