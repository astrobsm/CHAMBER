-- ============================================================================
-- SURGERY 3 CME ARTICLE 115: Nutrition in Surgical Patients
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000181-0000-0000-0000-000000000181', 'a0000003-0000-0000-0000-000000000003', 'Nutrition in Surgical Patients', 'Nutritional assessment and support in surgical care')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000415-0000-0000-0000-000000000115',
    'c0000181-0000-0000-0000-000000000181',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Nutrition: Assessment, Enteral, and Parenteral Support',
    'Nutritional Management in Surgery',
    'This article covers nutritional assessment, metabolic response to surgery and stress, enteral nutrition access and formulas, total parenteral nutrition indications and complications, and immunonutrition.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000415-0001-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 1,
'Nutritional assessment of surgical patients should include:',
'Weight only', 'History of weight loss, serum albumin and prealbumin, physical exam for muscle wasting and edema, and validated screening tools', 'Height only', 'Only food preferences',
'B', 'NUTRITIONAL ASSESSMENT: multifaceted approach. HISTORY: unintentional WEIGHT LOSS (>10% in 6 months = severe malnutrition), dietary intake, GI symptoms. PHYSICAL EXAM: muscle wasting (temporal, thenar), subcutaneous fat loss, edema, hair/skin changes. LABS: ALBUMIN (reflects chronic status, half-life 20 days), PREALBUMIN (reflects acute changes, half-life 2-3 days), transferrin. Note: albumin affected by inflammation (negative acute phase reactant). SCREENING TOOLS: Nutritional Risk Screening (NRS-2002), Malnutrition Universal Screening Tool (MUST), Subjective Global Assessment (SGA). Malnutrition increases complications, mortality.', 'easy'),

('e0000415-0002-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 2,
'The metabolic response to surgical stress includes:',
'Decreased energy expenditure', 'Hypermetabolism, increased protein catabolism, insulin resistance, and inflammatory cytokine release', 'Anabolic state', 'Decreased glucose levels',
'B', 'METABOLIC RESPONSE TO STRESS (surgery, trauma, sepsis): EBB PHASE (initial): decreased metabolic rate, hypotension. FLOW PHASE (prolonged): HYPERMETABOLISM (increased energy expenditure), CATABOLISM (protein breakdown, negative nitrogen balance, muscle wasting), INSULIN RESISTANCE (stress hyperglycemia), inflammatory CYTOKINE release (IL-1, IL-6, TNF-alpha), increased cortisol, catecholamines, glucagon. CONSEQUENCES: muscle loss, impaired wound healing, immune dysfunction if nutritional needs not met. GOALS: provide adequate nutrition to minimize catabolism, support healing. Enhanced Recovery protocols aim to attenuate stress response.', 'easy'),

('e0000415-0003-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 3,
'Enteral nutrition is preferred over parenteral nutrition because:',
'It is cheaper only', 'It maintains gut mucosal integrity, reduces infectious complications, is more physiologic, and has fewer metabolic derangements', 'It has better taste', 'It is easier to administer',
'B', 'ENTERAL NUTRITION ADVANTAGES: (1) Maintains GUT MUCOSAL INTEGRITY (trophic effect, prevents atrophy). (2) Reduces bacterial TRANSLOCATION (gut barrier preserved). (3) Fewer INFECTIOUS complications (lower pneumonia, line infections vs TPN). (4) More PHYSIOLOGIC (stimulates gut hormones, bile flow, motility). (5) Fewer metabolic derangements (electrolytes, glucose). (6) Less expensive. "If the gut works, use it." PARENTERAL nutrition only when gut not usable or inadequate. Even small amounts of enteral ("trophic feeds") beneficial for gut maintenance.', 'easy'),

('e0000415-0004-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 4,
'Indications for total parenteral nutrition (TPN) include:',
'Patient preference', 'Non-functional GI tract such as bowel obstruction, short bowel syndrome, high-output fistulas, or severe pancreatitis with intolerance to enteral feeding', 'Mild anorexia', 'Weight loss alone',
'B', 'TPN INDICATIONS: when enteral nutrition not possible or insufficient. (1) BOWEL OBSTRUCTION (complete). (2) SHORT BOWEL SYNDROME (insufficient absorptive capacity). (3) HIGH-OUTPUT ENTEROCUTANEOUS FISTULAS (enteral feeding increases output, impairs healing). (4) Severe PANCREATITIS with enteral intolerance (though enteral often possible with nasojejunal feeding). (5) Prolonged ILEUS. (6) Severe mucositis. (7) Bowel ischemia. Duration: if anticipated inability to use gut >7 days (or 5-7 days if malnourished), start TPN. TPN should be temporary bridge when possible. Always reassess for enteral transition.', 'easy'),

('e0000415-0005-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 5,
'Refeeding syndrome is characterized by:',
'Hyperphosphatemia', 'Hypophosphatemia, hypokalemia, and hypomagnesemia occurring when malnourished patients are rapidly fed, potentially causing cardiac and neurologic complications', 'Hyperkalemia', 'Only affects obese patients',
'B', 'REFEEDING SYNDROME: metabolic derangement when MALNOURISHED patients fed too rapidly. MECHANISM: feeding stimulates insulin, drives glucose and electrolytes (phosphate, potassium, magnesium) into cells, causing serum depletion. HALLMARK: HYPOPHOSPHATEMIA (phosphate used for ATP synthesis in anabolism). Also: hypokalemia, hypomagnesemia, thiamine deficiency, fluid retention. CONSEQUENCES: cardiac arrhythmias, heart failure, respiratory failure, seizures, rhabdomyolysis, death. AT-RISK: prolonged starvation, anorexia nervosa, chronic alcoholism, cancer, postoperative. PREVENTION: start feeding slowly (10-20 kcal/kg/day), supplement phosphate, potassium, magnesium, thiamine before/during feeding, monitor electrolytes closely.', 'medium'),

