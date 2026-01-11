-- ============================================================================
-- SURGERY 3 CME ARTICLE 10: Upper Gastrointestinal Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000076-0000-0000-0000-000000000076', 'a0000003-0000-0000-0000-000000000003', 'Upper GI Surgery', 'Esophageal and gastric conditions requiring surgical management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000310-0000-0000-0000-000000000010',
    'c0000076-0000-0000-0000-000000000076',
    'a0000003-0000-0000-0000-000000000003',
    'Upper Gastrointestinal Surgery: Esophageal and Gastric Disorders',
    'GERD, Peptic Ulcer Disease, Gastric Cancer and Bariatric Surgery',
    'This article covers surgical management of gastroesophageal reflux disease, hiatal hernias, peptic ulcer disease complications (perforation, bleeding, obstruction), gastric cancer staging and surgical treatment, and an overview of bariatric surgery procedures.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000310-0001-0000-0000-000000000001', 'd0000310-0000-0000-0000-000000000010', 1,
'The definitive surgical treatment for gastroesophageal reflux disease (GERD) is:',
'Vagotomy', 'Fundoplication (Nissen or partial)', 'Gastrectomy', 'Esophagectomy', NULL,
'B', 'Fundoplication (laparoscopic Nissen - 360° wrap, or Toupet - 270° posterior partial wrap) is the surgical treatment for GERD. It reinforces the lower esophageal sphincter. Indications: failed medical therapy, desire to discontinue PPIs, complications (stricture, Barrett''s), large hiatal hernia. Toupet may be preferred for patients with weak esophageal motility to reduce dysphagia.', 'easy'),

('e0000310-0002-0000-0000-000000000002', 'd0000310-0000-0000-0000-000000000010', 2,
'A patient presents with sudden severe epigastric pain radiating to the back, with abdominal rigidity. Erect chest X-ray shows air under the diaphragm. The most likely diagnosis is:',
'Acute pancreatitis', 'Perforated peptic ulcer', 'Acute cholecystitis', 'Myocardial infarction', NULL,
'B', 'Pneumoperitoneum (free air under diaphragm) indicates hollow viscus perforation. Perforated peptic ulcer is the most common cause, presenting with sudden severe epigastric pain (peritonitis from gastric/duodenal contents). Patient lies still (movement worsens pain). Board-like rigidity is classic. Treatment is emergent surgery: omental (Graham) patch for duodenal ulcer, or resection for gastric ulcer (rule out malignancy).', 'easy'),

('e0000310-0003-0000-0000-000000000003', 'd0000310-0000-0000-0000-000000000010', 3,
'The most common location for peptic ulcer perforation is:',
'Greater curvature of stomach', 'Anterior wall of first part of duodenum', 'Posterior wall of duodenum', 'Gastric antrum', NULL,
'B', 'Anterior duodenal ulcers (first part, D1) are most common to perforate into the peritoneal cavity, causing chemical peritonitis. Posterior duodenal ulcers erode into the gastroduodenal artery, causing massive upper GI bleeding. Gastric ulcers on the lesser curvature may erode into the left gastric artery. Location determines the clinical presentation and complications.', 'medium'),

('e0000310-0004-0000-0000-000000000004', 'd0000310-0000-0000-0000-000000000010', 4,
'Truncal vagotomy results in:',
'Increased gastric acid secretion', 'Gastric atony requiring drainage procedure', 'No effect on pylorus', 'Improved gastric emptying', NULL,
'B', 'Truncal vagotomy (dividing vagal trunks at esophageal hiatus) reduces acid secretion but also denervates the pylorus, causing gastric stasis. A drainage procedure (pyloroplasty or gastrojejunostomy) is required. Highly selective (parietal cell) vagotomy denervates only acid-producing fundus while preserving antral innervation (no drainage needed, but higher recurrence). Vagotomy is rarely performed now due to effective PPI therapy.', 'medium'),

