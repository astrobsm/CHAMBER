-- ============================================================================
-- SURGERY 3 CME ARTICLE 88: Cardiothoracic Surgery Basics
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000154-0000-0000-0000-000000000154', 'a0000003-0000-0000-0000-000000000003', 'Cardiothoracic Surgery Basics', 'Fundamental concepts in heart and thoracic surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000388-0000-0000-0000-000000000088',
    'c0000154-0000-0000-0000-000000000154',
    'a0000003-0000-0000-0000-000000000003',
    'Cardiothoracic Surgery: Essential Concepts',
    'Introduction to Heart and Chest Surgery',
    'This article covers coronary artery bypass grafting, valve surgery indications, thoracic incisions, lung cancer staging and surgery, mediastinal masses, chest trauma, empyema management, and principles of cardiopulmonary bypass.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000388-0001-0000-0000-000000000001', 'd0000388-0000-0000-0000-000000000088', 1,
'Coronary artery bypass grafting (CABG) is indicated for:',
'Single vessel disease with normal LV function', 'Left main coronary disease, three-vessel disease especially with decreased LV function, and failed or unsuitable PCI', 'All chest pain patients', 'Only as emergency procedure',
'B', 'CABG INDICATIONS: (1) LEFT MAIN coronary disease (>50% stenosis); (2) THREE-VESSEL DISEASE, especially with decreased LV function (EF <50%) or diabetes; (3) Two-vessel disease including proximal LAD with decreased LV function; (4) Failed or unsuitable PCI; (5) Significant disease with need for other cardiac surgery. GRAFTS: LIMA to LAD (gold standard, best patency), saphenous vein grafts (SVG), radial artery. LIMA-LAD patency >90% at 10 years. Off-pump CABG avoids cardiopulmonary bypass in selected patients.', 'medium'),

('e0000388-0002-0000-0000-000000000002', 'd0000388-0000-0000-0000-000000000088', 2,
'Indications for aortic valve replacement include:',
'Mild asymptomatic stenosis', 'Severe symptomatic aortic stenosis or regurgitation, severe asymptomatic stenosis with LV dysfunction, or when undergoing other cardiac surgery', 'Any heart murmur', 'Only for endocarditis',
'B', 'AORTIC VALVE REPLACEMENT INDICATIONS: STENOSIS: severe symptomatic (chest pain, syncope, heart failure - classic triad); severe asymptomatic with LV dysfunction (EF <50%); severe asymptomatic with very severe stenosis (velocity >5 m/s); severe with another cardiac surgery planned. REGURGITATION: severe symptomatic; severe asymptomatic with LV dysfunction (EF <55%) or severe LV dilation. OPTIONS: mechanical (requires lifelong anticoagulation), bioprosthetic (limited durability), TAVR for high-risk patients. Timing critical - once symptoms develop, prognosis poor without surgery.', 'medium'),

('e0000388-0003-0000-0000-000000000003', 'd0000388-0000-0000-0000-000000000088', 3,
'A posterolateral thoracotomy provides access to:',
'The heart only', 'The entire hemithorax including the lung, posterior mediastinum, esophagus, and descending aorta', 'The abdomen', 'The neck only',
'B', 'POSTEROLATERAL THORACOTOMY: most common thoracic incision. POSITION: lateral decubitus. INCISION: curves around scapula tip, enters chest through 5th-6th intercostal space. ACCESS: entire HEMITHORAX - lung (lobectomy, pneumonectomy), posterior mediastinum, ESOPHAGUS, DESCENDING AORTA, pleura, chest wall. Requires division of latissimus and serratus or sparing technique. PAINFUL - rib spreading, intercostal nerve injury. Other incisions: anterolateral (trauma, quick access), median sternotomy (heart surgery), thoracoscopy/VATS (minimally invasive), clamshell (bilateral access in trauma).', 'medium'),

