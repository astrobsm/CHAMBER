-- CME Article 7: Blood Products and Transfusion Medicine
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100007-0000-0000-0000-000000000007',
    'b0000007-0000-0000-0000-000000000007',
    'a0000001-0000-0000-0000-000000000001',
    'Blood Products and Transfusion Medicine in Surgical Practice',
    'Evidence-Based Transfusion Therapy and Management of Transfusion Reactions',
    'Blood transfusion is a critical therapeutic intervention in surgical practice. This CME article provides comprehensive coverage of blood product preparation, storage, compatibility testing, and clinical indications. Evidence-based transfusion thresholds, massive transfusion protocols, and management of transfusion reactions are discussed. Emphasis is placed on patient blood management principles to optimize outcomes while minimizing transfusion-associated risks.',
    'UNTH Surgery Department, Transfusion Medicine Unit',
    55,
    3.0,
    'hard',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'introduction', 'Introduction',
'Blood transfusion has evolved from a dangerous experimental procedure to a lifesaving intervention with sophisticated quality controls. However, transfusion remains associated with significant risks and should be approached as any other medical therapy—with careful consideration of indications, alternatives, and informed consent.

**Historical Milestones:**
- 1901: Karl Landsteiner discovers ABO blood groups (Nobel Prize 1930)
- 1940: Rh factor discovered
- 1943: Acid-citrate-dextrose (ACD) anticoagulant introduced
- 1971: Hepatitis B testing begins
- 1985: HIV antibody testing implemented
- 2000s: Nucleic acid testing (NAT) for viral detection

**Current Landscape:**
- Approximately 16 million units of whole blood collected annually in the US
- Transfusion indicated in ~10% of hospitalized patients
- Increasing recognition of transfusion-related morbidity
- Shift toward restrictive transfusion strategies
- Patient Blood Management (PBM) as standard of care

**Transfusion Goals:**
- Restore oxygen-carrying capacity
- Maintain hemostasis
- Replace coagulation factors
- Support intravascular volume

This article will provide the evidence-based knowledge required for safe and appropriate transfusion practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Describe the preparation, storage conditions, and clinical uses of major blood components

2. Explain ABO and Rh blood group systems and their clinical significance

3. Describe the compatibility testing process including type and screen, crossmatch, and emergency release

4. Apply evidence-based transfusion thresholds for red blood cells, platelets, and plasma

5. Implement massive transfusion protocols for hemorrhagic shock

6. Recognize and manage acute and delayed transfusion reactions

7. Identify transfusion-transmitted infections and current screening strategies

8. Describe special transfusion requirements for specific patient populations

9. Apply principles of Patient Blood Management to reduce transfusion needs

10. Discuss informed consent and documentation requirements for transfusion', 2);

-- Section 3: Blood Group Systems
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'content', 'Blood Group Systems',
'## ABO Blood Group System

The ABO system is the most clinically significant blood group system.

### Genetics and Biochemistry
- Antigens are carbohydrate structures on red cell surface
- Gene on chromosome 9 encodes glycosyltransferases
- A gene adds N-acetylgalactosamine to H antigen
- B gene adds D-galactose to H antigen
- O gene is non-functional (no modification)

### ABO Phenotypes

| Blood Type | RBC Antigens | Plasma Antibodies | Frequency (Caucasian) |
|------------|--------------|-------------------|----------------------|
| O | None (H only) | Anti-A and Anti-B | 44% |
| A | A | Anti-B | 42% |
| B | B | Anti-A | 10% |
| AB | A and B | None | 4% |

### Naturally Occurring Antibodies
- Anti-A and Anti-B develop in first year of life
- IgM predominant (fix complement, cause intravascular hemolysis)
- Develop through environmental exposure to A and B-like antigens
- Clinically significant: cause immediate, severe hemolytic reactions

### ABO Compatibility

**Red Blood Cell Transfusion (RBCs):**
- Must be ABO identical or compatible
- Transfuse donor RBCs that lack recipient''s antibodies
- O negative is "universal donor" for RBCs

| Recipient | Compatible RBC Donor |
|-----------|---------------------|
| O | O only |
| A | A, O |
| B | B, O |
| AB | AB, A, B, O |

**Plasma Transfusion (FFP):**
- Reverse of RBC compatibility
- Transfuse plasma lacking antibodies to recipient''s antigens
- AB is "universal donor" for plasma

| Recipient | Compatible Plasma Donor |
|-----------|------------------------|
| O | O, A, B, AB |
| A | A, AB |
| B | B, AB |
| AB | AB only |

## Rh Blood Group System

### Rh Antigens
- D antigen is most immunogenic (Rh positive/negative refers to D)
- Other Rh antigens: C, c, E, e
- 85% of population is Rh(D) positive

### Rh Immunization
- D-negative individuals do NOT have naturally occurring anti-D
- Anti-D develops after exposure to D-positive red cells
- Clinically significant: causes delayed hemolytic reactions and HDN

