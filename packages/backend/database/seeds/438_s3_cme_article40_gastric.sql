-- ============================================================================
-- SURGERY 3 CME ARTICLE 40: Gastric Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000106-0000-0000-0000-000000000106', 'a0000003-0000-0000-0000-000000000003', 'Gastric Surgery', 'Surgical management of gastric diseases')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000340-0000-0000-0000-000000000040',
    'c0000106-0000-0000-0000-000000000106',
    'a0000003-0000-0000-0000-000000000003',
    'Gastric Surgery: Ulcer Disease and Malignancy',
    'Peptic Ulcer Complications and Gastric Cancer',
    'This article covers surgical management of gastric diseases including peptic ulcer disease complications (bleeding, perforation, obstruction), gastric cancer staging and surgery, GIST tumors, post-gastrectomy syndromes, and revisional gastric surgery.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000340-0001-0000-0000-000000000001', 'd0000340-0000-0000-0000-000000000040', 1,
'The blood vessel most commonly involved in posterior duodenal ulcer bleeding is:',
'Left gastric artery', 'Gastroduodenal artery', 'Right gastric artery', 'Splenic artery', NULL,
'B', 'Gastroduodenal artery (GDA): runs posterior to first part of duodenum. Posterior duodenal ulcers erode into GDA causing massive hemorrhage. Treatment: emergent EGD with therapy (injection, clips, thermal), if fails - surgery (duodenotomy with ligation of GDA - anterior and posterior to ulcer, plus transverse suture through ulcer base). Anterior duodenal ulcers more likely to perforate (free peritoneal cavity). GDA is branch of common hepatic artery, gives off right gastroepiploic and superior pancreaticoduodenal arteries.', 'easy'),

('e0000340-0002-0000-0000-000000000002', 'd0000340-0000-0000-0000-000000000040', 2,
'Surgical treatment for perforated peptic ulcer typically involves:',
'Total gastrectomy', 'Omental patch repair (Graham patch) with thorough peritoneal lavage', 'Billroth II resection always', 'No surgical treatment needed', NULL,
'B', 'Perforated peptic ulcer surgery: (1) Omental (Graham) patch - most common, plug perforation with omentum, secure with sutures, copious lavage; (2) Definitive ulcer surgery (highly selective vagotomy or resection) rarely performed acutely today due to effective PPI and H. pylori treatment; (3) Some small contained perforations may be managed non-operatively (Taylor method) if no sepsis. Laparoscopic repair increasingly common. Post-op: PPI, H. pylori testing and treatment, discontinue NSAIDs.', 'easy'),

('e0000340-0003-0000-0000-000000000003', 'd0000340-0000-0000-0000-000000000040', 3,
'Dumping syndrome after gastrectomy is caused by:',
'Slow gastric emptying', 'Rapid emptying of hyperosmolar contents into small bowel causing fluid shifts and hormonal responses', 'Bile reflux', 'Vitamin B12 deficiency', NULL,
'B', 'Dumping syndrome pathophysiology: (1) Early dumping (15-30 min post-meal) - rapid gastric emptying of hyperosmolar food causes fluid shift into bowel, intestinal distension, and autonomic symptoms (diaphoresis, palpitations, dizziness, cramping, diarrhea); (2) Late dumping (1-3 hrs) - excessive insulin release causes reactive hypoglycemia. Treatment: dietary modification (small frequent meals, avoid simple sugars, separate liquids from solids), octreotide for refractory cases. Acarbose may help late dumping.', 'medium'),

('e0000340-0004-0000-0000-000000000004', 'd0000340-0000-0000-0000-000000000040', 4,
'Gastric cancer of the distal stomach is typically treated with:',
'Proximal gastrectomy', 'Subtotal gastrectomy with D2 lymphadenectomy', 'Endoscopic resection only', 'Total gastrectomy always', NULL,
'B', 'Distal gastric cancer surgery: subtotal (distal) gastrectomy with D2 lymph node dissection (nodes along major vessels - left gastric, celiac, hepatic, splenic). Requires 4-6 cm proximal margin. Reconstruction: Billroth I (gastroduodenostomy), Billroth II (gastrojejunostomy), or Roux-en-Y. Total gastrectomy for proximal tumors, linitis plastica, or when margin not achievable. D2 lymphadenectomy is standard in East Asia; extent debated in West but increasingly adopted. 15+ nodes for adequate staging.', 'medium'),

('e0000340-0005-0000-0000-000000000005', 'd0000340-0000-0000-0000-000000000040', 5,
'Linitis plastica refers to:',
'A benign gastric condition', 'Diffuse infiltrating gastric adenocarcinoma creating a rigid leather bottle stomach', 'Gastric lymphoma', 'GIST tumor', NULL,
'B', 'Linitis plastica: diffuse-type gastric adenocarcinoma (signet ring cells) infiltrating submucosa and muscularis, causing thickened, rigid stomach wall ("leather bottle" stomach). Characteristics: poor prognosis, extensive submucosal spread (margins often positive), peritoneal dissemination common, limited response to chemotherapy. Endoscopy may miss (mucosal folds preserved), diagnosed by deep biopsies or imaging showing thickened wall with loss of distensibility. Treatment: total gastrectomy if operable, often palliative only.', 'medium'),

