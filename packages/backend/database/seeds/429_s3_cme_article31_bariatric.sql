-- ============================================================================
-- SURGERY 3 CME ARTICLE 31: Bariatric Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000097-0000-0000-0000-000000000097', 'a0000003-0000-0000-0000-000000000003', 'Bariatric Surgery', 'Surgical management of morbid obesity')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000331-0000-0000-0000-000000000031',
    'c0000097-0000-0000-0000-000000000097',
    'a0000003-0000-0000-0000-000000000003',
    'Bariatric Surgery: Principles and Procedures',
    'Surgical Weight Loss and Metabolic Surgery',
    'This article covers bariatric surgery including patient selection criteria, types of procedures (gastric sleeve, gastric bypass, duodenal switch), mechanisms of weight loss, perioperative management, nutritional considerations, and management of complications.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000331-0001-0000-0000-000000000001', 'd0000331-0000-0000-0000-000000000031', 1,
'NIH criteria for bariatric surgery include:',
'BMI of 25 or more', 'BMI greater than or equal to 40, or BMI 35-39.9 with obesity-related comorbidities', 'BMI of 30 only', 'Any patient requesting surgery', NULL,
'B', 'NIH bariatric surgery criteria (1991, updated): (1) BMI ≥40 kg/m² without comorbidities, OR (2) BMI 35-39.9 with obesity-related comorbidities (T2DM, hypertension, OSA, NAFLD, GERD, etc.), AND (3) Failed previous non-surgical weight loss attempts, (4) Acceptable operative risk, (5) Commitment to lifestyle changes and follow-up. Recent guidelines extend to BMI 30-34.9 with poorly controlled T2DM. Metabolic surgery increasingly recognized for diabetes remission independent of weight.', 'easy'),

('e0000331-0002-0000-0000-000000000002', 'd0000331-0000-0000-0000-000000000031', 2,
'The most commonly performed bariatric procedure worldwide currently is:',
'Adjustable gastric banding', 'Sleeve gastrectomy', 'Roux-en-Y gastric bypass', 'Biliopancreatic diversion', NULL,
'B', 'Sleeve gastrectomy: now most common (>50% worldwide). Procedure: removal of 70-80% of stomach along greater curvature, creating narrow tube. Mechanism: restrictive + hormonal (reduced ghrelin from fundus removal). Advantages: technically simpler, no anastomosis/foreign body, no malabsorption, effective weight loss. Disadvantages: irreversible, GERD risk, staple line leak. Expected excess weight loss: 60-70%. Can be first stage of duodenal switch in super-obese.', 'easy'),

('e0000331-0003-0000-0000-000000000003', 'd0000331-0000-0000-0000-000000000031', 3,
'Dumping syndrome after gastric bypass presents with:',
'No symptoms', 'Nausea, cramping, diarrhea, diaphoresis, and palpitations after eating concentrated sweets', 'Weight gain', 'Improved glucose tolerance', NULL,
'B', 'Dumping syndrome: occurs in 20-50% after gastric bypass. Early dumping (15-30 min): rapid gastric emptying of hyperosmolar food causes fluid shift into bowel, vasomotor symptoms (diaphoresis, palpitations, dizziness, hypotension), GI symptoms (nausea, cramping, diarrhea). Late dumping (1-3 hours): reactive hypoglycemia from insulin surge. Management: dietary modification (avoid simple sugars, small frequent meals, separate liquids from solids), acarbose for late dumping. Often improves over time.', 'medium'),

('e0000331-0004-0000-0000-000000000004', 'd0000331-0000-0000-0000-000000000031', 4,
'After Roux-en-Y gastric bypass, lifelong supplementation is required for:',
'Vitamin C only', 'Iron, vitamin B12, calcium, vitamin D, and multivitamins', 'No supplementation needed', 'Protein only', NULL,
'B', 'Post-bypass nutritional requirements: (1) Multivitamin with minerals - daily; (2) Vitamin B12 - sublingual/injection (bypassed terminal ileum area, reduced intrinsic factor); (3) Iron - especially in menstruating women (bypassed duodenum); (4) Calcium citrate + Vitamin D - (bypassed proximal small bowel); (5) Protein - 60-80g daily. Monitoring: annual labs including CBC, iron studies, B12, folate, calcium, vitamin D, PTH, zinc, thiamine. Deficiencies can occur despite supplementation.', 'medium'),

('e0000331-0005-0000-0000-000000000005', 'd0000331-0000-0000-0000-000000000031', 5,
'The most feared early complication after sleeve gastrectomy is:',
'Weight regain', 'Staple line leak, typically at the gastroesophageal junction', 'Marginal ulcer', 'Internal hernia', NULL,
'B', 'Staple line leak after sleeve: occurs 1-3%, typically at proximal stomach/GE junction (highest intraluminal pressure). Presentation: tachycardia (earliest sign), fever, abdominal pain, elevated WBC, sepsis. Diagnosis: CT with oral contrast, upper GI study. Management: NPO, drainage (percutaneous or operative), antibiotics, nutritional support (TPN or jejunal feeding), endoscopic stenting may be used. May require chronic fistula management. Prevention: oversewing staple line, appropriate bougie size.', 'medium'),