### Rh Compatibility
- Always give Rh-compatible blood when possible
- Rh-negative blood may be given to Rh-positive patients
- Rh-positive blood to Rh-negative patients:
  - Avoid in women of childbearing potential (risk of sensitization)
  - May be acceptable in emergencies for males or post-menopausal females

## Other Clinically Significant Antigens

**Kell (K):** Most immunogenic after D
**Duffy (Fy):** Malaria resistance (Fy null)
**Kidd (Jk):** Delayed hemolytic reactions
**MNS:** Mostly clinically insignificant', 3);

-- Section 4: Blood Components
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'content', 'Blood Components',
'## Component Therapy

Modern transfusion medicine uses component therapy rather than whole blood, allowing targeted treatment and efficient use of a limited resource.

## Packed Red Blood Cells (PRBCs)

**Preparation:**
- Centrifugation of whole blood removes plasma
- Additive solutions (CPDA-1 or AS-1) extend storage
- Volume: approximately 300 mL (Hct 55-80%)
- One unit raises Hb by ~1 g/dL or Hct by ~3%

**Storage:**
- Temperature: 1-6°C
- Shelf life: 35 days (CPDA-1) or 42 days (additive solutions)
- Must be transfused within 4 hours of leaving controlled storage

**Indications:**
- Symptomatic anemia
- Acute blood loss with hemodynamic instability
- Chronic anemia when Hb <7-8 g/dL (restrictive threshold)

**Special Products:**
- **Leukoreduced**: <5 × 10^6 WBCs; reduces febrile reactions, CMV transmission, HLA alloimmunization
- **Irradiated**: Prevents TA-GVHD in immunocompromised patients
- **Washed**: Removes plasma proteins; for patients with severe allergic reactions or IgA deficiency
- **CMV-negative**: Alternative to leukoreduced for CMV-seronegative immunocompromised patients

## Fresh Frozen Plasma (FFP)

**Preparation:**
- Plasma separated and frozen within 8 hours of collection
- Contains all coagulation factors
- Volume: 200-250 mL

**Storage:**
- Frozen at ≤-18°C: 1 year
- Thawed: 24 hours at 1-6°C (5 days for "thawed plasma")

**Indications:**
- Coagulopathy with bleeding
- Massive transfusion (with RBCs and platelets)
- Warfarin reversal (if PCC unavailable)
- TTP therapeutic plasma exchange
- Coagulation factor deficiency (if specific concentrate unavailable)

**Dosing:**
- 10-15 mL/kg for therapeutic effect
- Typical starting dose: 4 units

**NOT indicated for:**
- Volume expansion alone
- Nutritional support
- Wound healing enhancement
- Minor INR elevations without bleeding

## Platelets

**Types:**

**Whole Blood-Derived (Random Donor):**
- One unit from each whole blood donation
- Pool 4-6 units for therapeutic dose
- Lower yield per donor

**Apheresis (Single Donor):**
- Collected from single donor via apheresis
- Equivalent to 4-6 random donor units
- Reduces donor exposures

**Storage:**
- Room temperature (20-24°C) with continuous agitation
- Shelf life: 5-7 days
- Highest bacterial contamination risk of all components

**Indications:**
- Thrombocytopenia with bleeding
- Prophylactic transfusion:
  - Platelet count <10,000/µL (general)
  - Platelet count <20,000/µL (fever, sepsis)
  - Platelet count <50,000/µL (invasive procedure)
  - Platelet count <100,000/µL (neurosurgery, ocular surgery)

**Expected Response:**
- One apheresis unit raises count by 30,000-60,000/µL
- Check 1-hour post-transfusion count

## Cryoprecipitate

**Preparation:**
- Cold-insoluble fraction of plasma
- Prepared by thawing FFP at 1-6°C

**Contains:**
- Fibrinogen (150-250 mg per unit)
- Factor VIII
- Factor XIII
- von Willebrand factor
- Fibronectin

**Storage:**
- Frozen: 1 year
- Thawed: 4-6 hours (pool immediately before transfusion)

**Indications:**
- Hypofibrinogenemia (<100-150 mg/dL) with bleeding
- Disseminated intravascular coagulation (DIC)
- Uremic bleeding (desmopressin failure)

**Dosing:**
- Pool of 5-10 units
- Each unit raises fibrinogen ~5-10 mg/dL', 4);

-- Section 5: Compatibility Testing
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'content', 'Compatibility Testing and Transfusion Administration',
'## Pretransfusion Testing

### Sample Collection
- **Critical step**: Proper patient identification
- Two unique patient identifiers required
- Label sample at bedside after verification
- Mislabeled samples are rejected
- Sample valid for 3 days if recent transfusion or pregnancy

### Type and Screen

**ABO/Rh Typing:**
- Forward type: Patient RBCs tested with anti-A and anti-B reagents
- Reverse type: Patient plasma tested with A and B reagent cells
- Rh typing with anti-D reagent
- Results must match

