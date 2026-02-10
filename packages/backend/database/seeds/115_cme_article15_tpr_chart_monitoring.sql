-- CME Article 15: TPR Chart and Patient Monitoring
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100015-0000-0000-0000-000000000015',
    'b0000015-0000-0000-0000-000000000015',
    'a0000001-0000-0000-0000-000000000001',
    'TPR Charts and Patient Monitoring in Surgical Care',
    'Principles of Vital Signs Documentation and Clinical Surveillance',
    'Accurate monitoring and documentation of vital signs are fundamental to safe surgical care. The TPR (Temperature, Pulse, Respiration) chart, now commonly expanded to include blood pressure and other parameters, serves as a continuous record of patient physiological status. This CME article provides comprehensive coverage of vital signs monitoring, early warning scoring systems, fluid balance charts, and the recognition of clinical deterioration. Effective use of monitoring charts can prevent adverse events and improve patient outcomes.',
    'UNTH Surgery Department, Nursing Education Unit',
    40,
    2.0,
    'easy',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'introduction', 'Introduction',
'Patient monitoring through regular observation and documentation of vital signs is a cornerstone of surgical care. The traditional TPR chart has evolved into comprehensive monitoring systems that capture multiple physiological parameters and trigger escalation when abnormalities are detected.

**Historical Context:**
Florence Nightingale pioneered systematic patient observation and documentation during the Crimean War. She demonstrated that regular monitoring and proper documentation improved patient outcomes—a principle that remains fundamental today.

**The Purpose of Monitoring:**
- Early detection of clinical deterioration
- Tracking response to treatment
- Communication among healthcare providers
- Legal documentation of care
- Quality improvement and audit

**Modern Vital Signs Observation:**
The classic TPR (Temperature, Pulse, Respiration) has expanded to include:
- Blood pressure
- Oxygen saturation (SpO2)
- Level of consciousness
- Pain score
- Urine output

**The Challenge of Deterioration:**
Studies consistently show that many patients exhibit warning signs hours before cardiac arrest or unplanned ICU admission. Unfortunately, these signs are often documented but not acted upon. This "failure to rescue" represents a major patient safety issue.

**Early Warning Systems:**
Modern healthcare has responded with track-and-trigger systems that:
- Aggregate vital sign abnormalities into risk scores
- Provide clear escalation criteria
- Mandate clinical response when thresholds exceeded
- Improve outcomes for deteriorating patients

This article provides the knowledge foundation for effective patient monitoring in surgical practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Describe the components of a comprehensive vital signs observation chart

2. State normal ranges for temperature, pulse, blood pressure, respiratory rate, and oxygen saturation

3. Explain the significance of each vital sign and recognize abnormal patterns

4. Calculate and interpret early warning scores (NEWS2, MEWS)

5. Describe appropriate frequency of monitoring for different clinical situations

6. Complete fluid balance charts accurately and interpret their significance

7. Recognize patterns of vital sign changes that indicate clinical deterioration

8. Apply appropriate escalation procedures when abnormalities are detected

9. Document observations clearly and completely for effective communication

10. Describe special monitoring requirements for postoperative patients', 2);

-- Section 3: Components of Vital Signs
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'content', 'Components of Vital Signs',
'## Temperature

### Normal Range
- 36.1-37.2°C (97.0-99.0°F) oral
- Diurnal variation: lowest in morning, highest in evening
- Normal fluctuation up to 0.5°C throughout day

### Measurement Sites
| Site | Technique | Normal Range | Notes |
|------|-----------|--------------|-------|
| Oral | Under tongue, 3 min | 36.5-37.5°C | Affected by recent intake |
| Axillary | In axilla, 5 min | 36.0-37.0°C | Add 0.5°C for estimate |
| Tympanic | Infrared | 36.5-37.5°C | Quick, less accurate |
| Rectal | 2-4 cm depth | 37.0-38.0°C | Most accurate core |

### Clinical Significance

**Fever (>38.0°C):**
- Postoperative: Common days 1-2, often atelectasis
- Day 3+: Consider wound infection, UTI, DVT, drug fever
- Investigation based on clinical picture

**Hypothermia (<35.0°C):**
- Prolonged surgery
- Massive transfusion
- Sepsis (late sign)
- Environmental exposure

## Pulse

### Normal Range
- Adult: 60-100 bpm
- Well-conditioned athletes: 40-60 bpm

### Assessment Parameters
- Rate (count for 30-60 seconds)
- Rhythm (regular vs. irregular)
- Character (volume, strength)

### Abnormalities

