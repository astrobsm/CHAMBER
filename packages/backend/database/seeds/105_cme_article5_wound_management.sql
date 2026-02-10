-- CME Article 5: Surgical Wounds and Wound Management
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100005-0000-0000-0000-000000000005',
    'b0000005-0000-0000-0000-000000000005',
    'a0000001-0000-0000-0000-000000000001',
    'Surgical Wounds and Evidence-Based Wound Management',
    'Principles of Wound Assessment, Care, and Complication Prevention',
    'Effective wound management is a cornerstone of surgical practice. This CME article provides a comprehensive review of wound assessment, classification, and evidence-based management strategies. Topics covered include wound bed preparation, debridement techniques, dressing selection, negative pressure wound therapy, and the prevention and management of surgical site infections. Special emphasis is placed on practical clinical decision-making and optimization of wound healing outcomes.',
    'UNTH Surgery Department, Wound Care Division',
    45,
    2.0,
    'medium',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'introduction', 'Introduction',
'Wound management represents one of the oldest and most fundamental aspects of medical practice. From ancient civilizations using honey and wine to treat wounds to modern advanced wound care technologies, the goal has remained constant: to create optimal conditions for wound healing.

**The Burden of Wounds:**
- Surgical site infections (SSIs) affect 2-5% of surgical patients
- Chronic wounds affect approximately 6.5 million patients in the US annually
- Annual wound care costs exceed $25 billion
- Wounds significantly impact quality of life and functional status

**Modern Wound Management Principles:**
The approach to wound care has evolved from passive protection to active optimization of the wound healing environment. Key principles include:

1. **Wound bed preparation**: The TIME framework (Tissue, Infection, Moisture, Edge)
2. **Moist wound healing**: Maintaining optimal moisture balance
3. **Biofilm management**: Addressing the role of bacterial biofilms
4. **Advanced therapies**: Including negative pressure wound therapy and skin substitutes

This article will provide the foundation for evidence-based wound assessment and management decisions.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Apply systematic wound assessment techniques including measurement, tissue classification, and documentation

2. Classify wounds by etiology, depth, and chronicity to guide management

3. Apply the TIME framework for wound bed preparation

4. Select appropriate debridement methods based on wound characteristics

5. Choose evidence-based wound dressings based on wound needs

6. Implement negative pressure wound therapy (NPWT) appropriately

7. Recognize and manage surgical site infections using current guidelines

8. Identify factors that impair wound healing and implement optimization strategies

9. Describe indications for advanced wound therapies including skin grafts and flaps

10. Develop comprehensive wound care plans for complex patients', 2);

-- Section 3: Wound Assessment
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'content', 'Systematic Wound Assessment',
'## Components of Wound Assessment

### 1. History
- Wound etiology and duration
- Previous treatments and response
- Pain characteristics
- Constitutional symptoms (fever, weight loss)
- Comorbidities affecting healing
- Medications (steroids, anticoagulants, immunosuppressants)
- Nutritional status
- Smoking history

### 2. Wound Location
- Anatomic site
- Proximity to joints, vessels, nerves
- Weight-bearing status
- Exposure to contamination

### 3. Wound Dimensions
**Measure at each encounter:**
- **Length**: Greatest head-to-toe dimension
- **Width**: Greatest side-to-side dimension
- **Depth**: Use sterile probe; measure from wound surface to deepest point
- **Undermining/Tunneling**: Document using clock-face notation (12 o''clock = head)
- **Surface area**: Length × Width (cm²)
- **Volume**: For irregular wounds; can use saline instillation

### 4. Wound Bed Tissue Type

**Color-Based Classification:**
- **Black (Necrotic/Eschar)**: Dead tissue; requires debridement
- **Yellow (Slough)**: Fibrinous debris, devitalized tissue; requires debridement
- **Red (Granulating)**: Healthy granulation tissue; protect and promote
- **Pink (Epithelializing)**: Healing epithelium; protect, minimize trauma

**Document percentage of each tissue type** (e.g., 30% slough, 70% granulation)

### 5. Wound Exudate
**Quantity:**
- None, Scant, Moderate, Copious

**Quality:**
- **Serous**: Clear, watery (normal healing)
- **Serosanguinous**: Pinkish (normal healing)
- **Sanguinous**: Bloody (trauma or pathology)
- **Purulent**: Thick, opaque, colored (infection)

