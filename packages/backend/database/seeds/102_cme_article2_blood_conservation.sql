-- CME Article 2: Blood Conservation and Autotransfusion
-- Comprehensive CME article with 20 self-assessment questions

-- Insert the article
INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'art00002-0000-0000-0000-000000000002',
    'b0000002-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Blood Conservation Strategies and Autotransfusion in Modern Surgical Practice',
    'Evidence-Based Approaches to Minimize Allogeneic Blood Transfusion',
    'This continuing medical education article provides a comprehensive overview of blood conservation strategies and autotransfusion techniques in surgical practice. With increasing awareness of transfusion-associated risks and ongoing blood supply challenges, implementing effective blood management protocols has become essential. This article covers preoperative optimization, intraoperative techniques, and postoperative strategies for blood conservation, along with detailed discussion of autotransfusion methods including preoperative autologous donation, acute normovolemic hemodilution, and intraoperative cell salvage. Pharmacological agents and the principles of patient blood management are also addressed.',
    'UNTH Surgery Department, Transfusion Medicine Section',
    50,
    2.5,
    'hard',
    1,
    true
);

-- Insert article sections
-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'introduction', 'Introduction', 
'Blood transfusion, while lifesaving, carries inherent risks including infectious disease transmission, transfusion reactions, immunomodulation, and increased morbidity and mortality. The concept of "Patient Blood Management" (PBM) has emerged as a multidisciplinary, evidence-based approach to optimize the care of patients who might need transfusion.

**The Problem with Allogeneic Transfusion:**

1. **Infectious Risks**: Despite rigorous screening, residual risk exists for HIV, Hepatitis B, Hepatitis C, and emerging pathogens

2. **Immunological Reactions**: Range from mild febrile reactions to fatal hemolytic reactions and transfusion-related acute lung injury (TRALI)

3. **Immunomodulation (TRIM)**: Transfusion-Related Immunomodulation may increase infection rates and cancer recurrence

4. **Supply Limitations**: Blood is a limited resource with storage constraints

5. **Cost**: Significant direct and indirect costs associated with transfusion

**Patient Blood Management Philosophy:**

The three pillars of Patient Blood Management are:
- Optimize the patient''s red cell mass (treat anemia preoperatively)
- Minimize blood loss and bleeding
- Harness and optimize physiological tolerance of anemia

This article will explore the practical application of these principles through blood conservation strategies and autotransfusion techniques.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'learning_objectives', 'Learning Objectives', 
'Upon completion of this article, participants should be able to:

1. Describe the three pillars of Patient Blood Management and their clinical application

2. Identify preoperative strategies for optimizing hemoglobin levels and reducing transfusion need

3. Explain the indications, contraindications, and techniques of preoperative autologous blood donation

4. Describe the principles and implementation of acute normovolemic hemodilution

5. Discuss intraoperative cell salvage, including proper technique, contraindications, and quality considerations

6. List pharmacological agents used for blood conservation and their mechanisms of action

7. Apply appropriate intraoperative techniques to minimize surgical blood loss

8. Develop a comprehensive blood conservation strategy for surgical patients

9. Recognize situations where blood conservation techniques are contraindicated

10. Evaluate the evidence supporting various blood conservation modalities', 2);

-- Section 3: Preoperative Blood Conservation
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'content', 'Preoperative Blood Conservation', 
'## Preoperative Anemia Management

Preoperative anemia is a powerful independent predictor of adverse surgical outcomes. The first pillar of PBM focuses on optimizing the patient''s red cell mass before surgery.

### Anemia Detection and Workup

All patients scheduled for procedures with expected blood loss should be screened for anemia at least 4-6 weeks before surgery. The WHO defines anemia as:
- Hemoglobin <13 g/dL in men
- Hemoglobin <12 g/dL in non-pregnant women

**Anemia workup should include:**
- Complete blood count with indices (MCV, MCH, MCHC, RDW)
- Reticulocyte count
- Iron studies (serum iron, ferritin, TIBC, transferrin saturation)
- Vitamin B12 and folate levels
- Kidney function (creatinine, eGFR)
- Inflammatory markers (CRP) if indicated

### Iron Deficiency Treatment

Iron deficiency is the most common cause of anemia worldwide.

**Oral Iron Therapy:**
- Ferrous sulfate 325 mg (65 mg elemental iron) 2-3 times daily
- Takes 4-6 weeks for significant hemoglobin rise
- Side effects: GI upset, constipation
- Take on empty stomach with vitamin C to enhance absorption

