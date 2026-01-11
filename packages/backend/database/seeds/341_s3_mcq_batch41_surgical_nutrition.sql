-- ============================================================================
-- SURGERY 3 MCQ BATCH 41: Surgical Nutrition (Questions 2401-2460)
-- Topic: Nutritional Assessment, Enteral and Parenteral Nutrition, Refeeding
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Nutritional Assessment (1-15)
('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Malnutrition in surgical patients is associated with:',
'Improved wound healing', 'Increased complications including poor wound healing, infections, increased length of stay, and mortality', 'Shorter hospitalization', 'Better outcomes', 'Faster recovery',
'B', 'Malnutrition consequences in surgery: (1) Poor wound healing (lack of protein/micronutrients for collagen synthesis), (2) Increased surgical site infections, (3) Anastomotic leaks, (4) Prolonged ventilation, (5) Longer ICU and hospital stay, (6) Increased mortality. Prevalence: 30-50% of hospitalized patients are malnourished. Screening and early intervention critical. Reference: Weimann A. Clin Nutr. 2017 (ESPEN Guidelines).',
'easy', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The serum protein with the shortest half-life, making it most sensitive for acute nutritional changes, is:',
'Albumin (21 days)', 'Prealbumin/transthyretin (2-3 days)', 'Transferrin (8-9 days)', 'Retinol-binding protein (12 hours)', 'Fibrinogen',
'D', 'Serum proteins for nutritional assessment: Half-lives determine sensitivity. Retinol-binding protein (RBP): 12 hours - most sensitive. Prealbumin: 2-3 days - commonly used. Transferrin: 8-9 days. Albumin: 20-21 days - reflects chronic status, not acute changes. Limitations: all are negative acute phase reactants (decrease with inflammation/infection), affected by liver/kidney disease. Not reliable indicators during acute illness. Reference: Shenkin A. Clin Chem. 2006.',
'hard', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The Subjective Global Assessment (SGA) evaluates nutritional status based on:',
'Laboratory values only', 'History of weight loss, dietary intake changes, GI symptoms, functional capacity, and physical examination findings', 'BMI alone', 'Albumin level', 'Calorie count',
'B', 'Subjective Global Assessment (SGA): validated clinical tool for nutritional assessment. Components: (1) Weight change (amount and pattern), (2) Dietary intake (vs usual, duration), (3) GI symptoms (nausea, vomiting, diarrhea, anorexia), (4) Functional capacity, (5) Disease and its metabolic stress, (6) Physical exam (subcutaneous fat loss, muscle wasting, edema, ascites). Classification: A (well nourished), B (moderate malnutrition), C (severe malnutrition). Does not require labs. Reference: Detsky AS. JPEN. 1987.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'A body mass index (BMI) indicating severe malnutrition is:',
'BMI 25-30', 'BMI less than 16 kg/m2', 'BMI 20-25', 'BMI 30-35', 'BMI 18-20',
'B', 'BMI classification: Underweight: less than 18.5. Mild malnutrition: 17-18.5. Moderate malnutrition: 16-17. Severe malnutrition: less than 16. Normal: 18.5-24.9. Overweight: 25-29.9. Obese: 30+. Limitations: does not account for body composition (muscle vs fat), edema, dehydration. Sarcopenic obesity: low muscle mass despite high BMI. Unintentional weight loss more important than absolute BMI. Reference: WHO Classification.',
'easy', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Nutritional optimization before major elective surgery should ideally begin:',
'Day of surgery', 'At least 7-14 days preoperatively for malnourished patients (prehabilitation)', 'After surgery', 'Not necessary', '1 day before',
'B', 'Preoperative nutrition (prehabilitation): ESPEN guidelines recommend 7-14 days of nutritional support before major surgery in severely malnourished patients. Components: oral nutritional supplements, immunonutrition (arginine, omega-3, nucleotides in some protocols), protein optimization (1.2-1.5 g/kg/day). Benefits: reduced complications, improved outcomes. Consider delaying elective surgery for nutritional optimization in severe malnutrition. Reference: Weimann A. Clin Nutr. 2017.',
'medium', 'knowledge'),

