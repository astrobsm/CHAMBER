-- ============================================================================
-- SURGERY 3 CME ARTICLE 54: Peptic Ulcer Disease and Complications
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000120-0000-0000-0000-000000000120', 'a0000003-0000-0000-0000-000000000003', 'Peptic Ulcer Disease and Complications', 'Complete PUD management guide')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000354-0000-0000-0000-000000000054',
    'c0000120-0000-0000-0000-000000000120',
    'a0000003-0000-0000-0000-000000000003',
    'Peptic Ulcer Disease: From Pathophysiology to Complications',
    'Comprehensive Management of Gastroduodenal Ulcers',
    'This article covers peptic ulcer disease including H. pylori infection, NSAID-related ulcers, medical management, and surgical management of complications including perforation, bleeding, and gastric outlet obstruction.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000354-0001-0000-0000-000000000001', 'd0000354-0000-0000-0000-000000000054', 1,
'The most common causes of peptic ulcer disease are:',
'Stress and diet only', 'Helicobacter pylori infection and NSAID use', 'Caffeine alone', 'Smoking only', NULL,
'B', 'Peptic ulcer disease causes: (1) H. pylori infection (60-70% of DU, 30-40% of GU) - gram-negative spiral bacterium in gastric mucosa; (2) NSAIDs (20-25%) - inhibit prostaglandin synthesis, reduce mucosal protection; (3) Stress ulcers (ICU patients); (4) Zollinger-Ellison syndrome (gastrinoma - excess acid); (5) Idiopathic (H. pylori negative, NSAID negative - increasing). Less common: smoking (impairs healing, increases risk), steroids (only when combined with NSAIDs), bisphosphonates, cocaine. Treatment targets these causes.', 'easy'),

('e0000354-0002-0000-0000-000000000002', 'd0000354-0000-0000-0000-000000000054', 2,
'Duodenal ulcers compared to gastric ulcers:',
'Are more often malignant', 'Are more common, typically in younger patients, relieved by food, and rarely malignant', 'Require biopsy to exclude cancer', 'Occur in older patients mainly', NULL,
'B', 'Duodenal vs Gastric ulcers: DUODENAL: more common (4x), younger patients (30-50), pain relieved by food ("food-relief-food" pattern), rarely malignant (almost never), anterior wall more common (perforation), posterior wall bleeds (GDA). GASTRIC: older patients, pain may be worsened by food, 5% are malignant (must biopsy), require follow-up endoscopy to confirm healing and exclude cancer. Both associated with H. pylori (higher in DU) and NSAIDs (higher in GU). Treatment similar: PPI + H. pylori eradication if positive.', 'easy'),

('e0000354-0003-0000-0000-000000000003', 'd0000354-0000-0000-0000-000000000054', 3,
'Perforated peptic ulcer:',
'Always presents with mild discomfort', 'Presents with sudden severe epigastric pain, peritonitis, and free air on imaging, requiring urgent surgery', 'Is managed conservatively in all cases', 'Never shows free air', NULL,
'B', 'Perforated peptic ulcer: surgical emergency. Presentation: sudden, severe epigastric pain (like a knife - often patient remembers exact time), rapidly generalizing to whole abdomen, vomiting, tachycardia, shock, board-like rigidity, absent bowel sounds. Diagnosis: erect CXR (free air under diaphragm - 70-80%), CT (if available, more sensitive for small perforations). Treatment: (1) Resuscitation, NG tube, IV PPI, antibiotics; (2) SURGERY: omental patch (Graham patch) - most common, simple closure + omentum reinforcement; (3) Non-operative (Taylor method) only for sealed perforations in stable patients.', 'easy'),

('e0000354-0004-0000-0000-000000000004', 'd0000354-0000-0000-0000-000000000054', 4,
'Bleeding peptic ulcer management includes:',
'Surgery as first-line always', 'Resuscitation, IV PPI, urgent upper endoscopy for diagnosis and endoscopic hemostasis, with surgery reserved for failed endoscopy', 'Observation only', 'Barium swallow first', NULL,
'B', 'Bleeding peptic ulcer management: (1) Resuscitation (IV access, fluids, blood transfusion if needed, correct coagulopathy); (2) IV PPI (high-dose - 80mg bolus then 8mg/hour - reduces rebleeding after endoscopy); (3) URGENT upper endoscopy (within 24 hours, earlier if unstable) - diagnostic and therapeutic (injection, thermal coagulation, clips, combinations); (4) Surgery: for failed endoscopic hemostasis (2 attempts), hemodynamically unstable despite resuscitation, massive bleeding. Surgical options: oversewing bleeding vessel (posterior DU bleeds from GDA), ulcer excision.', 'medium'),

('e0000354-0005-0000-0000-000000000005', 'd0000354-0000-0000-0000-000000000054', 5,
'Forrest classification is used for:',
'Staging gastric cancer', 'Classifying bleeding peptic ulcers endoscopically to predict rebleeding risk', 'Grading appendicitis', 'Classifying gallstones', NULL,
'B', 'Forrest classification - endoscopic classification of bleeding peptic ulcers: Ia: Spurting hemorrhage (high rebleed); Ib: Oozing hemorrhage (high rebleed); IIa: Visible vessel (non-bleeding) (high rebleed - 40-50%); IIb: Adherent clot (intermediate); IIc: Flat pigmented spot (low rebleed); III: Clean ulcer base (low rebleed). Guides management: Forrest I and IIa require endoscopic therapy. IIb: remove clot, treat if underlying vessel. IIc and III: low risk, can discharge early. Combined endoscopic therapy (injection + thermal/clips) superior to monotherapy.', 'medium'),