**Tachycardia (>100 bpm):**
- Pain, anxiety, fever
- Hypovolemia, hemorrhage
- Sepsis
- Hyperthyroidism
- Arrhythmia

**Bradycardia (<60 bpm):**
- Medications (beta-blockers)
- Raised intracranial pressure
- Heart block
- Athletic conditioning
- Hypothyroidism

## Blood Pressure

### Normal Range
- Normal: <120/80 mmHg
- Elevated: 120-129/<80 mmHg
- Hypertension Stage 1: 130-139/80-89 mmHg
- Hypertension Stage 2: ≥140/≥90 mmHg

### Key Concepts
- **Mean Arterial Pressure (MAP)**: $$MAP = DBP + \frac{SBP - DBP}{3}$$
- Target MAP ≥65 mmHg for organ perfusion
- Pulse pressure = SBP - DBP (normal 30-40 mmHg)

### Abnormalities

**Hypotension:**
- Hypovolemia, hemorrhage
- Sepsis
- Cardiac dysfunction
- Anaphylaxis
- Medications

**Hypertension:**
- Pain, anxiety
- Pre-existing hypertension
- Fluid overload
- Medication withdrawal
- Raised ICP

## Respiratory Rate

### Normal Range
- Adult: 12-20 breaths/minute
- Child: 20-30 breaths/minute
- Infant: 30-50 breaths/minute

### Clinical Importance
**Respiratory rate is the most sensitive indicator of deterioration** and the least accurately recorded vital sign.

### Abnormalities

**Tachypnea (>20/min):**
- Pain, anxiety
- Fever
- Metabolic acidosis
- Pneumonia, PE, asthma
- Heart failure
- Sepsis

**Bradypnea (<12/min):**
- Opioid effects
- CNS depression
- Metabolic alkalosis
- Impending respiratory arrest

## Oxygen Saturation (SpO2)

### Normal Range
- 95-100% on room air
- COPD patients may have lower baseline (88-92%)

### Interpretation
- SpO2 94-95%: Mild hypoxemia
- SpO2 90-93%: Moderate hypoxemia
- SpO2 <90%: Severe hypoxemia

### Limitations
- Does not measure ventilation (can be normal with rising CO2)
- Delayed response to acute changes
- Inaccurate with poor perfusion, motion, nail polish

## Level of Consciousness

### AVPU Scale
- **A**: Alert (fully awake, oriented)
- **V**: Responds to Voice
- **P**: Responds to Pain
- **U**: Unresponsive

### Clinical Significance
- Change from baseline is significant
- New confusion may indicate sepsis, hypoxia, or metabolic derangement
- Requires investigation and potential escalation', 3);

-- Section 4: TPR Chart Documentation
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'content', 'TPR Chart Documentation',
'## Components of the Modern Observation Chart

### Standard Elements
1. Patient identification (name, DOB, hospital number)
2. Date and time of each observation set
3. Temperature
4. Pulse rate
5. Blood pressure
6. Respiratory rate
7. Oxygen saturation
8. Supplemental oxygen (L/min, device)
9. Level of consciousness (AVPU)
10. Pain score
11. Urine output (if catheterized)
12. Observer signature/initials

### Additional Elements (As Required)
- Blood glucose
- Neurological observations (GCS)
- Drain output
- Wound observations
- Weight (daily for fluid balance)

## Frequency of Observations

### Minimum Standards

| Clinical Situation | Minimum Frequency |
|--------------------|-------------------|
| Stable ward patient | Every 8-12 hours |
| Routine postoperative | Every 4-6 hours |
| Post-major surgery (first 24h) | Every 1-2 hours |
| Concerning observations | Hourly until stable |
| Critical care/HDU | Continuous or hourly |
| Deteriorating patient | Per escalation protocol |

### Increasing Frequency
Observations should be more frequent when:
- Early warning score elevated
- Recent change in condition
- Post-procedure/intervention
- New symptoms develop
- As directed by senior clinician

## Documentation Principles

### Accuracy
- Measure, don''t estimate
- Use calibrated equipment
- Count respiratory rate for 60 seconds
- Record exactly what you measure

### Completeness
- All parameters at each observation
- Never leave blanks
- Document interventions (e.g., oxygen started)
- Note if parameter not measurable and why

### Timeliness
- Record observations when taken
- Never pre-chart or post-date observations
- Immediate documentation of abnormal findings

### Legibility
- Write clearly or use electronic systems
- Use appropriate colors/symbols as per chart key
- Sign and date entries

## Graphical Documentation

### Plotting Technique
- Use single dots at intersection of value and time
- Connect dots with lines for trend visualization
- Use different symbols or colors for different parameters