### 6. Wound Edges and Periwound Skin
**Wound Edges:**
- Attached vs. unattached
- Rolled (epibole): Indicates stalled healing
- Undermined: Measure depth and direction
- Macerated: Excessive moisture

**Periwound Skin:**
- Erythema (infection, irritation)
- Induration (cellulitis)
- Maceration (excessive drainage)
- Callus (pressure/friction)

### 7. Signs of Infection
**Acute Wounds:**
- Classical signs: Rubor, calor, dolor, tumor, functio laesa
- Purulent drainage
- Fever, leukocytosis

**Chronic Wounds (Subtle Signs):**
- Increased exudate
- Friable granulation tissue
- New or increased pain
- Wound deterioration despite treatment
- Foul odor

### 8. Wound Photography
- Standardize positioning, lighting, distance
- Include ruler and date
- Obtain informed consent
- Part of medical record', 3);

-- Section 4: Wound Classification
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'content', 'Wound Classification Systems',
'## Classification by Depth

### Superficial (Partial Thickness)
- Involves epidermis only
- Examples: Abrasions, superficial burns
- Healing: Re-epithelialization from wound edges and skin appendages

### Deep Partial Thickness
- Involves epidermis and part of dermis
- Hair follicles and sweat glands may remain intact
- Healing: Slower re-epithelialization; may scar

### Full Thickness
- Complete loss of dermis
- May extend to subcutaneous tissue, fascia, muscle, bone
- Healing: Contraction and epithelialization from edges only; requires intervention

## Classification by Etiology

### Surgical/Traumatic Wounds
- Incisional wounds
- Lacerations
- Abrasions
- Punctures
- Avulsions
- Crush injuries

### Pressure Injuries (NPUAP/EPUAP Staging)

**Stage 1:** Non-blanchable erythema of intact skin
**Stage 2:** Partial thickness loss (shallow ulcer, blister)
**Stage 3:** Full thickness skin loss (fat visible)
**Stage 4:** Full thickness tissue loss (bone/tendon exposed)
**Unstageable:** Full thickness, base covered by slough/eschar
**Deep Tissue Injury:** Intact skin with deep tissue damage

### Diabetic Foot Ulcers (Wagner Classification)
**Grade 0:** At-risk foot, no ulcer
**Grade 1:** Superficial ulcer
**Grade 2:** Deep ulcer to tendon, bone, or joint
**Grade 3:** Deep ulcer with abscess or osteomyelitis
**Grade 4:** Localized gangrene
**Grade 5:** Extensive gangrene

### Venous Leg Ulcers
- Located in gaiter area (medial lower leg)
- Irregular borders
- Associated with hemosiderin staining, lipodermatosclerosis
- Edema, varicosities

### Arterial Ulcers
- Located on toes, between toes, over bony prominences
- Punched-out appearance, pale base
- Associated with hair loss, thin shiny skin
- Absent or diminished pulses, claudication

## Classification by Duration

### Acute Wounds
- Progress through orderly healing phases
- Expected to heal within 4-6 weeks
- Examples: Surgical incisions, uncomplicated trauma

### Chronic Wounds
- Fail to progress through healing phases in expected timeframe
- Stalled in inflammatory phase
- Usually >4-6 weeks duration
- Examples: Pressure injuries, diabetic ulcers, venous ulcers

### Factors Making Wounds Chronic
- Persistent infection/biofilm
- Repeated trauma
- Underlying disease (diabetes, vascular disease)
- Poor nutrition
- Immunosuppression
- Senescent cells at wound edge', 4);

-- Section 5: Wound Bed Preparation
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'content', 'Wound Bed Preparation: The TIME Framework',
'## The TIME Framework

The TIME framework provides a systematic approach to wound bed preparation:

### T - Tissue (Non-Viable or Deficient)

**Problem:** Necrotic tissue, slough, or eschar
**Intervention:** Debridement

**Methods of Debridement:**

**1. Sharp/Surgical Debridement**
- Most rapid and effective
- Performed in OR or bedside
- Indicated for extensive necrotic tissue, urgent situations
- Requires skilled practitioner

**2. Mechanical Debridement**
- Wet-to-dry dressings (non-selective, painful, falling out of favor)
- Hydrotherapy/wound irrigation
- Monofilament pad debridement

**3. Enzymatic Debridement**
- Collagenase (Santyl)
- Selective for necrotic tissue
- Daily application
- Inactivated by silver products

