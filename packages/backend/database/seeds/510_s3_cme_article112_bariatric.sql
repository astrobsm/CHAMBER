-- ============================================================================
-- SURGERY 3 CME ARTICLE 112: Bariatric Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000178-0000-0000-0000-000000000178', 'a0000003-0000-0000-0000-000000000003', 'Bariatric Surgery', 'Surgical management of morbid obesity')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000412-0000-0000-0000-000000000112',
    'c0000178-0000-0000-0000-000000000178',
    'a0000003-0000-0000-0000-000000000003',
    'Bariatric Surgery: Procedures, Outcomes, and Complications',
    'Metabolic and Bariatric Surgery Essentials',
    'This article covers indications for bariatric surgery, sleeve gastrectomy and Roux-en-Y gastric bypass techniques, mechanisms of weight loss, nutritional deficiencies, dumping syndrome, and management of complications.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000412-0001-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 1,
'Indications for bariatric surgery include:',
'BMI greater than 25 alone', 'BMI greater than or equal to 40, or BMI 35-39.9 with obesity-related comorbidities, after failure of non-surgical weight loss efforts', 'Only diabetes alone', 'Age over 65 as sole criteria',
'B', 'BARIATRIC SURGERY INDICATIONS (NIH criteria, expanded in 2022): (1) BMI ≥40 (morbid obesity). (2) BMI 35-39.9 with obesity-related COMORBIDITIES (T2DM, hypertension, OSA, NAFLD, GERD, joint disease). (3) BMI 30-34.9 with poorly controlled T2DM (metabolic surgery). REQUIREMENTS: failed non-surgical weight loss attempts, psychological evaluation, understanding of lifelong lifestyle changes, no contraindications (active substance abuse, uncontrolled psychiatric disease, unable to comply with follow-up). Age: no strict limits, but careful evaluation in adolescents and elderly. Surgery is most effective treatment for morbid obesity with durable weight loss.', 'easy'),

('e0000412-0002-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 2,
'Sleeve gastrectomy:',
'Is a reversible procedure', 'Involves resection of approximately 80% of the stomach along the greater curvature creating a tubular stomach, and is primarily restrictive', 'Bypasses the small intestine', 'Is an adjustable procedure',
'B', 'SLEEVE GASTRECTOMY (SG): most commonly performed bariatric procedure. TECHNIQUE: resect approximately 80% of stomach along GREATER CURVATURE (including fundus), leaving tubular "sleeve" along lesser curvature, calibrated over bougie. IRREVERSIBLE (stomach removed). MECHANISM: primarily RESTRICTIVE (small stomach capacity), but also hormonal (removes ghrelin-producing fundus - reduces hunger). ADVANTAGES: no intestinal bypass or anastomosis, no foreign body, technically simpler, lower vitamin deficiencies than bypass. WEIGHT LOSS: 60-70% excess weight loss. Can be converted to gastric bypass or duodenal switch if needed.', 'easy'),

('e0000412-0003-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 3,
'Roux-en-Y gastric bypass:',
'Has no malabsorptive component', 'Creates a small gastric pouch connected to a Roux limb of jejunum, bypassing the distal stomach, duodenum, and proximal jejunum, combining restrictive and malabsorptive mechanisms', 'Only restricts food intake', 'Preserves all stomach',
'B', 'ROUX-EN-Y GASTRIC BYPASS (RYGB): combined restrictive and malabsorptive procedure. TECHNIQUE: create small (15-30mL) gastric POUCH from proximal stomach, divide jejunum creating ROUX LIMB (alimentary limb, 75-150cm), anastomose pouch to Roux limb (gastrojejunostomy), reconnect biliopancreatic limb downstream (jejunojejunostomy). MECHANISM: RESTRICTIVE (small pouch) + MALABSORPTIVE (bypass of duodenum, proximal jejunum) + HORMONAL (altered gut hormones, enhanced GLP-1). WEIGHT LOSS: 70-80% excess weight loss. Excellent for T2DM resolution. More nutritional deficiencies than sleeve (requires lifelong supplementation).', 'easy'),

