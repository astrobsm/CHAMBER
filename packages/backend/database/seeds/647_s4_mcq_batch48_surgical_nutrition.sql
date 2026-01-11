-- Surgery 4 MCQ Question Bank - Batch 48
-- Section H: Special Topics - Surgical Nutrition
-- 40 Questions

-- Topic: Surgical Nutrition
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000048-0000-0000-0000-000000000048', 'Surgical Nutrition', 'a0000004-0000-0000-0000-000000000004', 'Nutritional assessment, enteral and parenteral nutrition, and metabolic response to injury', 48, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Malnutrition in surgical patients is associated with:',
 'Improved outcomes', 'Increased complications infection rates and mortality', 'No effect on outcomes', 'Faster healing', 'Decreased length of stay',
 'B', 'Malnutrition consequences: impaired wound healing, increased SSI, anastomotic leak, pneumonia, pressure ulcers, prolonged hospitalization, increased mortality. Preoperative optimization improves outcomes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Nutritional screening should be performed:',
 'Only in severely ill patients', 'On all surgical patients at admission', 'Only postoperatively', 'Never routinely', 'Only in cancer patients',
 'B', 'Nutritional screening: all hospitalized patients, especially surgical. Tools: NRS-2002, MUST, SGA. Identifies at-risk patients for detailed assessment and intervention. Early identification allows preoperative optimization.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Serum albumin as a nutritional marker:',
 'Is the best acute indicator', 'Has a long half-life and reflects chronic status more than acute changes', 'Changes rapidly with nutrition', 'Is unaffected by inflammation', 'Is always accurate',
 'B', 'Albumin: half-life 20 days, reflects chronic nutritional status. Affected by inflammation (negative acute phase reactant), liver disease, fluid status. Low albumin predicts poor outcomes but is not specific for nutrition.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Prealbumin (transthyretin) as a nutritional marker:',
 'Has very long half-life', 'Has a short half-life of 2-3 days reflecting recent nutritional changes', 'Is not affected by inflammation', 'Is not clinically useful', 'Increases in malnutrition',
 'B', 'Prealbumin: short half-life (2-3 days), responds quickly to nutritional changes. Better for monitoring acute nutritional status. Still affected by inflammation (decreases as acute phase reactant), renal and liver function.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'The metabolic response to injury (stress response) includes:',
 'Decreased metabolic rate', 'Hypermetabolism protein catabolism hyperglycemia and fluid retention', 'Anabolism', 'Hypoglycemia', 'Decreased cortisol',
 'B', 'Stress response to injury: hormonal (increased cortisol, catecholamines, glucagon), metabolic (hypermetabolism, protein catabolism, gluconeogenesis, insulin resistance, lipolysis). Goal: mobilize substrates for healing and immune function.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'The ebb phase of injury response is characterized by:',
 'Hypermetabolism', 'Decreased metabolic rate hypoperfusion and hypothermia', 'Anabolism', 'Increased cardiac output', 'Protein synthesis',
 'B', 'Ebb phase (early, hours): decreased metabolic rate, hypoperfusion, decreased cardiac output, hypothermia. Shock/resuscitation phase. Flow phase follows (days): hypermetabolism, increased oxygen consumption, catabolism.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'The flow phase of injury response is characterized by:',
 'Decreased metabolism', 'Hypermetabolism with increased oxygen consumption and catabolism', 'Anabolism only', 'Return to baseline', 'Decreased cardiac output',
 'B', 'Flow phase (catabolic, days to weeks): hypermetabolism, increased oxygen consumption, cardiac output. Protein catabolism (muscle breakdown for gluconeogenesis), negative nitrogen balance. Nutritional support aims to minimize catabolism.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Protein requirements in critically ill or surgical stress patients are:',
 'Decreased', 'Increased to 1.2-2 g/kg/day', 'Same as healthy adults', '0.5 g/kg/day', 'Protein should be avoided',
 'B', 'Protein needs in stress: 1.2-2 g/kg/day (vs 0.8 g/kg in healthy). Higher in burns, trauma, dialysis. Essential for wound healing, immune function, preserving lean body mass. Monitor nitrogen balance.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Caloric requirements in critically ill patients are typically:',
 '35-40 kcal/kg/day', '25-30 kcal/kg/day or calculated by indirect calorimetry', '10 kcal/kg/day', '50 kcal/kg/day', 'No calories needed initially',
 'B', 'Caloric needs: ~25-30 kcal/kg/day for most critically ill (indirect calorimetry if available for accurate measurement). Avoid overfeeding (hyperglycemia, liver dysfunction, CO2 production). Burns may need 30-35+ kcal/kg/day.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Indirect calorimetry measures:',
 'Protein intake', 'Oxygen consumption and CO2 production to determine energy expenditure', 'Nitrogen balance', 'Fluid status', 'Vitamin levels',
 'B', 'Indirect calorimetry: measures VO2 and VCO2, calculates resting energy expenditure (REE). Gold standard for caloric needs. More accurate than equations. Respiratory quotient (RQ = VCO2/VO2) indicates substrate utilization.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Enteral nutrition is preferred over parenteral because:',
 'It is more expensive', 'It maintains gut integrity reduces infection and has fewer complications', 'It provides more calories', 'It is easier to administer', 'No significant difference',
 'B', 'EN advantages: maintains GI mucosa integrity, reduces bacterial translocation, lower infection rates, preserves GALT (gut-associated lymphoid tissue), fewer metabolic complications, cheaper. "If the gut works, use it."', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Early enteral nutrition in critically ill patients should be started:',
 'After bowel sounds return', 'Within 24-48 hours if hemodynamically stable', 'After 1 week', 'Only after extubation', 'When patient can eat orally',
 'B', 'Early EN: initiate within 24-48 hours if hemodynamically stable. Do not wait for bowel sounds, flatus, or bowel movement. Trophic feeds (10-20 mL/hr) acceptable initially. Advance as tolerated. Benefits even without full caloric goals.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Contraindications to enteral nutrition include:',
 'Ileus only', 'Bowel obstruction severe hemodynamic instability or high-output fistula', 'NPO for surgery', 'Mild ileus', 'Nasogastric tube',
 'B', 'EN contraindications: mechanical bowel obstruction, bowel ischemia/necrosis, severe shock (on high-dose vasopressors), high-output fistula without access distal to fistula, severe GI hemorrhage. Relative: severe ileus, pancreatitis (actually EN beneficial).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Gastric feeding compared to post-pyloric feeding:',
 'Is contraindicated', 'Is acceptable for most patients with post-pyloric for those at high aspiration risk', 'Is always inferior', 'Is never used', 'Requires surgery',
 'B', 'Gastric feeding: easier to place, appropriate for most patients. Post-pyloric (jejunal): consider for high aspiration risk, gastroparesis, recurrent high residuals. No clear mortality difference. Use what is available and tolerated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Aspiration risk during enteral feeding is reduced by:',
 'Flat positioning', 'Head of bed elevation to 30-45 degrees', 'Bolus feeding only', 'Large tube size', 'No specific measures',
 'B', 'Aspiration prevention: head of bed elevation 30-45 degrees, avoid oversedation, check residuals (though routine checking questioned), use prokinetics if gastroparesis, post-pyloric feeding if high risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Refeeding syndrome occurs in:',
 'Overfed patients only', 'Malnourished patients when nutrition is restarted rapidly', 'Well-nourished patients', 'Only with TPN', 'Only with EN',
 'B', 'Refeeding syndrome: metabolic disturbances when nutrition restarted in chronically malnourished. Shifts: K, Mg, phosphorus into cells. Hypophosphatemia most dangerous. Fluid retention. Cardiac complications. Start low, go slow.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'The most common electrolyte abnormality in refeeding syndrome is:',
 'Hyperkalemia', 'Hypophosphatemia', 'Hypernatremia', 'Hypercalcemia', 'Hypermagnesemia',
 'B', 'Refeeding hypophosphatemia: insulin surge with carbohydrate drives phosphorus into cells. Severe hypophosphatemia causes respiratory failure, cardiac dysfunction, rhabdomyolysis, seizures. Monitor and replete electrolytes during refeeding.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Prevention of refeeding syndrome includes:',
 'Aggressive initial feeding', 'Gradual advancement of nutrition with electrolyte monitoring and repletion', 'No special measures', 'Avoiding all nutrition', 'High carbohydrate diet',
 'B', 'Refeeding prevention: identify at-risk patients (prolonged starvation, anorexia, alcoholism), start nutrition slowly (10-20 kcal/kg/day), advance gradually, monitor K/Mg/phos daily, supplement thiamine before feeding, replete electrolytes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Parenteral nutrition is indicated when:',
 'First-line in all patients', 'Enteral feeding is contraindicated or fails and patient cannot meet needs for 7 or more days', 'For convenience', 'Only in cancer patients', 'For short-term only',
 'B', 'TPN indications: GI tract not usable (obstruction, severe ileus, short bowel, fistula), EN failure, anticipated inability to use GI tract >7 days. In well-nourished patients, can wait 7 days before starting TPN.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Central venous access for parenteral nutrition is required for:',
 'All TPN', 'Solutions with high osmolarity typically greater than 900 mOsm/L', 'Low concentration solutions', 'Short-term feeding', 'Lipid infusion',
 'B', 'Central TPN: high osmolarity solutions (>900 mOsm/L, typically >10% dextrose) cause phlebitis in peripheral veins. Central access allows higher concentrations. Peripheral parenteral nutrition (PPN): lower osmolarity, short-term only.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Components of standard TPN include:',
 'Only glucose', 'Dextrose amino acids lipids electrolytes vitamins and trace elements', 'Only protein', 'Only lipids', 'Medications only',
 'B', 'TPN components: carbohydrate (dextrose), protein (amino acids), fat (lipid emulsion), electrolytes (Na, K, Ca, Mg, Cl, phosphate, acetate), vitamins (MVI), trace elements (Zn, Cu, Mn, Cr, Se). Individualized based on needs.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Lipid emulsion in TPN provides:',
 'Only protein', 'Essential fatty acids and concentrated calorie source', 'Carbohydrates', 'Vitamins only', 'Electrolytes',
 'B', 'Lipid emulsion: essential fatty acids (linoleic, linolenic - prevent EFAD), concentrated energy (9 kcal/g), isoosmotic. Limit to 1 g/kg/day or less. Hypertriglyceridemia requires dose reduction. Alternative formulations (fish oil, olive oil) available.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Complications of parenteral nutrition include:',
 'No complications', 'Central line infection hyperglycemia liver dysfunction and metabolic abnormalities', 'Only infection', 'Only hyperglycemia', 'Only mechanical',
 'B', 'TPN complications: catheter-related (infection, thrombosis, mechanical), metabolic (hyperglycemia, hypoglycemia if stopped abruptly, electrolyte abnormalities, refeeding), hepatic (steatosis, cholestasis), gut atrophy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'TPN-associated liver dysfunction includes:',
 'Only hepatitis', 'Steatosis and cholestasis especially with prolonged use', 'Cirrhosis only', 'No liver effects', 'Liver function improvement',
 'B', 'PNALD (parenteral nutrition-associated liver disease): steatosis (early, overfeeding), cholestasis (later, especially long-term, pediatric). Multifactorial: overfeeding, lipid toxicity, lack of enteral stimulation. Cyclical TPN, fish oil lipids may help.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Short bowel syndrome results from:',
 'Normal bowel length', 'Extensive intestinal resection leaving insufficient absorptive surface', 'Obstruction', 'Motility disorder', 'Crohn disease alone',
 'B', 'Short bowel syndrome: <200 cm small bowel (or functional equivalent), intestinal failure with malabsorption. Causes: mesenteric ischemia, repeated Crohn resections, trauma, NEC. Management: intestinal adaptation, TPN, intestinal transplant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Management of short bowel syndrome includes:',
 'Normal diet only', 'TPN support intestinal rehabilitation and potentially intestinal transplant', 'Antibiotics only', 'Surgery always curative', 'No treatment available',
 'B', 'SBS management: TPN for intestinal failure, gradual intestinal adaptation (hyperphagia, bowel dilation), enteral feeding even if partial, anti-diarrheal medications, GLP-2 analogs (teduglutide), intestinal lengthening procedures, transplant.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Immunonutrition refers to:',
 'Standard nutrition', 'Specialized formulas with nutrients that modulate immune function', 'TPN only', 'Low-protein diets', 'Clear liquid diet',
 'B', 'Immunonutrition: formulas with immune-modulating nutrients (arginine, glutamine, omega-3 fatty acids, nucleotides). May benefit surgical patients (reduce SSI, length of stay). Evidence mixed. Used perioperatively in major GI surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Glutamine is considered a conditionally essential amino acid because:',
 'Always essential', 'It becomes essential during critical illness when demand exceeds synthesis', 'Never essential', 'Only in infants', 'Same as all amino acids',
 'B', 'Glutamine: conditionally essential. Normally synthesized adequately. During stress, demand exceeds production. Fuel for enterocytes, immune cells. Supplementation controversial - some studies show benefit, recent trials question routine use.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Preoperative nutritional optimization in malnourished patients:',
 'Is not helpful', 'May include 7-14 days of nutritional support before major elective surgery', 'Should be done for 1 day only', 'Delays surgery unnecessarily', 'Is only for emergencies',
 'B', 'Preoperative nutrition: severely malnourished patients benefit from 7-14 days of nutritional support (EN or TPN) before major elective surgery. Reduces complications. Balance against urgency of surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Enhanced recovery after surgery (ERAS) nutritional elements include:',
 'Prolonged fasting', 'Carbohydrate loading early postoperative feeding and avoiding prolonged fasting', 'TPN for all patients', 'Clear liquids only for 1 week', 'No specific recommendations',
 'B', 'ERAS nutrition: minimize preoperative fasting, carbohydrate loading (clear drink 2-3h before surgery), early oral intake postoperatively (within hours if appropriate), avoid routine nasogastric tubes. Reduces insulin resistance, improves recovery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Clear liquid carbohydrate drinks before surgery:',
 'Are contraindicated', 'Are safe and reduce insulin resistance when given 2-3 hours before surgery', 'Increase aspiration risk', 'Should be given immediately before', 'Only for diabetics',
 'B', 'Preoperative carbohydrate loading: clear carbohydrate drink 2-3 hours before surgery. Safe (gastric emptying similar to water). Reduces postoperative insulin resistance, improves wellbeing. Part of ERAS protocols.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Vitamin deficiencies that affect wound healing include deficiencies of:',
 'Only vitamin D', 'Vitamin C zinc and vitamin A', 'Only vitamin B12', 'Only iron', 'No vitamins affect healing',
 'B', 'Nutrients for wound healing: vitamin C (collagen synthesis), zinc (protein synthesis, immune function), vitamin A (epithelialization, collagen), protein, arginine. Deficiency impairs healing. Supplement if deficient.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Zinc deficiency causes:',
 'Improved wound healing', 'Impaired wound healing and immune dysfunction', 'No clinical effects', 'Improved taste', 'Increased appetite',
 'B', 'Zinc deficiency: impaired wound healing, immune dysfunction (cell-mediated), dermatitis (acrodermatitis), diarrhea, alopecia, altered taste (dysgeusia). At risk: burns, high-output fistula, malabsorption. Monitor and replete.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Thiamine deficiency in surgical patients can cause:',
 'No symptoms', 'Wernicke encephalopathy and lactic acidosis', 'Improved cognition', 'Weight gain', 'Bradycardia',
 'B', 'Thiamine (B1) deficiency: Wernicke encephalopathy (confusion, ataxia, oculomotor dysfunction), lactic acidosis, heart failure, peripheral neuropathy. Risk: alcoholism, prolonged NPO/TPN without vitamins, refeeding. Give thiamine before glucose.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Essential fatty acid deficiency can occur with:',
 'Normal diet', 'Prolonged fat-free parenteral nutrition', 'Oral feeding', 'Short-term TPN', 'High-fat diet',
 'B', 'EFAD: occurs with fat-free TPN for 2-4 weeks. Linoleic and linolenic acid deficient. Signs: dermatitis (dry, scaly), alopecia, impaired wound healing, thrombocytopenia. Prevent with lipid emulsion at least 2-3x weekly.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Trace element deficiencies in long-term TPN include deficiencies of:',
 'No trace elements affected', 'Zinc copper selenium and chromium', 'Only iron', 'Only calcium', 'Only magnesium',
 'B', 'Trace element deficiencies with TPN: zinc (dermatitis, poor healing, diarrhea), copper (anemia, neutropenia), selenium (cardiomyopathy, myopathy), chromium (glucose intolerance), manganese (can accumulate causing toxicity). Monitor periodically.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Nitrogen balance is calculated to assess:',
 'Caloric needs', 'Adequacy of protein intake relative to losses', 'Vitamin status', 'Hydration', 'Electrolyte balance',
 'B', 'Nitrogen balance = nitrogen in - nitrogen out. Nitrogen in = protein intake/6.25. Nitrogen out = 24h urine urea nitrogen + 4 (insensible losses). Positive balance = anabolism. Negative = catabolism. Goal: positive or equilibrium.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Enteral feeding formulas for diabetic patients:',
 'Are high in simple sugars', 'Often contain modified carbohydrate with higher fiber and fat', 'Are the same as standard formulas', 'Contain no carbohydrates', 'Are only TPN',
 'B', 'Diabetic formulas: lower glycemic index, modified carbohydrates (fructose, fiber, resistant starch), higher fat and MUFA. May improve glycemic control vs standard formulas. Still need overall glucose management strategy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000048-0000-0000-0000-000000000048', 'a0000004-0000-0000-0000-000000000004',
 'Elemental or semi-elemental formulas are indicated for:',
 'All patients', 'Patients with malabsorption severe GI dysfunction or pancreatic insufficiency', 'Only healthy patients', 'Long-term feeding only', 'Never indicated',
 'B', 'Elemental/semi-elemental formulas: predigested nutrients (amino acids or peptides, MCT). Indicated for severe malabsorption, short bowel, pancreatic insufficiency, severe GI dysfunction. More expensive, not needed for most patients.', 'medium', 'knowledge');
