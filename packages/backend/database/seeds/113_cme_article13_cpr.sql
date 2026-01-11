-- CME Article 13: CPR (Cardiopulmonary Resuscitation)
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'art00013-0000-0000-0000-000000000013',
    'b0000013-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Cardiopulmonary Resuscitation: Evidence-Based Practice',
    'BLS, ACLS, and Post-Resuscitation Care',
    'Cardiac arrest remains a leading cause of death worldwide. High-quality cardiopulmonary resuscitation (CPR) and rapid defibrillation are the most critical interventions for survival. This CME article provides comprehensive coverage of Basic Life Support (BLS), Advanced Cardiovascular Life Support (ACLS), special resuscitation circumstances, and post-cardiac arrest care. Based on current AHA/ILCOR guidelines, this review emphasizes the chain of survival and evidence-based interventions.',
    'UNTH Surgery Department, Emergency Medicine Unit',
    55,
    3.0,
    'intermediate',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'introduction', 'Introduction',
'Cardiac arrest is the cessation of effective cardiac mechanical activity, resulting in loss of consciousness, absent pulse, and apnea. Without immediate intervention, irreversible brain injury begins within 4-6 minutes, and death follows.

**Global Burden:**
- ~5 million cardiac arrests worldwide annually
- Out-of-hospital cardiac arrest (OHCA) survival: 10-12%
- In-hospital cardiac arrest (IHCA) survival: 25-30%
- Quality CPR and early defibrillation can double or triple survival

**The Chain of Survival:**

For out-of-hospital cardiac arrest:
1. Recognition and activation of emergency response
2. Early CPR with emphasis on chest compressions
3. Rapid defibrillation
4. Advanced resuscitation by EMS
5. Post-cardiac arrest care
6. Recovery

For in-hospital cardiac arrest:
1. Surveillance and prevention
2. Recognition and activation
3. High-quality CPR
4. Defibrillation
5. Advanced resuscitation and post-arrest care
6. Recovery

**Why CPR Saves Lives:**
- Maintains minimal blood flow to vital organs
- Buys time until definitive treatment (defibrillation, ROSC)
- Chest compressions generate 25-30% of normal cardiac output
- Brain and heart viability preserved

**Quality vs. Quantity:**
High-quality CPR is more important than the sheer act of doing CPR. Poor-quality CPR provides minimal benefit. This article emphasizes the components of high-quality resuscitation.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Describe the chain of survival for both out-of-hospital and in-hospital cardiac arrest

2. Demonstrate the components of high-quality CPR including rate, depth, recoil, and minimizing interruptions

3. Perform adult BLS including chest compressions, airway management, and rescue breathing

4. Describe the use of automated external defibrillators (AEDs) and manual defibrillators

5. Differentiate between shockable (VF/pVT) and non-shockable (asystole/PEA) rhythms and their management

6. Apply ACLS algorithms for cardiac arrest, including drug therapy and advanced interventions

7. Identify reversible causes of cardiac arrest using the H''s and T''s framework

8. Describe special resuscitation circumstances including drowning, electrocution, and pregnancy

9. Outline post-cardiac arrest care including targeted temperature management and coronary intervention

10. Discuss ethical considerations in resuscitation including when to terminate efforts', 2);

-- Section 3: High-Quality CPR
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'content', 'High-Quality CPR',
'## Components of High-Quality CPR

High-quality CPR is the most critical intervention for survival. Each component is evidence-based and measurable.

### 1. Chest Compression Rate
- **Target: 100-120 compressions per minute**
- Too slow: Inadequate blood flow
- Too fast (>120): Decreased compression depth, incomplete recoil

### 2. Chest Compression Depth
- **Adult: At least 5 cm (2 inches), no more than 6 cm**
- Child: At least 1/3 AP diameter (~5 cm)
- Infant: At least 1/3 AP diameter (~4 cm)
- Deeper compressions = better coronary and cerebral perfusion

### 3. Full Chest Recoil
- Allow complete chest recoil between compressions
- Leaning on chest impedes venous return
- Reduces cardiac output by up to 25%
- Feedback devices can detect incomplete recoil

### 4. Minimize Interruptions
- **Chest compression fraction (CCF) >80%** (ideally >80%)
- Hands-off time should be minimized
- Limit interruptions to <10 seconds
- Plan rhythm checks and shocks to be rapid

### 5. Avoid Excessive Ventilation
- Hyperventilation is harmful
  - Increases intrathoracic pressure
  - Decreases venous return
  - Decreases coronary perfusion pressure
- Target: 1 breath every 6 seconds (10/min) with advanced airway

## Compression-to-Ventilation Ratio

