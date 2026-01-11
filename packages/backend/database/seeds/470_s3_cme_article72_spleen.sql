-- ============================================================================
-- SURGERY 3 CME ARTICLE 72: Splenic Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000138-0000-0000-0000-000000000138', 'a0000003-0000-0000-0000-000000000003', 'Splenic Surgery', 'Splenectomy indications and post-splenectomy care')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000372-0000-0000-0000-000000000072',
    'c0000138-0000-0000-0000-000000000138',
    'a0000003-0000-0000-0000-000000000003',
    'Splenectomy: Indications, Technique, and Post-Splenectomy Care',
    'Managing the Asplenic Patient',
    'This article covers splenic anatomy and function, indications for splenectomy (trauma, ITP, hereditary spherocytosis, hypersplenism), laparoscopic vs open approach, overwhelming post-splenectomy infection (OPSI), and vaccination protocols.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000372-0001-0000-0000-000000000001', 'd0000372-0000-0000-0000-000000000072', 1,
'The most common indication for elective splenectomy is:',
'Splenic trauma', 'Immune thrombocytopenic purpura (ITP) refractory to medical therapy', 'Splenic cyst', 'Wandering spleen', NULL,
'B', 'Elective splenectomy indications: ITP (immune thrombocytopenic purpura) is MOST COMMON elective indication - performed when refractory to steroids, IVIG, rituximab. Other elective indications: hereditary spherocytosis (curative), hypersplenism (secondary to portal hypertension, lymphoma), splenic tumors/cysts, hemolytic anemias (sickle cell, thalassemia - for sequestration), staging (Hodgkin lymphoma - historical). EMERGENCY splenectomy: trauma (most common overall indication), iatrogenic injury, spontaneous rupture, splenic abscess.', 'easy'),

('e0000372-0002-0000-0000-000000000002', 'd0000372-0000-0000-0000-000000000072', 2,
'Overwhelming post-splenectomy infection (OPSI):',
'Is not a significant concern', 'Is a life-threatening fulminant sepsis, most commonly caused by encapsulated organisms like Streptococcus pneumoniae', 'Only occurs in children', 'Is prevented by antibiotics alone', NULL,
'B', 'OPSI (overwhelming post-splenectomy infection): life-threatening, rapidly progressive sepsis in asplenic/hyposplenic patients. Mortality: 50-70% if not treated promptly. Pathogens: ENCAPSULATED BACTERIA - Streptococcus pneumoniae (most common, 50-90%), Haemophilus influenzae, Neisseria meningitidis. Also: Capnocytophaga (dog bites), malaria (severe). Risk: lifelong, highest in first 2 years post-splenectomy, higher in children. Presentation: minor infection progressing to fulminant sepsis within hours. Prevention: vaccination, patient education, early antibiotics for febrile illness.', 'easy'),

('e0000372-0003-0000-0000-000000000003', 'd0000372-0000-0000-0000-000000000072', 3,
'Vaccinations for asplenic patients should include:',
'Influenza only', 'Pneumococcal, Haemophilus influenzae type b, and meningococcal vaccines, ideally given 2 weeks before elective splenectomy', 'No vaccinations are needed', 'Only childhood vaccines', NULL,
'B', 'Asplenic vaccination protocol: target ENCAPSULATED organisms. Vaccines: (1) PNEUMOCOCCAL: PCV13 (conjugate) + PPSV23 (polysaccharide) - timing varies by protocol; (2) HAEMOPHILUS INFLUENZAE type b (Hib); (3) MENINGOCOCCAL: MenACWY + MenB. Timing: ideally 2 weeks BEFORE elective splenectomy (better immune response with spleen present). Emergency splenectomy: vaccinate 2 weeks POST-op (avoid immediate post-op immunosuppressed period). Also: annual influenza. Some guidelines recommend prophylactic antibiotics (penicillin/amoxicillin) especially in children, first 2 years post-splenectomy.', 'easy'),

('e0000372-0004-0000-0000-000000000004', 'd0000372-0000-0000-0000-000000000072', 4,
'During splenectomy, accessory spleens should be:',
'Left in place always', 'Searched for and removed, especially when splenectomy is performed for hematologic conditions like ITP', 'Only removed if symptomatic', 'Present in all patients', NULL,
'B', 'Accessory spleens: present in 10-30% of population. Location: most common at splenic hilum, also gastrocolic ligament, greater omentum, mesentery, pelvis. Importance: if left behind in HEMATOLOGIC splenectomy (ITP, hereditary spherocytosis), can hypertrophy and disease recurs. Must search systematically and remove all. Less critical in trauma/malignancy. Laparoscopic surgery: may be harder to identify. Preoperative imaging may help. Recurrent ITP post-splenectomy: consider missed/hypertrophied accessory spleen (nuclear medicine scan).', 'easy'),

('e0000372-0005-0000-0000-000000000005', 'd0000372-0000-0000-0000-000000000072', 5,
'The splenic artery is a branch of:',
'Superior mesenteric artery', 'Celiac trunk', 'Inferior mesenteric artery', 'Aorta directly', NULL,
'B', 'Splenic artery: branch of CELIAC TRUNK (along with common hepatic and left gastric arteries). Largest branch of celiac trunk. Tortuous course along superior border of pancreas. Gives off: short gastric arteries, left gastroepiploic artery, pancreatic branches. Terminates in splenic hilum as multiple branches. Early ligation of splenic artery during splenectomy: reduces blood loss, allows spleen to "auto-transfuse" blood back to circulation. Venous drainage: splenic vein joins SMV to form portal vein.', 'easy'),

