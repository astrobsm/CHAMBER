-- CME Article 4: Fluid and Electrolytes
-- Comprehensive CME article with 20 self-assessment questions

-- Insert the article
INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'art00004-0000-0000-0000-000000000004',
    'b0000004-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Fluid and Electrolyte Management in Surgical Patients',
    'Principles of Perioperative Fluid Therapy and Electrolyte Disorders',
    'Effective fluid and electrolyte management is fundamental to surgical care. This CME article provides a comprehensive review of body fluid compartments, maintenance fluid requirements, and the pathophysiology and management of common electrolyte disturbances encountered in surgical practice. The article covers crystalloid and colloid solutions, goal-directed fluid therapy, and the recognition and treatment of hyponatremia, hypernatremia, hypokalemia, hyperkalemia, hypocalcemia, and hypercalcemia. Special emphasis is placed on practical clinical applications and evidence-based practice.',
    'UNTH Surgery Department, Metabolic Surgery Section',
    50,
    2.5,
    'medium',
    1,
    true
);

-- Insert article sections
-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'introduction', 'Introduction', 
'Fluid and electrolyte homeostasis is critical for normal cellular function and organ system performance. Surgical patients face unique challenges including:

- **Preoperative deficits** from NPO status, bowel preparation, or underlying disease
- **Intraoperative losses** from bleeding, evaporation, and third-spacing
- **Postoperative shifts** as fluids redistribute
- **Ongoing losses** from drains, nasogastric tubes, fistulas, and wounds

**Why This Matters:**

Inappropriate fluid therapy is associated with significant morbidity:
- **Under-resuscitation**: Hypovolemia, organ hypoperfusion, acute kidney injury
- **Over-resuscitation**: Pulmonary edema, anastomotic breakdown, prolonged ileus, wound complications

**The Modern Approach:**

Modern perioperative fluid management has evolved from fixed-volume protocols to individualized, goal-directed approaches that optimize tissue perfusion while avoiding fluid overload. Understanding the physiology of body fluid compartments and electrolyte balance is essential for every surgeon.

**Key Principles:**
1. Assess volume status accurately
2. Understand the composition and distribution of IV fluids
3. Replace deficits appropriately
4. Provide maintenance fluids
5. Replace ongoing losses
6. Monitor and adjust based on response', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'learning_objectives', 'Learning Objectives', 
'Upon completion of this article, participants should be able to:

1. Describe the distribution of body water across fluid compartments and factors that influence fluid movement

2. Calculate maintenance fluid requirements using standard formulas

3. Compare the composition and clinical applications of common crystalloid and colloid solutions

4. Assess volume status using clinical and laboratory parameters

5. Apply principles of goal-directed fluid therapy in the perioperative setting

6. Recognize clinical presentations of sodium disorders and outline appropriate management

7. Diagnose and manage potassium disorders, including emergent treatment of severe hyperkalemia

8. Identify causes and treatment of calcium and magnesium disturbances in surgical patients

9. Interpret arterial blood gas results to identify acid-base disorders

10. Develop a comprehensive fluid management plan for complex surgical patients', 2);

-- Section 3: Body Fluid Compartments
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'content', 'Body Fluid Compartments', 
'## Total Body Water

Total body water (TBW) comprises approximately **60% of body weight** in adult males (less in females and elderly due to higher fat content).

**Distribution:**
- **Intracellular Fluid (ICF)**: 40% body weight (2/3 of TBW)
- **Extracellular Fluid (ECF)**: 20% body weight (1/3 of TBW)
  - Interstitial fluid: 15% body weight (3/4 of ECF)
  - Plasma (intravascular): 5% body weight (1/4 of ECF)

### Example: 70 kg Male
- TBW: 70 × 0.6 = 42 L
- ICF: 28 L
- ECF: 14 L
  - Interstitial: 10.5 L
  - Plasma: 3.5 L

## Fluid Movement Between Compartments

### Starling Forces (Transcapillary Exchange)
Fluid movement between plasma and interstitium is governed by:

**Net Filtration = Kf [(Pc - Pi) - σ(πc - πi)]**

Where:
- Kf = Filtration coefficient
- Pc = Capillary hydrostatic pressure (pushes fluid out)
- Pi = Interstitial hydrostatic pressure (opposes filtration)
- πc = Plasma oncotic pressure (retains fluid in vessel)
- πi = Interstitial oncotic pressure (pulls fluid out)
- σ = Reflection coefficient for proteins

### Osmotic Pressure (Transcellular Exchange)
Water moves between ICF and ECF based on osmotic gradients.

**Effective Osmolality (Tonicity) = 2[Na⁺] + Glucose/18**

Note: BUN is included in calculated osmolality but freely permeable, so not included in tonicity calculation.

## Third-Space Losses

"Third-spacing" refers to fluid sequestration into non-functional spaces:
- Bowel lumen (obstruction, ileus)
- Peritoneal cavity (ascites, peritonitis)
- Retroperitoneum (pancreatitis)
- Injured tissues (trauma, burns)

This fluid is temporarily unavailable for circulation and must be replaced.

## Factors Affecting Body Water Distribution

### Age
- Infants: Higher TBW (75-80% body weight)
- Elderly: Lower TBW (50% body weight)

