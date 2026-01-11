-- CME Article 10: Mensuration and Physical Examination
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'art00010-0000-0000-0000-000000000010',
    'b0000010-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Clinical Mensuration and Physical Examination in Surgery',
    'Principles of Measurement and Systematic Assessment',
    'Clinical mensuration and systematic physical examination form the foundation of surgical diagnosis. This CME article provides comprehensive coverage of measurement techniques, vital signs interpretation, and systematic physical examination with emphasis on surgical relevance. Accuracy in clinical measurement directly impacts diagnosis, treatment planning, and outcome assessment.',
    'UNTH Surgery Department, Clinical Skills Unit',
    40,
    2.0,
    'basic',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'introduction', 'Introduction',
'Clinical mensuration—the systematic measurement of patient parameters—and physical examination remain cornerstone skills in medicine. Despite advances in imaging and laboratory diagnostics, the bedside assessment provides essential information that guides clinical decision-making.

**Why Mensuration Matters:**
- Quantifies disease severity
- Monitors treatment response
- Guides intervention timing
- Provides prognostic information
- Enables comparison over time

**The Surgical Physical Examination:**
While the complete physical examination is essential, the surgical examination emphasizes:
- Inspection of wounds, surgical sites, and drains
- Palpation for masses, organomegaly, and tenderness
- Auscultation of bowel sounds and bruits
- Assessment of perfusion and neurovascular status
- Serial examination to detect changes

**Principles of Accuracy:**
- Use standardized techniques
- Employ appropriate instruments
- Document precisely
- Recognize normal ranges and variations
- Compare to baseline and contralateral when appropriate

This article provides the foundation for accurate clinical measurement and systematic physical examination in surgical practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Demonstrate proper technique for measuring vital signs including blood pressure, pulse, temperature, and respiratory rate

2. Interpret vital signs in the context of surgical conditions and recognize abnormal patterns

3. Perform accurate anthropometric measurements including height, weight, and body mass index

4. Apply systematic approach to physical examination of surgical patients

5. Describe proper technique for abdominal examination including inspection, auscultation, percussion, and palpation

6. Measure and document wound dimensions, drain output, and fluid balance

7. Perform focused cardiovascular examination relevant to preoperative assessment

8. Assess nutritional status using clinical and anthropometric measures

9. Document examination findings accurately using appropriate medical terminology

10. Recognize examination findings that require urgent surgical intervention', 2);

-- Section 3: Vital Signs
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'content', 'Vital Signs Measurement',
'## Temperature

### Measurement Sites and Normal Ranges

| Site | Technique | Normal Range | Adjustment |
|------|-----------|--------------|------------|
| Oral | Under tongue, lips closed, 3 min | 36.5-37.5°C (97.7-99.5°F) | Reference |
| Axillary | In axilla, arm adducted, 5 min | 36.0-37.0°C | Add 0.5°C to estimate core |
| Rectal | 2-4 cm depth, lateral position | 37.0-38.0°C | Subtract 0.5°C for oral equivalent |
| Tympanic | Infrared, ear canal | 36.5-37.5°C | Quick, less accurate |
| Temporal | Infrared, forehead | 36.5-37.5°C | Quick, affected by environment |
| Core (esophageal) | ICU setting | 36.5-37.5°C | Gold standard |

### Clinical Considerations
- **Fever**: >38.0°C (100.4°F)
- **Hypothermia**: <35.0°C (95.0°F)
- Rectal is most accurate in stable patients
- Oral may be inaccurate with recent intake or tachypnea
- Neutropenic patients may not mount fever

## Heart Rate and Pulse

### Technique
- Radial artery most common site
- Index and middle fingers (not thumb)
- Count for 30-60 seconds (full minute if irregular)
- Assess rate, rhythm, and character

### Pulse Sites
- Carotid, brachial, radial, femoral, popliteal, posterior tibial, dorsalis pedis

### Normal Ranges

| Age | Heart Rate (bpm) |
|-----|------------------|
| Newborn | 120-160 |
| Infant | 100-140 |
| Child | 80-120 |
| Adult | 60-100 |
| Trained athlete | 40-60 |