('e0000331-0006-0000-0000-000000000006', 'd0000331-0000-0000-0000-000000000031', 6,
'Internal hernias after laparoscopic Roux-en-Y gastric bypass occur at:',
'Port sites only', 'Petersen defect, jejunojejunostomy mesenteric defect, and transverse mesocolon defect', 'Never occur laparoscopically', 'Midline incision', NULL,
'B', 'Internal hernia sites after RYGB: (1) Petersen space - between Roux limb mesentery and transverse mesocolon; (2) Jejunojejunostomy mesenteric defect - at JJ anastomosis; (3) Transverse mesocolon defect - if retrocolic Roux limb. More common laparoscopically (less adhesion formation). Presentation: intermittent postprandial pain, can progress to obstruction/strangulation. CT: "swirl sign" (mesenteric rotation). Prevention: meticulous defect closure. Treatment: surgery (laparoscopic if stable), reduce and close defects.', 'hard'),

('e0000331-0007-0000-0000-000000000007', 'd0000331-0000-0000-0000-000000000031', 7,
'Marginal ulcers after gastric bypass:',
'Never occur', 'Occur at the gastrojejunal anastomosis, associated with smoking, NSAIDs, and H. pylori', 'Only occur with gastric banding', 'Are treated with repeat bypass', NULL,
'B', 'Marginal ulcers: occur at gastrojejunal anastomosis, 1-16% incidence. Risk factors: smoking (strongest), NSAIDs, H. pylori, large gastric pouch, foreign body (staples, sutures), ischemia, gastrogastric fistula. Presentation: epigastric pain, bleeding, rarely perforation. Diagnosis: EGD. Treatment: PPI, smoking cessation, avoid NSAIDs, treat H. pylori, sucralfate. Refractory cases may need revision surgery. Prevention: preoperative H. pylori testing/treatment, PPI prophylaxis, smoking cessation.', 'medium'),

('e0000331-0008-0000-0000-000000000008', 'd0000331-0000-0000-0000-000000000031', 8,
'The mechanism of weight loss after gastric bypass includes:',
'Restriction only', 'Restriction, malabsorption, and hormonal changes including increased GLP-1 and PYY', 'Increased ghrelin', 'Malabsorption only', NULL,
'B', 'Gastric bypass mechanisms: (1) Restriction - small pouch (15-30 mL) limits intake; (2) Mild malabsorption - bypassed proximal small bowel; (3) Hormonal - increased GLP-1 and PYY (satiety hormones), rapid delivery to distal gut stimulates L-cells; (4) Decreased ghrelin (bypassed fundus); (5) Bile acid changes; (6) Gut microbiome alterations. Hormonal effects explain rapid diabetes improvement often before significant weight loss. More effective for T2DM remission than purely restrictive procedures.', 'medium'),

('e0000331-0009-0000-0000-000000000009', 'd0000331-0000-0000-0000-000000000031', 9,
'Adjustable gastric banding complications include:',
'Dumping syndrome', 'Band slippage, erosion, port/tubing problems, and inadequate weight loss', 'Internal hernias', 'Anastomotic leak', NULL,
'B', 'Gastric band complications (declining use due to high reoperation rate): (1) Band slippage/prolapse - stomach herniates through band, causes obstruction; (2) Band erosion - migrates into stomach lumen, weight regain, infection; (3) Port/tubing issues - disconnection, migration, infection; (4) Esophageal dilation - from chronic obstruction; (5) Inadequate weight loss/weight regain. Long-term reoperation rate: 25-50%. Many surgeons no longer offer. Band removal and conversion to sleeve/bypass often needed.', 'medium'),

('e0000331-0010-0000-0000-000000000010', 'd0000331-0000-0000-0000-000000000031', 10,
'Diabetes remission rates are highest after which bariatric procedure:',
'Gastric banding', 'Biliopancreatic diversion with duodenal switch (BPD-DS) or Roux-en-Y gastric bypass', 'Intragastric balloon', 'Sleeve gastrectomy alone', NULL,
'B', 'Diabetes remission rates: BPD-DS highest (>90%), RYGB (80-85%), sleeve gastrectomy (60-70%), gastric band (40-50%). BPD-DS and RYGB have greatest hormonal and malabsorptive effects. STAMPEDE trial showed superior glycemic control with bariatric surgery vs medical management at 5 years. Sleeve increasingly effective. Factors predicting remission: shorter diabetes duration, no insulin use, better beta-cell function, younger age. Metabolic surgery now considered treatment option for T2DM in obese patients.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 31 (Bariatric Surgery) with 10 self-assessment questions inserted' as status;