**4. Autolytic Debridement**
- Uses body''s own enzymes under occlusive/semi-occlusive dressings
- Slow but selective
- Hydrogels, hydrocolloids, films
- Contraindicated in infected wounds

**5. Biological Debridement**
- Medical grade maggot therapy (Lucilia sericata)
- Highly selective
- Also disinfects and stimulates healing
- Patient acceptance may be limited

### I - Infection/Inflammation

**Problem:** Bacterial imbalance, critical colonization, biofilm
**Intervention:** Reduce bacterial burden

**Wound Bioburden Continuum:**
1. **Contamination**: Bacteria present, not multiplying
2. **Colonization**: Bacteria multiplying, no host response
3. **Critical Colonization**: High bacteria, subtle host response, impaired healing
4. **Infection**: Bacteria invading tissue, overt host response

**Management:**
- Debridement disrupts biofilm
- Topical antimicrobials: Silver, iodine, PHMB, honey
- Systemic antibiotics for clinical infection/cellulitis
- Antibiotics do NOT penetrate biofilm well

### M - Moisture (Imbalance)

**Problem:** Too wet or too dry
**Intervention:** Maintain optimal moisture balance

**Too Wet:**
- Maceration of periwound skin
- Increased infection risk
- Use absorptive dressings (foams, alginates, hydrofibers)

**Too Dry:**
- Desiccation impairs cell migration
- Slowed healing
- Use moisture-donating dressings (hydrogels)

**Optimal Moisture:**
- Moist wound bed for cell migration
- Protected periwound skin

### E - Edge (Non-Advancing)

**Problem:** Wound edges fail to migrate (epibole, senescent cells)
**Intervention:** Stimulate edge advancement

**Strategies:**
- Reassess for underlying factors (ischemia, pressure, infection)
- Sharp debridement of rolled edges
- Consider advanced therapies (skin substitutes, NPWT, growth factors)
- Skin grafting for large wounds', 5);

-- Section 6: Wound Dressings
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'content', 'Wound Dressing Selection',
'## Principles of Dressing Selection

The ideal wound dressing:
- Maintains moist wound environment
- Manages exudate appropriately
- Provides thermal insulation
- Protects from bacterial contamination
- Allows gas exchange
- Non-traumatic removal
- Cost-effective

**Match dressing to wound needs**

## Dressing Categories

### 1. Gauze
**Composition:** Woven or non-woven cotton/synthetic fibers
**Uses:** Traditional coverage, packing, mechanical debridement
**Advantages:** Inexpensive, widely available
**Disadvantages:** Adherent, traumatic removal, requires frequent changes, non-selective debridement
**Modern Role:** Limited; backup when other dressings unavailable

### 2. Films (Transparent Dressings)
**Composition:** Thin polyurethane membrane
**Uses:** Superficial wounds, IV sites, secondary dressings, autolytic debridement
**Advantages:** Waterproof, allows visualization, reduces friction
**Disadvantages:** No absorption, can cause maceration with exudate
**Examples:** Tegaderm, OpSite

### 3. Hydrocolloids
**Composition:** Gelatin, pectin, carboxymethylcellulose
**Uses:** Shallow wounds with light-moderate exudate, autolytic debridement
**Advantages:** Waterproof, promotes moist healing, can be worn several days
**Disadvantages:** Characteristic odor on removal (not infection), may cause maceration
**Examples:** DuoDERM, Comfeel

### 4. Hydrogels
**Composition:** Water-based polymers (sheets or amorphous gels)
**Uses:** DRY wounds, sloughy wounds, painful wounds
**Advantages:** Donate moisture, soothing, autolytic debridement
**Disadvantages:** Cannot absorb exudate, require secondary dressing
**Examples:** IntraSite, SAF-Gel

### 5. Foams
**Composition:** Polyurethane foam
**Uses:** Moderate-heavy exudate, granulating wounds
**Advantages:** Highly absorptive, atraumatic, protects wound
**Disadvantages:** May require secondary dressing, not for dry wounds
**Examples:** Mepilex, Allevyn

### 6. Alginates
**Composition:** Seaweed-derived (calcium alginate)
**Uses:** Heavily exudating wounds, bleeding wounds
**Advantages:** Highly absorptive, hemostatic, gels on contact with exudate
**Disadvantages:** Require secondary dressing, not for dry wounds
**Examples:** Kaltostat, Aquacel (hydrofiber)