### Pulse Characteristics
- **Regular vs. Irregular**: Atrial fibrillation, ectopy
- **Bounding**: Aortic regurgitation, hyperdynamic states
- **Weak/Thready**: Shock, hypovolemia
- **Pulsus paradoxus**: >10 mmHg drop with inspiration (tamponade, severe asthma)

## Blood Pressure

### Technique
- Patient seated, relaxed, arm supported at heart level
- Appropriate cuff size (bladder 80% of arm circumference)
- Palpate systolic first, then auscultate
- Korotkoff sounds: I (systolic), V (diastolic)

### Cuff Sizes

| Cuff | Arm Circumference |
|------|-------------------|
| Small adult | 22-26 cm |
| Adult | 27-34 cm |
| Large adult | 35-44 cm |
| Thigh | 45-52 cm |

### Normal Ranges
- Normal: <120/<80 mmHg
- Elevated: 120-129/<80 mmHg
- Hypertension Stage 1: 130-139/80-89 mmHg
- Hypertension Stage 2: ≥140/≥90 mmHg
- Hypotension: <90 systolic (or symptomatic)

### Special Measurements
- **Orthostatic**: Drop >20 mmHg systolic or >10 mmHg diastolic with standing
- **Bilateral**: Compare both arms; >20 mmHg difference suggests stenosis
- **Ankle-Brachial Index**: Ankle SBP ÷ Brachial SBP (normal >0.9)

## Respiratory Rate

### Technique
- Count without patient''s awareness (affects rate)
- Observe chest rise for 30-60 seconds
- Note depth and pattern

### Normal Ranges
- Adult: 12-20 breaths/minute
- Child: 20-30 breaths/minute
- Infant: 30-50 breaths/minute

### Patterns
- **Tachypnea**: >20/min (fever, anxiety, metabolic acidosis)
- **Bradypnea**: <12/min (opioids, brain injury)
- **Kussmaul**: Deep, rapid (metabolic acidosis)
- **Cheyne-Stokes**: Crescendo-decrescendo with apnea (heart failure, brain injury)

## Oxygen Saturation

### Pulse Oximetry
- Normal: 95-100%
- Measures percentage of hemoglobin saturated with oxygen
- May be inaccurate with poor perfusion, nail polish, carbon monoxide poisoning

### Limitations
- Does not assess ventilation (CO2)
- Does not detect methemoglobin or carboxyhemoglobin
- Delayed response to acute changes', 3);

-- Section 4: Anthropometry
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'content', 'Anthropometric Measurements',
'## Height and Weight

### Height Measurement
- Patient standing erect, barefoot
- Heels, buttocks, shoulders against wall
- Horizontal headpiece or stadiometer
- Record in centimeters or meters

### Weight Measurement
- Calibrated scale
- Minimal clothing, no shoes
- Same time of day for serial measurements
- Record in kilograms

### Body Mass Index (BMI)

**Formula:**
$$BMI = \frac{Weight (kg)}{Height (m)^2}$$

**Classification:**

| BMI | Classification |
|-----|----------------|
| <18.5 | Underweight |
| 18.5-24.9 | Normal |
| 25.0-29.9 | Overweight |
| 30.0-34.9 | Obesity Class I |
| 35.0-39.9 | Obesity Class II |
| ≥40 | Obesity Class III (Morbid) |

### Ideal Body Weight (IBW)

**Devine Formula:**
- Male: IBW (kg) = 50 + 2.3 × (height in inches - 60)
- Female: IBW (kg) = 45.5 + 2.3 × (height in inches - 60)

### Adjusted Body Weight (ABW)
For obese patients (drug dosing):
$$ABW = IBW + 0.4 × (Actual Weight - IBW)$$

## Body Surface Area (BSA)

**Mosteller Formula:**
$$BSA (m^2) = \sqrt{\frac{Height (cm) × Weight (kg)}{3600}}$$

**Uses:**
- Drug dosing (especially chemotherapy)
- Burn estimation
- Cardiac index calculation

## Nutritional Assessment Measures

### Mid-Arm Circumference (MAC)
- Measured at midpoint between acromion and olecranon
- Normal male: ~32 cm
- Normal female: ~28 cm
- <23.5 cm suggests malnutrition

