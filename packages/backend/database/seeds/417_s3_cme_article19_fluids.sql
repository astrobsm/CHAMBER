-- ============================================================================
-- SURGERY 3 CME ARTICLE 19: Fluids, Electrolytes and Surgical Nutrition
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000085-0000-0000-0000-000000000085', 'a0000003-0000-0000-0000-000000000003', 'Fluids and Nutrition', 'Fluid management, electrolyte disorders and nutritional support')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000319-0000-0000-0000-000000000019',
    'c0000085-0000-0000-0000-000000000085',
    'a0000003-0000-0000-0000-000000000003',
    'Fluids, Electrolytes and Surgical Nutrition',
    'Perioperative Fluid Therapy and Nutritional Support',
    'This article covers body fluid compartments, IV fluid types and selection, common electrolyte disturbances in surgical patients, acid-base disorders, nutritional assessment, and enteral versus parenteral nutrition in the surgical patient.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000319-0001-0000-0000-000000000001', 'd0000319-0000-0000-0000-000000000019', 1,
'Total body water in a 70kg adult male is approximately:',
'20 liters', '42 liters (60% of body weight)', '60 liters', '10 liters', NULL,
'B', 'Total body water (TBW) is approximately 60% of body weight in adult males (less in females and elderly due to higher fat content). For 70kg male: 70 × 0.6 = 42L. Distribution: intracellular fluid (ICF) = 2/3 of TBW (28L); extracellular fluid (ECF) = 1/3 of TBW (14L). ECF divides into interstitial (11L) and plasma (3L). Understanding compartments guides fluid therapy.', 'easy'),

('e0000319-0002-0000-0000-000000000002', 'd0000319-0000-0000-0000-000000000019', 2,
'Normal saline (0.9% NaCl) contains:',
'Na 100 mEq/L, Cl 100 mEq/L', 'Na 154 mEq/L, Cl 154 mEq/L', 'Na 130 mEq/L, Cl 109 mEq/L', 'Na 140 mEq/L, Cl 100 mEq/L', NULL,
'B', 'Normal saline (0.9% NaCl) contains Na 154 mEq/L and Cl 154 mEq/L (higher than plasma). Large volumes can cause hyperchloremic metabolic acidosis. Lactated Ringer (Na 130, K 4, Ca 3, Cl 109, lactate 28 mEq/L) is more physiologic and preferred for resuscitation. Plasmalyte/Normosol are balanced crystalloids with acetate/gluconate buffers. Choice depends on clinical context.', 'medium'),

('e0000319-0003-0000-0000-000000000003', 'd0000319-0000-0000-0000-000000000019', 3,
'Third-space fluid losses refer to:',
'Urine output', 'Fluid sequestered in tissues not in equilibrium with ECF (edema, bowel wall, peritoneal cavity)', 'Normal plasma volume', 'Insensible losses through skin', NULL,
'B', 'Third-spacing is fluid sequestration in spaces not readily exchangeable with ECF: bowel wall/lumen in obstruction, peritoneal cavity in peritonitis, tissues in trauma/burns/pancreatitis. This functional loss causes intravascular volume depletion despite positive fluid balance. Replacement requires additional crystalloid. Third-space mobilizes during recovery (diuretic phase) - reduce IV fluids to avoid overload.', 'medium'),

('e0000319-0004-0000-0000-000000000004', 'd0000319-0000-0000-0000-000000000019', 4,
'A patient with prolonged vomiting from pyloric stenosis will develop:',
'Hyperchloremic metabolic acidosis', 'Hypochloremic, hypokalemic metabolic alkalosis', 'Respiratory alkalosis', 'Lactic acidosis', NULL,
'B', 'Pyloric obstruction causes loss of gastric secretions (HCl, K+). Results in: hypochloremia (loss of Cl), hypokalemia (direct loss + renal K+ wasting to conserve H+), metabolic alkalosis (loss of H+, contraction alkalosis). Paradoxical aciduria occurs as kidneys excrete H+ to conserve K+. Treatment: IV normal saline with KCl (correct Cl and K deficits). Surgery after metabolic correction.', 'medium'),

('e0000319-0005-0000-0000-000000000005', 'd0000319-0000-0000-0000-000000000019', 5,
'Hyponatremia in a surgical patient is most commonly caused by:',
'Sodium loss through burns', 'Excess free water (dilutional) often from hypotonic IV fluids', 'Inadequate oral sodium intake', 'Hyperaldosteronism', NULL,
'B', 'Hyponatremia in hospital is usually dilutional from excess free water: hypotonic IV fluids (D5W, 0.45% NaCl), SIADH (surgery, pain, opioids, pulmonary/CNS disease), or water intake exceeding excretion. Less commonly from sodium loss (GI losses, diuretics, adrenal insufficiency). Treatment depends on cause, symptoms, and chronicity. Avoid rapid correction (>8-10 mEq/L/day) to prevent osmotic demyelination.', 'medium'),

