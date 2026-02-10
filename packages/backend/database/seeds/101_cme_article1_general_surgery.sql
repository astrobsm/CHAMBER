-- CME Article 1: General Surgery Principles (Definition of Terms)
-- Comprehensive CME article with 20 self-assessment questions

-- Insert the article
INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100001-0000-0000-0000-000000000001',
    'b0000001-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Fundamental Concepts and Terminology in General Surgery',
    'A Comprehensive Guide to Essential Surgical Definitions and Principles',
    'This comprehensive continuing medical education article provides an in-depth exploration of fundamental surgical terminology and concepts essential for clinical practice. Understanding precise surgical definitions is crucial for effective communication among healthcare professionals, accurate documentation, and optimal patient care. This article covers classification of surgical procedures, wound types, healing mechanisms, and critical surgical principles that form the foundation of surgical practice. Upon completion, readers will demonstrate mastery of core surgical vocabulary and be able to apply these concepts in clinical decision-making.',
    'UNTH Surgery Department, Clinical Education Division',
    45,
    2.0,
    'medium',
    1,
    true
);

-- Insert article sections
-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'introduction', 'Introduction', 
'Surgery, derived from the Greek words "cheir" (hand) and "ergon" (work), represents one of medicine''s oldest and most fundamental disciplines. The practice of surgery has evolved dramatically from ancient trepanation to modern minimally invasive techniques, yet the foundational terminology and principles remain essential for every surgical practitioner.

Precise surgical terminology serves multiple critical functions in healthcare:

**Communication**: Clear terminology ensures accurate information transfer between healthcare providers during handoffs, consultations, and multidisciplinary team meetings.

**Documentation**: Proper use of surgical terms is essential for medical records, operative notes, and legal documentation.

**Patient Safety**: Standardized terminology reduces errors and misunderstandings that could compromise patient care.

**Education and Training**: A shared vocabulary facilitates effective teaching and learning in surgical education.

This article provides a comprehensive foundation in surgical terminology, covering the classification of surgical procedures, wound categorization, healing mechanisms, and fundamental surgical principles that guide clinical practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'learning_objectives', 'Learning Objectives', 
'Upon completion of this article, participants should be able to:

1. Define and correctly use fundamental surgical terminology in clinical documentation and communication

2. Classify surgical procedures according to urgency, purpose, and degree of risk

3. Categorize surgical wounds using the standard CDC classification system and predict associated infection risks

4. Describe the phases of wound healing and factors that influence the healing process

5. Explain key surgical principles including asepsis, hemostasis, tissue handling, and dead space elimination

6. Apply knowledge of surgical terminology to clinical case scenarios and decision-making

7. Recognize the historical evolution and significance of standardized surgical vocabulary

8. Differentiate between various types of surgical procedures based on their defining characteristics', 2);

-- Section 3: Main Content
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'content', 'Classification of Surgical Procedures', 
'## Classification by Urgency

Understanding the urgency classification of surgical procedures is fundamental to surgical triage and resource allocation.

### Emergency Surgery
Emergency surgery is performed immediately, typically within minutes to hours, to prevent death or permanent disability. Examples include:
- Ruptured abdominal aortic aneurysm repair
- Tension pneumothorax decompression
- Emergency cesarean section for cord prolapse
- Control of massive hemorrhage
- Bowel perforation with peritonitis

### Urgent Surgery
Urgent surgery should be performed within hours to days (typically 24-72 hours) to prevent significant morbidity. Examples include:
- Appendectomy for acute appendicitis
- Incarcerated hernia repair
- Open fracture fixation
- Acute cholecystitis requiring surgery

### Elective Surgery
Elective surgery is scheduled in advance for conditions that do not pose an immediate threat to life or function. These procedures allow time for complete preoperative evaluation and optimization. Examples include:
- Total joint replacement
- Hernia repair (reducible)
- Thyroidectomy for goiter
- Cosmetic procedures

## Classification by Purpose

### Diagnostic Surgery
Procedures performed to establish or confirm a diagnosis:
- **Biopsy**: Excisional (complete removal) or incisional (partial sample)
- **Exploratory laparotomy**: Surgical exploration of the abdomen
- **Diagnostic laparoscopy**: Minimally invasive abdominal exploration
- **Staging procedures**: Determining cancer extent