### Body Composition
- Fat contains less water than muscle
- Obese patients have lower TBW percentage
- Women have lower TBW than men (higher fat percentage)

### Clinical States
- Edema: Expanded interstitial volume
- Dehydration: Contracted TBW
- Burns: Massive third-spacing and evaporative losses', 3);

-- Section 4: Intravenous Fluids
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'content', 'Intravenous Fluids', 
'## Crystalloids

Crystalloid solutions contain water and electrolytes that freely cross capillary membranes.

### Isotonic Crystalloids

**0.9% Normal Saline (NS)**
- Na⁺: 154 mEq/L, Cl⁻: 154 mEq/L
- Osmolality: 308 mOsm/L
- pH: 5.0

**Advantages:**
- Universally available
- Compatible with blood products

**Disadvantages:**
- Hyperchloremic metabolic acidosis with large volumes
- Supraphysiologic chloride content

**Uses:**
- Initial resuscitation
- Hyponatremia correction
- Metabolic alkalosis (responsive to saline)

**Lactated Ringer''s (LR) / Hartmann''s Solution**
- Na⁺: 130 mEq/L, K⁺: 4 mEq/L, Ca²⁺: 3 mEq/L, Cl⁻: 109 mEq/L, Lactate: 28 mEq/L
- Osmolality: 272 mOsm/L
- pH: 6.5

**Advantages:**
- Balanced electrolyte composition
- Lower chloride content
- Lactate metabolized to bicarbonate

**Disadvantages:**
- Contains potassium (caution in hyperkalemia/renal failure)
- Incompatible with blood products (calcium chelates citrate)
- Slightly hypotonic

**Uses:**
- Resuscitation fluid of choice
- Intraoperative replacement
- Third-space losses

**Plasmalyte / Normosol**
- Na⁺: 140 mEq/L, K⁺: 5 mEq/L, Mg²⁺: 3 mEq/L, Cl⁻: 98 mEq/L, Acetate: 27 mEq/L, Gluconate: 23 mEq/L
- Osmolality: 294 mOsm/L
- pH: 7.4

**Advantages:**
- Most physiologic composition
- Neutral pH
- Lowest chloride content

**Disadvantages:**
- More expensive
- Contains potassium

**Uses:**
- Resuscitation
- Large-volume fluid replacement

### Hypotonic Crystalloids

**5% Dextrose in Water (D5W)**
- Glucose: 50 g/L
- Osmolality: 252 mOsm/L
- After glucose metabolism: Free water

**Uses:**
- Maintenance fluid (with electrolytes added)
- Free water replacement
- Drug dilution

**0.45% Saline (Half-Normal Saline)**
- Na⁺: 77 mEq/L, Cl⁻: 77 mEq/L
- Hypotonic

**Uses:**
- Maintenance fluid
- Hypernatremia correction (provides free water plus sodium)

### Hypertonic Crystalloids

**3% Saline (Hypertonic Saline)**
- Na⁺: 513 mEq/L
- Osmolality: 1026 mOsm/L

**Uses:**
- Severe symptomatic hyponatremia
- Increased intracranial pressure (TBI)

**7.5% Saline**
- Used for rapid volume expansion (research setting)

## Colloids

Colloids contain large molecules that do not freely cross capillary membranes, providing oncotic pressure.

### Albumin
- **5% Albumin**: Iso-oncotic (osmolality ~300 mOsm/L)
- **25% Albumin**: Hyperoncotic (draws fluid into intravascular space)

**Uses:**
- Large-volume paracentesis
- Hepatorenal syndrome
- Burns (after 24 hours)

### Synthetic Colloids

**Hydroxyethyl Starch (HES)**
- Currently NOT RECOMMENDED due to AKI and mortality risk
- Withdrawn in many countries

**Gelatin Solutions**
- Not available in all countries
- Risk of anaphylaxis

## Crystalloid vs Colloid Debate

The SAFE study and subsequent trials have shown:
- **No mortality benefit** to colloids over crystalloids
- **Higher cost** of colloids
- **Harm with HES** (renal injury, coagulopathy)

**Current Practice:** Crystalloids are first-line for resuscitation. Albumin may have a role in specific situations (sepsis, burns, liver disease).', 4);

-- Section 5: Maintenance Fluids
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'content', 'Maintenance Fluid Requirements', 
'## Holliday-Segar Formula

The classic approach to calculating maintenance fluid requirements:

### Hourly Rate (4-2-1 Rule)
- **First 10 kg:** 4 mL/kg/hr
- **Second 10 kg:** 2 mL/kg/hr
- **Each kg above 20:** 1 mL/kg/hr

**Example: 70 kg adult**
- First 10 kg: 10 × 4 = 40 mL/hr
- Second 10 kg: 10 × 2 = 20 mL/hr
- Remaining 50 kg: 50 × 1 = 50 mL/hr
- **Total: 110 mL/hr ≈ 2640 mL/day**

### Daily Requirements
- **First 10 kg:** 100 mL/kg/day
- **Second 10 kg:** 50 mL/kg/day
- **Each kg above 20:** 20 mL/kg/day

## Daily Electrolyte Requirements

**Sodium:** 1-2 mEq/kg/day (70-140 mEq/day for 70 kg)
**Potassium:** 0.5-1 mEq/kg/day (40-70 mEq/day for 70 kg)
**Chloride:** 1-2 mEq/kg/day

