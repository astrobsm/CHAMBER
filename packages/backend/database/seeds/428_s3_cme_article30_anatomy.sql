-- ============================================================================
-- SURGERY 3 CME ARTICLE 30: Surgical Anatomy Essentials
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000096-0000-0000-0000-000000000096', 'a0000003-0000-0000-0000-000000000003', 'Surgical Anatomy Essentials', 'Essential anatomical landmarks for surgical practice')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000330-0000-0000-0000-000000000030',
    'c0000096-0000-0000-0000-000000000096',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Anatomy Essentials',
    'Critical Landmarks and Relations for Safe Surgery',
    'This article reviews essential surgical anatomy including the inguinal region, femoral triangle, axilla, abdominal wall layers, retroperitoneum, major vascular structures, and anatomical triangles. Understanding these landmarks is crucial for safe surgical practice.',
    'Department of Surgery, UNTH',
    2.0,
    22,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000330-0001-0000-0000-000000000001', 'd0000330-0000-0000-0000-000000000030', 1,
'The boundaries of the inguinal (Hesselbach) triangle are:',
'Rectus abdominis, inguinal ligament, and inferior epigastric vessels', 'External oblique, internal oblique, transversus abdominis', 'Femoral vessels and inguinal ligament', 'Rectus abdominis only', NULL,
'A', 'Hesselbach triangle (inguinal triangle) boundaries: (1) Medial - lateral edge of rectus abdominis; (2) Inferior - inguinal ligament; (3) Lateral - inferior epigastric vessels. Clinical significance: direct inguinal hernias protrude through this triangle (medial to inferior epigastric vessels), while indirect hernias pass lateral to inferior epigastric vessels through the deep inguinal ring. This distinction is important for hernia classification and repair strategy.', 'medium'),

('e0000330-0002-0000-0000-000000000002', 'd0000330-0000-0000-0000-000000000030', 2,
'The contents of the femoral canal (medial to lateral) are:',
'Nerve, artery, vein, lymphatics', 'Lymphatics, vein, artery, nerve (NAVEL from lateral to medial)', 'Artery only', 'Vein and nerve only', NULL,
'B', 'Femoral sheath contents (lateral to medial): Nerve (femoral nerve outside sheath), Artery (femoral artery), Vein (femoral vein), Empty space, Lymphatics - mnemonic "NAVEL." The femoral canal is the medial compartment containing lymphatics and loose areolar tissue - potential site for femoral hernias. Femoral nerve is lateral to sheath (not within it). Femoral canal boundaries: inguinal ligament (anterior), pectineus (posterior), lacunar ligament (medial), femoral vein (lateral).', 'medium'),

('e0000330-0003-0000-0000-000000000003', 'd0000330-0000-0000-0000-000000000030', 3,
'The triangle of Calot (cystohepatic triangle) contains:',
'Common bile duct', 'Cystic artery and cystic duct', 'Hepatic artery only', 'Portal vein', NULL,
'B', 'Triangle of Calot boundaries: (1) Cystic duct (inferolateral), (2) Common hepatic duct (medial), (3) Inferior surface of liver (superior). Contains: cystic artery (usually from right hepatic artery), cystic lymph node of Lund, connective tissue. Surgical importance: careful dissection in this triangle during cholecystectomy to achieve critical view of safety. Variations in cystic artery origin and course are common - awareness prevents iatrogenic injury.', 'easy'),

('e0000330-0004-0000-0000-000000000004', 'd0000330-0000-0000-0000-000000000030', 4,
'The layers of the abdominal wall from superficial to deep are:',
'Skin, muscle, peritoneum', 'Skin, Camper fascia, Scarpa fascia, external oblique, internal oblique, transversus abdominis, transversalis fascia, extraperitoneal fat, peritoneum', 'Skin and muscle only', 'Three muscle layers only', NULL,
'B', 'Abdominal wall layers (superficial to deep): (1) Skin; (2) Superficial fascia - Camper (fatty) and Scarpa (membranous); (3) External oblique muscle; (4) Internal oblique muscle; (5) Transversus abdominis muscle; (6) Transversalis fascia; (7) Extraperitoneal (preperitoneal) fat; (8) Peritoneum. Below arcuate line (midway between umbilicus and pubis), posterior rectus sheath is absent - only transversalis fascia behind rectus muscle.', 'medium'),