### Curative Surgery
Surgery intended to remove or correct pathology completely:
- Cancer resection with adequate margins
- Appendectomy for appendicitis
- Cholecystectomy for gallstones
- Hernia repair

### Palliative Surgery
Surgery to relieve symptoms without curing the underlying disease:
- Bypass surgery for unresectable tumors
- Nerve blocks for intractable pain
- Debulking procedures for advanced cancer
- Ostomy creation for bowel obstruction

### Reconstructive Surgery
Surgery to restore form and function:
- Free flap reconstruction
- Skin grafting
- Limb salvage procedures
- Breast reconstruction

### Preventive (Prophylactic) Surgery
Surgery to prevent disease development:
- Prophylactic mastectomy in BRCA carriers
- Prophylactic thyroidectomy in MEN syndromes
- Removal of premalignant lesions

## Classification by Degree of Risk

### Major Surgery
Procedures involving significant risk due to:
- Duration (typically >1 hour)
- Blood loss potential
- Organ system involvement
- General anesthesia requirement

Examples: Cardiac surgery, major abdominal procedures, organ transplantation

### Minor Surgery
Procedures with lower risk:
- Shorter duration
- Minimal blood loss
- Often performed under local/regional anesthesia
- Usually outpatient

Examples: Simple excisions, minor wound repairs, incision and drainage', 3);

-- Section 4: Wound Classification
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'content', 'Surgical Wound Classification', 
'## CDC Wound Classification System

The Centers for Disease Control and Prevention (CDC) wound classification system is the standard for categorizing surgical wounds and predicting surgical site infection (SSI) risk.

### Class I: Clean Wounds
**Definition**: Uninfected operative wounds with no inflammation, where the respiratory, alimentary, genital, or uninfected urinary tracts are not entered.

**Characteristics**:
- Primary closure
- No drains (or closed drainage system)
- No break in sterile technique
- SSI rate: 1-3%

**Examples**: Thyroidectomy, herniorrhaphy, vascular surgery without groin incision

### Class II: Clean-Contaminated Wounds
**Definition**: Operative wounds where the respiratory, alimentary, genital, or urinary tract is entered under controlled conditions without unusual contamination.

**Characteristics**:
- Controlled entry into hollow viscus
- Minor break in technique may occur
- Bile, urine, or respiratory secretions may be present
- SSI rate: 3-11%

**Examples**: Cholecystectomy, elective colorectal surgery, hysterectomy, appendectomy without perforation

### Class III: Contaminated Wounds
**Definition**: Open, fresh traumatic wounds, operations with major breaks in sterile technique, or procedures with gross spillage from the gastrointestinal tract.

**Characteristics**:
- Significant contamination
- Acute inflammation present
- Open traumatic wounds (4-12 hours old)
- SSI rate: 10-17%

**Examples**: Penetrating trauma, surgery with gross GI spillage, rectal surgery, open fractures

### Class IV: Dirty/Infected Wounds
**Definition**: Old traumatic wounds with retained devitalized tissue, or wounds involving existing clinical infection or perforated viscera.

**Characteristics**:
- Established infection
- Devitalized tissue present
- Delayed treatment (>12 hours for trauma)
- SSI rate: >27%

**Examples**: Perforated appendicitis, abscess drainage, necrotizing fasciitis debridement

## Clinical Significance of Wound Classification

Wound classification guides:
1. **Antibiotic prophylaxis decisions**
2. **Wound closure techniques**
3. **Postoperative monitoring intensity**
4. **Quality improvement initiatives**
5. **Risk stratification for surgical outcomes**', 4);

-- Section 5: Wound Healing
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'content', 'Wound Healing Mechanisms', 
'## Types of Wound Closure

### Primary Intention (Primary Union)
Wound edges are directly approximated, resulting in minimal tissue loss and fastest healing with least scarring.

**Requirements**:
- Clean wound
- Good blood supply
- No tension
- Accurate tissue apposition
- Minimal contamination

**Healing Time**: 7-10 days for epithelialization; full strength by 6 weeks

### Secondary Intention (Secondary Union)
Wound left open to heal by granulation tissue formation, contraction, and epithelialization.

**Indications**:
- Contaminated wounds
- Tissue loss
- High infection risk
- Cannot achieve primary closure

**Process**: Granulation → Contraction → Epithelialization

### Tertiary Intention (Delayed Primary Closure)
Wound initially left open (for 4-7 days) to allow contamination to clear, then closed primarily.