## Common Maintenance Fluid Orders

### Traditional Approach
- D5 ½ NS with 20 mEq KCl/L at maintenance rate
- Provides: Water, sodium, potassium, glucose (calories to prevent ketosis)

### Modern Approach (Isotonic Maintenance)
- There is growing evidence for isotonic fluids (NS or balanced crystalloids) for maintenance to prevent hospital-acquired hyponatremia
- Particularly important in children

## Factors Increasing Fluid Requirements

### Increased Losses
- **Fever:** Increase by 10% for each °C above 37°C
- **Burns:** Parkland formula for resuscitation
- **GI losses:** Replace volume and electrolytes
- **Drains:** Measure and replace
- **Open wounds:** Evaporative losses

### Increased Metabolism
- Thyroid storm
- Sepsis
- Burns

## Factors Decreasing Fluid Requirements

- Renal failure (oliguria/anuria)
- Heart failure
- Hepatic failure with fluid retention
- SIADH
- Elderly patients

## Intraoperative Fluid Management

### Traditional Approach
Replacement of:
1. Maintenance requirements
2. Preoperative deficit (NPO hours × maintenance rate)
3. Third-space losses (4-8 mL/kg/hr depending on procedure)
4. Blood loss (3:1 crystalloid or 1:1 blood products)

### Goal-Directed Fluid Therapy (GDFT)
Modern approach using:
- Stroke volume optimization
- Cardiac output monitoring
- Pulse pressure variation
- Dynamic predictors of fluid responsiveness

Benefits of GDFT:
- Reduced complications
- Shorter hospital stay
- Reduced GI complications', 5);

-- Section 6: Sodium Disorders
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'content', 'Sodium Disorders', 
'## Hyponatremia (Serum Na⁺ <135 mEq/L)

### Classification by Volume Status

**1. Hypovolemic Hyponatremia**
- Total body sodium ↓, Total body water ↓ (but water loss < sodium loss)
- **Renal losses:** Diuretics, salt-wasting nephropathy, adrenal insufficiency
- **Extrarenal losses:** GI losses (vomiting, diarrhea), burns, third-spacing
- **Diagnosis:** UNa <20 mEq/L (extrarenal) or >20 mEq/L (renal)
- **Treatment:** NS resuscitation

**2. Euvolemic Hyponatremia**
- Total body sodium normal, Total body water ↑
- **Causes:** SIADH, hypothyroidism, adrenal insufficiency, psychogenic polydipsia
- **Diagnosis:** Low serum osmolality, UNa >20 mEq/L, Uosm >100 mOsm/kg
- **Treatment:** Fluid restriction, treat underlying cause; if SIADH: consider demeclocycline, vaptans

**3. Hypervolemic Hyponatremia**
- Total body sodium ↑, Total body water ↑↑
- **Causes:** Heart failure, cirrhosis, nephrotic syndrome, renal failure
- **Diagnosis:** Edema, UNa <20 mEq/L (except renal failure)
- **Treatment:** Sodium and fluid restriction, diuretics, treat underlying cause

### Symptoms of Hyponatremia
- **Mild (130-135):** Often asymptomatic
- **Moderate (120-130):** Headache, nausea, lethargy
- **Severe (<120):** Confusion, seizures, coma, respiratory arrest

### Treatment Principles

**Rate of Correction:**
- **Maximum:** 8-10 mEq/L per 24 hours
- **Target:** 4-6 mEq/L in first 24 hours often sufficient
- **Risk of overcorrection:** Osmotic demyelination syndrome (ODS)

**Severe Symptomatic Hyponatremia:**
- 3% Saline 100-150 mL boluses
- Recheck sodium every 2 hours
- Target initial rise of 4-6 mEq/L

**Formula for Sodium Correction:**
Change in Na = (Infusate Na - Serum Na) / (TBW + 1)
- TBW = 0.6 × weight (men) or 0.5 × weight (women/elderly)

## Hypernatremia (Serum Na⁺ >145 mEq/L)

### Classification

**1. Hypovolemic Hypernatremia**
- Water loss > Sodium loss
- **Causes:** GI losses, burns, osmotic diuresis
- **Treatment:** Replace volume with NS, then switch to hypotonic fluids

**2. Euvolemic Hypernatremia**
- Pure water loss
- **Causes:** Diabetes insipidus (central or nephrogenic), insensible losses
- **Treatment:** Free water replacement (D5W, 0.45% saline)

**3. Hypervolemic Hypernatremia**
- Sodium gain
- **Causes:** Hypertonic saline, sodium bicarbonate, primary hyperaldosteronism
- **Treatment:** Diuretics + hypotonic fluids

### Symptoms of Hypernatremia
- Thirst (earliest)
- Confusion, lethargy
- Muscle twitching, seizures
- Coma

### Treatment Principles

**Rate of Correction:**
- **Maximum:** 10-12 mEq/L per 24 hours (0.5 mEq/L per hour)
- **Risk of overcorrection:** Cerebral edema

**Free Water Deficit Calculation:**
Free Water Deficit = TBW × [(Na - 140) / 140]

**Example: 70 kg male with Na 160 mEq/L**
- TBW = 0.6 × 70 = 42 L
- Deficit = 42 × [(160-140) / 140] = 6 L
- Replace deficit over 48-72 hours plus ongoing losses', 6);

