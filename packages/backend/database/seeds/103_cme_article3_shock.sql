-- CME Article 3: Shock
-- Comprehensive CME article with 20 self-assessment questions

-- Insert the article
INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100003-0000-0000-0000-000000000003',
    'b0000003-0000-0000-0000-000000000003',
    'a0000001-0000-0000-0000-000000000001',
    'Recognition and Management of Shock States in Surgical Practice',
    'A Comprehensive Approach to Circulatory Failure',
    'Shock represents a state of circulatory failure resulting in inadequate tissue perfusion and cellular oxygen delivery. Early recognition and prompt intervention are critical for patient survival. This comprehensive CME article provides an in-depth review of the pathophysiology, classification, clinical presentation, and evidence-based management of shock states commonly encountered in surgical practice. Topics covered include hypovolemic, cardiogenic, distributive (septic, neurogenic, anaphylactic), and obstructive shock, with emphasis on practical diagnostic and therapeutic approaches.',
    'UNTH Surgery Department, Critical Care Division',
    55,
    3.0,
    'hard',
    1,
    true
);

-- Insert article sections
-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'introduction', 'Introduction', 
'Shock is defined as a life-threatening circulatory failure characterized by inadequate oxygen delivery to meet cellular metabolic demands. Despite advances in critical care, shock remains a leading cause of morbidity and mortality in surgical patients.

**The Common Pathway:**

Regardless of etiology, all forms of shock culminate in inadequate tissue perfusion leading to:
- Cellular hypoxia and switch to anaerobic metabolism
- Lactate accumulation and metabolic acidosis
- Cellular dysfunction and death
- Organ failure and systemic inflammatory response
- Death if untreated

**The Golden Hour:**

The concept of the "golden hour" in trauma emphasizes that early intervention dramatically improves outcomes. This principle applies to all shock states—the earlier shock is recognized and treated, the better the prognosis. Delayed resuscitation leads to:
- Reperfusion injury
- Systemic inflammatory response syndrome (SIRS)
- Multiple organ dysfunction syndrome (MODS)
- Irreversible shock

**Understanding Oxygen Delivery:**

Oxygen delivery (DO₂) is the product of cardiac output and arterial oxygen content:

DO₂ = CO × CaO₂ = CO × (1.34 × Hgb × SaO₂) + (0.003 × PaO₂)

Where:
- CO = Cardiac Output (HR × Stroke Volume)
- CaO₂ = Arterial Oxygen Content
- Hgb = Hemoglobin concentration
- SaO₂ = Arterial oxygen saturation

Shock results when DO₂ is insufficient to meet tissue oxygen consumption (VO₂).', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'learning_objectives', 'Learning Objectives', 
'Upon completion of this article, participants should be able to:

1. Define shock and explain its pathophysiological basis in terms of oxygen delivery and cellular metabolism

2. Classify shock according to etiology and hemodynamic parameters

3. Recognize clinical signs and symptoms of different shock states

4. Describe the stages of hemorrhagic shock and estimated blood loss for each class

5. Differentiate between hypovolemic, cardiogenic, distributive, and obstructive shock based on clinical and hemodynamic findings

6. Apply the Surviving Sepsis Campaign guidelines for sepsis and septic shock management

7. Outline the management priorities for different types of shock

8. Select appropriate monitoring modalities and resuscitation endpoints

9. Recognize the indications for vasopressor and inotropic therapy

10. Discuss complications of shock and resuscitation including SIRS and MODS', 2);

-- Section 3: Classification of Shock
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'content', 'Classification of Shock', 
'## Hemodynamic Classification

Shock can be classified based on the primary hemodynamic derangement:

### 1. Hypovolemic Shock
**Mechanism:** Decreased preload due to intravascular volume loss

**Types:**
- **Hemorrhagic**: Blood loss (trauma, GI bleeding, ruptured aneurysm)
- **Non-hemorrhagic**: Fluid loss (vomiting, diarrhea, burns, third-spacing)

**Hemodynamic Profile:**
- ↓ CVP/PCWP (low filling pressures)
- ↓ Cardiac Output
- ↑ SVR (compensatory vasoconstriction)

### 2. Cardiogenic Shock
**Mechanism:** Pump failure leading to decreased cardiac output

**Causes:**
- Acute myocardial infarction
- Acute valvular dysfunction
- Arrhythmias
- Myocarditis
- End-stage cardiomyopathy

**Hemodynamic Profile:**
- ↑ CVP/PCWP (high filling pressures)
- ↓ Cardiac Output
- ↑ SVR

### 3. Distributive Shock
**Mechanism:** Inappropriate vasodilation leading to relative hypovolemia

**Types:**

**a. Septic Shock:**
- Infection-induced vasodilation
- Myocardial depression
- Capillary leak
- Most common cause of distributive shock

**b. Anaphylactic Shock:**
- IgE-mediated massive histamine release
- Vasodilation and bronchospasm
- Capillary leak and edema

**c. Neurogenic Shock:**
- Loss of sympathetic tone (spinal cord injury)
- Vasodilation and bradycardia
- Warm, pink skin despite hypotension

