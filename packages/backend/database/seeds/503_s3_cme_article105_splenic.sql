-- ============================================================================
-- SURGERY 3 CME ARTICLE 105: Splenic Disorders and Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000171-0000-0000-0000-000000000171', 'a0000003-0000-0000-0000-000000000003', 'Splenic Disorders and Surgery', 'Surgical management of splenic pathology and trauma')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000405-0000-0000-0000-000000000105',
    'c0000171-0000-0000-0000-000000000171',
    'a0000003-0000-0000-0000-000000000003',
    'Splenic Surgery: Indications, Techniques, and Asplenia Management',
    'Comprehensive Splenic Surgical Care',
    'This article covers splenic anatomy and function, indications for splenectomy, laparoscopic splenectomy technique, management of splenic trauma, overwhelming post-splenectomy infection (OPSI), and vaccination protocols.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000405-0001-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 1,
'The most common indication for elective splenectomy is:',
'Splenic cyst', 'Immune thrombocytopenic purpura (ITP) refractory to medical therapy', 'Splenomegaly alone', 'Splenic abscess',
'B', 'INDICATIONS FOR ELECTIVE SPLENECTOMY: most common is IMMUNE THROMBOCYTOPENIC PURPURA (ITP) - autoimmune platelet destruction. Splenectomy when refractory to steroids/IVIG, removes site of platelet destruction and antibody production. 60-80% response. Other indications: HEREDITARY SPHEROCYTOSIS (removes site of RBC destruction), HEMOLYTIC ANEMIAS, hypersplenism (cytopenias from sequestration), splenic artery aneurysm, cysts, tumors (lymphoma staging - historical), Felty syndrome. HEMATOLOGIC MALIGNANCIES: splenectomy for massive symptomatic splenomegaly or hypersplenism. Always consider non-operative options first when available.', 'easy'),

('e0000405-0002-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 2,
'Overwhelming post-splenectomy infection (OPSI):',
'Is not a significant concern', 'Is a life-threatening fulminant sepsis caused by encapsulated organisms, occurring in asplenic patients with mortality up to 50% if not rapidly treated', 'Only occurs immediately after surgery', 'Is prevented by surgery alone',
'B', 'OVERWHELMING POST-SPLENECTOMY INFECTION (OPSI): life-threatening emergency in asplenic/hyposplenic patients. ORGANISMS: ENCAPSULATED bacteria - Streptococcus pneumoniae (most common, 50-90%), Haemophilus influenzae, Neisseria meningitidis. PATHOPHYSIOLOGY: spleen filters encapsulated organisms; without spleen, fulminant bacteremia develops. PRESENTATION: flu-like prodrome then rapid deterioration - septic shock, DIC, Waterhouse-Friderichsen syndrome, death within hours. MORTALITY: 50-70% despite treatment. RISK: lifelong (highest in first 2 years), children > adults. PREVENTION: VACCINATION (pre-splenectomy preferred), patient education, consider prophylactic antibiotics. Treatment: emergent IV antibiotics.', 'easy'),

('e0000405-0003-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 3,
'Vaccinations required for asplenic patients include:',
'No vaccinations needed', 'Pneumococcal, meningococcal, and Haemophilus influenzae type b vaccines, ideally given 2 weeks before elective splenectomy', 'Only influenza vaccine', 'Only tetanus vaccine',
'B', 'ASPLENIA VACCINATION PROTOCOL: protects against encapsulated organisms. REQUIRED: (1) PNEUMOCOCCAL: PCV13 then PPSV23 (or vice versa, 8 weeks apart), booster every 5 years. (2) MENINGOCOCCAL: conjugate vaccine (MenACWY), MenB series. (3) HAEMOPHILUS INFLUENZAE type b (Hib). (4) Annual INFLUENZA (secondary infection prevention). TIMING: ideally 2 WEEKS BEFORE elective splenectomy (better response with intact spleen). If emergency splenectomy: vaccinate 2 weeks AFTER surgery (or at discharge if follow-up uncertain). Patient education: carry card identifying asplenia, seek immediate care for fever, consider prophylactic antibiotics (especially children, first 2 years).', 'easy'),

