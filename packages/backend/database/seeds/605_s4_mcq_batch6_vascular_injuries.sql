-- Surgery 4 MCQ Question Bank - Batch 6
-- Section A: Vascular Surgery - Vascular Injuries
-- 40 Questions

-- Topic: Vascular Injuries
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000006-0000-0000-0000-000000000006', 'Vascular Injuries', 'a0000004-0000-0000-0000-000000000004', 'Traumatic vascular injuries - diagnosis and management', 6, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Hard signs of vascular injury include all EXCEPT:',
 'Active hemorrhage', 'Expanding hematoma', 'Bruit or thrill', 'Proximity to major vessel', 'Absent distal pulses',
 'D', 'Hard signs require immediate exploration: active hemorrhage, expanding hematoma, pulsatile bleeding, bruit/thrill, absent distal pulses, and signs of distal ischemia. Proximity alone is a soft sign.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Soft signs of vascular injury include:',
 'Pulsatile bleeding', 'Absent pulses', 'History of hemorrhage at scene with stable hematoma', 'Expanding hematoma', 'Bruit over injury',
 'C', 'Soft signs warrant investigation but not immediate surgery: history of hemorrhage (now controlled), proximity injury, small stable hematoma, reduced pulses, nerve deficit near vessels.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly injured artery in the body is:',
 'Carotid artery', 'Femoral artery', 'Brachial artery', 'Popliteal artery', 'Subclavian artery',
 'B', 'The femoral artery is the most commonly injured artery overall due to penetrating trauma, iatrogenic injury (catheterization), and exposure. Brachial is second most common.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Arterial injury associated with highest amputation rate is injury to the:',
 'Femoral artery', 'Popliteal artery', 'Brachial artery', 'Axillary artery', 'Tibial artery',
 'B', 'Popliteal artery injury has the highest amputation rate (25-40%) due to limited collateral circulation around the knee and often associated vein and nerve injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'The time limit for warm ischemia beyond which limb salvage becomes unlikely is:',
 '2 hours', '4 hours', '6-8 hours', '12 hours', '24 hours',
 'C', 'Warm ischemia time beyond 6-8 hours significantly reduces limb salvage. Muscle begins irreversible damage at 4-6 hours; complete necrosis by 8 hours of warm ischemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Knee dislocation is associated with popliteal artery injury in approximately:',
 '5 percent of cases', '15-20 percent of cases', '30-40 percent of cases', '60 percent of cases', '90 percent of cases',
 'C', 'Popliteal artery injury occurs in 30-40% of knee dislocations. All knee dislocations require vascular assessment with ABI and consideration of CTA even after reduction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'The Mangled Extremity Severity Score (MESS) considers all EXCEPT:',
 'Skeletal and soft tissue injury', 'Limb ischemia', 'Shock', 'Age', 'Duration of symptoms',
 'E', 'MESS components: skeletal/soft tissue injury, limb ischemia (time-weighted), shock, and age. A score of 7 or greater predicts amputation.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Intimal flap from blunt arterial injury is best diagnosed by:',
 'Clinical examination', 'Plain radiograph', 'CT angiography or arteriography', 'D-dimer', 'Ultrasound only',
 'C', 'Intimal injuries (flap, dissection) may not cause immediate ischemia. CTA or arteriography is needed for diagnosis. Delayed thrombosis can occur if untreated.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Temporary vascular shunting is used in damage control to:',
 'Permanently repair the vessel', 'Restore perfusion while addressing life-threatening injuries', 'Replace the need for definitive repair', 'Prevent compartment syndrome', 'Avoid anticoagulation',
 'B', 'Temporary shunts (e.g., Sundt, Argyle) restore flow during damage control resuscitation, allowing treatment of other life-threatening injuries before definitive vascular repair.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Primary repair of arterial injury is preferred when:',
 'There is significant vessel loss', 'Clean wound with minimal tissue loss and no tension', 'Contaminated wound', 'Combined arterial and venous injury', 'All arterial injuries',
 'B', 'Primary repair (lateral suture or end-to-end anastomosis) is preferred for clean wounds with minimal vessel loss and tension-free repair. Otherwise, interposition grafting is needed.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'The preferred conduit for traumatic arterial repair is:',
 'PTFE graft', 'Dacron graft', 'Reversed saphenous vein', 'Umbilical vein', 'Arterial homograft',
 'C', 'Reversed saphenous vein is preferred for traumatic arterial repair due to infection resistance and excellent patency. Prosthetic grafts are used when vein is unavailable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Venous repair in combined arteriovenous injury:',
 'Should never be attempted', 'Should be repaired if feasible to improve arterial repair patency', 'Is always mandatory', 'Should be done before arterial repair', 'Is only cosmetic',
 'B', 'Venous repair, when feasible, improves arterial patency rates by reducing venous hypertension. However, in damage control or unstable patients, ligation may be necessary.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic arteriovenous fistula develops when:',
 'Artery is completely transected', 'Artery and adjacent vein are injured with communication', 'Only vein is injured', 'Artery goes into spasm', 'Vessel is ligated',
 'B', 'AVF develops when injured artery and vein communicate, either acutely or from false aneurysm eroding into adjacent vein. Presents with bruit, thrill, and venous hypertension signs.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Nicoladoni-Branham sign in arteriovenous fistula is:',
 'Tachycardia with fistula compression', 'Bradycardia and BP increase with fistula compression', 'Bruit disappearance with elevation', 'Pallor of limb', 'Absent pulses',
 'B', 'Nicoladoni-Branham sign: compression of AVF causes bradycardia (reflex) and blood pressure increase due to increased peripheral resistance when shunt is occluded.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'False aneurysm (pseudoaneurysm) following arterial injury:',
 'Has all three arterial wall layers', 'Is contained by surrounding tissue only', 'Always resolves spontaneously', 'Is only venous', 'Never ruptures',
 'B', 'Pseudoaneurysm is contained hemorrhage communicating with arterial lumen through wall defect, contained by surrounding tissue/thrombus only. True aneurysm has all wall layers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Femoral pseudoaneurysm from catheterization may be treated with:',
 'Immediate surgery always', 'Ultrasound-guided thrombin injection', 'Observation only', 'Aspirin', 'Anticoagulation',
 'B', 'Small femoral pseudoaneurysms (<2-3cm) may be observed. Larger ones are treated with ultrasound-guided thrombin injection (90% success) or compression. Surgery for failed treatment.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Subclavian artery injury is commonly caused by:',
 'Blunt abdominal trauma', 'Clavicle fracture or penetrating trauma', 'Hip fracture', 'Ankle dislocation', 'Wrist fracture',
 'B', 'Subclavian artery injury is associated with clavicle fractures (especially medial third), first rib fractures, and penetrating trauma. High mortality due to difficult access.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Axillary artery injury is commonly associated with:',
 'Pelvic fracture', 'Anterior shoulder dislocation', 'Knee dislocation', 'Ankle fracture', 'Mandible fracture',
 'B', 'Axillary artery injury is associated with anterior shoulder dislocation (especially in elderly), proximal humerus fractures, and penetrating trauma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Supracondylar humerus fracture in children commonly injures the:',
 'Radial artery', 'Brachial artery', 'Ulnar artery', 'Axillary artery', 'Subclavian artery',
 'B', 'Supracondylar humerus fracture commonly injures the brachial artery due to proximity. The median nerve is also at risk. Vascular assessment is mandatory.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Volkmann ischemic contracture results from:',
 'Nerve injury', 'Untreated compartment syndrome of forearm', 'Tendon rupture', 'Bone malunion', 'Joint stiffness',
 'B', 'Volkmann contracture is the end result of untreated forearm compartment syndrome causing muscle necrosis and fibrosis, leading to flexion contracture of wrist and fingers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Blunt carotid artery injury is associated with:',
 'Isolated facial fractures', 'Cervical spine fracture and basilar skull fracture', 'Clavicle fracture only', 'Mandible fracture only', 'Rib fractures',
 'B', 'Blunt carotid injury (BCVI) is associated with cervical spine fractures (especially involving transverse foramen), basilar skull fractures, and severe facial trauma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Screening for blunt cerebrovascular injury is recommended using:',
 'Plain skull radiograph', 'CT angiography of neck', 'MRI brain', 'Carotid duplex only', 'D-dimer',
 'B', 'CTA of the neck is the screening modality for BCVI in high-risk trauma patients. Catheter angiography is the gold standard but CTA has good sensitivity.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Zone II neck injury refers to the area:',
 'Below cricoid to sternal notch', 'From cricoid to angle of mandible', 'Above angle of mandible', 'Posterior neck', 'Lateral neck only',
 'B', 'Zone II extends from cricoid cartilage to angle of mandible - the most accessible zone. Zone I is below cricoid; Zone III is above mandible angle.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'In stable penetrating Zone II neck injury, current management is:',
 'Mandatory exploration for all', 'Selective management with CTA and endoscopy', 'Observation only', 'Immediate intubation', 'Tracheostomy for all',
 'B', 'Selective non-operative management with CTA (vessels), esophagoscopy/swallow (esophagus), and bronchoscopy (airway) has replaced mandatory exploration for stable Zone II injuries.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic thoracic aortic injury most commonly occurs at:',
 'Aortic root', 'Ascending aorta', 'Aortic isthmus just distal to left subclavian', 'Descending thoracic aorta', 'Abdominal aorta',
 'C', 'The aortic isthmus (just distal to left subclavian at ligamentum arteriosum) is the most common site of blunt traumatic aortic injury due to tethering and deceleration forces.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'The CXR finding suggestive of traumatic aortic injury is:',
 'Normal mediastinum', 'Widened mediastinum greater than 8 cm', 'Pneumothorax only', 'Cardiomegaly', 'Clear lung fields',
 'B', 'Widened mediastinum (>8cm or >25% thoracic width) is the most sensitive CXR finding. Others: loss of aortic knob, left apical cap, depression of left main bronchus.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Definitive diagnosis of traumatic aortic injury is made by:',
 'Chest X-ray', 'CT angiography', 'ECG', 'Echocardiography alone', 'Physical examination',
 'B', 'CT angiography is the diagnostic modality of choice for traumatic aortic injury. It has replaced catheter aortography as the gold standard with sensitivity/specificity approaching 100%.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Thoracic endovascular aortic repair (TEVAR) for traumatic aortic injury:',
 'Is contraindicated in trauma', 'Has become first-line treatment in suitable anatomy', 'Has higher mortality than open repair', 'Cannot be performed urgently', 'Requires sternotomy',
 'B', 'TEVAR has become first-line treatment for traumatic aortic injury with suitable anatomy. It has lower mortality and morbidity compared to open repair, especially in polytrauma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'In trauma with combined orthopedic and vascular injury, which should be addressed first:',
 'Always orthopedic fixation first', 'Vascular repair first then stabilize', 'Neither - observe', 'External fixation then vascular repair then formal fixation', 'Amputation',
 'D', 'The sequence is typically: temporary skeletal stabilization (external fixator) to provide stable platform, then vascular repair, then definitive orthopedic fixation to avoid disrupting repair.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Endovascular management of traumatic arterial injury offers:',
 'No benefit over surgery', 'Covered stent placement for suitable lesions', 'Only diagnostic capability', 'Higher bleeding risk', 'Longer hospital stay',
 'B', 'Endovascular techniques (covered stents, coil embolization) offer minimally invasive options for suitable traumatic arterial injuries, especially in hemodynamically stable patients.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Abdominal vascular injury should be suspected with:',
 'Isolated limb fracture', 'Unexplained hypotension with abdominal trauma', 'Head injury only', 'Stable vital signs only', 'Chest trauma only',
 'B', 'Unexplained hypotension or ongoing transfusion requirement with abdominal trauma should raise suspicion for major vascular injury (aorta, IVC, iliac vessels).', 'easy', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Damage control surgery in vascular trauma involves:',
 'Complete definitive repair always', 'Hemorrhage control with shunting and temporary closure', 'Delayed exploration', 'Conservative management only', 'Primary amputation',
 'B', 'Damage control: rapid hemorrhage control (ligation, shunting), abbreviated surgery, temporary closure, ICU resuscitation (correct coagulopathy, acidosis, hypothermia), then definitive repair.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'The lethal triad in trauma includes:',
 'Hyperthermia, alkalosis, coagulopathy', 'Hypothermia, acidosis, coagulopathy', 'Hypertension, tachycardia, fever', 'Bradycardia, hypotension, hypothermia', 'Anemia, hypoxia, hypotension',
 'B', 'The lethal triad (trauma triad of death): hypothermia, acidosis, and coagulopathy. Each worsens the others, and breaking this cycle is the goal of damage control surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Iatrogenic vascular injury is most commonly associated with:',
 'Appendectomy', 'Cardiac catheterization and endovascular procedures', 'Thyroidectomy', 'Hernia repair', 'Cholecystectomy',
 'B', 'Cardiac catheterization, angiography, and endovascular procedures are the most common causes of iatrogenic vascular injury (femoral artery pseudoaneurysm, dissection, AVF).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Intraoperative injury to the iliac vein during pelvic surgery is best managed by:',
 'Ignoring it', 'Direct pressure and careful repair', 'Ligation always', 'Completing the procedure first', 'Closing the abdomen',
 'B', 'Direct pressure controls hemorrhage, then careful repair with non-absorbable suture. May need extension of incision, proper exposure, and vascular assistance. Ligation is last resort.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Arterial spasm following injury:',
 'Never occurs', 'Can cause false reassurance with normal pulses initially', 'Always leads to thrombosis', 'Is permanent', 'Indicates irreversible damage',
 'B', 'Arterial spasm can initially maintain flow and pulses, providing false reassurance. As spasm relaxes, underlying intimal injury may cause thrombosis. Vigilant reassessment is needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Prophylactic fasciotomy should be considered when:',
 'All vascular repairs', 'Ischemia time greater than 4-6 hours or combined arteriovenous injury', 'Only in upper limb', 'Never needed', 'Only in children',
 'B', 'Prophylactic fasciotomy should be considered with prolonged ischemia (>4-6 hours), combined arteriovenous injury, massive soft tissue injury, or high compartment pressures at surgery.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000006-0000-0000-0000-000000000006', 'a0000004-0000-0000-0000-000000000004',
 'Completion angiography after vascular repair:',
 'Is never needed', 'Confirms adequacy of repair and distal runoff', 'Should be avoided', 'Is only done the next day', 'Causes more harm than benefit',
 'B', 'Intraoperative completion angiography or duplex confirms technical adequacy of repair, distal runoff, and absence of residual injury. It identifies problems requiring revision before closure.', 'medium', 'application');