**Antibody Screen:**
- Patient plasma tested against reagent red cells with known antigens
- Detects clinically significant alloantibodies
- If positive: antibody identification performed

### Crossmatch

**Immediate Spin (IS) Crossmatch:**
- Detects ABO incompatibility
- Used when antibody screen is negative
- Takes minutes

**Antiglobulin Crossmatch (Full):**
- Incubation at 37°C plus antiglobulin phase
- Required if antibody screen is positive
- Takes 30-45 minutes

**Electronic (Computer) Crossmatch:**
- Performed by computer algorithm
- Requires: 2 separate ABO/Rh results, negative antibody screen
- Valid blood bank information system
- Fastest method

## Emergency Transfusion

### Uncrossmatched Blood

**Emergency Release:**
- When no time for crossmatch
- O-negative RBCs for females of childbearing potential
- O-positive RBCs acceptable for others (conserves O-negative supply)
- AB plasma for emergency plasma transfusion

**Documentation:**
- Physician must sign emergency release form
- Risks documented and accepted

### Massive Transfusion Protocol (MTP)

**Definition:**
- Replacement of entire blood volume in 24 hours, OR
- Transfusion of >10 units RBCs in 24 hours, OR
- Transfusion of >4 units RBCs in 1 hour with ongoing bleeding

**Activation Criteria:**
- Hemodynamic instability with major hemorrhage
- Predicted need for massive transfusion (trauma scores)

**Typical MTP Ratio:**
- 1:1:1 (RBC:FFP:Platelets) based on PROPPR trial
- Cooler packs prepared for rapid release

## Transfusion Administration

### Verification
- Two qualified personnel verify at bedside:
  - Patient identity (wristband)
  - Blood product label
  - Compatibility tag
  - Expiration date
  - Visual inspection for abnormalities

### Equipment
- 18-gauge or larger IV (20-gauge acceptable)
- Blood administration set with 170-260 micron filter
- Use dedicated line (no medications in same line)
- Compatible fluids: 0.9% Normal Saline only

### Infusion
- Start slowly (first 15 minutes) monitoring for reaction
- RBCs: Complete within 4 hours
- Platelets and plasma: As fast as tolerated (usually 15-30 minutes)
- Monitor vital signs before, during (15 min), and after

### Documentation
- Time started and completed
- Volume transfused
- Any reactions
- Post-transfusion vital signs', 5);

-- Section 6: Transfusion Thresholds
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'content', 'Evidence-Based Transfusion Thresholds',
'## Red Blood Cell Transfusion Thresholds

### Landmark Trials

**TRICC Trial (1999):**
- ICU patients: Restrictive (Hb <7 g/dL) vs. Liberal (Hb <10 g/dL)
- No difference in 30-day mortality
- Restrictive: Fewer transfusions, possibly lower mortality in younger/less sick

**TRACS Trial (2010):**
- Cardiac surgery patients
- Restrictive (Hct <24%) vs. Liberal (Hct <30%)
- No difference in composite outcome

**FOCUS Trial (2011):**
- Hip fracture surgery with cardiovascular disease
- Restrictive (Hb <8 g/dL) vs. Liberal (Hb <10 g/dL)
- No difference in mortality or inability to walk

**TRICS III (2017):**
- Cardiac surgery, moderate-high risk
- Restrictive (Hb <7.5 g/dL) vs. Liberal (Hb <9.5 g/dL)
- Restrictive non-inferior for death, MI, stroke, kidney failure

### Current Guidelines

**General Recommendation:**
- Hemoglobin trigger: 7-8 g/dL for most stable patients
- Consider patient symptoms, not just numbers
- Transfuse one unit, reassess before additional units

**Specific Populations:**

| Population | Threshold | Target |
|------------|-----------|--------|
| ICU (stable) | 7 g/dL | 7-9 g/dL |
| GI bleed (no CVD) | 7 g/dL | 7-9 g/dL |
| Cardiac surgery | 7.5 g/dL | 7.5-8.5 g/dL |
| Acute coronary syndrome | 8 g/dL | 8-10 g/dL |
| Orthopedic surgery | 8 g/dL | 8-10 g/dL |
| Septic shock (early) | 7 g/dL | 7-9 g/dL |

**Important Considerations:**
- Do NOT transfuse based on hemoglobin alone
- Assess for symptoms: tachycardia, dyspnea, chest pain, hypotension
- Acute blood loss: May need transfusion before hemoglobin drops
- Compensatory mechanisms: Young patients tolerate lower Hb

## Platelet Transfusion Thresholds

| Clinical Situation | Platelet Trigger |
|-------------------|------------------|
| Prophylactic (no bleeding) | 10,000/µL |
| Fever, sepsis, or medications | 20,000/µL |
| Minor procedures (LP, line placement) | 50,000/µL |
| Major surgery | 50,000/µL |
| Neurosurgery, ocular surgery | 100,000/µL |
| Active bleeding | 50,000/µL (maintain) |