('e0000340-0006-0000-0000-000000000006', 'd0000340-0000-0000-0000-000000000040', 6,
'Afferent loop syndrome after Billroth II gastrectomy is caused by:',
'Obstruction of the efferent limb', 'Obstruction of the afferent limb causing biliopancreatic secretion accumulation, relieved by vomiting', 'Marginal ulcer', 'Dumping syndrome', NULL,
'B', 'Afferent loop syndrome: obstruction of afferent (biliopancreatic) limb after Billroth II or Roux-en-Y. Acute: complete obstruction, severe RUQ pain, minimal vomiting, risk of perforation/pancreatitis. Chronic: partial obstruction, postprandial pain relieved by bilious vomiting (decompresses distended loop). Causes: adhesions, internal hernia, kinking. Diagnosis: CT, MRCP. Treatment: surgical revision (convert to Roux-en-Y or revise anastomosis). Prevention: afferent limb <20cm.', 'hard'),

('e0000340-0007-0000-0000-000000000007', 'd0000340-0000-0000-0000-000000000040', 7,
'Alkaline reflux gastritis after gastric surgery is characterized by:',
'Relief with antacids', 'Epigastric pain, bilious vomiting, and symptoms not relieved by PPIs', 'Hyperacidity', 'Only occurs after total gastrectomy', NULL,
'B', 'Alkaline (bile) reflux gastritis: biliopancreatic reflux into stomach/remnant after surgery disrupting pylorus. Symptoms: epigastric pain, nausea, bilious vomiting (not relieved by vomiting), weight loss. PPIs do not help (not acid-mediated). Diagnosis: endoscopy (bile in stomach, erythematous friable mucosa), HIDA showing reflux. Treatment: medical (cholestyramine, sucralfate) often ineffective; surgical (Roux-en-Y conversion to divert bile away from stomach - 40-60cm limb) for refractory cases.', 'hard'),

('e0000340-0008-0000-0000-000000000008', 'd0000340-0000-0000-0000-000000000040', 8,
'GIST tumors of the stomach are treated with:',
'Endoscopic resection for all sizes', 'Surgical resection with negative margins, without routine lymphadenectomy', 'Chemotherapy as primary treatment', 'Radiation therapy only', NULL,
'B', 'Gastric GIST surgery: wedge resection or segmental gastrectomy with negative margins (1-2cm). Lymphadenectomy NOT needed (GISTs rarely metastasize to nodes, unlike adenocarcinoma). Avoid rupture (peritoneal seeding). Imatinib: adjuvant for high-risk GIST (size, mitotic rate, rupture, location); neoadjuvant for marginally resectable tumors. Endoscopic resection only for very small (<2cm) low-risk lesions. Most common GI mesenchymal tumor. KIT/PDGFRA mutations drive pathogenesis.', 'medium'),

('e0000340-0009-0000-0000-000000000009', 'd0000340-0000-0000-0000-000000000040', 9,
'Gastric outlet obstruction from peptic ulcer disease can be treated with:',
'Immediate vagotomy', 'Initial NG decompression, IV PPI, correction of electrolytes, followed by endoscopic or surgical intervention', 'Observation only', 'TPN indefinitely', NULL,
'B', 'Peptic ulcer gastric outlet obstruction management: (1) NPO, NGT decompression (may need several days to weeks for edema resolution); (2) IV PPI; (3) Correct metabolic alkalosis (hypochloremic, hypokalemic from vomiting), dehydration; (4) H. pylori treatment. After optimization: endoscopic balloon dilation (70-80% success, may need multiple sessions) OR surgery (antrectomy with vagotomy, gastrojejunostomy, or pyloroplasty with vagotomy). Rule out malignancy with biopsies.', 'medium'),

('e0000340-0010-0000-0000-000000000010', 'd0000340-0000-0000-0000-000000000040', 10,
'Vitamin B12 deficiency after gastrectomy is due to:',
'Inadequate diet', 'Loss of parietal cells producing intrinsic factor needed for B12 absorption in terminal ileum', 'Iron deficiency', 'Bile salt malabsorption', NULL,
'B', 'Post-gastrectomy B12 deficiency: parietal cells (gastric body/fundus) produce intrinsic factor (IF). IF binds B12 in stomach; IF-B12 complex absorbed in terminal ileum. After total gastrectomy: no IF production, B12 deficiency inevitable without supplementation. After subtotal: some IF remains, but deficiency still common. Presents after 2-5 years (hepatic B12 stores). Neurologic manifestations if untreated. Prevention: lifelong B12 supplementation (injection or high-dose oral). Also monitor iron (loss of acid, reduced absorption) and calcium/vitamin D.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 40 (Gastric Surgery) with 10 self-assessment questions inserted' as status;