-- Section 7: Potassium Disorders
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'content', 'Potassium Disorders', 
'## Overview

Potassium is the major intracellular cation:
- **Intracellular K⁺:** ~150 mEq/L
- **Extracellular K⁺:** 3.5-5.0 mEq/L
- **Total body K⁺:** ~50 mEq/kg (~3500 mEq for 70 kg)

Small changes in serum K⁺ can cause life-threatening cardiac arrhythmias.

## Hypokalemia (Serum K⁺ <3.5 mEq/L)

### Causes

**1. Decreased Intake** (rare as sole cause)

**2. Transcellular Shift (K⁺ moves into cells)**
- Insulin
- β-agonists (albuterol)
- Alkalosis
- Refeeding syndrome

**3. Increased Renal Losses**
- Diuretics (loop, thiazide)
- Hyperaldosteronism
- Hypomagnesemia
- Renal tubular acidosis Type I and II
- Osmotic diuresis

**4. Increased GI Losses**
- Vomiting (alkalosis → renal K⁺ wasting)
- Diarrhea (direct K⁺ loss)
- NG suction
- Laxative abuse

### Symptoms
- Muscle weakness, cramps
- Paralytic ileus
- Rhabdomyolysis (severe)
- **ECG changes:** Flattened T waves, U waves, prolonged QT, arrhythmias

### Treatment

**Mild (3.0-3.4 mEq/L):**
- Oral KCl 40-80 mEq/day in divided doses
- Dietary potassium

**Moderate (2.5-3.0 mEq/L):**
- IV KCl 10-20 mEq/hr (via central line for rates >10 mEq/hr)
- Maximum concentration: 40 mEq/L peripheral, 60-80 mEq/L central

**Severe (<2.5 mEq/L or symptomatic):**
- IV KCl with continuous cardiac monitoring
- Check and replace magnesium (hypomagnesemia perpetuates hypokalemia)
- 10 mEq K⁺ raises serum K⁺ by ~0.1 mEq/L

**Key Point:** Always correct hypomagnesemia when treating hypokalemia

## Hyperkalemia (Serum K⁺ >5.0 mEq/L)

### Causes

**1. Pseudohyperkalemia**
- Hemolyzed sample
- Prolonged tourniquet
- Marked leukocytosis or thrombocytosis

**2. Transcellular Shift (K⁺ moves out of cells)**
- Acidosis
- Cell lysis (rhabdomyolysis, tumor lysis, hemolysis)
- β-blockers
- Digitalis toxicity
- Succinylcholine

**3. Decreased Renal Excretion**
- Acute kidney injury
- Chronic kidney disease
- Hypoaldosteronism
- K⁺-sparing diuretics
- ACE inhibitors, ARBs

**4. Increased Intake** (usually with impaired excretion)
- IV potassium
- Salt substitutes
- Massive transfusion

### Symptoms
- Often asymptomatic until severe
- Muscle weakness, paralysis
- **ECG changes (in order of K⁺ increase):**
  - Peaked T waves (earliest)
  - Prolonged PR interval
  - Widened QRS
  - Loss of P waves
  - Sine wave pattern
  - VF/asystole

### Treatment of Severe Hyperkalemia (>6.5 mEq/L or ECG changes)

**1. Cardiac Membrane Stabilization (immediate):**
- Calcium gluconate 10% 10 mL IV over 2-3 minutes
- Onset: 1-3 minutes; Duration: 30-60 minutes
- Does NOT lower K⁺

**2. Shift K⁺ into Cells:**
- Regular insulin 10 units + D50 25 g IV
- Onset: 15-30 minutes; Duration: 4-6 hours
- β-agonist (albuterol nebulized 10-20 mg)
- Sodium bicarbonate (if acidotic)

**3. Remove K⁺ from Body:**
- Furosemide (if adequate renal function)
- Kayexalate (sodium polystyrene sulfonate) - controversial, slow
- Patiromer or sodium zirconium cyclosilicate (newer agents)
- **Dialysis** (definitive for severe cases or renal failure)', 7);

-- Section 8: Other Electrolyte Disorders
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'content', 'Calcium, Magnesium, and Phosphate Disorders', 
'## Calcium Disorders

### Calcium Physiology
- Total calcium: 8.5-10.5 mg/dL (2.1-2.6 mmol/L)
- **Forms:** Ionized (50%, active), albumin-bound (40%), complexed (10%)
- **Correction for albumin:** Corrected Ca = Measured Ca + 0.8 × (4 - albumin)
- **Regulation:** PTH, Vitamin D, Calcitonin

### Hypocalcemia (Ionized Ca <4.5 mg/dL or corrected total <8.5 mg/dL)

**Causes:**
- Hypoparathyroidism (post-thyroidectomy most common in surgical patients)
- Vitamin D deficiency
- Chronic kidney disease
- Acute pancreatitis (saponification)
- Massive transfusion (citrate binds calcium)
- Hypomagnesemia
- Hungry bone syndrome

**Symptoms:**
- **Neuromuscular:** Tetany, carpopedal spasm, Chvostek''s sign (facial twitching), Trousseau''s sign (carpal spasm with BP cuff)
- **Cardiovascular:** Prolonged QT interval, hypotension
- **CNS:** Seizures, altered mental status