| Scenario | Ratio |
|----------|-------|
| Adult, no advanced airway (1 or 2 rescuers) | 30:2 |
| Child/infant, 1 rescuer | 30:2 |
| Child/infant, 2+ healthcare rescuers | 15:2 |
| With advanced airway | Continuous compressions; 1 breath/6 sec |
| Compression-only CPR (untrained/unwilling) | Continuous compressions |

## Team Dynamics

### Roles During Resuscitation
- **Team leader**: Coordinates, assigns roles, makes decisions
- **Compressor**: High-quality chest compressions (rotate every 2 minutes)
- **Airway manager**: Ventilation, monitors ETCO2
- **Defibrillator/monitor**: Rhythm analysis, shock delivery
- **IV/IO/medications**: Vascular access, drug administration
- **Recorder**: Time, interventions, documentation

### Closed-Loop Communication
1. Leader gives clear order with name
2. Team member repeats order
3. Team member performs task
4. Team member confirms completion

## Monitoring CPR Quality

### ETCO2 (End-Tidal CO2)
- Real-time feedback on compression effectiveness
- **Target: ETCO2 >10 mmHg** (ideally 20+)
- Low ETCO2 = inadequate compressions or poor prognosis
- Sudden increase suggests ROSC

### Arterial Relaxation Pressure
- If arterial line in place
- Diastolic pressure >20 mmHg during CPR
- Indicates adequate coronary perfusion pressure

### CPR Feedback Devices
- Audiovisual feedback on rate, depth, recoil
- Improve CPR quality in training and real resuscitations
- Available on many defibrillators', 3);

-- Section 4: Basic Life Support (BLS)
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'content', 'Basic Life Support (BLS)',
'## BLS Algorithm: Adult Cardiac Arrest

### Step 1: Ensure Scene Safety
- Check for hazards to rescuer and victim
- Wear PPE if available

### Step 2: Check Responsiveness
- Tap shoulders, shout "Are you okay?"
- If unresponsive, proceed

### Step 3: Activate Emergency Response
- Call for help / activate code team
- Call 911 (or local emergency number)
- Request AED

### Step 4: Check Pulse and Breathing (Simultaneously)
- Check carotid pulse (healthcare provider)
- Look for normal breathing
- Take no more than 10 seconds
- No pulse or no normal breathing → Start CPR

### Step 5: Begin CPR
- **C-A-B sequence** (Compressions-Airway-Breathing)
- Start with chest compressions immediately
- 30 compressions before ventilations (if no advanced airway)

### Step 6: Use AED as Soon as Available
- Turn on, follow prompts
- Apply pads
- Analyze rhythm
- Shock if advised
- Resume CPR immediately after shock

## Chest Compression Technique

### Hand Position
- Heel of one hand on lower half of sternum
- Other hand on top, fingers interlaced
- Arms straight, shoulders directly over hands

### Body Mechanics
- Use body weight, not arm strength
- Keep elbows locked
- Compress straight down
- Allow full recoil

### Compression Depth and Rate
- Depth: 5-6 cm (2-2.4 inches)
- Rate: 100-120/min
- Count: "1 and 2 and 3 and..."

## Airway Management

### Head-Tilt Chin-Lift
- Standard maneuver for unconscious patient
- Tilt head back, lift chin forward
- Opens airway by displacing tongue

### Jaw Thrust
- For suspected cervical spine injury
- Lift mandible forward without extending neck

## Rescue Breathing

### Mouth-to-Mouth
- Pinch nose, seal lips
- Give breath over 1 second
- Watch for chest rise
- Avoid excessive ventilation

### Bag-Mask Ventilation
- Proper mask seal (C-E technique)
- Squeeze bag to deliver visible chest rise
- Avoid rapid, forceful ventilations

## AED Use

### Procedure
1. Turn on AED
2. Attach pads (right clavicle, left axilla)
3. Clear patient during analysis
4. If shock advised:
   - Clear patient verbally and visually
   - Deliver shock
   - Resume CPR immediately
5. If no shock advised:
   - Resume CPR immediately

### Special Situations
- Water: Move victim to dry surface, dry chest
- Medication patches: Remove if in pad placement area
- Pacemaker/ICD: Place pad at least 1 inch away
- Hairy chest: Shave or use extra pad to remove hair

## Pediatric BLS Modifications

### Compression Technique
- Child (1 year - puberty): Heel of one or two hands
- Infant (<1 year): Two fingers or two-thumb encircling

### Depth
- Child: At least 1/3 AP diameter (~5 cm)
- Infant: At least 1/3 AP diameter (~4 cm)