### Recognizing Trends
Graphical display allows recognition of:
- Gradual deterioration
- Response to treatment
- Cyclic patterns (fever spikes)
- Sudden changes

### Electronic Vital Signs

**Advantages:**
- Automatic calculation of EWS
- Alerts for abnormal values
- Legible documentation
- Trend analysis
- Data integration

**Challenges:**
- Require training
- Technology dependence
- May not capture clinical nuance', 4);

-- Section 5: Early Warning Scores
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'content', 'Early Warning Scoring Systems',
'## Purpose of Early Warning Scores

Early Warning Scores (EWS) aggregate vital sign abnormalities into a composite score that:
- Quantifies severity of illness
- Triggers standardized responses
- Improves communication
- Facilitates early intervention
- Reduces adverse outcomes

## NEWS2 (National Early Warning Score 2)

The NEWS2 is a validated track-and-trigger system widely adopted internationally.

### Parameters and Scoring

| Parameter | 3 | 2 | 1 | 0 | 1 | 2 | 3 |
|-----------|---|---|---|---|---|---|---|
| RR | ≤8 | - | 9-11 | 12-20 | - | 21-24 | ≥25 |
| SpO2 (Scale 1) | ≤91 | 92-93 | 94-95 | ≥96 | - | - | - |
| SpO2 (Scale 2*) | ≤83 | 84-85 | 86-87 | 88-92 | 93-94 | 95-96 | ≥97 on O2 |
| Supplemental O2 | - | Yes | - | No | - | - | - |
| SBP | ≤90 | 91-100 | 101-110 | 111-219 | - | - | ≥220 |
| Pulse | ≤40 | - | 41-50 | 51-90 | 91-110 | 111-130 | ≥131 |
| Consciousness | - | - | - | Alert | - | - | CVPU |
| Temperature | ≤35.0 | - | 35.1-36.0 | 36.1-38.0 | 38.1-39.0 | ≥39.1 | - |

*Scale 2 used for patients with hypercapnic respiratory failure

### Response Thresholds

| NEWS2 Score | Clinical Risk | Response |
|-------------|---------------|----------|
| 0 | Low | Minimum 12-hourly monitoring |
| 1-4 | Low | Minimum 4-6 hourly monitoring |
| 5-6 or 3 in single parameter | Medium | Hourly monitoring, urgent medical review |
| ≥7 | High | Continuous monitoring, emergency response |

### Single Parameter Score of 3
A score of 3 in any single parameter (extreme value) warrants urgent review regardless of total score.

## MEWS (Modified Early Warning Score)

Another commonly used system:

| Parameter | 3 | 2 | 1 | 0 | 1 | 2 | 3 |
|-----------|---|---|---|---|---|---|---|
| SBP | ≤70 | 71-80 | 81-100 | 101-199 | - | ≥200 | - |
| HR | - | ≤40 | 41-50 | 51-100 | 101-110 | 111-129 | ≥130 |
| RR | - | <9 | - | 9-14 | 15-20 | 21-29 | ≥30 |
| Temp | - | <35 | 35-38.4 | - | - | ≥38.5 | - |
| AVPU | - | - | - | A | V | P | U |

### Response Protocol
- MEWS 0-2: Standard care
- MEWS 3-4: Increased monitoring
- MEWS ≥5: Urgent medical review

## Escalation Procedures

### Graded Response
1. **Increased monitoring** (frequency)
2. **Nurse-in-charge notification**
3. **Medical review** (ward doctor/resident)
4. **Senior medical review** (registrar/attending)
5. **Critical care outreach/RRT**
6. **Emergency response/cardiac arrest team**

### SBAR Communication

When escalating, use structured communication:
- **S**ituation: What is happening now?
- **B**ackground: Relevant clinical history
- **A**ssessment: Your clinical impression
- **R**ecommendation: What you need

### Barriers to Escalation
- Reluctance to "bother" doctors
- Normalization of abnormal values
- Lack of confidence
- Hierarchical culture
- Workload pressures

**Overcoming barriers:**
- Clear protocols and expectations
- Blame-free culture
- Training and simulation
- Support from leadership', 5);

-- Section 6: Fluid Balance Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'content', 'Fluid Balance Monitoring',
'## Importance of Fluid Balance

Accurate fluid balance monitoring is essential for:
- Assessing hydration status
- Guiding fluid therapy
- Detecting complications (kidney injury, heart failure)
- Monitoring response to diuretics
- Managing electrolyte balance

## Fluid Balance Chart Components

