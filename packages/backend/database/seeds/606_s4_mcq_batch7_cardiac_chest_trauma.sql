-- Surgery 4 MCQ Question Bank - Batch 7
-- Section A: Cardiothoracic Surgery - Cardiac Tamponade and Chest Trauma
-- 40 Questions

-- Topic: Cardiac Tamponade and Chest Trauma
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000007-0000-0000-0000-000000000007', 'Cardiac Tamponade and Chest Trauma', 'a0000004-0000-0000-0000-000000000004', 'Diagnosis and management of cardiac tamponade and thoracic trauma', 7, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Beck triad in cardiac tamponade consists of:',
 'Hypertension, bradycardia, irregular breathing', 'Hypotension, distended neck veins, muffled heart sounds', 'Fever, murmur, splinter hemorrhages', 'Chest pain, dyspnea, cough', 'Tachycardia, hypoxia, cyanosis',
 'B', 'Beck triad: hypotension (low cardiac output), distended neck veins (elevated CVP), and muffled heart sounds (fluid around heart). Classic but not always present, especially in hypovolemia.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Pulsus paradoxus in cardiac tamponade is:',
 'Absent pulse', 'Decrease in systolic BP greater than 10 mmHg during inspiration', 'Increase in BP during inspiration', 'Irregular pulse', 'Bounding pulse',
 'B', 'Pulsus paradoxus is an exaggerated fall (>10 mmHg) in systolic BP during inspiration. It occurs due to increased venous return to the right heart compromising left heart filling in tamponade.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The most reliable investigation for diagnosing cardiac tamponade is:',
 'Chest X-ray', 'ECG', 'Echocardiography', 'CT scan', 'Central venous pressure',
 'C', 'Echocardiography (bedside) shows pericardial fluid, chamber collapse, and respiratory variation in ventricular filling. It is rapid and diagnostic. FAST can detect pericardial fluid in trauma.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Emergency treatment of cardiac tamponade in trauma is:',
 'Diuretics', 'Pericardiocentesis or emergency thoracotomy', 'Fluid restriction', 'Beta-blockers', 'Observation',
 'B', 'Traumatic tamponade requires urgent pericardiocentesis (temporizing) or emergency thoracotomy (definitive) for drainage and repair. Subxiphoid pericardial window is also an option.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The cardiac chamber most commonly injured in penetrating trauma is:',
 'Left atrium', 'Right ventricle', 'Left ventricle', 'Right atrium', 'Aortic root',
 'B', 'The right ventricle is most commonly injured in penetrating trauma due to its anterior position. It accounts for 40-45% of cardiac injuries.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Emergency department thoracotomy is indicated for:',
 'All chest trauma', 'Penetrating trauma with witnessed loss of vital signs', 'Blunt trauma with stable vitals', 'Rib fractures', 'Pneumothorax only',
 'B', 'EDT is indicated for penetrating thoracic trauma with witnessed loss of vitals/cardiac arrest, or blunt trauma with loss of vitals in the ED. Survival is best for stab wounds to heart.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The survival rate for emergency thoracotomy in penetrating cardiac injury is approximately:',
 'Less than 5 percent', '10-30 percent', '50 percent', '70 percent', '90 percent',
 'B', 'Survival for EDT in penetrating cardiac injury (stab wounds) is 10-30%. For gunshot wounds it is lower. Blunt trauma has very poor outcomes (<5%).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of hemothorax is:',
 'Great vessel injury', 'Rib fracture with intercostal vessel injury', 'Cardiac rupture', 'Pulmonary artery injury', 'Aortic rupture',
 'B', 'Rib fractures with intercostal or internal mammary artery injury are the most common causes of hemothorax. Lung parenchymal injury usually causes pneumothorax with smaller bleeds.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of hemothorax is:',
 'Thoracotomy', 'Chest tube (large bore) insertion', 'Observation', 'Needle thoracocentesis', 'CT-guided drainage',
 'B', 'Large bore (32-36 Fr) chest tube insertion is initial management for hemothorax. It evacuates blood, re-expands lung, monitors bleeding rate, and reduces risk of empyema/fibrothorax.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Indications for thoracotomy in hemothorax include:',
 'Initial drainage less than 500 ml', 'Initial drainage greater than 1500 ml or ongoing 200 ml per hour for 2-4 hours', 'All hemothorax cases', 'Only clotted hemothorax', 'Stable patient only',
 'B', 'Thoracotomy indicated for: initial drainage >1500 ml, ongoing bleeding >200 ml/hr for 2-4 hours, hemodynamic instability, or retained hemothorax not responding to drainage.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Tension pneumothorax is characterized by all EXCEPT:',
 'Tracheal deviation away from affected side', 'Distended neck veins', 'Hyperresonance on percussion', 'Increased breath sounds on affected side', 'Hypotension',
 'D', 'Tension pneumothorax: absent breath sounds on affected side, hyperresonance, tracheal deviation to opposite side, distended neck veins, hypotension. Breath sounds are decreased/absent, not increased.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Immediate treatment of tension pneumothorax is:',
 'Chest X-ray before any treatment', 'Needle decompression followed by chest tube', 'CT scan', 'Observation', 'Intubation first',
 'B', 'Tension pneumothorax is a clinical diagnosis. Immediate needle decompression (2nd ICS MCL or 4th/5th ICS AAL) followed by chest tube. Treatment should not be delayed for imaging.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Open pneumothorax (sucking chest wound) occurs when:',
 'Lung is lacerated', 'Chest wall defect is greater than two-thirds trachea diameter', 'Small puncture wound', 'Rib fracture only', 'Diaphragm injury',
 'B', 'Open pneumothorax occurs when chest wall defect is >2/3 tracheal diameter (approximately 3 cm), allowing preferential air entry through wound rather than trachea.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of open pneumothorax is:',
 'Immediate intubation', 'Three-sided occlusive dressing and chest tube on opposite side', 'Complete wound closure', 'Observation', 'Needle decompression',
 'B', 'Apply three-sided occlusive dressing (flutter valve effect) and insert chest tube away from wound. This prevents air entry while allowing egress. Definitive closure with chest tube in place.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Flail chest is defined as:',
 'Single rib fracture', 'Fracture of one rib in two places', 'Fracture of 3 or more consecutive ribs in 2 or more places', 'Sternal fracture', 'Costochondral separation',
 'C', 'Flail chest: fracture of 3 or more consecutive ribs each in 2 or more places (or ribs plus sternum), creating a free-floating segment with paradoxical movement.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The main cause of respiratory compromise in flail chest is:',
 'Paradoxical chest wall movement', 'Underlying pulmonary contusion', 'Chest wall pain only', 'Rib fragments in lung', 'Diaphragm paralysis',
 'B', 'Underlying pulmonary contusion is the main cause of respiratory compromise in flail chest. The contused lung cannot exchange gas effectively. Pain and paradox contribute less.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Current management of flail chest emphasizes:',
 'Mechanical ventilation for all', 'Pain control and chest physiotherapy with selective ventilation', 'External strapping', 'Immediate surgical fixation for all', 'Prolonged bed rest',
 'B', 'Management focuses on analgesia (epidural, PCA), chest physiotherapy, supplemental oxygen, and selective ventilation (for respiratory failure). Strapping is obsolete. Surgical fixation is selective.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Pulmonary contusion typically:',
 'Is immediately apparent on chest X-ray', 'Develops radiologically over 24-48 hours', 'Never causes hypoxia', 'Requires immediate surgery', 'Resolves within hours',
 'B', 'Pulmonary contusion may not be visible on initial CXR. Radiological changes develop over 24-48 hours. CT is more sensitive for early detection. Clinical deterioration may precede X-ray changes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic diaphragmatic rupture is more common on:',
 'Right side due to liver protection', 'Left side', 'Both equally', 'Central portion', 'Posterior portion',
 'B', 'Left-sided rupture is more common (3:1 ratio) as the liver provides some protection on the right. Blunt trauma causes larger tears than penetrating injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'CXR finding suggestive of left diaphragmatic rupture is:',
 'Elevated hemidiaphragm only', 'Nasogastric tube tip in chest or bowel loops in hemithorax', 'Widened mediastinum', 'Clear lung fields', 'Cardiomegaly',
 'B', 'CXR may show elevated hemidiaphragm, bowel loops/stomach in chest, NG tube tip above diaphragm, contralateral mediastinal shift. May be obscured by hemothorax or missed initially.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Tracheobronchial injury should be suspected when:',
 'Minor hemoptysis only', 'Persistent air leak after chest tube and subcutaneous emphysema', 'First rib fracture only', 'Normal chest X-ray', 'Isolated clavicle fracture',
 'B', 'Tracheobronchial injury: persistent large air leak after chest tube, failure of lung to re-expand, massive subcutaneous emphysema, hemoptysis. Often associated with severe mechanism.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The investigation of choice for tracheobronchial injury is:',
 'Chest X-ray', 'CT chest', 'Bronchoscopy', 'MRI', 'Angiography',
 'C', 'Bronchoscopy (flexible or rigid) is the definitive investigation for tracheobronchial injury, allowing direct visualization and assessment of location and extent of injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Esophageal injury following trauma is diagnosed by:',
 'Clinical examination alone', 'Water-soluble contrast swallow and/or esophagoscopy', 'CT only', 'Chest X-ray only', 'Blood tests',
 'B', 'Esophageal injury is diagnosed by water-soluble (Gastrografin) contrast swallow followed by thin barium if negative, and/or esophagoscopy. Combined approach has highest sensitivity.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'First rib fracture is significant because:',
 'It is the most common rib fracture', 'It indicates severe mechanism with risk of associated vascular and neurological injury', 'It never causes complications', 'It heals slowly', 'It requires surgery',
 'B', 'First rib fracture indicates severe mechanism (protected by shoulder girdle). Associated with brachial plexus injury, subclavian vessel injury, and thoracic aortic injury. Warrants investigation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Sternal fracture is commonly associated with:',
 'Isolated injury', 'Cardiac contusion and thoracic spine injury', 'Cervical spine injury only', 'No associated injuries', 'Upper limb fractures',
 'B', 'Sternal fracture (usually from direct blow or seat belt) is associated with cardiac contusion and thoracic spine injury. ECG and cardiac enzymes should be monitored.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Myocardial contusion is best screened using:',
 'Chest X-ray', 'ECG and troponin', 'CT chest', 'MRI', 'Cardiac catheterization',
 'B', 'ECG and troponin are initial screening for myocardial contusion. Abnormal ECG with elevated troponin warrants echocardiography and monitoring. Most contusions are clinically insignificant.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Blunt cardiac injury causing significant arrhythmia is most likely to occur within:',
 '6 hours', '24-48 hours', '1 week', '1 month', 'Never',
 'B', 'Significant arrhythmias from blunt cardiac injury typically occur within 24-48 hours. Patients with abnormal ECG/troponin should be monitored. Normal initial studies are reassuring.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Commotio cordis is:',
 'Cardiac tamponade', 'Sudden cardiac arrest from blunt chest impact during cardiac cycle vulnerability', 'Chronic pericarditis', 'Myocardial infarction', 'Aortic dissection',
 'B', 'Commotio cordis is sudden cardiac arrest (ventricular fibrillation) from low-energy blunt chest impact during vulnerable period of cardiac cycle (10-30 ms before T-wave peak). Common in young athletes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The safe triangle for chest drain insertion is bordered by:',
 'Anterior border of latissimus dorsi, lateral pectoralis major, apex below clavicle', 'Anterior border of latissimus dorsi, lateral pectoralis major, line at level of nipple/5th ICS', 'Midclavicular line and midaxillary line', 'Sternum and spine', 'Costal margin only',
 'B', 'Safe triangle: anterior border of latissimus dorsi, lateral border of pectoralis major, and base at line of 5th intercostal space (nipple level). Minimizes injury to internal organs.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Chest tube should be inserted at which intercostal space level for trauma?',
 '2nd intercostal space', '4th or 5th intercostal space in the safe triangle', '8th intercostal space', '10th intercostal space', 'Subxiphoid',
 'B', 'Chest tube for trauma is inserted at 4th or 5th intercostal space (nipple level) in the safe triangle. Entry should be at upper border of rib to avoid neurovascular bundle.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Chylothorax following thoracic trauma is managed by:',
 'Immediate surgery always', 'Conservative management initially with chest drainage and nutritional support', 'Observation without drainage', 'Radiotherapy', 'Chemotherapy',
 'B', 'Chylothorax is initially managed conservatively: chest drainage, NPO or low-fat/MCT diet, TPN if needed. Surgery (thoracic duct ligation) if high output persists >2 weeks.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Retained hemothorax not draining with chest tube should be managed by:',
 'Observation', 'VATS or thoracotomy for evacuation', 'Multiple chest tubes', 'Antibiotics only', 'Fibrinolytic instillation first then surgery if fails',
 'E', 'Retained hemothorax: intrapleural fibrinolytics (tPA/DNase) can be tried first. If fails or organized, VATS is preferred for evacuation. Prevents empyema and fibrothorax.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'VATS (Video-Assisted Thoracoscopic Surgery) in thoracic trauma is useful for:',
 'All chest trauma', 'Retained hemothorax, persistent air leak, and diagnosis of diaphragm injury', 'Only pneumothorax', 'Major vessel injury', 'Cardiac injury',
 'B', 'VATS is useful for: retained hemothorax evacuation, persistent air leak evaluation, diaphragm injury diagnosis and repair, and ongoing bleeding from chest wall. Not for major vessel/cardiac injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Rib fractures in elderly patients are significant because:',
 'They heal faster', 'They are associated with higher morbidity and mortality', 'They rarely cause pain', 'They never need treatment', 'They are cosmetic only',
 'B', 'Rib fractures in elderly have higher morbidity (pneumonia, ARDS) and mortality. Each additional rib fracture increases mortality by 19%. Aggressive analgesia and respiratory support are essential.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'The purpose of autotransfusion in hemothorax is:',
 'To avoid blood typing', 'To return patients own blood reducing transfusion requirements', 'To diagnose the source of bleeding', 'To treat coagulopathy', 'To replace crystalloids',
 'B', 'Autotransfusion collects blood from hemothorax via chest tube, filters it, and reinfuses to patient. Reduces need for banked blood. Best within 6 hours of injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004',
 'Clamshell thoracotomy provides:',
 'Access to one hemithorax only', 'Bilateral thoracic access including heart and great vessels', 'Access to abdomen', 'Access to neck only', 'No cardiac access',
 'B', 'Clamshell (bilateral anterior thoracotomy with transverse sternotomy) provides excellent access to both hemithoraces, heart, and great vessels. Used in trauma for uncertain laterality or bilateral injury.', 'hard', 'knowledge');