('e0000319-0006-0000-0000-000000000006', 'd0000319-0000-0000-0000-000000000019', 6,
'Hyperkalemia is most urgently treated when:',
'Potassium is above 5.5 mEq/L', 'ECG changes are present (peaked T waves, widened QRS, sine wave)', 'Patient is asymptomatic', 'Only mild elevation is present', NULL,
'B', 'Hyperkalemia is emergent when ECG changes appear: peaked T waves (early), prolonged PR, widened QRS, sine wave pattern (pre-arrest). Treatment priority: (1) Stabilize myocardium - IV calcium gluconate (immediate, does not lower K+); (2) Shift K+ intracellularly - insulin/glucose, beta-agonists, bicarbonate (if acidotic); (3) Remove K+ - diuretics, kayexalate (slow), dialysis (definitive). Address underlying cause.', 'easy'),

('e0000319-0007-0000-0000-000000000007', 'd0000319-0000-0000-0000-000000000019', 7,
'Refeeding syndrome is characterized by:',
'Hyperphosphatemia', 'Hypophosphatemia, hypokalemia, hypomagnesemia when nutrition is restarted in malnourished patients', 'Hyperkalemia', 'Metabolic acidosis', NULL,
'B', 'Refeeding syndrome occurs when nutrition is restarted in severely malnourished patients. Insulin surge drives phosphate, potassium, and magnesium intracellularly, causing severe depletion. Complications: cardiac arrhythmias, respiratory failure, seizures, death. Prevention: identify at-risk patients, start feeding slowly (10-15 kcal/kg/day), supplement electrolytes prophylactically, monitor closely. Increase feeding gradually over 4-7 days.', 'medium'),

('e0000319-0008-0000-0000-000000000008', 'd0000319-0000-0000-0000-000000000019', 8,
'Enteral nutrition is preferred over parenteral nutrition because:',
'It is more expensive', 'It maintains gut mucosal integrity, reduces infectious complications, and is more physiologic', 'It provides more calories', 'It avoids the need for tube placement', NULL,
'B', 'Enteral nutrition (EN) maintains gut mucosal integrity and barrier function, reduces bacterial translocation, preserves gut-associated lymphoid tissue (GALT), stimulates normal hormonal responses, has fewer infectious complications (line sepsis, pneumonia), is less expensive. "If the gut works, use it." Start EN early when possible (within 24-48 hours in critical illness if hemodynamically stable). PN reserved for non-functioning gut.', 'easy'),

('e0000319-0009-0000-0000-000000000009', 'd0000319-0000-0000-0000-000000000019', 9,
'Total parenteral nutrition (TPN) is indicated when:',
'Patient can tolerate some oral intake', 'GI tract cannot be used (obstruction, short gut, high-output fistula, severe ileus) and nutrition is needed for >7-10 days', 'Patient prefers IV nutrition', 'For routine postoperative care', NULL,
'B', 'TPN indications: non-functioning GI tract for extended period (>7-10 days expected). Examples: mechanical intestinal obstruction, severe prolonged ileus, high-output enterocutaneous fistula, short bowel syndrome, severe mucositis. Complications: line sepsis, hyperglycemia, liver dysfunction, metabolic derangements. Requires central access for hyperosmolar solutions. Transition to EN as soon as gut function recovers.', 'medium'),

('e0000319-0010-0000-0000-000000000010', 'd0000319-0000-0000-0000-000000000019', 10,
'The daily maintenance fluid requirement for a 70kg adult using the 4-2-1 rule is approximately:',
'1500 mL/day', '2500 mL/day (approximately 100-110 mL/hour)', '4000 mL/day', '500 mL/day', NULL,
'B', 'The 4-2-1 rule (Holliday-Segar): 4 mL/kg/hr for first 10kg, + 2 mL/kg/hr for next 10kg, + 1 mL/kg/hr for each kg above 20kg. For 70kg: (4×10) + (2×10) + (1×50) = 40 + 20 + 50 = 110 mL/hr ≈ 2640 mL/day. Daily formula: 100 mL/kg for first 10kg + 50 mL/kg for next 10kg + 20 mL/kg for remaining = 1000 + 500 + 1000 = 2500 mL/day. Adjust for fever, losses, renal/cardiac status.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 19 (Fluids & Nutrition) with 10 self-assessment questions inserted' as status;
