-- CME Article 12: Intraoperative Monitoring
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100012-0000-0000-0000-000000000012',
    'b0000012-0000-0000-0000-000000000012',
    'a0000001-0000-0000-0000-000000000001',
    'Intraoperative Monitoring: Principles and Practice',
    'Essential Monitoring Standards for Patient Safety in Surgery',
    'Intraoperative monitoring is a cornerstone of patient safety during surgical procedures. This CME article provides comprehensive coverage of monitoring standards, cardiovascular monitoring, respiratory monitoring, neuromuscular monitoring, temperature monitoring, and advanced monitoring techniques. Understanding the principles, indications, and interpretation of monitored parameters is essential for all members of the surgical team to detect and respond to physiological derangements promptly.',
    'UNTH Surgery Department, Anesthesiology Unit',
    50,
    2.5,
    'medium',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'introduction', 'Introduction',
'Intraoperative monitoring refers to the continuous or intermittent measurement of physiological parameters during surgery to detect changes that may indicate patient deterioration and to guide therapeutic interventions. The development of sophisticated monitoring technologies has transformed perioperative care and significantly improved patient safety.

**Why Monitoring Matters:**
- Early detection of physiological changes
- Guide for therapeutic interventions
- Documentation for medical-legal purposes
- Quality assurance and outcome tracking
- Real-time feedback on treatment effects

**ASA Standards for Basic Monitoring:**
The American Society of Anesthesiologists (ASA) established standards for basic anesthetic monitoring that are now universally adopted:
1. Qualified anesthesia personnel present throughout
2. Oxygenation monitoring
3. Ventilation monitoring
4. Circulation monitoring
5. Temperature monitoring (when indicated)

**The Monitoring Team:**
While anesthesia personnel have primary responsibility for monitoring, the entire surgical team should be aware of:
- Normal parameter ranges
- Alarm settings and meanings
- Common causes of abnormal readings
- When to alert the anesthesiologist

**Principles of Effective Monitoring:**
- Monitor the right parameters for the procedure
- Use appropriate alarm settings
- Integrate multiple data points for clinical decisions
- Never rely solely on monitors—clinical assessment remains essential
- Understand monitor limitations and potential artifacts

This article provides the knowledge foundation for understanding and interpreting intraoperative monitoring in surgical practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. List the ASA standards for basic anesthetic monitoring and explain their rationale

2. Describe the principles and interpretation of pulse oximetry including common sources of error

3. Explain the components of capnography and interpret common waveform abnormalities

4. Discuss cardiovascular monitoring including ECG, blood pressure measurement, and indications for invasive monitoring

5. Describe neuromuscular monitoring techniques and their role in guiding muscle relaxant administration

6. Explain the importance and methods of temperature monitoring during surgery

7. Identify indications for advanced hemodynamic monitoring including central venous pressure and pulmonary artery catheters

8. Describe monitoring considerations for specific surgical procedures and patient populations

9. Recognize common artifacts and troubleshoot monitoring problems

10. Apply monitoring data to clinical decision-making during surgical emergencies', 2);

-- Section 3: Oxygenation Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'content', 'Oxygenation Monitoring',
'## Pulse Oximetry

### Principle
Pulse oximetry measures arterial oxygen saturation (SpO2) using two wavelengths of light (red and infrared) passed through pulsatile tissue. Oxygenated and deoxygenated hemoglobin absorb light differently, allowing calculation of oxygen saturation.

### What It Measures
- **SpO2**: Percentage of hemoglobin saturated with oxygen
- **Pulse rate**: From the plethysmographic waveform
- **Perfusion index**: In some devices

### Normal Values
- SpO2: 95-100%
- Caution: <94%
- Hypoxemia: <90%

### The Oxygen-Hemoglobin Dissociation Curve

The relationship between PaO2 and SpO2 is sigmoid, not linear:
- SpO2 90% ≈ PaO2 60 mmHg (steep part of curve)
- SpO2 75% ≈ PaO2 40 mmHg (venous blood)
- Below 90%, small changes in PaO2 cause large drops in SpO2

### Limitations and Sources of Error

| Factor | Effect | Explanation |
|--------|--------|-------------|
| Motion | False readings | Signal artifact |
| Poor perfusion | Low/no signal | Insufficient pulse amplitude |
| Nail polish | Low readings | Absorption interference (esp. blue/black) |
| Ambient light | Variable | Interference with sensors |
| Anemia | Accurate SpO2 | But may have inadequate O2 delivery |
| Carbon monoxide | Falsely elevated | COHb reads as oxygenated |
| Methemoglobin | Trends toward 85% | Absorbs at both wavelengths equally |
| Dark skin pigment | May underread | Newer devices improved |
| Hypothermia | Delayed/unreliable | Vasoconstriction |