**Indications**:
- Contaminated wounds that can be cleaned
- Bites
- Heavily contaminated traumatic wounds
- Combat wounds

## Phases of Wound Healing

### 1. Hemostasis Phase (Immediate)
- Vascular constriction
- Platelet aggregation
- Coagulation cascade activation
- Clot formation

### 2. Inflammatory Phase (Days 1-4)
- Vasodilation and increased permeability
- Neutrophil migration (peak at 24-48 hours)
- Macrophage infiltration (peak at 48-96 hours)
- Debris removal and pathogen destruction
- Cytokine and growth factor release

### 3. Proliferative Phase (Days 4-21)
- Angiogenesis (new blood vessel formation)
- Fibroplasia (fibroblast proliferation)
- Collagen synthesis (Type III initially)
- Granulation tissue formation
- Epithelialization
- Wound contraction

### 4. Remodeling Phase (Day 21 - 2 years)
- Type III collagen replaced by Type I
- Collagen cross-linking
- Wound contraction continues
- Tensile strength increases (maximum 80% of normal)
- Scar maturation

## Factors Affecting Wound Healing

### Local Factors
- **Blood supply**: Adequate perfusion essential
- **Infection**: Bacterial load >10⁵/gram tissue impairs healing
- **Foreign bodies**: Delay healing, increase infection
- **Mechanical stress**: Tension on wound edges
- **Radiation**: Damages vasculature and cells
- **Hematoma/seroma**: Creates dead space, infection risk

### Systemic Factors
- **Nutrition**: Protein, vitamin C, zinc, vitamin A essential
- **Diabetes**: Impairs all phases of healing
- **Steroids**: Anti-inflammatory effects impair healing
- **Smoking**: Vasoconstriction, carbon monoxide, impaired oxygen delivery
- **Age**: Elderly heal slower but with less scarring
- **Immunosuppression**: Impairs inflammatory response', 5);

-- Section 6: Fundamental Surgical Principles
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'content', 'Fundamental Surgical Principles', 
'## Halsted''s Principles of Surgery

William Stewart Halsted (1852-1922) established fundamental surgical principles that remain foundational today:

1. **Gentle handling of tissues**
2. **Meticulous hemostasis**
3. **Aseptic technique**
4. **Minimal tension on tissues**
5. **Accurate tissue apposition**
6. **Obliteration of dead space**

## Asepsis and Sterile Technique

### Definition of Terms
- **Asepsis**: Absence of pathogenic microorganisms
- **Antisepsis**: Prevention of sepsis by destroying or inhibiting microorganisms on living tissue
- **Sterilization**: Complete elimination of all microorganisms
- **Disinfection**: Reduction of microorganisms to safe levels

### Methods of Sterilization
1. **Steam (Autoclave)**: 121°C at 15 psi for 15-30 minutes
2. **Dry heat**: 160°C for 2 hours
3. **Ethylene oxide gas**: For heat-sensitive items
4. **Hydrogen peroxide plasma**: Low-temperature sterilization
5. **Radiation**: Gamma radiation for disposables

## Hemostasis

The control of bleeding is fundamental to all surgical procedures.

### Mechanical Methods
- Direct pressure
- Suture ligature
- Clips (hemoclips, vascular clips)
- Tourniquet
- Packing

### Thermal Methods
- Electrocautery (monopolar, bipolar)
- Argon beam coagulator
- Laser
- Harmonic scalpel

### Chemical/Topical Agents
- Topical thrombin
- Oxidized cellulose (Surgicel)
- Gelatin sponge (Gelfoam)
- Fibrin sealants
- Tranexamic acid

## Dead Space Management

Dead space is any cavity within the wound that is not obliterated and may collect fluid.

### Importance
- Provides medium for bacterial growth
- Delays wound healing
- Can lead to seroma/hematoma formation

### Prevention Methods
- Layered closure
- Quilting sutures
- Closed suction drains
- Pressure dressings

## Tissue Handling

### Principles
- Minimal manipulation
- Atraumatic techniques
- Avoid crushing with forceps
- Keep tissues moist
- Handle tissues by their edges
- Use appropriate instruments

### Retraction
- Gentle retraction
- Avoid prolonged pressure
- Protect delicate structures
- Self-retaining retractors when appropriate', 6);

-- Section 7: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'key_points', 'Key Points', 
'1. **Surgical Classification by Urgency**: Emergency (immediate), Urgent (hours-days), Elective (scheduled)

