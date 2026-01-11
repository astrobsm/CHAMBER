-- ============================================================================
-- SURGERY 3 CME ARTICLE 67: Nutritional Support in Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000133-0000-0000-0000-000000000133', 'a0000003-0000-0000-0000-000000000003', 'Nutritional Support in Surgery', 'Enteral and parenteral nutrition in surgical patients')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000367-0000-0000-0000-000000000067',
    'c0000133-0000-0000-0000-000000000133',
    'a0000003-0000-0000-0000-000000000003',
    'Nutritional Support: Enteral and Parenteral Nutrition',
    'Feeding the Surgical Patient',
    'This article covers nutritional assessment, metabolic response to surgery and trauma, enteral nutrition (routes, formulas, complications), parenteral nutrition (indications, composition, monitoring), refeeding syndrome, and immunonutrition.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000367-0001-0000-0000-000000000001', 'd0000367-0000-0000-0000-000000000067', 1,
'The preferred route for nutritional support in surgical patients with a functioning GI tract is:',
'Total parenteral nutrition (TPN)', 'Enteral nutrition because it maintains gut integrity and reduces infectious complications', 'Peripheral parenteral nutrition', 'No nutritional support needed', NULL,
'B', 'Enteral nutrition (EN) is preferred when GI tract is functional. Benefits: maintains gut mucosal integrity, prevents bacterial translocation, reduces infectious complications (pneumonia, catheter sepsis), lower cost, more physiologic, fewer metabolic complications than TPN. "If the gut works, use it." Contraindications to EN: complete bowel obstruction, severe ileus, intestinal ischemia, high-output fistula, severe shock. Start early (within 24-48 hours when possible). Even trophic feeding (10-20 mL/hr) has mucosal benefits.', 'easy'),

('e0000367-0002-0000-0000-000000000002', 'd0000367-0000-0000-0000-000000000067', 2,
'Refeeding syndrome is characterized by:',
'Hyperkalemia and hyperphosphatemia', 'Hypophosphatemia, hypokalemia, and hypomagnesemia occurring when malnourished patients are refed', 'Hyperglycemia only', 'Elevated albumin', NULL,
'B', 'Refeeding syndrome: potentially fatal metabolic complication when nutrition restarted in severely malnourished patients. Pathophysiology: carbohydrate intake stimulates insulin, driving glucose/K/Mg/PO4 intracellularly. HALLMARK: severe HYPOPHOSPHATEMIA. Also: hypokalemia, hypomagnesemia, fluid retention, thiamine deficiency. Risk factors: prolonged starvation, anorexia nervosa, chronic alcoholism, cancer, elderly. Complications: cardiac failure, arrhythmias, respiratory failure, rhabdomyolysis. Prevention: identify high-risk patients, start feeding slowly (10-15 kcal/kg/day), supplement phosphate/K/Mg/thiamine, monitor electrolytes closely.', 'easy'),

('e0000367-0003-0000-0000-000000000003', 'd0000367-0000-0000-0000-000000000067', 3,
'Total parenteral nutrition (TPN) requires central venous access because:',
'Peripheral veins can tolerate any osmolarity', 'High osmolarity solutions (greater than 900 mOsm/L) cause phlebitis in peripheral veins', 'It is more convenient', 'TPN never causes infections', NULL,
'B', 'TPN via central access: required for solutions >900 mOsm/L (typical TPN 1500-2000 mOsm/L). High osmolarity causes peripheral vein phlebitis, thrombosis. Central lines: subclavian, internal jugular, PICC. Peripheral parenteral nutrition (PPN): osmolarity <900, limited calories/protein, short-term use (<2 weeks). TPN complications: catheter-related bloodstream infection (CRBSI), thrombosis, metabolic (hyperglycemia, electrolyte disturbances, liver dysfunction, refeeding syndrome). Requires monitoring: glucose, electrolytes, LFTs, triglycerides. Aseptic technique for line care essential.', 'easy'),

('e0000367-0004-0000-0000-000000000004', 'd0000367-0000-0000-0000-000000000067', 4,
'The metabolic response to major surgery/trauma includes:',
'Decreased metabolic rate and anabolism', 'Increased catabolism with protein breakdown, hyperglycemia, and negative nitrogen balance', 'No metabolic changes', 'Decreased cortisol levels', NULL,
'B', 'Metabolic response to stress (surgery/trauma): EBB PHASE (early, hours): decreased metabolic rate, hypoperfusion. FLOW PHASE (catabolic, days to weeks): hypermetabolism, protein catabolism, skeletal muscle breakdown (provides amino acids for gluconeogenesis, acute-phase proteins), NEGATIVE NITROGEN BALANCE, hyperglycemia (insulin resistance), lipolysis. Hormonal: increased cortisol, catecholamines, glucagon, GH; decreased insulin action. Goal of nutritional support: minimize catabolism, provide substrate, preserve lean body mass. Adequate protein crucial (1.5-2 g/kg/day in stress).', 'easy'),

('e0000367-0005-0000-0000-000000000005', 'd0000367-0000-0000-0000-000000000067', 5,
'Gastric residual volumes (GRV) during enteral feeding:',
'Should trigger stopping feeds if greater than 50 mL', 'High GRV (greater than 500 mL) may indicate intolerance, but routine GRV monitoring is not strongly recommended by recent guidelines', 'Are measured every 30 minutes', 'Have no clinical significance', NULL,
'B', 'Gastric residual volume (GRV): historically used to assess enteral feeding tolerance. Recent evidence: routine GRV monitoring may unnecessarily interrupt feeding without improving outcomes. Guidelines (ASPEN/SCCM): do not routinely hold feeds for GRV <500 mL in absence of other intolerance signs. Signs of intolerance: abdominal distension, vomiting, aspiration. If high GRV: assess for causes (ileus, obstruction), consider prokinetics (metoclopramide, erythromycin), post-pyloric feeding. Goal: adequate enteral nutrition delivery, avoid aspiration.', 'medium'),

