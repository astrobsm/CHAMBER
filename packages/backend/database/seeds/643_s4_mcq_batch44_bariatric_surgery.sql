-- Surgery 4 MCQ Question Bank - Batch 44
-- Section H: Special Topics - Bariatric Surgery
-- 40 Questions

-- Topic: Bariatric Surgery
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000044-0000-0000-0000-000000000044', 'Bariatric Surgery', 'a0000004-0000-0000-0000-000000000004', 'Surgical treatment of obesity including gastric bypass, sleeve gastrectomy, and metabolic surgery', 44, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Morbid obesity is defined by a BMI of:',
 'Greater than 25', 'Greater than or equal to 40 kg/m2 or 35 with comorbidities', 'Greater than 30', 'Greater than 50', 'Greater than 20',
 'B', 'Obesity classification: overweight 25-29.9, class I obesity 30-34.9, class II 35-39.9, class III (morbid) >=40, super obesity >=50. Surgery considered BMI >=40 or >=35 with comorbidities. Asian cutoffs lower.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Indications for bariatric surgery include:',
 'BMI over 25 with no comorbidities', 'BMI 40 or greater or BMI 35 or greater with obesity-related comorbidities', 'Any overweight patient', 'Only for cosmetic reasons', 'Only for diabetes',
 'B', 'Bariatric surgery criteria (traditional): BMI >=40, or >=35 with comorbidities (T2DM, HTN, OSA, GERD, etc.). Recent guidelines consider BMI >=30 with uncontrolled T2DM. Failed medical/lifestyle management. Psychological evaluation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Obesity-related comorbidities that may qualify a patient for bariatric surgery include:',
 'Acne only', 'Type 2 diabetes hypertension sleep apnea and GERD', 'Only cosmetic concerns', 'Mild fatigue', 'Seasonal allergies',
 'B', 'Obesity comorbidities: T2DM, HTN, dyslipidemia, OSA, NASH/NAFLD, GERD, osteoarthritis, PCOS, pseudotumor cerebri, venous stasis, urinary incontinence. Many improve or resolve after surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly performed bariatric procedure worldwide currently is:',
 'Gastric banding', 'Sleeve gastrectomy', 'Roux-en-Y gastric bypass', 'Duodenal switch', 'Jejunoileal bypass',
 'B', 'Sleeve gastrectomy: now most common globally. Vertical resection of greater curvature, leaves tube-like stomach. Purely restrictive but also hormonal effects (decreased ghrelin). Effective, lower complexity than bypass.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Sleeve gastrectomy involves:',
 'Creating a small pouch with intestinal bypass', 'Removing approximately 80 percent of stomach creating a tubular sleeve', 'Placing a band around stomach', 'Only intestinal bypass', 'Removing small bowel',
 'B', 'Sleeve gastrectomy: remove 75-80% of stomach along greater curvature. Creates narrow gastric tube (150-200 mL). Reduces ghrelin (hunger hormone). Irreversible. No malabsorption. Effective weight loss and diabetes improvement.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Roux-en-Y gastric bypass includes:',
 'Only stomach restriction', 'Small gastric pouch anastomosed to jejunum bypassing duodenum and proximal jejunum', 'Band placement', 'Sleeve creation only', 'Ileal transposition',
 'B', 'RYGB: small pouch (15-30 mL) from proximal stomach, anastomosed to Roux limb (jejunum, 75-150 cm). Biliopancreatic limb joins at common channel. Restriction + mild malabsorption + hormonal changes. Gold standard for T2DM resolution.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'The Roux limb in gastric bypass is:',
 'The biliopancreatic limb', 'The alimentary limb carrying food from pouch to common channel', 'The excluded stomach', 'The duodenum', 'The colon',
 'B', 'RYGB anatomy: Roux (alimentary) limb carries food from pouch. Biliopancreatic limb carries bile/pancreatic secretions. Common channel is where they join and absorption occurs. Length of limbs affects malabsorption degree.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Mechanisms of weight loss after gastric bypass include:',
 'Only restriction', 'Restriction malabsorption and changes in gut hormones', 'Only malabsorption', 'Only hormonal', 'No mechanism known',
 'B', 'RYGB mechanisms: restriction (small pouch), mild malabsorption, hormonal changes (increased GLP-1, PYY; decreased ghrelin), bile acid signaling, gut microbiome changes. Hormonal effects explain rapid diabetes improvement pre-weight loss.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Dumping syndrome after gastric bypass:',
 'Never occurs', 'Results from rapid gastric emptying of hyperosmolar contents into small bowel', 'Is caused by slow emptying', 'Only occurs with banding', 'Is beneficial',
 'B', 'Dumping syndrome: early (30 min) - osmotic fluid shift, nausea, cramps, diarrhea, vasomotor symptoms. Late (1-3 hours) - reactive hypoglycemia. Triggered by simple sugars. Avoidance of sweets; reinforces behavior change.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Adjustable gastric banding:',
 'Is currently most common', 'Has declined due to high reoperation rates and inadequate weight loss', 'Is irreversible', 'Has best long-term outcomes', 'Causes malabsorption',
 'B', 'Gastric banding: adjustable silicone band around proximal stomach. Adjustable via subcutaneous port. Declined sharply - poor long-term weight loss, high reoperation/revision rates, band-related complications. Purely restrictive.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Biliopancreatic diversion with duodenal switch involves:',
 'Only gastric restriction', 'Sleeve gastrectomy with duodenal division and ileal anastomosis creating significant malabsorption', 'Band placement', 'Simple bypass', 'Gastric pouch only',
 'B', 'BPD/DS: sleeve gastrectomy + duodenal division 3-4 cm past pylorus, anastomosed to distal ileum. Short common channel (75-100 cm) causes significant malabsorption. Greatest weight loss but highest risk of nutritional deficiencies.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Expected excess weight loss after sleeve gastrectomy at 1-2 years is approximately:',
 '20-30%', '50-60%', '80-90%', 'No weight loss', '100%',
 'B', 'Sleeve gastrectomy outcomes: 50-60% EWL at 1-2 years. Comparable to RYGB for many. Total weight loss ~25-30% of initial body weight. T2DM remission 60-80%. Good durability though some weight regain possible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Nutritional deficiencies after bariatric surgery most commonly include deficiencies of:',
 'Sodium only', 'Iron vitamin B12 calcium vitamin D and thiamine', 'Potassium only', 'No deficiencies', 'Only protein',
 'B', 'Bariatric nutritional deficiencies: iron (menstruating women especially), B12 (decreased IF and acid), calcium/vitamin D (malabsorption, hyperparathyroidism), thiamine, folate, zinc, protein. Lifelong supplementation and monitoring required.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Vitamin B12 deficiency after gastric bypass occurs due to:',
 'Increased absorption', 'Decreased intrinsic factor and acid production from bypassed stomach', 'Increased excretion', 'No relationship', 'Dietary changes only',
 'B', 'B12 deficiency post-RYGB: bypassed stomach reduces acid and intrinsic factor. IF required for B12 absorption in terminal ileum. Even with intact ileum, deficiency common. Requires supplementation (sublingual, IM, or high-dose oral).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Iron deficiency after gastric bypass results from:',
 'Increased absorption', 'Bypassing the duodenum where iron is primarily absorbed', 'Bleeding only', 'No bypass effect', 'Increased excretion',
 'B', 'Iron deficiency post-RYGB: duodenum bypassed (primary iron absorption site), reduced acid (helps convert Fe3+ to absorbable Fe2+). Menstruating women at highest risk. Requires iron supplementation, often separate from calcium.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Calcium and vitamin D supplementation after bariatric surgery is important to prevent:',
 'Weight regain', 'Metabolic bone disease and secondary hyperparathyroidism', 'Dumping syndrome', 'Marginal ulcer', 'Stricture',
 'B', 'Calcium/vitamin D after bariatric surgery: malabsorption causes deficiency, secondary hyperparathyroidism, bone loss, increased fracture risk. Calcium citrate preferred (doesn''t require acid). Monitor vitamin D, PTH, bone density.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Thiamine deficiency after bariatric surgery can cause:',
 'No symptoms', 'Wernicke encephalopathy with confusion ataxia and ophthalmoplegia', 'Weight gain', 'Improved cognition', 'Increased appetite',
 'B', 'Thiamine (B1) deficiency: risk with persistent vomiting, poor intake, rapid weight loss. Wernicke encephalopathy (confusion, ataxia, oculomotor dysfunction). Medical emergency. Prevent with supplementation. Treat with IV thiamine before glucose.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Marginal ulcer after gastric bypass:',
 'Does not occur', 'Is an ulcer at or near the gastrojejunostomy anastomosis', 'Is a stomach cancer', 'Is in the excluded stomach', 'Is in the ileum',
 'B', 'Marginal ulcer: ulceration at or just distal to gastrojejunal anastomosis. Risk factors: smoking, NSAIDs, H. pylori, large pouch, gastro-gastric fistula. Symptoms: epigastric pain, bleeding. Treatment: PPI, eliminate risk factors, rarely surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'NSAIDs are generally avoided after gastric bypass because:',
 'They are ineffective', 'They increase risk of marginal ulcers and gastric erosions', 'They cause weight gain', 'They improve ulcer healing', 'No contraindication',
 'B', 'NSAIDs post-RYGB: avoid due to marginal ulcer risk. Small pouch with limited buffering capacity. Use acetaminophen for pain. If NSAIDs absolutely necessary, use with PPI and for shortest duration.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Internal hernia after laparoscopic gastric bypass:',
 'Does not occur', 'Can occur through mesenteric defects and presents with abdominal pain', 'Is always asymptomatic', 'Only with open surgery', 'Is treated medically',
 'B', 'Internal hernia post-RYGB: bowel herniates through mesenteric defects (Petersen space, jejunojejunostomy mesentery, transverse mesocolon). Causes obstruction, strangulation. Pain often intermittent, may worsen with weight loss. CT diagnosis. Surgical emergency.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Gastric leak after sleeve gastrectomy most commonly occurs at:',
 'Antrum', 'Proximal staple line near gastroesophageal junction', 'Pylorus', 'Fundus only', 'Middle of sleeve',
 'B', 'Sleeve leak: most common at proximal staple line (angle of His, GE junction). Ischemic watershed area, high intraluminal pressure. Presents day 1-7 (early) or later. Signs: tachycardia, fever, pain, leukocytosis. Treatment: drainage, stent, fistula management.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'The most sensitive early sign of anastomotic leak after bariatric surgery is:',
 'Fever', 'Unexplained tachycardia', 'Hypotension', 'Pain', 'Wound infection',
 'B', 'Leak detection: tachycardia often earliest sign (>120 bpm persistent). Other signs: fever, left shoulder pain, abdominal pain, tachypnea, anxiety. Low threshold for imaging (CT with oral contrast, upper GI). High index of suspicion saves lives.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Gastroesophageal reflux after sleeve gastrectomy:',
 'Never occurs', 'May develop or worsen due to altered anatomy and increased intragastric pressure', 'Always improves', 'Is contraindication to sleeve', 'Is treated with banding',
 'B', 'GERD post-sleeve: can worsen or develop de novo. Mechanisms: increased intragastric pressure, hiatal hernia, LES dysfunction. Significant GERD may be indication for conversion to RYGB (treats GERD). Screen and counsel preop.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Type 2 diabetes remission rates after Roux-en-Y gastric bypass are approximately:',
 '10-20%', '60-80%', '100%', 'No improvement', 'Only 30%',
 'B', 'T2DM remission post-RYGB: 60-80% initial complete remission, higher than sleeve. Rapid improvement, often before significant weight loss (hormonal). Duration of DM, insulin use affect outcomes. "Metabolic surgery" term reflects diabetes benefit.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Metabolic surgery refers to:',
 'Surgery only for weight loss', 'Bariatric surgery performed specifically to treat metabolic disease like type 2 diabetes', 'Liver surgery', 'Thyroid surgery', 'No specific meaning',
 'B', 'Metabolic surgery: bariatric procedures for metabolic disease treatment (T2DM, metabolic syndrome) even if BMI doesn''t meet traditional criteria. Recent guidelines support surgery for BMI 30-35 with uncontrolled T2DM.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Obstructive sleep apnea after bariatric surgery:',
 'Always requires lifelong CPAP', 'Often improves or resolves with weight loss allowing discontinuation of CPAP', 'Worsens', 'Is unrelated to weight', 'Is contraindication to surgery',
 'B', 'OSA improvement post-bariatric surgery: 70-80% improve or resolve, many can discontinue CPAP. Sleep study after weight loss plateau to reassess. Perioperative period high-risk - continue CPAP. Major benefit of surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Pregnancy after bariatric surgery:',
 'Is contraindicated', 'Should be delayed 12-18 months and requires close nutritional monitoring', 'Recommended immediately', 'Has no special considerations', 'Requires reversal first',
 'B', 'Pregnancy post-bariatric: delay 12-18 months (rapid weight loss phase). Improved fertility. Close nutritional monitoring (deficiencies risk fetal harm). Prenatal vitamins, additional B12, iron, folate. Lower gestational DM and preeclampsia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Weight regain after bariatric surgery:',
 'Never occurs', 'Occurs in 20-30% of patients and may require revision surgery', 'Is 100%', 'Cannot be treated', 'Only with banding',
 'B', 'Weight regain: occurs in significant portion of patients (20-30% or more). Causes: anatomic (pouch dilation, fistula), dietary nonadherence, hormonal adaptation. Management: dietary intervention, endoscopic revision, surgical revision.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Alcohol absorption after gastric bypass:',
 'Is decreased', 'Is faster leading to higher blood alcohol levels with smaller amounts', 'Is unchanged', 'Is contraindicated', 'Has no clinical significance',
 'B', 'Alcohol post-RYGB: faster absorption, higher peak levels, prolonged intoxication from smaller amounts. Increased alcohol use disorder risk post-surgery (transfer addiction). Counseling important. Similar but less pronounced after sleeve.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopic sleeve gastroplasty is:',
 'Standard bariatric surgery', 'A less invasive endoscopic procedure that reduces stomach volume using sutures', 'Balloon placement', 'Standard sleeve', 'Band adjustment',
 'B', 'Endoscopic sleeve gastroplasty: incisionless, sutures placed endoscopically to plicate stomach (reduce volume). Less weight loss than surgical sleeve but lower risk. Outpatient, faster recovery. Emerging option for lower BMI or high-risk.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Intragastric balloon for weight loss:',
 'Is permanent device', 'Is a temporary space-occupying device removed after 6-12 months', 'Causes malabsorption', 'Is placed in intestine', 'Is surgical',
 'B', 'Intragastric balloon: temporary (6-12 months), endoscopically placed, creates early satiety. Weight loss modest (~10-15% total weight). Bridge to surgery, temporary measure, or for lower BMI. Complications: nausea, ulcer, deflation/migration.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Gallstone formation after rapid weight loss:',
 'Is rare', 'Is common and ursodiol prophylaxis may be given', 'Does not occur', 'Requires immediate surgery', 'Is prevented by high-fat diet',
 'B', 'Gallstones post-bariatric: 30-50% develop stones with rapid weight loss (bile supersaturation). Prophylactic ursodiol (ursodeoxycholic acid) for 6 months reduces risk. Some surgeons perform concurrent cholecystectomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Pre-operative weight loss before bariatric surgery:',
 'Is never required', 'May reduce liver size and surgical risk in some patients', 'Contraindicates surgery', 'Is always 50 pounds', 'Has no benefit',
 'B', 'Preop weight loss: 2-week liver shrinkage diet (low-carb) often required. Reduces hepatic steatosis, improves visualization. Some programs require 5-10% weight loss. Demonstrates commitment, may improve outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Psychological evaluation before bariatric surgery:',
 'Is optional', 'Is required to assess readiness identify contraindications and provide support', 'Is unnecessary', 'Only for revision surgery', 'Delays surgery',
 'B', 'Psych evaluation: standard of care. Assess understanding, expectations, eating behaviors (BED, night eating), untreated psychiatric illness, substance use, social support. Not to exclude but to optimize and support.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'One-anastomosis gastric bypass (mini gastric bypass) differs from RYGB by having:',
 'Same anatomy', 'A single anastomosis with long biliopancreatic limb', 'No gastric pouch', 'Band instead of bypass', 'Two anastomoses',
 'B', 'OAGB (mini bypass): longer pouch, single gastrojejunostomy to loop of jejunum (not Roux). Simpler, shorter surgery. Concern: bile reflux. Good weight loss and diabetes outcomes. Increasingly popular globally.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Long-term follow-up after bariatric surgery:',
 'Is not necessary', 'Is lifelong for nutritional monitoring and complication surveillance', 'Only for 1 year', 'Only if symptoms', 'Only for weight checks',
 'B', 'Lifelong follow-up: nutritional monitoring (labs every 6-12 months), vitamin supplementation, weight maintenance support, complication surveillance, psychological support. Patients often lost to follow-up - critical to prevent deficiencies.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000044-0000-0000-0000-000000000044', 'a0000004-0000-0000-0000-000000000004',
 'Mortality rate for bariatric surgery in experienced centers is:',
 'Greater than 5%', 'Less than 0.5% comparable to cholecystectomy', 'About 10%', 'Unknown', 'Greater than 1%',
 'B', 'Bariatric surgery safety: mortality 0.1-0.5% in experienced centers. Comparable to cholecystectomy, hip replacement. Benefits outweigh risks for appropriate patients. Center volume and surgeon experience matter.', 'easy', 'knowledge');
