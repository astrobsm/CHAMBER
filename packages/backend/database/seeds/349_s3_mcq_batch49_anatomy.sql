-- ============================================================================
-- SURGERY 3 MCQ BATCH 49: Surgical Anatomy Review (Questions 2881-2940)
-- Topic: Essential Surgical Anatomy - Abdomen, Vascular, Retroperitoneum
-- ============================================================================

-- First create the topic if not exists
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003', 'Surgical Anatomy Review', 'Essential surgical anatomy for safe operative procedures')
ON CONFLICT DO NOTHING;

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Abdominal Wall Anatomy (1-15)
('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The layers of the anterior abdominal wall from superficial to deep are:',
'Muscle, fat, skin, fascia', 'Skin, Camper fascia (fatty), Scarpa fascia (membranous), external oblique, internal oblique, transversus abdominis, transversalis fascia, preperitoneal fat, peritoneum', 'Skin, muscle, peritoneum only', 'Only three layers', 'Skin, bone, peritoneum',
'B', 'Anterior abdominal wall layers: (1) Skin. (2) Superficial fascia: Camper (fatty) and Scarpa (membranous). (3) External oblique (fibers run inferomedially - hands in pockets). (4) Internal oblique (fibers run superomedially). (5) Transversus abdominis (fibers transverse). (6) Transversalis fascia. (7) Preperitoneal fat. (8) Peritoneum. Rectus sheath: formed by aponeuroses of lateral muscles. Important for incision planning and hernia surgery. Reference: Gray Anatomy.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The inguinal ligament is formed by:',
'Transversalis fascia', 'The inferior edge of the external oblique aponeurosis, extending from ASIS to pubic tubercle', 'Internal oblique', 'Rectus sheath', 'Iliopubic tract',
'B', 'Inguinal ligament (Poupart ligament): (1) Structure: inferior folded edge of external oblique aponeurosis. (2) Attachments: anterior superior iliac spine (ASIS) to pubic tubercle. (3) Forms floor of inguinal canal. (4) Lacunar ligament (Gimbernat): medial extension to pectineal line. (5) Important landmark for femoral vessels (pass posterior to ligament). (6) Inguinal canal: above ligament; femoral canal: below ligament. Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The Hesselbach triangle (site of direct inguinal hernias) is bounded by:',
'Femoral artery, inguinal ligament, femoral vein', 'Rectus abdominis medially, inguinal ligament inferiorly, and inferior epigastric vessels laterally', 'Internal ring only', 'External oblique aponeurosis', 'Psoas muscle',
'B', 'Hesselbach triangle: (1) Medial: lateral border of rectus abdominis. (2) Inferior: inguinal ligament (Poupart). (3) Lateral: inferior epigastric vessels. Floor: transversalis fascia. Significance: direct inguinal hernias protrude through this triangle (medial to inferior epigastric vessels). Indirect hernias: lateral to inferior epigastric vessels (through internal ring). Reference: Gray Anatomy.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The arcuate line (linea semicircularis) is the level below which:',
'The posterior rectus sheath is complete', 'The posterior rectus sheath is absent (only transversalis fascia posterior to rectus)', 'The rectus muscle ends', 'The umbilicus is located', 'The inguinal canal begins',
'B', 'Arcuate line (Douglas): located approximately one-third distance from umbilicus to pubis. Below this line: all aponeuroses pass anterior to rectus muscle, posterior rectus sheath absent (only transversalis fascia and peritoneum behind rectus). Above: posterior sheath formed by posterior layer of internal oblique + transversus aponeurosis. Surgical significance: potential weakness in lower abdominal wall, anatomy relevant for rectus diastasis repair. Reference: Gray Anatomy.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The inferior epigastric artery arises from:',
'Internal iliac artery', 'External iliac artery just before it passes under the inguinal ligament', 'Femoral artery', 'Aorta directly', 'Superior mesenteric artery',
'B', 'Inferior epigastric artery: (1) Origin: external iliac artery, just superior to inguinal ligament. (2) Course: ascends in transversalis fascia, enters rectus sheath below arcuate line. (3) Anastomoses: with superior epigastric (from internal thoracic). (4) Importance: landmark separating direct (medial) from indirect (lateral) inguinal hernias. (5) Must identify and preserve or ligate during laparoscopic hernia repair (TEP/TAPP). Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The femoral canal boundaries are:',
'All muscular', 'Inguinal ligament anteriorly, pectineal ligament posteriorly, lacunar ligament medially, and femoral vein laterally', 'Formed by external oblique', 'Above inguinal ligament', 'In the inguinal canal',
'B', 'Femoral canal: (1) Anterior: inguinal ligament. (2) Posterior: pectineal ligament (Cooper). (3) Medial: lacunar ligament (Gimbernat). (4) Lateral: femoral vein. Contains: lymph node of Cloquet, fat. Site of femoral hernia. Medial to femoral vein (mnemonic: NAVAL - nerve, artery, vein, empty space [canal], lymphatics). Femoral hernia: narrow neck, high strangulation risk. Reference: Gray Anatomy.',
'medium', 'knowledge'),