**Treatment:**
- **Mild/Chronic:** Oral calcium + vitamin D
- **Severe/Symptomatic:** IV calcium gluconate 1-2 g over 10-20 minutes
- Calcium gluconate preferred over calcium chloride (less tissue necrosis if extravasates)
- Correct hypomagnesemia

### Hypercalcemia (Corrected total Ca >10.5 mg/dL)

**Causes (90% are hyperparathyroidism or malignancy):**
- Primary hyperparathyroidism
- Malignancy (bone metastases, PTHrP secretion)
- Granulomatous disease (sarcoidosis)
- Medications (thiazides, lithium, vitamin D toxicity)
- Immobilization

**Symptoms ("Bones, Stones, Groans, Moans"):**
- **Bones:** Pain, fractures
- **Stones:** Nephrolithiasis
- **Groans:** Abdominal pain, constipation, pancreatitis
- **Moans:** Confusion, lethargy, coma
- **ECG:** Shortened QT

**Treatment:**
- **Volume expansion:** NS at high rates (200-300 mL/hr initially)
- **Loop diuretics:** After volume repleted (furosemide promotes calciuresis)
- **Bisphosphonates:** Zoledronic acid 4 mg IV (onset 2-4 days)
- **Calcitonin:** 4 IU/kg q12h (rapid but temporary effect)
- **Dialysis:** If severe or renal failure
- **Treat underlying cause**

## Magnesium Disorders

### Hypomagnesemia (Mg <1.8 mg/dL or <1.5 mEq/L)

**Causes:**
- GI losses (diarrhea, malabsorption)
- Renal losses (diuretics, aminoglycosides, cisplatin)
- Alcoholism
- Refeeding syndrome

**Significance:**
- Causes refractory hypokalemia
- Causes refractory hypocalcemia
- Cardiac arrhythmias (including Torsades de Pointes)

**Treatment:**
- Mild: Oral magnesium
- Severe: IV MgSO₄ 1-2 g over 5-60 minutes
- Torsades de Pointes: MgSO₄ 2 g IV push

### Hypermagnesemia (Mg >2.5 mg/dL)

**Causes:**
- Renal failure (most common)
- Iatrogenic (Mg-containing antacids/laxatives)
- Eclampsia treatment (MgSO₄ overdose)

**Symptoms:**
- Loss of deep tendon reflexes (earliest)
- Muscle weakness, respiratory depression
- Hypotension, bradycardia
- Cardiac arrest

**Treatment:**
- Stop magnesium intake
- IV calcium gluconate (antagonizes Mg effects)
- Dialysis for severe cases

## Phosphate Disorders

### Hypophosphatemia (PO₄ <2.5 mg/dL)

**Causes:**
- Refeeding syndrome
- DKA treatment (insulin drives P into cells)
- Chronic alcoholism
- Hyperparathyroidism
- Vitamin D deficiency

**Symptoms:**
- Muscle weakness, respiratory failure
- Rhabdomyolysis
- Cardiac dysfunction
- Hemolysis

**Treatment:**
- Oral or IV phosphate replacement
- Monitor for hypocalcemia (phosphate binds calcium)', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'key_points', 'Key Points', 
'1. **Body Fluid Distribution**: TBW 60% body weight; ICF 40%, ECF 20% (intravascular 5%, interstitial 15%)

2. **Crystalloid Choice**: Balanced crystalloids (LR, Plasmalyte) preferred over NS to avoid hyperchloremic acidosis; NS for hyponatremia and metabolic alkalosis

3. **Maintenance Fluids**: 4-2-1 rule = 4 mL/kg/hr first 10 kg + 2 mL/kg/hr second 10 kg + 1 mL/kg/hr remaining

4. **Hyponatremia Classification**: Assess volume status first (hypovolemic, euvolemic, hypervolemic); correct slowly (max 8-10 mEq/L/day) to prevent ODS

5. **3% Saline**: Reserved for severe symptomatic hyponatremia; give as boluses with frequent monitoring

6. **Hypernatremia**: Usually water deficit; correct slowly (max 10-12 mEq/L/day) to prevent cerebral edema

7. **Severe Hyperkalemia**: Give calcium first (stabilizes membrane), then insulin/glucose + albuterol (shift K into cells), then remove K (dialysis, diuretics)

8. **ECG in Hyperkalemia**: Peaked T → prolonged PR → wide QRS → sine wave → VF/asystole

9. **Hypocalcemia Signs**: Chvostek''s (facial twitch) and Trousseau''s (carpal spasm); treat symptomatic with IV calcium gluconate

10. **Hypomagnesemia**: Causes refractory hypokalemia and hypocalcemia; must correct Mg before K and Ca will normalize', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'clinical_pearls', 'Clinical Pearls', 
'💡 **Pearl 1**: When a postoperative patient becomes hyponatremic, always consider SIADH from pain, nausea, medications, or surgery itself. Check urine osmolality and sodium.

💡 **Pearl 2**: Lactate in LR is converted to bicarbonate in the liver. It does NOT worsen lactic acidosis and is safe in shock.

💡 **Pearl 3**: After parathyroidectomy or thyroidectomy, watch closely for hypocalcemia in the first 24-48 hours. "Hungry bone syndrome" can cause severe hypocalcemia.