('e0000405-0004-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 4,
'Non-operative management of splenic trauma:',
'Is never appropriate', 'Is successful in majority of hemodynamically stable blunt splenic injuries and involves observation, serial exams, hemoglobin monitoring, and angioembolization when indicated', 'Requires all patients to have surgery', 'Is only for minor injuries',
'B', 'NON-OPERATIVE MANAGEMENT (NOM) of splenic trauma: current standard for HEMODYNAMICALLY STABLE patients. SUCCESS: 80-95% for appropriate candidates. REQUIREMENTS: hemodynamic STABILITY, no other indication for laparotomy, ability to monitor closely (ICU or step-down), available OR if deterioration. PROTOCOL: bed rest, serial abdominal exams, serial hemoglobin, NPO initially, avoid anticoagulation. ANGIOEMBOLIZATION: adjunct to NOM for higher-grade injuries (III-V), active extravasation (blush), or pseudoaneurysm - improves NOM success. FAILURE criteria: hemodynamic instability, transfusion requirement, peritonitis. Grade I-II: >95% NOM success. Grade IV-V: 60-80% with angioembolization.', 'medium'),

('e0000405-0005-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 5,
'Laparoscopic splenectomy is contraindicated in:',
'Normal-sized spleens', 'Hemodynamic instability and massive splenomegaly (relative), though experienced surgeons can manage large spleens with hand-assisted techniques', 'All ITP cases', 'All hematologic conditions',
'B', 'LAPAROSCOPIC SPLENECTOMY CONTRAINDICATIONS: ABSOLUTE: hemodynamic INSTABILITY, diffuse peritonitis. RELATIVE: MASSIVE splenomegaly (>20-25cm, though hand-assisted technique extends limits), portal hypertension with extensive varices, uncorrected coagulopathy. ADVANTAGES of laparoscopic: less pain, shorter stay, fewer wound complications, faster recovery, better visualization of accessory spleens. TECHNIQUE: lateral decubitus position, divide splenic ligaments, control splenic vessels (hilar stapling or vessel sealing), specimen bag extraction. CONVERSION: 5-10% (bleeding, adhesions, size). Hand-assisted laparoscopic splenectomy (HALS): extends application to larger spleens.', 'medium'),

('e0000405-0006-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 6,
'Accessory spleens are important to identify because:',
'They have no clinical significance', 'They can maintain splenic function after splenectomy, leading to recurrence of hematologic disease if not removed', 'They are always symptomatic', 'They require separate surgery',
'B', 'ACCESSORY SPLEENS: ectopic splenic tissue (embryologic remnants). INCIDENCE: 10-30% of population. LOCATIONS: splenic hilum (most common), gastrosplenic ligament, greater omentum, pancreatic tail, mesentery, pelvis. CLINICAL SIGNIFICANCE: in HEMATOLOGIC conditions (ITP, hemolytic anemia), accessory spleens can maintain splenic function after splenectomy, causing RECURRENCE of disease. MANAGEMENT: thorough search during splenectomy - check common locations. Preoperative nuclear medicine scan (Tc-99m sulfur colloid or heat-damaged RBC) can identify. If missed and disease recurs, reoperation for accessory splenectomy may be needed. Report finding and search during operative note.', 'medium'),