### Input (Intake)
- Oral fluids
- IV fluids (crystalloids, colloids, blood products)
- Enteral feeds
- Medications with significant volume
- IV flushes

### Output
- Urine output
- Nasogastric tube output
- Drain output
- Vomit/emesis
- Stool/diarrhea (significant amounts)
- Wound drainage (if measured)

### Insensible Losses (Estimated)
- Respiratory: ~400 mL/day
- Skin (sweat): ~400 mL/day
- Increased with fever: Add ~500 mL/°C above 38°C
- Increased with tachypnea

## Completing the Fluid Balance Chart

### Recording Principles
- Record actual volumes (measure, don''t estimate)
- Use graduated containers
- Record at time of intake/output
- Sum at regular intervals (8-hourly, 24-hourly)
- Running totals are helpful

### Calculating Balance
$$\text{Fluid Balance} = \text{Total Input} - \text{Total Output}$$

- Positive balance: More input than output (fluid retention)
- Negative balance: More output than input (fluid loss)
- Zero balance: Input equals output

## Urine Output Monitoring

### Normal Values
- Adult: 0.5-1.0 mL/kg/hour
- Minimum acceptable: 0.5 mL/kg/hour
- Oliguria: <0.5 mL/kg/hour
- Anuria: <100 mL/day

### Clinical Significance

**Low Urine Output:**
- Hypovolemia (most common postoperative)
- Acute kidney injury
- Urinary obstruction (blocked catheter)
- Heart failure

**High Urine Output:**
- Response to fluid resuscitation
- Diuretic therapy
- Post-obstructive diuresis
- Diabetes insipidus

### Catheterized Patients
- Hourly measurements for sick patients
- 4-hourly acceptable for stable patients
- Check catheter patency if output drops

## Daily Weights

### Importance
- Most accurate indicator of fluid balance
- 1 kg change ≈ 1 liter of fluid
- More reliable than intake/output charts

### Technique
- Same scale each day
- Same time (typically morning)
- Same clothing (minimal)
- After voiding

### Interpretation
- Sudden weight gain: Fluid retention
- Sudden weight loss: Diuresis or dehydration
- Expected postoperative: Slight gain (fluid resuscitation)

## Clinical Scenarios

### Postoperative Day 1
- Expect positive fluid balance (surgery, NPO, IV fluids)
- Urine output should be maintained
- Drains may have significant output

### Recovery Phase
- Negative balance (mobilizing third-space fluid)
- Increased urine output (diuresis)
- Weight returning to baseline

### Concerning Patterns
- Progressively positive balance → fluid overload
- Persistent oliguria despite fluids → AKI
- High drain output → surgical complication
- Severe negative balance → dehydration

## Integration with Clinical Assessment

### Signs of Fluid Overload
- Peripheral edema
- Elevated JVP
- Lung crackles
- Dyspnea
- Weight gain

### Signs of Dehydration
- Dry mucous membranes
- Decreased skin turgor
- Tachycardia
- Hypotension
- Concentrated urine

**The fluid chart provides numbers; clinical assessment provides context.**', 6);

-- Section 7: Postoperative Monitoring
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'content', 'Postoperative Monitoring',
'## Immediate Postoperative Period

### Recovery Room Standards
- Continuous SpO2 monitoring
- ECG monitoring (as indicated)
- Blood pressure every 5-15 minutes
- Respiratory rate observation
- Level of consciousness (awakening from anesthesia)
- Pain assessment
- Surgical site observation

### Discharge Criteria from Recovery
- Stable vital signs for 30+ minutes
- Adequate oxygenation on room air or stable O2
- Conscious, oriented, protective reflexes present
- Pain controlled
- No active bleeding
- Adequate urine output
- No nausea/vomiting or controlled

## Ward-Based Postoperative Monitoring

### First 24 Hours

| Observation | Frequency |
|-------------|-----------|
| Vital signs (full set) | Every 1-4 hours (procedure dependent) |
| Wound check | Every 4-8 hours |
| Drain output | Hourly or per shift |
| Urine output | Hourly if catheterized |
| Fluid balance | Running total |
| Pain score | With each vital sign set |

### After 24 Hours
- Decrease frequency if stable
- Continue at least every 4-6 hours until mobile
- Increase frequency if any concerns

## Specific Monitoring by Surgery Type

### Major Abdominal Surgery
- Bowel sounds (daily or more)
- Abdominal examination
- Drain output and character
- NGT output (if present)
- Urine output (acute kidney injury common)

### Vascular Surgery
- Peripheral pulses (compare to pre-op)
- Limb perfusion (color, temperature, capillary refill)
- Wound/graft site
- Neurological status of limb