2. **CDC Wound Classification**: Class I (Clean) 1-3% SSI, Class II (Clean-Contaminated) 3-11% SSI, Class III (Contaminated) 10-17% SSI, Class IV (Dirty) >27% SSI

3. **Types of Wound Closure**: Primary intention (direct apposition), Secondary intention (granulation), Tertiary intention (delayed primary closure)

4. **Phases of Wound Healing**: Hemostasis → Inflammation → Proliferation → Remodeling

5. **Wound Tensile Strength**: Maximum 80% of normal tissue strength, achieved during remodeling phase

6. **Halsted''s Principles**: Gentle tissue handling, meticulous hemostasis, asepsis, minimal tension, accurate apposition, dead space obliteration

7. **Factors Impairing Healing**: Infection, poor nutrition, diabetes, steroids, smoking, ischemia, foreign bodies

8. **Type I vs Type III Collagen**: Type III predominates early (proliferative phase), replaced by stronger Type I during remodeling

9. **Bacterial Threshold**: >10⁵ organisms per gram of tissue typically prevents wound healing

10. **Macrophage Role**: Critical orchestrator of wound healing, releasing growth factors and cytokines', 7);

-- Section 8: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'clinical_pearls', 'Clinical Pearls', 
'💡 **Pearl 1**: "When in doubt, leave it out" - If wound contamination is suspected, consider delayed primary closure rather than risking deep space infection.

💡 **Pearl 2**: The golden period for wound closure is traditionally 6-8 hours, but highly vascular areas like the face can often be closed up to 24 hours.

💡 **Pearl 3**: A patient''s albumin level <3.0 g/dL is associated with significantly higher surgical complications and impaired wound healing.

💡 **Pearl 4**: Smoking cessation for just 4 weeks preoperatively significantly reduces wound complications - encourage cessation as early as possible.

💡 **Pearl 5**: In diabetic patients, glucose control (HbA1c <7%) is more important than diabetes duration for wound healing outcomes.

💡 **Pearl 6**: Dead space is the enemy - one collection of fluid can support millions of bacteria and lead to wound breakdown.

💡 **Pearl 7**: "The solution to pollution is dilution" - copious irrigation with saline is one of the most effective methods to reduce bacterial load.

💡 **Pearl 8**: Sutures provide only temporary wound support; real strength comes from collagen synthesis, which peaks at 3 weeks.

💡 **Pearl 9**: The red, raised appearance of early scars is due to angiogenesis; this will fade as remodeling occurs and vessels regress.

💡 **Pearl 10**: Vitamin C deficiency (scurvy) leads to wound dehiscence because collagen requires vitamin C for hydroxylation of proline and lysine.', 8);