('e0000412-0004-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 4,
'Nutritional deficiencies after gastric bypass commonly include:',
'No deficiencies occur', 'Iron, vitamin B12, calcium with vitamin D, and thiamine deficiencies, requiring lifelong supplementation and monitoring', 'Only protein deficiency', 'Carbohydrate deficiency',
'B', 'NUTRITIONAL DEFICIENCIES after gastric bypass: common due to malabsorption and reduced intake. IRON: absorbed in duodenum (bypassed), especially in menstruating women. B12: requires intrinsic factor from stomach + absorption in ileum - reduced acid and IF. CALCIUM/VITAMIN D: absorbed in duodenum, leads to secondary hyperparathyroidism, osteoporosis if untreated. THIAMINE (B1): can cause Wernicke encephalopathy if prolonged vomiting. Others: folate, zinc, copper. MANAGEMENT: LIFELONG supplementation (multivitamin, calcium/D, B12, iron as needed), regular lab monitoring (annually minimum). Sleeve gastrectomy: fewer deficiencies but still need supplementation.', 'easy'),

('e0000412-0005-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 5,
'Internal hernia after Roux-en-Y gastric bypass:',
'Never occurs', 'Is a serious complication where bowel herniates through mesenteric defects created during surgery, presenting with intermittent abdominal pain and potentially bowel obstruction', 'Is only cosmetic', 'Resolves spontaneously',
'B', 'INTERNAL HERNIA after RYGB: unique and serious complication. MECHANISM: bowel herniates through MESENTERIC DEFECTS created during bypass surgery (Peterson defect - between Roux limb and transverse mesocolon; jejunojejunostomy mesenteric defect; mesocolic defect in retrocolic approach). PRESENTATION: intermittent crampy abdominal pain (can be postprandial), may progress to acute OBSTRUCTION with strangulation. CT findings: mesenteric swirl, clustered small bowel, obstruction. TREATMENT: surgery - reduce hernia, close defects. May be elusive (intermittent, can reduce spontaneously). PREVENTION: close mesenteric defects at time of initial surgery. More common with weight loss (mesenteric fat loss).', 'medium'),

('e0000412-0006-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 6,
'Staple line leak after sleeve gastrectomy:',
'Is not a concern', 'Most commonly occurs near the gastroesophageal junction where blood supply is tenuous and pressure is high, presenting with tachycardia, fever, and left shoulder pain', 'Always requires reoperation', 'Only occurs in distal stomach',
'B', 'STAPLE LINE LEAK after sleeve gastrectomy: serious complication (1-3%). LOCATION: most common at PROXIMAL sleeve near GE JUNCTION (high pressure zone, relatively ischemic, where staple lines meet). PRESENTATION: TACHYCARDIA (often first sign), fever, abdominal/left shoulder pain, tachypnea. May be subtle early - high index of suspicion. DIAGNOSIS: CT with oral contrast (may be false negative), UGI study, clinical suspicion. MANAGEMENT: NPO, antibiotics, drainage (percutaneous or surgical), stent (covered SEMS), possible surgical washout. Often prolonged recovery (weeks to months). Chronic leaks may need conversion to bypass (fistulo-jejunostomy).', 'medium'),

('e0000412-0007-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 7,
'Type 2 diabetes remission after bariatric surgery:',
'Does not occur', 'Occurs in 60-90% of patients (higher with gastric bypass), often before significant weight loss, due to hormonal changes including improved incretin secretion', 'Only from weight loss', 'Is temporary in all cases',
'B', 'DIABETES REMISSION after bariatric surgery: occurs in 60-90% (varies by procedure and diabetes duration). MECHANISMS: (1) WEIGHT LOSS improves insulin sensitivity. (2) HORMONAL changes (enhanced GLP-1, GIP from altered gut anatomy - incretin effect) - can occur BEFORE significant weight loss. (3) Caloric restriction. (4) Changes in bile acid and gut microbiome. RYGB: highest remission rates, likely due to greater hormonal changes. Sleeve: also effective but slightly lower remission. DURABILITY: some relapse over years, but most maintain improvement. "Metabolic surgery" term reflects benefits beyond weight loss. Best results: shorter diabetes duration, no insulin requirement preoperatively.', 'medium'),