### 7. Antimicrobial Dressings
**Silver:** Broad-spectrum antimicrobial, available in multiple forms
**Iodine:** Cadexomer iodine (Iodosorb) for infected/critically colonized wounds
**PHMB:** Polyhexamethylene biguanide, broad-spectrum
**Honey:** Medical-grade honey (Medihoney), antimicrobial and debriding

### 8. Collagen/Skin Substitutes
**Uses:** Chronic wounds, burns, surgical wounds
**Types:** Bovine collagen, porcine intestine, human dermis, bioengineered
**Action:** Provide scaffold, growth factors, or living cells
**Examples:** Integra, Apligraf, Oasis

## Clinical Decision Algorithm

| Wound Characteristic | Recommended Dressing |
|---------------------|---------------------|
| Dry, necrotic | Hydrogel |
| Sloughy, minimal exudate | Hydrocolloid, hydrogel |
| Light exudate | Film, hydrocolloid |
| Moderate exudate | Foam |
| Heavy exudate | Alginate, hydrofiber, foam |
| Infected/high bioburden | Antimicrobial (silver, iodine, honey) |
| Fragile periwound skin | Silicone-based (Mepilex) |
| Cavity wound | Ribbon alginate, hydrofiber, foam cavity |', 6);

-- Section 7: NPWT
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'content', 'Negative Pressure Wound Therapy',
'## Mechanism of Action

Negative Pressure Wound Therapy (NPWT) applies controlled sub-atmospheric pressure to the wound bed.

**Effects:**
1. **Macrodeformation:** Draws wound edges together, reducing wound size
2. **Microdeformation:** Mechanical stretch on cells stimulates proliferation
3. **Fluid removal:** Removes excess exudate and edema
4. **Increased perfusion:** Enhances blood flow to wound bed
5. **Reduced bioburden:** Moist, closed environment with exudate removal
6. **Granulation tissue:** Promotes rapid granulation tissue formation

## Indications

### Acute Wounds
- Open abdominal wounds (temporary closure)
- Traumatic wounds
- Surgical wound dehiscence
- Skin graft fixation

### Chronic Wounds
- Pressure injuries (stage 3-4)
- Diabetic foot ulcers
- Venous leg ulcers
- Chronic surgical wounds

### Other Uses
- Enterocutaneous fistula management (with modifications)
- Burn wounds
- Sternal wound infections

## Contraindications

### Absolute
- Untreated osteomyelitis
- Malignancy in the wound
- Necrotic tissue with eschar (debride first)
- Non-enteric fistulas to organs or body cavities
- Exposed blood vessels or anastomoses

### Relative
- Active bleeding
- Difficult hemostasis
- Patients on anticoagulation
- Wound close to bypass grafts

## Application Technique

1. **Prepare wound:** Debride necrotic tissue
2. **Protect structures:** Cover exposed vessels, nerves, organs with non-adherent barrier
3. **Cut foam:** Size to fit wound; avoid overlap onto intact skin
4. **Apply drape:** Create airtight seal, overlapping foam and 3-5 cm of periwound skin
5. **Apply suction pad:** Position over foam
6. **Connect tubing:** Ensure no kinks
7. **Initiate therapy:** Typical settings 75-125 mmHg continuous
8. **Monitor:** Check seal, canister fill, patient comfort

## Dressing Changes

- Every 48-72 hours (or as prescribed)
- More frequent for infected wounds
- Less frequent for skin graft fixation
- Document wound progress at each change

## Complications

- Pain (especially during dressing changes)
- Bleeding
- Infection
- Foam retention (always count pieces)
- Periwound skin damage
- Fistula development (rare)', 7);

-- Section 8: SSI Prevention
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'content', 'Surgical Site Infection Prevention',
'## SSI Definition and Classification

### Definition (CDC)
Infection occurring within 30 days of surgery (or 1 year if implant) meeting specific criteria.

### Classification by Depth

**Superficial Incisional SSI:**
- Skin and subcutaneous tissue only
- Purulent drainage OR
- Organisms isolated from wound culture

**Deep Incisional SSI:**
- Fascia and muscle
- Purulent drainage from deep incision
- Dehiscence with fever, pain, or tenderness

**Organ/Space SSI:**
- Any anatomic site opened during surgery
- Abscess or infection in organ/space

## Prevention Bundle: Preoperative Measures