### Orthopedic Surgery
- Neurovascular status of limb (pulses, sensation, movement)
- Compartment syndrome signs (pain, pressure, paralysis)
- Wound/dressing
- DVT prophylaxis compliance

### Head and Neck Surgery
- Airway patency
- Swelling (track changes)
- Drain output
- Wound/flap perfusion
- Cranial nerve function

## Warning Signs Postoperatively

### General
- Tachycardia (often earliest sign of trouble)
- Hypotension
- Tachypnea
- Fever (especially after day 2)
- Oliguria
- Confusion or agitation

### Specific Complications to Monitor For

**Hemorrhage:**
- Tachycardia
- Hypotension
- Pale, cold, clammy
- Wound hematoma or bleeding
- Drain output (bloody, high volume)

**Sepsis:**
- Fever or hypothermia
- Tachycardia
- Tachypnea
- Confusion
- Hypotension (later sign)

**Pulmonary Embolism:**
- Sudden dyspnea
- Tachypnea
- Hypoxia
- Tachycardia
- Chest pain

**Anastomotic Leak:**
- Tachycardia
- Fever
- Abdominal pain
- Peritonitis signs
- Drain output change (bile, enteric contents)

## Monitoring Drains

### Parameters to Record
- Volume per shift/24 hours
- Character (serous, bloody, bile, purulent, enteric)
- Trend (increasing, decreasing, stable)

### Concerning Findings
- Increasing bloody output after initial decrease
- Change to bile or enteric contents
- Purulent output
- Sudden cessation (may indicate blockage)

## Pain Assessment

### Regular Assessment
- Use validated pain scale (numeric, visual analog)
- Assess at rest and with movement
- Document interventions and response
- Escalate if uncontrolled

### Concerning Pain Patterns
- Increasing pain despite analgesia → complication
- New location of pain → investigate
- Severe pain out of proportion → compartment syndrome, ischemia', 7);

-- Section 8: Recognizing Deterioration
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'content', 'Recognizing and Responding to Deterioration',
'## The Problem of Deterioration

### Statistics
- Up to 80% of in-hospital cardiac arrests have warning signs in preceding 24 hours
- Vital sign abnormalities often documented but not acted upon
- "Failure to rescue" is a major cause of preventable death

### Why Deterioration is Missed
- Infrequent observations
- Failure to recognize abnormal values
- Normalization of deviance (accepting abnormal as "patient''s baseline")
- Failure to escalate
- Lack of response to escalation
- Poor communication

## Patterns of Deterioration

### Gradual Decline
- Vital signs slowly worsen over hours/days
- Easy to miss if observations infrequent
- Trend recognition is key

**Example: Developing sepsis**
- Day 1: HR 88, RR 18, Temp 37.2
- Day 2: HR 95, RR 20, Temp 37.8
- Day 3: HR 108, RR 24, Temp 38.5
- Day 4: HR 125, RR 30, Temp 39.2, BP falling

### Sudden Deterioration
- Rapid change in vital signs
- Often surgical emergency (hemorrhage, PE, anastomotic leak)
- Requires immediate response

**Example: Postoperative hemorrhage**
- 14:00: HR 76, BP 125/75 (stable post-op day 1)
- 15:30: HR 102, BP 105/65
- 16:00: HR 125, BP 88/55, pale, confused

### Compensated Deterioration
- Vital signs may appear stable despite underlying problem
- Especially in young, fit patients
- Watch for subtle signs (tachycardia, anxiety, restlessness)

## Red Flag Signs

### Immediate Action Required
- Respiratory rate <8 or >30
- SpO2 <90% despite supplemental oxygen
- Heart rate <40 or >130
- Systolic BP <90 mmHg
- New onset confusion or decreased consciousness
- Unresponsive or significantly reduced GCS
- NEWS ≥7 or any parameter score of 3

### Urgent Review Required
- NEWS 5-6
- Unexplained tachycardia (HR >100)
- Persistent fever despite treatment
- Oliguria (<0.5 mL/kg/hr for 2+ hours)
- New onset pain or worsening pain
- "Something''s not right" clinical concern

## The "Worried" Test

If a nurse or family member says "I''m worried about this patient" or "something''s not right," take it seriously. Clinical intuition often detects deterioration before measurable parameters change significantly.

## Structured Response to Deterioration

### ABCDE Approach

**A - Airway:**
- Is the airway patent?
- Any obstruction, stridor, secretions?
- May need positioning, suction, or airway adjunct

**B - Breathing:**
- Respiratory rate, effort, SpO2
- Auscultate chest
- Provide oxygen if hypoxic