**Intravenous Iron Therapy:**
Indicated when oral iron fails, is not tolerated, or time is limited.
- **Ferric carboxymaltose**: 750-1000 mg single dose, can repeat in 1 week
- **Iron sucrose**: 200-300 mg per dose, multiple doses needed
- **Ferric derisomaltose**: Up to 1000 mg single dose
- IV iron can increase hemoglobin by 1-2 g/dL in 2-3 weeks

### Erythropoiesis-Stimulating Agents (ESAs)

**Indications:**
- Chronic kidney disease with anemia
- Cancer patients on chemotherapy
- Autologous blood donation programs
- Selected surgical patients with anemia

**Dosing:**
- Epoetin alfa: 300-600 units/kg/week in divided doses
- Darbepoetin alfa: 2.25 mcg/kg weekly

**Considerations:**
- Must have adequate iron stores (supplement if needed)
- Risk of thromboembolic events
- Use lowest dose to achieve target hemoglobin
- Black box warning for cancer patients

## Preoperative Autologous Donation (PAD)

### Principles
Patient donates their own blood in the weeks before surgery for potential use during or after the procedure.

### Standard Protocol
- Begin 4-6 weeks before surgery
- Donate 1 unit per week
- Last donation should be >72 hours before surgery
- Oral or IV iron supplementation recommended
- ESA may be used to enhance red cell regeneration

### Indications
- Elective surgery with high expected blood loss
- Patients with rare blood types or multiple antibodies
- Patient preference for autologous blood
- Patients who refuse allogeneic transfusion (some Jehovah''s Witnesses may accept PAD)

### Contraindications
- Active bacterial infection
- Unstable angina or recent MI
- Severe aortic stenosis
- Hemoglobin <11 g/dL (relative)
- Limited time before surgery

### Advantages
- Eliminates infection transmission risk
- No risk of alloimmunization
- No febrile or allergic reactions
- Psychologically reassuring to patients

### Disadvantages
- High wastage rates (up to 50% unused)
- Expensive logistics
- Patients may still need allogeneic blood if PAD depleted
- Storage lesion still occurs
- May cause preoperative anemia', 3);

-- Section 4: Intraoperative Blood Conservation
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'content', 'Intraoperative Blood Conservation Techniques', 
'## Acute Normovolemic Hemodilution (ANH)

### Principle
Blood is removed from the patient immediately before or after anesthesia induction and replaced with crystalloid/colloid to maintain normovolemia. Blood lost during surgery has a lower hematocrit, and the harvested blood (with higher hematocrit) is reinfused at the end of surgery.

### Technique
1. Insert large-bore IV and arterial line
2. Remove blood into standard collection bags with anticoagulant
3. Replace volume with crystalloid (3:1 ratio) or colloid (1:1 ratio)
4. Target hematocrit: 25-30% (based on patient tolerance)
5. Store blood at room temperature (up to 8 hours)
6. Reinfuse in reverse order (last out, first in)

### Calculation
Blood volume to remove = EBV × (Hi - Hf) / Havg
- EBV = Estimated Blood Volume (70 mL/kg men, 65 mL/kg women)
- Hi = Initial hematocrit
- Hf = Target final hematocrit
- Havg = Average hematocrit

### Advantages
- Reduces allogeneic transfusion
- Fresh blood with functional platelets and clotting factors
- No storage lesion
- Low cost
- No risk of clerical error

### Contraindications
- Preoperative anemia (Hgb <12 g/dL)
- Coronary artery disease
- Severe renal or hepatic dysfunction
- Coagulopathy
- Uncontrolled hypertension
- Bacteremia

## Intraoperative Cell Salvage (ICS)

### Principle
Blood lost during surgery is collected, processed (washed or unwashed), and reinfused to the patient.

### Types of Cell Salvage

**1. Cell Washing Systems (Standard)**
- Collect blood mixed with anticoagulant
- Centrifuge to separate red cells
- Wash with saline to remove debris, free hemoglobin, and contaminants
- Suspend red cells in saline (hematocrit 50-80%)
- Examples: Cell Saver, Haemonetics

**2. Direct Reinfusion Systems (Unwashed)**
- Simple collection and filtration
- Reinfuse through microaggregate filter
- Less processing but higher contaminant return
- Lower cost, simpler operation

### Indications
- Expected blood loss >1000 mL
- Anticipated need for transfusion
- Patient with rare blood type or antibodies
- Patients declining allogeneic transfusion

### Contraindications

**Absolute Contraindications:**
- None are truly absolute with proper processing