### Triceps Skinfold Thickness (TSF)
- Posterior arm at MAC level
- Calipers held perpendicular
- Average of 3 readings
- Normal male: ~12.5 mm
- Normal female: ~16.5 mm

### Mid-Arm Muscle Circumference (MAMC)
$$MAMC = MAC - (π × TSF)$$
- Estimates muscle mass
- Marker of protein status

### Hand Grip Strength
- Dynamometer measurement
- Correlates with nutritional status
- Predictor of postoperative complications', 4);

-- Section 5: Abdominal Examination
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'content', 'Abdominal Examination',
'## Systematic Approach

The abdominal examination follows the sequence: **Inspection, Auscultation, Percussion, Palpation**
Note: Auscultation before percussion/palpation to avoid altering bowel sounds.

### Preparation
- Patient supine, knees slightly flexed
- Adequate exposure (xiphoid to pubic symphysis)
- Warm hands and stethoscope
- Ask about pain location before palpating

## Inspection

### Observations
- **Contour**: Flat, scaphoid, distended, asymmetric
- **Skin**: Scars, striae, dilated veins (caput medusae), discoloration
- **Umbilicus**: Position, herniation, discharge
- **Visible masses or pulsations**
- **Peristalsis**: Visible in thin patients; prominent with obstruction

### Specific Signs
- **Cullen''s sign**: Periumbilical ecchymosis (retroperitoneal hemorrhage, pancreatitis)
- **Grey-Turner''s sign**: Flank ecchymosis (retroperitoneal hemorrhage)
- **Caput medusae**: Dilated periumbilical veins (portal hypertension)
- **Sister Mary Joseph nodule**: Umbilical metastasis

## Auscultation

### Bowel Sounds
- Listen in each quadrant for 30-60 seconds before declaring absent
- **Normal**: Intermittent, medium-pitched gurgles (5-15/min)
- **Hyperactive**: High-pitched, tinkling (early obstruction, gastroenteritis)
- **Hypoactive/Absent**: <5/min or silent (ileus, peritonitis, late obstruction)

### Bruits
- Listen over aorta, renal arteries, iliac arteries, femoral arteries
- **Aortic bruit**: Midline above umbilicus (AAA, stenosis)
- **Renal bruit**: Flanks (renal artery stenosis)

### Friction Rub
- Over liver or spleen (tumor, abscess, infarction)

## Percussion

### Technique
- Middle finger on abdomen, tap with other middle finger
- Percuss all quadrants systematically

### Findings
- **Tympany**: Predominant (gas-filled bowel)
- **Dullness**: Solid organs (liver, spleen), fluid, masses
- **Shifting dullness**: Ascites

### Liver Span
- Percuss from lung resonance to bowel tympany at right MCL
- Normal: 6-12 cm

### Spleen
- Normally not percussible below costal margin
- Traube''s space: Tympanic (gastric bubble); dull suggests splenomegaly

## Palpation

### Technique
- Light palpation first (1-2 cm depth) for tenderness, guarding
- Deep palpation (4-6 cm) for masses, organomegaly
- Palpate painful area last
- Use flat of fingers, not fingertips

### Findings to Assess
- **Tenderness**: Localized vs. generalized
- **Guarding**: Voluntary (patient tenses) vs. involuntary (peritonitis)
- **Rigidity**: Board-like (diffuse peritonitis)
- **Rebound tenderness**: Pain worse on release (peritoneal irritation)
- **Masses**: Location, size, consistency, mobility, pulsatility

### Liver Palpation
- Start low, advance with inspiration
- Describe edge: Sharp, rounded, nodular
- Normal: Palpable at or below costal margin

### Spleen Palpation
- Patient supine or right lateral decubitus
- Palpate toward left costal margin during inspiration
- Normally not palpable; palpable = 2-3x enlarged

### Special Tests

**Murphy''s sign:**
- Deep palpation of RUQ during inspiration
- Positive: Inspiratory arrest due to pain
- Suggestive of acute cholecystitis

**Rovsing''s sign:**
- LLQ palpation causes RLQ pain
- Suggests appendicitis