**C - Circulation:**
- Heart rate, blood pressure, capillary refill
- Peripheral perfusion
- Establish IV access if not present
- Consider fluid bolus if hypotensive

**D - Disability:**
- AVPU or GCS
- Check blood glucose
- Pupil response

**E - Exposure:**
- Full examination
- Check wounds, drains, catheters
- Temperature
- Look for source of problem

### Call for Help Early
- Don''t wait until the patient is in extremis
- Use structured communication (SBAR)
- State clearly what you need

## Documentation During Deterioration

### Essential Elements
- Time of deterioration recognized
- Observations at that time
- Actions taken
- Personnel notified (and response time)
- Ongoing observations (more frequent)
- Response to interventions', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'key_points', 'Key Points',
'1. **Respiratory Rate is Critical**: The most sensitive indicator of deterioration and the least accurately recorded. Always count for a full 30-60 seconds.

2. **Complete Observations**: Never leave parameters blank. A complete set of observations is essential for calculating early warning scores and recognizing trends.

3. **NEWS2 Response**: Score 0 = low risk (12-hourly), Score 1-4 = low risk (4-6 hourly), Score 5-6 or single parameter 3 = medium risk (hourly, urgent review), Score ≥7 = high risk (emergency response).

4. **Single Parameter Score of 3**: Any extreme value (e.g., RR ≤8 or ≥25) requires urgent review regardless of total score.

5. **Trends Matter**: A gradually rising pulse from 80 to 110 over 24 hours may be more significant than a stable pulse of 100.

6. **Urine Output Target**: Minimum acceptable is 0.5 mL/kg/hour. Oliguria for >2 hours requires investigation and intervention.

7. **Daily Weights**: 1 kg change ≈ 1 liter fluid change. More reliable than intake/output charts for fluid balance assessment.

8. **SBAR for Escalation**: Situation, Background, Assessment, Recommendation—structured communication improves response to deterioration.

9. **The "Worried" Test**: When clinical staff or family express concern that "something''s not right," investigate and escalate even if observations appear normal.

10. **ABCDE Approach**: Systematic assessment (Airway, Breathing, Circulation, Disability, Exposure) ensures comprehensive evaluation of the deteriorating patient.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: Tachycardia is often the earliest sign of trouble—it compensates for hypovolemia, hypoxia, pain, fever, and sepsis. Never dismiss unexplained tachycardia.

💡 **Pearl 2**: A normal SpO2 does not mean the patient is "fine." They may be receiving high-flow oxygen to maintain that saturation, or they may be retaining CO2 with normal O2.

💡 **Pearl 3**: The patient who "just doesn''t look right" despite normal vital signs warrants closer observation. Trust clinical intuition and increase monitoring frequency.

💡 **Pearl 4**: Document what you actually measure, not what you expect. If the respiratory rate seems high, count it accurately—that information is vital.

💡 **Pearl 5**: When a patient''s condition changes, increase observation frequency immediately. Don''t wait for the scheduled observation time.

💡 **Pearl 6**: Post-operative fever on day 1-2 is often atelectasis. Fever after day 3 should prompt investigation for infection (wound, UTI, pneumonia, line-related).

💡 **Pearl 7**: Pain is the "5th vital sign." Increasing pain or pain out of proportion to clinical findings may indicate a surgical complication (compartment syndrome, ischemia, anastomotic leak).

💡 **Pearl 8**: A falling urine output is often an early indicator of hypovolemia or renal impairment. Act before the patient becomes oliguric.

💡 **Pearl 9**: Electronic monitoring systems are only as good as the response they trigger. Alerts must lead to clinical action, not just acknowledgment.

