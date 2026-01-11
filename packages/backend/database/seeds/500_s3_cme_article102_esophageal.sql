-- ============================================================================
-- SURGERY 3 CME ARTICLE 102: Esophageal Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000168-0000-0000-0000-000000000168', 'a0000003-0000-0000-0000-000000000003', 'Esophageal Surgery', 'Surgical management of esophageal disorders and cancer')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000402-0000-0000-0000-000000000102',
    'c0000168-0000-0000-0000-000000000168',
    'a0000003-0000-0000-0000-000000000003',
    'Esophageal Surgery: From Benign Disease to Cancer Management',
    'Comprehensive Esophageal Surgical Care',
    'This article covers esophageal anatomy, achalasia management, GERD surgery, esophageal perforation, esophageal cancer staging and treatment, esophagectomy techniques, and management of anastomotic complications.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000402-0001-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 1,
'The surgical treatment of choice for achalasia is:',
'Total esophagectomy', 'Laparoscopic Heller myotomy with partial fundoplication, or peroral endoscopic myotomy (POEM)', 'Proton pump inhibitors only', 'Esophageal stenting',
'B', 'ACHALASIA TREATMENT: (1) HELLER MYOTOMY: gold standard surgery - laparoscopic division of LES circular muscle fibers (extending onto stomach), with PARTIAL FUNDOPLICATION (Dor or Toupet) to prevent reflux. 90% success long-term. (2) POEM (Peroral Endoscopic Myotomy): newer endoscopic approach, similar efficacy, no anti-reflux procedure (higher GERD rate). (3) Pneumatic dilation: effective but may require repeat. (4) Botox injection: temporary. Choice depends on expertise, patient factors. Both Heller and POEM offer durable symptom relief by dividing the hypertensive LES while preserving esophageal function.', 'medium'),

('e0000402-0002-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 2,
'Nissen fundoplication for GERD involves:',
'Partial wrap only', 'Complete (360-degree) wrap of the gastric fundus around the lower esophagus to recreate the anti-reflux barrier', 'Esophageal resection', 'Gastric bypass',
'B', 'NISSEN FUNDOPLICATION: anti-reflux surgery for GERD. TECHNIQUE: mobilize fundus, divide short gastric vessels, create posterior window, wrap fundus COMPLETELY (360°) around lower esophagus over bougie (to calibrate). RESULT: augments LES pressure, recreates acute angle of His, restores intra-abdominal esophagus length. SUCCESS: 85-90% satisfaction at 5-10 years. COMPLICATIONS: dysphagia (wrap too tight), gas-bloat, inability to vomit, wrap disruption, recurrence. PARTIAL wraps (Dor - anterior, Toupet - posterior 270°): less dysphagia, used with myotomy or for impaired motility. Laparoscopic approach is standard.', 'easy'),

('e0000402-0003-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 3,
'Boerhaave syndrome refers to:',
'Esophageal cancer', 'Spontaneous transmural rupture of the esophagus typically following forceful vomiting, presenting with severe chest pain and sepsis', 'Achalasia', 'Hiatal hernia',
'B', 'BOERHAAVE SYNDROME: SPONTANEOUS esophageal rupture (full-thickness perforation). CAUSE: forceful VOMITING against closed cricopharyngeus (repeated emesis, often after alcohol). LOCATION: left posterolateral distal esophagus (weakest point). PRESENTATION: severe chest/epigastric PAIN, vomiting, subcutaneous emphysema (Mackler triad), sepsis. DIAGNOSIS: CT with oral contrast (leak), water-soluble contrast swallow. TREATMENT: EMERGENCY - broad-spectrum antibiotics, drainage (thoracic and mediastinal), repair if early (<24h) and tissues healthy. Primary repair + buttress, T-tube drainage, or esophageal diversion/exclusion for late/septic. HIGH MORTALITY (20-40%) if delayed.', 'medium'),

('e0000402-0004-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 4,
'The most common histologic types of esophageal cancer are:',
'Lymphoma and sarcoma', 'Squamous cell carcinoma (SCC) and adenocarcinoma, with adenocarcinoma predominating in Western countries due to GERD and Barrett esophagus', 'Neuroendocrine tumors', 'GIST only',
'B', 'ESOPHAGEAL CANCER HISTOLOGY: (1) SQUAMOUS CELL CARCINOMA (SCC): from squamous epithelium, upper/middle esophagus. Risk factors: smoking, alcohol, hot beverages, caustic injury. Predominant worldwide, especially Asia/Africa. (2) ADENOCARCINOMA: from columnar (Barrett) epithelium, distal esophagus/GEJ. Risk factors: GERD, Barrett esophagus, obesity. INCREASING incidence in Western countries, now more common than SCC in US/Europe. Prognosis similar by stage. Treatment differs slightly: SCC more radiosensitive (definitive chemoradiation may cure). Barrett surveillance for adenocarcinoma prevention.', 'easy'),

('e0000402-0005-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 5,
'The Ivor Lewis esophagectomy involves:',
'Neck incision only', 'Laparotomy for gastric mobilization and right thoracotomy for esophageal resection with intrathoracic anastomosis', 'Transhiatal approach only', 'Left thoracotomy only',
'B', 'IVOR LEWIS ESOPHAGECTOMY: two-field approach for esophageal cancer. PROCEDURE: (1) LAPAROTOMY (or laparoscopy): gastric mobilization, create gastric conduit (tubularized stomach), pyloroplasty. (2) RIGHT THORACOTOMY (or thoracoscopy): esophageal mobilization, lymphadenectomy, resection, INTRATHORACIC anastomosis (chest). INDICATION: mid to distal esophageal tumors. ADVANTAGES: excellent exposure, thoracic lymphadenectomy. DISADVANTAGE: intrathoracic anastomosis (if leaks, causes mediastinitis). Compare to: McKeown (3-field, cervical anastomosis), Transhiatal (no thoracotomy, blind mediastinal dissection, cervical anastomosis). Minimally invasive approaches increasingly used.', 'hard'),

