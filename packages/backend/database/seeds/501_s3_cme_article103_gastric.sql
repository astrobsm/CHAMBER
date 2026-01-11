-- ============================================================================
-- SURGERY 3 CME ARTICLE 103: Gastric Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000169-0000-0000-0000-000000000169', 'a0000003-0000-0000-0000-000000000003', 'Gastric Surgery', 'Surgical management of gastric disorders and malignancy')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000403-0000-0000-0000-000000000103',
    'c0000169-0000-0000-0000-000000000169',
    'a0000003-0000-0000-0000-000000000003',
    'Gastric Surgery: From Peptic Ulcer Disease to Cancer',
    'Comprehensive Gastric Surgical Management',
    'This article covers gastric anatomy and physiology, peptic ulcer surgery, gastric cancer staging and resection, gastrectomy techniques and reconstruction, GIST management, and postgastrectomy syndromes.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000403-0001-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 1,
'Indications for surgical management of peptic ulcer disease include:',
'All ulcers require surgery', 'Perforation, bleeding uncontrolled by endoscopy, obstruction, and malignancy or suspected malignancy', 'Pain alone', 'First-time diagnosis',
'B', 'PEPTIC ULCER SURGERY INDICATIONS (era of PPIs, most ulcers heal medically): EMERGENCIES: (1) PERFORATION: repair (omental patch) + treat H. pylori; (2) BLEEDING: if endoscopy fails (2 attempts) or hemodynamic instability - oversew vessel, may need resection. ELECTIVE (rare now): (3) OBSTRUCTION (gastric outlet): may need drainage procedure or resection after trial of dilation; (4) INTRACTABILITY: rare, failed medical therapy; (5) MALIGNANCY: gastric ulcers need biopsy, if cancer then gastrectomy. Duodenal ulcers rarely malignant. H. pylori eradication and PPIs have dramatically reduced need for elective ulcer surgery.', 'easy'),

('e0000403-0002-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 2,
'The Graham patch repair for perforated duodenal ulcer involves:',
'Gastric resection', 'Placement of omentum over the perforation and securing with sutures, followed by H. pylori treatment', 'Vagotomy always', 'Total gastrectomy',
'B', 'GRAHAM PATCH (Omental Patch Repair): standard repair for perforated duodenal ulcer. TECHNIQUE: identify perforation, place sutures through healthy tissue adjacent to perforation (not through necrotic edges), bring omental pedicle (healthy vascularized omentum) over perforation, tie sutures to secure omentum as PATCH. Omentum seals the perforation. POST-OP: IV PPI, test and treat H. pylori (major cause, eradication prevents recurrence), stop NSAIDs. Peritoneal lavage for contamination. Definitive acid-reducing surgery (vagotomy) rarely done acutely now. Laparoscopic repair increasingly common for suitable patients.', 'easy'),

('e0000403-0003-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 3,
'Billroth I reconstruction after distal gastrectomy involves:',
'Gastrojejunostomy', 'Direct gastroduodenal anastomosis between the gastric remnant and the duodenal stump', 'Total reconstruction bypass', 'Roux-en-Y only',
'B', 'BILLROTH I (BI) RECONSTRUCTION: after distal gastrectomy. ANATOMY: GASTRODUODENAL anastomosis - connect gastric remnant directly to duodenal stump (restores normal GI continuity). ADVANTAGES: maintains physiologic food passage through duodenum, single anastomosis. DISADVANTAGES: tension if inadequate stomach or duodenum, limited resection extent, bile reflux into stomach. INDICATIONS: benign disease (ulcer), early gastric cancer with limited resection. Compare to Billroth II: gastrojejunostomy (duodenal stump closed, stomach to jejunum). Roux-en-Y now often preferred to reduce bile reflux and reflux esophagitis.', 'easy'),

('e0000403-0004-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 4,
'The surgical treatment for localized gastric cancer involves:',
'Polypectomy only', 'Gastrectomy (subtotal or total based on location) with D2 lymphadenectomy, achieving negative margins', 'Chemotherapy alone', 'Radiation only',
'B', 'GASTRIC CANCER SURGERY: GASTRECTOMY with adequate lymphadenectomy. EXTENT: SUBTOTAL (distal) gastrectomy for antral/body tumors if 5cm proximal margin achievable; TOTAL gastrectomy for proximal tumors, diffuse type, or if margins not achievable with subtotal. LYMPHADENECTOMY: D2 (standard of care) - perigastric nodes (D1) plus nodes along celiac axis vessels (left gastric, common hepatic, celiac, splenic). Minimum 16 lymph nodes for adequate staging. MARGINS: 5cm gross margin recommended (3cm for well-differentiated). Perioperative chemotherapy (FLOT in West, S-1 in Asia) improves survival. En bloc resection of involved adjacent organs if needed.', 'medium'),

('e0000403-0005-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 5,
'Dumping syndrome after gastrectomy:',
'Does not occur', 'Results from rapid gastric emptying of hyperosmolar contents into small bowel, causing vasomotor symptoms (early) and reactive hypoglycemia (late)', 'Is always severe', 'Requires reoperation',
'B', 'DUMPING SYNDROME: postgastrectomy complication from loss of pyloric regulation. EARLY DUMPING (15-30 min after eating): rapid emptying of HYPEROSMOLAR food into jejunum, causes fluid shift into lumen, GI distension, release of vasoactive substances. Symptoms: cramping, diarrhea, nausea, vasomotor (flushing, palpitations, sweating, dizziness). LATE DUMPING (1-3 hours): reactive HYPOGLYCEMIA - rapid carbohydrate absorption triggers insulin surge, subsequent hypoglycemia. MANAGEMENT: dietary modification (small frequent meals, avoid simple sugars, separate liquids from solids, high protein/fat). Octreotide for refractory. Surgery rarely needed.', 'medium'),