## Plasma Transfusion Thresholds

- INR >1.5-2.0 with active bleeding
- INR >2.0 before invasive procedure
- Massive transfusion protocol
- Do NOT transfuse for mildly elevated INR without bleeding', 6);

-- Section 7: Transfusion Reactions
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'content', 'Transfusion Reactions',
'## Acute Transfusion Reactions (Within 24 Hours)

### Acute Hemolytic Transfusion Reaction (AHTR)

**Cause:** ABO incompatibility (usually clerical error)
**Mechanism:** IgM anti-A or anti-B causes complement-mediated intravascular hemolysis

**Symptoms:**
- Fever, chills, rigors
- Flank/back pain
- Chest pain, dyspnea
- Hypotension, shock
- Hemoglobinuria (dark urine)
- DIC, renal failure

**Incidence:** 1:38,000-1:70,000 (fatal: 1:1.5 million)

**Management:**
1. STOP transfusion immediately
2. Maintain IV access with normal saline
3. Verify patient identity and blood product
4. Send blood bank workup (repeat type, DAT, hemolysis panel)
5. Supportive care: fluids, vasopressors
6. Maintain urine output >1 mL/kg/hr (prevent renal failure)
7. Monitor for DIC, treat as needed

### Febrile Non-Hemolytic Transfusion Reaction (FNHTR)

**Cause:** Recipient antibodies to donor WBCs; cytokines accumulated during storage
**Definition:** Temperature rise ≥1°C with transfusion

**Symptoms:**
- Fever, chills
- No hemolysis, no hypotension

**Incidence:** 0.1-1% (less with leukoreduced products)

**Management:**
- Stop transfusion (rule out hemolysis)
- Antipyretics
- If hemolysis ruled out, may complete transfusion
- Premedicate for future transfusions
- Use leukoreduced products

### Allergic Reactions

**Mild (Urticarial):**
- Cause: Recipient antibodies to donor plasma proteins
- Symptoms: Hives, itching
- Incidence: 1-3%
- Management: Antihistamines; may slow/continue transfusion

**Severe (Anaphylactic):**
- Cause: Often IgA deficiency with anti-IgA antibodies
- Symptoms: Bronchospasm, angioedema, hypotension
- Incidence: 1:20,000-50,000
- Management: Stop transfusion, epinephrine, steroids, supportive
- Future: Washed cellular products, IgA-deficient plasma

### Transfusion-Related Acute Lung Injury (TRALI)

**Cause:** Donor antibodies to recipient HLA/WBC antigens (or reverse)
**Definition:** Acute hypoxemia and bilateral pulmonary infiltrates within 6 hours of transfusion

**Risk Factors:**
- Plasma-containing products (highest risk)
- Multiparous female donors (higher antibody titers)

**Symptoms:**
- Dyspnea, hypoxia
- Fever
- Hypotension
- Bilateral infiltrates on CXR
- No evidence of volume overload

**Incidence:** 1:5,000 to 1:190,000

**Management:**
- Stop transfusion
- Supportive care (oxygen, may need mechanical ventilation)
- Usually resolves within 48-96 hours
- No proven specific therapy

**Prevention:**
- Male-only plasma donors
- Testing high-risk donors for HLA antibodies

### Transfusion-Associated Circulatory Overload (TACO)

**Cause:** Volume overload, especially in cardiac/renal patients
**Definition:** Respiratory distress from cardiogenic pulmonary edema within 6 hours

**Symptoms:**
- Dyspnea
- Orthopnea
- Elevated JVP
- Peripheral edema
- Hypertension
- Elevated BNP

**Management:**
- Stop/slow transfusion
- Diuretics
- Upright positioning
- Oxygen

**Prevention:**
- Slow infusion rate
- Diuretics with transfusion in at-risk patients
- Transfuse one unit at a time

### TRALI vs. TACO

| Feature | TRALI | TACO |
|---------|-------|------|
| BP | Hypotensive | Hypertensive |
| JVP | Normal/low | Elevated |
| BNP | Normal/slight ↑ | Markedly elevated |
| Echo | Normal | Volume overload |
| Response to diuretics | No | Yes |

### Bacterial Contamination

**Cause:** Bacteria in blood product (especially platelets stored at room temp)
**Symptoms:**
- High fever, rigors
- Hypotension, shock
- May progress rapidly to septic shock

**Management:**
- Stop transfusion
- Blood cultures (patient and product)
- Broad-spectrum antibiotics
- Supportive care

## Delayed Transfusion Reactions

### Delayed Hemolytic Transfusion Reaction (DHTR)

**Cause:** Anamnestic response to previously sensitized antigen
**Timing:** 3-14 days post-transfusion

**Symptoms:**
- Unexplained drop in hemoglobin
- Jaundice
- Fever
- Usually less severe than AHTR

**Management:**
- Supportive
- Document antibody for future transfusions