💡 **Pearl 10**: Young, fit patients can compensate for significant physiological insult. By the time their vital signs deteriorate markedly, they may be close to decompensation.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100015-0000-0000-0000-000000000015', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100015-0000-0000-0000-000000000015', 1, 'Royal College of Physicians. National Early Warning Score (NEWS) 2: Standardising the assessment of acute-illness severity in the NHS. 2017.', NULL, NULL, 'https://www.rcplondon.ac.uk/projects/outputs/national-early-warning-score-news-2'),
('a1100015-0000-0000-0000-000000000015', 2, 'Smith GB, et al. The ability of the National Early Warning Score (NEWS) to discriminate patients at risk of early cardiac arrest, unanticipated intensive care unit admission, and death. Resuscitation. 2013;84(4):465-470.', '10.1016/j.resuscitation.2012.12.016', '23295778', NULL),
('a1100015-0000-0000-0000-000000000015', 3, 'DeVita MA, et al. Findings of the first consensus conference on medical emergency teams. Crit Care Med. 2006;34(9):2463-2478.', '10.1097/01.CCM.0000235743.38172.6E', '16878033', NULL),
('a1100015-0000-0000-0000-000000000015', 4, 'Cretikos MA, et al. Respiratory rate: the neglected vital sign. Med J Aust. 2008;188(11):657-659.', '10.5694/j.1326-5377.2008.tb01825.x', '18513176', NULL),
('a1100015-0000-0000-0000-000000000015', 5, 'Odell M, et al. Nurses'' role in detecting deterioration in ward patients: systematic literature review. J Adv Nurs. 2009;65(10):1992-2006.', '10.1111/j.1365-2648.2009.05109.x', '20568317', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 1,
'The normal respiratory rate for an adult at rest is:',
'6-10 breaths per minute',
'12-20 breaths per minute',
'22-28 breaths per minute',
'30-40 breaths per minute',
'8-12 breaths per minute',
'B',
'The normal respiratory rate for adults at rest is 12-20 breaths per minute. Rates above 20 (tachypnea) or below 12 (bradypnea) require assessment for underlying causes.', '{1,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 2,
'Which vital sign is considered the most sensitive indicator of clinical deterioration?',
'Blood pressure',
'Heart rate',
'Respiratory rate',
'Temperature',
'Oxygen saturation',
'C',
'Respiratory rate is considered the most sensitive indicator of clinical deterioration. Unfortunately, it is also the least accurately recorded vital sign. Changes in respiratory rate often precede changes in other parameters.', '{1,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 3,
'On the AVPU scale, a patient who opens their eyes and responds when you speak to them is classified as:',
'Alert',
'Voice',
'Pain',
'Unresponsive',
'Confused',
'B',
'AVPU: A = Alert (fully awake, eyes open spontaneously), V = Voice (responds to verbal stimuli), P = Pain (responds only to painful stimuli), U = Unresponsive. A patient who responds to voice is classified as "V."', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 4,
'A NEWS2 score of 7 or higher indicates:',
'Low clinical risk',
'Medium clinical risk',
'High clinical risk requiring emergency response',
'The patient is stable',
'Normal variation',
'C',
'A NEWS2 score of 7 or higher indicates high clinical risk requiring emergency response. This should trigger continuous monitoring, immediate senior clinical review, and consideration of critical care assessment.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 5,
'In the NEWS2 system, a single parameter score of 3 requires:',
'No special action',
'Routine 12-hourly monitoring',
'Urgent review regardless of total score',
'Discharge from hospital',
'Only documentation',
'C',
'A single parameter score of 3 (extreme value) in NEWS2 requires urgent clinical review regardless of the total aggregate score. This is because any extreme physiological derangement warrants immediate attention.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 6,
'The minimum acceptable urine output for an adult patient is:',
'0.25 mL/kg/hour',
'0.5 mL/kg/hour',
'1.0 mL/kg/hour',
'2.0 mL/kg/hour',
'3.0 mL/kg/hour',
'B',
'The minimum acceptable urine output is 0.5 mL/kg/hour. Output below this for 2 or more hours (oliguria) suggests hypovolemia, acute kidney injury, or urinary obstruction and requires investigation and intervention.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 7,
'A 1 kg weight change in a patient corresponds to approximately:',
'100 mL of fluid',
'500 mL of fluid',
'1 liter of fluid',
'2 liters of fluid',
'3 liters of fluid',
'C',
'A 1 kg (1000 g) weight change corresponds to approximately 1 liter (1000 mL) of fluid gain or loss. Daily weights are therefore one of the most reliable indicators of fluid balance.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 8,
'SBAR stands for:',
'Signs, Blood pressure, Assessment, Response',
'Situation, Background, Assessment, Recommendation',
'Symptoms, Baseline, Action, Review',
'Status, Breathing, Airway, Resuscitation',
'Summary, Baseline, Action, Result',
'B',
'SBAR is a structured communication tool: Situation (what is happening), Background (relevant history), Assessment (your clinical impression), Recommendation (what you need). It improves communication during escalation.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 9,
'Postoperative fever on days 1-2 is most commonly due to:',
'Wound infection',
'Urinary tract infection',
'Atelectasis',
'Deep vein thrombosis',
'Drug reaction',
'C',
'Postoperative fever in the first 1-2 days is most commonly due to atelectasis (collapse of lung segments), often related to reduced mobility and shallow breathing post-anesthesia. Fever after day 3 should prompt investigation for infection.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 10,
'The ABCDE approach to assessing a deteriorating patient starts with:',
'Assessment',
'Airway',
'Breathing',
'Blood pressure',
'Background',
'B',
'The ABCDE approach is: Airway, Breathing, Circulation, Disability, Exposure. It provides a systematic method for assessing and managing the deteriorating patient, addressing life-threatening problems in order of priority.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 11,
'What percentage of patients who have in-hospital cardiac arrests show warning signs in the preceding 24 hours?',
'10-20%',
'30-40%',
'50-60%',
'Up to 80%',
'95-100%',
'D',
'Studies show that up to 80% of patients who have in-hospital cardiac arrests demonstrate warning signs (abnormal vital signs) in the preceding 24 hours. This highlights the importance of recognizing and responding to deterioration early.', '{2,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 12,
'For a stable postoperative patient on day 2, vital signs should be recorded at minimum:',
'Every 15 minutes',
'Every hour',
'Every 4-6 hours',
'Once daily',
'Every 12 hours',
'C',
'For routine stable postoperative patients, vital signs should be recorded at least every 4-6 hours. More frequent observations are needed in the immediate postoperative period, for higher-risk patients, or when abnormalities are detected.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 13,
'Unexplained tachycardia (HR >100) in a postoperative patient should prompt evaluation for all EXCEPT:',
'Hemorrhage',
'Pain',
'Sepsis',
'Athletic conditioning',
'Pulmonary embolism',
'D',
'Athletic conditioning would cause bradycardia, not tachycardia. Unexplained tachycardia is an important warning sign that may indicate hemorrhage, pain, hypovolemia, sepsis, fever, pulmonary embolism, or other complications requiring investigation.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 14,
'The "D" in the ABCDE assessment stands for:',
'Diagnosis',
'Drugs',
'Disability (neurological status)',
'Drains',
'Documentation',
'C',
'In the ABCDE approach, D stands for Disability, which involves neurological assessment including level of consciousness (AVPU or GCS), blood glucose check, and pupil responses.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 15,
'When calculating fluid balance, insensible losses are approximately:',
'100-200 mL/day',
'400-800 mL/day',
'1500-2000 mL/day',
'2500-3000 mL/day',
'Negligible and can be ignored',
'B',
'Insensible losses (through respiration and skin) are approximately 400-800 mL/day under normal circumstances. These increase with fever (add ~500 mL per degree Celsius above 38°C), tachypnea, and diaphoresis.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 16,
'When recording respiratory rate, you should count for at least:',
'10 seconds',
'15 seconds',
'30 seconds',
'60 seconds',
'5 seconds',
'C',
'Respiratory rate should be counted for at least 30 seconds (preferably 60 seconds for accuracy). This ensures accurate measurement of this critical vital sign. The patient should ideally be unaware they are being observed to avoid altered breathing patterns.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 17,
'In NEWS2, what score is assigned if the patient requires supplemental oxygen?',
'0',
'1',
'2',
'3',
'No score for oxygen',
'C',
'In NEWS2, the use of supplemental oxygen adds 2 points to the score. This recognizes that requiring oxygen to maintain saturation indicates respiratory compromise.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 18,
'A nurse expresses that a patient "just doesn''t look right" despite normal vital signs. The appropriate response is:',
'Reassure the nurse and continue routine care',
'Wait for the next scheduled observation',
'Take the concern seriously and increase monitoring',
'Document that observations were normal',
'Ask the nurse to clarify with specific parameters',
'C',
'Clinical intuition should be taken seriously. The "worried" observation from an experienced nurse often precedes measurable deterioration. Increase monitoring frequency and assess the patient clinically.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 19,
'Normal mean arterial pressure (MAP) should be at least:',
'45 mmHg',
'55 mmHg',
'65 mmHg',
'75 mmHg',
'85 mmHg',
'C',
'Mean arterial pressure (MAP) should be maintained at least 65 mmHg to ensure adequate organ perfusion. MAP is calculated as: DBP + (SBP - DBP)/3. Values below 65 mmHg may indicate inadequate tissue perfusion.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100015-0000-0000-0000-000000000015', 20,
'Young, fit patients may show late deterioration of vital signs because:',
'They are less likely to become ill',
'Their vital signs are always normal',
'They can compensate physiologically until late stages',
'They recover faster',
'They do not need close monitoring',
'C',
'Young, fit patients have significant physiological reserve and can compensate for insults (e.g., maintain blood pressure despite significant hypovolemia) until late stages. When they do deteriorate, it may be rapid and dramatic. They still require vigilant monitoring.', '{3,5}');