('e0000403-0006-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 6,
'Gastrointestinal stromal tumors (GISTs) of the stomach:',
'Are always benign', 'Are mesenchymal tumors characterized by KIT or PDGFRA mutations, and are treated with surgical resection with negative margins, with imatinib for high-risk or metastatic disease', 'Require lymphadenectomy always', 'Are not responsive to targeted therapy',
'B', 'GASTRIC GIST: most common site for GIST (60%). ORIGIN: interstitial cells of Cajal (pacemaker cells). MUTATIONS: KIT (c-kit, CD117) 80%, PDGFRA 5-10%. PRESENTATION: submucosal mass, GI bleeding, abdominal mass. DIAGNOSIS: CT, EUS + biopsy. TREATMENT: SURGERY - complete resection with NEGATIVE MARGINS (R0), no lymphadenectomy needed (GISTs rarely metastasize to lymph nodes - hematogenous spread). ADJUVANT IMATINIB (tyrosine kinase inhibitor targeting KIT): for high-risk tumors (size >5cm, high mitotic rate, rupture). Metastatic/unresectable: imatinib is first-line. Risk stratification by size, mitotic rate, location.', 'medium'),

('e0000403-0007-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 7,
'Roux-en-Y reconstruction after gastrectomy:',
'Has more bile reflux', 'Diverts biliopancreatic secretions away from the gastric remnant, reducing bile reflux gastritis and esophagitis', 'Is simpler than Billroth', 'Is contraindicated',
'B', 'ROUX-EN-Y RECONSTRUCTION: after total or subtotal gastrectomy. ANATOMY: create Roux limb (jejunum divided, distal end brought up to stomach/esophagus for gastro/esophagojejunostomy), biliopancreatic limb (proximal jejunum with pancreatic/biliary secretions) anastomosed downstream to Roux limb (jejunojejunostomy). Roux limb typically 40-60cm. ADVANTAGE: DIVERTS BILE away from gastric remnant/esophagus, reducing bile reflux gastritis and alkaline reflux esophagitis (major problems with Billroth II). Standard reconstruction after total gastrectomy. Also used for gastric bypass in bariatric surgery. Disadvantage: two anastomoses, Roux stasis syndrome.', 'medium'),

('e0000403-0008-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 8,
'Linitis plastica refers to:',
'A benign condition', 'Diffuse infiltrating gastric carcinoma (often signet ring cell type) causing rigid, thickened, non-distensible stomach wall', 'Gastric polyps', 'Peptic ulcer disease',
'B', 'LINITIS PLASTICA: diffuse (infiltrative) type gastric cancer. PATHOLOGY: often SIGNET RING CELL carcinoma, diffusely infiltrates stomach wall (submucosa, muscularis), induces DESMOPLASTIC reaction (fibrosis). APPEARANCE: stomach becomes RIGID, thickened, NON-DISTENSIBLE ("leather bottle stomach"). Mucosal surface may appear relatively normal (infiltration below mucosa). PROGNOSIS: poor - often advanced at diagnosis, diffuse spread, peritoneal carcinomatosis common. DIAGNOSIS: endoscopy (may miss - deep biopsies needed), CT (wall thickening, loss of distensibility). TREATMENT: total gastrectomy if resectable, but often unresectable or metastatic. Lauren classification: diffuse vs intestinal type.', 'medium'),

('e0000403-0009-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 9,
'Vagotomy procedures were performed to:',
'Increase acid secretion', 'Reduce gastric acid secretion by dividing vagal innervation, historically used for peptic ulcer disease', 'Treat gastric cancer', 'Improve gastric emptying',
'B', 'VAGOTOMY: surgical acid reduction for peptic ulcer disease (historical, now rare). TYPES: (1) TRUNCAL vagotomy: divide both vagal trunks at esophageal hiatus - affects entire stomach and abdominal viscera, requires DRAINAGE procedure (pyloroplasty or gastrojejunostomy) because impairs gastric emptying. (2) SELECTIVE vagotomy: preserve hepatic and celiac branches, still needs drainage. (3) HIGHLY SELECTIVE (Parietal Cell) vagotomy: divide only branches to parietal cell area, preserve antral innervation - no drainage needed, lower recurrence but technically demanding. MECHANISM: reduces parietal cell stimulation, decreases acid secretion. Superseded by PPIs and H. pylori eradication.', 'medium'),

('e0000403-0010-0000-0000-000000000103', 'd0000403-0000-0000-0000-000000000103', 10,
'Perioperative chemotherapy for resectable gastric cancer:',
'Is not beneficial', 'Has been shown to improve survival compared to surgery alone and is standard of care for stage II-III gastric cancer', 'Replaces surgery', 'Is only for unresectable disease',
'B', 'PERIOPERATIVE CHEMOTHERAPY for gastric cancer: STANDARD for stage II-III (locally advanced resectable). EVIDENCE: MAGIC trial (ECF), FLOT4 trial (FLOT regimen - docetaxel, oxaliplatin, 5-FU/leucovorin) showed survival benefit vs surgery alone. FLOT4: 5-year OS 45% vs 36% with surgery alone. REGIMEN: typically 4 cycles pre-op + 4 cycles post-op (FLOT), or 3+3 (ECF). BENEFITS: downstaging, treat micrometastases, improved R0 resection. In East Asia: adjuvant chemotherapy (S-1 or CAPOX) after D2 gastrectomy is standard (different biology, more complete surgery). Neoadjuvant radiation not standard outside GEJ tumors.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 103 (Gastric Surgery) with 10 self-assessment questions inserted' as status;