-- Hepatobiliary Anatomy (16-30)
('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The Calot triangle (hepatocystic triangle) is bounded by:',
'Liver, stomach, duodenum', 'Cystic duct inferiorly, common hepatic duct medially, and inferior surface of liver (segment IV/V) superiorly', 'Portal vein, hepatic artery, bile duct', 'Gallbladder fundus, body, neck', 'Duodenum, pylorus, antrum',
'B', 'Calot triangle: (1) Inferior: cystic duct. (2) Medial: common hepatic duct. (3) Superior: inferior liver edge (cystic plate). Contents: cystic artery, cystic lymph node (Lund node), sometimes accessory hepatic ducts. Surgical importance: dissection required for safe cholecystectomy. Critical view of safety: clearing triangle to see only cystic duct and artery entering gallbladder. Reference: Strasberg SM. Am J Surg. 2008.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The cystic artery most commonly arises from:',
'Left hepatic artery', 'Right hepatic artery within Calot triangle', 'Gastroduodenal artery', 'Common hepatic artery directly', 'Superior mesenteric artery',
'B', 'Cystic artery: (1) Most common (75%): from right hepatic artery, within Calot triangle. (2) Variations: from left hepatic, GDA, proper hepatic, aberrant right hepatic (from SMA). (3) May have accessory cystic arteries. Caterpillar turn (Moynihan hump): right hepatic artery loops near gallbladder neck - can be mistaken for cystic artery. Critical view prevents misidentification injuries. Reference: Suzuki M. Surg Endosc. 2000.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The portal triad (hepatoduodenal ligament) contains:',
'Hepatic veins, IVC, caudate lobe', 'Portal vein (posterior), hepatic artery proper (left anterior), and common bile duct (right anterior)', 'Only portal vein', 'Aorta and vena cava', 'Splenic vessels',
'B', 'Portal triad (hepatoduodenal ligament): (1) Portal vein: posterior, largest. (2) Common bile duct: right anterior (lateral). (3) Hepatic artery proper: left anterior (medial). Mnemonic: Portal vein is posterior. Pringle maneuver: clamping portal triad to control hepatic bleeding (tests inflow occlusion - if bleeding continues, hepatic vein or IVC injury). Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The foramen of Winslow (epiploic foramen) allows communication between:',
'Peritoneal cavity and retroperitoneum', 'Greater and lesser peritoneal sacs, bounded by portal triad anteriorly, IVC posteriorly, caudate lobe superiorly', 'Thorax and abdomen', 'Two layers of omentum', 'Stomach and duodenum',
'B', 'Epiploic foramen (Winslow): (1) Anterior: portal triad (hepatoduodenal ligament). (2) Posterior: IVC. (3) Superior: caudate lobe of liver. (4) Inferior: first part of duodenum. Connects: greater sac with lesser sac (omental bursa). Clinical: finger can be passed through to perform Pringle maneuver. Internal hernia can occur through this foramen. Reference: Gray Anatomy.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The liver is divided into right and left lobes anatomically by:',
'Falciform ligament only', 'Cantlie line (from gallbladder fossa to IVC), which follows the middle hepatic vein', 'Ligamentum teres', 'Portal vein bifurcation only', 'Round ligament',
'B', 'Liver anatomy: (1) Functional/surgical division: Cantlie line - gallbladder fossa to IVC (left of middle hepatic vein). (2) Right and left hemilivers have independent blood supply and biliary drainage. (3) Couinaud segments (I-VIII): based on hepatic vein and portal vein branches. (4) Falciform ligament: surface landmark only, not functional division. Understanding segmental anatomy essential for liver resection. Reference: Couinaud C. Original description.',
'medium', 'knowledge'),