**Hemodynamic Profile:**
- ↓ or normal CVP/PCWP
- Normal or ↑ Cardiac Output (early sepsis)
- ↓ SVR

### 4. Obstructive Shock
**Mechanism:** Mechanical obstruction to cardiac filling or output

**Causes:**
- Tension pneumothorax
- Cardiac tamponade
- Massive pulmonary embolism
- Constrictive pericarditis

**Hemodynamic Profile:**
- ↑ CVP (impaired filling)
- ↓ Cardiac Output
- ↑ SVR

## Comparison Table

| Parameter | Hypovolemic | Cardiogenic | Distributive (Septic) | Obstructive |
|-----------|-------------|-------------|----------------------|-------------|
| CVP | ↓ | ↑ | ↓ or N | ↑ |
| CO | ↓ | ↓ | ↑ or N (early) | ↓ |
| SVR | ↑ | ↑ | ↓ | ↑ |
| SvO₂ | ↓ | ↓ | ↑ (early) | ↓ |', 3);

-- Section 4: Hemorrhagic Shock
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'content', 'Hemorrhagic Shock', 
'## ATLS Classification of Hemorrhagic Shock

The American College of Surgeons ATLS course classifies hemorrhagic shock into four classes based on blood loss and physiological parameters:

### Class I Hemorrhage
**Blood Loss:** Up to 750 mL (<15% blood volume)

**Clinical Signs:**
- Heart rate: Normal (<100)
- Blood pressure: Normal
- Pulse pressure: Normal
- Respiratory rate: 14-20
- Urine output: >30 mL/hr
- Mental status: Slightly anxious
- Fluid replacement: Crystalloid

**Clinical Correlation:** Equivalent to blood donation

### Class II Hemorrhage
**Blood Loss:** 750-1500 mL (15-30% blood volume)

**Clinical Signs:**
- Heart rate: 100-120
- Blood pressure: Normal (↓ pulse pressure)
- Respiratory rate: 20-30
- Urine output: 20-30 mL/hr
- Mental status: Mildly anxious
- Fluid replacement: Crystalloid

**Clinical Correlation:** Early compensated shock; tachycardia is the earliest reliable sign

### Class III Hemorrhage
**Blood Loss:** 1500-2000 mL (30-40% blood volume)

**Clinical Signs:**
- Heart rate: 120-140
- Blood pressure: Decreased
- Pulse pressure: Decreased
- Respiratory rate: 30-40
- Urine output: 5-15 mL/hr
- Mental status: Anxious, confused
- Fluid replacement: Crystalloid + Blood

**Clinical Correlation:** Classic signs of inadequate perfusion; requires blood transfusion

### Class IV Hemorrhage
**Blood Loss:** >2000 mL (>40% blood volume)

**Clinical Signs:**
- Heart rate: >140 (or paradoxical bradycardia)
- Blood pressure: Markedly decreased
- Pulse pressure: Negligible
- Respiratory rate: >35
- Urine output: Negligible
- Mental status: Confused, lethargic
- Fluid replacement: Crystalloid + Blood + Massive Transfusion Protocol

**Clinical Correlation:** Immediately life-threatening; preterminal without rapid intervention

## Compensatory Mechanisms

The body activates multiple compensatory mechanisms in response to hemorrhage:

### 1. Sympathetic Activation
- Catecholamine release (epinephrine, norepinephrine)
- Vasoconstriction (maintains blood pressure)
- Tachycardia (maintains cardiac output)
- Diaphoresis, cool extremities

### 2. Hormonal Response
- ADH release (water retention)
- RAAS activation (sodium and water retention, vasoconstriction)
- Cortisol release (stress response)

### 3. Transcapillary Refill
- Fluid shifts from interstitium to intravascular space
- Contributes to hemodilution over hours

### 4. Renal Conservation
- Decreased GFR
- Sodium and water retention
- Oliguria

## Damage Control Resuscitation

Modern trauma resuscitation emphasizes:

**1. Permissive Hypotension:**
- Target SBP 80-90 mmHg until surgical control
- Avoids "popping the clot"
- Not applicable to TBI patients

**2. Hemostatic Resuscitation:**
- Early balanced blood product transfusion
- 1:1:1 ratio (PRBC:FFP:Platelets)
- Minimize crystalloid

**3. Tranexamic Acid:**
- 1g IV within 3 hours of injury
- Reduces mortality per CRASH-2

**4. Damage Control Surgery:**
- Abbreviated laparotomy
- Control hemorrhage and contamination
- Temporary closure
- ICU resuscitation before definitive repair', 4);

-- Section 5: Septic Shock
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'content', 'Septic Shock', 
'## Definitions (Sepsis-3)

### Sepsis
Life-threatening organ dysfunction caused by a dysregulated host response to infection.

**Operationally defined as:**
- Suspected or documented infection PLUS
- Acute increase in SOFA score ≥2 points