### Patient Optimization
- **Glucose control:** Target perioperative glucose <200 mg/dL
- **Smoking cessation:** 4+ weeks preoperatively
- **Nutrition:** Correct malnutrition if time permits
- **Treat remote infections:** UTI, skin infections

### Skin Preparation
- **Preoperative bathing:** Chlorhexidine washes
- **Hair removal:** Clippers, not razors, immediately before surgery
- **Surgical scrub:** CHG-alcohol preferred over povidone-iodine

### Antimicrobial Prophylaxis
- Give within 60 minutes of incision (120 min for vancomycin, fluoroquinolones)
- Choose based on procedure and local resistance patterns
- Redose for long procedures or significant blood loss
- Discontinue within 24 hours postoperatively

## Prevention Bundle: Intraoperative Measures

### Normothermia
- Maintain core temperature >36°C
- Warming blankets, warm IV fluids

### Oxygenation
- Supplemental oxygen in perioperative period
- Ensure adequate tissue perfusion

### Glycemic Control
- Monitor and treat hyperglycemia
- Target <200 mg/dL

### Surgical Technique
- Meticulous hemostasis
- Gentle tissue handling
- Minimize operative time
- Avoid dead space
- Appropriate use of drains

### Traffic Control
- Limit OR personnel
- Keep doors closed
- Minimize movement in OR

## Prevention Bundle: Postoperative Measures

### Incision Care
- Keep dressing intact for 24-48 hours
- Sterile technique for dressing changes
- Educate patient on wound care

### Early Identification
- Monitor for signs of infection
- Low threshold for wound inspection
- Culture if infection suspected

## SSI Treatment

### Superficial SSI
- Open and drain
- Wet-to-dry dressings or NPWT
- Antibiotics usually not needed unless cellulitis

### Deep/Organ-Space SSI
- Source control (drainage, debridement)
- Appropriate cultures
- Systemic antibiotics
- May require operative intervention', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'key_points', 'Key Points',
'1. **Wound Assessment**: Document location, dimensions, tissue types (%, color), exudate, edges, and periwound skin at each encounter

2. **TIME Framework**: Tissue (debride), Infection (reduce bioburden), Moisture (balance), Edge (encourage advancement)

3. **Debridement Methods**: Sharp (fastest), enzymatic (selective), autolytic (slowest, use moist dressings), biological (maggots)

4. **Moist Wound Healing**: Evidence supports maintaining optimal moisture; avoid desiccation and maceration

5. **Dressing Selection**: Match to wound needs - hydrogel for dry wounds, foam/alginate for exudative wounds, antimicrobial for high bioburden

6. **NPWT Mechanism**: Macrodeformation (draws edges together), microdeformation (stimulates cells), removes exudate, promotes granulation

7. **NPWT Contraindications**: Malignancy in wound, untreated osteomyelitis, necrotic tissue, exposed vessels

8. **SSI Prevention Bundle**: Preop optimization, appropriate prophylactic antibiotics, normothermia, glycemic control, surgical technique

9. **Antibiotic Prophylaxis Timing**: Within 60 minutes of incision; discontinue within 24 hours postop

10. **Chronic Wound Definition**: Wound failing to progress through healing phases in expected timeframe (usually >4-6 weeks)', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: "If the wound isn''t healing, you''re missing something." Always reassess for uncontrolled infection, ischemia, pressure, or systemic factors.

💡 **Pearl 2**: The presence of odor during hydrocolloid removal is normal (autolysis of dead tissue) and should not be confused with infection.

💡 **Pearl 3**: Biofilms form within 24 hours of wound creation. Sharp debridement is the most effective way to disrupt biofilm.

💡 **Pearl 4**: Wet-to-dry dressings are non-selective debridement—they remove healthy granulation tissue along with slough. Use only when selective debridement isn''t available.

💡 **Pearl 5**: Silver dressings inactivate collagenase enzymatic debriders. Do not use them together.

💡 **Pearl 6**: Rolled (epibolic) wound edges indicate stalled healing. Sharp debridement of the edge can restart the healing process.

💡 **Pearl 7**: Always count NPWT foam pieces in and out. Retained foam is a preventable complication.

💡 **Pearl 8**: The best predictor of wound healing is wound size reduction. A 40-50% reduction in area at 4 weeks predicts healing at 12 weeks.

💡 **Pearl 9**: Antibiotics do not penetrate biofilm. In critically colonized or infected wounds, mechanical disruption (debridement) must accompany antimicrobial therapy.