**Psoas sign:**
- Pain with hip extension (patient on side)
- Suggests retrocecal appendicitis

**Obturator sign:**
- Pain with internal rotation of flexed hip
- Suggests pelvic appendicitis

**McBurney''s point:**
- 1/3 distance from ASIS to umbilicus
- Classic appendicitis tenderness', 5);

-- Section 6: Wound and Drain Assessment
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'content', 'Wound and Drain Assessment',
'## Wound Measurement

### Dimensions
- **Length**: Greatest head-to-toe dimension (cm)
- **Width**: Greatest side-to-side dimension (cm)
- **Depth**: Deepest point from surface (cm)
- Document using ruler or measuring guide

### Wound Bed
- Describe tissue types and percentages
- Red (granulation), Yellow (slough), Black (eschar), Pink (epithelializing)

### Undermining/Tunneling
- Use clock-face notation (12 o''clock = toward head)
- Probe gently to determine extent
- Document depth and location

### Edges
- Attached, rolled (epibole), macerated, callused

### Exudate
- **Amount**: None, scant, moderate, copious
- **Type**: Serous, serosanguinous, sanguinous, purulent

### Periwound Skin
- Intact, erythematous, indurated, macerated

## Drain Output Assessment

### Documentation
- Type of drain
- Location
- Volume per shift/24 hours
- Character of drainage

### Output Characters

| Character | Description | Concern |
|-----------|-------------|---------|
| Serous | Clear, yellow | Normal |
| Serosanguinous | Pink, thin | Normal postop |
| Sanguinous | Red, bloody | Active bleeding |
| Bilious | Green-yellow | Bile leak |
| Purulent | Thick, opaque | Infection |
| Enteric | Brown, feculent | Anastomotic leak |
| Chylous | Milky, white | Lymphatic injury |

### Expected Trends
- JP drains: Decreasing daily output
- Remove when <30 mL/day for most applications
- Sudden increase may indicate complication

## Fluid Balance

### Intake
- Oral fluids
- IV fluids
- Tube feeds
- Medications with volume

### Output
- Urine output (0.5-1 mL/kg/hr goal)
- Drain output
- NGT output
- Stool/ostomy output
- Insensible losses (~500-800 mL/day; more with fever, tachypnea)

### Documentation
- 8-hour shift totals
- 24-hour intake and output
- Cumulative balance
- Daily weights correlate with fluid balance (1 L ≈ 1 kg)

## Stoma Assessment

### Parameters
- **Color**: Pink-red (normal); dusky, pale, or black (ischemia)
- **Size**: Measure diameter in cm
- **Height**: Above or below skin level
- **Output**: Volume and consistency
- **Peristomal skin**: Intact, irritated, denuded
- **Appliance fit**: Proper sizing, adherence, leakage', 6);

-- Section 7: Preoperative Cardiovascular Assessment
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'content', 'Cardiovascular Examination',
'## Inspection

### General
- Cyanosis (central vs. peripheral)
- Clubbing
- Peripheral edema
- Jugular venous distension (JVD)

### Jugular Venous Pressure (JVP)
- Patient at 45 degrees
- Observe internal jugular vein
- Measure height above sternal angle + 5 cm
- Normal: <9 cm H2O
- Elevated: Heart failure, tamponade, PE

### Visible Pulsations
- Apical impulse
- Abnormal precordial movement
- Abdominal aortic pulsation

## Palpation

### Peripheral Pulses
- Rate bilaterally: Radial, brachial, femoral, popliteal, PT, DP
- Grade: 0 (absent), 1+ (diminished), 2+ (normal), 3+ (bounding)

### Precordium
- **PMI**: 5th intercostal space, MCL
- Displacement suggests cardiomegaly
- **Heaves/Lifts**: Sustained pulsation (ventricular hypertrophy)
- **Thrills**: Palpable murmurs (grade ≥4)

### Edema
- Press tibial area for 5 seconds
- Grade: 1+ (2mm), 2+ (4mm), 3+ (6mm), 4+ (8mm)
- Note extent (ankle, pretibial, thigh, sacral)

## Auscultation

### Technique
- Diaphragm for high-pitched sounds
- Bell for low-pitched sounds
- Listen at each area: Aortic, Pulmonic, Erb''s, Tricuspid, Mitral