('e0000367-0006-0000-0000-000000000006', 'd0000367-0000-0000-0000-000000000067', 6,
'A nasojejunal tube for feeding is preferred over nasogastric tube when:',
'All patients require post-pyloric feeding', 'There is high aspiration risk, gastroparesis, or severe pancreatitis', 'The patient can eat orally', 'Only for long-term feeding', NULL,
'B', 'Post-pyloric feeding (nasojejunal, nasoduodenal): indicated when gastric feeding is problematic or high aspiration risk. Indications: gastroparesis/delayed gastric emptying, high aspiration risk, severe acute pancreatitis, proximal GI surgery. Advantages: may reduce aspiration risk (though evidence mixed), bypasses stomach. Placement: bedside (blind, electromagnetic-guided) or endoscopic/fluoroscopic. Gastric feeding: simpler, physiologic, adequate for most patients. Long-term enteral access: PEG (gastrostomy), PEJ (jejunostomy), surgical gastrostomy/jejunostomy.', 'easy'),

('e0000367-0007-0000-0000-000000000007', 'd0000367-0000-0000-0000-000000000067', 7,
'Immunonutrition refers to:',
'Standard enteral formulas', 'Formulas enriched with arginine, omega-3 fatty acids, and nucleotides that may modulate immune function', 'Parenteral nutrition only', 'Low-protein diets', NULL,
'B', 'Immunonutrition (immune-modulating formulas): contain specific nutrients with immunologic effects. Components: ARGININE (T-cell function, wound healing, NO production), OMEGA-3 FATTY ACIDS (anti-inflammatory, modulate eicosanoid production), NUCLEOTIDES (cell proliferation, immune function), GLUTAMINE (enterocyte fuel, immune function). Evidence: may reduce infectious complications and LOS in elective GI surgery patients. Controversies: benefit in critically ill septic patients uncertain. Guidelines: consider in malnourished patients undergoing major cancer surgery. Not universally recommended for all surgical patients.', 'medium'),

('e0000367-0008-0000-0000-000000000008', 'd0000367-0000-0000-0000-000000000067', 8,
'Albumin as a nutritional marker:',
'Is the best indicator of acute nutritional status', 'Has a long half-life (20 days) and is affected by inflammation, making it a poor acute nutritional marker', 'Should be replaced with albumin infusions to improve nutrition', 'Rises immediately with feeding', NULL,
'B', 'Albumin as nutritional marker: LIMITATIONS. Half-life: 20 days (slow to reflect acute changes). Affected by: inflammation (negative acute-phase reactant - decreases in stress, infection, surgery), fluid status (dilutional), liver function, losses (wounds, nephrotic syndrome). Therefore: poor marker of ACUTE nutritional status. Better markers: prealbumin (half-life 2-3 days, also affected by inflammation), retinol-binding protein (half-life 12 hours). Albumin infusion does NOT improve nutritional status - provides no amino acids for protein synthesis. Clinical assessment (weight loss, dietary intake, functional status) important.', 'easy'),

('e0000367-0009-0000-0000-000000000009', 'd0000367-0000-0000-0000-000000000067', 9,
'Indications for parenteral nutrition include:',
'Any hospitalized patient', 'Non-functioning GI tract for greater than 7 days, short bowel syndrome, or high-output fistulas where enteral nutrition is not feasible', 'Patient preference', 'Mild malnutrition', NULL,
'B', 'Parenteral nutrition (PN) indications: GI tract non-functional or inaccessible. Specific indications: complete bowel obstruction, severe ileus (>7 days without improvement), short bowel syndrome (inadequate absorption), high-output enterocutaneous fistula, severe mucositis, mesenteric ischemia, severe pancreatitis (when EN not tolerated). Duration: expected NPO >7 days in well-nourished, >5 days in malnourished. Always try EN first. PN complications: infectious, metabolic, hepatic. Transition to EN as soon as possible. Supplemental PN if EN insufficient.', 'easy'),

('e0000367-0010-0000-0000-000000000010', 'd0000367-0000-0000-0000-000000000067', 10,
'Protein requirements in critically ill surgical patients are approximately:',
'0.5 g/kg/day', '1.2-2.0 g/kg/day to meet increased demands from catabolism', '3-4 g/kg/day', 'Protein is not needed', NULL,
'B', 'Protein requirements in critical illness: INCREASED due to catabolism, acute-phase response, wound healing. Recommendations: 1.2-2.0 g/kg/day (higher end for burns, severe trauma, continuous renal replacement therapy). Comparison: healthy adults 0.8-1.0 g/kg/day. Adequate protein: preserves lean body mass, supports immune function, wound healing. Assessment: nitrogen balance (nitrogen intake - nitrogen output), though imprecise. Total calories: 25-30 kcal/kg/day (avoid overfeeding - hyperglycemia, hepatic steatosis, increased CO2 production). Protein-calorie ratio important; hypocaloric high-protein approach may be appropriate early in critical illness.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 67 (Nutritional Support) with 10 self-assessment questions inserted' as status;