### Transfusion-Associated Graft-vs-Host Disease (TA-GVHD)

**Cause:** Donor T-lymphocytes engraft and attack recipient tissues
**Risk:** Immunocompromised, HLA-similar donor (family)

**Symptoms:**
- Fever, rash
- Diarrhea
- Liver dysfunction
- Pancytopenia
- Usually fatal (>90% mortality)

**Prevention:** Irradiate cellular products for at-risk patients

### Post-Transfusion Purpura (PTP)

**Cause:** Antibodies to platelet antigens (usually HPA-1a)
**Timing:** 5-12 days post-transfusion

**Symptoms:**
- Severe thrombocytopenia
- Bleeding

**Management:**
- IVIG
- HPA-negative platelets if transfusion needed', 7);

-- Section 8: Massive Transfusion
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'content', 'Massive Transfusion',
'## Definition and Triggers

**Traditional Definition:**
- Replacement of entire blood volume (approximately 10 units) in 24 hours

**Practical Definitions:**
- ≥4 units RBCs in 1 hour with ongoing bleeding
- ≥10 units RBCs in 24 hours
- Replacement of 50% blood volume in 3 hours

**Prediction Scores:**
- ABC Score (Assessment of Blood Consumption)
- TASH Score (Trauma-Associated Severe Hemorrhage)
- Shock Index (HR/SBP) >1 suggests major hemorrhage

## Massive Transfusion Protocol (MTP)

### Activation
- Typically activated by trauma team leader, surgeon, or anesthesiologist
- Single call initiates preset blood product release
- Goal: Minimize time from activation to product availability

### Product Ratios

**PROPPR Trial (2015):**
- Compared 1:1:1 vs. 1:1:2 (plasma:platelets:RBCs)
- 1:1:1 achieved hemostasis more often
- Trend toward improved survival at 24 hours
- **Current recommendation: 1:1:1 ratio**

### MTP Cooler Contents (Example)

**First Cooler:**
- 6 units RBCs (O-negative or type-specific)
- 6 units FFP (AB or type-specific)
- 1 apheresis platelet

**Subsequent Coolers:**
- Same or adjusted based on laboratory results

### Coagulopathy of Trauma

**Acute Traumatic Coagulopathy (ATC):**
- Present on arrival in 25-35% of severely injured patients
- Associated with 4-fold increase in mortality
- Multifactorial mechanism

**Contributing Factors:**
- Tissue injury
- Shock and hypoperfusion
- Acidosis
- Hypothermia
- Hemodilution
- Consumption of factors

### Damage Control Resuscitation

**Principles:**
1. **Permissive hypotension**: Target SBP 80-90 mmHg until bleeding controlled
2. **Limit crystalloids**: Avoid hemodilution
3. **Early blood products**: Hemostatic resuscitation
4. **1:1:1 ratio transfusion**
5. **Tranexamic acid**: Within 3 hours of injury (CRASH-2)
6. **Target physiologic goals**:
   - Temperature >35°C
   - pH >7.2
   - Calcium >1.0 mmol/L (ionized)
   - Fibrinogen >150-200 mg/dL

### Monitoring During MTP

**Laboratory:**
- Point-of-care hemoglobin
- Arterial blood gas (pH, lactate, ionized calcium)
- Coagulation studies (PT, PTT, fibrinogen)
- Thromboelastography/Rotational thromboelastometry (TEG/ROTEM)
- Platelet count

**TEG/ROTEM:**
- Viscoelastic testing of whole blood clot formation
- Provides rapid, comprehensive coagulation assessment
- Guides goal-directed component therapy

### Complications

**Hypocalcemia:**
- Citrate in blood products binds calcium
- Manifests: Hypotension, prolonged QT, paresthesias, tetany
- Treatment: Calcium gluconate or calcium chloride

**Hypothermia:**
- Use blood warmers for all products
- Active patient warming

**Hyperkalemia:**
- Potassium leaks from stored RBCs
- Monitor with massive transfusion

**Dilutional Coagulopathy:**
- From crystalloid use
- Minimized with hemostatic resuscitation', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'key_points', 'Key Points',
'1. **ABO Compatibility**: Type O is universal RBC donor; Type AB is universal plasma donor. ABO incompatibility causes acute hemolytic reactions (IgM-mediated intravascular hemolysis).

2. **Component Storage**: RBCs at 1-6°C (42 days); Platelets at 20-24°C with agitation (5-7 days); FFP frozen (1 year), thawed (24 hours)

3. **Restrictive Transfusion**: Evidence supports Hb threshold of 7 g/dL for most stable patients (TRICC, FOCUS, TRICS III). Transfuse one unit, then reassess.

4. **Platelet Thresholds**: 10,000/µL prophylactic; 50,000/µL for procedures; 100,000/µL for neurosurgery

5. **AHTR Management**: STOP transfusion, maintain IV access, verify patient/product identity, send workup, support circulation, maintain urine output >1 mL/kg/hr