-- Metabolic Response to Injury (16-25)
('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The metabolic response to surgical stress includes:',
'Decreased energy expenditure', 'Increased catabolism, hyperglycemia, protein breakdown, and negative nitrogen balance', 'Anabolism', 'Decreased cortisol', 'Weight gain',
'B', 'Metabolic stress response: (1) Ebb phase (0-24 hours): decreased metabolism, hypothermia, shock. (2) Flow phase (catabolic): increased metabolic rate, hyperglycemia (stress response, insulin resistance), protein catabolism, lipolysis, negative nitrogen balance, increased O2 consumption. Hormonal: increased cortisol, catecholamines, glucagon; decreased insulin sensitivity. Inflammatory cytokines (IL-1, IL-6, TNF). Purpose: mobilize substrates for healing. Prolonged catabolism = muscle wasting. Reference: Cuthbertson DP. Classic description.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Stress hyperglycemia in critically ill patients should be managed to maintain blood glucose:',
'As low as possible', 'Target 140-180 mg/dL (7.8-10 mmol/L) with IV insulin', 'Above 300 mg/dL', 'No glucose monitoring needed', 'Below 80 mg/dL',
'B', 'Glycemic control in ICU: NICE-SUGAR trial: intensive glucose control (81-108 mg/dL) increased mortality compared to conventional (under 180 mg/dL). Current recommendation: target 140-180 mg/dL (8-10 mmol/L). Avoid both hyperglycemia (increased infections, poor wound healing) and hypoglycemia (neurological damage, mortality). IV insulin protocol for critically ill. Moderate control in surgical patients (under 200 mg/dL). Reference: NICE-SUGAR Study. N Engl J Med. 2009.',
'medium', 'knowledge'),

-- Enteral Nutrition (26-40)
('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The preferred route of nutritional support in critically ill patients is:',
'Total parenteral nutrition (TPN)', 'Enteral nutrition (EN) via the gastrointestinal tract when feasible', 'Peripheral IV fluids', 'No feeding', 'Oral supplements only',
'B', 'Enteral nutrition: preferred over parenteral when GI tract functional. Benefits: (1) Maintains gut integrity and barrier function, (2) Reduces bacterial translocation, (3) Stimulates gut-associated lymphoid tissue (GALT), (4) Fewer infectious complications, (5) Lower cost, (6) Fewer metabolic derangements. Principle: If the gut works, use it. EN should be started early (within 24-48 hours) in critically ill if no contraindications. Reference: McClave SA. ASPEN/SCCM Guidelines. JPEN. 2016.',
'easy', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Early enteral nutrition in critically ill patients should be initiated:',
'After return of bowel function', 'Within 24-48 hours of ICU admission in hemodynamically stable patients', 'After 1 week', 'Only when fully conscious', 'Never in intubated patients',
'B', 'Early EN: ASPEN/SCCM guidelines recommend initiation within 24-48 hours of ICU admission. Prerequisites: hemodynamically stable (may start at low dose even on low-dose vasopressors), no absolute contraindications. Benefits: maintains gut mucosal integrity, immune function, reduces infections. Does not require bowel sounds or flatus. Start low (10-20 mL/hr) and advance as tolerated. Trophic feeding in unstable patients. Reference: McClave SA. JPEN. 2016.',
'easy', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Contraindications to enteral nutrition include:',
'Absent bowel sounds', 'Mechanical bowel obstruction, severe hemodynamic instability on high-dose vasopressors, and bowel ischemia', 'Mild ileus', 'Diarrhea', 'Previous abdominal surgery',
'B', 'Absolute contraindications to EN: (1) Mechanical intestinal obstruction, (2) Bowel ischemia (non-occlusive mesenteric ischemia risk with feeding during shock), (3) Severe hemodynamic instability (high-dose vasopressors, rising lactate), (4) High-output GI fistula, (5) Peritonitis with uncontrolled source. Relative contraindications: severe ileus, intractable vomiting. Absent bowel sounds alone is NOT a contraindication. Reference: McClave SA. JPEN. 2016.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'For enteral feeding anticipated to last more than 4-6 weeks, the preferred access is:',
'Nasogastric tube', 'Percutaneous gastrostomy or jejunostomy (PEG/PEJ)', 'Nasojejunal tube', 'Oral feeding only', 'Parenteral nutrition',
'B', 'Long-term enteral access: for feeding greater than 4-6 weeks, percutaneous tubes preferred. PEG (percutaneous endoscopic gastrostomy): stomach access, placed endoscopically. Surgical gastrostomy: alternative. PEJ: jejunal access for patients with gastric outlet obstruction, gastroparesis, aspiration risk. Surgical jejunostomy. Benefits over NG: more comfortable, less nasal/esophageal irritation, more secure. Contraindications to PEG: ascites, coagulopathy, interposed colon. Reference: Gauderer MW. Original PEG description.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Gastric residual volumes (GRV) should be checked:',
'Every 15 minutes', 'Every 4-6 hours during gastric feeding, but high GRV alone should not automatically stop feeding', 'Never', 'Once daily', 'Only if symptomatic',
'B', 'Gastric residual volumes: traditionally checked to assess tolerance. Current evidence: (1) GRV is a poor marker of aspiration risk, (2) High GRV alone should not stop feeding. ASPEN guidelines: do not routinely measure GRV. If checked, do not hold feeding for GRV less than 500 mL in absence of other signs of intolerance. Signs requiring attention: vomiting, abdominal distension, regurgitation, increasing vasopressor needs, rising lactate. Reference: McClave SA. JPEN. 2016.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Enteral feeding formulas are categorized as:',
'Only elemental', 'Polymeric (standard), semi-elemental (peptide-based), and elemental (amino acid-based)', 'Only polymeric', 'By color', 'By manufacturer only',
'B', 'Enteral formula types: (1) Polymeric/standard: intact proteins, complex carbohydrates, LCT fats. Requires normal digestion. Most patients. (2) Semi-elemental/peptide-based: hydrolyzed proteins (peptides), MCT fats. For malabsorption, pancreatitis. (3) Elemental: free amino acids, simple sugars, minimal fat. For severe malabsorption, rarely needed. (4) Disease-specific: renal, hepatic, pulmonary, diabetic. (5) Immune-modulating: arginine, omega-3, glutamine. Reference: Cresci G. Nutr Clin Pract. 2015.',
'medium', 'knowledge'),