### Sequence
- If witnessed arrest: C-A-B (same as adult)
- If asphyxial arrest likely: May give rescue breaths first
- 2-rescuer: 15:2 ratio', 4);

-- Section 5: ACLS - Cardiac Arrest
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'content', 'Advanced Cardiovascular Life Support (ACLS)',
'## ACLS Cardiac Arrest Algorithm

### Initial Assessment
- Start CPR
- Give oxygen
- Attach monitor/defibrillator
- Assess rhythm

### Rhythm Classification

**Shockable Rhythms:**
- Ventricular Fibrillation (VF)
- Pulseless Ventricular Tachycardia (pVT)

**Non-Shockable Rhythms:**
- Asystole
- Pulseless Electrical Activity (PEA)

## Shockable Rhythm (VF/pVT) Management

### Cycle 1
1. Identify VF/pVT on monitor
2. **Defibrillate** (biphasic 120-200 J, or manufacturer recommendation)
3. Resume CPR immediately for 2 minutes
4. Establish IV/IO access

### Cycle 2
5. Rhythm check after 2 minutes
6. If VF/pVT persists: Shock again
7. Resume CPR
8. **Epinephrine 1 mg IV/IO** (then every 3-5 minutes)

### Cycle 3
9. Rhythm check
10. If VF/pVT persists: Shock
11. Resume CPR
12. **Amiodarone 300 mg IV/IO** (or Lidocaine 1-1.5 mg/kg)

### Subsequent Cycles
- Continue 2-minute CPR cycles with rhythm checks
- Shock if still shockable
- Epinephrine every 3-5 minutes
- Amiodarone 150 mg may repeat once (or Lidocaine 0.5-0.75 mg/kg)
- Consider reversible causes

## Non-Shockable Rhythm (Asystole/PEA) Management

### Cycle 1
1. Identify asystole or PEA
2. Start/continue CPR for 2 minutes
3. Establish IV/IO access
4. **Epinephrine 1 mg IV/IO** as soon as possible

### Cycle 2
5. Rhythm check after 2 minutes
6. Continue CPR
7. Epinephrine every 3-5 minutes

### Critical Action
- **Search for reversible causes (H''s and T''s)**
- PEA may become shockable if cause treated
- Asystole has poorest prognosis

## Reversible Causes: The H''s and T''s

### H''s
| Cause | Recognition | Treatment |
|-------|-------------|-----------|
| **Hypovolemia** | History, flat neck veins | Volume resuscitation |
| **Hypoxia** | Cyanosis, low SpO2 | Oxygenation, airway |
| **Hydrogen ion (Acidosis)** | ABG, history (DKA, renal failure) | Sodium bicarbonate |
| **Hypo/Hyperkalemia** | ECG changes, history | Calcium, glucose/insulin, dialysis |
| **Hypothermia** | Low temp, history of exposure | Warming, prolong resuscitation |

### T''s
| Cause | Recognition | Treatment |
|-------|-------------|-----------|
| **Tension pneumothorax** | Absent breath sounds, JVD, tracheal deviation | Needle decompression |
| **Tamponade (cardiac)** | JVD, muffled heart sounds, PEA | Pericardiocentesis |
| **Toxins** | History, toxidrome | Specific antidote |
| **Thrombosis (pulmonary)** | History, sudden collapse | Consider thrombolytics |
| **Thrombosis (coronary)** | Prior symptoms, ECG | PCI if ROSC achieved |

## Drug Therapy

### Epinephrine
- **Dose**: 1 mg IV/IO every 3-5 minutes
- **Mechanism**: Vasoconstriction, increases coronary perfusion pressure
- **Timing**: Give early in non-shockable, after 2nd shock in shockable

### Amiodarone
- **First dose**: 300 mg IV/IO bolus
- **Second dose**: 150 mg IV/IO
- For refractory VF/pVT

### Lidocaine (Alternative to Amiodarone)
- **First dose**: 1-1.5 mg/kg IV/IO
- **Subsequent**: 0.5-0.75 mg/kg every 5-10 min (max 3 mg/kg)

### Sodium Bicarbonate
- Consider for known acidosis, hyperkalemia, or TCA overdose
- Not routinely recommended

### Calcium
- For hyperkalemia, hypocalcemia, calcium channel blocker overdose
- Calcium chloride 10% or calcium gluconate

## Advanced Airway

### Options
- Endotracheal intubation
- Supraglottic airway (LMA, King airway)

### Timing
- Should not interrupt CPR
- Place during ongoing compressions if possible
- Confirm placement with capnography

### After Advanced Airway Placed
- Continuous compressions (no pauses)
- Ventilate every 6 seconds (10 breaths/min)
- Monitor ETCO2', 5);