### Heart Sounds
- **S1**: Mitral/tricuspid closure (apex)
- **S2**: Aortic/pulmonic closure (base)
- **S3**: Early diastole, ventricular gallop (heart failure)
- **S4**: Late diastole, atrial gallop (stiff ventricle)

### Murmurs
Document:
- Timing (systolic, diastolic, continuous)
- Location and radiation
- Grade (I-VI)
- Quality (harsh, blowing, rumbling)
- Effect of maneuvers

### Grading Murmurs

| Grade | Description |
|-------|-------------|
| I | Barely audible |
| II | Soft but clearly audible |
| III | Moderately loud |
| IV | Loud with palpable thrill |
| V | Very loud, thrill, audible with stethoscope partly off chest |
| VI | Audible with stethoscope off chest |

### Common Murmurs for Surgical Patients

**Aortic Stenosis:**
- Harsh crescendo-decrescendo systolic murmur
- Best at right upper sternal border
- Radiates to carotids
- Important for perioperative risk

**Mitral Regurgitation:**
- Holosystolic blowing murmur
- Best at apex, radiates to axilla
- May worsen with fluid overload

## Carotid Examination
- Auscultate for bruits (before palpation)
- Palpate one at a time
- Bruit suggests stenosis (>50% typically)
- Important preoperative assessment', 7);

-- Section 8: Documentation
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'content', 'Documentation Principles',
'## Importance of Accurate Documentation

- Legal medical record
- Communication among providers
- Baseline for comparison
- Quality improvement
- Billing and coding

## Components of Complete Documentation

### Subjective (History)
- Chief complaint
- History of present illness
- Past medical/surgical history
- Medications and allergies
- Family and social history
- Review of systems

### Objective (Physical Examination)
- Vital signs
- General appearance
- System-by-system findings
- Focused examination based on chief complaint

### Assessment
- Working diagnosis
- Differential diagnoses
- Problem list

### Plan
- Diagnostic studies
- Treatments
- Consultations
- Follow-up

## Descriptive Terminology

### Size
- Use metric system (cm, mm)
- Compare to standard objects only if precise measurement unavailable

### Location
- Anatomic landmarks
- Quadrants (for abdomen)
- Clock-face (for circular structures: breast, anus)
- Distance from fixed landmarks

### Quality
- Use standard medical terms
- Avoid ambiguous descriptions
- Be specific and objective

## Common Surgical Documentation

### Wound Checks
"Incision clean, dry, intact. No erythema, warmth, or drainage. Sutures/staples in place."

### Drain Assessment
"JP drain #1 (RLQ): 45 mL serosanguinous output over 24 hours. Drain patent, secured at skin."

### Abdominal Examination
"Abdomen soft, non-distended. Bowel sounds present in all four quadrants. Non-tender to deep palpation. No masses or organomegaly. Incision well-approximated."

### Neurovascular Checks
"Extremity warm, well-perfused. Pulses 2+ at DP and PT. Capillary refill <2 seconds. Sensation intact to light touch. Motor function normal."

## Electronic Health Record Tips
- Use structured templates when available
- Review and edit auto-populated data
- Sign notes promptly
- Document in real-time when possible
- Avoid copy-forward errors', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'key_points', 'Key Points',
'1. **Temperature Sites**: Rectal most accurate for core temperature. Add 0.5°C to axillary readings for oral equivalent. Fever defined as >38.0°C (100.4°F).

2. **Blood Pressure Cuff Size**: Bladder should be 80% of arm circumference. Small cuff falsely elevates readings; large cuff falsely lowers them.

3. **Orthostatic Vitals**: Positive if SBP drops >20 mmHg or DBP drops >10 mmHg upon standing. Indicates hypovolemia or autonomic dysfunction.

4. **BMI Calculation**: Weight (kg) / Height (m)². Normal 18.5-24.9; Morbid obesity ≥40.

5. **Abdominal Exam Sequence**: Inspection → Auscultation → Percussion → Palpation (auscultate before touching to avoid altering bowel sounds).