### Clinical Pearls
- A normal SpO2 does NOT ensure adequate oxygen delivery
- SpO2 does NOT measure ventilation (CO2)
- Delays of 1-2 minutes in detecting desaturation
- Finger probe preferred over ear/forehead when possible

## FiO2 Monitoring

### Oxygen Analyzer
- Measures inspired oxygen concentration
- Placed in the inspiratory limb of breathing circuit
- Essential when using anesthesia machines

### Importance
- Prevents delivery of hypoxic mixtures
- Confirms oxygen delivery system function
- Required by ASA standards

## Clinical Oxygenation Assessment

Beyond monitors, assess:
- Mucous membrane color
- Blood color in surgical field
- Capillary refill

### Arterial Blood Gas
- Gold standard for oxygenation assessment
- PaO2 measured directly
- Allows calculation of A-a gradient
- Provides additional acid-base information', 3);

-- Section 4: Ventilation Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'content', 'Ventilation Monitoring',
'## Capnography

### Principle
End-tidal CO2 (ETCO2) monitoring measures the concentration of carbon dioxide in exhaled breath using infrared absorption. The ETCO2 waveform (capnogram) provides information about ventilation, circulation, and metabolism.

### What It Measures
- ETCO2 value (mmHg or %)
- Respiratory rate
- Waveform characteristics

### Normal Values
- ETCO2: 35-45 mmHg
- ETCO2 is typically 2-5 mmHg lower than PaCO2

### The Capnogram Waveform

**Normal waveform phases:**
1. **Phase I**: Baseline (inspiration and dead space; CO2 ≈ 0)
2. **Phase II**: Upstroke (mixing of alveolar and dead space gas)
3. **Phase III**: Plateau (alveolar gas)
4. **Phase IV**: Downstroke (inspiration begins)

**Key features:**
- Square wave indicates good alveolar ventilation
- Height indicates ETCO2 level
- Frequency indicates respiratory rate

### Abnormal Waveforms

| Pattern | Causes | Waveform |
|---------|--------|----------|
| Elevated ETCO2 | Hypoventilation, malignant hyperthermia, sepsis | Higher plateau |
| Low ETCO2 | Hyperventilation, low cardiac output, pulmonary embolism | Lower plateau |
| Absent ETCO2 | Esophageal intubation, disconnection, cardiac arrest | Flat line |
| Sloping upstroke | Bronchospasm, COPD, kinked ETT | "Shark fin" pattern |
| Prolonged expiration | Airway obstruction | Slow return to baseline |
| Cardiogenic oscillations | Small tidal volumes | Rippling on plateau |

### Clinical Applications

**Confirmation of ETT placement:**
- Persistent ETCO2 waveform = tracheal (>6 breaths)
- Absent or rapidly declining = esophageal

**Monitoring adequacy of CPR:**
- ETCO2 >10 mmHg suggests effective chest compressions
- Sudden rise may indicate ROSC

**Detecting pulmonary embolism:**
- Sudden decrease in ETCO2 with maintained SpO2

**Detecting malignant hyperthermia:**
- Early, unexplained rise in ETCO2

## Ventilator Parameters

### Tidal Volume
- Volume delivered per breath
- Typical: 6-8 mL/kg ideal body weight
- Low tidal volume ventilation is lung-protective

### Respiratory Rate
- Breaths per minute
- Adjusted to achieve target ETCO2

### Peak Airway Pressure
- Maximum pressure during inspiration
- Normal: <30 cmH2O
- Elevated: Airway obstruction, decreased compliance

### Plateau Pressure
- Pressure at end-inspiration (with inspiratory hold)
- Reflects alveolar pressure
- Goal: <30 cmH2O (prevents barotrauma)

### PEEP (Positive End-Expiratory Pressure)
- Maintains alveolar recruitment
- Typical: 5-10 cmH2O
- May need higher in ARDS

### Compliance
$$Compliance = \frac{Tidal Volume}{Plateau Pressure - PEEP}$$
- Normal: 50-100 mL/cmH2O
- Decreased: ARDS, pulmonary edema, pneumothorax

## Apnea Monitoring
- Required for spontaneously breathing patients
- Capnography provides apnea detection
- Important during sedation cases', 4);

-- Section 5: Cardiovascular Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'content', 'Cardiovascular Monitoring',
'## Electrocardiography (ECG)

### Standard Configuration
- Lead II: Standard for arrhythmia detection (best P wave visibility)
- Lead V5: Most sensitive for ischemia detection (lateral wall)
- Combined II + V5: Detects 80% of intraoperative ischemia

### What to Monitor
- Heart rate and rhythm
- Conduction abnormalities
- ST-segment changes (ischemia)
- Pacemaker function