💡 **Pearl 4**: Calcium gluconate is preferred over calcium chloride for peripheral IV because chloride is caustic if extravasated. Use chloride only via central line.

💡 **Pearl 5**: If hypokalemia isn''t correcting despite aggressive supplementation, check magnesium. You cannot fix hypokalemia without first fixing hypomagnesemia.

💡 **Pearl 6**: "Corrected sodium" in hyperglycemia: Add 1.6-2.4 mEq/L to Na for every 100 mg/dL glucose above normal. True sodium rises as glucose falls.

💡 **Pearl 7**: In severe hyponatremia with seizures, give 100 mL 3% saline bolus immediately. You can raise sodium by 4-6 mEq/L safely to stop seizures.

💡 **Pearl 8**: Hyperkalemia ECG changes occur at different K levels in different patients. Some develop VF at 6.5, others tolerate 8.0. Treat the patient, not the number.

💡 **Pearl 9**: Refeeding syndrome causes hypophosphatemia, hypokalemia, and hypomagnesemia. Start feeds slowly in malnourished patients and supplement aggressively.

💡 **Pearl 10**: An elderly patient with hypernatremia usually means not enough water intake. Ensure they have access to water and can drink independently.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00004-0000-0000-0000-000000000004', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('art00004-0000-0000-0000-000000000004', 1, 'Holliday MA, Segar WE. The maintenance need for water in parenteral fluid therapy. Pediatrics. 1957;19(5):823-832.', NULL, '13431307', NULL),
('art00004-0000-0000-0000-000000000004', 2, 'Semler MW, et al. Balanced Crystalloids versus Saline in Critically Ill Adults (SMART Trial). N Engl J Med. 2018;378(9):829-839.', '10.1056/NEJMoa1711584', '29485925', NULL),
('art00004-0000-0000-0000-000000000004', 3, 'Self WH, et al. Balanced Crystalloids versus Saline in Noncritically Ill Adults (SALT-ED Trial). N Engl J Med. 2018;378(9):819-828.', '10.1056/NEJMoa1711586', '29485926', NULL),
('art00004-0000-0000-0000-000000000004', 4, 'Finfer S, et al. A comparison of albumin and saline for fluid resuscitation in the intensive care unit (SAFE Study). N Engl J Med. 2004;350(22):2247-2256.', '10.1056/NEJMoa040232', '15163774', NULL),
('art00004-0000-0000-0000-000000000004', 5, 'Spasovski G, et al. Clinical practice guideline on diagnosis and treatment of hyponatraemia. Eur J Endocrinol. 2014;170(3):G1-47.', '10.1530/EJE-13-1020', '24569125', NULL),
('art00004-0000-0000-0000-000000000004', 6, 'Sterns RH. Treatment of Severe Hyponatremia. Clin J Am Soc Nephrol. 2018;13(4):641-649.', '10.2215/CJN.10440917', '29295830', NULL),
('art00004-0000-0000-0000-000000000004', 7, 'Clase CM, et al. Potassium homeostasis and management of dyskalemia in kidney diseases. Nat Rev Nephrol. 2020;16(5):260-277.', '10.1038/s41581-019-0240-1', '32152499', NULL),
('art00004-0000-0000-0000-000000000004', 8, 'Kraft MD, et al. Treatment of electrolyte disorders in adult patients in the intensive care unit. Am J Health Syst Pharm. 2005;62(16):1663-1682.', '10.2146/ajhp040300', '16085929', NULL),
('art00004-0000-0000-0000-000000000004', 9, 'Miller RD, et al. Miller''s Anesthesia, 9th Edition. Elsevier, 2020.', NULL, NULL, NULL),
('art00004-0000-0000-0000-000000000004', 10, 'Myburgh JA, Mythen MG. Resuscitation fluids. N Engl J Med. 2013;369(13):1243-1251.', '10.1056/NEJMra1208627', '24066745', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 1,
'Using the 4-2-1 rule, what is the hourly maintenance fluid requirement for a 70 kg adult?',
'70 mL/hr',
'90 mL/hr',
'110 mL/hr',
'140 mL/hr',
'210 mL/hr',
'C',
'Using the 4-2-1 rule: First 10 kg at 4 mL/kg/hr = 40 mL/hr; Second 10 kg at 2 mL/kg/hr = 20 mL/hr; Remaining 50 kg at 1 mL/kg/hr = 50 mL/hr. Total = 40 + 20 + 50 = 110 mL/hr.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 2,
'Which of the following IV fluids is most appropriate for initial resuscitation in hypovolemic shock?',
'5% Dextrose in Water',
'0.45% Normal Saline',
'Lactated Ringer''s Solution',
'3% Hypertonic Saline',
'25% Albumin',
'C',
'Lactated Ringer''s (or other balanced crystalloid like Plasmalyte) is the preferred resuscitation fluid. It has a more physiologic electrolyte composition and lower chloride content than normal saline, reducing the risk of hyperchloremic metabolic acidosis. D5W and 0.45% saline are hypotonic and not appropriate for resuscitation.',
'2,3,10');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 3,
'A postoperative patient has serum sodium of 118 mEq/L with seizures. What is the most appropriate initial treatment?',
'Fluid restriction and observation',
'0.9% Normal Saline at 250 mL/hr',
'3% Hypertonic Saline 100-150 mL bolus',
'Demeclocycline 600 mg twice daily',
'Furosemide 40 mg IV',
'C',
'Severe symptomatic hyponatremia with seizures requires emergent treatment with 3% hypertonic saline. A 100-150 mL bolus can be repeated every 20 minutes until symptoms improve, targeting an initial rise of 4-6 mEq/L. The goal is to reverse neurological symptoms quickly while avoiding overcorrection (max 8-10 mEq/L in 24 hours).',
'5,6');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 4,
'What is the maximum recommended rate of sodium correction in chronic hyponatremia to avoid osmotic demyelination syndrome (ODS)?',
'4-6 mEq/L per 24 hours',
'8-10 mEq/L per 24 hours',
'15-20 mEq/L per 24 hours',
'25 mEq/L per 24 hours',
'There is no maximum limit',
'B',
'The maximum safe rate of sodium correction is 8-10 mEq/L per 24 hours for chronic hyponatremia. Faster correction risks osmotic demyelination syndrome (ODS, formerly central pontine myelinolysis). High-risk patients (malnourished, alcoholics, hypokalemic) may need even slower correction (6-8 mEq/L per day).',
'5,6');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 5,
'A patient with hyperkalemia of 7.2 mEq/L and peaked T waves on ECG is being treated. Which medication should be administered FIRST?',
'Regular insulin with dextrose',
'Sodium polystyrene sulfonate (Kayexalate)',
'Calcium gluconate',
'Furosemide',
'Albuterol nebulizer',
'C',
'Calcium gluconate should be given FIRST because it immediately stabilizes the cardiac membrane and protects against arrhythmias. It works within 1-3 minutes and lasts 30-60 minutes. It does NOT lower potassium. After stabilizing the heart, shift potassium into cells with insulin/glucose and albuterol, then remove potassium from the body.',
'7,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 6,
'Which of the following is the earliest ECG change seen in hyperkalemia?',
'Widened QRS complex',
'Loss of P waves',
'Peaked T waves',
'Sine wave pattern',
'Prolonged QT interval',
'C',
'Peaked T waves are the earliest ECG change in hyperkalemia (typically appearing at K⁺ >5.5-6.0 mEq/L). As potassium rises further, the progression is: peaked T waves → prolonged PR interval → widened QRS → loss of P waves → sine wave pattern → ventricular fibrillation/asystole.',
'7,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 7,
'A patient has persistent hypokalemia despite aggressive potassium replacement. Which electrolyte should be checked and corrected?',
'Sodium',
'Calcium',
'Magnesium',
'Phosphate',
'Chloride',
'C',
'Hypomagnesemia causes refractory hypokalemia because magnesium is required for proper function of the Na-K-ATPase pump and the ROMK channel in the kidney. Potassium replacement will not be effective until magnesium is corrected. Always check and correct magnesium when treating hypokalemia.',
'7,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 8,
'A postoperative day 1 thyroidectomy patient develops perioral numbness and a positive Chvostek''s sign. What is the most likely electrolyte abnormality?',
'Hyponatremia',
'Hyperkalemia',
'Hypocalcemia',
'Hypomagnesemia',
'Hypophosphatemia',
'C',
'Hypocalcemia is a common complication after thyroidectomy due to inadvertent parathyroid removal or injury, or temporary parathyroid stunning. Chvostek''s sign (facial twitching when facial nerve is tapped) and Trousseau''s sign (carpal spasm with BP cuff inflation) are classic signs of hypocalcemia. Treatment is IV calcium gluconate.',
'8,9');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 9,
'What is the distribution of 1 liter of 0.9% Normal Saline in a patient with normal physiology?',
'100% remains in intravascular space',
'100% goes to interstitial space',
'75% intravascular, 25% interstitial',
'25% intravascular, 75% interstitial',
'33% intravascular, 67% intracellular',
'D',
'Isotonic crystalloids like NS distribute throughout the extracellular fluid (ECF). The ECF is divided 1:3 between plasma and interstitium. Therefore, 1 L of NS results in approximately 250 mL (25%) remaining intravascular and 750 mL (75%) distributing to the interstitium. This is why large volumes of crystalloid are needed for resuscitation.',
'10');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 10,
'A 70 kg male has serum sodium of 160 mEq/L. Calculate his free water deficit.',
'2 liters',
'4 liters',
'6 liters',
'8 liters',
'10 liters',
'C',
'Free Water Deficit = TBW × [(Serum Na - 140) / 140]. TBW for a male = 0.6 × 70 kg = 42 L. Deficit = 42 × [(160-140)/140] = 42 × (20/140) = 42 × 0.143 = 6 L. This deficit should be replaced slowly over 48-72 hours plus ongoing losses.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 11,
'Which clinical finding helps distinguish hypervolemic hyponatremia from euvolemic hyponatremia?',
'Low serum osmolality',
'Urine sodium >20 mEq/L',
'Peripheral edema or ascites',
'Elevated urine osmolality',
'Decreased mental status',
'C',
'Hypervolemic hyponatremia (heart failure, cirrhosis, nephrotic syndrome) is characterized by total body salt and water excess with visible edema, ascites, or pulmonary congestion. Euvolemic hyponatremia (SIADH, hypothyroidism) has no clinical evidence of volume overload or depletion. Both may have low serum osmolality.',
'5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 12,
'The SMART trial demonstrated that compared to 0.9% Normal Saline, balanced crystalloids in ICU patients resulted in:',
'Higher mortality',
'Lower rates of major adverse kidney events',
'Higher rates of hyperkalemia',
'No difference in any outcome',
'Higher rates of metabolic alkalosis',
'B',
'The SMART trial showed that balanced crystalloids (LR or Plasmalyte) compared to 0.9% Normal Saline in critically ill adults resulted in lower rates of the composite outcome of death, new renal replacement therapy, or persistent renal dysfunction (major adverse kidney events). This supports the use of balanced crystalloids over NS.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 13,
'Which of the following is the best description of "third-spacing"?',
'Fluid loss through the urinary system',
'Fluid sequestration in non-functional body compartments',
'Normal fluid distribution between ICF and ECF',
'Excessive oral fluid intake',
'Fluid loss through the skin',
'B',
'Third-spacing refers to fluid sequestration into non-functional body compartments where it is temporarily unavailable for circulation. Examples include bowel lumen (ileus, obstruction), peritoneal cavity (ascites, peritonitis), retroperitoneum (pancreatitis), and traumatized tissues. This fluid must be replaced but will eventually remobilize.',
'9');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 14,
'A patient with severe hypercalcemia (Ca 14.5 mg/dL) requires treatment. After initial volume expansion, which medication provides the most sustained reduction in calcium levels?',
'Calcitonin',
'Furosemide',
'Bisphosphonates (Zoledronic acid)',
'Prednisone',
'Hydrochlorothiazide',
'C',
'Bisphosphonates (like zoledronic acid) inhibit osteoclast activity and provide the most sustained reduction in calcium levels in hypercalcemia, particularly from malignancy. The effect takes 2-4 days to onset but lasts weeks. Calcitonin has rapid but transient effect (hours). Volume expansion and furosemide enhance calcium excretion but are temporary measures.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 15,
'What is the major advantage of using Lactated Ringer''s solution over 0.9% Normal Saline for large-volume resuscitation?',
'Lower cost',
'Higher sodium concentration',
'Lower risk of hyperchloremic metabolic acidosis',
'Better compatibility with blood products',
'Higher osmolality',
'C',
'The major advantage of LR over NS for large-volume resuscitation is the lower chloride content (109 vs 154 mEq/L), reducing the risk of hyperchloremic metabolic acidosis. Normal saline has supraphysiologic chloride, which can cause acidosis when given in large volumes. LR is slightly hypotonic and contains potassium, so caution is needed in hyperkalemia.',
'2,3,10');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 16,
'What percentage of total body water is located in the intracellular compartment?',
'25%',
'40%',
'50%',
'67%',
'80%',
'D',
'The intracellular fluid (ICF) contains approximately two-thirds (67%) of total body water. The remaining one-third is in the extracellular fluid (ECF), which is further divided into interstitial (75% of ECF) and intravascular (25% of ECF) compartments. For a 70 kg male with 42 L TBW, ICF is approximately 28 L.',
'9');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 17,
'A patient receiving total parenteral nutrition develops acute hypophosphatemia. What syndrome should be suspected?',
'Hungry bone syndrome',
'Tumor lysis syndrome',
'Refeeding syndrome',
'Milk-alkali syndrome',
'SIADH',
'C',
'Refeeding syndrome occurs when malnourished patients are fed, causing a shift of phosphate (as well as potassium and magnesium) into cells as metabolism resumes. Hypophosphatemia is the hallmark. It can cause muscle weakness, respiratory failure, cardiac dysfunction, and arrhythmias. Prevention involves slow feeding initiation and aggressive electrolyte supplementation.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 18,
'Which form of calcium supplementation is preferred for peripheral IV administration?',
'Calcium chloride',
'Calcium gluconate',
'Calcium carbonate',
'Calcium citrate',
'Calcium lactate',
'B',
'Calcium gluconate is preferred for peripheral IV administration because it is less caustic if extravasation occurs. Calcium chloride is more potent (provides more ionized calcium per gram) but causes severe tissue necrosis if it extravasates and should only be given via central line. Calcium carbonate, citrate, and lactate are oral formulations.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 19,
'Insulin and glucose are used in the treatment of hyperkalemia because they:',
'Increase renal excretion of potassium',
'Shift potassium into cells',
'Bind potassium in the gut',
'Stabilize the cardiac membrane',
'Increase GI excretion of potassium',
'B',
'Insulin activates the Na-K-ATPase pump, driving potassium from the extracellular fluid into cells. This temporarily lowers serum potassium. Glucose is given simultaneously to prevent hypoglycemia. This is a temporizing measure; potassium eventually shifts back out, so definitive removal (dialysis, diuretics) is needed.',
'7,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00004-0000-0000-0000-000000000004', 20,
'Torsades de Pointes is a cardiac arrhythmia that can occur with severe deficiency of which electrolyte?',
'Sodium',
'Potassium',
'Chloride',
'Magnesium',
'Phosphate',
'D',
'Severe hypomagnesemia can cause Torsades de Pointes, a polymorphic ventricular tachycardia associated with prolonged QT interval. Treatment includes IV magnesium sulfate 2 g IV push. Hypomagnesemia also prolongs the QT interval and increases the risk of arrhythmias in conjunction with hypokalemia and certain medications.',
'8');