6. **Bowel Sounds**: Listen 30-60 seconds before declaring absent. Absent suggests ileus; hyperactive with tinkling suggests mechanical obstruction.

7. **Peritoneal Signs**: Involuntary guarding, rigidity, and rebound tenderness indicate peritoneal irritation—usually require surgical evaluation.

8. **Murphy''s Sign**: Inspiratory arrest during RUQ palpation. Positive suggests acute cholecystitis.

9. **Drain Output Assessment**: Document volume, character, and trend. Bilious or enteric (feculent) drainage suggests anastomotic leak—requires urgent attention.

10. **JVP Measurement**: Height of internal jugular pulsation above sternal angle + 5 cm. Normal <9 cm H2O. Elevated in heart failure, tamponade, PE.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: Count respiratory rate without the patient''s knowledge—awareness of counting significantly alters the rate.

💡 **Pearl 2**: An incorrect blood pressure cuff size is the most common source of BP measurement error. When in doubt, use the larger cuff.

💡 **Pearl 3**: A normal pulse oximetry reading does NOT indicate adequate ventilation. The patient can be hypercarbic with normal SpO2.

💡 **Pearl 4**: Palpate the abdomen last where the patient says it hurts. Starting there causes guarding that makes the rest of the exam unreliable.

💡 **Pearl 5**: In thin patients, a visible pulsation in the epigastrium may be normal aorta. In others, it may indicate AAA. Ultrasound is definitive.

💡 **Pearl 6**: Daily weight is the most reliable indicator of fluid balance. 1 kilogram change ≈ 1 liter of fluid.

💡 **Pearl 7**: A dusky or black stoma is an emergency—indicates ischemia. Pink-red is healthy; pale may indicate anemia or hypoperfusion.

💡 **Pearl 8**: Cullen''s sign (periumbilical ecchymosis) and Grey-Turner''s sign (flank ecchymosis) take 24-48 hours to develop after retroperitoneal hemorrhage.

💡 **Pearl 9**: An S3 heart sound in an adult suggests volume overload or heart failure. An S4 suggests a stiff ventricle (HTN, HCM, ischemia).