-- Section 6: Special Circumstances
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'content', 'Special Resuscitation Circumstances',
'## Drowning

### Key Principles
- Hypoxia is the primary cause of arrest
- **Rescue breathing is priority** (after removing from water)
- Water temperature affects outcome
- Begin CPR in shallow water if safe

### Modifications
- Provide 5 initial rescue breaths if possible
- Standard CPR algorithm applies
- Cervical spine precautions only if diving injury or high-impact mechanism
- Do not attempt abdominal thrusts to expel water

### Outcomes
- Cold water may protect the brain (consider prolonged resuscitation)
- Duration of submersion is major prognostic factor

## Electrocution

### Key Principles
- Ensure scene is safe (power disconnected)
- May cause VF or asystole
- Associated injuries: Burns, falls, trauma

### Modifications
- Standard CPR/ACLS
- Higher success rates than other arrest etiologies
- Check for burns at entry/exit sites
- Maintain C-spine precautions if fall occurred

## Pregnancy

### Key Principles
- Two patients to consider
- Aortocaval compression by gravid uterus
- Physiologic changes of pregnancy

### Modifications
- **Left lateral uterine displacement** (manual or wedge)
- Standard CPR otherwise
- Do not delay defibrillation
- Consider perimortem cesarean delivery (PMCD)

### Perimortem Cesarean Delivery
- If no ROSC within 4-5 minutes
- Relieves aortocaval compression
- Performed at bedside
- Best outcomes if delivery within 5 minutes of arrest

## Opioid Overdose

### Recognition
- Respiratory depression/arrest
- Pinpoint pupils
- Known or suspected opioid use

### Management
- Call for help
- Support ventilation (BVM)
- **Naloxone**: 
  - 0.4-2 mg IV/IM/SQ/IN
  - May repeat every 2-3 minutes
  - Continue until adequate respirations
- If pulseless: Standard CPR/ACLS

## Anaphylaxis

### Management
- **Epinephrine IM** 0.3-0.5 mg (first-line)
- Repeat every 5-15 minutes as needed
- IV fluids for hypotension
- Antihistamines and steroids (secondary)
- If cardiac arrest: Standard ACLS with epinephrine

## Pulmonary Embolism

### Recognition During Arrest
- Sudden collapse
- Risk factors present
- PEA with elevated JVP

### Considerations
- **Fibrinolysis** may be considered
- ECMO or surgical embolectomy in specialized centers
- Standard CPR may be less effective due to obstructed outflow

## Local Anesthetic Systemic Toxicity (LAST)

### Recognition
- Occurs during or shortly after local anesthetic administration
- CNS symptoms (tinnitus, confusion, seizures)
- Cardiovascular collapse

### Treatment
- Stop local anesthetic injection
- Call for help
- **Lipid Emulsion Therapy (Intralipid 20%)**
  - 1.5 mL/kg bolus
  - 0.25 mL/kg/min infusion
- Avoid vasopressin, calcium channel blockers, beta-blockers
- Smaller epinephrine doses (<1 mcg/kg)', 6);

-- Section 7: Post-Cardiac Arrest Care
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'content', 'Post-Cardiac Arrest Care',
'## Overview

Post-cardiac arrest care is the final critical link in the chain of survival. ROSC is just the beginning—subsequent care determines neurologic outcome.

### Goals
- Optimize cardiopulmonary function
- Treat precipitating cause
- Minimize brain injury
- Progress toward good neurologic recovery

## Immediate Post-ROSC Care

### Airway and Breathing
- Maintain advanced airway (confirm placement)
- Titrate FiO2 to SpO2 94-98% (avoid hyperoxia)
- Target ETCO2 35-45 mmHg (normocapnia)
- Mechanical ventilation as needed

### Circulation
- **12-lead ECG** immediately (detect STEMI)
- Treat hypotension (MAP >65 mmHg or SBP >90 mmHg)
- IV fluids and/or vasopressors (norepinephrine preferred)
- Avoid post-arrest hypotension

### Neurologic Assessment
- Assess level of consciousness
- Check for purposeful movements
- Consider sedation if intubated

## Targeted Temperature Management (TTM)

### Rationale
- Decreases cerebral metabolic rate
- Reduces inflammation and reperfusion injury
- Improves neurologic outcomes

### Indications
- Comatose (not following commands) adult after ROSC
- All rhythms (shockable and non-shockable)
- OHCA and IHCA

### Temperature Targets
- **Target: 32-36°C** for at least 24 hours
- Recent evidence suggests 36°C may be as effective as 32-34°C
- Avoid fever (>37.7°C) for at least 72 hours