('e0000405-0007-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 7,
'The AAST grading scale for splenic injury:',
'Is not used in clinical practice', 'Ranges from Grade I (subcapsular hematoma, minor laceration) to Grade V (shattered spleen, hilar vascular injury) and guides management decisions', 'Only has two grades', 'Is based on symptoms only',
'B', 'AAST SPLENIC INJURY SCALE: GRADE I: subcapsular hematoma <10% surface, capsular laceration <1cm deep. GRADE II: subcapsular hematoma 10-50%, intraparenchymal <5cm, laceration 1-3cm deep. GRADE III: subcapsular hematoma >50% or expanding, intraparenchymal >5cm, laceration >3cm deep. GRADE IV: laceration involving segmental or hilar vessels with >25% devascularization. GRADE V: shattered spleen, hilar vascular injury with devascularization. MANAGEMENT correlation: lower grades (I-III): high NOM success. Higher grades (IV-V): may require angioembolization or surgery, but NOM still possible if stable. Grade alone does not determine management - hemodynamic status is key.', 'medium'),

('e0000405-0008-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 8,
'Splenorrhaphy (splenic salvage) during trauma surgery:',
'Is always preferred over splenectomy', 'May be attempted for limited injuries when feasible, using techniques like topical hemostatics, argon beam coagulation, mesh wrapping, or partial splenectomy', 'Is never performed', 'Increases mortality',
'B', 'SPLENORRHAPHY (Splenic Salvage): repair of splenic injury to preserve splenic function. TECHNIQUES: (1) topical hemostatics (fibrin glue, thrombin), (2) electrocautery or argon beam coagulation, (3) MESH WRAPPING (absorbable mesh around spleen), (4) suture repair, (5) PARTIAL SPLENECTOMY (remove injured portion). INDICATIONS: limited injury, stable patient, feasible repair. ADVANTAGES: preserves splenic immune function, avoids OPSI risk. LIMITATIONS: not always possible (extensive injury, bleeding, unstable patient, coagulopathy). In damage control setting, splenectomy is often faster and safer. Partial splenic function may persist with even small remnant or autotransplantation (implant splenic tissue into omentum - uncertain efficacy).', 'medium'),

('e0000405-0009-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 9,
'Delayed splenic rupture:',
'Does not occur', 'Can occur days to weeks after initial injury, presenting with sudden abdominal pain and hemodynamic instability, and should be suspected in patients with known splenic injury', 'Only occurs with penetrating trauma', 'Is always prevented by observation',
'B', 'DELAYED SPLENIC RUPTURE: splenic hemorrhage occurring after period of stability. TIMING: classically 48 hours to 2 weeks after injury (most within 2 weeks). MECHANISM: subcapsular hematoma expansion and rupture, rebleeding from contained injury, pseudoaneurysm rupture. PRESENTATION: patient with known splenic injury (often being observed or discharged) develops sudden abdominal PAIN, signs of hemorrhage, hemodynamic instability. MANAGEMENT: resuscitation, urgent CT if stable, often requires surgery or angioembolization. PREVENTION: appropriate observation period, activity restrictions (usually 6-8 weeks for grades III-V), repeat imaging in some cases.', 'medium'),

('e0000405-0010-0000-0000-000000000105', 'd0000405-0000-0000-0000-000000000105', 10,
'Splenic artery aneurysm:',
'Is always symptomatic', 'Is the most common visceral artery aneurysm, with rupture risk increased during pregnancy, and is treated when symptomatic, larger than 2cm, or in women of childbearing age', 'Never requires treatment', 'Is only found in men',
'B', 'SPLENIC ARTERY ANEURYSM: most common VISCERAL ARTERY aneurysm. ASSOCIATIONS: multiparity, portal hypertension, fibromuscular dysplasia, pancreatitis. PRESENTATION: usually ASYMPTOMATIC (incidental finding), can present with rupture (abdominal pain, shock). RUPTURE RISK: 2-10%, but significantly increased in PREGNANCY (25% mortality for mother and fetus). TREATMENT INDICATIONS: symptomatic, RUPTURE, >2CM diameter, PREGNANCY or childbearing potential, rapid expansion. OPTIONS: endovascular (coil embolization, stent-graft - preferred), surgical (aneurysm excision, ligation with or without splenectomy depending on location). Observation for asymptomatic small aneurysms in non-pregnant.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 105 (Splenic Disorders and Surgery) with 10 self-assessment questions inserted' as status;
