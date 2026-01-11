-- ============================================================================
-- SURGERY 3 CME ARTICLE 95: Gastrointestinal Bleeding
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000161-0000-0000-0000-000000000161', 'a0000003-0000-0000-0000-000000000003', 'Gastrointestinal Bleeding', 'Evaluation and management of upper and lower GI bleeding')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000395-0000-0000-0000-000000000095',
    'c0000161-0000-0000-0000-000000000161',
    'a0000003-0000-0000-0000-000000000003',
    'Gastrointestinal Bleeding: Diagnosis and Management',
    'Upper and Lower GI Hemorrhage',
    'This article covers hematemesis and melena, upper GI bleeding causes and management, variceal hemorrhage, lower GI bleeding evaluation, angiography and embolization, surgical indications, and obscure GI bleeding workup.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000395-0001-0000-0000-000000000001', 'd0000395-0000-0000-0000-000000000095', 1,
'Upper GI bleeding is defined as bleeding from:',
'Below the ileocecal valve', 'Proximal to the ligament of Treitz (esophagus, stomach, duodenum), presenting with hematemesis, coffee-ground emesis, or melena', 'The colon only', 'The small bowel only',
'B', 'UPPER GI BLEEDING (UGIB): bleeding source PROXIMAL to LIGAMENT OF TREITZ. Sources: esophagus (varices, Mallory-Weiss tear, esophagitis), stomach (peptic ulcer, gastritis, cancer), duodenum (ulcer). PRESENTATION: HEMATEMESIS (red blood vomiting), COFFEE-GROUND emesis (altered blood), MELENA (black tarry stool - blood degraded in GI tract). Hematochezia (bright red blood per rectum) can occur with massive UGIB. LOWER GI BLEEDING: distal to ligament of Treitz. Most common cause of UGIB: peptic ulcer disease. Risk stratification: Glasgow-Blatchford, Rockall scores.', 'easy'),

('e0000395-0002-0000-0000-000000000002', 'd0000395-0000-0000-0000-000000000095', 2,
'Initial management of upper GI bleeding includes:',
'Immediate endoscopy without resuscitation', 'Airway protection, IV access, fluid resuscitation, blood transfusion targeting hemoglobin 7-8 g/dL, PPI infusion, and early endoscopy within 24 hours', 'Wait for spontaneous cessation', 'Barium swallow study',
'B', 'UGIB INITIAL MANAGEMENT: (1) RESUSCITATION - 2 large-bore IVs, crystalloids, TYPE AND CROSSMATCH; (2) AIRWAY protection (intubation if massive bleeding, altered mental status); (3) TRANSFUSION - restrictive strategy (Hb target 7-8 g/dL) except active bleeding, CAD; (4) IV PPI (high-dose infusion reduces rebleeding, not mortality); (5) ENDOSCOPY within 24 hours (earlier if hemodynamically unstable after resuscitation); (6) Hold anticoagulants, reverse if necessary; (7) Correct coagulopathy. NG tube controversial (does not improve outcomes). Prokinetics before endoscopy may improve visualization.', 'easy'),

('e0000395-0003-0000-0000-000000000003', 'd0000395-0000-0000-0000-000000000095', 3,
'Endoscopic findings of high-risk stigmata in peptic ulcer bleeding include:',
'Clean-based ulcer', 'Active spurting, oozing, visible vessel, or adherent clot, which require endoscopic therapy', 'Flat pigmented spot only', 'Healed ulcer',
'B', 'FORREST CLASSIFICATION (peptic ulcer stigmata): HIGH-RISK (require endoscopic Rx): Ia SPURTING (90% rebleed if untreated), Ib OOZING (50%), IIa VISIBLE VESSEL (50%), IIb ADHERENT CLOT (30%). LOW-RISK (may not need endoscopic Rx): IIc FLAT PIGMENTED SPOT (10%), III CLEAN BASE (5%). ENDOSCOPIC THERAPY: injection (epinephrine), thermal (heater probe, cautery), mechanical (clips). Combination therapy superior. Dual therapy (injection + thermal or mechanical) recommended for high-risk lesions. Second-look endoscopy not routinely recommended.', 'medium'),