**Relative Contraindications (require leukocyte depletion filter or modification):**
- Malignancy (use leukocyte depletion filter, irradiation debated)
- Infection (contaminated field)
- Obstetric cases (amniotic fluid contamination - use leukocyte filter)
- Bowel content contamination

**Note:** Modern evidence suggests cell salvage can be used in many previously contraindicated situations with appropriate modifications.

### Processing Considerations
- Anticoagulation: Heparinized saline or citrate
- Washing removes: Free hemoglobin, potassium, cytokines, fat
- Final product contains: Red cells, minimal platelets, no clotting factors
- Quality indicators: Hematocrit >50%, free Hgb <1%, no fat globules

## Surgical Techniques for Blood Conservation

### Meticulous Hemostasis
- Careful surgical technique is the foundation of blood conservation
- Use of energy devices (electrocautery, harmonic scalpel, LigaSure)
- Topical hemostatic agents
- Avoid unnecessary tissue dissection

### Positioning
- Proper patient positioning to optimize venous drainage
- Avoid abdominal compression
- Head-up position when appropriate

### Controlled Hypotension
- Maintain MAP 55-65 mmHg (in appropriate patients)
- Reduces arterial bleeding
- Contraindicated in cerebrovascular disease, CAD, renal insufficiency

### Hypothermia Avoidance
- Hypothermia impairs coagulation
- Maintain normothermia with warming devices
- Warm IV fluids

### Tourniquets
- For extremity surgery
- Reduces surgical blood loss significantly
- Time limitations apply', 4);

-- Section 5: Pharmacological Blood Conservation
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'content', 'Pharmacological Agents for Blood Conservation', 
'## Antifibrinolytic Agents

These drugs inhibit fibrinolysis, promoting clot stability and reducing bleeding.

### Tranexamic Acid (TXA)

**Mechanism:** Synthetic lysine analog that competitively inhibits plasminogen activation

**Evidence:**
- CRASH-2 trial: Reduced mortality in trauma patients when given within 3 hours
- WOMAN trial: Reduced death from bleeding in postpartum hemorrhage
- Multiple surgical trials show reduced transfusion

**Dosing:**
- Trauma/PPH: 1 g IV over 10 minutes, then 1 g over 8 hours
- Surgery: 10-20 mg/kg IV before incision, may repeat
- Topical: 1-3 g in saline applied to wound

**Side Effects:**
- Rare seizures (especially high doses in cardiac surgery)
- Theoretical thrombosis risk (not supported by trials)
- GI upset with oral dosing

### Epsilon-Aminocaproic Acid (EACA)

**Mechanism:** Similar to TXA, inhibits plasminogen activation

**Dosing:**
- Loading: 4-5 g IV over 1 hour
- Maintenance: 1 g/hour for 8 hours or until bleeding controlled

**Less potent than TXA but longer history of use**

### Aprotinin

**Historical Note:** Bovine-derived serine protease inhibitor, highly effective but withdrawn from market in 2007 due to increased mortality and renal complications in BART trial. Reintroduced in some countries with restrictions.

## Desmopressin (DDAVP)

**Mechanism:** 
- Synthetic vasopressin analog
- Releases von Willebrand factor and Factor VIII from endothelial stores
- Enhances platelet adhesion

**Indications:**
- Mild hemophilia A
- von Willebrand disease (Type 1)
- Uremic platelet dysfunction
- Platelet dysfunction from antiplatelet drugs

**Dosing:** 0.3 mcg/kg IV over 15-30 minutes

**Limitations:**
- Tachyphylaxis with repeated dosing
- Hyponatremia risk
- Not effective for all bleeding disorders

## Recombinant Factor VIIa (rFVIIa)

**Mechanism:** Enhances thrombin generation on activated platelet surface

**Approved Indications:**
- Hemophilia with inhibitors
- Factor VII deficiency
- Glanzmann thrombasthenia

**Off-Label Use (controversial):**
- Massive hemorrhage unresponsive to standard therapy
- Warfarin reversal (now superseded by PCCs)
- Trauma (limited evidence)

**Risks:**
- Thrombotic complications
- Very expensive
- Limited evidence for off-label use

## Fibrin Sealants and Topical Hemostatics

### Fibrin Sealants
- Combine fibrinogen and thrombin to form fibrin clot
- Applied directly to bleeding surface
- Examples: Tisseel, Evicel

### Topical Hemostatic Agents

**Absorbable Materials:**
- Oxidized cellulose (Surgicel)
- Gelatin sponge (Gelfoam)
- Microfibrillar collagen