('e0000330-0005-0000-0000-000000000005', 'd0000330-0000-0000-0000-000000000030', 5,
'The blood supply to the stomach includes:',
'Superior mesenteric artery only', 'Left gastric, right gastric, left gastroepiploic, right gastroepiploic, and short gastric arteries', 'Splenic artery only', 'Inferior mesenteric artery', NULL,
'B', 'Gastric blood supply (rich anastomotic network allows ligation of several vessels): Lesser curve: left gastric (celiac trunk) and right gastric (hepatic artery proper). Greater curve: left gastroepiploic (splenic artery) and right gastroepiploic (gastroduodenal artery). Fundus: short gastric arteries (splenic artery). This redundancy means stomach can survive on single vessel. Venous drainage parallels arteries, draining to portal system.', 'medium'),

('e0000330-0006-0000-0000-000000000006', 'd0000330-0000-0000-0000-000000000030', 6,
'The portal vein is formed by the junction of:',
'Hepatic artery and hepatic vein', 'Superior mesenteric vein and splenic vein behind the neck of pancreas', 'IVC and aorta', 'Left and right hepatic veins', NULL,
'B', 'Portal vein formation: SMV and splenic vein junction behind pancreatic neck. IMV usually joins splenic vein or SMV junction. Portal vein lies posterior to hepatic artery and common bile duct in hepatoduodenal ligament. At porta hepatis, divides into right and left branches. Drains entire GI tract (except lower rectum/anal canal), spleen, pancreas, gallbladder. Portal pressure normally 5-10 mmHg; >12 mmHg defines portal hypertension.', 'easy'),

('e0000330-0007-0000-0000-000000000007', 'd0000330-0000-0000-0000-000000000030', 7,
'The nerve at risk during thyroidectomy that causes hoarseness if injured is:',
'Phrenic nerve', 'Recurrent laryngeal nerve', 'Vagus nerve trunk', 'Hypoglossal nerve', NULL,
'B', 'Recurrent laryngeal nerve (RLN): branch of vagus, supplies all intrinsic laryngeal muscles except cricothyroid. Courses in tracheoesophageal groove, at risk during thyroid surgery. Unilateral injury: hoarseness (paralyzed vocal cord). Bilateral injury: airway obstruction (may need tracheostomy). External branch of superior laryngeal nerve also at risk (affects voice pitch). Intraoperative nerve monitoring increasingly used. RLN typically identified before ligating inferior thyroid artery branches.', 'easy'),

('e0000330-0008-0000-0000-000000000008', 'd0000330-0000-0000-0000-000000000030', 8,
'The anatomical position of the appendix is most commonly:',
'Pelvic', 'Retrocecal (behind the cecum)', 'Subcecal', 'Pre-ileal', NULL,
'B', 'Appendix positions: Retrocecal 65-70% (most common), Pelvic 30%, Subcecal 2%, Pre-ileal 1%, Post-ileal 0.5%. Retrocecal position may explain atypical presentations of appendicitis (flank pain, psoas sign positive). Pelvic appendicitis may cause urinary symptoms or diarrhea. The base of the appendix is consistently located at the convergence of the three taeniae coli at the cecum - useful surgical landmark.', 'easy'),

('e0000330-0009-0000-0000-000000000009', 'd0000330-0000-0000-0000-000000000030', 9,
'The danger triangle of the neck refers to:',
'An area with no important structures', 'The area containing the carotid sheath with carotid artery, internal jugular vein, and vagus nerve', 'The thyroid gland only', 'The posterior triangle', NULL,
'B', 'Carotid triangle (anterior neck): bounded by SCM (posterior), superior belly of omohyoid (inferior), posterior belly of digastric (superior). Contains carotid sheath: common carotid artery (medial), internal jugular vein (lateral), vagus nerve (posterior between them). Also contains: external carotid branches, hypoglossal nerve, ansa cervicalis. "Danger" refers to risk during surgery and penetrating trauma. Carotid body at bifurcation is chemoreceptor for O2/CO2.', 'medium'),

('e0000330-0010-0000-0000-000000000010', 'd0000330-0000-0000-0000-000000000030', 10,
'The hepatoduodenal ligament contains:',
'Splenic vessels', 'Portal vein, hepatic artery proper, and common bile duct (portal triad)', 'Inferior vena cava', 'Superior mesenteric vessels', NULL,
'B', 'Hepatoduodenal ligament: free edge of lesser omentum connecting porta hepatis to first part of duodenum. Contains portal triad: (1) Portal vein (posterior), (2) Hepatic artery proper (left anterior), (3) Common bile duct (right anterior). Also contains: lymphatics, nerves, left and right hepatic ducts. Forms anterior boundary of epiploic foramen (of Winslow). Pringle maneuver: clamping this ligament controls hepatic inflow (not outflow - hepatic veins drain to IVC).', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 30 (Surgical Anatomy Essentials) with 10 self-assessment questions inserted' as status;