('e0000402-0006-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 6,
'The gastric conduit used in esophageal reconstruction:',
'Is always the jejunum', 'Is created by tubularizing the stomach along the greater curvature, with blood supply from the right gastroepiploic artery', 'Has no blood supply concerns', 'Cannot reach the neck',
'B', 'GASTRIC CONDUIT for esophageal reconstruction: preferred conduit for esophagectomy. CREATION: tubularize stomach along GREATER CURVATURE using staplers (remove lesser curve). Blood supply: RIGHT GASTROEPIPLOIC ARTERY (preserved) - main blood supply to conduit tip. Right gastric may also contribute. Left gastric and short gastrics divided. ADVANTAGES: adequate length (reaches neck), single anastomosis, robust blood supply, familiar anatomy. Technical points: avoid twisting, ensure adequate length, pyloroplasty or pyloromyotomy for drainage. Alternatives if stomach unusable: colon interposition (left or right colon), jejunum (free or pedicled).', 'medium'),

('e0000402-0007-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 7,
'Anastomotic leak after esophagectomy:',
'Is rare and minor', 'Is a serious complication occurring in 5-15% of cases, with intrathoracic leaks carrying high morbidity and mortality due to mediastinitis', 'Never requires intervention', 'Only occurs with cervical anastomosis',
'B', 'ANASTOMOTIC LEAK after esophagectomy: serious complication. INCIDENCE: 5-15% (varies by technique, surgeon). CONSEQUENCES: CERVICAL leak: contained, drains externally, usually heals with drainage/wound care (lower morbidity). INTRATHORACIC leak (Ivor Lewis): mediastinitis, sepsis, high mortality - requires aggressive management (drainage, stent, possibly reoperation). RISK FACTORS: conduit ischemia (main cause), tension, technique, malnutrition, comorbidities. DIAGNOSIS: clinical (tachycardia, fever, pain), CT with oral contrast, endoscopy. MANAGEMENT: NPO, antibiotics, drainage (CT-guided or surgical), covered STENT, negative pressure therapy, may need takedown. Prevention: meticulous technique, good blood supply.', 'medium'),

('e0000402-0008-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 8,
'Neoadjuvant chemoradiation for esophageal cancer:',
'Is contraindicated', 'Is standard for locally advanced disease (T3-4 or N+) and has been shown to improve survival compared to surgery alone', 'Worsens surgical outcomes', 'Is only for SCC',
'B', 'NEOADJUVANT CHEMORADIATION for esophageal cancer: STANDARD for locally advanced (T3, T4a, or N+) disease. EVIDENCE: CROSS trial (landmark) showed chemoradiation (carboplatin/paclitaxel + 41.4 Gy) + surgery vs surgery alone improved 5-year survival (47% vs 34%) and R0 resection rates. Pathologic complete response (pCR) in 29% (SCC 49%, adenocarcinoma 23%). BENEFITS: downsizing, improved resectability, treat micrometastases. Perioperative chemotherapy (FLOT) is alternative approach for adenocarcinoma. Definitive chemoradiation (no surgery) may cure some SCC, used if unfit for surgery. Surgery typically 6-8 weeks after completing chemoradiation.', 'medium'),

('e0000402-0009-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 9,
'Barrett esophagus is:',
'A type of cancer', 'Replacement of normal squamous esophageal epithelium with intestinal-type columnar epithelium (intestinal metaplasia) due to chronic GERD, and is a premalignant condition', 'Normal finding', 'Caused by infection',
'B', 'BARRETT ESOPHAGUS: INTESTINAL METAPLASIA of distal esophagus (squamous replaced by specialized intestinal-type columnar epithelium with goblet cells). CAUSE: chronic GERD - acid/bile reflux causes injury and metaplastic change. SIGNIFICANCE: PREMALIGNANT - progression dysplasia to adenocarcinoma. Risk of cancer: 0.5% per year without dysplasia. DIAGNOSIS: endoscopy + BIOPSY (goblet cells on histology). MANAGEMENT: PPI, surveillance endoscopy (interval depends on dysplasia presence). Low-grade dysplasia: increased surveillance or ablation. High-grade dysplasia: endoscopic eradication (RFA, EMR) or esophagectomy. Goal: prevent progression to cancer.', 'easy'),

('e0000402-0010-0000-0000-000000000102', 'd0000402-0000-0000-0000-000000000102', 10,
'Management of esophageal perforation depends on:',
'Observation in all cases', 'Time since perforation, location, degree of contamination, and underlying esophageal pathology, with early contained perforations potentially managed conservatively', 'Immediate esophagectomy always', 'Antibiotics alone sufficient',
'B', 'ESOPHAGEAL PERFORATION MANAGEMENT: (1) CONSERVATIVE (selected cases): contained perforation, no sepsis, minimal symptoms, drains to esophagus - NPO, IV antibiotics, drainage of collections, TPN, CT-guided drainage. (2) ENDOSCOPIC: stent (covered SEMS) for seal, endoscopic clips, negative pressure therapy (Eso-SPONGE). (3) SURGICAL PRIMARY REPAIR: early (<24h), healthy tissues - repair + buttress (muscle flap, pleura, fundoplication). (4) DRAINAGE/DIVERSION: late, severely contaminated - wide drainage, esophageal exclusion, cervical esophagostomy, feeding access. (5) RESECTION: underlying cancer, caustic, unrepairable. PRINCIPLES: control sepsis, close or exclude leak, drain, nutrition.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 102 (Esophageal Surgery) with 10 self-assessment questions inserted' as status;