**Active Agents:**
- Topical thrombin
- Topical tranexamic acid
- Combination products (FloSeal, Surgiflo)

## Vitamin K

**Role in Blood Conservation:**
- Essential for synthesis of factors II, VII, IX, X, Protein C and S
- Preoperative correction of vitamin K deficiency reduces bleeding

**Indications:**
- Warfarin reversal (with PCCs for urgent reversal)
- Liver disease
- Malabsorption
- Prolonged antibiotic use

**Dosing:**
- Oral: 1-10 mg
- IV: 1-10 mg slowly (anaphylaxis risk)
- SC: Less reliable absorption', 5);

-- Section 6: Postoperative Blood Conservation
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'content', 'Postoperative Blood Conservation and Transfusion Thresholds', 
'## Restrictive Transfusion Strategies

Multiple randomized controlled trials have demonstrated that restrictive transfusion strategies (transfusing at lower hemoglobin thresholds) are at least as safe as, and often superior to, liberal strategies.

### Evidence Summary

**TRICC Trial (Critical Care):**
- Restrictive (Hgb 7 g/dL trigger) vs Liberal (Hgb 10 g/dL trigger)
- No difference in 30-day mortality
- Trend toward benefit with restrictive in younger and less sick patients

**FOCUS Trial (Hip Fracture):**
- Restrictive (Hgb 8 g/dL or symptoms) vs Liberal (Hgb 10 g/dL)
- No difference in mortality, functional recovery, or MI

**TRICS III (Cardiac Surgery):**
- Restrictive (Hgb 7.5 g/dL) vs Liberal (Hgb 9.5 g/dL)
- Non-inferior for composite outcome

### Current Recommendations

| Patient Population | Transfusion Threshold |
|-------------------|----------------------|
| Stable ICU patients | Hgb 7 g/dL |
| Postoperative patients | Hgb 7-8 g/dL |
| Cardiac surgery | Hgb 7.5 g/dL |
| Acute coronary syndrome | Hgb 8-10 g/dL |
| Symptomatic anemia | Based on symptoms |

**Key Principle:** Transfuse based on clinical assessment, not numbers alone.

## Postoperative Cell Salvage

### Indications
- Large postoperative blood loss via drains
- Orthopedic procedures (especially knee/hip arthroplasty)
- Cardiac surgery (mediastinal drainage)

### Methods
1. **Direct Reinfusion:** Drain blood filtered and returned
2. **Washed Cell Salvage:** Blood processed through cell saver before return

### Considerations
- Maximum 6-hour collection period
- Reinfusion within 6 hours of collection
- Bacterial contamination risk with prolonged collection
- Quality of salvaged blood decreases with time

## Reducing Phlebotomy Blood Loss

Often overlooked, diagnostic blood sampling contributes significantly to ICU anemia.

### Strategies
- Pediatric tubes for blood collection
- Point-of-care testing when appropriate
- Eliminate unnecessary tests
- Closed blood sampling systems
- Cluster blood draws
- Use arterial line waste for testing instead of discarding

## Optimizing Coagulation

### Coagulation Support
- Fresh frozen plasma for factor deficiency
- Platelet transfusion for thrombocytopenia or dysfunction
- Cryoprecipitate for hypofibrinogenemia
- Prothrombin complex concentrates for vitamin K antagonist reversal

### Point-of-Care Coagulation Testing
- Thromboelastography (TEG)
- Rotational thromboelastometry (ROTEM)
- Guides targeted therapy and reduces overall transfusion

## Iron Supplementation Postoperatively

- Continue oral iron to replenish stores
- IV iron if oral not tolerated or absorbed
- Facilitates recovery from anemia without transfusion', 6);

-- Section 7: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'key_points', 'Key Points', 
'1. **Three Pillars of PBM**: Optimize red cell mass, minimize blood loss, tolerate anemia

2. **Preoperative Anemia**: Screen 4-6 weeks before surgery; treat iron deficiency with oral or IV iron; consider ESAs for selected patients

3. **PAD Protocol**: Begin 4-6 weeks before surgery, donate weekly, last donation >72 hours pre-op; high wastage rates limit utility

4. **ANH Principle**: Remove blood pre-incision, maintain normovolemia with fluids, return fresh blood post-operatively; blood stored at room temperature for up to 8 hours

5. **Cell Salvage Indications**: Expected blood loss >1000 mL; modern evidence supports use in cancer and obstetrics with appropriate filters

6. **Tranexamic Acid**: Give within 3 hours for trauma; 10-20 mg/kg for surgery; reduces fibrinolysis and bleeding

