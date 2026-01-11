-- ============================================================================
-- SURGERY 3 CME ARTICLE 34: Spleen and Lymphatic System
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000100-0000-0000-0000-000000000100', 'a0000003-0000-0000-0000-000000000003', 'Spleen and Lymphatic System', 'Splenic surgery and lymph node disorders')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000334-0000-0000-0000-000000000034',
    'c0000100-0000-0000-0000-000000000100',
    'a0000003-0000-0000-0000-000000000003',
    'Spleen and Lymphatic System Surgery',
    'Splenectomy, OPSI Prevention, and Lymphadenopathy',
    'This article covers splenic anatomy and function, indications for splenectomy, operative approaches, management of splenic trauma, overwhelming post-splenectomy infection prevention, and surgical approach to lymphadenopathy including lymph node biopsy techniques.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000334-0001-0000-0000-000000000001', 'd0000334-0000-0000-0000-000000000034', 1,
'The most common indication for elective splenectomy is:',
'Trauma', 'Immune thrombocytopenic purpura (ITP)', 'Lymphoma staging', 'Abscess', NULL,
'B', 'Elective splenectomy indications: (1) ITP - most common elective indication, after failed medical therapy; (2) Hereditary spherocytosis; (3) Hemolytic anemias; (4) Hypersplenism; (5) Splenic cysts/tumors; (6) Part of other procedures (distal pancreatectomy, gastric cancer). Trauma is most common indication for emergency splenectomy (though splenic preservation preferred when possible). Staging laparotomy for Hodgkin lymphoma largely historical. Response rate for ITP splenectomy: 70-80%.', 'easy'),

('e0000334-0002-0000-0000-000000000002', 'd0000334-0000-0000-0000-000000000034', 2,
'Overwhelming post-splenectomy infection (OPSI) is caused primarily by:',
'Viral infections', 'Encapsulated bacteria: Streptococcus pneumoniae, Haemophilus influenzae, Neisseria meningitidis', 'Fungal organisms', 'Mycobacteria', NULL,
'B', 'OPSI: life-threatening sepsis in asplenic patients, mortality 50-70%. Causative organisms: Streptococcus pneumoniae (50-90%), Haemophilus influenzae type b, Neisseria meningitidis - all encapsulated bacteria normally cleared by splenic macrophages. Risk highest in first 2 years post-splenectomy but lifelong. Prevention: (1) Vaccinations (pneumococcal, H. flu, meningococcal) ideally 2 weeks pre-op or 2 weeks post-op; (2) Patient education; (3) Some advocate prophylactic antibiotics (especially children); (4) Medical alert bracelet.', 'easy'),

('e0000334-0003-0000-0000-000000000003', 'd0000334-0000-0000-0000-000000000034', 3,
'Splenic artery ligation during laparoscopic splenectomy should be done:',
'After mobilization of the spleen', 'Early in the procedure to reduce spleen size and blood loss', 'Never during laparoscopy', 'Only for trauma', NULL,
'B', 'Early splenic artery ligation (at superior border of pancreas): reduces splenic engorgement, decreases operative blood loss, shrinks spleen (facilitates manipulation), especially important in massive splenomegaly. Technique: enter lesser sac, identify artery along superior pancreas, ligate (stapler, clips, vessel sealing device). Short gastric vessels then divided, splenic attachments mobilized, hilar vessels finally divided. Spleen removed in bag with morcellation for benign disease. Avoids capsular tears during handling.', 'medium'),

('e0000334-0004-0000-0000-000000000004', 'd0000334-0000-0000-0000-000000000034', 4,
'In splenic trauma, the American Association for the Surgery of Trauma (AAST) grading is based on:',
'Patient age', 'CT findings of hematoma size, laceration depth, and vascular injury', 'Mechanism of injury', 'Blood pressure only', NULL,
'B', 'AAST Spleen Injury Scale: Grade I - subcapsular hematoma <10%, capsular tear <1cm deep; Grade II - hematoma 10-50%, laceration 1-3cm; Grade III - hematoma >50% or expanding, laceration >3cm or involving trabecular vessels; Grade IV - laceration involving hilar vessels with devascularization >25%; Grade V - shattered spleen or hilar vascular injury with complete devascularization. Guides management: Grades I-III usually nonoperative in stable patients; IV-V may need intervention (surgery or angioembolization).', 'medium'),

('e0000334-0005-0000-0000-000000000005', 'd0000334-0000-0000-0000-000000000034', 5,
'Nonoperative management of splenic injuries requires:',
'Discharge from ED', 'Hemodynamic stability, no other indications for laparotomy, and ability to monitor closely', 'CT scan showing Grade V injury', 'Immediate blood transfusion', NULL,
'B', 'Splenic NOM criteria: (1) Hemodynamic stability (or response to initial resuscitation); (2) No peritonitis/other indication for laparotomy; (3) No contrast blush (or amenable to angioembolization); (4) Ability to monitor (ICU initially for higher grades); (5) Blood products available. Success rate: 80-90% overall. Failure predictors: high-grade injury, contrast extravasation, large hemoperitoneum, older age. Angioembolization for active bleeding/pseudoaneurysm. Activity restrictions for weeks-months post-injury.', 'medium'),

