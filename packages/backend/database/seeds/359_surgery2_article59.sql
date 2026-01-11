-- Article 59: Open Heart Surgery Basics
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000059-0000-0000-0000-000000000059'::uuid, 'introduction', 1, 'Introduction to Open Heart Surgery', 'Open heart surgery involves operations on the heart or great vessels performed while blood circulation and oxygenation are maintained by cardiopulmonary bypass (CPB). Common procedures include coronary artery bypass grafting (CABG), valve repair/replacement, and repair of congenital heart defects. The development of the heart-lung machine by Gibbon in 1953 revolutionized cardiac surgery. Modern cardiac surgery has evolved to include minimally invasive approaches, beating heart surgery (off-pump), and transcatheter interventions. Understanding the principles of CPB, myocardial protection, and perioperative management is essential for surgeons involved in cardiac surgical care.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 'content', 2, 'Cardiopulmonary Bypass', 'CARDIOPULMONARY BYPASS (CPB):
Function: Temporarily takes over heart and lung function
Components:
- Venous cannula: Drains blood from right atrium/vena cavae
- Reservoir: Collects venous blood
- Oxygenator: Gas exchange (replaces lung function)
- Heat exchanger: Temperature control
- Pump: Propels blood (roller or centrifugal)
- Arterial filter: Removes debris, air
- Arterial cannula: Returns blood to ascending aorta

ANTICOAGULATION:
Heparin: 300-400 units/kg before CPB
ACT (Activated Clotting Time): Target greater than 480 seconds
Protamine: Reverses heparin post-CPB (1mg per 100 units heparin)
Protamine reactions: Hypotension, pulmonary hypertension, anaphylaxis

PRIMING:
Circuit primed with crystalloid (hemodilution)
Hematocrit typically drops to 20-25% during CPB
Blood transfusion if needed

TYPES OF CPB CIRCUITS:
Full bypass: Complete circulatory support
Partial bypass: Heart continues ejecting
Beating heart (off-pump): No CPB, heart stabilizers used