### Cooling Methods
- Surface cooling (ice packs, cooling blankets)
- Intravascular cooling catheters
- Cold IV fluids (not recommended for prehospital induction)

### Duration
- Maintain target temperature for at least 24 hours
- Slow rewarming (0.25-0.5°C/hour)

### Complications
- Shivering (treat with sedation, paralytics)
- Bradycardia
- Electrolyte abnormalities
- Coagulopathy
- Infection

## Coronary Angiography

### Indications
- **STEMI on post-arrest ECG**: Emergent PCI recommended
- **No STEMI but suspected cardiac cause**: Consider early angiography
- Should not delay TTM

### Timing
- STEMI: Immediate (within 90 minutes)
- Non-STEMI/no obvious cause: Within 24 hours (if stable)

## Neurologic Prognostication

### Timing
- Avoid early prognostication (<72 hours from ROSC)
- Allow adequate time off sedation
- Use multimodal approach

### Poor Prognosis Indicators (after 72+ hours)
- Absence of pupillary and corneal reflexes
- Bilaterally absent SSEPs
- Status myoclonus within 72 hours
- Highly malignant EEG
- Diffuse anoxic injury on CT/MRI

### Cautions
- No single test is definitive
- TTM may delay recovery of exam
- Multimodal testing preferred

## Organ Donation

- Consider in patients with poor prognosis
- Early contact with organ procurement organization
- Discuss with family

## Post-Arrest Syndrome

### Components
1. **Post-cardiac arrest brain injury**: Leading cause of death
2. **Post-cardiac arrest myocardial dysfunction**: Reversible stunning
3. **Systemic ischemia-reperfusion response**: Similar to sepsis
4. **Persistent precipitating pathology**: Treat underlying cause

### Management
- Hemodynamic optimization
- Infection surveillance
- Glycemic control
- Seizure prophylaxis/treatment', 7);

-- Section 8: Ethics and Termination
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'content', 'Ethical Considerations',
'## When to Start CPR

### Presumption of Resuscitation
- Unless valid Do Not Resuscitate (DNR) order exists
- Unless death is obvious (rigor mortis, dependent lividity, decapitation)
- If in doubt, start CPR

### Exceptions
- Valid DNR order or advance directive
- Terminal illness with no resuscitation orders
- Injuries incompatible with life

## When to Stop CPR

### Factors to Consider
- Duration of resuscitation
- Underlying cause (reversible vs. irreversible)
- Response to interventions
- ETCO2 values (persistently <10 mmHg poor prognosis)
- Patient''s wishes and values
- Clinical judgment

### In-Hospital Termination Considerations
- No ROSC after 20+ minutes of ACLS
- Non-shockable rhythm throughout
- No reversible causes identified
- Team consensus

### Out-of-Hospital Termination
- Follow local protocols
- EMS transport decision
- Consider circumstances (hypothermia, young age, witnessed arrest)

## Advanced Directives and DNR Orders

### Types
- **Living will**: States treatment preferences
- **DNAR/DNR order**: Physician order based on patient/surrogate wishes
- **POLST/MOLST**: Portable medical orders

### Validity During Surgery
- Pre-operative discussion essential
- Many institutions require reconsideration for OR
- Full resuscitation vs. modified approach

## Family Presence During Resuscitation

### Benefits
- Closure and understanding
- May aid grieving process
- Valued by many families

### Considerations
- Assign staff to support family
- Provide explanation of events
- Does not interfere with resuscitation quality
- Increasing acceptance in guidelines

## Futility

### Definition
- Intervention that cannot achieve intended goal
- Controversial and context-dependent

### Approach
- Honest communication with family
- Ethics committee consultation when appropriate
- Respect cultural and personal values

## Documentation

### Required Elements
- Time arrest recognized
- Time CPR started
- Interventions and times (shocks, drugs)
- Personnel involved
- Rhythm changes
- Time of ROSC or death
- Family notification', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'key_points', 'Key Points',
'1. **High-Quality CPR**: Rate 100-120/min, depth 5-6 cm, full recoil, minimize interruptions (<10 sec), avoid excessive ventilation. Chest compression fraction >80%.

2. **C-A-B Sequence**: Start with compressions, then airway and breathing. Early compressions are critical.

3. **Compression-to-Ventilation Ratio**: 30:2 for adults without advanced airway. With advanced airway: continuous compressions + 1 breath every 6 seconds.

4. **Shockable Rhythms (VF/pVT)**: Defibrillate as soon as possible, then immediate CPR. Epinephrine after 2nd shock, amiodarone after 3rd shock.

5. **Non-Shockable Rhythms (Asystole/PEA)**: Epinephrine immediately, search for reversible causes (H''s and T''s). No benefit from defibrillation.

