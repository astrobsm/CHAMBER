-- ============================================================================
-- SURGERY 3 CME ARTICLE 83: Surgical Anatomy Essentials
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000149-0000-0000-0000-000000000149', 'a0000003-0000-0000-0000-000000000003', 'Surgical Anatomy Essentials', 'Critical surgical anatomy for safe surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000383-0000-0000-0000-000000000083',
    'c0000149-0000-0000-0000-000000000149',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Anatomy: High-Yield Concepts',
    'Anatomy for Safe Surgical Practice',
    'This article covers critical surgical anatomy including inguinal canal, femoral canal, abdominal wall layers, portal triad, bile duct anatomy, celiac trunk branches, mesenteric vessels, and dangerous areas in common operations.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000383-0001-0000-0000-000000000001', 'd0000383-0000-0000-0000-000000000083', 1,
'The contents of the inguinal canal include:',
'Femoral artery and vein', 'Spermatic cord (males) or round ligament (females), ilioinguinal nerve, and genital branch of genitofemoral nerve', 'Sciatic nerve', 'Ureter',
'B', 'Inguinal canal contents: MALES - spermatic cord (vas deferens, testicular artery, pampiniform plexus, cremasteric artery, artery to vas, genital branch of genitofemoral, sympathetic fibers). FEMALES - round ligament of uterus. BOTH - ilioinguinal nerve (runs on cord/ligament, not through canal proper). Canal boundaries: anterior - external oblique aponeurosis; posterior - transversalis fascia; superior - internal oblique/transversus abdominis; inferior - inguinal ligament.', 'easy'),

('e0000383-0002-0000-0000-000000000002', 'd0000383-0000-0000-0000-000000000083', 2,
'The femoral canal contains:',
'Femoral artery', 'Lymphatics and fat, providing space for femoral vein expansion; it is the site of femoral hernia', 'Femoral vein', 'Femoral nerve',
'B', 'Femoral canal: medial compartment of femoral sheath. Contents: LYMPHATICS (lymph node of Cloquet/Rosenmuller) and FAT. Provides space for femoral vein expansion. Femoral ring (abdominal opening) is site of FEMORAL HERNIA. Boundaries: anterior - inguinal ligament; posterior - pectineal ligament; medial - lacunar ligament; lateral - femoral vein. Mnemonic for femoral sheath compartments lateral to medial: NAVEL (Nerve-Artery-Vein-Empty-Lymphatics) - though nerve is outside sheath.', 'easy'),

('e0000383-0003-0000-0000-000000000003', 'd0000383-0000-0000-0000-000000000083', 3,
'The portal triad (hepatoduodenal ligament) contains:',
'Hepatic veins, IVC, and aorta', 'Portal vein, hepatic artery proper, and common bile duct', 'Splenic artery and vein', 'Superior mesenteric artery',
'B', 'Portal triad (hepatoduodenal ligament contents): PORTAL VEIN (posterior), HEPATIC ARTERY PROPER (left anterior), COMMON BILE DUCT (right anterior). Pringle maneuver clamps this structure to control hepatic inflow bleeding. Relationship: CBD and hepatic artery anteriorly, portal vein posteriorly. At hilum: right and left branches. Anatomic variations common (replaced/accessory hepatic arteries). Free edge of lesser omentum; leads into foramen of Winslow (epiploic foramen).', 'easy'),

('e0000383-0004-0000-0000-000000000004', 'd0000383-0000-0000-0000-000000000083', 4,
'The celiac trunk gives rise to:',
'Superior and inferior mesenteric arteries', 'Left gastric, splenic, and common hepatic arteries', 'Renal arteries', 'Gonadal arteries',
'B', 'Celiac trunk (axis): first major anterior branch of abdominal aorta at T12/L1. THREE BRANCHES: (1) LEFT GASTRIC artery (to lesser curvature, esophageal branches); (2) SPLENIC artery (largest, to spleen, short gastrics, left gastroepiploic, pancreatic branches); (3) COMMON HEPATIC artery (becomes hepatic artery proper after giving gastroduodenal, gives right gastric). Supplies foregut derivatives (stomach, liver, spleen, pancreas, duodenum to ampulla).', 'easy'),

('e0000383-0005-0000-0000-000000000005', 'd0000383-0000-0000-0000-000000000083', 5,
'The Triangle of Calot is bounded by:',
'Cystic artery, portal vein, and CBD', 'Cystic duct, common hepatic duct, and inferior border of liver', 'Splenic artery and vein with pancreas', 'Right and left hepatic ducts',
'B', 'Triangle of Calot (hepatocystic triangle): critical area in cholecystectomy. BOUNDARIES: CYSTIC DUCT (inferior), COMMON HEPATIC DUCT (medial), INFERIOR EDGE OF LIVER (superior). Contains: CYSTIC ARTERY (usually from right hepatic), cystic lymph node (of Lund), connective tissue. Must be clearly dissected to identify structures before clipping/cutting. Hepatobiliary triangle is variant definition using cystic duct, liver, and common hepatic duct.', 'easy'),