### Common Intraoperative Arrhythmias

| Arrhythmia | Common Causes | Management |
|------------|---------------|------------|
| Sinus bradycardia | Vagal stimulation, beta-blockers, opioids | Atropine, glycopyrrolate, pause stimulus |
| Sinus tachycardia | Light anesthesia, hypovolemia, hypoxia | Treat underlying cause |
| Premature ventricular contractions | Electrolyte abnormalities, ischemia, light anesthesia | Usually benign; treat cause |
| Atrial fibrillation | Pre-existing, electrolyte abnormalities, cardiac surgery | Rate/rhythm control |
| Ventricular tachycardia | Ischemia, electrolyte abnormalities | ACLS protocol |
| Asystole/PEA | Multiple causes | CPR, ACLS |

### ST-Segment Monitoring
- Baseline ST segment should be documented
- 1 mm horizontal or downsloping depression = ischemia
- Automated ST analysis available on most monitors

## Blood Pressure Monitoring

### Non-Invasive Blood Pressure (NIBP)

**Oscillometric method:**
- Detects arterial wall oscillations
- Measures MAP directly; calculates SBP and DBP
- Interval: Typically every 3-5 minutes (adjustable)

**Cuff sizing:**
- Bladder width: 40% of arm circumference
- Bladder length: 80% of arm circumference
- Too small cuff → falsely elevated readings

**Limitations:**
- Intermittent (not continuous)
- Inaccurate with arrhythmias, movement, hypotension
- May not detect rapid changes

### Invasive Arterial Blood Pressure

**Indications:**
- Major surgery with expected hemodynamic instability
- Need for beat-to-beat monitoring
- Frequent blood sampling required
- NIBP unreliable (morbid obesity, arrhythmias)

**Common sites:**
- Radial artery (most common)
- Femoral artery
- Brachial artery
- Dorsalis pedis

**Allen''s Test:**
- Assesses collateral circulation before radial cannulation
- Occlude radial and ulnar arteries → release ulnar
- Hand should reperfuse in <5-10 seconds

**Arterial Waveform:**
- Systolic upstroke: Reflects myocardial contractility
- Dicrotic notch: Aortic valve closure
- Diastolic runoff: Vascular resistance

**Complications:**
- Thrombosis
- Hematoma
- Infection
- Distal ischemia
- Pseudoaneurysm

## Advanced Hemodynamic Monitoring

### Central Venous Pressure (CVP)

**Indications:**
- Assess right heart filling pressure
- Central venous access for medications
- Inability to obtain peripheral access

**Normal values:** 2-8 mmHg

**Limitations:**
- Does not reliably predict fluid responsiveness
- Affected by many factors (tricuspid disease, mechanical ventilation)

### Pulmonary Artery Catheter (Swan-Ganz)

**Measurements:**
- Pulmonary artery pressure
- Pulmonary capillary wedge pressure (PCWP)
- Cardiac output (thermodilution)
- Mixed venous oxygen saturation

**Indications (increasingly selective):**
- Cardiac surgery
- Severe cardiogenic shock
- Complex fluid management
- Pulmonary hypertension

### Cardiac Output Monitoring

**Methods:**
- Thermodilution (PAC)
- Pulse contour analysis (FloTrac, PiCCO)
- Esophageal Doppler
- Echocardiography

### Transesophageal Echocardiography (TEE)

**Indications:**
- Cardiac surgery
- Hemodynamic instability of unknown cause
- Assessment of valve function
- Detection of air embolism', 5);

-- Section 6: Temperature Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'content', 'Temperature Monitoring',
'## Importance of Temperature Monitoring

Perioperative temperature management is critical because:
- Hypothermia is common during surgery (>50% of patients)
- Even mild hypothermia has significant consequences
- Temperature changes can indicate complications (malignant hyperthermia, sepsis)
- Normothermia improves outcomes

## Consequences of Perioperative Hypothermia

### Definition
- Mild: 34-36°C (93.2-96.8°F)
- Moderate: 32-34°C (89.6-93.2°F)
- Severe: <32°C (<89.6°F)

### Adverse Effects

| System | Effect |
|--------|--------|
| Cardiovascular | Arrhythmias, increased SVR, ischemia |
| Hematologic | Impaired coagulation, increased bleeding |
| Immune | Increased surgical site infection |
| Metabolic | Impaired drug metabolism |
| Wound healing | Delayed healing |
| Shivering | Increased oxygen consumption (up to 400%) |
| Hospital stay | Prolonged recovery |

## Causes of Intraoperative Heat Loss

### Mechanisms
1. **Radiation** (40%): Heat transfer to cooler environment
2. **Convection** (30%): Air currents carrying heat away
3. **Evaporation** (20%): Surgical preps, open body cavities
4. **Conduction** (10%): Contact with cold surfaces

