-- Surgery 4 MCQ Question Bank - Batch 15
-- Section B: Trauma & Emergency Surgery - Chest Injuries
-- 40 Questions

-- Topic: Chest Injuries
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000015-0000-0000-0000-000000000015', 'Chest Injuries', 'a0000004-0000-0000-0000-000000000004', 'Thoracic trauma assessment, life-threatening injuries, and management', 15, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'The immediately life-threatening chest injuries identified in primary survey include all EXCEPT:',
 'Tension pneumothorax', 'Open pneumothorax', 'Massive hemothorax', 'Cardiac tamponade', 'Simple rib fracture',
 'E', 'ATOM-FC: Airway obstruction, Tension pneumothorax, Open pneumothorax, Massive hemothorax, Flail chest with pulmonary contusion, Cardiac tamponade. Simple rib fracture is not immediately life-threatening.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Tension pneumothorax is a clinical diagnosis characterized by:',
 'Bilateral decreased breath sounds', 'Hypotension tracheal deviation away and absent breath sounds on affected side', 'Normal blood pressure', 'Increased breath sounds', 'Bradycardia only',
 'B', 'Tension pneumothorax: hypotension, tachycardia, distended neck veins, tracheal deviation away from affected side, absent breath sounds, hyperresonance. Clinical diagnosis - do not wait for CXR.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Immediate treatment of tension pneumothorax is:',
 'Chest X-ray first', 'Needle decompression followed by chest tube', 'CT scan', 'Observation', 'Pericardiocentesis',
 'B', 'Tension pneumothorax: immediate needle decompression (2nd ICS MCL or 4th-5th ICS MAL) converts to simple pneumothorax, followed by tube thoracostomy. Needle is temporizing measure.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Open pneumothorax (sucking chest wound) occurs with chest wall defect approximately:',
 'Any size', 'Two-thirds the diameter of the trachea or larger', 'Only with complete chest wall loss', 'Only with rib fractures', 'Only in blast injuries',
 'B', 'Open pneumothorax: chest wall defect > 2/3 tracheal diameter allows preferential air entry through wound rather than trachea. Paradoxical respiration. Immediate sealing needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Initial treatment of open pneumothorax is:',
 'Immediate intubation', 'Occlusive dressing taped on three sides followed by chest tube remote from wound', 'Complete sealing of wound', 'Observation', 'Thoracotomy',
 'B', 'Open pneumothorax: occlusive dressing taped on three sides (allows air out, prevents entry) as temporary measure. Chest tube placed at separate site. Definitive surgical repair needed.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Massive hemothorax is defined as initial drainage of:',
 '200 mL blood', '500 mL blood', '1500 mL blood or ongoing 200 mL per hour', '3000 mL blood', 'Any blood',
 'C', 'Massive hemothorax: >1500 mL initial drainage or ongoing >200 mL/hour for 2-4 hours. Indicates major vascular or cardiac injury. Requires thoracotomy if criteria met.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Flail chest is defined as:',
 'Single rib fracture', 'Two or more contiguous ribs fractured in two or more places creating a floating segment', 'Sternum fracture', 'Costochondral separation', 'Clavicle fracture',
 'B', 'Flail chest: segment of chest wall with ≥2 contiguous ribs fractured in ≥2 places, or rib fractures with costochondral separation. Creates paradoxical movement.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'The primary cause of hypoxia in flail chest is:',
 'Paradoxical chest wall motion alone', 'Underlying pulmonary contusion', 'Pneumothorax always', 'Cardiac contusion', 'Diaphragm injury',
 'B', 'Hypoxia in flail chest primarily from underlying pulmonary contusion (present in 80%+). Paradoxical motion contributes but contusion causes significant V/Q mismatch and respiratory failure.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Management of flail chest includes:',
 'Chest wall strapping', 'Pain control fluid restriction monitoring and mechanical ventilation if needed', 'Immediate thoracotomy', 'External fixation of all patients', 'Observation without analgesia',
 'B', 'Flail chest management: adequate analgesia (epidural ideal), supplemental O2, judicious fluids, pulmonary toilet. Mechanical ventilation for respiratory failure. Surgical fixation in selected cases.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Pulmonary contusion typically worsens over:',
 'Minutes', '24-48 hours', '1 week', 'Immediately maximal', 'Never progresses',
 'B', 'Pulmonary contusion: hemorrhage and edema in lung parenchyma. Worsens over 24-48 hours. May not be fully apparent on initial imaging. Resolution over 3-7 days if no complications.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Chest tube placement for traumatic pneumothorax is at:',
 '2nd intercostal space midclavicular line', '4th-5th intercostal space anterior to midaxillary line', '8th intercostal space posterior', 'Any convenient location', 'Subxiphoid',
 'B', 'Tube thoracostomy: 4th-5th ICS (nipple level in males) anterior to midaxillary line. Directed posterosuperiorly for fluid, anteriorly for air. Large bore (28-32 Fr) for trauma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Indications for emergent thoracotomy in trauma include:',
 'All chest injuries', 'Pulseless patient with signs of life in ED after penetrating chest trauma', 'All stab wounds', 'All rib fractures', 'Simple pneumothorax',
 'B', 'ED thoracotomy indications: pulseless with recent signs of life (especially penetrating thoracic trauma), unresponsive hypotension for tamponade, massive air embolism. Poor outcomes for blunt trauma.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'The box on the chest where cardiac injury should be suspected includes:',
 'Entire thorax', 'Clavicles superiorly costal margins inferiorly and midclavicular lines laterally', 'Only left chest', 'Only right chest', 'Only precordium',
 'B', 'Cardiac box: clavicles to costal margins, nipple to nipple (MCL to MCL). Penetrating wounds in this area have high risk of cardiac injury and require evaluation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Sternal fracture is associated with:',
 'No other injuries', 'Blunt cardiac injury and thoracic spine injury', 'Only lung injury', 'Only abdominal injury', 'Only upper limb injury',
 'B', 'Sternal fracture: high-energy mechanism. Associated with blunt cardiac injury (evaluate with ECG, troponin), great vessel injury, and thoracic spine fracture. Most managed non-operatively.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Blunt cardiac injury (myocardial contusion) is best screened with:',
 'Chest X-ray', 'ECG and troponin levels', 'Echocardiogram always', 'CT scan', 'MRI',
 'B', 'Blunt cardiac injury screening: ECG (arrhythmias, ST changes) and troponin. Echo for hemodynamic instability or significant ECG/biomarker abnormalities. Monitor for arrhythmias 24-48 hours.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic aortic injury most commonly occurs at:',
 'Ascending aorta', 'Aortic isthmus just distal to left subclavian', 'Descending thoracic aorta', 'Abdominal aorta', 'Aortic root',
 'B', 'Traumatic aortic injury: isthmus (ligamentum arteriosum) most common (90%). Shear forces from deceleration. Most die at scene. Survivors have contained rupture. CT-A diagnostic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'CXR findings suggestive of aortic injury include:',
 'Normal mediastinum', 'Widened mediastinum obscured aortic knob and left apical cap', 'Clear lung fields', 'Normal heart size', 'Right pleural effusion only',
 'B', 'CXR findings: widened mediastinum (>8 cm or >25% thoracic width), obscured aortic knob, left apical pleural cap, depression of left mainstem bronchus, deviation of NG tube, hemothorax.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Definitive diagnosis of traumatic aortic injury is made by:',
 'Chest X-ray', 'CT angiography', 'Plain radiograph only', 'Clinical examination', 'Blood tests',
 'B', 'CT angiography is gold standard for diagnosis. High sensitivity and specificity. Shows intimal flap, pseudoaneurysm, mediastinal hematoma. Has replaced catheter angiography as initial test.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of traumatic aortic injury in the current era is primarily:',
 'Open surgical repair only', 'Thoracic endovascular aortic repair (TEVAR) when anatomy suitable', 'Medical management only', 'Observation', 'Delayed repair always',
 'B', 'TEVAR is now first-line for suitable anatomy. Lower mortality and morbidity than open repair. Anti-impulse therapy while preparing for repair. Open repair if endovascular not feasible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Diaphragmatic injury from blunt trauma is more common on:',
 'Right side', 'Left side', 'Equal bilaterally', 'Central tendon', 'Never occurs',
 'B', 'Left-sided diaphragmatic injury more common in blunt trauma (liver protects right). Right-sided more common in penetrating. May present late with herniation, obstruction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Esophageal perforation from trauma is suggested by:',
 'Normal findings', 'Left pneumothorax or hemothorax without rib fracture and mediastinal air', 'Right-sided findings only', 'Clear chest X-ray', 'No specific findings',
 'B', 'Esophageal injury: suspect with left pneumo/hemothorax without rib fracture, pneumomediastinum, mediastinal widening, particulate matter in chest tube. Esophagram or esophagoscopy for diagnosis.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Tracheobronchial injury should be suspected when:',
 'Routine pneumothorax', 'Massive air leak with chest tube and persistent pneumothorax', 'Hemoptysis only', 'Normal findings', 'Rib fractures alone',
 'B', 'Tracheobronchial injury: massive persistent air leak, pneumothorax not responding to chest tube, subcutaneous emphysema, respiratory distress. Bronchoscopy for diagnosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Subcutaneous emphysema in chest trauma indicates:',
 'Minor soft tissue injury', 'Possible pneumothorax or tracheobronchial injury', 'Normal finding', 'Cardiac injury', 'Abdominal injury',
 'B', 'Subcutaneous emphysema: air in subcutaneous tissues. In trauma, suggests pneumothorax, tracheobronchial injury, or esophageal injury. Extent does not correlate with severity. Treat underlying cause.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Rib fractures in elderly patients are significant because:',
 'Always require surgery', 'Higher morbidity and mortality from pulmonary complications', 'No clinical significance', 'Heal faster than in young', 'Never need analgesia',
 'B', 'Elderly rib fractures: higher mortality (each additional rib fracture increases mortality 19% in elderly vs 5% in younger). Pneumonia, respiratory failure common. Aggressive pain control critical.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'First and second rib fractures indicate:',
 'Minor trauma', 'High-energy mechanism with risk of associated vascular and intrathoracic injuries', 'Pathological fracture', 'No additional concern', 'Osteoporosis',
 'B', 'First/second rib fractures: require significant force (protected by clavicle, scapula, muscles). Associated with brachial plexus, subclavian vessel injury, intrathoracic injuries. High index of suspicion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Lower rib fractures (9-12) should raise suspicion for:',
 'Pulmonary injury only', 'Associated abdominal injuries especially liver and spleen', 'Cardiac injury', 'Great vessel injury', 'Tracheobronchial injury',
 'B', 'Lower rib fractures: overlies abdominal organs. Right-sided: liver injury. Left-sided: spleen injury. Renal injuries possible. Evaluate for abdominal injury with CT if indicated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Pain control for rib fractures may include:',
 'Chest binding', 'Epidural analgesia intercostal nerve blocks and multimodal oral analgesia', 'Avoiding all medications', 'Strict bed rest only', 'Opioids only',
 'B', 'Rib fracture analgesia: multimodal approach (NSAIDs, acetaminophen, opioids), epidural (gold standard for multiple fractures), intercostal blocks, serratus plane block. Avoid binding.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Simple pneumothorax in trauma is treated with:',
 'Observation in all cases', 'Chest tube if symptomatic requiring positive pressure ventilation or greater than 15-20 percent', 'Thoracotomy', 'Needle aspiration only', 'Antibiotics',
 'B', 'Simple traumatic pneumothorax: small/asymptomatic may be observed in penetrating trauma. Chest tube for: symptomatic, >15-20%, going to OR, positive pressure ventilation, air transport.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Occult pneumothorax is:',
 'Not clinically significant', 'Pneumothorax seen on CT but not chest X-ray', 'Always requires chest tube', 'Never progresses', 'Only in penetrating trauma',
 'B', 'Occult pneumothorax: seen on CT, not on initial CXR. Many can be observed if not on mechanical ventilation. Place chest tube if going to OR or positive pressure ventilation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Retained hemothorax increases risk of:',
 'Better outcomes', 'Empyema and fibrothorax', 'Faster healing', 'No complications', 'Improved lung function',
 'B', 'Retained hemothorax: risk of empyema (infection) and fibrothorax (restrictive peel). Early complete drainage important. VATS for incomplete drainage or organized clot.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'VATS (Video-Assisted Thoracoscopic Surgery) for chest trauma is useful for:',
 'All chest injuries', 'Retained hemothorax persistent air leak and evaluation of diaphragm', 'Only rib fixation', 'Never indicated in trauma', 'Only for lung resection',
 'B', 'VATS indications in trauma: evacuation of retained hemothorax, evaluation and repair of diaphragm, management of persistent air leak, evaluation of pericardium, selected bleeding sources.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Chest wall stabilization (rib fixation) surgery may be considered for:',
 'All rib fractures', 'Flail chest not weaning from ventilator severe deformity or symptomatic non-union', 'Single rib fractures', 'Elderly patients always', 'Never beneficial',
 'B', 'Rib fixation indications: flail chest with failure to wean from ventilator, severe chest wall deformity, painful non-union, rib fractures requiring thoracotomy for other reasons.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic asphyxia results from:',
 'Airway obstruction', 'Severe thoracoabdominal compression with venous backflow', 'Cardiac contusion', 'Pulmonary contusion', 'Pneumothorax',
 'B', 'Traumatic asphyxia: severe compression (crush) causing acute superior vena cava hypertension with retrograde venous flow. Cyanosis, petechiae, subconjunctival hemorrhage of head/neck. Usually reversible.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Commotio cordis is:',
 'Myocardial contusion', 'Sudden cardiac death from ventricular fibrillation caused by non-penetrating chest impact', 'Cardiac tamponade', 'Aortic rupture', 'Rib fracture',
 'B', 'Commotio cordis: sudden cardiac death from VF triggered by non-penetrating blow to chest during vulnerable repolarization period (10-30 ms before T wave peak). Often in young athletes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004',
 'Penetrating chest trauma in the cardiac box without tamponade findings should:',
 'Be discharged home', 'Undergo evaluation with echocardiogram or pericardial window', 'Receive antibiotics only', 'Have immediate thoracotomy', 'Be observed without imaging',
 'B', 'Stable penetrating cardiac box injury: evaluation for pericardial blood. Bedside echo (FAST) initial screen. Subxiphoid pericardial window definitive if unclear. May need sternotomy/thoracotomy if positive.', 'medium', 'application');