('e0000395-0004-0000-0000-000000000004', 'd0000395-0000-0000-0000-000000000095', 4,
'Variceal hemorrhage management includes:',
'No specific treatment different from other UGIB', 'Antibiotic prophylaxis, vasoactive drugs (octreotide/terlipressin), urgent endoscopy with band ligation, and TIPS for refractory bleeding', 'Immediate surgery', 'Observation only',
'B', 'VARICEAL HEMORRHAGE (esophageal/gastric varices from portal hypertension): HIGH MORTALITY. MANAGEMENT: (1) RESUSCITATION - conservative transfusion (over-transfusion increases portal pressure); (2) ANTIBIOTICS (ceftriaxone or norfloxacin - reduces mortality, infection, rebleeding); (3) VASOACTIVE DRUGS - octreotide or terlipressin (reduce portal pressure, start before endoscopy); (4) ENDOSCOPY - BAND LIGATION for esophageal varices (or sclerotherapy), cyanoacrylate for gastric varices; (5) TIPS (transjugular intrahepatic portosystemic shunt) for refractory/recurrent; (6) Balloon tamponade (Sengstaken-Blakemore) as bridge. Secondary prophylaxis: beta-blockers + band ligation.', 'medium'),

('e0000395-0005-0000-0000-000000000005', 'd0000395-0000-0000-0000-000000000095', 5,
'The most common cause of lower GI bleeding in adults is:',
'Small bowel tumors', 'Diverticulosis, followed by angiodysplasia, colitis, hemorrhoids, and neoplasms', 'Peptic ulcer', 'Esophageal varices',
'B', 'LOWER GI BLEEDING causes: DIVERTICULOSIS (most common, 30-40%, usually painless, right-sided bleeds more than left), ANGIODYSPLASIA (arteriovenous malformations, elderly, right colon, associated with aortic stenosis), COLITIS (ischemic, infectious, IBD), HEMORRHOIDS (common but rarely massive), NEOPLASMS, post-polypectomy bleeding. PRESENTATION: hematochezia (bright red blood per rectum). WORKUP: colonoscopy (after prep, or urgent if hemodynamically significant), CT angiography, tagged RBC scan. Most lower GI bleeds stop spontaneously (80-85%).', 'easy'),

('e0000395-0006-0000-0000-000000000006', 'd0000395-0000-0000-0000-000000000095', 6,
'CT angiography in GI bleeding:',
'Is never useful', 'Can detect active bleeding at rates greater than 0.3-0.5 mL/min, helps localize the source, and guides intervention', 'Requires bowel preparation', 'Is contraindicated in bleeding',
'B', 'CT ANGIOGRAPHY in GI bleeding: detects active extravasation at rates >0.3-0.5 mL/min. ADVANTAGES: rapid, widely available, localizes bleeding to specific segment, evaluates for pathology (tumors, diverticula), helps plan intervention (embolization or surgery). PROTOCOL: multiphase (arterial and delayed). Findings: active contrast extravasation. If positive, can proceed to conventional ANGIOGRAPHY for embolization. If negative, may still have intermittent bleeding - other tests (colonoscopy, capsule endoscopy) may be needed. Tagged RBC scan more sensitive for slower bleeds (0.1 mL/min) but less precise localization.', 'medium'),

('e0000395-0007-0000-0000-000000000007', 'd0000395-0000-0000-0000-000000000095', 7,
'Angiographic embolization for GI bleeding:',
'Has no role in GI bleeding', 'Is highly effective for arterial bleeding, can be used for both upper and lower GI sources, with risks including bowel ischemia', 'Always causes bowel infarction', 'Is only diagnostic',
'B', 'ANGIOGRAPHIC EMBOLIZATION: interventional radiology treatment for GI bleeding. TECHNIQUE: catheter to bleeding vessel, embolize with coils, gelfoam, or particles. EFFECTIVENESS: >80-90% success for active bleeding. ADVANTAGES: avoids surgery in high-risk patients, precise targeting. RISKS: BOWEL ISCHEMIA (especially lower GI - colon watershed areas), access site complications, contrast nephropathy, rebleeding. LOWER GI: higher ischemia risk due to poor collaterals (superselective embolization reduces risk). UPPER GI: rich collaterals, lower ischemia risk. Rebleeding: may need repeat embolization or surgery.', 'medium'),

