-- ============================================================================
-- SURGERY 3 CME ARTICLE 44: Esophageal Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000110-0000-0000-0000-000000000110', 'a0000003-0000-0000-0000-000000000003', 'Esophageal Surgery', 'Surgical management of esophageal diseases')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000344-0000-0000-0000-000000000044',
    'c0000110-0000-0000-0000-000000000110',
    'a0000003-0000-0000-0000-000000000003',
    'Esophageal Surgery: GERD to Cancer',
    'Antireflux Surgery, Achalasia, and Esophagectomy',
    'This article covers surgical management of esophageal diseases including GERD and antireflux surgery, hiatal hernias, achalasia, esophageal motility disorders, esophageal cancer staging and resection, and management of esophageal perforation.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000344-0001-0000-0000-000000000001', 'd0000344-0000-0000-0000-000000000044', 1,
'Indications for antireflux surgery (fundoplication) include:',
'All patients with heartburn', 'Failed medical therapy, patient preference to avoid lifelong medication, complications (stricture, Barrett without dysplasia), and large hiatal hernia', 'Dysphagia only', 'All patients with Barrett esophagus', NULL,
'B', 'Antireflux surgery indications: (1) Inadequate symptom control on PPI; (2) Regurgitation despite acid control (volume reflux); (3) Patient preference to avoid lifelong medication (especially young patients); (4) Complications: stricture, Barrett (non-dysplastic), respiratory symptoms from reflux; (5) Large hiatal hernia; (6) Medication non-compliance. Preoperative evaluation: EGD (confirm GERD, rule out Barrett dysplasia, assess esophagitis), pH testing (especially if atypical symptoms), esophageal manometry (rule out motility disorders).', 'medium'),

('e0000344-0002-0000-0000-000000000002', 'd0000344-0000-0000-0000-000000000044', 2,
'Nissen fundoplication involves:',
'Partial posterior wrap', 'Complete 360-degree fundic wrap around the lower esophagus', 'Anterior wrap only', 'No wrap', NULL,
'B', 'Nissen fundoplication: 360-degree (complete) wrap of gastric fundus around lower esophagus. Most effective antireflux procedure. Technique: reduce hiatal hernia, mobilize fundus (divide short gastric vessels), crural closure posteriorly, create short (2-3cm), loose ("floppy") wrap. Partial fundoplications (Toupet - 270 degrees posterior, Dor - anterior): for patients with impaired esophageal motility (reduce dysphagia risk). Laparoscopic approach standard. Success rate: 85-90% symptom control at 5 years.', 'easy'),

('e0000344-0003-0000-0000-000000000003', 'd0000344-0000-0000-0000-000000000044', 3,
'Achalasia is characterized by:',
'Hyperactive LES relaxation', 'Absent esophageal peristalsis and failure of LES relaxation due to loss of inhibitory neurons', 'Increased motility', 'Only upper esophageal problems', NULL,
'B', 'Achalasia: esophageal motility disorder due to loss of inhibitory neurons (nitric oxide, VIP-producing) in myenteric plexus. Results in: (1) Absent/ineffective esophageal peristalsis; (2) Failure of LES relaxation with swallowing. Symptoms: progressive dysphagia (solids and liquids), regurgitation, weight loss, aspiration. Diagnosis: barium swallow (bird beak/rat tail), manometry (gold standard - absent peristalsis, incomplete LES relaxation, elevated LES pressure). Treatment: disrupt LES - pneumatic dilation, Heller myotomy (+ partial fundoplication), POEM.', 'medium'),

('e0000344-0004-0000-0000-000000000004', 'd0000344-0000-0000-0000-000000000044', 4,
'POEM (peroral endoscopic myotomy) for achalasia:',
'Requires laparotomy', 'Is an endoscopic approach through submucosal tunnel to perform myotomy', 'Cannot treat LES dysfunction', 'Is the only treatment option', NULL,
'B', 'POEM: endoscopic myotomy through submucosal tunnel. Technique: mucosal incision (usually mid-esophagus), create submucosal tunnel to LES, myotomy of circular muscle fibers extending onto gastric cardia, close mucosal entry. Advantages: no external incisions, shorter recovery. Efficacy comparable to Heller myotomy. Disadvantage: no concurrent fundoplication (higher reflux rates ~30-50%, may need PPI). Alternative to laparoscopic Heller myotomy + partial fundoplication. Selection based on anatomy, expertise, patient factors.', 'hard'),

('e0000344-0005-0000-0000-000000000005', 'd0000344-0000-0000-0000-000000000044', 5,
'Barrett esophagus surveillance and management:',
'No surveillance needed', 'Depends on dysplasia grade - non-dysplastic every 3-5 years, low-grade every 6-12 months or treat, high-grade treat with ablation or resection', 'Immediate esophagectomy for all', 'Only PPI treatment', NULL,
'B', 'Barrett esophagus management: Non-dysplastic: PPI therapy, surveillance EGD every 3-5 years. Low-grade dysplasia (LGD): confirm with expert pathology review, endoscopic eradication therapy (radiofrequency ablation) or surveillance every 6-12 months. High-grade dysplasia (HGD): endoscopic eradication therapy (RFA, endoscopic mucosal resection for nodular disease). Intramucosal carcinoma: endoscopic therapy if no adverse features. Invasive adenocarcinoma: esophagectomy or chemoradiation depending on stage. RFA has revolutionized management of dysplastic Barrett.', 'medium'),