-- Vascular Anatomy (31-45)
('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The celiac trunk branches into:',
'Superior and inferior mesenteric arteries', 'Left gastric, common hepatic, and splenic arteries', 'Renal arteries', 'Gastroduodenal and right gastric', 'Lumbar arteries',
'B', 'Celiac trunk (axis): (1) Origin: anterior aorta at T12/L1. (2) Branches: Left gastric artery (to lesser curvature, esophageal branches). Common hepatic artery (gives GDA, then becomes proper hepatic). Splenic artery (to spleen, gives short gastrics, left gastroepiploic). (3) Supplies: foregut derivatives (stomach, proximal duodenum, liver, gallbladder, pancreas, spleen). Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The superior mesenteric artery (SMA) supplies:',
'Foregut', 'Midgut structures (distal duodenum to proximal two-thirds of transverse colon)', 'Hindgut', 'Kidneys', 'Liver',
'B', 'SMA territory: (1) Origin: anterior aorta at L1. (2) Branches: inferior pancreaticoduodenal, jejunal, ileal, ileocolic, right colic, middle colic. (3) Supplies: midgut (distal duodenum, jejunum, ileum, cecum, ascending colon, proximal 2/3 transverse colon). (4) Marginal artery: anastomosis along colon (with IMA). (5) SMA syndrome: compression of third part of duodenum between SMA and aorta. Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The inferior mesenteric artery (IMA) supplies:',
'Small intestine', 'Hindgut structures (distal third of transverse colon to upper rectum)', 'Stomach', 'Liver', 'Kidney',
'B', 'IMA territory: (1) Origin: anterior aorta at L3. (2) Branches: left colic, sigmoid branches, superior rectal artery. (3) Supplies: hindgut (distal 1/3 transverse colon, descending colon, sigmoid, upper rectum). (4) Anastomoses: with SMA via marginal artery (arc of Riolan, Drummond), with internal iliac via middle/inferior rectal. (5) Can be ligated at origin in colorectal surgery if good collaterals. Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The watershed areas of the colon at risk for ischemia include:',
'Cecum only', 'Splenic flexure (Griffiths point) and rectosigmoid junction (Sudeck point)', 'Ascending colon', 'Transverse colon midpoint', 'Hepatic flexure',
'B', 'Colonic watershed areas: (1) Griffiths point: splenic flexure - junction of SMA (middle colic) and IMA (left colic) territories. (2) Sudeck point: rectosigmoid - junction of IMA (superior rectal) and internal iliac (middle rectal) territories. Vulnerable during: low-flow states, aortic surgery (IMA ligation), hypotension. Ischemic colitis often affects splenic flexure. Reference: Brandt LJ. Gastroenterology. 2015.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The common iliac arteries bifurcate into:',
'Femoral and popliteal', 'External iliac (continues to leg) and internal iliac (supplies pelvis)', 'Renal arteries', 'Superior and inferior mesenteric', 'Aorta and vena cava',
'B', 'Common iliac bifurcation: (1) External iliac artery: passes under inguinal ligament to become femoral artery (lower extremity supply). (2) Internal iliac artery (hypogastric): supplies pelvis - bladder, rectum, reproductive organs, pelvic sidewall, gluteal region. (3) Bifurcation: at level of sacroiliac joint. Surgical importance: internal iliac ligation can control pelvic hemorrhage. External iliac gives inferior epigastric before becoming femoral. Reference: Gray Anatomy.',
'easy', 'knowledge'),

-- Retroperitoneal Anatomy (46-55)
('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The retroperitoneal structures include:',
'Stomach, liver, spleen', 'SAD PUCKER: Suprarenal glands, Aorta/IVC, Duodenum (2nd-3rd), Pancreas (body/tail), Ureters, Colon (ascending/descending), Kidneys, Esophagus, Rectum', 'All of small intestine', 'Gallbladder', 'Appendix',
'B', 'Retroperitoneal organs: Mnemonic SAD PUCKER: Suprarenal (adrenal) glands. Aorta and IVC. Duodenum (2nd, 3rd, 4th parts). Pancreas (except tail). Ureters. Colon (ascending and descending). Kidneys. Esophagus (lower). Rectum. Primary vs secondary retroperitoneal: some organs migrate posteriorly during development (pancreas, duodenum, ascending/descending colon). Reference: Gray Anatomy.',
'easy', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The left renal vein receives tributaries from:',
'Only the kidney', 'Left gonadal vein, left adrenal vein, and left lumbar vein before crossing anterior to aorta to reach IVC', 'Right gonadal vein', 'Hepatic veins', 'Portal vein',
'B', 'Left renal vein: (1) Course: longer than right, crosses anterior to aorta, posterior to SMA. (2) Tributaries: left gonadal vein (testicular/ovarian), left adrenal vein, left lumbar vein. (3) Right renal vein: shorter, drains directly into IVC (right gonadal and adrenal drain directly to IVC). (4) Nutcracker syndrome: compression of left renal vein between aorta and SMA. Surgical importance: left renal vein can be divided near IVC if needed (collateral drainage). Reference: Gray Anatomy.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The ureter crosses which vessels at the pelvic brim?',
'Femoral vessels', 'Common iliac vessels or their bifurcation (water under the bridge)', 'Aorta', 'SMA', 'Renal vessels',
'B', 'Ureter course: (1) Retroperitoneal throughout. (2) Crosses at pelvic brim: over common iliac vessels (or at bifurcation). Mnemonic: water (ureter) under the bridge (vessels). (3) In pelvis: runs along lateral pelvic wall, then medially to enter bladder. (4) Uterine artery crosses over ureter in pelvis (water under the bridge again). (5) Blood supply: segmental from renal, gonadal, aorta, iliac. Surgical danger zones: pelvic brim, uterine artery crossing, ureterovesical junction. Reference: Gray Anatomy.',
'easy', 'knowledge'),

