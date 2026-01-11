-- ============================================================================
-- SURGERY 3 CME ARTICLE 32: Thoracic Surgery Fundamentals
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000098-0000-0000-0000-000000000098', 'a0000003-0000-0000-0000-000000000003', 'Thoracic Surgery Fundamentals', 'Chest surgery principles and procedures')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000332-0000-0000-0000-000000000032',
    'c0000098-0000-0000-0000-000000000098',
    'a0000003-0000-0000-0000-000000000003',
    'Thoracic Surgery Fundamentals',
    'Chest Trauma, Lung Disease, and Pleural Pathology',
    'This article covers thoracic surgery basics including chest trauma management, pneumothorax, hemothorax, flail chest, chest tube insertion and management, lung cancer surgery, empyema management, and esophageal disorders requiring surgery.',
    'Department of Surgery, UNTH',
    2.5,
    24,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000332-0001-0000-0000-000000000001', 'd0000332-0000-0000-0000-000000000032', 1,
'Tension pneumothorax requires:',
'CT scan before treatment', 'Immediate needle decompression followed by chest tube insertion', 'Observation only', 'Oral antibiotics', NULL,
'B', 'Tension pneumothorax is a clinical diagnosis requiring immediate treatment - do not wait for imaging! Presentation: respiratory distress, hypotension, tracheal deviation away from affected side, absent breath sounds, distended neck veins, hyperresonance. Treatment: immediate needle decompression (2nd ICS, midclavicular line or 4th/5th ICS anterior axillary line), followed by chest tube insertion. Mechanism: one-way valve effect allows air entry but not exit, progressive increase in intrapleural pressure, mediastinal shift, decreased venous return.', 'easy'),

('e0000332-0002-0000-0000-000000000002', 'd0000332-0000-0000-0000-000000000032', 2,
'Indications for thoracotomy in chest trauma include:',
'All chest trauma patients', 'Initial chest tube output greater than 1500mL or ongoing output greater than 200mL/hour for 2-4 hours', 'Small pneumothorax', 'Rib fractures only', NULL,
'B', 'Thoracotomy indications in trauma: (1) Initial output >1500 mL; (2) Ongoing output >200 mL/hr for 2-4 hours; (3) Hemodynamic instability despite resuscitation; (4) Penetrating cardiac injury (tamponade); (5) Massive air leak preventing lung expansion; (6) Major thoracic vascular injury; (7) Esophageal perforation; (8) Diaphragmatic rupture with herniation; (9) Open pneumothorax with major chest wall defect. ED thoracotomy: penetrating trauma with signs of life in past 10-15 minutes, selected blunt trauma.', 'medium'),

('e0000332-0003-0000-0000-000000000003', 'd0000332-0000-0000-0000-000000000032', 3,
'Flail chest is defined as:',
'Single rib fracture', 'Two or more consecutive ribs fractured in two or more places creating a free-floating segment', 'Sternal fracture only', 'Clavicle fracture', NULL,
'B', 'Flail chest: segment of chest wall with discontinuous connection to thoracic cage. Definition: ≥3 consecutive ribs fractured in ≥2 places (or ≥2 ribs + costochondral disruption). Pathophysiology: paradoxical movement, but main problem is underlying pulmonary contusion. Treatment: pain control (essential - epidural, regional blocks, multimodal analgesia), pulmonary toilet, avoid intubation if possible. Positive pressure ventilation (internal pneumatic stabilization) if respiratory failure. Surgical fixation increasingly used for select cases.', 'easy'),

('e0000332-0004-0000-0000-000000000004', 'd0000332-0000-0000-0000-000000000032', 4,
'Chest tube insertion for traumatic hemothorax should be placed in:',
'2nd intercostal space midclavicular line', 'Safe triangle - 4th/5th intercostal space, anterior to mid-axillary line', 'Anywhere on the chest', 'Posterior chest wall only', NULL,
'B', 'Safe triangle for chest tube insertion: bounded by lateral edge of pectoralis major (anterior), lateral edge of latissimus dorsi (posterior), line of 5th intercostal space (base), apex below axilla. Typically 4th or 5th ICS, anterior to mid-axillary line. Technique: above the rib (avoid neurovascular bundle below), blunt dissection through intercostals, finger sweep to confirm pleural space, direct tube posteriorly and superiorly for hemothorax. Use large bore (28-32 Fr) for hemothorax.', 'easy'),

('e0000332-0005-0000-0000-000000000005', 'd0000332-0000-0000-0000-000000000032', 5,
'The most common indication for lung resection is:',
'Benign tumors', 'Primary lung cancer', 'Tuberculosis', 'Bronchiectasis', NULL,
'B', 'Lung cancer is most common indication for lung resection. Surgical options: (1) Lobectomy - standard for stage I/II NSCLC with adequate function; (2) Pneumonectomy - central tumors, but high morbidity; (3) Segmentectomy/wedge - limited resection for poor pulmonary reserve or small tumors; (4) Sleeve resection - preserves lung parenchyma. Preoperative evaluation: staging (CT, PET, mediastinoscopy), pulmonary function tests (FEV1 >1.5L for lobectomy, >2L for pneumonectomy predicted), cardiac evaluation. VATS approach increasingly standard.', 'easy'),