('e0000354-0006-0000-0000-000000000006', 'd0000354-0000-0000-0000-000000000054', 6,
'Gastric outlet obstruction from peptic ulcer disease:',
'Causes bilious vomiting immediately', 'Causes non-bilious vomiting of undigested food, "succussion splash" on exam, and hypochloremic hypokalemic metabolic alkalosis', 'Requires no decompression', 'Is always malignant', NULL,
'B', 'Gastric outlet obstruction from PUD: usually from chronic duodenal or prepyloric ulcer scarring. Presentation: non-bilious vomiting (obstruction proximal to ampulla), vomiting of undigested food eaten hours-days earlier, early satiety, weight loss, succussion splash (sloshing sound on shaking abdomen - retained gastric contents). Metabolic disturbance: hypochloremic, hypokalemic metabolic alkalosis (loss of HCl). Dehydration, paradoxical aciduria. Management: NG decompression, IV fluids/electrolyte correction, IV PPI. Treatment: endoscopic balloon dilation or surgery (gastrojejunostomy, pyloroplasty).', 'medium'),

('e0000354-0007-0000-0000-000000000007', 'd0000354-0000-0000-0000-000000000054', 7,
'H. pylori triple therapy typically includes:',
'Antacids only', 'PPI plus two antibiotics (clarithromycin and amoxicillin, or clarithromycin and metronidazole) for 14 days', 'Single antibiotic for 3 days', 'No PPI needed', NULL,
'B', 'H. pylori eradication therapy: TRIPLE THERAPY: PPI (bid) + Clarithromycin (500mg bid) + Amoxicillin (1g bid) OR Metronidazole (500mg bid) for 14 days. QUADRUPLE THERAPY (if clarithromycin resistance high or previous failure): PPI + Bismuth + Metronidazole + Tetracycline. SEQUENTIAL or CONCOMITANT regimens also used. Confirm eradication: urea breath test or stool antigen (4 weeks after completing therapy, 2 weeks off PPI). Eradication rates: 70-90% depending on local resistance patterns. Eradication reduces ulcer recurrence from 60-80% to <10%.', 'easy'),

('e0000354-0008-0000-0000-000000000008', 'd0000354-0000-0000-0000-000000000054', 8,
'Zollinger-Ellison syndrome is characterized by:',
'Low gastric acid output', 'Gastrin-secreting tumor causing severe peptic ulcer disease, multiple ulcers, or ulcers in unusual locations', 'Only affects females', 'Normal serum gastrin', NULL,
'B', 'Zollinger-Ellison syndrome: gastrin-secreting tumor (gastrinoma) causing massive gastric acid hypersecretion. Features: severe/refractory PUD, multiple ulcers, ulcers in unusual locations (distal duodenum, jejunum), diarrhea (acid damage to small bowel), GERD. Diagnosis: fasting serum gastrin >1000 pg/mL (or 10x normal), secretin stimulation test (paradoxical rise in gastrin). Tumor location: duodenal wall (most common), pancreas, gastrinoma triangle. Association: MEN1 (20-30%). Treatment: high-dose PPI, tumor resection if localized (curative potential lower if metastatic or MEN1-associated).', 'hard'),

('e0000354-0009-0000-0000-000000000009', 'd0000354-0000-0000-0000-000000000054', 9,
'Posterior duodenal ulcer bleeding is classically from:',
'Splenic artery', 'Gastroduodenal artery (GDA)', 'Superior mesenteric artery', 'Celiac trunk', NULL,
'B', 'Posterior duodenal ulcer and GDA: posterior wall of duodenal bulb lies adjacent to gastroduodenal artery (GDA). Erosion into GDA causes massive, life-threatening hemorrhage. Anterior duodenal ulcer: more likely to perforate (into peritoneal cavity). Surgical management of bleeding posterior DU: duodenotomy, direct oversewing of the bleeder with sutures placed above and below the ulcer (three-point ligation of GDA), including the transverse pancreatic and right gastroepiploic branches. Avoid ligating the common hepatic artery.', 'easy'),

('e0000354-0010-0000-0000-000000000010', 'd0000354-0000-0000-0000-000000000054', 10,
'After successful treatment of a gastric ulcer:',
'No follow-up needed', 'Repeat endoscopy is recommended to document healing and exclude malignancy', 'Assume healed without verification', 'Proceed directly to surgery', NULL,
'B', 'Gastric ulcer follow-up: REPEAT ENDOSCOPY essential (unlike duodenal ulcers). Reasons: (1) 5% of gastric ulcers are malignant; (2) Confirm healing (8-12 weeks of PPI therapy); (3) Rebiopsy if any persistent ulcer. Biopsies at initial endoscopy: minimum 6-8 biopsies from ulcer margin and base. If malignancy found: staging, surgical resection. Duodenal ulcers: repeat endoscopy not routinely needed (rarely malignant) unless symptoms persist. H. pylori eradication confirmation recommended for both.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 54 (Peptic Ulcer Disease and Complications) with 10 self-assessment questions inserted' as status;