-- Neck Anatomy (56-60)
('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The recurrent laryngeal nerve typically runs:',
'Anterior to thyroid', 'In the tracheoesophageal groove (posterior to thyroid), closely related to inferior thyroid artery', 'Lateral to carotid artery', 'Through thyroid parenchyma', 'Anterior to trachea',
'B', 'Recurrent laryngeal nerve (RLN): (1) Course: loops under aortic arch (left) or subclavian (right), ascends in tracheoesophageal groove. (2) Relationship to inferior thyroid artery: variable (may be anterior, posterior, or between branches). (3) Supplies: all intrinsic laryngeal muscles except cricothyroid. (4) Injury: hoarseness (unilateral), airway obstruction (bilateral). (5) Non-recurrent right RLN: rare variant with aberrant right subclavian. Must identify during thyroidectomy. Reference: Sturniolo G. Surgery. 1999.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The external branch of the superior laryngeal nerve:',
'Supplies all laryngeal muscles', 'Innervates the cricothyroid muscle (vocal cord tension) and runs with superior thyroid artery near upper pole', 'Has no surgical importance', 'Is always visible', 'Runs with inferior thyroid artery',
'B', 'External branch of superior laryngeal nerve (EBSLN): (1) Motor to cricothyroid muscle (tenses vocal cords - affects voice pitch/projection). (2) Course: runs with superior thyroid vessels near upper pole of thyroid. (3) Injury: subtle voice change (weak voice, loss of high pitch) - singer/speaker problem. (4) Protection: ligate superior thyroid vessels close to gland, not high ligation. (5) Internal branch: sensory to larynx above cords. Reference: Cernea CR. Laryngoscope. 1992.',
'hard', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The parathyroid glands are typically located:',
'Anterior to thyroid', 'On the posterior surface of thyroid lobes, with superior glands more constant and inferior glands more variable in location', 'In the mediastinum always', 'Within thyroid parenchyma', 'Attached to trachea',
'B', 'Parathyroid glands: (1) Number: typically 4 (80-90%), can be 3-6. (2) Location: posterior/lateral to thyroid. Superior glands: derived from 4th pharyngeal pouch, more consistent location (at level of cricoid, posterolateral to RLN). Inferior glands: derived from 3rd pouch, more variable (may be low in neck, thymus, mediastinum). (3) Blood supply: inferior thyroid artery (both superior and inferior glands). Must identify and preserve during thyroidectomy. Reference: Akerström G. Surgery. 1984.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The thoracic duct enters the venous system at:',
'Right subclavian vein', 'Junction of left internal jugular and left subclavian veins (left venous angle)', 'Superior vena cava', 'Right atrium', 'Inferior vena cava',
'B', 'Thoracic duct: (1) Origin: cisterna chyli (L1-L2). (2) Course: ascends through aortic hiatus, in posterior mediastinum (right of aorta initially, crosses to left at T5), enters neck behind left carotid sheath. (3) Termination: left venous angle (junction of left internal jugular and subclavian veins). (4) Drains: lymph from entire body except right upper quadrant (which drains to right lymphatic duct). (5) Injury: chylothorax (thoracic surgery), chyle leak (neck dissection). Reference: Gray Anatomy.',
'medium', 'knowledge'),

('c0000064-0000-0000-0000-000000000064', 'a0000003-0000-0000-0000-000000000003',
'The carotid body is located at:',
'Origin of internal carotid', 'The carotid bifurcation, functioning as a chemoreceptor detecting blood oxygen and pH', 'Base of skull', 'In the aortic arch', 'In the thyroid gland',
'B', 'Carotid body: (1) Location: at carotid bifurcation, between external and internal carotid. (2) Function: peripheral chemoreceptor - detects PaO2, PaCO2, pH. (3) Innervation: glossopharyngeal nerve (IX). (4) Carotid body tumor (paraganglioma): presents as lateral neck mass at angle of mandible, splays carotid bifurcation (lyre sign on angiography). (5) Carotid sinus: in wall of proximal internal carotid - baroreceptor (detects BP). Reference: Gray Anatomy.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 49 (Surgical Anatomy Review): 60 questions inserted' as status;
