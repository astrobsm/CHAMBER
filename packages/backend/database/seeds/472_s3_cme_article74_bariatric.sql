-- ============================================================================
-- SURGERY 3 CME ARTICLE 74: Bariatric Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000140-0000-0000-0000-000000000140', 'a0000003-0000-0000-0000-000000000003', 'Bariatric Surgery', 'Metabolic and weight loss surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000374-0000-0000-0000-000000000074',
    'c0000140-0000-0000-0000-000000000140',
    'a0000003-0000-0000-0000-000000000003',
    'Bariatric Surgery: Procedures, Outcomes, and Complications',
    'Surgical Management of Obesity',
    'This article covers indications for bariatric surgery, types of procedures (sleeve gastrectomy, gastric bypass, adjustable gastric band), mechanism of weight loss and metabolic effects, nutritional deficiencies, complications, and long-term follow-up.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000374-0001-0000-0000-000000000001', 'd0000374-0000-0000-0000-000000000074', 1,
'Current indications for bariatric surgery include:',
'BMI greater than 25 in all patients', 'BMI 40 or greater, or BMI 35 or greater with obesity-related comorbidities (recent guidelines lower thresholds for Asian patients and those with diabetes)', 'Only for cosmetic purposes', 'BMI greater than 50 only', NULL,
'B', 'Bariatric surgery indications (NIH/ASMBS): BMI >=40 kg/m2 (morbid obesity), OR BMI >=35 with obesity-related comorbidities (T2DM, hypertension, OSA, NAFLD, GERD, etc.). Recent guidelines: BMI >=30 with poorly controlled T2DM may benefit (metabolic surgery). Asian populations: lower BMI thresholds (>=37.5 or >=32.5 with comorbidities). Failed dietary/medical weight loss attempts. Comprehensive evaluation (psychological, nutritional). Contraindications: active substance abuse, uncontrolled psychiatric disease, inability to comply with postoperative requirements.', 'easy'),

('e0000374-0002-0000-0000-000000000002', 'd0000374-0000-0000-0000-000000000074', 2,
'The most commonly performed bariatric procedure currently is:',
'Adjustable gastric banding', 'Sleeve gastrectomy', 'Biliopancreatic diversion', 'Jejunoileal bypass', NULL,
'B', 'SLEEVE GASTRECTOMY: currently most commonly performed bariatric procedure (>60% of cases). Technique: vertical resection of 75-80% of stomach along greater curvature, leaving tubular "sleeve." Mechanism: RESTRICTION (small stomach volume) + HORMONAL (removes ghrelin-producing fundus, reduces hunger). Advantages: simpler than bypass, no anastomosis, no malabsorption, no foreign body. Disadvantages: irreversible, staple line bleeding/leak, GERD may worsen/develop, weight regain possible. Expected weight loss: 60-70% excess weight loss.', 'easy'),

('e0000374-0003-0000-0000-000000000003', 'd0000374-0000-0000-0000-000000000074', 3,
'Roux-en-Y gastric bypass results in weight loss through:',
'Restriction only', 'Combination of restriction (small gastric pouch) and malabsorption (bypass of proximal small bowel), plus hormonal changes', 'Malabsorption only', 'External compression', NULL,
'B', 'Roux-en-Y gastric bypass (RYGB): RESTRICTION (small 15-30 mL gastric pouch) + MILD MALABSORPTION (bypass duodenum and proximal jejunum) + HORMONAL EFFECTS (altered GI hormones - increased GLP-1, PYY; decreased ghrelin). Most effective for T2DM remission (70-80%). Anatomy: small gastric pouch, alimentary limb (Roux limb, 75-150 cm), biliopancreatic limb, common channel. Expected weight loss: 70-80% excess weight loss. More complex than sleeve, risk of internal hernia, marginal ulcer, dumping syndrome.', 'easy'),

('e0000374-0004-0000-0000-000000000004', 'd0000374-0000-0000-0000-000000000074', 4,
'Dumping syndrome after gastric bypass:',
'Never occurs', 'Results from rapid gastric emptying of hyperosmolar contents into small bowel causing vasomotor and GI symptoms', 'Is treated with high-sugar meals', 'Only occurs with biliopancreatic diversion', NULL,
'B', 'Dumping syndrome: complication of gastric bypass (and other gastric surgery). Mechanism: rapid emptying of hyperosmolar content into small bowel. EARLY dumping (15-30 min): fluid shifts into bowel lumen - nausea, cramping, diarrhea, vasomotor symptoms (palpitations, flushing, diaphoresis). LATE dumping (1-3 hours): reactive hypoglycemia from insulin surge. Prevention/treatment: dietary modification - AVOID simple sugars, small frequent meals, increase protein/fiber, separate liquids from solids, lie down after meals. Severe cases: octreotide.', 'easy'),

('e0000374-0005-0000-0000-000000000005', 'd0000374-0000-0000-0000-000000000074', 5,
'Nutritional deficiencies after gastric bypass commonly include:',
'No deficiencies occur', 'Iron, vitamin B12, calcium, vitamin D, and thiamine deficiencies requiring lifelong supplementation', 'Only protein deficiency', 'Excess vitamin absorption', NULL,
'B', 'Nutritional deficiencies after malabsorptive procedures: IRON (bypassed duodenum - main absorption site), VITAMIN B12 (decreased intrinsic factor, bypassed terminal ileum absorption), CALCIUM and VITAMIN D (bypassed duodenum), THIAMINE (B1 - especially with vomiting), folate, zinc. Less common: protein-calorie malnutrition. Prevention: LIFELONG supplementation (multivitamin, calcium citrate, B12, iron), regular monitoring (labs every 3-6 months initially, then annually). Sleeve gastrectomy: fewer deficiencies but still needs monitoring (B12, iron, vitamin D).', 'easy'),