('e0000332-0006-0000-0000-000000000006', 'd0000332-0000-0000-0000-000000000032', 6,
'Empyema thoracis is classified into which stages:',
'Single stage only', 'Exudative, fibrinopurulent, and organizing (ATS classification)', 'Acute and chronic only', 'No staging exists', NULL,
'B', 'Empyema stages (American Thoracic Society): Stage I - Exudative: thin fluid, low WBC/LDH, normal glucose/pH, lung expandable. Stage II - Fibrinopurulent: turbid/purulent fluid, loculations forming, positive cultures, low glucose/pH. Stage III - Organizing: thick peel, trapped lung, requires decortication. Treatment: Stage I - chest tube drainage + antibiotics; Stage II - chest tube, consider fibrinolytics (tPA + DNase) or VATS debridement; Stage III - thoracotomy with decortication. Early aggressive treatment prevents progression.', 'medium'),

('e0000332-0007-0000-0000-000000000007', 'd0000332-0000-0000-0000-000000000032', 7,
'Esophageal perforation (Boerhaave syndrome) classically presents with:',
'Painless dysphagia', 'Severe chest pain after forceful vomiting with subcutaneous emphysema (Mackler triad)', 'Gradual onset heartburn', 'Weight loss only', NULL,
'B', 'Boerhaave syndrome: spontaneous esophageal rupture from sudden rise in intraluminal pressure against closed cricopharyngeus. Mackler triad: (1) Vomiting; (2) Lower chest pain; (3) Subcutaneous emphysema. Usually left posterolateral lower esophagus. Diagnosis: chest X-ray (pneumomediastinum, pleural effusion), contrast esophagram (water-soluble first, then barium), CT. High mortality if delayed. Treatment: <24 hours - primary repair with tissue reinforcement; >24 hours or unstable - drainage, diversion, possible esophagectomy later.', 'medium'),

('e0000332-0008-0000-0000-000000000008', 'd0000332-0000-0000-0000-000000000032', 8,
'Cardiac tamponade from trauma presents with Beck triad which is:',
'Hypertension, bradycardia, irregular breathing', 'Hypotension, distended neck veins, and muffled heart sounds', 'Fever, tachycardia, and hypotension', 'Chest pain, dyspnea, and cough', NULL,
'B', 'Beck triad (cardiac tamponade): (1) Hypotension (low cardiac output from impaired filling); (2) Distended neck veins (impaired venous return to heart); (3) Muffled/distant heart sounds. May also see pulsus paradoxus (>10 mmHg drop in SBP with inspiration). Kussmaul sign: paradoxical rise in JVP with inspiration. Diagnosis: clinical, FAST ultrasound (pericardial fluid). Treatment: immediate pericardiocentesis (temporizing) or pericardial window/sternotomy. Penetrating trauma: usually requires operative repair.', 'easy'),

('e0000332-0009-0000-0000-000000000009', 'd0000332-0000-0000-0000-000000000032', 9,
'A sucking chest wound (open pneumothorax) should be treated with:',
'Observation', 'Three-sided occlusive dressing initially, followed by chest tube and wound repair', 'Complete occlusive dressing only', 'Immediate thoracotomy', NULL,
'B', 'Open pneumothorax (sucking chest wound): defect in chest wall allows air to enter pleural space. If defect ≥2/3 tracheal diameter, air preferentially enters through wound. Initial treatment: three-sided occlusive dressing (allows air to escape but not enter - acts as flutter valve). Definitive: chest tube insertion (away from wound) + wound debridement and closure. Do not completely occlude wound without chest tube - can convert to tension pneumothorax. Large defects may require surgical repair with muscle flaps.', 'medium'),

('e0000332-0010-0000-0000-000000000010', 'd0000332-0000-0000-0000-000000000032', 10,
'Criteria for chest tube removal include:',
'Immediately after insertion', 'Minimal drainage (less than 200mL/24hrs), no air leak, and lung fully expanded on imaging', 'Drainage of 500mL/day', 'Patient request only', NULL,
'B', 'Chest tube removal criteria: (1) Drainage <200 mL/24 hours (some use <150 mL or <2 mL/kg); (2) No air leak for 24-48 hours; (3) Lung fully expanded on chest X-ray; (4) Patient clinically stable. Technique: remove during Valsalva or end-expiration, have occlusive dressing ready. Post-removal CXR to confirm no pneumothorax. If air leak persists: check for system leak, consider suction if not already on, may need surgical intervention (pleurodesis, VATS) for persistent leak >5-7 days.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 32 (Thoracic Surgery Fundamentals) with 10 self-assessment questions inserted' as status;