6. **TRALI vs TACO**: TRALI = hypotensive, normal BNP, bilateral infiltrates. TACO = hypertensive, elevated BNP, volume overload.

7. **Massive Transfusion Protocol**: 1:1:1 ratio (RBC:FFP:Platelets) based on PROPPR trial. Damage control resuscitation includes permissive hypotension and limiting crystalloids.

8. **TXA in Trauma**: CRASH-2 showed mortality benefit when given within 3 hours of injury. Load 1g over 10 min, then 1g over 8 hours.

9. **Prevention Measures**: Leukoreduction reduces FNHTR and CMV. Irradiation prevents TA-GVHD. Washed products for IgA deficiency.

10. **Documentation Requirements**: Two-person verification at bedside, vital sign monitoring, completion time, any reactions—all must be documented.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: The most common cause of fatal AHTR is clerical error. Always verify patient identity and blood product at the bedside with two qualified personnel.

💡 **Pearl 2**: Fever during transfusion may be FNHTR or bacterial contamination. Stop the transfusion, send workup, and treat contamination as a possibility until proven otherwise—especially with platelets.

💡 **Pearl 3**: FFP contains about 1 unit/mL of each coagulation factor. A dose of 10-15 mL/kg (~4 units in an adult) is needed for meaningful factor replacement.

💡 **Pearl 4**: "Type and screen" means the blood bank determines ABO/Rh and checks for antibodies. No units are set aside. "Crossmatch" means specific units are tested and reserved for that patient.

💡 **Pearl 5**: Transfusing Rh-positive blood to an Rh-negative woman of childbearing age can cause sensitization and future hemolytic disease of the newborn. Avoid unless life-threatening emergency.

💡 **Pearl 6**: One unit of RBCs raises hemoglobin by about 1 g/dL. If the response is less, consider ongoing bleeding, hemolysis, or splenomegaly.

💡 **Pearl 7**: Platelets are stored at room temperature, making them the highest-risk product for bacterial contamination. Watch for high fever and hypotension.

💡 **Pearl 8**: In massive transfusion, don''t forget calcium. Citrate in blood products chelates calcium, causing hypotension and coagulopathy. Give calcium for every 4-6 units of products.

💡 **Pearl 9**: Never add medications to blood products or run through the same line. Only 0.9% normal saline is compatible.