6. **H''s and T''s**: Hypovolemia, Hypoxia, Hydrogen ion (acidosis), Hypo/Hyperkalemia, Hypothermia; Tension pneumothorax, Tamponade, Toxins, Thrombosis (pulmonary/coronary).

7. **ETCO2 Monitoring**: Target >10 mmHg during CPR. Indicates compression quality and perfusion. Sudden rise may indicate ROSC.

8. **Epinephrine Dosing**: 1 mg IV/IO every 3-5 minutes for both shockable and non-shockable rhythms.

9. **Targeted Temperature Management**: Target 32-36°C for at least 24 hours in comatose patients after ROSC. Avoid fever for 72 hours.

10. **Neurologic Prognostication**: Delay until at least 72 hours after ROSC and off sedation. Use multimodal assessment.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: Don''t interrupt CPR to check for pulse or rhythm unless you''ve completed a full 2-minute cycle. Every pause decreases coronary perfusion pressure.

💡 **Pearl 2**: Metronome apps or CPR feedback devices help maintain proper compression rate. The song "Stayin'' Alive" by the Bee Gees is ~100-110 bpm for reference.

💡 **Pearl 3**: Push hard! Studies show rescuers consistently under-compress. It''s difficult to compress too deep (6 cm max), but easy to compress too shallow.

💡 **Pearl 4**: If ETCO2 drops during CPR, check compression quality first. Fatigue causes decreased effectiveness—rotate compressors every 2 minutes.

💡 **Pearl 5**: In PEA arrest, palpate for a pulse during compressions. If you feel pulses with CPR but not without, continue—compressions are maintaining output.

💡 **Pearl 6**: Don''t delay defibrillation waiting for IV access or intubation. The only interventions proven to improve survival in VF/pVT are CPR and early defibrillation.

💡 **Pearl 7**: Calcium should NOT be given routinely in cardiac arrest. It''s indicated only for hyperkalemia, hypocalcemia, or calcium channel blocker toxicity.

💡 **Pearl 8**: In drowning, prioritize rescue breathing. These are asphyxial arrests—ventilation is crucial. Begin if safely possible while still in shallow water.

💡 **Pearl 9**: Perimortem cesarean delivery in pregnant arrest should happen at the resuscitation location, not in the OR. Time is critical—aim for delivery within 5 minutes.