### Septic Shock
A subset of sepsis with:
- Persistent hypotension requiring vasopressors to maintain MAP ≥65 mmHg
- Lactate >2 mmol/L (18 mg/dL)
- Despite adequate fluid resuscitation

**Associated with mortality >40%**

### qSOFA (Quick SOFA)
Bedside screening tool (≥2 indicates high risk):
- Respiratory rate ≥22
- Altered mental status
- Systolic BP ≤100 mmHg

## Pathophysiology of Septic Shock

### Phase 1: Hyperinflammatory Response
- Pathogen recognition (PAMPs bind to TLRs)
- Massive cytokine release ("cytokine storm")
- TNF-α, IL-1, IL-6 mediate systemic response

### Phase 2: Cardiovascular Derangement
- **Vasodilation:** iNOS produces excess nitric oxide
- **Myocardial depression:** Cytokine-mediated contractile dysfunction
- **Capillary leak:** Endothelial injury increases permeability
- **Microcirculatory dysfunction:** Heterogeneous perfusion

### Phase 3: Immunosuppression (Later)
- "Immune paralysis" with increased susceptibility to secondary infections
- Lymphocyte apoptosis
- Monocyte deactivation

## Surviving Sepsis Campaign Guidelines (2021)

### Hour-1 Bundle
1. **Measure lactate** (remeasure if >2 mmol/L)
2. **Obtain blood cultures** before antibiotics (if no significant delay)
3. **Administer broad-spectrum antibiotics**
4. **Begin fluid resuscitation** with 30 mL/kg crystalloid for hypotension or lactate ≥4 mmol/L
5. **Apply vasopressors** for MAP <65 mmHg during or after fluid resuscitation

### Fluid Resuscitation
- Initial: 30 mL/kg crystalloid within 3 hours
- Use dynamic assessment to guide further fluids:
  - Passive leg raise
  - Stroke volume variation
  - Pulse pressure variation
- Balanced crystalloids (Lactated Ringer''s) preferred over normal saline

### Vasopressor Selection
**First-line: Norepinephrine**
- Target MAP ≥65 mmHg
- Alpha and beta-adrenergic effects

**Second-line: Vasopressin**
- Add if norepinephrine dose escalating
- Non-adrenergic vasoconstriction
- May reduce norepinephrine requirements

**Third-line: Epinephrine**
- Consider if inadequate response
- Strong inotropic effect

**Inotrope: Dobutamine**
- Add for persistent hypoperfusion despite fluids and vasopressors
- Evidence of myocardial dysfunction

### Source Control
- Identify and control infection source within 6-12 hours
- Drain abscesses
- Debride necrotic tissue
- Remove infected devices

### Corticosteroids
- Consider hydrocortisone 200 mg/day for refractory shock
- Controversial but may hasten shock reversal
- Recent ADRENAL and APROCCHSS trials inform practice', 5);

-- Section 6: Other Shock States
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'content', 'Cardiogenic, Obstructive, and Other Shock States', 
'## Cardiogenic Shock

### Definition
Shock due to primary cardiac pump failure with adequate intravascular volume.

### Etiology
- **Acute MI** (most common, especially anterior wall)
- Mechanical complications (VSD, papillary muscle rupture, free wall rupture)
- Acute valvular dysfunction
- Severe arrhythmias
- Myocarditis
- Takotsubo cardiomyopathy

### Clinical Features
- Hypotension
- Signs of congestion (JVD, pulmonary edema, peripheral edema)
- Cool, mottled extremities
- Oliguria
- Altered mental status

### Hemodynamic Criteria
- SBP <90 mmHg for >30 minutes (or requiring support)
- Cardiac Index <2.2 L/min/m²
- PCWP >15-18 mmHg

### Management
1. **Identify and treat underlying cause** (PCI for MI)
2. **Avoid excessive fluids** (already volume overloaded)
3. **Inotropic support:** Dobutamine (increases contractility)
4. **Vasopressor:** Norepinephrine (if profoundly hypotensive)
5. **Mechanical support:** IABP, Impella, ECMO
6. **Diuretics** once perfusion improved (if congested)

## Obstructive Shock

### Tension Pneumothorax
**Mechanism:** Air accumulates in pleural space, causing mediastinal shift and impaired venous return.

**Clinical Features:**
- Hypotension
- JVD
- Tracheal deviation (away from affected side)
- Absent breath sounds on affected side
- Hyper-resonance to percussion

**Management:**
- **Immediate needle decompression** (2nd intercostal space, midclavicular line)
- Followed by tube thoracostomy
- Do NOT wait for imaging in unstable patients

### Cardiac Tamponade
**Mechanism:** Fluid accumulates in pericardium, compressing the heart and impairing filling.

**Clinical Features (Beck''s Triad):**
- Hypotension
- JVD
- Muffled heart sounds

**Additional Signs:**
- Pulsus paradoxus (>10 mmHg drop in SBP with inspiration)
- Electrical alternans on ECG
- Kussmaul''s sign (JVP increases with inspiration)

**Management:**
- **Pericardiocentesis** (emergent)
- **Surgical pericardial window** (definitive)
- IV fluids to increase preload (temporary measure)