('e0000334-0006-0000-0000-000000000006', 'd0000334-0000-0000-0000-000000000034', 6,
'Accessory spleens are found in approximately what percentage of patients:',
'1%', '10-30%', '50%', '80%', NULL,
'B', 'Accessory spleens (splenunculi): present in 10-30% of population. Common locations: splenic hilum (most common), gastrosplenic ligament, greater omentum, pancreatic tail, mesentery. Clinical significance: (1) May hypertrophy after splenectomy causing recurrent disease (ITP); (2) Must search for and remove during splenectomy for hematologic disease; (3) Can be confused for lymph nodes or tumors on imaging. Nuclear medicine scan with heat-damaged RBCs can identify functional splenic tissue post-splenectomy.', 'easy'),

('e0000334-0007-0000-0000-000000000007', 'd0000334-0000-0000-0000-000000000034', 7,
'The peripheral blood smear finding seen after splenectomy is:',
'Decreased platelets', 'Howell-Jolly bodies (nuclear remnants in RBCs)', 'Target cells only', 'Spherocytes', NULL,
'B', 'Post-splenectomy blood smear: Howell-Jolly bodies (DNA remnants in RBCs, normally removed by spleen), target cells, siderocytes (iron deposits), acanthocytes. Thrombocytosis common (can be dramatic - up to 1 million/μL), usually peaks 1-3 weeks, normalizes within months. Usually no treatment needed unless extreme or thrombotic risk. Presence of Howell-Jolly bodies confirms absent splenic function - used to detect functional asplenia (sickle cell) or confirm complete splenectomy.', 'easy'),

('e0000334-0008-0000-0000-000000000008', 'd0000334-0000-0000-0000-000000000034', 8,
'Lymph node biopsy for suspected lymphoma should be:',
'Fine needle aspiration only', 'Excisional biopsy to preserve architecture for accurate diagnosis and classification', 'Core needle biopsy always sufficient', 'Incisional biopsy', NULL,
'B', 'Lymphoma diagnosis requires excisional biopsy: complete lymph node removal preserves architecture essential for accurate classification (Hodgkin vs non-Hodgkin, subtype). FNA inadequate - cannot assess architecture, often non-diagnostic. Core needle biopsy may be acceptable for deep nodes when excision not feasible, but excision preferred. Choose most suspicious, accessible node (not inguinal if others available - often reactive). Mark site if neoadjuvant therapy planned. Fresh tissue needed for flow cytometry, cytogenetics.', 'medium'),

('e0000334-0009-0000-0000-000000000009', 'd0000334-0000-0000-0000-000000000034', 9,
'Splenic artery aneurysm is the most common visceral aneurysm and is associated with:',
'Male gender', 'Female gender, multiparity, portal hypertension, and pancreatitis', 'Young age', 'Athletic activity', NULL,
'B', 'Splenic artery aneurysm: most common visceral aneurysm (60%). Risk factors: female gender (4:1), pregnancy/multiparity, portal hypertension (increased flow), pancreatitis, fibromuscular dysplasia, atherosclerosis. Often asymptomatic, discovered incidentally. Rupture risk: 2-3% overall but 25-50% in pregnancy (high maternal/fetal mortality). Treatment indications: symptomatic, >2cm, pregnancy planned, portal hypertension, pseudoaneurysm. Options: endovascular (coiling, stent) or surgical (ligation/excision ± splenectomy).', 'medium'),

('e0000334-0010-0000-0000-000000000010', 'd0000334-0000-0000-0000-000000000034', 10,
'Sentinel lymph node biopsy is used in surgical oncology to:',
'Remove all lymph nodes', 'Identify the first draining lymph node to determine regional spread without complete lymphadenectomy', 'Stage distant metastases', 'Replace imaging', NULL,
'B', 'Sentinel lymph node biopsy (SLNB): identifies first node(s) receiving drainage from tumor - if negative, remaining nodes likely negative, avoiding complete lymphadenectomy and its morbidity. Technique: inject radiotracer and/or blue dye at tumor site, identify sentinel node (radioactivity/blue staining), excise, frozen section or permanent histology. Standard of care for melanoma and breast cancer. If sentinel node positive: may proceed to complete lymphadenectomy (though increasingly selective based on tumor factors). False negative rate: 5-10%.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 34 (Spleen and Lymphatic System) with 10 self-assessment questions inserted' as status;