-- Parenteral Nutrition (41-55)
('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Total parenteral nutrition (TPN) is indicated when:',
'Patient refuses to eat', 'GI tract is not functional or accessible for more than 7 days and patient is malnourished or at nutritional risk', 'Minor surgery', 'Short-term fasting', 'Always in ICU',
'B', 'TPN indications: when enteral route not possible/inadequate for 7+ days. Examples: (1) Complete bowel obstruction, (2) Short bowel syndrome, (3) Severe pancreatitis with EN intolerance, (4) High-output fistulas, (5) Severe malabsorption, (6) Prolonged ileus. In malnourished patients: earlier TPN (before 7 days) if EN impossible. Avoid TPN in patients who can tolerate EN. Supplemental PN: when EN alone is inadequate (less than 60% goal after 7-10 days). Reference: McClave SA. JPEN. 2016.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'TPN should be administered via:',
'Peripheral IV for all patients', 'Central venous catheter for hypertonic solutions (greater than 900 mOsm/L)', 'IM injection', 'Subcutaneous', 'Any peripheral vein',
'B', 'TPN administration: hypertonic TPN (greater than 900 mOsm/L, usually with 20% dextrose or more) requires central venous access (subclavian, internal jugular, PICC). Peripheral vein cannot tolerate hyperosmolar solutions (phlebitis, thrombosis risk). Peripheral parenteral nutrition (PPN): lower osmolarity (less than 900), limited calories/protein, short-term use only. Central access also allows higher lipid concentrations. Strict aseptic technique essential. Reference: Mirtallo JM. JPEN. 2004.',
'easy', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The most common complication of total parenteral nutrition is:',
'Pneumothorax', 'Catheter-related bloodstream infection (CRBSI)', 'Hypoglycemia', 'Air embolism', 'Cardiac arrest',
'B', 'TPN complications: (1) Infectious: CRBSI most common serious complication. Strict aseptic technique, dedicated TPN lumen, minimize manipulation. Catheter hub and skin site colonization. (2) Mechanical: pneumothorax (at insertion), thrombosis, catheter malposition. (3) Metabolic: hyperglycemia (most common metabolic), electrolyte imbalances, refeeding syndrome, hepatobiliary (steatosis, cholestasis - IFALD), hypertriglyceridemia. Reference: Buchman AL. Gastroenterology. 2001.',
'easy', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'TPN-associated cholestasis (intestinal failure-associated liver disease) is managed by:',
'Increasing TPN lipid dose', 'Initiating enteral feeding if possible, cycling TPN, reducing soybean oil lipid, and using fish oil-based lipid emulsions', 'Stop all nutrition', 'Increase dextrose', 'Continue unchanged',
'B', 'IFALD (intestinal failure-associated liver disease): cholestasis from TPN. Risk factors: prolonged TPN, no enteral feeding, sepsis, short bowel. Pathogenesis: lack of enteral stimulation (bile stasis), excess soybean oil lipid (phytosterols, omega-6), overfeeding. Management: (1) Any enteral feeding if possible, (2) Cycle TPN (off 8-12 hours daily), (3) Reduce soybean oil lipid, (4) Use fish oil-based lipid (Omegaven/SMOFlipid - omega-3), (5) Avoid overfeeding. Reference: Gura KM. Pediatrics. 2006.',
'hard', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The recommended protein intake for critically ill patients is:',
'0.5 g/kg/day', '1.2-2.0 g/kg/day (higher than non-stressed individuals)', '0.8 g/kg/day', '3.0 g/kg/day', 'No protein needed',
'B', 'Protein requirements in critical illness: increased due to catabolism. ASPEN/SCCM: 1.2-2.0 g/kg actual body weight per day. Burns: up to 2.5 g/kg/day. Obesity: use ideal body weight (1.2-2.0 g/kg IBW). Protein delivery important for maintaining muscle mass and wound healing. Adequate protein more important than total calories in early critical illness. Avoid excessive calories (overfeeding). Reference: McClave SA. JPEN. 2016.',
'medium', 'knowledge'),