💡 **Pearl 10**: A patient who was just in VF/pVT arrest will likely arrest again. Have pads in place and be ready for re-arrest. Post-arrest arrhythmias are common.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00013-0000-0000-0000-000000000013', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('art00013-0000-0000-0000-000000000013', 1, 'Panchal AR, et al. Part 3: Adult Basic and Advanced Life Support: 2020 American Heart Association Guidelines for Cardiopulmonary Resuscitation and Emergency Cardiovascular Care. Circulation. 2020;142(16_suppl_2):S366-S468.', '10.1161/CIR.0000000000000916', '33081529', NULL),
('art00013-0000-0000-0000-000000000013', 2, 'Merchant RM, et al. Part 1: Executive Summary: 2020 American Heart Association Guidelines for Cardiopulmonary Resuscitation and Emergency Cardiovascular Care. Circulation. 2020;142(16_suppl_2):S337-S357.', '10.1161/CIR.0000000000000918', '33081530', NULL),
('art00013-0000-0000-0000-000000000013', 3, 'Nolan JP, et al. European Resuscitation Council and European Society of Intensive Care Medicine guidelines 2021: post-resuscitation care. Intensive Care Med. 2021;47(4):369-421.', '10.1007/s00134-021-06368-4', '33765189', NULL),
('art00013-0000-0000-0000-000000000013', 4, 'Dankiewicz J, et al. Hypothermia versus Normothermia after Out-of-Hospital Cardiac Arrest (TTM2 Trial). N Engl J Med. 2021;384(24):2283-2294.', '10.1056/NEJMoa2100591', '34133859', NULL),
('art00013-0000-0000-0000-000000000013', 5, 'Kleinman ME, et al. Part 5: Adult Basic Life Support and Cardiopulmonary Resuscitation Quality. Circulation. 2015;132(18 Suppl 2):S414-S435.', '10.1161/CIR.0000000000000259', '26472993', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 1,
'The recommended chest compression rate for adult CPR is:',
'At least 60 compressions per minute',
'80-100 compressions per minute',
'100-120 compressions per minute',
'120-140 compressions per minute',
'As fast as possible',
'C',
'The recommended compression rate for adult CPR is 100-120 compressions per minute. Rates below 100 provide inadequate blood flow, while rates above 120 are associated with decreased compression depth and incomplete recoil, reducing effectiveness.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 2,
'The recommended chest compression depth for adults is:',
'At least 2 cm (1 inch)',
'At least 4 cm (1.5 inches)',
'At least 5 cm (2 inches), no more than 6 cm',
'At least 7 cm (3 inches)',
'Depth does not matter as long as rate is adequate',
'C',
'Adult chest compression depth should be at least 5 cm (2 inches) but no more than 6 cm (2.4 inches). Inadequate depth reduces coronary and cerebral perfusion, while excessive depth increases injury risk.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 3,
'Which rhythm is a "shockable" rhythm in cardiac arrest?',
'Asystole',
'Pulseless electrical activity (PEA)',
'Ventricular fibrillation (VF)',
'Sinus bradycardia with hypotension',
'Third-degree heart block',
'C',
'Ventricular fibrillation (VF) is a shockable rhythm, along with pulseless ventricular tachycardia (pVT). Asystole and PEA are non-shockable rhythms and do not respond to defibrillation.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 4,
'When should the first dose of epinephrine be given in VF/pVT cardiac arrest?',
'Immediately when cardiac arrest is recognized',
'After the second shock',
'After the third shock',
'Only if two doses of amiodarone are ineffective',
'Epinephrine is not used in shockable rhythms',
'B',
'In VF/pVT, epinephrine 1 mg IV/IO is given after the second shock (during the second 2-minute CPR cycle). Early defibrillation is the priority. In non-shockable rhythms (asystole/PEA), epinephrine is given as soon as IV/IO access is established.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 5,
'The recommended dose of epinephrine during cardiac arrest is:',
'0.1 mg IV/IO every 3-5 minutes',
'0.5 mg IV/IO every 3-5 minutes',
'1 mg IV/IO every 3-5 minutes',
'3 mg IV/IO every 3-5 minutes',
'5 mg IV/IO every 3-5 minutes',
'C',
'The standard dose of epinephrine during cardiac arrest is 1 mg IV/IO (1:10,000 concentration), given every 3-5 minutes. This applies to both shockable and non-shockable rhythms.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 6,
'Which of the following is NOT one of the "H''s" for reversible causes of cardiac arrest?',
'Hypovolemia',
'Hypoglycemia',
'Hypothermia',
'Hydrogen ion (acidosis)',
'Hypoxia',
'B',
'The H''s are: Hypovolemia, Hypoxia, Hydrogen ion (acidosis), Hypo/Hyperkalemia, and Hypothermia. Hypoglycemia, while important, is not one of the classic H''s. The T''s are: Tension pneumothorax, Tamponade, Toxins, and Thrombosis (pulmonary/coronary).',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 7,
'During CPR with an advanced airway in place, ventilations should be given:',
'30 compressions followed by 2 breaths',
'Every 2 seconds (30 breaths per minute)',
'Every 6 seconds (10 breaths per minute)',
'Every 10 seconds (6 breaths per minute)',
'Only when the patient appears cyanotic',
'C',
'With an advanced airway in place, continuous chest compressions should be given without pause, and ventilations should be delivered every 6 seconds (10 breaths per minute). This optimizes chest compression fraction.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 8,
'An end-tidal CO2 (ETCO2) reading during CPR can indicate:',
'Quality of chest compressions',
'Possible return of spontaneous circulation',
'Prognosis',
'All of the above',
'None of the above',
'D',
'ETCO2 during CPR indicates compression quality (low ETCO2 suggests inadequate compressions), can detect ROSC (sudden rise in ETCO2), and has prognostic value (persistently <10 mmHg associated with poor outcomes).',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 9,
'The first dose of amiodarone in refractory VF/pVT is:',
'150 mg IV/IO',
'300 mg IV/IO',
'450 mg IV/IO',
'600 mg IV/IO',
'1 mg/kg IV/IO',
'B',
'The first dose of amiodarone for refractory VF/pVT is 300 mg IV/IO bolus, given after the third shock. A second dose of 150 mg may be given if VF/pVT persists. Lidocaine is an alternative (1-1.5 mg/kg first dose).',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 10,
'How often should compressors be rotated during CPR?',
'Every 30 seconds',
'Every 1 minute',
'Every 2 minutes',
'Every 5 minutes',
'Only when fatigued',
'C',
'Compressors should rotate every 2 minutes (at rhythm check) to prevent fatigue-related decline in compression quality. Studies show compression quality decreases after just 1-2 minutes. Rotation should take <10 seconds.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 11,
'The target chest compression fraction (CCF) during cardiac arrest should be:',
'Greater than 50%',
'Greater than 60%',
'Greater than 80%',
'100%',
'Any CCF is acceptable',
'C',
'Chest compression fraction (percentage of time spent on compressions) should be >80% (ideally as high as possible). Higher CCF is associated with improved survival. Interruptions for rhythm checks, shocks, and ventilation should be minimized.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 12,
'In pregnancy, what modification is essential during CPR?',
'Use only half the standard drug doses',
'Perform compressions lower on the sternum',
'Provide left lateral uterine displacement',
'Avoid defibrillation until after delivery',
'CPR should not be performed during pregnancy',
'C',
'Left lateral uterine displacement (manual or wedge) is essential during CPR in pregnancy to relieve aortocaval compression by the gravid uterus. Standard compressions, drug doses, and defibrillation apply. Perimortem cesarean delivery should be considered if no ROSC within 4-5 minutes.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 13,
'The primary mechanism of death in drowning is:',
'Cardiac arrhythmia',
'Electrolyte imbalance',
'Hypoxia',
'Hypothermia',
'Aspiration pneumonia',
'C',
'Hypoxia is the primary cause of arrest in drowning. The arrest is asphyxial in nature. Therefore, rescue breathing is particularly important in drowning resuscitation, and victims may benefit from 5 initial rescue breaths when possible.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 14,
'Targeted temperature management after cardiac arrest involves maintaining a temperature of:',
'28-30°C for 12 hours',
'32-36°C for at least 24 hours',
'36-38°C for 48 hours',
'38-40°C for 72 hours',
'Normal body temperature throughout',
'B',
'Targeted temperature management (TTM) involves maintaining a core temperature of 32-36°C for at least 24 hours in comatose patients after ROSC. Fever (>37.7°C) should be avoided for at least 72 hours after arrest.',
'3,4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 15,
'Neurologic prognostication after cardiac arrest should be delayed until at least:',
'12 hours after ROSC',
'24 hours after ROSC',
'48 hours after ROSC',
'72 hours after ROSC, off sedation',
'1 week after ROSC',
'D',
'Neurologic prognostication should be delayed until at least 72 hours after ROSC (and longer if TTM was used or sedatives are still present). Early prognostication can lead to premature withdrawal of care in patients who may recover. Multimodal assessment is recommended.',
'3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 16,
'After ROSC, oxygen should be titrated to maintain SpO2 of:',
'88-92%',
'94-98%',
'99-100%',
'As high as possible',
'Oxygen therapy is not needed after ROSC',
'B',
'After ROSC, oxygen should be titrated to maintain SpO2 94-98%. Both hypoxemia and hyperoxemia are harmful. Once reliable SpO2 monitoring is available, FiO2 should be weaned to avoid excessive oxygen levels.',
'1,3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 17,
'The treatment of choice for opioid overdose with respiratory depression is:',
'Epinephrine',
'Atropine',
'Naloxone',
'Flumazenil',
'Sodium bicarbonate',
'C',
'Naloxone is the specific antidote for opioid overdose. It reverses respiratory depression caused by opioids. Initial dose is 0.4-2 mg IV/IM/SQ/IN, repeated every 2-3 minutes as needed. Ventilatory support (BVM) should be provided while awaiting effect.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 18,
'The compression-to-ventilation ratio for two-rescuer infant CPR by healthcare providers is:',
'5:1',
'15:2',
'30:2',
'Continuous compressions only',
'10:1',
'B',
'For two-rescuer infant/child CPR by healthcare providers, the ratio is 15:2. For single-rescuer CPR (all ages) and adult CPR regardless of rescuer number (without advanced airway), the ratio is 30:2.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 19,
'The most important intervention for improving survival in witnessed VF cardiac arrest is:',
'Epinephrine administration',
'Endotracheal intubation',
'Early defibrillation',
'Vasopressin administration',
'IV fluid resuscitation',
'C',
'Early defibrillation is the most important intervention for improving survival in VF/pVT arrest. For every minute without defibrillation, survival decreases by 7-10%. High-quality CPR maintains viability until defibrillation can be performed.',
'1,2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00013-0000-0000-0000-000000000013', 20,
'Which of the following patients should receive emergent coronary angiography after ROSC?',
'All patients with ROSC regardless of ECG',
'Only patients with previous history of MI',
'Patients with STEMI on post-arrest ECG',
'Only patients who remain conscious',
'Coronary angiography should be delayed for at least 72 hours',
'C',
'Patients with STEMI on post-arrest ECG should receive emergent coronary angiography and PCI (within 90 minutes). For patients without STEMI but with suspected cardiac cause, early angiography (within 24 hours) should be considered. Coronary intervention should not delay TTM.',
'1,3');