### Contributing Factors
- Cold operating room (typically 18-21°C)
- Anesthetic-induced vasodilation
- Impaired thermoregulation under anesthesia
- Cold IV fluids
- Open body cavities
- Prolonged surgery

## Temperature Monitoring Sites

### Core Temperature Sites
- Distal esophagus
- Pulmonary artery (gold standard)
- Nasopharynx
- Tympanic membrane (with proper probe)
- Bladder

### Near-Core Sites
- Oral
- Axillary
- Rectum (slow response)

### Site Selection

| Site | Accuracy | Practicality | Notes |
|------|----------|--------------|-------|
| Esophageal | Excellent | Requires intubation | Preferred under GA |
| Nasopharyngeal | Good | Easy placement | Epistaxis risk |
| Bladder | Good | Requires catheter | Slow with low output |
| Pulmonary artery | Best | PAC needed | Research standard |
| Skin | Poor for core | Non-invasive | Indicates peripheral |

## Warming Strategies

### Passive
- Warm OR environment (difficult due to surgeon comfort)
- Cover exposed areas
- Surgical drapes

### Active
- **Forced-air warming**: Most effective
- **Warmed IV fluids**: Use fluid warmers
- **Warmed irrigation**: For body cavities
- **Underbody warming mattresses**
- **Warmed humidified gases**

### Targets
- Maintain core temperature ≥36°C
- Pre-warming before anesthesia is beneficial
- Avoid active warming if core >38°C

## Hyperthermia

### Malignant Hyperthermia
- Rare, life-threatening reaction to volatile anesthetics/succinylcholine
- **Early sign**: Unexplained rise in ETCO2
- Temperature rise may be late finding (1-2°C/5 minutes)
- Treatment: Stop triggers, dantrolene, cooling

### Other Causes
- Sepsis
- Drug reactions (serotonin syndrome, neuroleptic malignant syndrome)
- Thyroid storm
- Pheochromocytoma
- Excessive warming', 6);

-- Section 7: Neuromuscular Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'content', 'Neuromuscular Monitoring',
'## Purpose of Neuromuscular Monitoring

Neuromuscular blocking agents (NMBAs) are commonly used in surgery to:
- Facilitate endotracheal intubation
- Provide surgical relaxation
- Prevent patient movement during critical moments

Monitoring ensures:
- Adequate relaxation for surgery
- Complete reversal before extubation
- Prevention of residual paralysis (associated with complications)

## Principles of Neuromuscular Monitoring

### Peripheral Nerve Stimulation
A nerve stimulator delivers electrical current to a peripheral nerve, causing muscle contraction. The response indicates the degree of neuromuscular blockade.

### Common Stimulation Sites
- **Ulnar nerve/adductor pollicis**: Gold standard, easy access
- **Facial nerve/orbicularis oculi**: More sensitive to block
- **Tibial nerve/flexor hallucis**: When arms inaccessible

## Stimulation Patterns

### Train-of-Four (TOF)
- Four stimuli at 2 Hz (0.5 seconds apart)
- Count number of twitches or calculate ratio (T4/T1)
- Most commonly used pattern

**Interpretation:**

| TOF Count | Approximate Block | Clinical Correlation |
|-----------|-------------------|---------------------|
| 0/4 | >95% block | Deep block, intubation conditions |
| 1/4 | 90-95% block | Deep surgical relaxation |
| 2/4 | 80-90% block | Moderate surgical relaxation |
| 3/4 | 70-80% block | Lighter relaxation |
| 4/4 | <75% block | Count twitches; assess ratio |
| TOF ratio ≥0.9 | <70% block | Safe for extubation |

### Post-Tetanic Count (PTC)
- Used when TOF = 0
- 50 Hz tetanus for 5 sec → 1 Hz single twitches
- Count post-tetanic twitches
- Assesses very deep block

### Double Burst Stimulation (DBS)
- Two short tetanic bursts
- Easier to detect fade manually than TOF ratio

## Quantitative vs. Qualitative Monitoring

### Qualitative (Subjective)
- Visual or tactile assessment of twitches
- Inaccurate for TOF ratios >0.4
- Cannot reliably detect ratios between 0.4-0.9

### Quantitative (Objective)
- **Acceleromyography (AMG)**: Measures acceleration of thumb movement
- **Kinemyography (KMG)**: Measures displacement
- **Electromyography (EMG)**: Measures electrical activity

**Recommendation:** Quantitative monitoring preferred for safe extubation decisions

## Clinical Application

### Intubation
- Goal: TOF count 0-1 for optimal conditions
- Typically 2-3 minutes after rocuronium or vecuronium
- Faster with succinylcholine