('e0000395-0008-0000-0000-000000000008', 'd0000395-0000-0000-0000-000000000095', 8,
'Surgical indications for GI bleeding include:',
'First episode of any bleeding', 'Hemodynamic instability despite resuscitation, failure of endoscopic or angiographic therapy, rebleeding after endoscopic treatment, and massive transfusion requirements', 'All peptic ulcers', 'Only for lower GI bleeding',
'B', 'SURGICAL INDICATIONS for GI bleeding: (1) HEMODYNAMIC INSTABILITY despite resuscitation (massive hemorrhage); (2) FAILURE of endoscopic therapy (x2-3 attempts); (3) FAILURE of angiographic embolization; (4) REBLEEDING after initial endoscopic hemostasis; (5) MASSIVE TRANSFUSION requirements (>6-10 units); (6) Specific lesions (giant ulcer >2cm, posterior duodenal ulcer eroding GDA); (7) Shock on presentation with high-risk stigmata. SURGERY: UGIB - oversew bleeding ulcer (anterior) or ligation of GDA (posterior duodenal), possible ulcer excision; LGIB - segmental colectomy (must localize source).', 'medium'),

('e0000395-0009-0000-0000-000000000009', 'd0000395-0000-0000-0000-000000000095', 9,
'Obscure GI bleeding refers to:',
'Any visible blood in stool', 'Bleeding of unknown origin despite upper endoscopy and colonoscopy, often originating from the small bowel, evaluated with capsule endoscopy or deep enteroscopy', 'Only occult blood', 'Bleeding that always requires surgery',
'B', 'OBSCURE GI BLEEDING: persistent or recurrent bleeding after negative upper endoscopy and colonoscopy. SUBTYPES: obscure-overt (visible blood) or obscure-occult (iron deficiency anemia, positive FOBT). SMALL BOWEL: accounts for 5% of GI bleeds, common source of obscure bleeding. CAUSES: angiodysplasia (most common), NSAID ulcers, tumors, Crohn disease, Meckel diverticulum, Dieulafoy lesion. EVALUATION: repeat upper/lower endoscopy (20% miss rate), CAPSULE ENDOSCOPY (first-line for small bowel), DEEP ENTEROSCOPY (balloon-assisted - diagnostic and therapeutic), CT/MR enterography, tagged RBC scan, angiography.', 'medium'),

('e0000395-0010-0000-0000-000000000010', 'd0000395-0000-0000-0000-000000000095', 10,
'Meckel diverticulum as a cause of GI bleeding:',
'Only causes bleeding in adults', 'Contains ectopic gastric mucosa in half of cases, causes painless lower GI bleeding typically in children, and can be diagnosed with technetium-99m pertechnetate scan', 'Is located in the jejunum', 'Never causes significant bleeding',
'B', 'MECKEL DIVERTICULUM: most common congenital GI anomaly (2% of population). "Rule of 2s": 2% prevalence, 2 feet from ileocecal valve, 2 inches long, 2% symptomatic, 2 types of ectopic tissue (gastric, pancreatic), presents by age 2 (most commonly). BLEEDING: PAINLESS lower GI bleeding, typically in CHILDREN <2 years. Mechanism: ectopic GASTRIC MUCOSA (in ~50%) secretes acid, ulcerates adjacent ileum. DIAGNOSIS: Technetium-99m PERTECHNETATE SCAN (Meckel scan) - takes up gastric mucosa. TREATMENT: surgical resection (diverticulectomy or segmental resection). Adults may present with obstruction or diverticulitis.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 95 (Gastrointestinal Bleeding) with 10 self-assessment questions inserted' as status;