('e0000388-0004-0000-0000-000000000004', 'd0000388-0000-0000-0000-000000000088', 4,
'The staging workup for lung cancer includes:',
'Physical exam only', 'CT chest and abdomen, PET scan, brain MRI, and pulmonary function tests for surgical candidates', 'No imaging needed', 'Only chest X-ray',
'B', 'LUNG CANCER STAGING WORKUP: (1) CT CHEST with contrast (tumor size, nodal disease, invasion); (2) CT ABDOMEN (liver, adrenal metastases); (3) PET SCAN (metabolic staging, distant disease); (4) BRAIN MRI (brain metastases, especially if symptoms or adenocarcinoma); (5) PULMONARY FUNCTION TESTS (FEV1, DLCO) for surgical candidates; (6) Tissue diagnosis (bronchoscopy, CT-guided biopsy, EBUS for nodes). MEDIASTINAL STAGING: if nodes suspicious, confirm with EBUS, mediastinoscopy, or thoracoscopy before resection. TNM staging determines treatment approach.', 'medium'),

('e0000388-0005-0000-0000-000000000005', 'd0000388-0000-0000-0000-000000000088', 5,
'Surgical resection for non-small cell lung cancer (NSCLC) is appropriate for:',
'All lung cancers regardless of stage', 'Stages I-II and selected stage IIIA, with adequate pulmonary reserve (predicted postoperative FEV1 greater than 40%)', 'Only stage IV disease', 'Small cell lung cancer',
'B', 'NSCLC SURGICAL RESECTION: INDICATIONS: Stage I, II, and selected Stage IIIA (single station N2 with response to induction therapy). CONTRAINDICATIONS: Stage IIIB/IV (distant mets, contralateral nodes, malignant effusion), inadequate pulmonary reserve. RESERVE: predicted postoperative FEV1 >40% (or >0.8L), DLCO >40%. PROCEDURES: lobectomy (standard), segmentectomy/wedge (limited for poor reserve or small tumors), pneumonectomy (if needed for complete resection). Minimally invasive (VATS/robotic) when feasible. R0 (complete) resection goal.', 'medium'),

('e0000388-0006-0000-0000-000000000006', 'd0000388-0000-0000-0000-000000000088', 6,
'Anterior mediastinal masses are remembered by the "4 Ts" which include:',
'Tuberculosis, trauma, toxins, tumors', 'Thymoma, teratoma (germ cell tumors), thyroid goiter, and terrible lymphoma', 'Only thyroid disease', 'Tracheal and esophageal lesions',
'B', 'ANTERIOR MEDIASTINAL MASSES - "4 Ts": (1) THYMOMA (most common anterior mediastinal tumor in adults, associated with myasthenia gravis); (2) TERATOMA and germ cell tumors (may contain teeth, hair, cartilage); (3) THYROID goiter (substernal extension); (4) "Terrible" LYMPHOMA (Hodgkin and non-Hodgkin). Other compartments: MIDDLE mediastinum (heart, great vessels, trachea, bronchi, nodes); POSTERIOR mediastinum (neurogenic tumors most common - schwannoma, neurofibroma). Thymectomy indicated for thymoma and myasthenia gravis.', 'easy'),

('e0000388-0007-0000-0000-000000000007', 'd0000388-0000-0000-0000-000000000088', 7,
'Empyema (pleural space infection) management follows phases:',
'Single phase requiring antibiotics only', 'Exudative (antibiotics and drainage), fibrinopurulent (drainage with fibrinolytics or VATS), and organizing (decortication)', 'Surgery is never needed', 'Observation alone',
'B', 'EMPYEMA PHASES AND MANAGEMENT: (1) EXUDATIVE (Stage I, 1-7 days): thin fluid, low WBC, lung expands after drainage. Treatment: antibiotics, chest tube drainage. (2) FIBRINOPURULENT (Stage II, 7-14 days): thick fluid, loculations, fibrin deposits. Treatment: drainage + fibrinolytics (tPA/DNase) or VATS decortication. (3) ORGANIZING (Stage III, >14 days): thick peel/rind on lung (trapped lung), fibrosis. Treatment: thoracotomy and DECORTICATION (peel removal). Earlier intervention = better outcomes. LIGHT criteria identify complicated effusions. Blood and pleural fluid cultures guide antibiotics.', 'medium'),