7. **Restrictive Transfusion**: Threshold of Hgb 7 g/dL for stable patients is safe; higher thresholds (8-10 g/dL) for ACS

8. **Hypothermia Impairs Coagulation**: Maintain normothermia; warm fluids and use warming devices

9. **Cell Salvage Contraindications**: Relative with modern techniques; use leukocyte depletion filters for cancer and obstetrics

10. **DDAVP**: Releases vWF and FVIII; useful in mild hemophilia A, vWD Type 1, and uremic platelet dysfunction; tachyphylaxis occurs with repeated dosing', 7);

-- Section 8: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'clinical_pearls', 'Clinical Pearls', 
'💡 **Pearl 1**: "The best transfusion is the one you don''t give." Every unit of allogeneic blood carries risk - always ask if transfusion is truly necessary.

💡 **Pearl 2**: IV iron can raise hemoglobin by 1-2 g/dL in 2-3 weeks - faster than oral iron and better tolerated. Consider for patients with limited time before surgery.

💡 **Pearl 3**: In trauma, give tranexamic acid as early as possible. After 3 hours, the benefit disappears and harm may increase.

💡 **Pearl 4**: ANH blood is stored at room temperature and must be used within 8 hours. Keep it in the OR and reinfuse last unit first (contains highest hematocrit).

💡 **Pearl 5**: Cell salvage can be used in cancer surgery with a leukocyte depletion filter. Tumor cell contamination has not been shown to increase recurrence.

💡 **Pearl 6**: A single unit of blood costs approximately $500-1000 when all processing and administration costs are included. Blood conservation is also cost conservation.

💡 **Pearl 7**: Don''t forget diagnostic phlebotomy as a source of blood loss. ICU patients can lose 40-70 mL daily from blood sampling.

💡 **Pearl 8**: When using DDAVP, wait 30-60 minutes before surgery for maximum effect. Tachyphylaxis develops with repeated doses (space at least 24-48 hours).

💡 **Pearl 9**: The CRASH-2 trial showed that for every 67 trauma patients treated with TXA, one additional life is saved. This is a powerful NNT.

💡 **Pearl 10**: Point-of-care coagulation testing (TEG/ROTEM) allows targeted therapy and has been shown to reduce overall blood product usage in cardiac surgery.', 8);