💡 **Pearl 10**: Compare bilateral pulses and blood pressures. A difference of >20 mmHg in arm BPs or absent pulses suggests arterial stenosis or dissection.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00010-0000-0000-0000-000000000010', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('art00010-0000-0000-0000-000000000010', 1, 'Bickley LS, Szilagyi PG. Bates'' Guide to Physical Examination and History Taking. 13th ed. Wolters Kluwer; 2021.', NULL, NULL, NULL),
('art00010-0000-0000-0000-000000000010', 2, 'Whelton PK, et al. 2017 ACC/AHA/AAPA/ABC/ACPM/AGS/APhA/ASH/ASPC/NMA/PCNA Guideline for the Prevention, Detection, Evaluation, and Management of High Blood Pressure in Adults. Hypertension. 2018;71(6):e13-e115.', '10.1161/HYP.0000000000000065', '29133356', NULL),
('art00010-0000-0000-0000-000000000010', 3, 'White JV, et al. Consensus Statement: Academy of Nutrition and Dietetics and American Society for Parenteral and Enteral Nutrition. J Acad Nutr Diet. 2012;112(5):730-738.', '10.1016/j.jand.2012.03.012', '22709779', NULL),
('art00010-0000-0000-0000-000000000010', 4, 'Wagner JY, et al. Clinical examination in the ICU: a systematic review. Crit Care Med. 2018;46(10):1671-1680.', '10.1097/CCM.0000000000003308', '29979216', NULL),
('art00010-0000-0000-0000-000000000010', 5, 'Simel DL, Rennie D. The Rational Clinical Examination: Evidence-Based Clinical Diagnosis. McGraw-Hill; 2009.', NULL, NULL, NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 1,
'When measuring blood pressure, the cuff bladder should encircle what percentage of the arm circumference?',
'50%',
'60%',
'70%',
'80%',
'100%',
'D',
'The blood pressure cuff bladder should encircle approximately 80% of the arm circumference. A cuff that is too small will give falsely elevated readings, while a cuff that is too large will give falsely low readings.',
'1,2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 2,
'Orthostatic hypotension is defined as a drop in systolic blood pressure of more than:',
'5 mmHg',
'10 mmHg',
'20 mmHg',
'30 mmHg',
'40 mmHg',
'C',
'Orthostatic hypotension is defined as a drop in systolic BP >20 mmHg or diastolic BP >10 mmHg within 3 minutes of standing. This suggests hypovolemia, dehydration, or autonomic dysfunction.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 3,
'The proper sequence for abdominal examination is:',
'Palpation, percussion, auscultation, inspection',
'Inspection, palpation, percussion, auscultation',
'Inspection, auscultation, percussion, palpation',
'Percussion, palpation, inspection, auscultation',
'Auscultation, inspection, percussion, palpation',
'C',
'The abdominal examination follows the sequence: Inspection, Auscultation, Percussion, Palpation. Auscultation is performed before percussion and palpation to avoid altering bowel sounds.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 4,
'Cullen''s sign is characterized by:',
'Flank ecchymosis',
'Periumbilical ecchymosis',
'Jaundice',
'Abdominal distension',
'Spider angiomata',
'B',
'Cullen''s sign refers to periumbilical ecchymosis, which develops 24-48 hours after retroperitoneal hemorrhage, classically seen in hemorrhagic pancreatitis. Grey-Turner''s sign is flank ecchymosis from the same etiology.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 5,
'A positive Murphy''s sign is associated with:',
'Appendicitis',
'Acute cholecystitis',
'Pancreatitis',
'Small bowel obstruction',
'Peptic ulcer disease',
'B',
'Murphy''s sign is positive when deep palpation of the right upper quadrant during inspiration causes the patient to catch their breath due to pain. This is associated with acute cholecystitis as the inflamed gallbladder descends and contacts the examining fingers.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 6,
'Normal body temperature measured orally is:',
'35.0-36.0°C',
'36.5-37.5°C',
'37.5-38.5°C',
'38.0-39.0°C',
'34.5-35.5°C',
'B',
'Normal oral body temperature ranges from 36.5-37.5°C (97.7-99.5°F). Fever is defined as temperature >38.0°C (100.4°F). Hypothermia is defined as <35.0°C (95.0°F).',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 7,
'A BMI of 32 kg/m² classifies a patient as:',
'Overweight',
'Obesity Class I',
'Obesity Class II',
'Obesity Class III',
'Normal weight',
'B',
'Obesity Class I is defined as BMI 30.0-34.9 kg/m². A BMI of 32 falls within this range. Overweight is 25.0-29.9, Obesity Class II is 35.0-39.9, and Obesity Class III (morbid obesity) is ≥40.',
'3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 8,
'When assessing bowel sounds, you should listen for how long before declaring them absent?',
'5 seconds per quadrant',
'15 seconds per quadrant',
'30-60 seconds per quadrant',
'10 seconds total',
'2 minutes total',
'C',
'You should listen in each quadrant for 30-60 seconds before declaring bowel sounds absent. Bowel sounds are intermittent, and a brief listening period may miss normal sounds.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 9,
'Bilious drainage from a surgical drain suggests:',
'Normal postoperative drainage',
'Wound infection',
'Bile leak',
'Chyle leak',
'Hematoma',
'C',
'Bilious (green-yellow) drainage from a surgical drain, especially after hepatobiliary surgery, suggests a bile leak. This requires further evaluation with imaging and possibly intervention. Normal postoperative drainage is serosanguinous.',
'4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 10,
'Normal jugular venous pressure is less than:',
'4 cm H2O',
'7 cm H2O',
'9 cm H2O',
'12 cm H2O',
'15 cm H2O',
'C',
'Normal JVP is <9 cm H2O (height of internal jugular pulsation above the sternal angle + 5 cm). Elevated JVP suggests increased right atrial pressure from heart failure, tamponade, PE, or volume overload.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 11,
'Rovsing''s sign is positive when:',
'RUQ palpation causes LLQ pain',
'LLQ palpation causes RLQ pain',
'Percussion over the liver is painful',
'Deep inspiration causes RUQ pain',
'Hip flexion causes abdominal pain',
'B',
'Rovsing''s sign is positive when palpation of the left lower quadrant causes pain in the right lower quadrant. This suggests appendicitis due to the rebound effect on the inflamed appendix.',
'1,5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 12,
'Involuntary guarding and rigidity on abdominal examination indicate:',
'Anxiety',
'Constipation',
'Peritoneal irritation',
'Abdominal wall hernia',
'Normal finding',
'C',
'Involuntary guarding and rigidity (board-like abdomen) indicate peritoneal irritation from inflammation, infection, or blood in the peritoneal cavity. This is an important finding that often requires surgical evaluation.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 13,
'A stoma that appears dusky or black indicates:',
'Normal stoma color',
'Adequate blood supply',
'Stoma ischemia requiring urgent evaluation',
'Stoma infection',
'Need for routine follow-up',
'C',
'A dusky, purple, or black stoma indicates ischemia and is a surgical emergency. Normal stoma color is pink-red. Pale color may indicate anemia or hypoperfusion. Ischemia requires urgent surgical evaluation.',
'4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 14,
'When measuring temperature, an axillary reading is typically:',
'The same as oral temperature',
'0.5°C higher than oral temperature',
'0.5°C lower than oral temperature',
'1.0°C higher than oral temperature',
'1.0°C lower than oral temperature',
'C',
'Axillary temperature is typically 0.5°C (0.9°F) lower than oral temperature. To estimate core temperature from an axillary reading, add 0.5°C. Rectal temperature is typically 0.5°C higher than oral.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 15,
'One kilogram of body weight change corresponds to approximately how much fluid?',
'500 mL',
'750 mL',
'1 liter',
'2 liters',
'100 mL',
'C',
'One kilogram (1 kg) of body weight change corresponds to approximately 1 liter of fluid gain or loss. Daily weights are therefore one of the most reliable indicators of fluid balance.',
'4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 16,
'The normal liver span at the right midclavicular line is:',
'2-4 cm',
'4-6 cm',
'6-12 cm',
'14-18 cm',
'1-2 cm',
'C',
'The normal liver span at the right midclavicular line is 6-12 cm, measured by percussion from the upper border (lung resonance to hepatic dullness) to the lower border (hepatic dullness to bowel tympany).',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 17,
'A Grade IV murmur is characterized by:',
'Barely audible with concentration',
'Clearly audible without thrill',
'Loud with palpable thrill',
'Audible with stethoscope off chest',
'Only audible in certain positions',
'C',
'A Grade IV murmur is loud and associated with a palpable thrill (vibration felt with the hand). Grade I is barely audible, Grade II is soft but clearly audible, Grade III is moderately loud, Grade V is very loud, and Grade VI is audible with the stethoscope off the chest.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 18,
'The normal adult respiratory rate at rest is:',
'6-10 breaths per minute',
'12-20 breaths per minute',
'22-28 breaths per minute',
'30-40 breaths per minute',
'8-12 breaths per minute',
'B',
'The normal adult respiratory rate at rest is 12-20 breaths per minute. Tachypnea is >20/minute (may indicate fever, anxiety, pain, metabolic acidosis). Bradypnea is <12/minute (may indicate opioid effect or CNS depression).',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 19,
'McBurney''s point is located at:',
'The midpoint between the umbilicus and xiphoid',
'One-third of the distance from the ASIS to the umbilicus',
'The right costal margin at the midclavicular line',
'The midpoint between the pubic symphysis and umbilicus',
'Two inches below the umbilicus',
'B',
'McBurney''s point is located one-third of the distance from the anterior superior iliac spine (ASIS) to the umbilicus. It is the classic point of maximal tenderness in appendicitis, corresponding to the typical location of the appendix base.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00010-0000-0000-0000-000000000010', 20,
'When palpating peripheral pulses, they should be graded as:',
'Present or absent only',
'Weak, normal, or strong',
'0 (absent) to 4+ scale',
'0 (absent), 1+ (diminished), 2+ (normal), 3+ (bounding)',
'Numerical mmHg measurement',
'D',
'Peripheral pulses are typically graded on a scale: 0 (absent), 1+ (diminished/weak), 2+ (normal), 3+ (bounding). This standardized grading allows for consistent documentation and comparison between providers and over time.',
'1');