### Maintenance
- Surgical requirement varies
- Intra-abdominal surgery often needs TOF 1-2
- Redose when twitches reappear (if paralysis needed)

### Reversal and Extubation
- **Target: TOF ratio ≥0.9**
- Below 0.9 associated with complications:
  - Aspiration
  - Upper airway obstruction
  - Hypoxemia

### Reversal Agents

**Neostigmine:**
- Anticholinesterase
- Requires some recovery present (TOF ≥1)
- Given with glycopyrrolate to prevent bradycardia
- May not reliably achieve ratio >0.9

**Sugammadex:**
- Reverses aminosteroid NMBAs (rocuronium, vecuronium)
- Can reverse deep block
- Faster and more reliable recovery
- No cholinergic side effects', 7);

-- Section 8: Monitoring in Specific Situations
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'content', 'Monitoring in Specific Situations',
'## Neuromonitoring (Intraoperative Neurophysiologic Monitoring - IONM)

### Indications
- Spine surgery (risk to spinal cord)
- Intracranial surgery
- Carotid endarterectomy
- Thoracoabdominal aortic surgery
- Thyroid/parathyroid surgery (nerve at risk)

### Modalities

**Somatosensory Evoked Potentials (SSEPs):**
- Monitors posterior column function
- Stimulate peripheral nerve → record cortical response
- Sensitive to ischemia, stretch

**Motor Evoked Potentials (MEPs):**
- Monitors motor pathways (corticospinal tracts)
- Transcranial or direct cortical stimulation
- Requires modified anesthetic (avoid neuromuscular blockade)

**Electromyography (EMG):**
- Monitors nerve root function
- Continuous and triggered (for nerve identification)
- Used in spine, thyroid, parotid surgery

**Electroencephalography (EEG):**
- Brain electrical activity
- Cerebral ischemia detection
- Burst suppression for cerebral protection

### Anesthetic Considerations for IONM
- Minimize volatile anesthetics (suppress signals)
- TIVA (total intravenous anesthesia) often preferred
- No or minimal neuromuscular blockade for MEP/EMG
- Maintain normothermia

## Depth of Anesthesia Monitoring

### Purpose
- Prevent awareness under anesthesia
- Avoid excessive anesthesia (hypotension)
- Titrate anesthetic delivery

### Bispectral Index (BIS)
- Processed EEG signal
- Scale 0-100
- Target: 40-60 for general anesthesia

### Other Devices
- Entropy (GE)
- Narcotrend
- Patient State Index

### Limitations
- Affected by EMG artifact
- Accuracy varies with anesthetic technique
- Not reliable in all patient populations

## Monitoring During Regional Anesthesia

### Minimal Requirements
- SpO2
- NIBP
- ECG
- ETCO2 if sedation

### Additional Considerations
- Level of sensory block (neuraxial)
- Motor function assessment
- Local anesthetic toxicity monitoring

## Monitoring in Obstetric Surgery

### Fetal Monitoring
- Fetal heart rate (before/after surgery when viable)
- Electronic fetal monitoring if needed

### Maternal Considerations
- Left uterine displacement
- Increased aspiration risk
- Physiologic changes of pregnancy affect interpretation

## Pediatric Considerations

### Differences from Adults
- Higher heart rates normal
- Lower blood pressures normal
- Temperature regulation immature
- Smaller blood volumes

### Equipment
- Appropriately sized cuffs, sensors, probes
- Precordial stethoscope
- Closer attention to temperature

## Geriatric Considerations

### Monitoring Adjustments
- More sensitive to hypotension
- Baseline cognitive function assessment
- Temperature vulnerability
- Increased awareness risk (lower anesthetic requirements)', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'key_points', 'Key Points',
'1. **ASA Basic Monitoring Standards**: Qualified personnel present, oxygenation monitoring, ventilation monitoring, circulation monitoring, and temperature monitoring (when clinically indicated).

2. **Pulse Oximetry Limitations**: SpO2 does not measure ventilation (CO2), is delayed in detecting desaturation, and is falsely elevated in carbon monoxide poisoning. Normal SpO2 does not guarantee adequate oxygen delivery.

3. **Capnography is Essential**: Confirms ETT placement (persistent waveform), detects esophageal intubation (absent CO2), monitors ventilation adequacy, and provides early warning of malignant hyperthermia.

4. **ECG Lead Selection**: Lead II for rhythm, Lead V5 for ischemia. Combined II + V5 detects approximately 80% of intraoperative ischemia.

5. **Blood Pressure Cuff Sizing**: Bladder should be 80% of arm circumference. Too small cuff gives falsely elevated readings.