-- Section 9: References
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00002-0000-0000-0000-000000000002', 'references', 'References', 'See reference list below.', 9);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('art00002-0000-0000-0000-000000000002', 1, 'Shander A, et al. Patient Blood Management: Science and Practice. Anesth Analg. 2012;115(4):807-815.', '10.1213/ANE.0b013e31824f4541', '22492184', NULL),
('art00002-0000-0000-0000-000000000002', 2, 'CRASH-2 Trial Collaborators. Effects of tranexamic acid on death, vascular occlusive events, and blood transfusion in trauma patients with significant haemorrhage. Lancet. 2010;376(9734):23-32.', '10.1016/S0140-6736(10)60835-5', '20554319', NULL),
('art00002-0000-0000-0000-000000000002', 3, 'Hébert PC, et al. A multicenter, randomized, controlled clinical trial of transfusion requirements in critical care (TRICC). N Engl J Med. 1999;340(6):409-417.', '10.1056/NEJM199902113400601', '9971864', NULL),
('art00002-0000-0000-0000-000000000002', 4, 'Carson JL, et al. Liberal or restrictive transfusion in high-risk patients after hip surgery (FOCUS). N Engl J Med. 2011;365(26):2453-2462.', '10.1056/NEJMoa1012452', '22168590', NULL),
('art00002-0000-0000-0000-000000000002', 5, 'Mazer CD, et al. Restrictive or liberal red-cell transfusion for cardiac surgery (TRICS III). N Engl J Med. 2017;377(22):2133-2144.', '10.1056/NEJMoa1711818', '29130845', NULL),
('art00002-0000-0000-0000-000000000002', 6, 'Klein AA, et al. Association of Anaesthetists guidelines: cell salvage for peri-operative blood conservation. Anaesthesia. 2018;73(9):1141-1150.', '10.1111/anae.14331', '29893997', NULL),
('art00002-0000-0000-0000-000000000002', 7, 'Muñoz M, et al. International consensus statement on the peri-operative management of anaemia and iron deficiency. Anaesthesia. 2017;72(2):233-247.', '10.1111/anae.13773', '27996086', NULL),
('art00002-0000-0000-0000-000000000002', 8, 'Waters JH. Indications and contraindications of cell salvage. Transfusion. 2004;44(12 Suppl):40S-44S.', '10.1111/j.0041-1132.2004.04176.x', '15585005', NULL),
('art00002-0000-0000-0000-000000000002', 9, 'Patidar GK, et al. Acute normovolemic hemodilution: A practical review. J Anaesthesiol Clin Pharmacol. 2015;31(2):249-254.', '10.4103/0970-9185.155163', '25948912', NULL),
('art00002-0000-0000-0000-000000000002', 10, 'WOMAN Trial Collaborators. Effect of early tranexamic acid administration on mortality, hysterectomy, and other morbidities in women with post-partum haemorrhage (WOMAN). Lancet. 2017;389(10084):2105-2116.', '10.1016/S0140-6736(17)30638-4', '28456509', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 1,
'A 55-year-old woman is scheduled for elective hysterectomy in 6 weeks. Her hemoglobin is 9.5 g/dL. Iron studies show ferritin 8 ng/mL and transferrin saturation 10%. What is the most appropriate initial treatment?',
'Proceed with surgery as planned without intervention',
'Transfuse 2 units of packed red blood cells',
'Begin oral iron supplementation',
'Cancel surgery and refer to hematology',
'Start erythropoietin immediately',
'C',
'This patient has iron deficiency anemia (low ferritin and transferrin saturation) with 6 weeks until surgery. Oral iron supplementation is appropriate first-line therapy with sufficient time for response. IV iron would be considered if oral fails or is not tolerated. Preoperative transfusion should be avoided when there is time to treat the underlying cause. ESAs are reserved for specific indications and require adequate iron stores.',
'7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 2,
'According to the CRASH-2 trial, tranexamic acid should be administered within what time frame after trauma to provide mortality benefit?',
'30 minutes',
'1 hour',
'3 hours',
'6 hours',
'12 hours',
'C',
'The CRASH-2 trial demonstrated that tranexamic acid reduces mortality in bleeding trauma patients when administered within 3 hours of injury. After 3 hours, the benefit is lost and there may actually be increased harm. The earlier TXA is given, the greater the benefit. The protocol calls for 1 g IV over 10 minutes, followed by 1 g over 8 hours.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 3,
'During acute normovolemic hemodilution, blood removed from the patient should be stored at what temperature and reinfused within what time period?',
'Room temperature; 8 hours',
'4°C; 24 hours',
'37°C; 4 hours',
'-20°C; 72 hours',
'Room temperature; 24 hours',
'A',
'Blood collected during ANH should be stored at room temperature (not refrigerated) and must be reinfused within 8 hours. Room temperature storage preserves platelet function and coagulation factors. The blood is reinfused in reverse order (last out, first in) because the first units collected have the highest hematocrit.',
'9');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 4,
'A stable ICU patient without cardiac disease has a hemoglobin of 7.5 g/dL. According to current evidence-based recommendations, what is the appropriate transfusion threshold?',
'Transfuse immediately to maintain Hgb >10 g/dL',
'Transfuse to maintain Hgb >9 g/dL',
'Transfuse to maintain Hgb >8 g/dL',
'Transfuse to maintain Hgb ≥7 g/dL',
'No transfusion needed regardless of hemoglobin level',
'D',
'The TRICC trial and subsequent studies support a restrictive transfusion threshold of hemoglobin 7 g/dL for stable ICU patients without acute coronary syndrome. At 7.5 g/dL, this patient does not require transfusion. Liberal transfusion strategies (maintaining higher hemoglobin) have not shown benefit and may cause harm.',
'3,4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 5,
'Which of the following is the mechanism of action of desmopressin (DDAVP) in promoting hemostasis?',
'Inhibits plasminogen activation',
'Releases von Willebrand factor and Factor VIII from endothelial stores',
'Directly activates the extrinsic coagulation pathway',
'Inhibits platelet aggregation inhibitors',
'Stimulates hepatic synthesis of clotting factors',
'B',
'DDAVP (desmopressin) is a synthetic vasopressin analog that releases von Willebrand factor (vWF) and Factor VIII from endothelial cell Weibel-Palade bodies. This enhances platelet adhesion and improves hemostasis in conditions like mild hemophilia A, Type 1 von Willebrand disease, and uremic platelet dysfunction. Tachyphylaxis develops with repeated dosing due to depletion of endothelial stores.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 6,
'What is a major limitation of preoperative autologous blood donation (PAD) that has reduced its widespread adoption?',
'Increased infection risk compared to allogeneic blood',
'Unable to be stored for more than 24 hours',
'High wastage rates with up to 50% of units unused',
'Requirement for special blood bank facilities not widely available',
'Contraindicated in patients over age 50',
'C',
'A major limitation of PAD is the high wastage rate - up to 50% of preoperatively donated autologous units are never transfused. This represents significant resource waste and cost. Additionally, PAD may cause preoperative anemia, and patients may still require allogeneic blood if PAD units are depleted during surgery.',
'1,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 7,
'A patient is undergoing major cancer surgery. The surgeon wishes to use intraoperative cell salvage. Which modification is recommended?',
'Cell salvage is absolutely contraindicated in cancer surgery',
'Use a leukocyte depletion filter before reinfusion',
'Only wash the salvaged blood once instead of twice',
'Irradiate the blood before reinfusion',
'No modifications are needed',
'B',
'Current evidence supports the use of intraoperative cell salvage in cancer surgery with the addition of a leukocyte depletion filter before reinfusion. Studies have not shown increased cancer recurrence with cell salvage. The leukocyte filter removes tumor cells along with white blood cells. This represents a change from older guidelines that considered malignancy an absolute contraindication.',
'6,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 8,
'Which of the following conditions would make a patient UNSUITABLE for acute normovolemic hemodilution?',
'Elective orthopedic surgery',
'Hemoglobin of 14 g/dL',
'Unstable coronary artery disease',
'Age over 60 years',
'Body weight under 70 kg',
'C',
'Unstable coronary artery disease is a contraindication to ANH because the induced anemia (target hematocrit 25-30%) may cause myocardial ischemia in patients with limited coronary reserve. Other contraindications include preoperative anemia (Hgb <12 g/dL), severe renal/hepatic dysfunction, coagulopathy, and bacteremia. Age and weight alone are not contraindications.',
'9');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 9,
'The TRICC trial demonstrated that a restrictive transfusion strategy (trigger of 7 g/dL) compared to a liberal strategy (trigger of 10 g/dL) resulted in:',
'Significantly higher 30-day mortality in the restrictive group',
'No difference in 30-day mortality between groups',
'Significantly lower mortality in the liberal group',
'Higher rates of cardiac events in the restrictive group',
'Increased hospital length of stay in the restrictive group',
'B',
'The landmark TRICC trial showed no difference in 30-day mortality between restrictive (Hgb 7 g/dL trigger) and liberal (Hgb 10 g/dL trigger) transfusion strategies. There was actually a trend toward improved outcomes with restrictive transfusion in younger patients and those with lower APACHE II scores. This trial fundamentally changed transfusion practice.',
'3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 10,
'What is the typical dose of tranexamic acid for surgical blood conservation?',
'1-2 mg/kg IV',
'10-20 mg/kg IV',
'50-100 mg/kg IV',
'0.3 mcg/kg IV',
'100-200 mg total dose IV',
'B',
'For surgical blood conservation, tranexamic acid is typically dosed at 10-20 mg/kg IV given before incision, with possible repeat dosing. For trauma, the CRASH-2 protocol uses 1 g IV over 10 minutes followed by 1 g over 8 hours. The dose of 0.3 mcg/kg is the dose for DDAVP, not TXA.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 11,
'During intraoperative cell salvage, the final washed red cell product typically has a hematocrit of:',
'20-30%',
'30-40%',
'40-50%',
'50-80%',
'90-100%',
'D',
'The final washed red cell product from cell salvage typically has a hematocrit of 50-80%. The washing process removes plasma, platelets, clotting factors, free hemoglobin, and debris. The concentrated red cells are suspended in saline. Quality indicators include hematocrit >50%, free hemoglobin <1%, and absence of fat globules.',
'6,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 12,
'Which statement regarding intravenous iron therapy is correct?',
'IV iron takes 6-8 weeks to raise hemoglobin significantly',
'IV iron can raise hemoglobin by 1-2 g/dL within 2-3 weeks',
'IV iron is contraindicated in patients with iron deficiency',
'IV iron must be given daily for effectiveness',
'IV iron is less effective than oral iron in all situations',
'B',
'IV iron can raise hemoglobin by 1-2 g/dL within 2-3 weeks, which is faster than oral iron (4-6 weeks). IV iron is indicated when oral iron fails, is not tolerated, when there is malabsorption, or when time before surgery is limited. Modern IV iron preparations like ferric carboxymaltose can be given as a single large dose.',
'7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 13,
'The three pillars of Patient Blood Management are:',
'Transfuse early, transfuse liberally, transfuse often',
'Screen donors, test blood, match carefully',
'Optimize red cell mass, minimize blood loss, tolerate anemia',
'Phlebotomy, plasmapheresis, plateletpheresis',
'Prevent infection, treat infection, vaccinate',
'C',
'The three pillars of Patient Blood Management are: (1) Optimize the patient''s red cell mass (treat preoperative anemia), (2) Minimize blood loss and bleeding (surgical technique, pharmacological agents, cell salvage), and (3) Harness and optimize physiological tolerance of anemia (restrictive transfusion thresholds). This comprehensive approach reduces need for allogeneic transfusion.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 14,
'When using acute normovolemic hemodilution, crystalloid should be replaced at what ratio to blood removed?',
'1:1 ratio',
'2:1 ratio',
'3:1 ratio',
'4:1 ratio',
'5:1 ratio',
'C',
'When replacing blood with crystalloid during ANH, a 3:1 ratio is used (3 mL crystalloid for every 1 mL blood removed). If colloid is used instead, a 1:1 ratio is appropriate. The goal is to maintain normovolemia while achieving the target hematocrit of 25-30%.',
'9');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 15,
'Hypothermia during surgery impairs hemostasis primarily by:',
'Stimulating excessive fibrinolysis',
'Reducing platelet count',
'Impairing coagulation factor function and platelet activity',
'Causing disseminated intravascular coagulation',
'Accelerating Factor V degradation',
'C',
'Hypothermia impairs hemostasis by reducing the enzymatic activity of coagulation factors and impairing platelet function (adhesion, aggregation, and secretion). Even mild hypothermia (35°C) can significantly increase surgical bleeding. Maintaining normothermia with warming blankets, fluid warmers, and increased ambient temperature is essential for blood conservation.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 16,
'For preoperative autologous blood donation, the last donation should be made at least how long before surgery?',
'24 hours',
'72 hours',
'1 week',
'2 weeks',
'4 weeks',
'B',
'The last preoperative autologous blood donation should be made at least 72 hours (3 days) before surgery. This allows time for plasma volume restoration and ensures the patient is not acutely hypovolemic at the time of surgery. Iron and ESA supplementation help maintain hemoglobin during the donation period.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 17,
'The WOMAN trial demonstrated that tranexamic acid in postpartum hemorrhage:',
'Had no effect on maternal mortality',
'Increased the rate of hysterectomy',
'Reduced death due to bleeding',
'Was only effective if given within 30 minutes',
'Was associated with increased thromboembolic events',
'C',
'The WOMAN trial showed that tranexamic acid significantly reduced death due to bleeding in women with postpartum hemorrhage, particularly when given within 3 hours of delivery. There was no increase in thromboembolic events. This has led to TXA being included in guidelines for PPH management worldwide.',
'10');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 18,
'What is the primary reason DDAVP (desmopressin) develops tachyphylaxis with repeated dosing?',
'Development of antibodies against the drug',
'Depletion of endothelial stores of von Willebrand factor',
'Downregulation of V2 receptors',
'Hepatic enzyme induction',
'Renal excretion becomes more efficient',
'B',
'DDAVP releases von Willebrand factor and Factor VIII from endothelial storage sites (Weibel-Palade bodies). With repeated dosing, these stores become depleted, leading to diminished response (tachyphylaxis). For this reason, doses should be spaced at least 24-48 hours apart, and the drug becomes less effective with each successive dose.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 19,
'Cell salvage is generally recommended when anticipated surgical blood loss exceeds:',
'250 mL',
'500 mL',
'1000 mL',
'1500 mL',
'2000 mL',
'C',
'Cell salvage is generally recommended when anticipated blood loss exceeds 1000 mL or when there is anticipated need for transfusion. The cost-effectiveness threshold varies by institution, but 1000 mL is a commonly used guideline. The setup and processing costs must be weighed against the potential benefit.',
'6,8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00002-0000-0000-0000-000000000002', 20,
'In obstetric surgery with potential amniotic fluid contamination, cell salvage can be used with which modification?',
'Cell salvage is absolutely contraindicated',
'Use a separate collection reservoir',
'Add additional washing cycles',
'Use a leukocyte depletion filter',
'Only collect blood after delivery',
'D',
'Cell salvage can be used in obstetric surgery with the addition of a leukocyte depletion filter. The concern about amniotic fluid contamination and risk of amniotic fluid embolism has been addressed in studies showing safety with leukocyte filters. This is particularly valuable for patients at high risk of major hemorrhage or those who decline allogeneic transfusion.',
'6');