-- Section 9: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100001-0000-0000-0000-000000000001', 'references', 'References', 'See reference list below.', 9);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100001-0000-0000-0000-000000000001', 1, 'Brunicardi FC, et al. Schwartz''s Principles of Surgery, 11th Edition. McGraw-Hill Education, 2019.', NULL, NULL, NULL),
('a1100001-0000-0000-0000-000000000001', 2, 'Townsend CM, et al. Sabiston Textbook of Surgery, 21st Edition. Elsevier, 2022.', NULL, NULL, NULL),
('a1100001-0000-0000-0000-000000000001', 3, 'Mangram AJ, Horan TC, Pearson ML, et al. Guideline for Prevention of Surgical Site Infection, 1999. Infect Control Hosp Epidemiol. 1999;20(4):250-278.', '10.1086/501620', '10219875', NULL),
('a1100001-0000-0000-0000-000000000001', 4, 'Guo S, DiPietro LA. Factors affecting wound healing. J Dent Res. 2010;89(3):219-229.', '10.1177/0022034509359125', '20139336', NULL),
('a1100001-0000-0000-0000-000000000001', 5, 'Gosain A, DiPietro LA. Aging and wound healing. World J Surg. 2004;28(3):321-326.', '10.1007/s00268-003-7397-6', '14961191', NULL),
('a1100001-0000-0000-0000-000000000001', 6, 'Halsted WS. The training of the surgeon. Bull Johns Hopkins Hosp. 1904;15:267-275.', NULL, NULL, NULL),
('a1100001-0000-0000-0000-000000000001', 7, 'Robson MC, Steed DL, Franz MG. Wound healing: biologic features and approaches to maximize healing trajectories. Curr Probl Surg. 2001;38(2):72-140.', '10.1067/msg.2001.111167', '11452260', NULL),
('a1100001-0000-0000-0000-000000000001', 8, 'Anderson DJ, et al. Strategies to prevent surgical site infections in acute care hospitals: 2014 update. Infect Control Hosp Epidemiol. 2014;35(6):605-627.', '10.1086/676022', '24799638', NULL),
('a1100001-0000-0000-0000-000000000001', 9, 'Singer AJ, Clark RA. Cutaneous wound healing. N Engl J Med. 1999;341(10):738-746.', '10.1056/NEJM199909023411006', '10471461', NULL),
('a1100001-0000-0000-0000-000000000001', 10, 'Sorensen LT. Wound healing and infection in surgery: the clinical impact of smoking and smoking cessation. Arch Surg. 2012;147(4):373-383.', '10.1001/archsurg.2012.5', '22508785', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 1,
'A 45-year-old man presents with sudden onset severe abdominal pain and a rigid abdomen. CT scan reveals free air under the diaphragm. What is the most appropriate classification of the required surgery?',
'Elective surgery',
'Urgent surgery',
'Emergency surgery',
'Preventive surgery',
'Palliative surgery',
'C',
'Free air under the diaphragm indicates bowel perforation with peritonitis, which is a surgical emergency. Emergency surgery is performed immediately (within minutes to hours) to prevent death or permanent disability. Delay in surgical intervention for perforated viscus significantly increases mortality. This is not urgent surgery (which allows 24-72 hours) or elective (scheduled in advance).', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 2,
'According to the CDC classification, an elective cholecystectomy for symptomatic cholelithiasis is considered what type of wound?',
'Class I - Clean',
'Class II - Clean-Contaminated',
'Class III - Contaminated',
'Class IV - Dirty',
'Cannot be classified until surgery is complete',
'B',
'A cholecystectomy enters the biliary tract, which is part of the alimentary system. According to CDC classification, when the alimentary, respiratory, genital, or urinary tract is entered under controlled conditions without unusual contamination, the wound is classified as Class II (Clean-Contaminated). The expected SSI rate for Class II wounds is 3-11%.', '{3,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 3,
'During which phase of wound healing do fibroblasts actively synthesize collagen and granulation tissue forms?',
'Hemostasis phase',
'Inflammatory phase',
'Proliferative phase',
'Remodeling phase',
'Resolution phase',
'C',
'The proliferative phase (days 4-21) is characterized by angiogenesis, fibroplasia (fibroblast proliferation and collagen synthesis), granulation tissue formation, epithelialization, and wound contraction. Type III collagen is predominantly synthesized during this phase. The inflammatory phase involves neutrophils and macrophages clearing debris, while the remodeling phase involves collagen cross-linking and conversion to Type I collagen.', '{4,7,9}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 4,
'What is the maximum tensile strength that a healed wound can achieve compared to unwounded tissue?',
'50% of original strength',
'65% of original strength',
'80% of original strength',
'95% of original strength',
'100% of original strength',
'C',
'A healed wound achieves maximum tensile strength of approximately 80% of the original unwounded tissue strength. This maximum is reached during the remodeling phase as Type III collagen is replaced by stronger Type I collagen with increased cross-linking. Wounds never regain 100% of original tissue strength, which is why incisional hernias remain a risk at surgical sites.', '{7,9}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 5,
'A patient with a heavily contaminated traumatic wound is brought to the emergency department. The surgeon decides to leave the wound open initially and close it after 5 days once the wound bed appears clean. This approach is called:',
'Healing by primary intention',
'Healing by secondary intention',
'Healing by tertiary intention (delayed primary closure)',
'Healing by quaternary intention',
'Spontaneous closure',
'C',
'Tertiary intention, also known as delayed primary closure, involves leaving a wound open initially (typically 4-7 days) to allow contamination and infection to clear, then closing it primarily. This approach is ideal for contaminated traumatic wounds, bites, and combat wounds. It combines the benefits of infection prevention with the advantages of primary closure.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 6,
'Which of Halsted''s principles of surgery specifically addresses the prevention of fluid collection and potential bacterial growth medium in wounds?',
'Gentle handling of tissues',
'Meticulous hemostasis',
'Aseptic technique',
'Accurate tissue apposition',
'Obliteration of dead space',
'E',
'Obliteration of dead space is the Halsted principle that prevents fluid collection. Dead space provides a medium for bacterial growth, delays wound healing, and can lead to seroma or hematoma formation. This principle is achieved through layered closure, quilting sutures, closed suction drains, or pressure dressings.', '{6}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 7,
'What is the critical bacterial concentration per gram of tissue that typically prevents wound healing?',
'10² organisms/gram',
'10³ organisms/gram',
'10⁴ organisms/gram',
'10⁵ organisms/gram',
'10⁶ organisms/gram',
'D',
'A bacterial load exceeding 10⁵ (100,000) organisms per gram of tissue typically prevents wound healing and leads to clinical infection. This threshold is important in determining wound management strategies, including the use of delayed primary closure for contaminated wounds. Below this threshold, host defenses can usually control bacterial proliferation.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 8,
'A 60-year-old smoker undergoes elective hernia repair. When should smoking cessation ideally begin to significantly reduce wound complications?',
'24 hours before surgery',
'1 week before surgery',
'4 weeks before surgery',
'8 weeks before surgery',
'Smoking cessation has no impact on wound healing',
'C',
'Smoking cessation for at least 4 weeks preoperatively significantly reduces wound complications. Smoking impairs wound healing through vasoconstriction, carbon monoxide binding to hemoglobin (reducing oxygen delivery), and impaired inflammatory response. While longer cessation periods provide additional benefit, 4 weeks is the minimum to see significant improvement.', '{10}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 9,
'During wound healing, Type III collagen is predominantly synthesized during the proliferative phase and later replaced by which type of collagen during remodeling?',
'Type I collagen',
'Type II collagen',
'Type IV collagen',
'Type V collagen',
'Type VII collagen',
'A',
'Type III collagen is synthesized during the proliferative phase of wound healing. During the remodeling phase (day 21 to 2 years), Type III collagen is gradually replaced by Type I collagen, which is stronger and provides greater tensile strength. This replacement, along with collagen cross-linking, is responsible for the progressive increase in wound strength.', '{7,9}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 10,
'Which cell type is considered the "master regulator" of wound healing, arriving at 48-96 hours and releasing essential growth factors?',
'Neutrophils',
'Macrophages',
'Fibroblasts',
'Keratinocytes',
'Platelets',
'B',
'Macrophages are the master regulators of wound healing. They arrive at the wound site 48-96 hours after injury, peaking during the inflammatory phase. Macrophages release numerous growth factors and cytokines essential for wound healing, including PDGF, TGF-β, VEGF, and FGF. They also phagocytose debris and apoptotic neutrophils, transitioning the wound from inflammation to proliferation.', '{4,7,9}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 11,
'A patient undergoing appendectomy for perforated appendicitis with peritonitis would have their wound classified as:',
'Class I - Clean',
'Class II - Clean-Contaminated',
'Class III - Contaminated',
'Class IV - Dirty/Infected',
'The classification depends on the surgeon''s technique',
'D',
'A perforated appendix with peritonitis is classified as Class IV (Dirty/Infected) because there is existing clinical infection and perforated viscera. This is different from an appendectomy for acute appendicitis without perforation, which would be Class II (Clean-Contaminated). Class IV wounds have the highest SSI rate (>27%).', '{3,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 12,
'What is the expected surgical site infection rate for a Class I (Clean) wound?',
'<0.5%',
'1-3%',
'5-10%',
'10-17%',
'>20%',
'B',
'Class I (Clean) wounds have an expected surgical site infection rate of 1-3%. These are uninfected operative wounds where the respiratory, alimentary, genital, or urinary tracts are not entered, and there is no break in sterile technique. Examples include thyroidectomy, herniorrhaphy without mesh contamination, and most vascular surgery.', '{3,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 13,
'Surgery performed to relieve symptoms without curing the underlying disease, such as bypass surgery for an unresectable tumor, is classified as:',
'Curative surgery',
'Palliative surgery',
'Preventive surgery',
'Diagnostic surgery',
'Reconstructive surgery',
'B',
'Palliative surgery is performed to relieve symptoms without curing the underlying disease. Examples include bypass surgery for unresectable tumors causing obstruction, nerve blocks for intractable pain, debulking of advanced tumors, and ostomy creation for bowel obstruction from incurable malignancy. The goal is quality of life improvement, not cure.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 14,
'Standard steam sterilization (autoclaving) requires which temperature and pressure conditions?',
'100°C at atmospheric pressure for 30 minutes',
'121°C at 15 psi for 15-30 minutes',
'134°C at 30 psi for 5 minutes',
'160°C at atmospheric pressure for 2 hours',
'180°C at 20 psi for 10 minutes',
'B',
'Steam sterilization (autoclaving) is the most common method of sterilization in healthcare. It requires 121°C at 15 psi for 15-30 minutes. The combination of heat, pressure, and moisture denatures proteins and kills all microorganisms including spores. Dry heat sterilization (option D pattern) requires 160°C for 2 hours but at atmospheric pressure.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 15,
'A malnourished patient with serum albumin of 2.5 g/dL requires surgery. Which statement is most accurate regarding this patient''s surgical risk?',
'Low albumin has no impact on surgical outcomes',
'The patient has increased risk of wound complications',
'Surgery should be performed immediately without optimization',
'Only emergency surgery is affected by nutritional status',
'Albumin levels below 4.0 g/dL contraindicate all surgery',
'B',
'A serum albumin level below 3.0 g/dL is associated with significantly higher surgical complications, including impaired wound healing, anastomotic leaks, and increased infection rates. Nutritional optimization should be considered when possible before elective surgery. Protein is essential for collagen synthesis and immune function during wound healing.', '{1,2,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 16,
'Which vitamin deficiency leads to wound dehiscence due to impaired collagen synthesis through failure of proline and lysine hydroxylation?',
'Vitamin A',
'Vitamin B12',
'Vitamin C',
'Vitamin D',
'Vitamin E',
'C',
'Vitamin C (ascorbic acid) is essential for collagen synthesis. It acts as a cofactor for prolyl hydroxylase and lysyl hydroxylase, enzymes that hydroxylate proline and lysine residues in procollagen. Without proper hydroxylation, collagen cannot form stable triple helices, leading to weak collagen and wound dehiscence. This is the basis of wound complications in scurvy.', '{4,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 17,
'A woman with BRCA1 mutation elects to undergo bilateral mastectomy despite having no evidence of breast cancer. This surgery is classified as:',
'Diagnostic surgery',
'Curative surgery',
'Palliative surgery',
'Preventive (prophylactic) surgery',
'Reconstructive surgery',
'D',
'Preventive or prophylactic surgery is performed to prevent disease development in high-risk individuals. Prophylactic mastectomy in BRCA carriers significantly reduces breast cancer risk. Other examples include prophylactic thyroidectomy in MEN syndromes and prophylactic colectomy in FAP. The surgery removes tissue before cancer develops.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 18,
'Neutrophils are the predominant cell type in a healing wound during which time period after injury?',
'0-6 hours',
'24-48 hours',
'4-7 days',
'2-3 weeks',
'4-6 weeks',
'B',
'Neutrophils are the first inflammatory cells to arrive at a wound, with peak infiltration occurring at 24-48 hours after injury. They are responsible for killing bacteria and debriding dead tissue through phagocytosis and release of proteolytic enzymes. After 48-96 hours, macrophages become the predominant cell type as neutrophils undergo apoptosis.', '{4,7,9}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 19,
'A laceration on the face can often be safely closed primarily up to how many hours after injury, compared to the traditional 6-8 hour "golden period" for other body areas?',
'6 hours',
'12 hours',
'24 hours',
'48 hours',
'72 hours',
'C',
'While the traditional "golden period" for wound closure is 6-8 hours, highly vascular areas like the face have excellent blood supply that provides greater resistance to infection. Facial lacerations can often be safely closed primarily up to 24 hours after injury, provided the wound is properly cleaned and there are no signs of infection. This extended time frame is due to the rich blood supply of the face.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100001-0000-0000-0000-000000000001', 20,
'When is the tensile strength of a surgical wound primarily derived from sutures rather than from the wound''s own collagen?',
'First 1-2 days',
'First 1-2 weeks',
'First 1-2 months',
'First 6 months',
'The entire healing process',
'B',
'During the first 1-2 weeks after surgery, wound tensile strength is primarily provided by sutures because collagen synthesis and cross-linking have not yet provided significant structural support. Collagen synthesis peaks at around 3 weeks, and progressive remodeling continues for up to 2 years. This is why suture material selection and technique are critical for early wound integrity.', '{7,9}');