💡 **Pearl 10**: Before blaming the wound for not healing, evaluate the patient—optimize nutrition, glucose control, perfusion, and offload pressure.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100005-0000-0000-0000-000000000005', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100005-0000-0000-0000-000000000005', 1, 'Schultz GS, et al. Wound bed preparation: a systematic approach to wound management. Wound Repair Regen. 2003;11(Suppl 1):S1-28.', '10.1046/j.1524-475x.11.s2.1.x', '12654015', NULL),
('a1100005-0000-0000-0000-000000000005', 2, 'Anderson DJ, et al. Strategies to prevent surgical site infections in acute care hospitals: 2014 update. Infect Control Hosp Epidemiol. 2014;35(6):605-627.', '10.1086/676022', '24799638', NULL),
('a1100005-0000-0000-0000-000000000005', 3, 'Argenta LC, Morykwas MJ. Vacuum-assisted closure: a new method for wound control and treatment. Ann Plast Surg. 1997;38(6):563-576.', '10.1097/00000637-199706000-00001', '9188970', NULL),
('a1100005-0000-0000-0000-000000000005', 4, 'Wound, Ostomy and Continence Nurses Society. Guideline for Prevention and Management of Pressure Ulcers. WOCN Clinical Practice Guideline Series. 2016.', NULL, NULL, NULL),
('a1100005-0000-0000-0000-000000000005', 5, 'James GA, et al. Biofilms in chronic wounds. Wound Repair Regen. 2008;16(1):37-44.', '10.1111/j.1524-475X.2007.00321.x', '18086294', NULL),
('a1100005-0000-0000-0000-000000000005', 6, 'Berríos-Torres SI, et al. CDC Guideline for the Prevention of Surgical Site Infection. JAMA Surg. 2017;152(8):784-791.', '10.1001/jamasurg.2017.0904', '28467526', NULL),
('a1100005-0000-0000-0000-000000000005', 7, 'Dumville JC, et al. Negative pressure wound therapy for treating surgical wounds healing by secondary intention. Cochrane Database Syst Rev. 2015;(6):CD011278.', '10.1002/14651858.CD011278.pub2', '26042534', NULL),
('a1100005-0000-0000-0000-000000000005', 8, 'Winter GD. Formation of the scab and the rate of epithelization of superficial wounds in the skin of the young domestic pig. Nature. 1962;193:293-294.', '10.1038/193293a0', '14007593', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 1,
'A wound bed that is 60% yellow and 40% red indicates:',
'60% slough/fibrin tissue requiring debridement and 40% healthy granulation tissue',
'60% infected tissue requiring antibiotics',
'60% epithelializing tissue and 40% granulating tissue',
'A wound that should not be debrided',
'A wound ready for skin grafting',
'A',
'Yellow tissue in a wound bed represents slough (fibrinous debris, devitalized tissue) which requires debridement to prepare the wound bed for healing. Red tissue represents healthy granulation tissue that should be protected. The TIME framework indicates that non-viable tissue (T) should be removed.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 2,
'According to the TIME framework, which component addresses bacterial biofilm and colonization?',
'Tissue',
'Infection/Inflammation',
'Moisture',
'Edge',
'None of the above',
'B',
'The "I" in TIME stands for Infection/Inflammation and addresses bacterial imbalance, critical colonization, and biofilm. Management includes debridement to disrupt biofilm, topical antimicrobials, and systemic antibiotics when indicated for clinical infection.', '{1,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 3,
'Which dressing type is most appropriate for a heavily exudating leg ulcer?',
'Hydrogel',
'Transparent film',
'Hydrocolloid',
'Alginate or foam dressing',
'Dry gauze',
'D',
'Heavily exudating wounds require absorptive dressings such as alginates, hydrofibers, or foam dressings. Hydrogels donate moisture and are for dry wounds. Films and hydrocolloids cannot manage heavy exudate and will cause maceration. Dry gauze provides suboptimal moist wound healing environment.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 4,
'A patient has a dry, necrotic heel eschar with no signs of infection. Which debridement method is most appropriate as initial management?',
'Immediate sharp surgical debridement',
'Autolytic debridement with hydrogel',
'Leave eschar intact and keep dry',
'Enzymatic debridement with collagenase',
'Mechanical wet-to-dry dressings',
'C',
'Stable, dry eschar on the heel (without infection, fluctuance, or drainage) should be left intact as it acts as a biological dressing. This is an exception to the general principle of debridement. If the eschar becomes unstable, infected, or the wound develops cellulitis, then debridement is indicated.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 5,
'What is the recommended timing for prophylactic antibiotic administration to prevent SSI?',
'24 hours before surgery',
'2 hours before surgery',
'Within 60 minutes of incision',
'At the time of skin closure',
'Postoperatively in recovery',
'C',
'Prophylactic antibiotics should be given within 60 minutes of surgical incision to achieve adequate tissue levels at the time of potential contamination. Vancomycin and fluoroquinolones require a 120-minute window due to longer infusion times. Antibiotics should be discontinued within 24 hours postoperatively.', '{2,6}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 6,
'Which of the following is an absolute contraindication to Negative Pressure Wound Therapy (NPWT)?',
'Diabetic foot ulcer',
'Sternal wound infection',
'Malignancy in the wound bed',
'Moderate exudate',
'Granulating wound',
'C',
'Malignancy in the wound bed is an absolute contraindication to NPWT because the negative pressure and increased blood flow may promote tumor growth and metastasis. Other absolute contraindications include untreated osteomyelitis, necrotic tissue with eschar, and exposed blood vessels or anastomoses.', '{3,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 7,
'What is the primary mechanism by which NPWT promotes wound healing?',
'Kills bacteria directly',
'Macrodeformation drawing wound edges together and microdeformation stimulating cell proliferation',
'Provides nutrition to the wound',
'Increases wound temperature',
'Delivers antibiotics to the wound',
'B',
'NPWT primarily works through macrodeformation (drawing wound edges together, reducing wound size) and microdeformation (mechanical stretch on cells stimulating proliferation and granulation tissue formation). It also removes excess exudate and edema, but does not directly kill bacteria or deliver medications.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 8,
'A wound that has not shown healing progress despite 6 weeks of treatment would be classified as:',
'An acute wound',
'A chronic wound',
'A surgical wound',
'A healing wound',
'An epithelializing wound',
'B',
'A chronic wound is defined as a wound that fails to progress through the normal healing phases in an expected timeframe, usually 4-6 weeks. These wounds are often stalled in the inflammatory phase due to persistent infection, biofilm, underlying disease, poor perfusion, or other factors that must be addressed.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 9,
'Which debridement method is most selective for necrotic tissue while sparing healthy tissue?',
'Wet-to-dry mechanical debridement',
'Sharp surgical debridement',
'Autolytic debridement',
'High-pressure irrigation',
'None are selective',
'C',
'Autolytic debridement uses the body''s own enzymes and moisture (maintained by occlusive or semi-occlusive dressings) to selectively break down necrotic tissue while sparing viable tissue. Enzymatic debridement (e.g., collagenase) is also selective. Wet-to-dry and sharp debridement can remove viable tissue as well.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 10,
'Winter''s research established the importance of which principle in wound healing?',
'The need for wound desiccation',
'The benefit of moist wound healing',
'The use of antibiotics in all wounds',
'The requirement for daily dressing changes',
'The use of antiseptics on all wounds',
'B',
'Winter''s landmark 1962 research demonstrated that wounds covered with an occlusive dressing (maintaining moisture) epithelialized faster than those left to dry and form a scab. This established the principle of moist wound healing that underlies modern wound care.', '{8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 11,
'Rolled wound edges (epibole) indicate:',
'Normal wound healing progression',
'A wound ready for closure',
'Stalled healing that may require sharp debridement of the edge',
'Infection requiring antibiotics',
'Excessive moisture',
'C',
'Rolled or epibolic wound edges indicate stalled healing where the epithelium has rolled down over the wound edge rather than migrating across the wound bed. Sharp debridement of the rolled edge to create a fresh wound margin can stimulate healing to resume. This addresses the "E" (Edge) component of TIME.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 12,
'According to the CDC classification, a surgical site infection involving fascia and muscle is classified as:',
'Superficial incisional SSI',
'Deep incisional SSI',
'Organ/space SSI',
'Complex SSI',
'Chronic SSI',
'B',
'Deep incisional SSI involves the fascia and muscle layers. Superficial SSI involves only skin and subcutaneous tissue. Organ/space SSI involves any anatomic site (other than the incision) that was opened or manipulated during surgery, such as intra-abdominal abscess.', '{2,6}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 13,
'Which of the following topical agents should NOT be used simultaneously with enzymatic collagenase debridement?',
'Normal saline',
'Petrolatum barrier',
'Silver-containing dressings',
'Hydrogel',
'Foam dressings',
'C',
'Silver-containing products inactivate collagenase (enzymatic debrider). When using collagenase (Santyl), avoid silver dressings, heavy metals, and antiseptics containing these agents. Protect periwound skin with barrier cream, apply collagenase to necrotic tissue, and cover with appropriate moisture-retentive dressing.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 14,
'The typical pressure setting for standard NPWT is:',
'25-50 mmHg',
'75-125 mmHg',
'150-200 mmHg',
'250-300 mmHg',
'400-500 mmHg',
'B',
'Standard NPWT settings are typically 75-125 mmHg of continuous negative pressure. Lower settings may be used for sensitive wounds or skin grafts. Higher pressures are generally not needed and may cause discomfort. The therapy can be continuous or intermittent depending on the clinical situation.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 15,
'A characteristic odor upon removal of a hydrocolloid dressing indicates:',
'Wound infection requiring antibiotics',
'Normal autolytic debridement process',
'Allergic reaction to the dressing',
'Need to discontinue hydrocolloid use',
'Anaerobic bacterial colonization',
'B',
'The characteristic odor upon hydrocolloid removal is a normal finding associated with autolytic debridement of necrotic tissue and is not indicative of infection. The gel formed by the dressing interacting with exudate can have an unpleasant smell. Assess for true signs of infection rather than relying on odor alone.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 16,
'Biofilms in chronic wounds are characterized by which of the following?',
'They are easily eradicated by systemic antibiotics',
'They can form within 24 hours of wound creation',
'They are only found in infected wounds',
'They do not affect wound healing',
'They are visible to the naked eye as thick green drainage',
'B',
'Biofilms can form within 24 hours of wound creation. They are communities of bacteria encased in a protective extracellular matrix that is resistant to antibiotics and host defenses. Biofilms are found in an estimated 60-90% of chronic wounds and impair healing. Debridement is the most effective method to disrupt biofilm.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 17,
'The CDC SSI prevention bundle includes all of the following EXCEPT:',
'Maintaining perioperative normothermia',
'Appropriate antibiotic prophylaxis',
'Routine postoperative antibiotic continuation for 7 days',
'Hair removal with clippers rather than razors',
'Perioperative glucose control',
'C',
'The SSI prevention bundle recommends discontinuing prophylactic antibiotics within 24 hours postoperatively. Routine prolonged antibiotic courses do not reduce SSI and increase antibiotic resistance. The bundle includes normothermia, appropriate prophylaxis, clippers for hair removal, and glucose control (<200 mg/dL).', '{2,6}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 18,
'In a diabetic foot ulcer, visualization of bone at the base of the wound suggests:',
'The wound is superficial',
'The ulcer is Wagner Grade 2 or higher',
'Osteomyelitis is unlikely',
'The wound will heal without intervention',
'NPWT is contraindicated',
'B',
'Visualization of or probing to bone in a diabetic foot ulcer suggests at least Wagner Grade 2 (deep ulcer to tendon, bone, or joint) and raises suspicion for osteomyelitis. The "probe-to-bone" test is a simple bedside assessment. MRI is more sensitive for osteomyelitis diagnosis. Such wounds require aggressive treatment.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 19,
'How frequently should NPWT dressings typically be changed?',
'Every 6 hours',
'Every 24 hours',
'Every 48-72 hours',
'Once weekly',
'Only when saturated',
'C',
'NPWT dressings are typically changed every 48-72 hours, or as prescribed. More frequent changes may be needed for infected wounds. Less frequent changes (up to 5-7 days) may be appropriate for skin graft fixation. Always count foam pieces to ensure none is retained in the wound.', '{3,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100005-0000-0000-0000-000000000005', 20,
'A wound showing 40-50% reduction in size at 4 weeks of treatment indicates:',
'Treatment failure requiring change in approach',
'Good healing trajectory likely to heal by 12 weeks',
'The wound has become chronic',
'Need for immediate surgical intervention',
'Normal healing that requires no monitoring',
'B',
'Research has shown that a 40-50% reduction in wound area at 4 weeks is a reliable predictor of complete healing by 12 weeks. This is a validated endpoint used in clinical trials and can help guide clinical decision-making about whether to continue current therapy or escalate treatment.', '{1}');