### Massive Pulmonary Embolism
**Mechanism:** Obstruction of pulmonary arteries increases RV afterload, leading to RV failure and decreased LV filling.

**Clinical Features:**
- Sudden dyspnea and hypoxia
- Hypotension
- JVD (RV failure)
- Clear lungs
- ECG: S1Q3T3, right heart strain, tachycardia

**Management:**
- **Thrombolysis** for massive PE with shock (tPA 100mg over 2 hours)
- **Surgical embolectomy** if thrombolysis contraindicated
- **Catheter-directed therapy**
- Anticoagulation with UFH
- Supportive care (fluids cautiously, vasopressors)

## Neurogenic Shock

### Mechanism
Loss of sympathetic tone from spinal cord injury (usually above T6).

### Clinical Features
- Hypotension
- Bradycardia (loss of sympathetic input to heart)
- Warm, flushed skin (vasodilation, unlike other shock states)
- Poikilothermia (cannot regulate temperature)

### Differentiate from Spinal Shock
- **Neurogenic shock:** Cardiovascular manifestation (hypotension, bradycardia)
- **Spinal shock:** Neurological manifestation (flaccidity, areflexia below lesion)

### Management
- IV fluids first
- Vasopressors (norepinephrine, phenylephrine) if hypotensive despite fluids
- Atropine for symptomatic bradycardia
- Maintain spinal precautions

## Anaphylactic Shock

### Mechanism
IgE-mediated systemic release of histamine and other mediators causing vasodilation, bronchospasm, and capillary leak.

### Clinical Features
- Rapid onset after allergen exposure
- Urticaria, angioedema
- Bronchospasm, stridor
- Hypotension
- GI symptoms (nausea, vomiting, diarrhea)

### Management
1. **EPINEPHRINE IM** (0.3-0.5 mg, anterolateral thigh) - FIRST-LINE
2. Remove allergen if possible
3. IV access and fluids
4. Supplemental oxygen / airway management
5. Antihistamines (H1 and H2 blockers)
6. Corticosteroids (prevent biphasic reaction)
7. Nebulized bronchodilators if bronchospasm', 6);

-- Section 7: Monitoring and Endpoints
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'content', 'Monitoring and Resuscitation Endpoints', 
'## Clinical Monitoring

### Vital Signs
- Heart rate and rhythm (continuous)
- Blood pressure (invasive arterial line in severe shock)
- Respiratory rate and oxygen saturation
- Temperature

### Urinary Output
- Target: 0.5 mL/kg/hr
- Reflects renal perfusion
- Requires Foley catheter

### Mental Status
- Reflects cerebral perfusion
- Sensitive but non-specific indicator

### Skin Examination
- Capillary refill (<2 seconds normal)
- Mottling
- Temperature (cool extremities = vasoconstriction)

## Invasive Monitoring

### Central Venous Pressure (CVP)
- Measured via central venous catheter
- Reflects right atrial pressure
- Normal: 2-6 mmHg
- **Limitations:** Static measure, poor predictor of fluid responsiveness

### Central Venous Oxygen Saturation (ScvO₂)
- Normal: 65-75%
- Low ScvO₂ (<70%) suggests inadequate oxygen delivery
- High ScvO₂ in sepsis may indicate microcirculatory dysfunction

### Pulmonary Artery Catheter
- Measures PCWP (LV filling pressure), cardiac output
- Rarely used due to lack of mortality benefit
- Consider in complex cases with unclear hemodynamics

### Arterial Line
- Continuous BP monitoring
- Facilitates blood gas sampling
- Pulse pressure variation predicts fluid responsiveness

## Laboratory Monitoring

### Lactate
- **Most important biomarker in shock**
- Reflects tissue hypoperfusion and anaerobic metabolism
- Normal: <2 mmol/L
- Elevated lactate associated with mortality
- Serial measurements guide resuscitation
- Target: Lactate clearance (decrease by ≥10% every 2 hours)

### Arterial Blood Gas
- pH, PaCO₂, PaO₂
- Base deficit (correlates with blood loss in trauma)
- Metabolic acidosis indicates tissue hypoperfusion

### Complete Blood Count
- Hemoglobin (bleeding, hemodilution)
- Platelet count (consumption, DIC)
- WBC (infection, stress response)

### Coagulation Studies
- PT/INR, PTT, fibrinogen
- DIC screening in sepsis

### Chemistry Panel
- Renal function (Cr, BUN)
- Electrolytes
- Liver function (shock liver)

## Dynamic Assessment of Fluid Responsiveness

Static measures (CVP, PCWP) are poor predictors of response to fluids. Dynamic measures are superior:

### Passive Leg Raise Test
- Raise legs to 45° from supine position
- Transient increase in preload
- CO increase >10% predicts fluid responsiveness
- Requires real-time CO monitoring

### Pulse Pressure Variation (PPV)
- Variation in pulse pressure with respiration
- PPV >13% suggests fluid responsiveness
- Requires mechanical ventilation, sinus rhythm

