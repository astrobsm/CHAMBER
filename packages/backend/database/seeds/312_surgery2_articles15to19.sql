-- Surgery 2 Articles 15-19: Trauma Section Part 2

-- ARTICLE 15: Cardiac Tamponade
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000015-0000-0000-0000-000000000015'::uuid, 'introduction', 1, 'Introduction to Cardiac Tamponade', 
'Cardiac tamponade is a life-threatening condition where fluid accumulates in the pericardial sac, compressing the heart and impairing filling. In trauma, blood is the typical fluid.

**Anatomy**
- Pericardium: Fibrous sac surrounding heart
- Pericardial space: Normally contains 15-50mL serous fluid
- Rapid accumulation of 100-200mL can cause tamponade
- Slow accumulation allows pericardial stretch (up to 2L may be tolerated)

**Causes in Trauma**
- Penetrating chest trauma (stab, gunshot)
- Blunt chest trauma (steering wheel, fall)
- Iatrogenic (central line insertion, pacemaker)
- Post-cardiac surgery

**Pathophysiology**
1. Blood accumulates in pericardial space
2. Intrapericardial pressure rises
3. Right ventricle compressed first (thinner wall)
4. Decreased ventricular filling
5. Decreased cardiac output
6. Shock and death if untreated'),

('d0000015-0000-0000-0000-000000000015'::uuid, 'content', 2, 'Clinical Features and Diagnosis',
'**Beck Triad** (classic but present in only 10-40%)
1. Hypotension (low cardiac output)
2. Distended neck veins (impaired venous return)
3. Muffled heart sounds (fluid around heart)

**Other Clinical Signs**
- Tachycardia
- Pulsus paradoxus (>10mmHg drop in SBP during inspiration)
- Kussmaul sign (paradoxical JVP rise with inspiration)
- Narrowed pulse pressure
- Cyanosis

**Pulsus Paradoxus Mechanism**
- Inspiration increases RV filling
- Fixed pericardial space → RV expansion compresses LV
- LV stroke volume decreases during inspiration

**Investigations**

**FAST Ultrasound**
- Subxiphoid view shows pericardial effusion
- Can be done rapidly at bedside
- High sensitivity for effusion

**Echocardiography**
- Gold standard for diagnosis
- Shows RA/RV collapse in diastole
- Quantifies effusion
- Guides pericardiocentesis

**CXR**
- Globular "water bottle" heart (if large effusion)
- May be normal in acute trauma

**ECG**
- Low voltage complexes
- Electrical alternans (beat-to-beat QRS variation)'),

('d0000015-0000-0000-0000-000000000015'::uuid, 'content', 3, 'Management',
'**Resuscitation**
- IV fluids to increase preload temporarily
- Avoid agents that decrease preload (diuretics, vasodilators)
- Positive pressure ventilation may worsen hemodynamics
- Inotropes may temporize

**Pericardiocentesis** (Temporizing measure)
Indication: Hemodynamically unstable with tamponade

Technique (Subxiphoid approach):
1. Position: Semi-recumbent at 45°
2. Insert needle below xiphoid, aimed toward left shoulder
3. Aspirate as needle advanced
4. Withdraw blood (even 20-30mL improves hemodynamics)
5. May leave catheter for repeated drainage

Complications:
- Cardiac puncture
- Coronary vessel injury
- Arrhythmias
- Pneumothorax

**Definitive Treatment**
- Median sternotomy or left thoracotomy
- Evacuate blood/clot
- Repair cardiac injury
- Pericardial window if recurrent

**Emergency Department Thoracotomy**
Indications:
- Penetrating trauma with witnessed arrest
- Loss of signs of life within 15 minutes of arrival
- Perform at patient beside if experienced surgeon available

Aims:
- Release tamponade
- Control cardiac bleeding
- Open cardiac massage
- Cross-clamp aorta'),

('d0000015-0000-0000-0000-000000000015'::uuid, 'key_points', 4, 'Key Points',
'1. Tamponade: Blood in pericardium compresses heart, impairs filling
2. Rapid 100-200mL accumulation can cause tamponade
3. Beck triad: Hypotension, JVD, muffled heart sounds
4. Pulsus paradoxus: >10mmHg SBP drop on inspiration
5. FAST: Rapid bedside diagnosis (subxiphoid view)
6. Echo shows RA/RV diastolic collapse
7. Pericardiocentesis: Temporizing - even 20mL improves hemodynamics
8. Definitive treatment: Surgical - sternotomy or thoracotomy
9. Avoid positive pressure ventilation - decreases preload
10. ED thoracotomy for witnessed arrest in penetrating trauma');

-- ARTICLE 16: Spinal Injuries
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000016-0000-0000-0000-000000000016'::uuid, 'introduction', 1, 'Introduction to Spinal Injuries', 
'Spinal injuries can result in devastating permanent neurological disability. The priority is preventing secondary injury through proper immobilization and management.

**Epidemiology**
- Young males predominate
- RTA most common cause
- Falls, sports, violence also common
- C5-C7 most common cervical level
- T12-L2 most common thoracolumbar level

**Mechanisms**
- Flexion
- Extension
- Rotation
- Axial loading (compression)
- Distraction
- Combined mechanisms

**Spinal Cord Syndromes**
1. Complete transection: Total loss below level
2. Incomplete syndromes: Some function preserved

**Classification**
- Stable vs unstable injuries
- Denis 3-column model (thoracolumbar)
- Subaxial cervical injury classification'),

('d0000016-0000-0000-0000-000000000016'::uuid, 'content', 2, 'Incomplete Cord Syndromes',
'**Central Cord Syndrome**
- Most common incomplete syndrome
- Usually hyperextension in elderly with cervical spondylosis
- Upper limbs weaker than lower limbs
- "Cape-like" sensory loss
- Best prognosis of incomplete syndromes

**Anterior Cord Syndrome**
- Anterior spinal artery territory
- Loss of motor function
- Loss of pain and temperature sensation
- Preserved proprioception and vibration (posterior columns spared)
- Worst prognosis of incomplete syndromes

**Brown-Séquard Syndrome**
- Hemisection of cord
- Ipsilateral motor loss
- Ipsilateral proprioception/vibration loss
- Contralateral pain/temperature loss (1-2 levels below)
- Good prognosis

**Posterior Cord Syndrome**
- Rare
- Loss of proprioception and vibration
- Motor and pain/temperature preserved

**Cauda Equina Syndrome**
- Lower motor neuron injury (not cord)
- Saddle anesthesia
- Bladder/bowel dysfunction
- Variable motor weakness
- Surgical emergency'),

('d0000016-0000-0000-0000-000000000016'::uuid, 'content', 3, 'Initial Management',
'**Pre-hospital Care**
- Assume spinal injury in all trauma patients
- Manual in-line stabilization
- Log roll technique
- Spinal board (brief use only - pressure sores)
- Semi-rigid collar application

**Primary Survey**
- Airway with C-spine protection
- Neurogenic shock may cause hypotension and bradycardia
- Distinguish from hypovolemic shock

**Neurogenic vs Hypovolemic Shock**
| Feature | Neurogenic | Hypovolemic |
|---------|------------|-------------|
| Heart rate | Bradycardia | Tachycardia |
| Skin | Warm, dry | Cold, clammy |
| JVP | Normal/elevated | Low |
| Response to fluid | Poor | Good |

**Spinal Clearance**
NEXUS criteria (can clear if ALL present):
- No posterior midline tenderness
- No focal neurological deficit
- Normal alertness
- No intoxication
- No painful distracting injury

Canadian C-spine Rule: Alternative clinical decision tool'),

('d0000016-0000-0000-0000-000000000016'::uuid, 'content', 4, 'Imaging and Definitive Care',
'**Imaging**
- CT spine: Primary imaging modality (replaced plain X-rays)
- MRI: For cord assessment, ligamentous injury, disc herniation
- CT angiography: If vascular injury suspected

**Neurological Assessment**
ASIA (American Spinal Injury Association) scale:
- A: Complete - no motor or sensory function below level
- B: Sensory incomplete - sensory but no motor below level
- C: Motor incomplete - motor present but <50% key muscles grade 3
- D: Motor incomplete - ≥50% key muscles grade 3+
- E: Normal

**Management Principles**
- Immobilization until cleared
- High-dose steroids: No longer recommended (NASCIS studies debunked)
- Blood pressure support (MAP >85 mmHg for cord perfusion)
- Prevent secondary injury

**Surgical Indications**
- Incomplete injury with ongoing compression
- Unstable fractures
- Progressive neurological deficit
- Open injuries

**Rehabilitation**
- Multidisciplinary approach
- Respiratory care (especially high cervical)
- Bladder/bowel training
- Pressure sore prevention
- DVT prophylaxis'),

('d0000016-0000-0000-0000-000000000016'::uuid, 'key_points', 5, 'Key Points',
'1. Assume spinal injury in all trauma patients until cleared
2. Manual in-line stabilization - never hyperextend neck
3. Central cord syndrome: Upper limbs weaker than lower (best prognosis)
4. Anterior cord syndrome: Worst prognosis of incomplete syndromes
5. Brown-Séquard: Hemisection - ipsilateral motor, contralateral pain loss
6. Neurogenic shock: Bradycardia + hypotension (vs tachycardia in hemorrhagic)
7. NEXUS criteria: Can clinically clear C-spine if all criteria met
8. CT is primary imaging; MRI for cord and soft tissue assessment
9. High-dose steroids no longer recommended
10. Cauda equina: Surgical emergency - saddle anesthesia, bladder dysfunction');

-- ARTICLE 17: Pelvic Fractures
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000017-0000-0000-0000-000000000017'::uuid, 'introduction', 1, 'Introduction to Pelvic Fractures', 
'Pelvic fractures range from minor stable injuries to life-threatening unstable fractures with massive hemorrhage.

**Anatomy**
- Pelvic ring: Sacrum + 2 innominate bones
- Anterior ring: Pubic symphysis, pubic rami
- Posterior ring: Sacroiliac joints, sacrum
- Posterior ring provides 60% of stability

**Classification (Young-Burgess)**
Based on mechanism of injury:

1. **Lateral Compression (LC)** - Most common (60%)
   - Internal rotation force
   - Side impact (T-bone RTA)
   - LC-I, LC-II, LC-III

2. **Anteroposterior Compression (APC)** - "Open book"
   - External rotation force
   - Frontal impact, straddle injury
   - APC-I, APC-II, APC-III

3. **Vertical Shear (VS)**
   - Fall from height
   - Vertical displacement of hemipelvis

4. **Combined Mechanism**'),

('d0000017-0000-0000-0000-000000000017'::uuid, 'content', 2, 'Assessment and Hemorrhage',
'**Clinical Assessment**
- Mechanism of injury
- Pelvic stability (single examination only - do not repeat)
- Leg length discrepancy
- Rotational deformity
- Perineal/scrotal hematoma
- Urethral meatus blood
- High-riding prostate (DRE)

**Associated Injuries**
- Bladder injury (15%)
- Urethral injury (10% - more common in males)
- Rectal/vaginal injury
- Major vessel injury
- Nerve injury (lumbosacral plexus)

**Hemorrhage in Pelvic Fractures**
Source:
- Venous plexus (90%) - low pressure, responds to tamponade
- Arterial (10%) - may require embolization
- Bone ends

Life-threatening hemorrhage:
- Can lose >4L blood into retroperitoneum
- Pelvic volume increases significantly with "open book" injury
- Reducing volume reduces bleeding

**Retroperitoneal Hematoma in Trauma**
- Zone 1 (central): Explore
- Zone 2 (lateral): Do NOT explore in blunt trauma
- Zone 3 (pelvic): Do NOT explore - apply binder, interventional radiology'),

('d0000017-0000-0000-0000-000000000017'::uuid, 'content', 3, 'Initial Management',
'**Pelvic Binder**
- First-line hemorrhage control
- Reduces pelvic volume
- Promotes tamponade of venous bleeding
- Applied at level of greater trochanters
- Commercial devices or sheet

**Resuscitation**
- ATLS principles
- Massive transfusion protocol if indicated
- Avoid crystalloid overload
- Permissive hypotension until hemorrhage controlled
- Tranexamic acid

**Imaging**
- Pelvic X-ray in primary survey
- CT for stable patients
- Retrograde urethrogram if urethral injury suspected
- CT cystogram for bladder injury

**Temporary Stabilization**
Options:
- Pelvic binder (first line)
- External fixation (OR)
- C-clamp (posterior injuries)

**Interventional Radiology**
- Angioembolization for arterial bleeding
- Consider if ongoing hemorrhage despite binder
- REBOA (Resuscitative Endovascular Balloon Occlusion of Aorta) as bridge'),

('d0000017-0000-0000-0000-000000000017'::uuid, 'content', 4, 'Definitive Management',
'**Non-operative Management**
- Stable fractures (intact posterior ring)
- Weight-bearing as tolerated
- Isolated pubic rami fractures (elderly)

**External Fixation**
- Anterior pelvic ring injuries
- Temporary stabilization
- Definitive for some LC and APC injuries
- Quick to apply

**Internal Fixation (ORIF)**
Indications:
- Unstable pelvic ring
- Posterior ring disruption
- Acetabular fractures
- Failed non-operative management

Timing:
- Early (when stable) vs delayed
- May need damage control approach

**Open Pelvic Fractures**
- High mortality (30-50%)
- Often associated with perineal/rectal wounds
- Require: Hemorrhage control, debridement, diverting colostomy
- Fecal contamination prevention crucial

**Complications**
- Hemorrhagic shock and death
- Infection
- Malunion/nonunion
- Leg length discrepancy
- Nerve injury (sciatic, lumbosacral plexus)
- DVT/PE
- Urological dysfunction'),

('d0000017-0000-0000-0000-000000000017'::uuid, 'key_points', 5, 'Key Points',
'1. Posterior pelvic ring provides 60% of stability
2. Lateral compression most common mechanism (60%)
3. APC "open book" increases pelvic volume → massive hemorrhage
4. Blood at urethral meatus: Do NOT catheterize - retrograde urethrogram first
5. Pelvic binder: First line - reduces volume, promotes tamponade
6. Venous bleeding (90%): Responds to volume reduction
7. Arterial bleeding (10%): May need angioembolization
8. Do NOT explore pelvic hematoma in blunt trauma
9. Open pelvic fractures: High mortality, need diverting colostomy
10. CT is gold standard imaging for stable patients');

-- ARTICLE 18: Compartment Syndrome
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000018-0000-0000-0000-000000000018'::uuid, 'introduction', 1, 'Introduction to Compartment Syndrome', 
'Compartment syndrome is a surgical emergency where increased pressure within a closed muscle compartment compromises tissue perfusion, leading to irreversible damage if untreated.

**Pathophysiology**
1. Increased intracompartmental pressure
2. Capillary perfusion compromised (pressure >30mmHg or delta P <30mmHg)
3. Muscle and nerve ischemia
4. Irreversible damage within 6-8 hours
5. Muscle necrosis → myoglobinuria → renal failure

**Causes**
Increased compartment contents:
- Fractures (tibial most common)
- Soft tissue injury/contusion
- Hemorrhage (bleeding disorders, anticoagulation)
- Reperfusion after ischemia
- Burns
- Envenomation

Decreased compartment size:
- Constrictive dressings/casts
- Tight closure of fascia
- Prolonged limb compression (unconscious patients)

**Common Sites**
- Anterior compartment of leg (most common)
- Forearm (Volkmann ischemic contracture)
- Thigh
- Hand
- Foot'),

('d0000018-0000-0000-0000-000000000018'::uuid, 'content', 2, 'Clinical Features - The 6 Ps',
'**The 6 Ps** (unreliable - late signs)
1. **Pain** - out of proportion to injury
2. **Pain on passive stretch** - earliest and most reliable
3. **Pressure** - tense compartment
4. **Paresthesia** - sensory changes
5. **Paralysis** - late sign
6. **Pulselessness** - very late (compartment syndrome is NOT vascular occlusion)

**Key Clinical Points**
- Pain out of proportion is the hallmark
- Pain on passive stretch of muscles in compartment
- Pulses are USUALLY PRESENT (arterial pressure exceeds compartment pressure)
- Pulselessness indicates vascular injury, not compartment syndrome
- Symptoms may be masked by regional anesthesia

**High-Risk Patients**
- Tibial fractures (up to 10% risk)
- Forearm fractures
- Crush injuries
- Reperfusion injuries
- Burns
- Unconscious/obtunded patients (cannot report symptoms)

**Anterior Compartment of Leg**
Contents:
- Tibialis anterior
- Extensor hallucis longus
- Extensor digitorum longus
- Deep peroneal nerve

Clinical findings:
- Pain on passive plantar flexion of ankle/toes
- Weakness of ankle dorsiflexion
- Sensory loss in first web space'),

('d0000018-0000-0000-0000-000000000018'::uuid, 'content', 3, 'Diagnosis and Management',
'**Diagnosis**
Clinical diagnosis - do not delay for measurements in obvious cases

**Compartment Pressure Measurement**
Indications:
- Equivocal clinical findings
- Unreliable examination (unconscious, intubated)
- Multiple trauma

Technique:
- Stryker monitor (needle/catheter connected to transducer)
- Measure in area of injury
- Multiple compartment measurements

Diagnostic thresholds:
- Absolute pressure >30mmHg
- Delta P <30mmHg (diastolic BP minus compartment pressure)
- Delta P is more reliable

**Management**

**Immediate Actions**
- Remove all constrictive dressings/casts
- Keep limb at heart level (NOT elevated)
- Correct hypotension (improves perfusion pressure)
- Urgent fasciotomy

**Fasciotomy**
- Definitive treatment
- Time critical - within 6 hours for best outcomes
- All compartments must be released
- Wounds left open
- Delayed primary closure or skin grafting at 48-72 hours

**Leg Fasciotomy Approaches**
Single incision: Lateral - releases all 4 compartments
Double incision: Medial and lateral - most common
Four compartments: Anterior, lateral, superficial posterior, deep posterior'),

('d0000018-0000-0000-0000-000000000018'::uuid, 'content', 4, 'Complications and Special Situations',
'**Complications of Compartment Syndrome**
Untreated:
- Muscle necrosis (within 6-8 hours)
- Nerve damage (permanent)
- Volkmann ischemic contracture (forearm)
- Rhabdomyolysis
- Myoglobinuria → acute kidney injury
- Amputation
- Death

Treated late:
- Permanent weakness
- Sensory deficit
- Contractures

**Volkmann Ischemic Contracture**
- Forearm compartment syndrome complication
- Flexor muscle necrosis and fibrosis
- Classic posture: Wrist flexion, MCP extension, IP flexion
- Treatment: Splinting, tendon lengthening, muscle slide

**Rhabdomyolysis Management**
- Aggressive IV fluid resuscitation
- Target urine output >200-300mL/hr
- Monitor creatine kinase levels
- Correct hyperkalemia
- Dialysis if renal failure

**Chronic Exertional Compartment Syndrome**
- Recurrent pain with exercise
- Resolves with rest
- Common in athletes
- Diagnosis: Exercise provocation with pressure measurement
- Treatment: Fasciotomy if conservative management fails

**Abdominal Compartment Syndrome**
- Intra-abdominal pressure >20mmHg with organ dysfunction
- Causes: Trauma, massive resuscitation, pancreatitis
- Measure via bladder pressure
- Treatment: Decompressive laparotomy'),

('d0000018-0000-0000-0000-000000000018'::uuid, 'key_points', 5, 'Key Points',
'1. Compartment syndrome: Surgical emergency - permanent damage within 6-8 hours
2. Pain out of proportion + pain on passive stretch = earliest signs
3. Pulses are usually PRESENT - pulselessness is a late/different finding
4. Tibial fractures: 10% risk of compartment syndrome
5. Pressure >30mmHg or delta P <30mmHg is diagnostic
6. Remove all casts/dressings; keep limb at heart level (not elevated)
7. Fasciotomy: Release ALL compartments; leave wounds open
8. Volkmann contracture: Forearm compartment syndrome sequela
9. Rhabdomyolysis: Aggressive fluids, monitor CK and renal function
10. Abdominal compartment syndrome: Bladder pressure >20mmHg');

-- ARTICLE 19: Burns Assessment and Management
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000019-0000-0000-0000-000000000019'::uuid, 'introduction', 1, 'Introduction to Burns', 
'Burns are injuries to tissue caused by heat, chemicals, electricity, or radiation. Major burns are complex injuries requiring specialized multidisciplinary care.

**Classification by Mechanism**
1. **Thermal** - Most common (flame, scald, contact)
2. **Electrical** - High and low voltage
3. **Chemical** - Acids, alkalis
4. **Radiation** - Sunburn, radiation therapy

**Zones of Burn Injury (Jackson)**
1. **Zone of Coagulation** (center)
   - Irreversible cell death
   - Maximum damage

2. **Zone of Stasis** (middle)
   - Decreased perfusion
   - Potentially salvageable
   - Goal of treatment: Prevent progression

3. **Zone of Hyperemia** (outer)
   - Increased blood flow
   - Will recover fully

**Burn Depth Classification**
- Superficial (1st degree): Epidermis only
- Partial thickness (2nd degree): Superficial and deep dermal
- Full thickness (3rd degree): All skin layers
- 4th degree: Underlying tissue (muscle, bone)'),

('d0000019-0000-0000-0000-000000000019'::uuid, 'content', 2, 'Burn Depth and Area Assessment',
'**Burn Depth Assessment**

| Depth | Layers | Appearance | Sensation | Healing |
|-------|--------|------------|-----------|---------|
| Superficial | Epidermis | Red, dry, painful | Painful | 3-5 days |
| Superficial partial | Papillary dermis | Blisters, moist, pink | Very painful | 7-14 days |
| Deep partial | Reticular dermis | Mottled, waxy | Decreased | 2-6 weeks + scarring |
| Full thickness | All skin | Leathery, white/brown | Absent | No healing - needs grafting |

**Burn Surface Area (BSA) Estimation**

**Rule of Nines (Adults)**
- Head: 9%
- Each upper limb: 9%
- Anterior trunk: 18%
- Posterior trunk: 18%
- Each lower limb: 18%
- Perineum: 1%

**Lund and Browder Chart**
- More accurate, especially for children
- Accounts for age-related proportions

**Palm Method**
- Patient palm (including fingers) = 1% BSA
- Useful for scattered burns

**Children**
- Proportionally larger heads, smaller legs
- Must use pediatric charts'),

('d0000019-0000-0000-0000-000000000019'::uuid, 'content', 3, 'Initial Management and Resuscitation',
'**Primary Survey (ATLS)**
- Airway: Assess for inhalation injury
- Breathing: Circumferential chest burns may need escharotomy
- Circulation: IV access (through burned skin if necessary)
- Disability: Exclude associated trauma
- Exposure: Calculate %TBSA

**Signs of Inhalation Injury**
- Facial burns
- Singed nasal/facial hair
- Soot in mouth/nose/sputum
- Hoarseness/stridor
- History of enclosed space fire
- Low threshold for early intubation (edema worsens)

**Fluid Resuscitation - Parkland Formula**
4mL × body weight (kg) × %TBSA burn

- Give half in first 8 hours
- Give remaining half over next 16 hours
- Start timing from injury, not admission
- Use Ringer lactate
- Titrate to urine output (0.5-1mL/kg/hr adults, 1mL/kg/hr children)

**Example Calculation**
70kg patient with 40% burn:
- Total = 4 × 70 × 40 = 11,200mL in 24 hours
- First 8 hours: 5,600mL
- Next 16 hours: 5,600mL

**Escharotomy**
Indication: Circumferential full-thickness burn limiting breathing or limb perfusion
Technique: Full-thickness incision through eschar to release constriction'),

('d0000019-0000-0000-0000-000000000019'::uuid, 'content', 4, 'Wound Care and Special Burns',
'**Wound Management**
- Cool burns with tepid water (10-20 minutes, within 3 hours)
- Cover with clean dressings
- Tetanus prophylaxis
- Avoid ice (worsens injury)
- Avoid burst blisters initially

**Dressings**
- Superficial: Simple dressings, moisturizing
- Partial thickness: Silver sulfadiazine, biological dressings
- Full thickness: Debridement and grafting

**Surgical Management**
- Tangential excision of eschar
- Split-thickness skin grafting
- Early excision (within 72 hours) reduces complications
- Temporary coverage: Allograft, xenograft, synthetic

**Electrical Burns**
- Tissue damage exceeds visible injury
- Entry and exit wounds
- Cardiac arrhythmias (ECG monitoring)
- Muscle necrosis → compartment syndrome
- High amputation rate
- Monitor CK, myoglobinuria

**Chemical Burns**
- Duration of contact determines severity
- Copious water irrigation (30-60 minutes)
- Remove all contaminated clothing
- Alkali burns worse than acid (liquefactive necrosis)
- Do NOT attempt neutralization

**Inhalation Injury**
- Above glottis: Thermal injury
- Below glottis: Chemical injury from smoke
- Treatment: Early intubation, bronchoscopy, supportive care'),

('d0000019-0000-0000-0000-000000000019'::uuid, 'content', 5, 'Burn Center Referral and Complications',
'**Burn Center Referral Criteria**
- Partial thickness >10% TBSA
- Full thickness any size
- Face, hands, feet, genitalia, perineum, major joints
- Circumferential burns
- Electrical or chemical burns
- Inhalation injury
- Associated trauma
- Children, elderly, significant comorbidities

**Complications**
Early:
- Hypovolemic shock
- Inhalation injury
- Compartment syndrome
- Acute kidney injury

Late:
- Sepsis (burn wound infection)
- Hypertrophic scarring
- Contractures
- Psychological trauma

**Burn Sepsis**
- Leading cause of death in burn patients
- Sources: Wound, catheter, pneumonia
- Signs: Temperature changes, increased fluid requirements
- Treatment: Source control, antibiotics

**Nutrition**
- Hypermetabolic state
- Increased caloric requirements
- Protein requirement 1.5-2g/kg/day
- Early enteral nutrition
- Glutamine supplementation

**Rehabilitation**
- Early mobilization
- Splinting to prevent contractures
- Pressure garments for scarring
- Psychological support'),

('d0000019-0000-0000-0000-000000000019'::uuid, 'key_points', 6, 'Key Points',
'1. Zone of stasis: Potentially salvageable - goal is to prevent progression
2. Rule of Nines: Head 9%, each arm 9%, anterior trunk 18%, each leg 18%
3. Parkland formula: 4mL × kg × %TBSA; half in first 8 hours
4. Titrate fluids to urine output 0.5-1mL/kg/hr
5. Early intubation for inhalation injury - airway edema worsens
6. Signs of inhalation: Facial burns, singed hair, soot, hoarseness
7. Escharotomy: Circumferential full-thickness burns limiting perfusion
8. Electrical burns: Damage exceeds visible injury; monitor for arrhythmias
9. Chemical burns: Copious water irrigation; do NOT neutralize
10. Burn sepsis: Leading cause of death in burn patients');

-- MCQs for Articles 15-19
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
-- Article 15
('d0000015-0000-0000-0000-000000000015'::uuid, 1, 'What volume of acute pericardial blood accumulation can cause tamponade?', '20-50mL', '100-200mL', '500-750mL', '1000-1500mL', 'Greater than 2000mL', 'B', 'Rapid accumulation of 100-200mL blood can cause tamponade as the pericardium cannot stretch quickly. Slow accumulation allows adaptation, with up to 2L being tolerated.'),
('d0000015-0000-0000-0000-000000000015'::uuid, 2, 'What is pulsus paradoxus?', 'Irregular pulse rate', 'Greater than 10mmHg SBP drop on inspiration', 'Absent peripheral pulse', 'Alternating strong and weak pulses', 'Pulse rate increasing with respiration', 'B', 'Pulsus paradoxus is an exaggerated decrease (>10mmHg) in systolic blood pressure during inspiration. It occurs because inspiratory filling of RV compresses LV in the fixed pericardial space.'),
('d0000015-0000-0000-0000-000000000015'::uuid, 3, 'Which FAST view is used to assess for cardiac tamponade?', 'Right upper quadrant', 'Left upper quadrant', 'Suprapubic', 'Subxiphoid', 'All views equally', 'D', 'The subxiphoid view of FAST directly visualizes the pericardium and can detect pericardial fluid. It is the key view for assessing cardiac tamponade.'),
('d0000015-0000-0000-0000-000000000015'::uuid, 4, 'What is the definitive treatment for cardiac tamponade?', 'Pericardiocentesis', 'IV fluid resuscitation', 'Surgical exploration and repair', 'Inotropic support', 'Observation', 'C', 'While pericardiocentesis is a temporizing measure, definitive treatment requires surgical exploration (sternotomy or thoracotomy) to evacuate blood/clot and repair the cardiac injury.'),
('d0000015-0000-0000-0000-000000000015'::uuid, 5, 'Which cardiac chamber is compressed first in tamponade?', 'Left atrium', 'Left ventricle', 'Right atrium', 'Right ventricle', 'All chambers equally', 'D', 'The right ventricle is compressed first due to its thinner wall and lower intracavitary pressure. This leads to impaired right ventricular filling.'),

-- Article 16
('d0000016-0000-0000-0000-000000000016'::uuid, 1, 'In central cord syndrome, which limbs are more affected?', 'Both equally', 'Lower limbs more than upper', 'Upper limbs more than lower', 'Ipsilateral limbs only', 'Contralateral limbs only', 'C', 'Central cord syndrome characteristically affects upper limbs more than lower limbs ("man in a barrel" pattern). It is the most common incomplete cord syndrome.'),
('d0000016-0000-0000-0000-000000000016'::uuid, 2, 'Which incomplete cord syndrome has the worst prognosis?', 'Central cord syndrome', 'Anterior cord syndrome', 'Brown-Séquard syndrome', 'Posterior cord syndrome', 'Cauda equina syndrome', 'B', 'Anterior cord syndrome has the worst prognosis among incomplete syndromes because it affects motor function and pain/temperature, with only proprioception preserved.'),
('d0000016-0000-0000-0000-000000000016'::uuid, 3, 'Neurogenic shock is characterized by which combination?', 'Tachycardia and hypotension', 'Bradycardia and hypotension', 'Tachycardia and hypertension', 'Bradycardia and hypertension', 'Normal heart rate and hypotension', 'B', 'Neurogenic shock causes bradycardia (loss of sympathetic tone) and hypotension. This contrasts with hypovolemic shock which causes tachycardia.'),
('d0000016-0000-0000-0000-000000000016'::uuid, 4, 'What is the recommended initial imaging for suspected spinal injury?', 'Plain X-rays', 'CT spine', 'MRI spine', 'Myelography', 'No imaging if NEXUS negative', 'B', 'CT spine is the primary imaging modality for suspected spinal injury in trauma. It has replaced plain X-rays due to superior sensitivity.'),
('d0000016-0000-0000-0000-000000000016'::uuid, 5, 'What treatment is NO LONGER recommended for acute spinal cord injury?', 'Spinal immobilization', 'High-dose steroids', 'Maintaining MAP greater than 85mmHg', 'Early surgical decompression', 'Rehabilitation', 'B', 'High-dose methylprednisolone (from NASCIS studies) is no longer recommended for acute spinal cord injury as subsequent analysis showed no significant benefit and potential harm.'),

-- Article 17
('d0000017-0000-0000-0000-000000000017'::uuid, 1, 'What percentage of pelvic stability is provided by the posterior ring?', '20%', '40%', '60%', '80%', '100%', 'C', 'The posterior pelvic ring provides approximately 60% of pelvic stability. Posterior ring disruption (sacroiliac joint, sacrum) indicates a mechanically unstable pelvis.'),
('d0000017-0000-0000-0000-000000000017'::uuid, 2, 'What is the most common mechanism of pelvic fracture?', 'Anteroposterior compression', 'Lateral compression', 'Vertical shear', 'Combined mechanism', 'Axial loading', 'B', 'Lateral compression accounts for approximately 60% of pelvic fractures. It typically occurs from side-impact motor vehicle accidents.'),
('d0000017-0000-0000-0000-000000000017'::uuid, 3, 'Blood at the urethral meatus in pelvic fracture warrants which action?', 'Immediate urethral catheterization', 'Retrograde urethrogram before catheterization', 'Suprapubic catheter insertion', 'CT scan', 'Observation only', 'B', 'Blood at the urethral meatus suggests urethral injury. Retrograde urethrogram should be performed before any attempt at urethral catheterization to avoid converting partial to complete injury.'),
('d0000017-0000-0000-0000-000000000017'::uuid, 4, 'The pelvic binder should be placed at which anatomical level?', 'Iliac crests', 'Greater trochanters', 'Umbilicus', 'Pubic symphysis', 'Anterior superior iliac spines', 'B', 'The pelvic binder should be applied at the level of the greater trochanters to effectively reduce pelvic volume and promote tamponade of venous bleeding.'),
('d0000017-0000-0000-0000-000000000017'::uuid, 5, 'What percentage of hemorrhage in unstable pelvic fractures is venous?', '10%', '30%', '50%', '70%', '90%', 'E', 'Approximately 90% of hemorrhage in pelvic fractures is from the venous plexus, which responds to volume reduction and tamponade. Only 10% is arterial, which may require embolization.'),

-- Article 18
('d0000018-0000-0000-0000-000000000018'::uuid, 1, 'What is the earliest and most reliable sign of compartment syndrome?', 'Pulselessness', 'Paralysis', 'Pain on passive stretch', 'Paresthesia', 'Pallor', 'C', 'Pain on passive stretch of muscles in the affected compartment is the earliest and most reliable clinical sign. Pain is characteristically out of proportion to the injury.'),
('d0000018-0000-0000-0000-000000000018'::uuid, 2, 'What compartment pressure indicates compartment syndrome?', 'Greater than 10mmHg', 'Greater than 20mmHg', 'Greater than 30mmHg', 'Greater than 50mmHg', 'Greater than 70mmHg', 'C', 'Absolute compartment pressure >30mmHg or delta P (diastolic BP minus compartment pressure) <30mmHg indicates compartment syndrome requiring fasciotomy.'),
('d0000018-0000-0000-0000-000000000018'::uuid, 3, 'What is the significance of pulses in compartment syndrome?', 'Always absent', 'Usually present', 'Present only in early stages', 'Present in upper limb only', 'Indicates severity', 'B', 'Pulses are usually PRESENT in compartment syndrome because arterial pressure exceeds compartment pressure. Pulselessness suggests vascular injury, not compartment syndrome.'),
('d0000018-0000-0000-0000-000000000018'::uuid, 4, 'After fasciotomy, wound closure is typically performed when?', 'Immediately', '24 hours', '48-72 hours', '1 week', '2 weeks', 'C', 'Fasciotomy wounds are left open initially and closed by delayed primary closure or skin grafting at 48-72 hours once swelling subsides.'),
('d0000018-0000-0000-0000-000000000018'::uuid, 5, 'Volkmann ischemic contracture is a complication of compartment syndrome in which location?', 'Leg', 'Thigh', 'Forearm', 'Hand', 'Foot', 'C', 'Volkmann ischemic contracture occurs in the forearm following compartment syndrome. It results in characteristic wrist flexion, MCP extension, and IP flexion.'),

-- Article 19
('d0000019-0000-0000-0000-000000000019'::uuid, 1, 'According to the Rule of Nines, what percentage does each lower limb represent in adults?', '9%', '12%', '15%', '18%', '21%', 'D', 'In adults, each lower limb represents 18% of total body surface area according to the Rule of Nines. This includes both anterior (9%) and posterior (9%) surfaces.'),
('d0000019-0000-0000-0000-000000000019'::uuid, 2, 'The Parkland formula calculates fluid resuscitation as:', '2mL x kg x %TBSA', '4mL x kg x %TBSA', '6mL x kg x %TBSA', '8mL x kg x %TBSA', '10mL x kg x %TBSA', 'B', 'The Parkland formula is 4mL × body weight (kg) × %TBSA burn. Half is given in the first 8 hours (from time of injury) and half over the next 16 hours.'),
('d0000019-0000-0000-0000-000000000019'::uuid, 3, 'What portion of Parkland fluid is given in the first 8 hours?', 'One quarter', 'One third', 'Half', 'Two thirds', 'Three quarters', 'C', 'Half of the calculated fluid is given in the first 8 hours (timed from the injury, not admission), and the remaining half is given over the next 16 hours.'),
('d0000019-0000-0000-0000-000000000019'::uuid, 4, 'Which sign is NOT associated with inhalation injury?', 'Facial burns', 'Singed nasal hair', 'Soot in sputum', 'Hoarseness', 'Peripheral edema', 'E', 'Peripheral edema is not a specific sign of inhalation injury. Signs include facial burns, singed nasal/facial hair, soot in mouth/nose/sputum, and hoarseness or stridor.'),
('d0000019-0000-0000-0000-000000000019'::uuid, 5, 'What is the leading cause of death in burn patients?', 'Hypovolemic shock', 'Inhalation injury', 'Sepsis', 'Acute kidney injury', 'Cardiac arrhythmia', 'C', 'Sepsis (burn wound infection) is the leading cause of death in burn patients. Sources include the wound itself, catheter-related infections, and pneumonia.');