('e0000310-0005-0000-0000-000000000005', 'd0000310-0000-0000-0000-000000000010', 5,
'Lauren classification of gastric adenocarcinoma includes:',
'Well-differentiated and poorly differentiated types', 'Intestinal and diffuse types', 'Early and advanced types', 'Mucinous and signet ring types', NULL,
'B', 'Lauren classification: (1) Intestinal type - well-differentiated, gland-forming, more common in endemic areas (Japan), associated with H. pylori, better prognosis. (2) Diffuse type - poorly differentiated, signet ring cells, linitis plastica pattern, worse prognosis, younger patients, hereditary diffuse gastric cancer (CDH1 mutation). This classification has prognostic and therapeutic implications.', 'medium'),

('e0000310-0006-0000-0000-000000000006', 'd0000310-0000-0000-0000-000000000010', 6,
'The minimum proximal margin required for gastric cancer resection is:',
'1 cm', '2 cm', '4-6 cm for intestinal type, wider for diffuse type', '10 cm', NULL,
'C', 'Adequate margins for gastric cancer: 4-6 cm proximal margin for intestinal type, wider margins (8 cm or total gastrectomy) for diffuse type due to submucosal spread. D2 lymphadenectomy (stations 1-12) is standard in experienced centers. Early gastric cancer (T1a, selected T1b) may be treated with endoscopic submucosal dissection. R0 (negative margin) resection is the goal.', 'medium'),

('e0000310-0007-0000-0000-000000000007', 'd0000310-0000-0000-0000-000000000010', 7,
'Dumping syndrome after gastrectomy is caused by:',
'Bile reflux into stomach', 'Rapid emptying of hyperosmolar contents into small bowel', 'Vagal nerve preservation', 'Gastric acid hypersecretion', NULL,
'B', 'Dumping syndrome results from rapid gastric emptying into jejunum. Early dumping (15-30 minutes after eating): hyperosmolar contents draw fluid into bowel, causing distension, cramping, diarrhea, and vasomotor symptoms (tachycardia, sweating, dizziness). Late dumping (2-3 hours): reactive hypoglycemia from insulin surge. Treatment: dietary modification (small, frequent, low-carb meals), avoid liquids with meals.', 'easy'),

('e0000310-0008-0000-0000-000000000008', 'd0000310-0000-0000-0000-000000000010', 8,
'A Mallory-Weiss tear is characterized by:',
'Full-thickness esophageal rupture', 'Mucosal tear at the gastroesophageal junction from forceful vomiting', 'Sliding hiatal hernia', 'Esophageal stricture', NULL,
'B', 'Mallory-Weiss syndrome is a mucosal/submucosal tear at the gastroesophageal junction, typically from forceful vomiting or retching (often alcoholic patients). Presents with hematemesis after initial non-bloody vomiting. Usually self-limiting (90%); endoscopic therapy if active bleeding. Contrast with Boerhaave syndrome: full-thickness rupture causing mediastinitis (surgical emergency, Mackler triad: vomiting, chest pain, subcutaneous emphysema).', 'easy'),

('e0000310-0009-0000-0000-000000000009', 'd0000310-0000-0000-0000-000000000010', 9,
'The most commonly performed bariatric surgery worldwide is:',
'Adjustable gastric banding', 'Sleeve gastrectomy', 'Biliopancreatic diversion', 'Jejunoileal bypass', NULL,
'B', 'Sleeve gastrectomy has become the most common bariatric procedure globally. It involves removing 80% of the stomach along the greater curvature, creating a tubular stomach. It is primarily restrictive but also reduces ghrelin (hunger hormone). RYGB (Roux-en-Y gastric bypass) is second most common and has both restrictive and malabsorptive components. Gastric banding has declined due to complications and reoperations.', 'easy'),

('e0000310-0010-0000-0000-000000000010', 'd0000310-0000-0000-0000-000000000010', 10,
'Achalasia is characterized by:',
'Increased lower esophageal sphincter relaxation', 'Failed LES relaxation and absent esophageal peristalsis', 'Excessive gastric acid production', 'Pyloric stenosis', NULL,
'B', 'Achalasia is a motility disorder with (1) failed LES relaxation and (2) absent esophageal peristalsis due to loss of inhibitory neurons in the myenteric plexus. Presents with dysphagia to solids and liquids, regurgitation, chest pain. Diagnosis: manometry (gold standard), barium swallow (bird-beak appearance). Treatment: Heller myotomy with partial fundoplication (Dor) or peroral endoscopic myotomy (POEM).', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 10 (Upper GI Surgery) with 10 self-assessment questions inserted' as status;