### Stroke Volume Variation (SVV)
- Similar principle to PPV
- SVV >10-15% suggests fluid responsiveness
- Various monitors available (FloTrac, LiDCO)

### Point-of-Care Ultrasound
- IVC diameter and respiratory variation
- IVC collapsibility >50% suggests fluid responsiveness
- Echocardiography for cardiac function

## Resuscitation Endpoints

### Target Parameters
- MAP ≥65 mmHg
- Urine output ≥0.5 mL/kg/hr
- ScvO₂ ≥70%
- Lactate normalization (or clearance >10% every 2 hours)
- Base deficit improvement
- Mental status improvement', 7);

-- Section 8: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'key_points', 'Key Points', 
'1. **Shock Definition**: Circulatory failure with inadequate tissue oxygen delivery to meet metabolic demands

2. **Four Types**: Hypovolemic (↓preload), Cardiogenic (pump failure), Distributive (↓SVR), Obstructive (mechanical)

3. **Hemorrhagic Shock Classes**: Class I (<15%), Class II (15-30%), Class III (30-40%), Class IV (>40% blood volume loss)

4. **Tachycardia**: Earliest reliable sign of hemorrhage (Class II)

5. **Sepsis-3**: Sepsis = infection + SOFA ≥2; Septic shock = sepsis + vasopressors + lactate >2

6. **Hour-1 Bundle**: Lactate, cultures, antibiotics, fluids (30 mL/kg), vasopressors if MAP <65

7. **First-Line Vasopressor**: Norepinephrine for septic shock and most other shock states

8. **Cardiogenic Shock**: High filling pressures (CVP/PCWP ↑), low CO, high SVR; treat cause and use inotropes

9. **Obstructive Emergencies**: Tension pneumothorax (needle decompression), Tamponade (pericardiocentesis), PE (thrombolysis)

10. **Lactate**: Key biomarker; target normalization or clearance of 10% every 2 hours as resuscitation endpoint', 8);

-- Section 9: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'clinical_pearls', 'Clinical Pearls', 
'💡 **Pearl 1**: Hypotension is a late sign of shock - compensatory mechanisms maintain BP until they fail. Tachycardia, altered mental status, and oliguria may appear first.

💡 **Pearl 2**: In neurogenic shock, patients are hypotensive but bradycardic with warm extremities - the opposite of other shock states. This is due to loss of sympathetic tone.

💡 **Pearl 3**: "Fluid responsiveness" is not the same as "needing fluids." A patient may be fluid responsive but already adequately resuscitated.

💡 **Pearl 4**: Beck''s triad (hypotension, JVD, muffled heart sounds) is present in only 10-40% of tamponade cases. Pulsus paradoxus is a more sensitive sign.

💡 **Pearl 5**: In trauma, don''t forget the "lethal triad" of hypothermia, acidosis, and coagulopathy - each worsens the others and must be addressed together.

💡 **Pearl 6**: Lactate can be elevated from non-hypoperfusion causes (epinephrine infusion, albuterol, seizures, liver failure). Interpret in clinical context.

💡 **Pearl 7**: Crystalloid is the initial resuscitation fluid for most shock states except cardiogenic shock, where excessive fluids worsen pulmonary edema.

💡 **Pearl 8**: In septic shock, the heart may be hyperdynamic (high CO) initially, but myocardial depression often develops. Serial echo can detect this.

💡 **Pearl 9**: Epinephrine IM is first-line for anaphylaxis, not antihistamines or steroids. Don''t delay epinephrine waiting for other medications.

💡 **Pearl 10**: Never clamp chest tube drainage to transport a patient - risk of tension pneumothorax. Always keep drainage system below chest level.', 9);