-- Refeeding Syndrome (56-60)
('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Refeeding syndrome is characterized by:',
'Hyperphosphatemia', 'Hypophosphatemia, hypokalemia, and hypomagnesemia occurring when nutrition is restarted in severely malnourished patients', 'Hyperkalemia', 'Hypernatremia', 'Hypercalcemia',
'B', 'Refeeding syndrome: potentially fatal metabolic disturbances when refeeding malnourished patients. Pathophysiology: during starvation, intracellular electrolytes depleted but serum levels maintained. Refeeding triggers insulin release and shift of electrolytes intracellularly. Key abnormalities: (1) Hypophosphatemia (most significant), (2) Hypokalemia, (3) Hypomagnesemia, (4) Thiamine deficiency, (5) Fluid shifts. Consequences: arrhythmias, respiratory failure, heart failure, seizures, death. Reference: Mehanna HM. BMJ. 2008.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Patients at high risk for refeeding syndrome include:',
'Well-nourished patients', 'BMI less than 16, weight loss greater than 15% in 3-6 months, little or no nutritional intake for greater than 10 days, or low baseline electrolytes', 'Obese patients', 'Athletes', 'Patients on regular diet',
'B', 'Refeeding syndrome risk factors (NICE guidelines): (1) BMI less than 16, (2) Unintentional weight loss greater than 15% in 3-6 months, (3) Little or no nutritional intake for greater than 10 days, (4) Low K, Mg, or PO4 before feeding. Also: anorexia nervosa, chronic alcoholism, prolonged fasting, cancer with poor intake, malabsorption, elderly with poor intake. Recognize risk before initiating nutrition. Reference: NICE Guidelines CG32.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Prevention of refeeding syndrome involves:',
'Starting full feeds immediately', 'Checking and correcting electrolytes before feeding, starting nutrition slowly (10-20 kcal/kg/day), supplementing thiamine, and monitoring electrolytes closely', 'Fluid restriction', 'High glucose infusion', 'No monitoring needed',
'B', 'Refeeding syndrome prevention: (1) Identify at-risk patients, (2) Check and correct K, Mg, PO4 BEFORE starting feeds, (3) Give thiamine (vitamin B1) before feeding and for first 10 days, (4) Start low and go slow: 10-20 kcal/kg/day initially (50% of goal), (5) Advance slowly over 4-7 days, (6) Monitor electrolytes daily for first week, (7) Supplement electrolytes as needed, (8) Monitor fluid balance (restrict initially in severe malnutrition). Reference: Stanga Z. Clin Nutr. 2008.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'Why is thiamine supplementation critical before refeeding?',
'Improves taste', 'Thiamine is a cofactor for carbohydrate metabolism; refeeding increases demand, and deficiency causes Wernicke encephalopathy', 'Prevents constipation', 'Increases appetite', 'Prevents nausea',
'B', 'Thiamine and refeeding: (1) Thiamine (B1) is essential cofactor for pyruvate dehydrogenase and alpha-ketoglutarate dehydrogenase (carbohydrate metabolism). (2) Malnourished patients have depleted thiamine stores. (3) Carbohydrate refeeding increases thiamine demand. (4) Deficiency leads to Wernicke encephalopathy (confusion, ophthalmoplegia, ataxia) - may be irreversible. (5) Always give IV thiamine before and during refeeding in at-risk patients (200-300 mg daily for first 3 days). Reference: Sechi G. Lancet Neurol. 2007.',
'medium', 'knowledge'),

('c0000056-0000-0000-0000-000000000056', 'a0000003-0000-0000-0000-000000000003',
'The caloric goal during the first week of feeding in ICU patients should be:',
'Maximum possible calories', 'Avoid overfeeding; trophic or hypocaloric feeding (70-80% of goal) initially may be appropriate, with adequate protein', 'No calories', 'Double calculated needs', 'Only protein',
'B', 'Early ICU nutrition: avoid overfeeding. Initial approach: (1) Trophic feeding (10-20 mL/hr) for hemodynamic instability, (2) Target 70-80% of caloric goal initially (hypocaloric), (3) Adequate protein is priority (1.2-2 g/kg/day), (4) Full caloric goal by end of first week if tolerated. EDEN trial: initial trophic feeding similar outcomes to full feeding. Overfeeding risks: hyperglycemia, hepatic steatosis, increased CO2 production, infection. Reference: Rice TW. JAMA. 2012 (EDEN trial).',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 41 (Surgical Nutrition): 60 questions inserted' as status;