6. **Invasive Arterial Monitoring**: Indicated for major surgery, hemodynamic instability, frequent blood sampling, or when NIBP is unreliable.

7. **Hypothermia Consequences**: Increased surgical site infection, impaired coagulation, arrhythmias, prolonged drug effects, and delayed recovery. Target normothermia (≥36°C).

8. **Neuromuscular Monitoring Goal**: TOF ratio ≥0.9 before extubation. Ratios <0.9 are associated with airway obstruction, aspiration, and hypoxemia.

9. **Malignant Hyperthermia**: Early sign is unexplained rise in ETCO2, not temperature. Temperature elevation may be late. Treatment: stop triggers, administer dantrolene, cooling.

10. **Quantitative NMB Monitoring**: Superior to qualitative (visual/tactile). Clinical assessment cannot reliably detect TOF ratios between 0.4-0.9, which are inadequate for safe extubation.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: The pulse oximeter SpO2 can remain normal for several minutes after the patient stops breathing because of oxygen stores in the lungs. Capnography detects apnea immediately.

💡 **Pearl 2**: A sudden drop in ETCO2 with maintained ventilation suggests decreased cardiac output, pulmonary embolism, or circuit disconnect. Check for causes systematically.

💡 **Pearl 3**: The "shark fin" capnogram waveform (sloping upstroke) indicates bronchospasm or lower airway obstruction. Immediate bronchodilator therapy may be needed.

💡 **Pearl 4**: Forced-air warming is the most effective method for maintaining normothermia. Begin pre-warming before induction when possible.

💡 **Pearl 5**: Residual neuromuscular blockade (TOF ratio <0.9) is common and underdiagnosed. It''s a significant cause of postoperative respiratory complications.

💡 **Pearl 6**: During CPR, ETCO2 provides real-time feedback on compression quality. Maintain ETCO2 >10 mmHg; values <10 suggest inadequate compressions or poor prognosis.

💡 **Pearl 7**: Motion artifact is the most common cause of false pulse oximetry readings. Secure the probe properly and use motion-resistant technology when available.

💡 **Pearl 8**: The arterial waveform provides information beyond blood pressure. Assess for pulsus paradoxus, SVV for volume responsiveness, and dicrotic notch changes.

💡 **Pearl 9**: Peripheral temperature (skin/forehead) does not accurately reflect core temperature. Use esophageal, bladder, or nasopharyngeal probes for accurate core monitoring.