-- Section 10: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100003-0000-0000-0000-000000000003', 'references', 'References', 'See reference list below.', 10);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100003-0000-0000-0000-000000000003', 1, 'American College of Surgeons Committee on Trauma. Advanced Trauma Life Support (ATLS) Student Course Manual, 10th Edition. 2018.', NULL, NULL, NULL),
('a1100003-0000-0000-0000-000000000003', 2, 'Singer M, et al. The Third International Consensus Definitions for Sepsis and Septic Shock (Sepsis-3). JAMA. 2016;315(8):801-810.', '10.1001/jama.2016.0287', '26903338', NULL),
('a1100003-0000-0000-0000-000000000003', 3, 'Evans L, et al. Surviving Sepsis Campaign: International Guidelines for Management of Sepsis and Septic Shock 2021. Crit Care Med. 2021;49(11):e1063-e1143.', '10.1097/CCM.0000000000005337', '34605781', NULL),
('a1100003-0000-0000-0000-000000000003', 4, 'van Diepen S, et al. Contemporary Management of Cardiogenic Shock: A Scientific Statement From the American Heart Association. Circulation. 2017;136(16):e52-e68.', '10.1161/CIR.0000000000000525', '28874357', NULL),
('a1100003-0000-0000-0000-000000000003', 5, 'Cecconi M, et al. Consensus on circulatory shock and hemodynamic monitoring. Task Force of the European Society of Intensive Care Medicine. Intensive Care Med. 2014;40(12):1795-1815.', '10.1007/s00134-014-3525-z', '25392034', NULL),
('a1100003-0000-0000-0000-000000000003', 6, 'CRASH-2 Trial Collaborators. Effects of tranexamic acid on death, vascular occlusive events, and blood transfusion in trauma patients with significant haemorrhage. Lancet. 2010;376(9734):23-32.', '10.1016/S0140-6736(10)60835-5', '20554319', NULL),
('a1100003-0000-0000-0000-000000000003', 7, 'Holcomb JB, et al. Transfusion of Plasma, Platelets, and Red Blood Cells in a 1:1:1 vs a 1:1:2 Ratio and Mortality in Patients With Severe Trauma: The PROPPR Randomized Clinical Trial. JAMA. 2015;313(5):471-482.', '10.1001/jama.2015.12', '25647203', NULL),
('a1100003-0000-0000-0000-000000000003', 8, 'Murthy S, Bhatt DL. Cardiogenic Shock. N Engl J Med. 2022;386(22):2137-2148.', '10.1056/NEJMcp2211110', '35649022', NULL),
('a1100003-0000-0000-0000-000000000003', 9, 'Konstantinides SV, et al. 2019 ESC Guidelines for the diagnosis and management of acute pulmonary embolism. Eur Heart J. 2020;41(4):543-603.', '10.1093/eurheartj/ehz405', '31504429', NULL),
('a1100003-0000-0000-0000-000000000003', 10, 'Simons FE, et al. World Allergy Organization Guidelines for the Assessment and Management of Anaphylaxis. World Allergy Organ J. 2011;4(2):13-37.', '10.1097/WOX.0b013e318211496c', '23268454', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 1,
'A 30-year-old man presents after a motor vehicle accident with HR 125, BP 95/70, RR 28, and altered mental status. He is estimated to have lost approximately 1800 mL of blood. According to ATLS classification, this represents which class of hemorrhagic shock?',
'Class I',
'Class II',
'Class III',
'Class IV',
'Unclassifiable without more information',
'C',
'Class III hemorrhagic shock involves 30-40% blood volume loss (approximately 1500-2000 mL in a 70 kg adult with 5L blood volume). Clinical features include tachycardia (120-140), hypotension, tachypnea (30-40), decreased urine output (5-15 mL/hr), and anxiety/confusion. This patient shows signs of inadequate perfusion and requires crystalloid and blood transfusion.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 2,
'Which hemodynamic profile is characteristic of early septic shock?',
'Decreased CVP, decreased CO, increased SVR',
'Increased CVP, decreased CO, increased SVR',
'Decreased CVP, normal/increased CO, decreased SVR',
'Increased CVP, increased CO, decreased SVR',
'Normal CVP, decreased CO, normal SVR',
'C',
'Early septic shock (distributive shock) is characterized by vasodilation leading to decreased SVR, often with normal or increased cardiac output as the heart compensates. CVP may be low due to relative hypovolemia from vasodilation and capillary leak. This is in contrast to cardiogenic shock where CO is decreased and CVP is elevated.', '{2,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 3,
'A 60-year-old woman with suspected pneumonia has BP 82/50, HR 110, lactate 4.5 mmol/L, and requires norepinephrine to maintain MAP ≥65 despite receiving 2L crystalloid. According to Sepsis-3, she has:',
'SIRS only',
'Sepsis without organ dysfunction',
'Sepsis with organ dysfunction',
'Septic shock',
'Cannot be classified without SOFA score',
'D',
'According to Sepsis-3, septic shock is defined as sepsis requiring vasopressors to maintain MAP ≥65 mmHg AND having a lactate >2 mmol/L despite adequate fluid resuscitation. This patient meets both criteria: she requires norepinephrine (vasopressor) and has lactate of 4.5 mmol/L (>2). Septic shock carries mortality >40%.', '{2,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 4,
'According to the Surviving Sepsis Campaign 2021 guidelines, what is the first-line vasopressor for septic shock?',
'Dopamine',
'Epinephrine',
'Norepinephrine',
'Vasopressin',
'Phenylephrine',
'C',
'Norepinephrine is the first-line vasopressor for septic shock according to the Surviving Sepsis Campaign 2021 guidelines. It has both α-adrenergic (vasoconstriction) and β-adrenergic (inotropic) effects. Vasopressin is recommended as a second agent if norepinephrine doses are escalating. Dopamine is no longer preferred due to higher arrhythmia risk.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 5,
'A patient with a spinal cord injury at C6 presents with BP 75/50 and HR 52. His skin is warm and dry. This clinical presentation is most consistent with:',
'Hypovolemic shock',
'Cardiogenic shock',
'Septic shock',
'Neurogenic shock',
'Anaphylactic shock',
'D',
'Neurogenic shock from spinal cord injury (above T6) results in loss of sympathetic tone, causing vasodilation and bradycardia. The hallmark is hypotension with bradycardia (not tachycardia) and warm, dry skin (due to vasodilation). This is in contrast to hypovolemic and cardiogenic shock, which cause cool, clammy skin from compensatory vasoconstriction.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 6,
'The Hour-1 Bundle for sepsis includes all of the following EXCEPT:',
'Measuring serum lactate',
'Obtaining blood cultures',
'Administering broad-spectrum antibiotics',
'Inserting a central venous catheter',
'Starting vasopressors if hypotensive after fluids',
'D',
'The Surviving Sepsis Campaign Hour-1 Bundle includes: (1) Measure lactate, (2) Obtain blood cultures before antibiotics, (3) Administer broad-spectrum antibiotics, (4) Begin rapid fluid resuscitation with 30 mL/kg crystalloid for hypotension or lactate ≥4, and (5) Apply vasopressors for MAP <65. Central venous catheter insertion is not part of the Hour-1 Bundle, though it may be needed for vasopressor administration.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 7,
'Beck''s triad, consisting of hypotension, JVD, and muffled heart sounds, is classically associated with:',
'Tension pneumothorax',
'Cardiac tamponade',
'Massive pulmonary embolism',
'Cardiogenic shock from MI',
'Aortic dissection',
'B',
'Beck''s triad (hypotension, jugular venous distension, and muffled heart sounds) is the classic presentation of cardiac tamponade, though it is present in only 10-40% of cases. Pericardial fluid compresses the heart, impairing diastolic filling and reducing cardiac output. Pulsus paradoxus (>10 mmHg drop in SBP with inspiration) is another important sign.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 8,
'A trauma patient has unstable vital signs with absent breath sounds on the left, tracheal deviation to the right, and JVD. What is the immediate management?',
'Obtain chest X-ray to confirm diagnosis',
'Needle decompression of left chest',
'Endotracheal intubation',
'Start massive transfusion protocol',
'Perform pericardiocentesis',
'B',
'This patient has tension pneumothorax (absent breath sounds, tracheal deviation away from affected side, JVD, hemodynamic instability). Immediate needle decompression of the affected (left) side at the 2nd intercostal space, midclavicular line is required. Do NOT wait for imaging in an unstable patient. This should be followed by tube thoracostomy.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 9,
'Which of the following is the earliest reliable clinical sign of hemorrhage (Class II hemorrhagic shock)?',
'Hypotension',
'Tachycardia',
'Decreased urine output',
'Altered mental status',
'Tachypnea',
'B',
'Tachycardia is the earliest reliable sign of hemorrhage. In Class II hemorrhage (15-30% blood volume loss), heart rate increases to 100-120 bpm while blood pressure is typically maintained through compensatory mechanisms. Hypotension is a late sign, occurring in Class III-IV hemorrhage when compensatory mechanisms fail.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 10,
'What is the recommended initial fluid resuscitation volume in sepsis according to the Surviving Sepsis Campaign?',
'10 mL/kg crystalloid',
'20 mL/kg crystalloid',
'30 mL/kg crystalloid',
'40 mL/kg crystalloid',
'50 mL/kg crystalloid',
'C',
'The Surviving Sepsis Campaign recommends an initial fluid bolus of 30 mL/kg crystalloid for patients with sepsis-induced hypotension or lactate ≥4 mmol/L, to be administered within 3 hours. Balanced crystalloids (such as Lactated Ringer''s) are preferred over normal saline. Further fluid administration should be guided by dynamic assessment of fluid responsiveness.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 11,
'In cardiogenic shock from acute MI, which hemodynamic finding differentiates it from hypovolemic shock?',
'Decreased cardiac output',
'Increased systemic vascular resistance',
'Elevated pulmonary capillary wedge pressure',
'Decreased mixed venous oxygen saturation',
'Metabolic acidosis',
'C',
'Both cardiogenic and hypovolemic shock have decreased CO, increased SVR, decreased SvO₂, and may develop metabolic acidosis. The key differentiating feature is filling pressure: cardiogenic shock has ELEVATED PCWP (and CVP) due to pump failure with backup of blood, while hypovolemic shock has LOW filling pressures due to volume depletion.', '{4,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 12,
'What is the target mean arterial pressure (MAP) for resuscitation in septic shock according to guidelines?',
'≥55 mmHg',
'≥60 mmHg',
'≥65 mmHg',
'≥70 mmHg',
'≥80 mmHg',
'C',
'The Surviving Sepsis Campaign recommends targeting MAP ≥65 mmHg in septic shock resuscitation. This threshold is associated with adequate organ perfusion in most patients. Higher targets (e.g., 80-85 mmHg) have not shown benefit and may increase arrhythmia risk. Lower MAPs may be acceptable in specific populations (e.g., chronic hypotension).', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 13,
'The "lethal triad" in trauma refers to which combination?',
'Hypotension, tachycardia, altered mental status',
'Hypothermia, acidosis, coagulopathy',
'Respiratory failure, renal failure, liver failure',
'Hemorrhage, infection, organ failure',
'Hypoxia, hypercarbia, hypotension',
'B',
'The "lethal triad" in trauma refers to hypothermia, acidosis, and coagulopathy. Each element worsens the others in a vicious cycle: hypothermia impairs coagulation, acidosis inhibits clotting factors, and ongoing bleeding worsens hypothermia and acidosis. Damage control surgery and resuscitation aims to break this cycle.', '{1,6}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 14,
'What is the first-line medication for anaphylactic shock?',
'Diphenhydramine (antihistamine)',
'Methylprednisolone (corticosteroid)',
'Epinephrine IM',
'Albuterol (nebulized)',
'Normal saline IV bolus',
'C',
'Epinephrine IM is the FIRST-LINE treatment for anaphylaxis and anaphylactic shock. It should be given immediately at a dose of 0.3-0.5 mg in the anterolateral thigh. Epinephrine reverses vasodilation, bronchoconstriction, and reduces mediator release. Antihistamines and steroids are adjunctive but should not delay epinephrine administration.', '{10}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 15,
'Which laboratory value is the most important biomarker for assessing tissue perfusion and guiding resuscitation in shock?',
'Hemoglobin',
'White blood cell count',
'Serum lactate',
'Serum creatinine',
'Arterial pH',
'C',
'Serum lactate is the most important biomarker in shock. It reflects tissue hypoperfusion and anaerobic metabolism. Elevated lactate correlates with mortality. Serial lactate measurements guide resuscitation with a target of normalization or clearance of ≥10% every 2 hours. Unlike other markers, lactate directly reflects cellular-level oxygen debt.', '{3,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 16,
'A patient with massive pulmonary embolism presents with shock (SBP 70 mmHg). What is the recommended initial treatment?',
'Anticoagulation with enoxaparin only',
'Systemic thrombolysis with tPA',
'Vena cava filter placement',
'Observation with supportive care',
'Immediate surgical embolectomy',
'B',
'For massive (high-risk) pulmonary embolism with hemodynamic instability/shock, systemic thrombolysis is the recommended first-line treatment. Standard dosing is tPA 100 mg over 2 hours. Thrombolysis rapidly lyses the clot and reduces RV afterload. Surgical embolectomy is reserved for when thrombolysis is contraindicated or has failed.', '{9}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 17,
'In damage control resuscitation, what is "permissive hypotension" and when is it appropriate?',
'Maintaining SBP 80-90 mmHg until surgical hemorrhage control, except in TBI',
'Allowing any blood pressure as long as the patient is conscious',
'Targeting normal blood pressure with aggressive fluid resuscitation',
'Using vasopressors to maintain SBP >120 mmHg',
'Transfusing blood only when SBP falls below 60 mmHg',
'A',
'Permissive hypotension involves targeting a lower than normal blood pressure (SBP 80-90 mmHg) until surgical hemorrhage control is achieved. This avoids "popping the clot" by preventing high arterial pressures that may dislodge forming thrombus. It is NOT appropriate in traumatic brain injury, where higher MAPs are needed to maintain cerebral perfusion.', '{1,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 18,
'Which of the following is a dynamic measure of fluid responsiveness?',
'Central venous pressure',
'Pulmonary capillary wedge pressure',
'Passive leg raise test',
'Chest X-ray showing pulmonary edema',
'Jugular venous distension',
'C',
'The passive leg raise test is a dynamic measure of fluid responsiveness. It transiently increases preload by "autotransfusing" blood from the legs. If cardiac output increases by >10%, the patient is likely to respond to fluid administration. Static measures like CVP and PCWP are poor predictors of fluid responsiveness.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 19,
'In trauma, the PROPPR trial supported which ratio of blood products in massive transfusion?',
'1:1:1 (PRBC:FFP:Platelets)',
'2:1:1 (PRBC:FFP:Platelets)',
'1:2:1 (PRBC:FFP:Platelets)',
'4:1:1 (PRBC:FFP:Platelets)',
'6:1 (PRBC:FFP only)',
'A',
'The PROPPR (Pragmatic, Randomized Optimal Platelet and Plasma Ratios) trial compared 1:1:1 to 1:1:2 ratios of plasma:platelets:red blood cells in trauma patients requiring massive transfusion. While 24-hour mortality was similar, the 1:1:1 group achieved hemostasis faster and had fewer deaths due to exsanguination within 24 hours.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100003-0000-0000-0000-000000000003', 20,
'What is the appropriate target for lactate clearance during resuscitation of shock?',
'Complete normalization within 1 hour',
'Decrease of ≥10% every 2 hours',
'Decrease of ≥50% every 6 hours',
'Any decrease within 24 hours',
'Lactate clearance is not a useful resuscitation target',
'B',
'The target for lactate clearance during resuscitation is a decrease of ≥10% every 2 hours. Serial lactate measurements guide the adequacy of resuscitation. Failure to clear lactate despite resuscitation efforts suggests ongoing tissue hypoperfusion, inadequate intervention, or non-hypoperfusion causes of elevated lactate and warrants reassessment.', '{3,5}');