('e0000374-0006-0000-0000-000000000006', 'd0000374-0000-0000-0000-000000000074', 6,
'Internal hernia after Roux-en-Y gastric bypass:',
'Is not possible', 'Is a serious complication occurring through mesenteric defects, presenting with intermittent abdominal pain, and may cause bowel obstruction or strangulation', 'Only occurs in open surgery', 'Is easily diagnosed on plain X-ray', NULL,
'B', 'Internal hernia after RYGB: bowel herniates through mesenteric defects (Petersen space, jejunojejunostomy mesentery, transverse mesocolon in retrocolic Roux). SERIOUS complication - can cause SBO, strangulation, bowel necrosis. Presentation: INTERMITTENT colicky abdominal pain (classic), may be postprandial, can be asymptomatic between episodes. Diagnosis: CT findings often subtle (mesenteric swirl, clustered small bowel), may be normal between episodes. High index of suspicion. Treatment: SURGICAL - laparoscopic or open, reduce hernia, close defects. More common after weight loss (less mesenteric fat).', 'medium'),

('e0000374-0007-0000-0000-000000000007', 'd0000374-0000-0000-0000-000000000074', 7,
'Staple line leak after sleeve gastrectomy most commonly occurs at:',
'The antrum', 'The proximal stomach near the gastroesophageal junction', 'The mid-body', 'The pylorus', NULL,
'B', 'Staple line leak after sleeve gastrectomy: occurs in 1-3%. Most common location: PROXIMAL (near GE junction, angle of His). Reason: ischemic watershed area, high intraluminal pressure, stapler technique challenges at this angle. Presentation: tachycardia (often first sign), fever, left shoulder/chest pain, peritonitis, sepsis. Diagnosis: CT with oral contrast, UGI swallow. Treatment: early (<72 hours) - operative drainage/repair; late (>72 hours) - drainage (percutaneous/endoscopic), NPO, antibiotics, nutritional support, endoscopic stenting. May take weeks to heal.', 'medium'),

('e0000374-0008-0000-0000-000000000008', 'd0000374-0000-0000-0000-000000000074', 8,
'Marginal ulcer after gastric bypass:',
'Only occurs with NSAID use', 'Occurs at the gastrojejunal anastomosis, associated with smoking, NSAIDs, and H. pylori', 'Is treated with continued NSAID use', 'Is never serious', NULL,
'B', 'Marginal ulcer: ulcer at gastrojejunostomy site after RYGB. Incidence: 1-16%. Risk factors: SMOKING (strongest), NSAIDs, H. pylori, large pouch, foreign body (non-absorbable suture), ischemia. Presentation: epigastric pain, nausea, bleeding, perforation. Diagnosis: EGD. Treatment: PPI therapy, smoking cessation, avoid NSAIDs, H. pylori eradication. Refractory cases: revision surgery. Prevention: PPI prophylaxis, preoperative H. pylori testing/treatment, absorbable sutures, avoid NSAIDs.', 'medium'),

('e0000374-0009-0000-0000-000000000009', 'd0000374-0000-0000-0000-000000000074', 9,
'Metabolic surgery for type 2 diabetes:',
'Has no effect on glycemic control', 'Can achieve diabetes remission in many patients, with effects partly independent of weight loss due to hormonal changes', 'Is contraindicated in diabetics', 'Only works through calorie restriction', NULL,
'B', 'Metabolic surgery for T2DM: superior to medical management for glycemic control in obese patients with diabetes. T2DM REMISSION rates: RYGB 70-80%, sleeve 50-60%. Effects partly INDEPENDENT of weight loss: occur within days before significant weight change. Mechanisms: altered gut hormones (GLP-1, PYY increase; ghrelin decrease), changes in bile acid metabolism, gut microbiome changes, improved insulin sensitivity. ASMBS/IFSO guidelines: consider metabolic surgery for BMI >=30 with poorly controlled T2DM. Long-term: some diabetes recurrence, but still improved vs non-surgical.', 'easy'),

('e0000374-0010-0000-0000-000000000010', 'd0000374-0000-0000-0000-000000000074', 10,
'Postoperative follow-up after bariatric surgery should include:',
'No follow-up needed', 'Regular monitoring of weight, nutritional status, comorbidities, and psychological well-being with lifelong supplementation', 'Follow-up only for the first month', 'Routine imaging every month', NULL,
'B', 'Postoperative bariatric care: LIFELONG follow-up essential. Components: WEIGHT monitoring, NUTRITIONAL assessment (labs, supplementation compliance, protein intake), COMORBIDITY management (diabetes, hypertension - often reduced/resolved, may need medication adjustment), physical activity, PSYCHOLOGICAL support (eating behaviors, body image, depression). Lab monitoring: CBC, iron, ferritin, B12, folate, vitamin D, calcium, PTH, thiamine, metabolic panel. Schedule: frequent in first year, then annual. Supplementation: multivitamin, calcium, B12, iron as needed - LIFELONG.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 74 (Bariatric Surgery) with 10 self-assessment questions inserted' as status;