('e0000412-0008-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 8,
'Dumping syndrome after gastric bypass:',
'Is beneficial', 'Results from rapid emptying of hyperosmolar food into jejunum causing early symptoms (vasomotor, GI) and late symptoms (reactive hypoglycemia), and is managed with dietary modification', 'Never occurs', 'Requires surgery',
'B', 'DUMPING SYNDROME after gastric bypass: common (up to 50%). CAUSE: RAPID emptying of hyperosmolar contents into jejunum (no pylorus to regulate). EARLY dumping (15-30 min after eating): fluid shift to lumen, GI distension, vasoactive substance release. Symptoms: cramping, diarrhea, nausea, flushing, palpitations, sweating. LATE dumping (1-3 hours): reactive HYPOGLYCEMIA from exaggerated insulin response to rapid glucose absorption. Symptoms: weakness, sweating, confusion. MANAGEMENT: DIETARY modification (small meals, avoid simple sugars/high glycemic foods, separate liquids from solids, high protein). Some view dumping as "good" - reinforces healthy eating. Severe: octreotide, acarbose.', 'easy'),

('e0000412-0009-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 9,
'Marginal ulcer after gastric bypass:',
'Is the same as peptic ulcer', 'Occurs at the gastrojejunostomy anastomosis and is associated with smoking, NSAIDs, and H. pylori, presenting with epigastric pain', 'Never requires endoscopy', 'Is treated surgically always',
'B', 'MARGINAL ULCER: ulceration at GASTROJEJUNOSTOMY anastomosis after gastric bypass. INCIDENCE: 1-10%. RISK FACTORS: SMOKING (major factor), NSAID use, H. pylori, large pouch (more acid), ischemia, foreign body (staples, suture). PRESENTATION: epigastric/LUQ pain, bleeding, perforation. DIAGNOSIS: upper ENDOSCOPY (EGD) - visualize ulcer at anastomosis. TREATMENT: PPI (high dose), stop smoking and NSAIDs, treat H. pylori. SURGERY for: perforation, bleeding not controlled endoscopically, refractory to medical therapy, large gastrogastric fistula. Prevention: stop smoking preoperatively, avoid NSAIDs, PPI use especially early postoperatively.', 'medium'),

('e0000412-0010-0000-0000-000000000112', 'd0000412-0000-0000-0000-000000000112', 10,
'Long-term follow-up after bariatric surgery is important for:',
'Only the first year', 'Monitoring weight loss maintenance, nutritional status, comorbidity resolution, and detecting complications, requiring lifelong multidisciplinary care', 'Only weight monitoring', 'Is not necessary',
'B', 'LONG-TERM FOLLOW-UP after bariatric surgery: LIFELONG requirement. COMPONENTS: (1) WEIGHT monitoring and support (weight regain common, behavior modification). (2) NUTRITIONAL monitoring: labs (CBC, iron, ferritin, B12, calcium, vitamin D, PTH, thiamine, folate, zinc) - supplement deficiencies. (3) COMORBIDITY management: adjust medications as diabetes, hypertension resolve. (4) Complication surveillance: GERD, marginal ulcer, internal hernia. (5) Psychological support. (6) Body contouring referral if desired. FREQUENCY: frequent first year, then annually minimum. MULTIDISCIPLINARY: surgeon, dietitian, psychologist, medical team. Prevents nutritional deficiencies, maintains weight loss.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 112 (Bariatric Surgery) with 10 self-assessment questions inserted' as status;