('e0000415-0006-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 6,
'Enteral access options include:',
'Only nasogastric tube', 'Nasogastric tube for short-term, nasojejunal tube for aspiration risk, and gastrostomy or jejunostomy for long-term feeding (greater than 4 weeks)', 'Only PEG tube', 'IV access only',
'B', 'ENTERAL ACCESS OPTIONS: SHORT-TERM (<4 weeks): (1) NASOGASTRIC (NG) tube: easiest, gastric feeding (physiologic). (2) NASODUODENAL/NASOJEJUNAL: post-pyloric, for gastroparesis or high aspiration risk. LONG-TERM (>4 weeks): (3) GASTROSTOMY: PEG (percutaneous endoscopic), surgical, or radiologic. Direct gastric access. (4) JEJUNOSTOMY: PEJ (through PEG), surgical jejunostomy (placed during surgery). Post-pyloric, for severe GERD, gastroparesis, gastric outlet obstruction. Choice depends on duration, anatomy, aspiration risk, surgical access. Jejunal feeding requires continuous infusion (no reservoir function).', 'easy'),

('e0000415-0007-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 7,
'Complications of TPN include:',
'No significant complications', 'Catheter-related bloodstream infection (CRBSI), hepatic steatosis, cholestasis, hyperglycemia, and electrolyte abnormalities', 'Only minor issues', 'Weight loss only',
'B', 'TPN COMPLICATIONS: CATHETER-RELATED: CRBSI (line infection - most common serious complication), thrombosis, pneumothorax (insertion), air embolism. METABOLIC: HYPERGLYCEMIA (common, monitor closely, treat with insulin), electrolyte abnormalities (hypo/hyperkalemia, hypophosphatemia, hypomagnesemia), refeeding syndrome. HEPATOBILIARY: hepatic STEATOSIS (fatty liver from excess glucose/lipid), CHOLESTASIS (lack of enteral stimulation of bile flow), acalculous cholecystitis. GUT ATROPHY: loss of mucosal integrity. OVERFEEDING: excess CO2 production, respiratory failure. Prevention: sterile technique, minimize duration, transition to enteral when possible.', 'medium'),

('e0000415-0008-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 8,
'Early postoperative enteral nutrition:',
'Should be delayed for 1 week', 'Is safe and beneficial in most patients, starting within 24-48 hours after surgery as part of enhanced recovery protocols', 'Increases anastomotic leak', 'Is contraindicated after all surgery',
'B', 'EARLY POSTOPERATIVE ENTERAL NUTRITION: paradigm shift from traditional "NPO until bowel function returns." EVIDENCE: safe and beneficial in most patients. ENHANCED RECOVERY (ERAS) protocols: start oral intake or tube feeding within 24-48 HOURS. BENEFITS: reduced infection, shorter hospital stay, preserved gut integrity, earlier return of bowel function. Does NOT increase anastomotic leak rates (multiple studies). EXCEPTIONS: complete bowel obstruction, hemodynamic instability, high anastomotic leak risk requiring bowel rest. Start with clear liquids or low-volume feeds, advance as tolerated. "Early" = within 24-48 hours, not waiting for flatus or bowel movement.', 'easy'),

('e0000415-0009-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 9,
'Immunonutrition includes supplementation with:',
'Only vitamins', 'Arginine, glutamine, omega-3 fatty acids, and nucleotides, which may modulate immune function and reduce infectious complications in surgical patients', 'Only calories', 'Standard formula only',
'B', 'IMMUNONUTRITION: enhanced enteral formulas with specific nutrients to modulate immune response. COMPONENTS: (1) ARGININE: nitric oxide precursor, T-cell function, wound healing. (2) GLUTAMINE: enterocyte fuel, gut barrier, immune function. (3) OMEGA-3 FATTY ACIDS: anti-inflammatory (reduce pro-inflammatory eicosanoids). (4) NUCLEOTIDES: RNA/DNA synthesis, cell proliferation. EVIDENCE: mixed results overall. May reduce infectious complications in major elective GI surgery, trauma, critically ill (variable). Benefit most consistent in preoperative use for major cancer surgery. Cost considerations. Not all guidelines strongly recommend. Examples: Impact, Pivot.', 'medium'),

('e0000415-0010-0000-0000-000000000115', 'd0000415-0000-0000-0000-000000000115', 10,
'Nutritional requirements in surgical patients typically include:',
'Only 500 kcal/day', 'Approximately 25-30 kcal/kg/day and 1.2-2.0 g protein/kg/day, with adjustments for stress level and nutritional status', 'No protein needed', 'Unlimited calories',
'B', 'NUTRITIONAL REQUIREMENTS: ENERGY: approximately 25-30 KCAL/KG/DAY (higher in severe stress/burns, lower if obese using adjusted weight). Indirect calorimetry most accurate if available. PROTEIN: 1.2-2.0 G/KG/DAY (higher in critical illness, burns, wounds - may need 2.0-2.5 g/kg/day). Goal: minimize catabolism, support wound healing, immune function. MACRONUTRIENTS: carbohydrate (50-60% non-protein calories), fat (20-30%, avoid overfeeding). MICRONUTRIENTS: vitamins, trace elements, electrolytes - supplement deficiencies. Avoid OVERFEEDING: excess calories cause fatty liver, increased CO2 production, hyperglycemia. Calculate and monitor.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 115 (Nutrition in Surgical Patients) with 10 self-assessment questions inserted' as status;