('e0000383-0006-0000-0000-000000000006', 'd0000383-0000-0000-0000-000000000083', 6,
'The superior mesenteric artery supplies:',
'Stomach and spleen', 'Midgut - from duodenum (distal to ampulla) to proximal two-thirds of transverse colon', 'Hindgut only', 'Foregut only',
'B', 'Superior mesenteric artery: second major anterior aortic branch at L1. Supplies MIDGUT: duodenum (distal to ampulla), jejunum, ileum, cecum, appendix, ascending colon, proximal 2/3 transverse colon. Branches: inferior pancreaticoduodenal, jejunal, ileal, ileocolic, right colic, middle colic. Marginal artery (of Drummond) along colon. Critical: SMA syndrome (compression of duodenum), mesenteric ischemia. Anastomoses with celiac (via pancreaticoduodenal) and IMA (via marginal artery).', 'easy'),

('e0000383-0007-0000-0000-000000000007', 'd0000383-0000-0000-0000-000000000083', 7,
'The recurrent laryngeal nerve:',
'Is motor to the pharynx', 'Is at risk during thyroid surgery, running in the tracheoesophageal groove, and innervates all intrinsic laryngeal muscles except cricothyroid', 'Is purely sensory', 'Runs anterior to the thyroid',
'B', 'Recurrent laryngeal nerve: branch of vagus. Course: RIGHT - loops under subclavian artery; LEFT - loops under aortic arch. Both ascend in TRACHEOESOPHAGEAL GROOVE. MOTOR to all intrinsic laryngeal muscles EXCEPT cricothyroid (external branch of superior laryngeal). Also sensory below vocal cords. AT RISK in thyroid surgery - must identify and preserve. Injury: unilateral = hoarseness; bilateral = stridor, airway obstruction (cords adducted).', 'easy'),

('e0000383-0008-0000-0000-000000000008', 'd0000383-0000-0000-0000-000000000083', 8,
'The layers of the abdominal wall from superficial to deep include:',
'Skin, fascia, peritoneum', 'Skin, Camper fascia, Scarpa fascia, external oblique, internal oblique, transversus abdominis, transversalis fascia, extraperitoneal fat, peritoneum', 'Skin, muscle, peritoneum only', 'Three muscle layers only',
'B', 'Anterior abdominal wall layers (superficial to deep): (1) SKIN; (2) Subcutaneous tissue - CAMPER fascia (fatty), SCARPA fascia (membranous); (3) EXTERNAL OBLIQUE muscle/aponeurosis; (4) INTERNAL OBLIQUE muscle/aponeurosis; (5) TRANSVERSUS ABDOMINIS muscle/aponeurosis; (6) TRANSVERSALIS FASCIA; (7) Extraperitoneal (preperitoneal) fat; (8) PERITONEUM. Rectus sheath formed by aponeuroses of obliques and transversus, varying above/below arcuate line.', 'easy'),

('e0000383-0009-0000-0000-000000000009', 'd0000383-0000-0000-0000-000000000083', 9,
'The marginal artery of Drummond:',
'Supplies the liver', 'Is a continuous arterial arcade along the mesenteric border of the colon connecting SMA and IMA territories', 'Is in the small bowel mesentery', 'Has no surgical significance',
'B', 'Marginal artery of Drummond: continuous arterial arcade along mesenteric border of colon, formed by anastomoses of colic arteries. Connects SMA and IMA territories. SURGICAL SIGNIFICANCE: provides collateral flow when one vessel occluded; must preserve during colonic resection; critical at splenic flexure (WATERSHED area, "Griffiths point" - poor collaterals, vulnerable to ischemia). Arc of Riolan (meandering mesenteric artery) - central collateral when main vessels occluded.', 'easy'),

('e0000383-0010-0000-0000-000000000010', 'd0000383-0000-0000-0000-000000000083', 10,
'The inferior epigastric artery:',
'Is a branch of the aorta', 'Arises from the external iliac and is the landmark distinguishing direct from indirect inguinal hernias', 'Runs in the spermatic cord', 'Is lateral to the femoral artery',
'B', 'Inferior epigastric artery: branch of EXTERNAL ILIAC artery just before it becomes femoral at inguinal ligament. Runs superiorly in preperitoneal space, enters rectus sheath below arcuate line. SURGICAL LANDMARK: DIRECT inguinal hernia - medial to inferior epigastric (Hesselbach triangle); INDIRECT inguinal hernia - lateral to inferior epigastric (through deep ring). Must identify and preserve (or ligate) in inguinal hernia repair. Source of bleeding in trocar insertion during laparoscopy.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 83 (Surgical Anatomy) with 10 self-assessment questions inserted' as status;