('e0000372-0006-0000-0000-000000000006', 'd0000372-0000-0000-0000-000000000072', 6,
'Laparoscopic splenectomy compared to open splenectomy:',
'Has longer hospital stay', 'Has shorter hospital stay, less pain, and is preferred for most elective cases with normal-sized or moderately enlarged spleens', 'Is contraindicated in ITP', 'Requires larger incisions', NULL,
'B', 'Laparoscopic splenectomy: preferred approach for most elective indications. Advantages: less pain, shorter hospital stay, faster recovery, better cosmesis, fewer wound complications. Indications: ITP, hereditary spherocytosis, splenic cysts, normal to moderately enlarged spleen. Relative contraindications: massive splenomegaly (though hand-assisted technique expands limits), portal hypertension, trauma (debatable - selected cases). Conversion to open: 5-10%, more common with large spleens, bleeding. Position: right lateral decubitus or supine.', 'easy'),

('e0000372-0007-0000-0000-000000000007', 'd0000372-0000-0000-0000-000000000072', 7,
'Hereditary spherocytosis is treated with splenectomy because:',
'The spleen produces abnormal red cells', 'The spleen sequesters and destroys spherocytes, and splenectomy reduces hemolysis', 'It cures the genetic defect', 'Splenectomy increases spherocyte production', NULL,
'B', 'Hereditary spherocytosis: autosomal dominant RBC membrane defect (spectrin, ankyrin deficiency). Spherocytes less deformable, trapped and destroyed in splenic red pulp (extravascular hemolysis). Splenectomy: does NOT cure genetic defect (spherocytes persist) but ELIMINATES MAJOR SITE OF DESTRUCTION - dramatically reduces hemolysis, normalizes hemoglobin, eliminates transfusion dependence. Indicated for moderate-severe disease. Timing: usually after age 6 (infection risk higher in young children). Gallbladder disease common - cholecystectomy if gallstones.', 'easy'),

('e0000372-0008-0000-0000-000000000008', 'd0000372-0000-0000-0000-000000000072', 8,
'After splenectomy, the peripheral blood smear characteristically shows:',
'Spherocytes only', 'Howell-Jolly bodies (nuclear remnants in RBCs)', 'Schistocytes', 'Normal appearance', NULL,
'B', 'Post-splenectomy blood smear: HOWELL-JOLLY BODIES (nuclear remnants in RBCs, normally removed by spleen). Also: target cells, acanthocytes, siderocytes (iron granules), Pappenheimer bodies. These findings indicate functional asplenia. Thrombocytosis: common post-splenectomy (spleen normally sequesters 1/3 platelets). Usually resolves, rarely causes thrombosis. If persistent severe thrombocytosis, consider antiplatelet therapy. Leukocytosis also common initially. These smear changes also seen in functional asplenia (sickle cell autosplenectomy).', 'easy'),

('e0000372-0009-0000-0000-000000000009', 'd0000372-0000-0000-0000-000000000072', 9,
'Splenic artery aneurysm:',
'Is the rarest visceral artery aneurysm', 'Is the most common visceral artery aneurysm with increased rupture risk during pregnancy', 'Never requires treatment', 'Only occurs in men', NULL,
'B', 'Splenic artery aneurysm: MOST COMMON visceral artery aneurysm (60%). Risk factors: female gender (4:1), pregnancy/multiparity, portal hypertension, atherosclerosis, fibromuscular dysplasia. Usually asymptomatic. RUPTURE RISK: increased during pregnancy (maternal mortality 75%, fetal mortality 95% if ruptures). Indications for treatment: symptomatic, >2 cm diameter, enlarging, women of childbearing age, portal hypertension. Treatment: open repair, laparoscopic, endovascular coiling/stenting. Most detected incidentally on imaging.', 'medium'),

('e0000372-0010-0000-0000-000000000010', 'd0000372-0000-0000-0000-000000000072', 10,
'Splenic salvage procedures in trauma aim to:',
'Remove the entire spleen always', 'Preserve splenic function through observation, splenorrhaphy, partial splenectomy, or angioembolization when hemodynamically stable', 'Are only for children', 'Have no benefit over total splenectomy', NULL,
'B', 'Splenic salvage in trauma: preserve splenic immune function, avoid OPSI. Approaches: (1) NON-OPERATIVE MANAGEMENT: hemodynamically stable patients, CT grading, ICU monitoring (success >90% in appropriate patients). (2) ANGIOEMBOLIZATION: for active bleeding or high-grade injuries, improves NOM success. (3) SPLENORRHAPHY: suture repair, topical hemostatics. (4) PARTIAL SPLENECTOMY: resect damaged portion. Indications for splenectomy: hemodynamic instability despite resuscitation, transfusion requirement, associated injuries requiring laparotomy. Children: NOM even more successful, lower threshold to preserve spleen.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 72 (Splenic Surgery) with 10 self-assessment questions inserted' as status;