💡 **Pearl 10**: The best transfusion is the one you don''t have to give. Apply patient blood management principles: optimize hemoglobin preoperatively, minimize blood loss, and use restrictive thresholds.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100007-0000-0000-0000-000000000007', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100007-0000-0000-0000-000000000007', 1, 'Hébert PC, et al. A multicenter, randomized, controlled clinical trial of transfusion requirements in critical care (TRICC). N Engl J Med. 1999;340(6):409-417.', '10.1056/NEJM199902113400601', '9971864', NULL),
('a1100007-0000-0000-0000-000000000007', 2, 'Carson JL, et al. Liberal or restrictive transfusion in high-risk patients after hip surgery (FOCUS). N Engl J Med. 2011;365(26):2453-2462.', '10.1056/NEJMoa1012452', '22168590', NULL),
('a1100007-0000-0000-0000-000000000007', 3, 'Mazer CD, et al. Restrictive or liberal red-cell transfusion for cardiac surgery (TRICS III). N Engl J Med. 2017;377(22):2133-2144.', '10.1056/NEJMoa1711818', '29130845', NULL),
('a1100007-0000-0000-0000-000000000007', 4, 'Holcomb JB, et al. Transfusion of plasma, platelets, and red blood cells in a 1:1:1 vs a 1:1:2 ratio (PROPPR). JAMA. 2015;313(5):471-482.', '10.1001/jama.2015.12', '25647203', NULL),
('a1100007-0000-0000-0000-000000000007', 5, 'CRASH-2 trial collaborators. Effects of tranexamic acid on death, vascular occlusive events, and blood transfusion in trauma patients with significant haemorrhage. Lancet. 2010;376(9734):23-32.', '10.1016/S0140-6736(10)60835-5', '20554319', NULL),
('a1100007-0000-0000-0000-000000000007', 6, 'Toy P, et al. Transfusion-related acute lung injury: definition and review. Crit Care Med. 2005;33(4):721-726.', '10.1097/01.CCM.0000159849.94750.51', '15818095', NULL),
('a1100007-0000-0000-0000-000000000007', 7, 'Delaney M, et al. Transfusion reactions: prevention, diagnosis, and treatment. Lancet. 2016;388(10061):2825-2836.', '10.1016/S0140-6736(15)01313-6', '27083327', NULL),
('a1100007-0000-0000-0000-000000000007', 8, 'Fung MK, et al., eds. AABB Technical Manual. 20th ed. AABB Press; 2020.', NULL, NULL, NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 1,
'A type B patient requires emergency RBC transfusion before crossmatch can be completed. Which blood type should be transfused?',
'Type A RBCs',
'Type B or Type O RBCs',
'Type AB RBCs',
'Type AB plasma',
'Any available type',
'B',
'A type B patient can receive type B (identical) or type O (universal donor) RBCs because O cells lack A and B antigens that would react with the patient''s anti-A antibodies. Type A would cause a hemolytic reaction. Type AB RBCs have A antigens that would also react.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 2,
'According to the TRICC trial, what is the recommended hemoglobin threshold for RBC transfusion in stable ICU patients?',
'10 g/dL',
'9 g/dL',
'8 g/dL',
'7 g/dL',
'6 g/dL',
'D',
'The TRICC trial demonstrated that a restrictive transfusion strategy (transfuse when Hb <7 g/dL, maintain 7-9 g/dL) was at least as effective as a liberal strategy (transfuse when Hb <10 g/dL) in critically ill patients, with fewer transfusions and possibly better outcomes.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 3,
'Platelets must be stored at which temperature?',
'1-6°C with no agitation',
'1-6°C with continuous agitation',
'20-24°C with continuous agitation',
'-18°C or colder',
'37°C',
'C',
'Platelets are stored at room temperature (20-24°C) with continuous agitation to maintain their function. This storage temperature, while preserving platelet function, also makes platelets the highest-risk blood product for bacterial contamination.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 4,
'A patient develops fever, chills, flank pain, hypotension, and dark urine during a blood transfusion. What is the most likely diagnosis?',
'Febrile non-hemolytic transfusion reaction',
'Acute hemolytic transfusion reaction',
'Transfusion-related acute lung injury',
'Allergic transfusion reaction',
'Transfusion-associated circulatory overload',
'B',
'Fever, chills, flank/back pain, hypotension, and hemoglobinuria (dark urine) are classic symptoms of an acute hemolytic transfusion reaction due to ABO incompatibility. This represents intravascular hemolysis and is a medical emergency.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 5,
'What is the first and most important step in managing a suspected acute hemolytic transfusion reaction?',
'Administer epinephrine',
'Give IV fluids',
'Stop the transfusion immediately',
'Order a chest x-ray',
'Administer antipyretics',
'C',
'The first and most critical step is to immediately stop the transfusion to prevent further infusion of incompatible blood. Maintain IV access with normal saline, verify patient identity and product, send workup samples, and provide supportive care.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 6,
'The PROPPR trial established the optimal ratio for massive transfusion protocol as:',
'1:1:2 (RBC:FFP:Platelets)',
'1:1:1 (RBC:FFP:Platelets)',
'2:1:1 (RBC:FFP:Platelets)',
'1:2:1 (RBC:FFP:Platelets)',
'3:1:1 (RBC:FFP:Platelets)',
'B',
'The PROPPR trial compared 1:1:1 to 1:1:2 ratios and found that the 1:1:1 ratio (plasma:platelets:RBCs) achieved hemostasis more often and showed a trend toward improved 24-hour survival. This balanced approach became the standard for massive transfusion.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 7,
'Which blood product carries the highest risk of bacterial contamination?',
'Packed red blood cells',
'Fresh frozen plasma',
'Platelets',
'Cryoprecipitate',
'Whole blood',
'C',
'Platelets have the highest risk of bacterial contamination because they are stored at room temperature (20-24°C), which supports bacterial growth. RBCs are stored at 1-6°C, and plasma/cryo are frozen, inhibiting bacterial proliferation.', '{7,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 8,
'A patient develops dyspnea and bilateral pulmonary infiltrates 4 hours after platelet transfusion. BP is 85/50 mmHg and BNP is normal. What is the most likely diagnosis?',
'Transfusion-associated circulatory overload (TACO)',
'Transfusion-related acute lung injury (TRALI)',
'Acute hemolytic transfusion reaction',
'Bacterial sepsis',
'Allergic reaction',
'B',
'Dyspnea with bilateral infiltrates within 6 hours of transfusion, hypotension, and normal BNP suggests TRALI. TACO would present with hypertension and elevated BNP. TRALI is caused by donor antibodies against recipient leukocyte antigens.', '{6,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 9,
'According to the CRASH-2 trial, tranexamic acid in trauma should be administered:',
'Only if fibrinogen is low',
'Within 3 hours of injury',
'Only after massive transfusion begins',
'After 8 hours from injury',
'Only in penetrating trauma',
'B',
'The CRASH-2 trial demonstrated that tranexamic acid reduces mortality in bleeding trauma patients when given within 3 hours of injury. Administration after 3 hours showed no benefit and potential harm. The dose is 1g IV over 10 minutes, then 1g over 8 hours.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 10,
'What is the expected increase in hemoglobin from one unit of packed red blood cells?',
'0.5 g/dL',
'1 g/dL',
'2 g/dL',
'3 g/dL',
'5 g/dL',
'B',
'One unit of packed RBCs is expected to increase hemoglobin by approximately 1 g/dL (or hematocrit by 3%) in an average adult without ongoing bleeding or hemolysis. A smaller response suggests bleeding, hemolysis, or splenomegaly.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 11,
'For a patient with IgA deficiency who has had a severe allergic reaction to transfusion, which product modification is indicated?',
'Leukoreduced products',
'Irradiated products',
'Washed cellular products',
'CMV-negative products',
'Fresher products',
'C',
'Patients with IgA deficiency may develop anti-IgA antibodies that can cause severe anaphylactic reactions to plasma-containing products. Washed RBCs and platelets remove most plasma proteins including IgA. Alternatively, products from IgA-deficient donors can be used.', '{7,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 12,
'Irradiation of blood products is performed to prevent:',
'Febrile non-hemolytic reactions',
'Transfusion-related acute lung injury',
'Transfusion-associated graft-versus-host disease',
'Bacterial contamination',
'Citrate toxicity',
'C',
'Irradiation (25-50 Gy) prevents transfusion-associated graft-versus-host disease (TA-GVHD) by inactivating donor T-lymphocytes that could engraft and attack immunocompromised recipients. TA-GVHD has >90% mortality.', '{7,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 13,
'Cryoprecipitate is the preferred treatment for hypofibrinogenemia because it contains:',
'All coagulation factors',
'Concentrated fibrinogen, Factor VIII, Factor XIII, and vWF',
'Only fibrinogen',
'Platelets and plasma',
'Vitamin K-dependent factors',
'B',
'Cryoprecipitate is a concentrated source of fibrinogen (150-250 mg per unit), Factor VIII, Factor XIII, von Willebrand factor, and fibronectin. It is prepared from the cold-insoluble fraction of plasma and is used for hypofibrinogenemia.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 14,
'During massive transfusion, hypotension and prolonged QT develop despite adequate volume resuscitation. The most likely cause is:',
'Hyperkalemia',
'Hypocalcemia from citrate toxicity',
'Hypothermia',
'Metabolic acidosis',
'Allergic reaction',
'B',
'Citrate, used as an anticoagulant in blood products, binds ionized calcium. During massive transfusion, citrate accumulation can cause hypocalcemia, manifesting as hypotension, prolonged QT, paresthesias, and tetany. Treatment is IV calcium.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 15,
'Which platelet count threshold is recommended before neurosurgery?',
'10,000/µL',
'20,000/µL',
'50,000/µL',
'100,000/µL',
'150,000/µL',
'D',
'A platelet count of ≥100,000/µL is recommended before neurosurgery and ocular surgery due to the severe consequences of bleeding in these locations. Lower thresholds (50,000/µL) are acceptable for most other surgeries and procedures.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 16,
'Type O-negative blood is called the "universal donor" for RBCs because:',
'It contains all antigens',
'It lacks A, B, and D antigens',
'It contains no antibodies',
'It has the longest shelf life',
'It is the most common blood type',
'B',
'Type O-negative RBCs lack A, B, and D (Rh) antigens and therefore will not react with anti-A, anti-B, or anti-D antibodies in any recipient. This makes it safe for emergency transfusion when the recipient''s blood type is unknown.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 17,
'FFP should be transfused within what time period after thawing?',
'2 hours',
'4 hours',
'24 hours',
'48 hours',
'5 days',
'C',
'FFP must be transfused within 24 hours of thawing when stored at 1-6°C. After 24 hours, labile coagulation factors (V and VIII) decrease, and it becomes "thawed plasma" with a 5-day expiration but reduced factor activity.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 18,
'A patient develops hives and itching during a transfusion with stable vital signs. The appropriate management is:',
'Stop transfusion permanently',
'Stop transfusion, give antihistamines, may resume if symptoms resolve',
'Continue transfusion at same rate',
'Administer epinephrine',
'Give corticosteroids and stop transfusion',
'B',
'Mild urticarial reactions (hives, itching without systemic symptoms) can be managed by temporarily stopping the transfusion, administering antihistamines, and resuming the transfusion slowly once symptoms resolve. Severe allergic reactions require stopping and not resuming.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 19,
'The maximum time allowed for infusion of one unit of packed red blood cells is:',
'1 hour',
'2 hours',
'4 hours',
'6 hours',
'8 hours',
'C',
'RBCs must be transfused within 4 hours of leaving controlled storage (1-6°C) to minimize bacterial growth and maintain product quality. If transfusion cannot be completed in 4 hours, the remaining product should be discarded.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100007-0000-0000-0000-000000000007', 20,
'Which IV solution is compatible with blood product administration?',
'Lactated Ringer''s',
'D5W',
'0.9% Normal Saline',
'D5 0.45% NS',
'Any crystalloid solution',
'C',
'Only 0.9% Normal Saline is compatible with blood products. Lactated Ringer''s contains calcium which can cause clotting. Dextrose solutions can cause hemolysis. No medications should be added to or infused through the same line as blood.', '{8}');