MONITORING DURING CPB:
Arterial pressure (MAP 50-80 mmHg)
Venous oxygen saturation
Blood gases
Temperature
Urine output'),
('d0000059-0000-0000-0000-000000000059'::uuid, 'content', 3, 'Myocardial Protection', 'CARDIOPLEGIA:
Solution that arrests the heart and protects myocardium
Goals:
- Rapid diastolic arrest
- Hypothermia (reduce metabolic demand)
- Substrate provision
- Buffer acidosis

TYPES OF CARDIOPLEGIA:
By temperature:
- Cold (4-8 degrees C) - most common
- Warm (37 degrees C) - terminal warm shot
- Tepid (29 degrees C)

By composition:
- Crystalloid: St Thomas solution, Bretschneider
- Blood cardioplegia: More physiologic, better oxygen delivery

By route:
- Antegrade: Aortic root or coronary ostia
- Retrograde: Coronary sinus (useful in aortic regurgitation)
- Combined approach

MECHANISM:
High potassium (15-25 mEq/L) arrests heart in diastole
Reduces oxygen consumption by 90%
Hypothermia further reduces metabolic demand

MYOCARDIAL PROTECTION STRATEGIES:
Topical hypothermia (ice slush)
Systemic hypothermia
Intermittent cardioplegia (every 20-30 minutes)
Venting left ventricle (prevents distension)

REPERFUSION INJURY:
Damage occurring when blood flow restored
Calcium overload, free radicals
Prevention: Controlled reperfusion, substrate enhancement'),
('d0000059-0000-0000-0000-000000000059'::uuid, 'content', 4, 'Common Procedures and Complications', 'CORONARY ARTERY BYPASS GRAFTING (CABG):
Indications:
- Left main disease
- Triple vessel disease (especially with diabetes, LV dysfunction)
- Failed PCI
- Angina refractory to medical therapy

Conduits:
- Left internal mammary artery (LIMA) to LAD: Gold standard, 90% patency at 10 years
- Saphenous vein grafts: 50-60% patency at 10 years
- Radial artery, right IMA

VALVE SURGERY:
Repair vs Replacement
Repair preferred when possible (especially mitral)
Replacement options:
- Mechanical: Durable, requires lifelong anticoagulation (INR 2.5-3.5)
- Bioprosthetic: Limited durability (10-15 years), no anticoagulation
Young patients: mechanical
Elderly/contraindication to anticoagulation: bioprosthetic

COMPLICATIONS:
Bleeding: Explore for surgical bleeding, coagulopathy
Cardiac:
- Low cardiac output syndrome
- Arrhythmias (AF most common, 30-40%)
- Perioperative MI
- Cardiac tamponade

Neurological:
- Stroke (1-3%)
- Encephalopathy, delirium
- Related to emboli, hypoperfusion

Renal: Acute kidney injury (CPB-related)
Pulmonary: Atelectasis, pleural effusion, ARDS
Infection: Sternal wound infection, mediastinitis (1-2%)
Systemic inflammatory response (SIRS): Due to CPB, blood-air interface'),
('d0000059-0000-0000-0000-000000000059'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'CPB: takes over heart and lung function. Heparin before CPB, protamine to reverse. ACT greater than 480 seconds. Cardioplegia: high potassium arrests heart in diastole. LIMA to LAD: gold standard in CABG (90% 10-year patency). AF most common post-op arrhythmia (30-40%). Mechanical valves: lifelong anticoagulation. Bioprosthetic: limited durability, no anticoagulation.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 'key_points', 6, 'Key Points Summary', 'CPB components: venous cannula, oxygenator, pump, arterial cannula. Heparin/protamine for anticoagulation management. Cardioplegia: cold, high potassium, arrests heart. CABG: LIMA-LAD gold standard. Valve replacement: mechanical (anticoagulation) vs bioprosthetic. Common complications: bleeding, AF, stroke, AKI, infection. Off-pump surgery avoids CPB complications.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000059-0000-0000-0000-000000000059'::uuid, 1, 'The heart-lung machine was developed by:', 'DeBakey', 'Gibbon', 'Cooley', 'Barnard', 'Favaloro', 'B', 'John Gibbon developed the first successful heart-lung machine used in 1953.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 2, 'During cardiopulmonary bypass, arterial blood is returned via:', 'Right atrium', 'Pulmonary artery', 'Ascending aorta', 'Femoral vein', 'Superior vena cava', 'C', 'Oxygenated blood from the CPB circuit is returned to the ascending aorta via the arterial cannula.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 3, 'Anticoagulation during CPB is achieved with:', 'Warfarin', 'Heparin', 'Aspirin', 'Clopidogrel', 'Enoxaparin', 'B', 'Unfractionated heparin (300-400 units/kg) is used for anticoagulation during CPB.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 4, 'Target ACT during cardiopulmonary bypass is:', 'Greater than 180 seconds', 'Greater than 250 seconds', 'Greater than 480 seconds', 'Greater than 600 seconds', 'Less than 100 seconds', 'C', 'ACT (Activated Clotting Time) target during CPB is greater than 480 seconds.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 5, 'Heparin is reversed post-CPB using:', 'Vitamin K', 'Protamine', 'FFP', 'Platelets', 'Tranexamic acid', 'B', 'Protamine sulfate reverses heparin at approximately 1mg per 100 units of heparin.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 6, 'Cardioplegia achieves cardiac arrest by:', 'Low calcium', 'High potassium', 'High sodium', 'Low magnesium', 'High glucose', 'B', 'High potassium concentration (15-25 mEq/L) in cardioplegia arrests the heart in diastole.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 7, 'Cold cardioplegia temperature is typically:', '37 degrees C', '28-30 degrees C', '20-25 degrees C', '4-8 degrees C', '0 degrees C', 'D', 'Cold cardioplegia is typically delivered at 4-8 degrees Celsius to reduce myocardial metabolic demand.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 8, 'Retrograde cardioplegia is delivered via the:', 'Aortic root', 'Coronary ostia', 'Coronary sinus', 'Left ventricle', 'Pulmonary artery', 'C', 'Retrograde cardioplegia is delivered through the coronary sinus, useful when aortic regurgitation prevents antegrade delivery.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 9, 'Gold standard conduit for left anterior descending artery bypass is:', 'Saphenous vein', 'Left internal mammary artery (LIMA)', 'Radial artery', 'Right internal mammary artery', 'Gastroepiploic artery', 'B', 'LIMA to LAD is the gold standard with 90% patency at 10 years.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 10, 'Ten-year patency rate of saphenous vein grafts is approximately:', '20-30%', '50-60%', '80-90%', '95%', '100%', 'B', 'Saphenous vein grafts have approximately 50-60% patency at 10 years, inferior to arterial grafts.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 11, 'Mechanical valve prosthesis requires:', 'No anticoagulation', 'Aspirin only', 'Lifelong warfarin anticoagulation', 'Anticoagulation for 6 months', 'Clopidogrel only', 'C', 'Mechanical valves require lifelong warfarin anticoagulation (target INR 2.5-3.5).'),
('d0000059-0000-0000-0000-000000000059'::uuid, 12, 'Bioprosthetic valve is preferred in:', 'Young patients', 'Elderly patients or those with contraindication to anticoagulation', 'Athletes', 'Patients requiring long-term durability', 'Children', 'B', 'Bioprosthetic valves are preferred in elderly patients or those who cannot tolerate anticoagulation.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 13, 'Most common arrhythmia after open heart surgery is:', 'Ventricular tachycardia', 'Atrial fibrillation', 'Complete heart block', 'Ventricular fibrillation', 'Sinus bradycardia', 'B', 'Atrial fibrillation occurs in 30-40% of patients after cardiac surgery, most common post-op arrhythmia.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 14, 'Stroke rate after CABG is approximately:', '0.1%', '1-3%', '10%', '20%', '0.01%', 'B', 'Stroke occurs in approximately 1-3% of patients after CABG, related to emboli and hypoperfusion.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 15, 'Off-pump CABG refers to:', 'Surgery without anesthesia', 'Surgery without cardiopulmonary bypass', 'Percutaneous intervention', 'Robotic surgery', 'Minimally invasive surgery', 'B', 'Off-pump CABG is performed on the beating heart without cardiopulmonary bypass using stabilizers.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 16, 'Component of CPB circuit responsible for gas exchange is:', 'Reservoir', 'Pump', 'Oxygenator', 'Heat exchanger', 'Arterial filter', 'C', 'The oxygenator is responsible for gas exchange, taking over lung function during CPB.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 17, 'Protamine reaction may cause:', 'Hypertension', 'Pulmonary hypertension and hypotension', 'Bradycardia only', 'Hyperglycemia', 'Hyperkalemia', 'B', 'Protamine reactions can cause systemic hypotension, pulmonary hypertension, and anaphylaxis.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 18, 'Indications for CABG include all EXCEPT:', 'Left main coronary disease', 'Single vessel disease responding to medical therapy', 'Triple vessel disease with diabetes', 'Failed PCI', 'Refractory angina', 'B', 'Single vessel disease responding to medical therapy is not an indication for CABG. Left main, triple vessel with diabetes, failed PCI are indications.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 19, 'Hemodilution during CPB results in hematocrit of approximately:', '5-10%', '20-25%', '35-40%', '45-50%', 'No change', 'B', 'Crystalloid priming causes hemodilution with hematocrit dropping to approximately 20-25% during CPB.'),
('d0000059-0000-0000-0000-000000000059'::uuid, 20, 'Sternal wound infection and mediastinitis occurs in approximately:', '0.1%', '1-2%', '10%', '20%', 'Never occurs', 'B', 'Sternal wound infection and mediastinitis occur in approximately 1-2% of cardiac surgery patients.');