('e0000344-0006-0000-0000-000000000006', 'd0000344-0000-0000-0000-000000000044', 6,
'Type II (paraesophageal) hiatal hernia:',
'Has GE junction above diaphragm', 'Has GE junction in normal position with gastric fundus herniating alongside esophagus', 'Is the most common type', 'Never requires surgery', NULL,
'B', 'Hiatal hernia types: Type I (sliding, 95%): GE junction migrates above diaphragm, most common, associated with GERD. Type II (paraesophageal): GE junction normal position, fundus herniates alongside esophagus into chest. Type III (mixed): both GE junction and fundus herniate. Type IV: other organs (colon, spleen) also herniate. Types II-IV (paraesophageal): risk of incarceration, volvulus, strangulation - surgical repair recommended even if asymptomatic (though watchful waiting acceptable in elderly with minimal symptoms). Repair: reduction, excision of sac, crural closure, fundoplication.', 'medium'),

('e0000344-0007-0000-0000-000000000007', 'd0000344-0000-0000-0000-000000000044', 7,
'Esophageal cancer staging and neoadjuvant therapy:',
'All patients proceed directly to surgery', 'Locally advanced (T3/N+) esophageal cancer receives neoadjuvant chemoradiation before esophagectomy', 'Only radiation is used', 'Staging is unnecessary', NULL,
'B', 'Esophageal cancer treatment: Early (T1a, mucosal): endoscopic resection may be curative. Localized (T1b-T2, N0): primary esophagectomy. Locally advanced (T3 or N+): neoadjuvant chemoradiation (CROSS regimen: carboplatin/paclitaxel + 41.4 Gy) followed by esophagectomy - improves survival vs surgery alone. Metastatic: palliative chemotherapy, stenting, radiation. Staging: EUS (T and N stage), CT chest/abdomen (metastases), PET-CT (occult metastases). Adenocarcinoma (distal, Barrett-related) now more common than SCC in Western countries.', 'hard'),

('e0000344-0008-0000-0000-000000000008', 'd0000344-0000-0000-0000-000000000044', 8,
'Ivor Lewis esophagectomy involves:',
'Cervical incision only', 'Laparotomy for gastric mobilization and right thoracotomy for resection with intrathoracic anastomosis', 'Left thoracotomy only', 'Transhiatal approach', NULL,
'B', 'Esophagectomy approaches: Ivor Lewis: laparotomy (gastric mobilization, abdominal lymphadenectomy) + right thoracotomy (esophageal resection, intrathoracic anastomosis). For mid-distal tumors. McKeown (3-field): adds cervical incision for cervical anastomosis - lower anastomotic leak mortality but higher leak rate. Transhiatal: abdominal + cervical incisions, blunt esophageal dissection, no thoracotomy - less morbidity but limited lymphadenectomy. Minimally invasive (MIE): thoracoscopic/laparoscopic/robotic combinations - reduced pulmonary complications. Conduit: stomach (most common), colon, jejunum.', 'hard'),

('e0000344-0009-0000-0000-000000000009', 'd0000344-0000-0000-0000-000000000044', 9,
'Anastomotic leak after esophagectomy:',
'Is rare and inconsequential', 'Is a serious complication (5-15%), managed based on size/containment - from observation to reoperation', 'Always requires reoperation', 'Cannot be detected on imaging', NULL,
'B', 'Anastomotic leak post-esophagectomy: incidence 5-15%, major cause of morbidity/mortality. Risk factors: tension, ischemia, technical factors, nutritional status, neoadjuvant therapy. Presentation: fever, tachycardia, respiratory distress, drain output changes. Diagnosis: contrast swallow, CT. Management: (1) Small contained leak: NPO, antibiotics, drainage, may heal; (2) Moderate leak: endoscopic stent, drainage; (3) Large/uncontained/conduit necrosis: surgery (drainage, diversion, or conduit takedown). Cervical leaks: open drain, usually heal. Thoracic leaks: higher morbidity.', 'medium'),

('e0000344-0010-0000-0000-000000000010', 'd0000344-0000-0000-0000-000000000044', 10,
'Zenker diverticulum is:',
'A true diverticulum of the mid-esophagus', 'A false diverticulum arising through Killian dehiscence between thyropharyngeus and cricopharyngeus muscles', 'Located in the distal esophagus', 'Always managed conservatively', NULL,
'B', 'Zenker diverticulum: pharyngeal (false) diverticulum arising through Killian triangle (area of weakness between thyropharyngeus and cricopharyngeus - upper esophageal sphincter). Pulsion diverticulum from increased pharyngeal pressure against non-relaxing cricopharyngeus. Presentation: dysphagia, regurgitation of undigested food, halitosis, aspiration, neck mass (gurgles with pressure). Diagnosis: barium swallow (do not perform EGD first - perforation risk). Treatment: cricopharyngeal myotomy + diverticulectomy (open or endoscopic). Endoscopic stapling increasingly popular.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 44 (Esophageal Surgery) with 10 self-assessment questions inserted' as status;