('e0000388-0008-0000-0000-000000000008', 'd0000388-0000-0000-0000-000000000088', 8,
'Cardiac tamponade is characterized by:',
'Increased cardiac output', 'Beck triad (hypotension, JVD, muffled heart sounds), pulsus paradoxus, and echocardiographic findings of chamber collapse', 'Normal vital signs', 'Bradycardia only',
'B', 'CARDIAC TAMPONADE: pericardial fluid compressing heart, preventing diastolic filling. BECK TRIAD: (1) HYPOTENSION (decreased CO); (2) JVD (elevated CVP, impaired venous return); (3) MUFFLED HEART SOUNDS. PULSUS PARADOXUS: >10 mmHg drop in SBP with inspiration (exaggeration of normal). ECG: low voltage, electrical alternans. CXR: enlarged cardiac silhouette. ECHO: pericardial effusion, RA/RV diastolic collapse (diagnostic). TREATMENT: pericardiocentesis (immediate if unstable), pericardial window (definitive, allows diagnosis if malignancy). Causes: trauma, malignancy, uremia, infection, post-MI.', 'easy'),

('e0000388-0009-0000-0000-000000000009', 'd0000388-0000-0000-0000-000000000088', 9,
'Cardiopulmonary bypass (CPB) involves:',
'Normal heart function during surgery', 'Venous drainage from right atrium, oxygenation/CO2 removal via membrane oxygenator, and arterial return usually to ascending aorta with myocardial protection via cardioplegia', 'No need for anticoagulation', 'Lung ventilation throughout',
'B', 'CARDIOPULMONARY BYPASS: machine takes over heart and lung function. COMPONENTS: (1) VENOUS drainage (cannula in RA or bicaval); (2) Reservoir; (3) OXYGENATOR (membrane - gas exchange, CO2 removal); (4) Heat exchanger (cooling/rewarming); (5) Pump (roller or centrifugal); (6) ARTERIAL return (ascending aorta). ANTICOAGULATION: heparin (ACT >400 seconds), reversed with protamine. MYOCARDIAL PROTECTION: cross-clamp aorta, cardioplegia (cold, blood-based, high potassium) arrests heart. Complications: stroke, bleeding, SIRS, renal injury, cognitive changes.', 'hard'),

('e0000388-0010-0000-0000-000000000010', 'd0000388-0000-0000-0000-000000000088', 10,
'Massive hemoptysis management includes:',
'Observation only', 'Positioning with bleeding side down, definitive airway, bronchoscopy for localization, and interventions including bronchial artery embolization or surgery', 'Immediate thoracotomy always', 'Anticoagulation therapy',
'B', 'MASSIVE HEMOPTYSIS (>500 mL/24h or >100 mL/hr): life-threatening, death from asphyxiation not exsanguination. MANAGEMENT: (1) AIRWAY - intubation, consider double-lumen ETT for lung isolation; (2) POSITIONING - BLEEDING SIDE DOWN (protects good lung); (3) Resuscitation - IV access, blood products; (4) BRONCHOSCOPY - localize bleeding side/lobe (rigid allows better suctioning and intervention); (5) BRONCHIAL ARTERY EMBOLIZATION (IR procedure, effective in >85%); (6) SURGERY if embolization fails or not available (lobectomy/pneumonectomy). Causes: TB, bronchiectasis, lung cancer, aspergilloma.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 88 (Cardiothoracic Surgery Basics) with 10 self-assessment questions inserted' as status;