💡 **Pearl 10**: BIS monitoring targets 40-60 for general anesthesia. Values >60 increase awareness risk; values <40 may indicate excessive depth and increase hypotension risk.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100012-0000-0000-0000-000000000012', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100012-0000-0000-0000-000000000012', 1, 'American Society of Anesthesiologists. Standards for Basic Anesthetic Monitoring. Approved 1986, last amended 2020.', NULL, NULL, 'https://www.asahq.org/standards-and-guidelines'),
('a1100012-0000-0000-0000-000000000012', 2, 'Naguib M, et al. Pharmacology of Neuromuscular Blocking Drugs. In: Miller''s Anesthesia, 9th ed. Elsevier; 2020.', NULL, NULL, NULL),
('a1100012-0000-0000-0000-000000000012', 3, 'Sessler DI. Perioperative thermoregulation and heat balance. Lancet. 2016;387(10038):2655-2664.', '10.1016/S0140-6736(15)00981-2', '26775126', NULL),
('a1100012-0000-0000-0000-000000000012', 4, 'Murphy GS, et al. Residual Neuromuscular Blockade and Critical Respiratory Events. Anesth Analg. 2008;107(1):130-137.', '10.1213/ane.0b013e31816d1268', '18635478', NULL),
('a1100012-0000-0000-0000-000000000012', 5, 'Jubran A. Pulse oximetry. Crit Care. 2015;19(1):272.', '10.1186/s13054-015-0984-8', '26179876', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 1,
'Which of the following is NOT one of the ASA Standards for Basic Anesthetic Monitoring?',
'Oxygenation monitoring',
'Ventilation monitoring',
'Circulation monitoring',
'Urine output monitoring',
'Temperature monitoring when indicated',
'D',
'The ASA Standards for Basic Anesthetic Monitoring include: qualified personnel present, oxygenation monitoring (pulse oximetry + inspired O2), ventilation monitoring (capnography), circulation monitoring (ECG, BP, pulse), and temperature monitoring when clinically indicated. Urine output is important but not part of the basic standards.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 2,
'A pulse oximeter may give falsely elevated readings in which of the following conditions?',
'Anemia',
'Methemoglobinemia',
'Carbon monoxide poisoning',
'Hypotension',
'Hypothermia',
'C',
'Carbon monoxide poisoning causes falsely elevated SpO2 readings because carboxyhemoglobin (COHb) absorbs light similarly to oxyhemoglobin. The pulse oximeter cannot differentiate between the two. Anemia gives accurate SpO2, methemoglobin causes readings toward 85%, and hypotension/hypothermia cause low or unreliable signals.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 3,
'An absent end-tidal CO2 waveform immediately after endotracheal intubation most likely indicates:',
'Normal intubation',
'Esophageal intubation',
'Bronchospasm',
'Circuit leak',
'Low cardiac output',
'B',
'Absent ETCO2 immediately after intubation most likely indicates esophageal intubation—the tube is in the esophagus rather than the trachea. Persistent ETCO2 waveform (>6 breaths) confirms tracheal placement. Circuit disconnection is another possibility but would be obvious.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 4,
'The "shark fin" appearance on a capnogram waveform indicates:',
'Normal ventilation',
'Esophageal intubation',
'Bronchospasm or airway obstruction',
'Cardiac arrest',
'Hyperventilation',
'C',
'The "shark fin" capnogram pattern (sloping upstroke without a plateau) indicates bronchospasm, COPD, or lower airway obstruction. This pattern occurs because obstructed airways have prolonged expiration with delayed CO2 elimination, creating the characteristic upsloping waveform.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 5,
'Which ECG lead combination is most sensitive for detecting intraoperative myocardial ischemia?',
'Lead I and aVL',
'Lead II and III',
'Lead II and V5',
'Lead aVR and V1',
'Lead III and aVF',
'C',
'Lead II and V5 combination detects approximately 80% of intraoperative ischemia. Lead II is optimal for rhythm monitoring (best P wave visibility), while Lead V5 (lateral precordial lead) is most sensitive for detecting lateral wall ischemia.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 6,
'A blood pressure cuff that is too small for the patient''s arm will result in:',
'Falsely low readings',
'Accurate readings',
'Falsely high readings',
'Inability to obtain any reading',
'Variable readings depending on position',
'C',
'A blood pressure cuff that is too small will give falsely elevated readings. The narrow cuff requires higher pressure to compress the artery adequately. The cuff bladder should be 80% of the arm circumference. Conversely, a cuff that is too large will give falsely low readings.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 7,
'Allen''s test is performed before cannulation of which artery?',
'Femoral artery',
'Brachial artery',
'Radial artery',
'Carotid artery',
'Dorsalis pedis artery',
'C',
'Allen''s test assesses collateral circulation (from the ulnar artery) before radial artery cannulation. The test involves occluding both radial and ulnar arteries, then releasing the ulnar while observing for hand reperfusion. Adequate collateral circulation ensures hand perfusion if radial artery thrombosis occurs.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 8,
'Perioperative hypothermia (temperature <36°C) is associated with all of the following EXCEPT:',
'Increased surgical site infection',
'Impaired coagulation',
'Shorter hospital stay',
'Cardiac arrhythmias',
'Delayed drug metabolism',
'C',
'Perioperative hypothermia is associated with increased surgical site infection, impaired coagulation and increased bleeding, cardiac arrhythmias, delayed drug metabolism, and prolonged hospital stay—not shorter stay. Maintaining normothermia (≥36°C) improves surgical outcomes.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 9,
'Which is the most effective method for preventing intraoperative hypothermia?',
'Warmed IV fluids alone',
'Increasing operating room temperature',
'Forced-air warming',
'Reflective blankets',
'Warming mattresses alone',
'C',
'Forced-air warming is the most effective method for preventing and treating intraoperative hypothermia. It works by convective heat transfer. While warmed IV fluids, increased OR temperature, and warming mattresses help, forced-air warming has the greatest impact on maintaining normothermia.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 10,
'The earliest sign of malignant hyperthermia during anesthesia is typically:',
'Rising temperature',
'Muscle rigidity',
'Unexplained rise in end-tidal CO2',
'Tachycardia',
'Skin flushing',
'C',
'An unexplained rise in ETCO2 (due to increased CO2 production from hypermetabolism) is typically the earliest sign of malignant hyperthermia. Temperature elevation may be a late finding, rising 1-2°C every 5 minutes once established. Other early signs include tachycardia and muscle rigidity.', '{1,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 11,
'Train-of-four (TOF) ratio of ≥0.9 is required before extubation because ratios below this:',
'Are impossible to measure accurately',
'Indicate complete neuromuscular blockade',
'Are associated with aspiration, airway obstruction, and hypoxemia',
'Suggest inadequate anesthesia',
'Indicate the patient is awake',
'C',
'TOF ratio <0.9 indicates residual neuromuscular blockade, which is associated with upper airway obstruction, aspiration, hypoxemia, and respiratory complications. Clinical assessment cannot reliably detect ratios between 0.4-0.9, making quantitative monitoring essential for safe extubation decisions.', '{2,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 12,
'A TOF count of 0/4 indicates:',
'No neuromuscular blockade',
'Approximately 50% receptor block',
'Greater than 95% receptor block',
'70-80% receptor block',
'Nerve stimulator malfunction',
'C',
'A TOF count of 0/4 (no twitches visible) indicates >95% neuromuscular receptor blockade. This represents deep block suitable for intubation. As blockade decreases, twitches return: 1/4 = 90-95%, 2/4 = 80-90%, 3/4 = 70-80%, 4/4 with fade = <75%.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 13,
'Which site provides the most accurate core temperature measurement?',
'Skin of forehead',
'Axilla',
'Pulmonary artery',
'Oral cavity',
'Tympanic membrane (infrared)',
'C',
'Pulmonary artery temperature, measured via a Swan-Ganz catheter, is the gold standard for core temperature. Esophageal temperature (distal third) is also excellent and more practical in most surgical settings. Skin, axilla, and standard tympanic measurements are less accurate for core temperature.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 14,
'During CPR, an ETCO2 reading can be used to:',
'Confirm endotracheal tube placement only',
'Assess the quality of chest compressions',
'Determine the rhythm only',
'Replace ECG monitoring',
'Measure blood oxygen levels',
'B',
'During CPR, ETCO2 provides real-time feedback on chest compression quality. ETCO2 >10 mmHg suggests effective compressions (adequate cardiac output). Values <10 mmHg suggest poor compressions or poor prognosis. A sudden increase may indicate return of spontaneous circulation (ROSC).', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 15,
'Normal Bispectral Index (BIS) target range for general anesthesia is:',
'0-20',
'20-40',
'40-60',
'60-80',
'80-100',
'C',
'The target BIS range for general anesthesia is 40-60. Values >60 increase the risk of intraoperative awareness. Values <40 may indicate excessive anesthetic depth, increasing hypotension risk. BIS of 0 indicates isoelectric EEG, while 100 indicates fully awake.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 16,
'Sugammadex reverses neuromuscular blockade caused by:',
'All neuromuscular blocking agents',
'Succinylcholine only',
'Aminosteroid NMBAs (rocuronium, vecuronium)',
'Benzylisoquinolinium NMBAs (atracurium, cisatracurium)',
'Neostigmine',
'C',
'Sugammadex specifically reverses aminosteroid neuromuscular blocking agents (rocuronium and vecuronium) by encapsulating them. It does not reverse succinylcholine or benzylisoquinolinium agents. Neostigmine is a reversal agent, not an NMBA.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 17,
'Somatosensory evoked potentials (SSEPs) primarily monitor which spinal cord pathway?',
'Anterior motor tracts',
'Lateral spinothalamic tracts',
'Posterior columns (dorsal columns)',
'Sympathetic fibers',
'Autonomic pathways',
'C',
'SSEPs monitor the posterior (dorsal) columns of the spinal cord, which carry proprioception and vibration sensation. Motor evoked potentials (MEPs) are used to monitor the anterior motor pathways (corticospinal tracts). Both modalities are often used together for spine surgery.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 18,
'Which plateau pressure should be targeted to prevent ventilator-induced lung injury?',
'<10 cmH2O',
'<20 cmH2O',
'<30 cmH2O',
'<40 cmH2O',
'<50 cmH2O',
'C',
'Plateau pressure should be maintained <30 cmH2O to prevent ventilator-induced lung injury (barotrauma and volutrauma). Plateau pressure reflects alveolar pressure and is measured during an inspiratory hold. Peak pressure includes airway resistance and may be higher.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 19,
'The dicrotic notch on an arterial waveform represents:',
'Atrial contraction',
'Ventricular contraction',
'Aortic valve closure',
'Mitral valve closure',
'Pulmonic valve closure',
'C',
'The dicrotic notch on an arterial waveform represents aortic valve closure, marking the end of systole and the beginning of diastole. The systolic upstroke reflects ventricular ejection, and the diastolic portion reflects peripheral vascular resistance and runoff.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100012-0000-0000-0000-000000000012', 20,
'A sudden decrease in ETCO2 with normal oxygen saturation during surgery most likely suggests:',
'Bronchospasm',
'Esophageal intubation',
'Pulmonary embolism or decreased cardiac output',
'Malignant hyperthermia',
'Hypoventilation',
'C',
'A sudden decrease in ETCO2 with maintained SpO2 suggests decreased pulmonary blood flow, most commonly from pulmonary embolism or decreased cardiac output. Less CO2 is delivered to the lungs for exhalation. Bronchospasm and esophageal intubation have different patterns; MH causes increased ETCO2.', '{1}');
