-- Surgery 2 Articles 11-14: Trauma Section Part 1

-- ARTICLE 11: Management of Trauma Patients
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000011-0000-0000-0000-000000000011'::uuid, 'introduction', 1, 'Introduction to Trauma Management', 
'Trauma is the leading cause of death in people under 44 years and a major cause of morbidity worldwide. The systematic approach to trauma care saves lives.

**Trauma Epidemiology**
- Third leading cause of death overall
- Leading cause of death ages 1-44
- Road traffic accidents, falls, violence, burns
- "Trimodal death distribution"

**Trimodal Death Distribution**
1. **Immediate (50%)**: Within seconds to minutes
   - Massive hemorrhage, severe brain injury
   - Prevention focus: Safety measures, seatbelts, helmets
   
2. **Early (30%)**: Within minutes to hours (Golden Hour)
   - Hemorrhage, respiratory failure
   - Improved outcomes with rapid assessment and treatment
   
3. **Late (20%)**: Days to weeks
   - Sepsis, multi-organ failure
   - Prevented by optimal initial and ongoing care

**Golden Hour Concept**
- Critical first 60 minutes after injury
- Rapid assessment and definitive care improves survival
- "Platinum 10 minutes" - even more critical for hemorrhage control'),

('d0000011-0000-0000-0000-000000000011'::uuid, 'content', 2, 'Primary Survey (ABCDE)',
'The primary survey identifies life-threatening conditions requiring immediate intervention.

**A - Airway with Cervical Spine Protection**
Assessment:
- Can patient speak clearly?
- Look for obstruction (blood, vomit, foreign body, edema)
- Listen for stridor, gurgling, hoarseness

Interventions:
- Jaw thrust (NOT head tilt in trauma)
- Suction
- Oropharyngeal/nasopharyngeal airway
- Endotracheal intubation
- Surgical airway (cricothyroidotomy)

C-spine protection:
- Manual in-line stabilization
- Hard collar application
- Assume injury until cleared

**B - Breathing and Ventilation**
Assessment:
- Respiratory rate and effort
- Chest expansion (symmetry)
- Tracheal position
- Percussion and auscultation

Life-threatening conditions:
- Tension pneumothorax
- Open pneumothorax
- Massive hemothorax
- Flail chest

**C - Circulation with Hemorrhage Control**
Assessment:
- Pulse (rate, quality, regularity)
- Blood pressure
- Capillary refill
- Skin color and temperature
- External hemorrhage

Interventions:
- Direct pressure on bleeding
- Two large-bore IV cannulae
- Crystalloid infusion (warm)
- Blood transfusion if needed
- Tourniquet for limb hemorrhage

**D - Disability (Neurological)**
- Glasgow Coma Scale (GCS)
- Pupil size and reactivity
- Lateralizing signs
- Spinal cord assessment

**E - Exposure/Environment**
- Remove all clothing for examination
- Log roll for back examination
- Prevent hypothermia (warm blankets, warmed fluids)'),

('d0000011-0000-0000-0000-000000000011'::uuid, 'content', 3, 'Secondary Survey and Adjuncts',
'The secondary survey is a head-to-toe evaluation performed after the primary survey is complete and resuscitation initiated.

**Adjuncts to Primary Survey**
- ECG monitoring
- Pulse oximetry
- Urinary catheter (after excluding urethral injury)
- Nasogastric tube (after excluding base of skull fracture)
- Chest and pelvis X-rays
- FAST ultrasound (Focused Assessment with Sonography for Trauma)

**FAST Examination**
Four views:
1. Right upper quadrant (hepatorenal recess - Morison pouch)
2. Left upper quadrant (splenorenal recess)
3. Suprapubic (pelvis)
4. Subxiphoid (pericardial)

Detects: Free fluid (blood) in peritoneum/pericardium
Extended FAST (eFAST): Includes lung sliding for pneumothorax

**Secondary Survey Components**
- AMPLE history
- Head-to-toe examination
- Neurological examination
- Complete log roll

**AMPLE History**
- **A**llergies
- **M**edications
- **P**ast medical history
- **L**ast meal
- **E**vents leading to injury

**Documentation**
- Mechanism of injury
- Time of injury
- Interventions performed
- Response to treatment'),

('d0000011-0000-0000-0000-000000000011'::uuid, 'content', 4, 'Hemorrhagic Shock Classes',
'**Classification of Hemorrhagic Shock**

| Class | Blood Loss | Heart Rate | BP | RR | Mental Status | Urine Output |
|-------|------------|------------|-----|-----|---------------|--------------|
| I | <15% (<750mL) | <100 | Normal | 14-20 | Normal | >30mL/hr |
| II | 15-30% (750-1500) | 100-120 | Normal | 20-30 | Anxious | 20-30mL/hr |
| III | 30-40% (1500-2000) | 120-140 | Decreased | 30-40 | Confused | 5-15mL/hr |
| IV | >40% (>2000mL) | >140 | Very low | >40 | Unconscious | Minimal |

**Management Principles**
- Stop the bleeding (surgery, interventional radiology)
- Replace volume
- Massive transfusion protocol (MTP) for severe hemorrhage
- Damage control surgery for unstable patients

**Massive Transfusion Protocol**
- Definition: >10 units PRBCs in 24 hours
- 1:1:1 ratio (PRBC:FFP:Platelets) based on evidence
- Permissive hypotension (SBP 80-90 mmHg) until bleeding controlled
- Avoid crystalloid overuse
- Treat coagulopathy early

**Resuscitative Endpoints**
- Urine output >0.5 mL/kg/hr
- Lactate clearance
- Base deficit improvement
- Resolution of tachycardia'),

('d0000011-0000-0000-0000-000000000011'::uuid, 'key_points', 5, 'Key Points',
'1. Trauma: Leading cause of death ages 1-44; trimodal death distribution
2. Golden Hour: Critical first 60 minutes - rapid assessment saves lives
3. Primary Survey: ABCDE - identify and treat life-threatening conditions
4. Airway: Jaw thrust with C-spine protection; never head tilt in trauma
5. Tension pneumothorax: Needle decompression, then chest drain
6. FAST: Detects free fluid in abdomen and pericardium
7. Hemorrhagic shock: Class I-IV based on blood loss and physiological response
8. Class III/IV shock requires blood transfusion
9. Massive transfusion: 1:1:1 ratio (PRBC:FFP:Platelets)
10. Secondary survey only after primary survey complete and patient stable');

-- ARTICLE 12: ATLS Principles and Protocols
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000012-0000-0000-0000-000000000012'::uuid, 'introduction', 1, 'ATLS Principles', 
'Advanced Trauma Life Support (ATLS) is a standardized approach to trauma care developed by the American College of Surgeons. It provides a systematic methodology applicable worldwide.

**Core ATLS Principles**
1. Treat the greatest threat to life first
2. Lack of definitive diagnosis should not prevent treatment
3. A detailed history is not essential for initial evaluation
4. The most experienced person should manage the airway

**ATLS Approach**
1. Preparation (pre-hospital notification, team preparation)
2. Triage
3. Primary survey with simultaneous resuscitation
4. Adjuncts to primary survey
5. Consider need for transfer
6. Secondary survey
7. Re-evaluation
8. Definitive care

**Team Approach**
- Trauma team leader
- Airway physician
- Primary surveyor
- Secondary surveyor
- Procedure physician
- Nursing team
- Documentation'),

('d0000012-0000-0000-0000-000000000012'::uuid, 'content', 2, 'Airway Management in Trauma',
'**Indications for Definitive Airway**
- Apnea
- GCS ≤8
- Unable to protect airway
- Impending airway obstruction
- Severe facial injury
- Inhalation injury

**Airway Options**
1. **Basic maneuvers**: Jaw thrust, chin lift (NOT head tilt in trauma)
2. **Airway adjuncts**: OPA, NPA
3. **Supraglottic devices**: LMA (temporary)
4. **Endotracheal intubation**: Gold standard definitive airway
5. **Surgical airway**: Cricothyroidotomy

**Rapid Sequence Intubation (RSI)**
- Preoxygenation
- Induction agent (ketamine preferred in hypotension)
- Neuromuscular blocker (succinylcholine or rocuronium)
- Manual in-line stabilization
- Direct laryngoscopy or video laryngoscopy
- Tube confirmation (EtCO2, auscultation, CXR)

**Surgical Airway (Cricothyroidotomy)**
Indications:
- Cannot intubate, cannot ventilate
- Massive facial trauma
- Airway obstruction above cricoid

Technique:
- Identify cricothyroid membrane
- Horizontal incision
- Insert tracheostomy tube or ETT
- Confirm placement

Contraindicated: Children <12 years (needle cricothyroidotomy preferred)'),

('d0000012-0000-0000-0000-000000000012'::uuid, 'content', 3, 'Breathing Emergencies',
'**Tension Pneumothorax**
Pathophysiology: Air enters pleural space with each breath but cannot escape
Clinical features:
- Respiratory distress
- Tracheal deviation (away from affected side)
- Absent breath sounds
- Distended neck veins
- Hypotension, tachycardia

Treatment:
- Immediate needle decompression (2nd ICS, MCL) - do NOT wait for X-ray
- Followed by chest drain (5th ICS, anterior axillary line)

**Open Pneumothorax (Sucking Chest Wound)**
Wound acts as one-way valve
Treatment:
- Three-sided occlusive dressing (allows air out, prevents entry)
- Chest drain away from wound

**Massive Hemothorax**
Definition: >1500mL blood or 200mL/hr ongoing
Clinical features:
- Dullness to percussion
- Decreased breath sounds
- Shock

Treatment:
- Large-bore chest drain (28-32Fr)
- Autotransfusion if available
- Thoracotomy if: >1500mL immediately or >200mL/hr for 2-4 hours

**Flail Chest**
Definition: 3+ consecutive ribs fractured in 2+ places
Paradoxical movement
Main problem: Underlying pulmonary contusion
Treatment: Pain control, consider intubation if respiratory failure'),

('d0000012-0000-0000-0000-000000000012'::uuid, 'content', 4, 'Transfer and Definitive Care',
'**Indications for Transfer to Trauma Center**
- Mechanism: High-speed RTA, ejection, falls >6m, pedestrian vs vehicle
- Anatomy: Penetrating injury head/neck/torso, flail chest, unstable pelvis
- Physiology: GCS ≤14, SBP <90, RR <10 or >29

**Transfer Preparation**
- Stabilize before transfer (definitive airway if needed)
- Two large IV lines secured
- Chest drains if indicated
- Cervical spine immobilization
- Documentation and communication
- Blood products if needed

**Damage Control Surgery**
Philosophy: Abbreviated surgery to control hemorrhage and contamination, defer definitive repair

Indications:
- Lethal triad: Hypothermia (<35°C), acidosis (pH <7.2), coagulopathy
- Hemodynamic instability
- Non-surgical bleeding despite transfusion

Stages:
1. Abbreviated surgery (hemorrhage control, contamination control)
2. ICU resuscitation (correct triad)
3. Planned re-operation for definitive repair

Techniques:
- Packing for liver hemorrhage
- Temporary vascular shunts
- Bowel stapling without anastomosis
- Temporary abdominal closure

**Damage Control Resuscitation**
- Permissive hypotension (SBP 80-90)
- Minimize crystalloid
- Early blood products (1:1:1)
- Early tranexamic acid
- Prevent/treat hypothermia'),

('d0000012-0000-0000-0000-000000000012'::uuid, 'key_points', 5, 'Key Points',
'1. ATLS: Standardized systematic approach - treat greatest threat first
2. GCS ≤8 requires definitive airway
3. Tension pneumothorax: Clinical diagnosis - needle decompress immediately
4. Open pneumothorax: Three-sided dressing, then chest drain
5. Massive hemothorax >1500mL or >200mL/hr requires thoracotomy consideration
6. Flail chest: Underlying pulmonary contusion is the main problem
7. Damage control surgery: Control hemorrhage, defer definitive repair
8. Lethal triad: Hypothermia, acidosis, coagulopathy
9. Permissive hypotension until surgical control achieved
10. Transfer to trauma center for significant mechanism or injury');

-- ARTICLE 13: Abdominal Trauma
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000013-0000-0000-0000-000000000013'::uuid, 'introduction', 1, 'Introduction to Abdominal Trauma', 
'Abdominal trauma is a significant cause of morbidity and mortality. Injuries may be occult, making clinical assessment and appropriate investigation crucial.

**Classification**
1. **Blunt Trauma** (80% in civilian practice)
   - Motor vehicle accidents
   - Falls
   - Assaults
   - Sports injuries

2. **Penetrating Trauma** (20% in civilian practice)
   - Stab wounds
   - Gunshot wounds
   - Impalement

**Commonly Injured Organs**
Blunt trauma: Spleen (most common), liver, kidney
Penetrating trauma: Small bowel (most common), liver, colon

**Mechanisms of Injury**
Blunt:
- Compression/crushing
- Deceleration (shearing at fixed points)
- Burst injury (hollow viscus)

Penetrating:
- Low energy (stab) - local injury
- High energy (gunshot) - cavitation and distant injury'),

('d0000013-0000-0000-0000-000000000013'::uuid, 'content', 2, 'Assessment of Abdominal Trauma',
'**Clinical Examination**
May be unreliable due to:
- Altered consciousness
- Spinal cord injury
- Distracting injuries
- Intoxication

Signs of peritonitis: Tenderness, guarding, rigidity, absent bowel sounds

**Adjuncts to Assessment**

**FAST Ultrasound**
- Rapid, bedside, repeatable
- Sensitivity 85-95% for significant fluid
- Limited in hollow viscus injury, retroperitoneum, obese patients
- Positive FAST in unstable patient → immediate laparotomy

**CT Scan (Stable Patients)**
- Gold standard for solid organ injury
- Can grade injuries
- Identifies retroperitoneal injury
- Requires hemodynamic stability

**Diagnostic Peritoneal Lavage (DPL)**
Less used now but still valuable when CT unavailable
Positive if:
- >10mL gross blood on aspiration
- RBC >100,000/mm³
- WBC >500/mm³
- Bile, bacteria, food particles

**Mandatory Laparotomy Indications**
1. Hemodynamic instability with positive FAST
2. Peritonitis
3. Evisceration
4. Diaphragm injury
5. Free air on imaging
6. Gunshot wound traversing peritoneum'),

('d0000013-0000-0000-0000-000000000013'::uuid, 'content', 3, 'Solid Organ Injuries',
'**Splenic Injury**
Most common organ injured in blunt trauma
Grading (AAST): I-V based on hematoma and laceration size
Management:
- Non-operative: Hemodynamically stable, Grade I-III
- Splenic artery embolization: Adjunct for grades III-IV
- Splenectomy: Unstable, failed NOM, Grade V

Post-splenectomy:
- OPSI risk (overwhelming post-splenectomy infection)
- Vaccinations: Pneumococcal, meningococcal, H. influenzae
- Lifelong awareness

**Hepatic Injury**
Second most common in blunt trauma
Grading: I-VI
Management:
- Non-operative: Vast majority (80-90%) - stable with no peritonitis
- Operative: Unstable, peritonitis, failed NOM
- Damage control: Packing for severe injury
- Pringle maneuver: Temporary hepatic pedicle clamping

Complications:
- Delayed hemorrhage
- Biloma
- Abscess
- Hemobilia

**Renal Injury**
Usually managed non-operatively
Indications for surgery:
- Pulsatile/expanding hematoma
- Renal pedicle injury
- Shattered kidney'),

('d0000013-0000-0000-0000-000000000013'::uuid, 'content', 4, 'Hollow Viscus and Penetrating Trauma',
'**Hollow Viscus Injury**
Often missed initially - high morbidity from delayed diagnosis

Clinical features:
- Diffuse abdominal pain
- Peritonitis (may be delayed)
- Free air on imaging

CT findings:
- Free fluid without solid organ injury
- Bowel wall thickening
- Mesenteric fat stranding
- Free air

Management:
- Laparotomy for peritonitis or imaging findings
- Primary repair for simple injuries
- Resection for extensive injury

**Penetrating Trauma**

**Stab Wounds**
- Anterior abdomen: 50-70% peritoneal penetration, 50% significant injury
- Options: Mandatory exploration OR selective non-operative management
- Local wound exploration to assess fascia penetration

**Gunshot Wounds**
- High-energy transfer, cavitation
- 90-95% cause significant injury
- Generally require laparotomy if peritoneal violation
- Exception: Right upper quadrant tangential wounds (selective management)

**Damage Control Laparotomy**
Indications: Lethal triad, hemodynamic instability
Techniques:
- Hemorrhage control (packing, vascular control)
- Contamination control (staple/tie bowel, no anastomosis)
- Temporary abdominal closure
- ICU resuscitation
- Planned reoperation 24-48 hours'),

('d0000013-0000-0000-0000-000000000013'::uuid, 'key_points', 5, 'Key Points',
'1. Spleen is most commonly injured in blunt trauma; small bowel in penetrating
2. FAST: Rapid assessment for free fluid; positive + unstable = laparotomy
3. CT scan: Gold standard for stable patients
4. Non-operative management for most solid organ injuries in stable patients
5. Splenectomy requires lifelong vaccinations (OPSI risk)
6. Liver injuries: 80-90% managed non-operatively
7. Hollow viscus injury often missed - suspect with unexplained free fluid
8. Gunshot wounds traversing peritoneum usually require laparotomy
9. Damage control surgery: Control hemorrhage/contamination, defer definitive repair
10. Evisceration, peritonitis, free air = mandatory laparotomy');

-- ARTICLE 14: Chest Trauma
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000014-0000-0000-0000-000000000014'::uuid, 'introduction', 1, 'Introduction to Chest Trauma', 
'Thoracic injuries account for 25% of trauma deaths. Most can be managed with simple procedures; only 15-20% require thoracotomy.

**Mechanisms**
- Blunt: RTA, falls, crush
- Penetrating: Stab, gunshot

**Classification**
Immediately Life-Threatening (Primary Survey):
1. Airway obstruction
2. Tension pneumothorax
3. Open pneumothorax
4. Massive hemothorax
5. Flail chest
6. Cardiac tamponade

Potentially Life-Threatening (Secondary Survey):
1. Pulmonary contusion
2. Myocardial contusion
3. Aortic injury
4. Diaphragmatic rupture
5. Esophageal injury
6. Tracheobronchial injury'),

('d0000014-0000-0000-0000-000000000014'::uuid, 'content', 2, 'Immediate Life Threats',
'**Tension Pneumothorax**
Mechanism: One-way valve effect
Clinical: Respiratory distress, deviated trachea, absent breath sounds, shock
Diagnosis: CLINICAL - do not wait for X-ray
Treatment: Needle decompression (2nd ICS MCL) → chest drain (5th ICS AAL)

**Open Pneumothorax**
"Sucking chest wound" - wound >2/3 tracheal diameter
Treatment: Three-sided occlusive dressing → chest drain (NOT through wound)

**Massive Hemothorax**
Definition: >1500mL or >200mL/hr
Treatment: Large chest drain (28-32Fr) + blood resuscitation
Thoracotomy if: Initial >1500mL or ongoing >200mL/hr

**Cardiac Tamponade**
Blood in pericardium compresses heart
Beck triad: Hypotension, muffled heart sounds, distended neck veins
Pulsus paradoxus
Diagnosis: FAST (subxiphoid view)
Treatment: Pericardiocentesis (temporizing) → sternotomy

**Flail Chest**
3+ ribs fractured in 2+ places → paradoxical movement
Main problem: Underlying pulmonary contusion
Treatment: Analgesia (epidural ideal), O2, consider ventilation
Surgical fixation for severe cases'),

('d0000014-0000-0000-0000-000000000014'::uuid, 'content', 3, 'Chest Drain Insertion',
'**Indications**
- Pneumothorax
- Hemothorax
- After needle decompression

**Site**
"Safe triangle": 5th intercostal space, anterior to mid-axillary line
Bordered by: Anterior border of latissimus dorsi, lateral border of pectoralis major, horizontal line at nipple level

**Technique**
1. Position: Arm abducted and externally rotated
2. Skin incision at 5th ICS
3. Blunt dissection through intercostal muscles
4. Enter pleura above the rib (avoid neurovascular bundle)
5. Finger sweep
6. Insert drain directed posteriorly and apically
7. Connect to underwater seal
8. Confirm position: Fogging, swing, drainage
9. Secure and CXR

**Complications**
- Malposition
- Organ injury (lung, liver, spleen)
- Infection
- Subcutaneous emphysema
- Bleeding from intercostal vessels'),

('d0000014-0000-0000-0000-000000000014'::uuid, 'content', 4, 'Potentially Life-Threatening Injuries',
'**Pulmonary Contusion**
Bruising of lung parenchyma
Most common potentially fatal chest injury
CXR: Patchy infiltrates within 6 hours
Treatment: O2, fluid restriction, analgesia, consider ventilation

**Myocardial Contusion**
Blunt injury to heart
Presents: Arrhythmias, hypotension
ECG: ST changes, new RBBB, arrhythmias
Treatment: Monitoring, treat arrhythmias

**Traumatic Aortic Injury**
Usually at isthmus (ligamentum arteriosum)
90% die at scene
CXR: Widened mediastinum (>8cm), obliterated aortic knob
Diagnosis: CT angiography
Treatment: Endovascular repair preferred, open repair if unavailable

**Diaphragmatic Rupture**
More common on left (liver protects right)
Diagnosis: CXR shows bowel/NG tube in chest; CT for confirmation
Treatment: Surgical repair (laparotomy or thoracotomy)

**Esophageal Injury**
Rare but lethal if missed
Suspect: Left pneumo/hemothorax without rib fractures
Diagnosis: Water-soluble contrast swallow, CT, endoscopy
Treatment: Early primary repair, wide drainage

**Tracheobronchial Injury**
Presents: Massive air leak, persistent pneumothorax despite chest drain
Diagnosis: Bronchoscopy
Treatment: Surgical repair'),

('d0000014-0000-0000-0000-000000000014'::uuid, 'key_points', 5, 'Key Points',
'1. 85% of chest injuries managed with chest drain alone
2. Tension pneumothorax: Clinical diagnosis - treat immediately
3. Beck triad: JVD, hypotension, muffled sounds = tamponade
4. Massive hemothorax >1500mL: Consider thoracotomy
5. Flail chest: Pulmonary contusion is the main threat
6. Chest drain: 5th ICS, anterior to mid-axillary line (safe triangle)
7. Insert drain above the rib (vessels below)
8. Widened mediastinum on CXR: Suspect aortic injury
9. Left diaphragm injury more common (liver protects right)
10. Pulmonary contusion: Most common potentially fatal injury');

-- MCQs for Articles 11-14
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
-- Article 11
('d0000011-0000-0000-0000-000000000011'::uuid, 1, 'What percentage of trauma deaths occur immediately (within seconds to minutes)?', '10%', '30%', '50%', '70%', '90%', 'C', 'The trimodal distribution shows 50% of deaths occur immediately, 30% in early phase (Golden Hour), and 20% in late phase. Immediate deaths are due to massive hemorrhage or severe brain injury.'),
('d0000011-0000-0000-0000-000000000011'::uuid, 2, 'In trauma, what is the correct airway opening maneuver?', 'Head tilt chin lift', 'Jaw thrust with C-spine protection', 'Neck extension', 'Head turn to side', 'Flexion of neck', 'B', 'Jaw thrust with cervical spine protection is the correct maneuver in trauma. Head tilt chin lift is contraindicated as it may cause spinal cord injury if cervical spine is unstable.'),
('d0000011-0000-0000-0000-000000000011'::uuid, 3, 'FAST ultrasound examines which four areas?', 'Liver, spleen, kidneys, bladder', 'RUQ, LUQ, suprapubic, subxiphoid', 'Heart, lungs, abdomen, pelvis', 'Neck, chest, abdomen, pelvis', 'Aorta, IVC, heart, kidneys', 'B', 'FAST examines: Right upper quadrant (Morison pouch), Left upper quadrant (splenorenal), Suprapubic (pelvis), and Subxiphoid (pericardium). eFAST adds lung sliding.'),
('d0000011-0000-0000-0000-000000000011'::uuid, 4, 'Class III hemorrhagic shock involves what percentage blood loss?', '5-15%', '15-30%', '30-40%', '40-50%', 'Greater than 50%', 'C', 'Class III shock involves 30-40% blood loss (1500-2000mL). Patients are confused, hypotensive, and oliguric. Blood transfusion is required.'),
('d0000011-0000-0000-0000-000000000011'::uuid, 5, 'What is the recommended ratio for massive transfusion?', '1:2:1 (PRBC:FFP:Platelets)', '1:1:1 (PRBC:FFP:Platelets)', '2:1:1 (PRBC:FFP:Platelets)', '4:2:1 (PRBC:FFP:Platelets)', '1:1:2 (PRBC:FFP:Platelets)', 'B', 'The 1:1:1 ratio of PRBC:FFP:Platelets is based on evidence from military and civilian studies showing improved survival with balanced resuscitation.'),

-- Article 12
('d0000012-0000-0000-0000-000000000012'::uuid, 1, 'What GCS score mandates a definitive airway?', 'Less than 15', 'Less than 12', 'Less than or equal to 8', 'Less than 5', 'Less than 3', 'C', 'GCS ≤8 indicates severe head injury with inability to protect the airway. This is an absolute indication for endotracheal intubation.'),
('d0000012-0000-0000-0000-000000000012'::uuid, 2, 'What is the site for needle decompression in tension pneumothorax?', '2nd ICS, midclavicular line', '4th ICS, anterior axillary line', '5th ICS, mid-axillary line', '3rd ICS, midclavicular line', '2nd ICS, mid-axillary line', 'A', 'Needle decompression for tension pneumothorax is performed at the 2nd intercostal space, midclavicular line. This is followed by formal chest drain at 5th ICS, anterior axillary line.'),
('d0000012-0000-0000-0000-000000000012'::uuid, 3, 'What constitutes the lethal triad in trauma?', 'Hypoxia, hypotension, hypothermia', 'Hypothermia, acidosis, coagulopathy', 'Fever, tachycardia, hypotension', 'Acidosis, hypoxia, anemia', 'Coagulopathy, hyperkalemia, acidosis', 'B', 'The lethal triad is hypothermia (<35°C), acidosis (pH<7.2), and coagulopathy. This indicates need for damage control surgery.'),
('d0000012-0000-0000-0000-000000000012'::uuid, 4, 'What type of dressing is applied to an open pneumothorax?', 'Four-sided occlusive dressing', 'Three-sided occlusive dressing', 'Simple gauze dressing', 'No dressing', 'Pressure dressing', 'B', 'A three-sided occlusive dressing allows air to escape during expiration while preventing air entry during inspiration. A chest drain is then inserted at a separate site.'),
('d0000012-0000-0000-0000-000000000012'::uuid, 5, 'What volume of blood in hemothorax may require thoracotomy?', 'Greater than 500mL initially', 'Greater than 1000mL initially', 'Greater than 1500mL initially', 'Greater than 2500mL initially', 'Any amount', 'C', 'Thoracotomy is indicated if >1500mL blood drains immediately OR ongoing drainage >200mL/hr for 2-4 hours. This suggests major vessel injury.'),

-- Article 13
('d0000013-0000-0000-0000-000000000013'::uuid, 1, 'What is the most commonly injured organ in blunt abdominal trauma?', 'Liver', 'Kidney', 'Spleen', 'Small bowel', 'Colon', 'C', 'The spleen is the most commonly injured organ in blunt abdominal trauma due to its anatomical position and fragility. Liver is second most common.'),
('d0000013-0000-0000-0000-000000000013'::uuid, 2, 'What is the most commonly injured organ in penetrating abdominal trauma?', 'Liver', 'Spleen', 'Kidney', 'Small bowel', 'Stomach', 'D', 'Small bowel is the most commonly injured organ in penetrating abdominal trauma due to its large surface area in the abdomen. Liver is second most common.'),
('d0000013-0000-0000-0000-000000000013'::uuid, 3, 'A hemodynamically unstable patient has positive FAST. What is the next step?', 'CT scan', 'Repeat FAST', 'Diagnostic peritoneal lavage', 'Immediate laparotomy', 'Admit for observation', 'D', 'Hemodynamic instability with positive FAST (free fluid) is an indication for immediate laparotomy. There is no time for CT or further workup.'),
('d0000013-0000-0000-0000-000000000013'::uuid, 4, 'Post-splenectomy patients require vaccination against which organisms?', 'Hepatitis A and B', 'Pneumococcus, Meningococcus, H. influenzae', 'Tetanus and diphtheria only', 'Influenza only', 'No vaccines needed', 'B', 'Post-splenectomy patients are at risk of overwhelming post-splenectomy infection (OPSI) from encapsulated organisms. Vaccines against Pneumococcus, Meningococcus, and H. influenzae type b are required.'),
('d0000013-0000-0000-0000-000000000013'::uuid, 5, 'What percentage of liver injuries can be managed non-operatively?', '20-30%', '40-50%', '60-70%', '80-90%', '100%', 'D', 'Approximately 80-90% of liver injuries in hemodynamically stable patients can be managed non-operatively with close monitoring. Surgery is reserved for unstable patients or failed non-operative management.'),

-- Article 14
('d0000014-0000-0000-0000-000000000014'::uuid, 1, 'Beck triad is associated with which condition?', 'Tension pneumothorax', 'Massive hemothorax', 'Cardiac tamponade', 'Flail chest', 'Pulmonary embolism', 'C', 'Beck triad (hypotension, muffled heart sounds, distended neck veins) is classic for cardiac tamponade. Pulsus paradoxus is another key sign.'),
('d0000014-0000-0000-0000-000000000014'::uuid, 2, 'Where is the "safe triangle" for chest drain insertion?', '2nd ICS midclavicular line', '5th ICS anterior to mid-axillary line', '7th ICS posterior axillary line', '4th ICS midclavicular line', '6th ICS mid-axillary line', 'B', 'The safe triangle is bounded by latissimus dorsi posteriorly, pectoralis major anteriorly, and a horizontal line at nipple level. Drain insertion at 5th ICS anterior to mid-axillary line is within this triangle.'),
('d0000014-0000-0000-0000-000000000014'::uuid, 3, 'Which rib border should the chest drain be inserted above?', 'Upper border of lower rib', 'Lower border of upper rib', 'Middle of rib', 'Any border', 'Between ribs only', 'A', 'The chest drain should pass above the rib (superior to lower rib) to avoid the intercostal neurovascular bundle which runs below each rib.'),
('d0000014-0000-0000-0000-000000000014'::uuid, 4, 'Widened mediastinum on CXR suggests which injury?', 'Pulmonary contusion', 'Myocardial contusion', 'Traumatic aortic injury', 'Esophageal injury', 'Tracheobronchial injury', 'C', 'Widened mediastinum (>8cm at T4) on upright CXR is a classic sign of traumatic aortic injury. CT angiography is needed for confirmation.'),
('d0000014-0000-0000-0000-000000000014'::uuid, 5, 'What is the main life-threatening problem in flail chest?', 'Pain', 'Paradoxical movement', 'Underlying pulmonary contusion', 'Rib fractures themselves', 'Pneumothorax', 'C', 'While flail chest causes paradoxical movement, the underlying pulmonary contusion is the main threat to life. Management focuses on treating the contusion with analgesia, oxygen, and possibly ventilation.');
