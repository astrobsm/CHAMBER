-- CME Article 9: Fracture Management
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'art00009-0000-0000-0000-000000000009',
    'b0000009-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Principles of Fracture Management for the General Surgeon',
    'Classification, Initial Management, and Basic Treatment Principles',
    'Fracture management is an essential skill for surgeons managing trauma and orthopedic emergencies. This CME article provides a comprehensive overview of fracture assessment, classification systems, initial stabilization, and treatment principles. Topics include open fracture management, compartment syndrome recognition, and appropriate splinting techniques. The article emphasizes recognition of injuries requiring urgent intervention and appropriate referral.',
    'UNTH Surgery Department, Trauma Division',
    50,
    2.5,
    'medium',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'introduction', 'Introduction',
'Fractures represent a significant portion of trauma presentations and require prompt recognition and appropriate management to optimize outcomes and minimize complications.

**Epidemiology:**
- Approximately 6 million fractures occur annually in the United States
- Fractures account for 16% of musculoskeletal injuries
- Hip fractures in elderly: >300,000 annually with significant mortality
- Traffic accidents, falls, and sports are leading causes

**Goals of Fracture Management:**
1. **Relieve pain**: Immobilization, analgesia
2. **Restore anatomy**: Reduction (closed or open)
3. **Maintain alignment**: Fixation (external or internal)
4. **Rehabilitate function**: Early mobilization when appropriate
5. **Prevent complications**: Infection, malunion, nonunion, avascular necrosis

**The General Surgeon''s Role:**
- Initial assessment and resuscitation in polytrauma
- Recognition of fracture patterns and associated injuries
- Emergent splinting and stabilization
- Recognition of complications requiring urgent intervention
- Appropriate referral and coordination with orthopedic specialists

Understanding fracture principles enables surgeons to provide optimal initial care and facilitate timely definitive treatment.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Describe the anatomy and physiology of bone, including fracture healing mechanisms

2. Apply standardized terminology to describe fracture patterns and displacement

3. Utilize common classification systems including AO/OTA and Gustilo-Anderson

4. Perform systematic clinical and radiographic fracture assessment

5. Recognize and manage open fractures including appropriate antibiotic selection and timing of surgery

6. Identify compartment syndrome and implement emergent management

7. Apply appropriate splinting techniques for common fractures

8. Differentiate fractures requiring emergent orthopedic intervention from those manageable with delayed referral

9. Understand basic principles of fracture reduction and fixation

10. Recognize and manage common fracture complications including fat embolism and neurovascular injury', 2);

-- Section 3: Bone Anatomy and Healing
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'content', 'Bone Anatomy and Fracture Healing',
'## Bone Structure

### Macroscopic Anatomy

**Long Bones:**
- **Diaphysis**: Shaft; cortical bone predominates
- **Metaphysis**: Flared region between diaphysis and epiphysis
- **Epiphysis**: Ends of bone; predominantly cancellous
- **Physis (Growth Plate)**: Cartilaginous zone in children; vulnerable to injury
- **Periosteum**: Outer membrane; contains osteoprogenitor cells; contributes to healing

**Bone Types:**
- **Cortical (Compact)**: Dense, outer layer; 80% of skeleton
- **Cancellous (Trabecular)**: Spongy, inner meshwork; metabolically active

### Microscopic Anatomy
- **Osteocytes**: Mature bone cells in lacunae
- **Osteoblasts**: Bone-forming cells
- **Osteoclasts**: Bone-resorbing cells
- **Osteons (Haversian systems)**: Structural units of cortical bone

### Blood Supply
- **Nutrient artery**: Main supply; enters cortex
- **Periosteal vessels**: Outer 1/3 of cortex
- **Metaphyseal/Epiphyseal arteries**: Bone ends

## Fracture Healing

### Primary (Direct) Bone Healing
- Occurs with rigid fixation and anatomic reduction
- Direct osteonal remodeling without callus
- Seen with compression plating
- Slower than secondary healing

### Secondary (Indirect) Bone Healing
- Most common type; occurs with some motion at fracture site
- Proceeds through organized phases
- Visible callus formation
- Seen with casting, intramedullary nailing, external fixation

### Phases of Secondary Healing

**1. Inflammatory Phase (Days 1-7)**
- Hematoma formation at fracture site
- Inflammatory cell infiltration
- Release of growth factors (PDGF, TGF-β, BMPs)
- Angiogenesis begins

**2. Reparative Phase (Weeks 2-6)**
**Soft Callus Formation:**
- Granulation tissue replaces hematoma
- Fibrocartilage and cartilage formation
- Provides initial stabilization

**Hard Callus Formation:**
- Woven bone replaces soft callus
- Endochondral and intramembranous ossification
- Progressive stiffening

**3. Remodeling Phase (Months to Years)**
- Woven bone converted to lamellar bone
- Resorption of excess callus
- Restoration of medullary canal
- Response to mechanical stresses (Wolff''s Law)

### Factors Affecting Healing

**Favorable:**
- Good blood supply
- Young age
- Adequate nutrition (protein, calcium, vitamin D)
- Proper stabilization
- Minimal gap at fracture site

**Unfavorable:**
- Poor blood supply
- Infection
- Smoking
- Diabetes
- Elderly
- Malnutrition
- NSAIDs (controversial)
- Corticosteroids
- Excessive motion at fracture site
- Gap or interposed soft tissue', 3);

-- Section 4: Fracture Description
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'content', 'Fracture Description and Classification',
'## Standardized Fracture Description

A complete fracture description includes:

### 1. Patient Information
- Age, sex, hand dominance
- Mechanism of injury
- Open vs. closed

### 2. Bone and Location

**Location Terminology:**
- **Proximal, middle, distal third** (diaphysis)
- **Metaphyseal**: Near joint
- **Epiphyseal**: Involves joint surface
- **Intra-articular vs. Extra-articular**

### 3. Fracture Pattern

**By Mechanism:**
- **Transverse**: Perpendicular to long axis; bending force
- **Oblique**: Angled to long axis; combined compression and bending
- **Spiral**: Rotational mechanism; torsional force
- **Comminuted**: More than two fragments
- **Segmental**: Two separate fracture levels isolating a segment
- **Avulsion**: Fragment pulled off by tendon/ligament
- **Compression**: Axial loading (vertebral bodies)
- **Impaction**: Fragments driven into each other

**By Completeness:**
- **Complete**: Both cortices disrupted
- **Incomplete**: One cortex intact
  - **Greenstick**: Bending in children
  - **Torus (Buckle)**: Compression in children
  - **Hairline/Stress**: Microscopic disruption

### 4. Displacement

**Described by position of distal fragment relative to proximal:**
- **Translation**: Medial, lateral, anterior, posterior (percentage of shaft width)
- **Angulation**: Varus, valgus, apex anterior, apex posterior (degrees)
- **Rotation**: Internal, external (degrees)
- **Shortening**: Overlap distance (cm)
- **Distraction**: Gap between fragments (if applicable)

### 5. Associated Injuries
- Neurovascular status
- Soft tissue injury
- Adjacent joint involvement

## AO/OTA Classification System

The AO (Arbeitsgemeinschaft für Osteosynthesefragen) / OTA (Orthopaedic Trauma Association) system is the standard comprehensive classification.

### Format: #.##.X.#

**First Number - Bone:**
1 = Humerus
2 = Radius/Ulna
3 = Femur
4 = Tibia/Fibula
5 = Spine
6 = Pelvis

**Second Number - Segment:**
1 = Proximal
2 = Diaphyseal
3 = Distal

**Letter - Type:**
A = Simple
B = Wedge
C = Complex

**Third Number - Group:**
Further subdivisions based on specific pattern

### Example
- **42-A3**: Tibia (4), diaphyseal (2), simple fracture (A), spiral (3)

## Gustilo-Anderson Classification (Open Fractures)

The most widely used classification for open fractures:

| Grade | Wound Size | Soft Tissue | Bone Injury | Energy |
|-------|-----------|-------------|-------------|--------|
| I | <1 cm | Minimal damage | Simple pattern | Low |
| II | 1-10 cm | Moderate damage | Some comminution | Moderate |
| IIIA | >10 cm | Severe, but adequate soft tissue for coverage | Comminuted | High |
| IIIB | >10 cm | Extensive damage, requires flap coverage | Comminuted | High |
| IIIC | Any | Arterial injury requiring repair | Any | High |

**Important:**
- Type IIIC has arterial injury regardless of wound size
- Classification may be upgraded intraoperatively based on findings
- Grade correlates with infection risk: I (0-2%), II (2-5%), IIIA (5-10%), IIIB (10-25%), IIIC (25-50%)', 4);

-- Section 5: Clinical Assessment
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'content', 'Clinical and Radiographic Assessment',
'## Clinical Examination

### History
- **Mechanism**: High vs. low energy, direction of force
- **Time of injury**: Especially important for open fractures
- **Symptoms**: Pain, deformity, functional loss
- **Associated injuries**: Head, chest, abdominal trauma
- **Medical history**: Medications (anticoagulants), allergies, tetanus status
- **Functional status**: Ambulatory, employment, ADLs

### Physical Examination

**Inspection:**
- Deformity, swelling, ecchymosis
- Skin integrity (open wounds, blisters, abrasions)
- Limb alignment and rotation
- Compare to contralateral limb

**Palpation:**
- Point tenderness (localized to fracture)
- Crepitus (avoid repeated testing)
- Distal pulses

**Neurovascular Assessment (Critical):**

**Vascular:**
- Pulses: Palpable vs. Doppler vs. absent
- Capillary refill (<2 seconds normal)
- Skin color and temperature
- Ankle-brachial index (ABI) if concern for vascular injury

**Neurologic:**
- Motor function of distal muscle groups
- Sensory distribution of peripheral nerves
- Document before and after manipulation

**Common Nerve Injuries by Fracture:**
- Humeral shaft: Radial nerve
- Supracondylar humerus: Anterior interosseous (median), brachial artery
- Elbow dislocation: Ulnar nerve
- Distal radius: Median nerve
- Hip dislocation (posterior): Sciatic nerve
- Fibular neck: Common peroneal nerve
- Knee dislocation: Popliteal artery, common peroneal nerve

**Soft Tissue Assessment:**
- Compartments (swelling, pain with passive stretch)
- Muscle function
- Skin condition (fracture blisters, tenting)

## Radiographic Evaluation

### Standard Principles
1. **Two views at 90 degrees**: AP and lateral
2. **Include joints above and below**: Entire bone
3. **Comparison views**: If uncertain (especially pediatric)
4. **Post-reduction films**: After any manipulation

### Additional Imaging

**CT Scan:**
- Complex fractures
- Intra-articular fractures
- Spine fractures
- Pelvis and acetabulum
- Surgical planning

**MRI:**
- Soft tissue injuries
- Occult fractures
- Ligamentous injury
- Avascular necrosis

**Angiography:**
- Suspected arterial injury
- CT angiography often first-line

### Describing Radiographs
1. Patient demographics and indication
2. Type of study and views
3. Bone(s) and location involved
4. Fracture pattern
5. Displacement and angulation
6. Joint involvement
7. Associated findings (hardware, arthritis, masses)
8. Comparison to prior studies if available', 5);

-- Section 6: Open Fractures
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'content', 'Open Fracture Management',
'## Definition

An open (compound) fracture has communication between the fracture site and the external environment through a skin wound.

**Always suspect open fracture with:**
- Any wound near a fracture
- Exposed bone or tendon
- Traumatic amputation
- Gunshot wounds

## Initial Management

### Prehospital/ED Care
1. **ATLS principles first**: Life over limb
2. **Control hemorrhage**: Direct pressure, tourniquet if needed
3. **Photograph wound**: Before covering (reduces repeat exposure)
4. **Remove gross contamination**: Visible debris, do not probe wound
5. **Moist sterile dressing**: Saline-soaked gauze
6. **Splint for stability**: Reduces pain, bleeding, further soft tissue injury
7. **Tetanus prophylaxis**: If not current
8. **Antibiotics**: As early as possible

### Antibiotic Therapy

**Timing is Critical:**
- Administer within 1 hour of injury (ideally within 3 hours)
- Delayed antibiotics associated with increased infection rates

**Antibiotic Selection (EAST Guidelines):**

| Grade | Antibiotics |
|-------|-------------|
| I | Cefazolin 2g IV q8h |
| II | Cefazolin 2g IV q8h |
| IIIA | Cefazolin 2g IV + Aminoglycoside (Gentamicin 5mg/kg) |
| IIIB | Cefazolin 2g IV + Aminoglycoside |
| IIIC | Cefazolin 2g IV + Aminoglycoside |
| Farm/Soil contamination | Add Penicillin G for Clostridium coverage |

**Duration:**
- Type I-II: 24 hours after wound closure
- Type III: 72 hours or until soft tissue coverage

**Penicillin Allergy:**
- Clindamycin + Aminoglycoside

### Timing of Surgery

**Emergent (within 6 hours):**
- Vascular injury requiring repair
- Compartment syndrome
- Grossly contaminated wounds
- Devitalized tissue requiring debridement

**Urgent (within 24 hours):**
- All open fractures should undergo I&D
- Optimal window: 6-24 hours
- Serial debridement if needed

### Surgical Principles

**Irrigation:**
- Normal saline (avoid antiseptics in wound)
- Volume: 3L minimum for Type I, 6L for Type II, 9L for Type III
- Low-pressure irrigation (bulb syringe) preferred over high-pressure
- High pressure may drive bacteria into tissue

**Debridement:**
- Remove all devitalized tissue
- Serial debridement for severe injuries
- "Excision" of wound margins
- Preserve all viable tissue

**Fracture Stabilization:**
- External fixation often preferred for severe open fractures
- Provisional stabilization allows wound care
- Conversion to internal fixation when soft tissues allow

**Wound Management:**
- Primary closure only for Type I with minimal contamination
- Leave open and plan for delayed closure or coverage
- Negative pressure wound therapy (NPWT) useful adjunct
- Soft tissue coverage within 5-7 days (flap if needed)', 6);

-- Section 7: Compartment Syndrome
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'content', 'Compartment Syndrome',
'## Definition

Compartment syndrome occurs when pressure within a closed fascial compartment rises to a level that compromises tissue perfusion, leading to ischemia and necrosis.

## Pathophysiology

1. **Injury** → Bleeding, edema
2. **Pressure rises** within non-compliant fascial compartment
3. **Venous outflow compromised** → More edema
4. **Arterial inflow compromised** (at higher pressures)
5. **Tissue ischemia** → Myonecrosis, nerve damage
6. **Irreversible damage** at 6-8 hours

**Critical Points:**
- Muscle ischemia begins when compartment pressure exceeds capillary perfusion pressure
- Nerves: 30 minutes of ischemia causes neuropraxia; 12-24 hours causes permanent damage
- Muscle: 3 hours of ischemia causes reversible injury; 6-8 hours causes necrosis

## Etiologies

### Increased Contents
- Fractures (tibial shaft most common)
- Soft tissue trauma
- Burns
- Post-ischemic swelling (after vascular repair)
- Hemorrhage (anticoagulation)
- Snake envenomation
- IV/IO extravasation

### Decreased Compartment Size
- Constrictive casts, dressings
- Circumferential burns (eschar)
- Tight closure of fascial defects
- External compression (unconscious patient)

## High-Risk Fractures
- Tibial shaft (most common)
- Forearm (radius/ulna)
- Supracondylar humerus (children)
- Femur
- Crush injuries

## Clinical Diagnosis

### The 6 P''s (in order of occurrence)
1. **Pain** - Out of proportion to injury; Pain with passive stretch (earliest, most sensitive)
2. **Pressure** - Tense compartment on palpation
3. **Paresthesias** - Numbness in nerve distribution
4. **Paralysis** - Late sign; motor weakness
5. **Pallor** - Very late
6. **Pulselessness** - Very late (compartment syndrome is a clinical diagnosis; pulse is usually present)

**Clinical Pearl:**
- **Pain with passive stretch is the key early finding**
- Pain is typically out of proportion to apparent injury
- Pain may be masked in obtunded patients, children, or with regional anesthesia
- Do NOT wait for the late P''s (pulselessness, paralysis)

### Compartment Pressure Measurement

**When to measure:**
- Clinical suspicion with unclear examination
- Obtunded or intubated patients
- Uncooperative patients

**Technique:**
- Stryker STIC device or arterial line transducer
- Measure at level of fracture and 5 cm proximal/distal
- Measure all compartments of affected limb

**Thresholds:**
- **Absolute pressure**: >30 mmHg concerning
- **Delta P (ΔP)**: Diastolic pressure - Compartment pressure <30 mmHg indicates compartment syndrome
  - Example: DBP 80 mmHg, Compartment 60 mmHg, ΔP = 20 → Concerning
- Delta P more reliable in hypotensive patients

## Management

### Emergent Fasciotomy

**Indications:**
- Clinical diagnosis of compartment syndrome
- ΔP <30 mmHg
- Combined arterial and venous injury
- Prolonged ischemia with reperfusion

**Timing:**
- Perform IMMEDIATELY
- Delays beyond 6-8 hours lead to poor outcomes
- Fasciotomy does not benefit if performed after 12 hours of ischemia

### Four-Compartment Fasciotomy of the Leg

**Compartments:**
1. Anterior (tibialis anterior, EDL, EHL, peroneal nerve)
2. Lateral (peroneus longus and brevis, superficial peroneal nerve)
3. Deep Posterior (tibialis posterior, FDL, FHL, posterior tibial nerve/artery)
4. Superficial Posterior (gastrocnemius, soleus, plantaris)

**Two-Incision Technique:**
- **Anterolateral incision**: Releases anterior and lateral compartments
- **Medial incision**: Releases deep and superficial posterior compartments
- Full-length incisions (may need to extend to release completely)
- Leave wounds open; dressings; plan for delayed closure or skin grafting

### Volar and Dorsal Forearm Fasciotomy
- Release superficial and deep compartments
- Extend incisions from elbow to carpal tunnel

### Post-Fasciotomy Care
- Serial debridement of necrotic tissue
- Negative pressure wound therapy
- Delayed primary closure or skin grafting at 5-7 days
- May require extensive reconstructive surgery', 7);

-- Section 8: Splinting Principles
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'content', 'Splinting and Initial Stabilization',
'## Purposes of Splinting

1. **Pain relief**: Immobilization reduces pain
2. **Prevent further injury**: Protects soft tissue, nerves, vessels
3. **Reduce hemorrhage**: Stabilization decreases bleeding
4. **Facilitate transport**: Safe patient movement
5. **Provisional treatment**: Until definitive care available

## Splinting Principles

### General Principles
- Immobilize joint above and below fracture
- Apply in position of comfort/function when possible
- Pad bony prominences
- Check neurovascular status before and after
- Do not obstruct access to wounds

### Splint Types

**Rigid Splints:**
- Plaster or fiberglass
- Air splints
- Padded board splints
- Traction splints (femur)

**Soft Splints:**
- Slings
- Buddy taping (fingers)
- Pillows

## Common Splinting Techniques

### Upper Extremity

**Shoulder/Clavicle:**
- Sling and swathe
- Figure-of-eight bandage (clavicle fractures - controversial)

**Humeral Shaft:**
- Coaptation (sugar-tong) splint: U-shaped, elbow to shoulder
- Sling and swathe
- Hanging arm cast (if indicated)

**Elbow:**
- Long arm posterior splint
- Elbow at 90° flexion
- Forearm in neutral rotation

**Forearm (Radius/Ulna):**
- Sugar-tong splint (above elbow to metacarpal heads)
- Elbow at 90°
- Wrist in slight extension

**Wrist:**
- Volar wrist splint
- Short arm splint
- Wrist at 20° extension

**Hand:**
- Intrinsic plus (safe position):
  - Wrist extension 20-30°
  - MCP flexion 70-90°
  - IP extension
- Ulnar gutter splint (4th/5th metacarpal, boxer''s fracture)
- Radial gutter splint (2nd/3rd metacarpal)
- Thumb spica (scaphoid, thumb)

### Lower Extremity

**Hip/Femur:**
- Traction splint (Hare, Sager, Thomas)
- Traction reduces blood loss and pain
- NOT for open femur fractures or hip/knee injuries

**Knee:**
- Long leg splint
- Knee in slight flexion (5-15°)
- Knee immobilizer

**Tibia/Fibula:**
- Long leg posterior splint
- Stirrup splint for ankle component
- Knee at slight flexion, ankle at 90°

**Ankle:**
- Posterior ankle splint with stirrup
- Ankle at 90° (neutral)
- Extends from toes to upper calf

**Foot:**
- Posterior splint
- Bulky Jones dressing
- Hard-soled shoe (metatarsals)

## Closed Reduction

### Indications
- Displaced fractures with acceptable alignment goals
- Restoration of length, alignment, rotation
- Relieve pressure on skin (tented fractures)
- Reduce neurovascular compromise

### Principles
1. **Adequate analgesia/sedation**: Procedural sedation or regional block
2. **Reverse mechanism**: Recreate deformity to disimpact, then reduce
3. **Traction**: Restore length
4. **Manipulation**: Correct angulation and rotation
5. **Immobilization**: Maintain reduction with splint/cast
6. **Post-reduction imaging**: Confirm alignment
7. **Neurovascular check**: Document after procedure

### When to Refer Emergently
- Open fractures
- Vascular compromise
- Compartment syndrome
- Unstable fracture patterns
- Intra-articular fractures
- Fracture-dislocations
- Failed closed reduction
- Femur fractures (operative fixation standard)', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'key_points', 'Key Points',
'1. **Complete Fracture Description**: Include bone, location, pattern, displacement (translation, angulation, rotation, shortening), open vs. closed, neurovascular status

2. **Gustilo-Anderson Classification**: I (<1cm), II (1-10cm), IIIA (>10cm, adequate soft tissue), IIIB (requires flap), IIIC (arterial injury)

3. **Open Fracture Antibiotics**: Start within 1 hour; Cefazolin for Type I-II; add Aminoglycoside for Type III; add Penicillin for farm/soil contamination

4. **Open Fracture Surgery**: I&D within 24 hours (ideally 6-24 hours); low-pressure irrigation; 3L (I), 6L (II), 9L (III) saline

5. **Compartment Syndrome Signs**: Pain out of proportion, pain with passive stretch (earliest, most sensitive), tense compartment, paresthesias. Pulses are usually present!

6. **Compartment Pressure Threshold**: ΔP (Diastolic BP - Compartment Pressure) <30 mmHg = compartment syndrome; perform fasciotomy IMMEDIATELY

7. **Leg Compartments**: 4 compartments (anterior, lateral, superficial posterior, deep posterior); release via two-incision four-compartment fasciotomy

8. **Splinting Principles**: Immobilize joint above and below; pad bony prominences; check neurovascular status before and after; position of function

9. **Fracture Healing Phases**: Inflammatory (days 1-7), Reparative (weeks 2-6: soft then hard callus), Remodeling (months to years)

10. **Associated Nerve Injuries**: Humeral shaft → Radial nerve; Supracondylar humerus → Median/AIN; Hip dislocation → Sciatic; Fibular neck → Common peroneal', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: In compartment syndrome, the presence of a pulse does NOT rule out the diagnosis. Compartment pressure affects capillary perfusion long before arterial flow is compromised.

💡 **Pearl 2**: Pain with passive stretch is the earliest and most sensitive sign of compartment syndrome. In the leg, pain with passive toe extension suggests anterior compartment involvement.

💡 **Pearl 3**: Any wound near a fracture is an open fracture until proven otherwise. A small puncture wound may indicate bone penetration from inside out.

💡 **Pearl 4**: The Gustilo classification may be upgraded intraoperatively. Final grade is determined after thorough surgical exploration and debridement.

💡 **Pearl 5**: In the unconscious or intubated patient, clinical signs of compartment syndrome may be absent. Have a low threshold for compartment pressure measurement.

💡 **Pearl 6**: Traction splints are contraindicated in open femur fractures (may draw contamination into wound), hip fractures, and knee injuries.

💡 **Pearl 7**: Spiral fractures suggest rotational mechanism and raise suspicion for non-accidental trauma in children ("toddler''s fracture" is an exception).

💡 **Pearl 8**: When describing fracture displacement, always describe the distal fragment relative to the proximal fragment (the proximal fragment is "fixed" to the body).

💡 **Pearl 9**: Photograph open wounds before covering with dressings. This reduces repeated wound exposure and infection risk during transfers and evaluations.

💡 **Pearl 10**: The mnemonic for radial nerve injury with humeral shaft fractures: "Can''t extend wrist = WRIST drop = Radial nerve." Test by having patient extend wrist against resistance.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00009-0000-0000-0000-000000000009', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('art00009-0000-0000-0000-000000000009', 1, 'Gustilo RB, Anderson JT. Prevention of infection in the treatment of one thousand and twenty-five open fractures of long bones. J Bone Joint Surg Am. 1976;58(4):453-458.', NULL, '773941', NULL),
('art00009-0000-0000-0000-000000000009', 2, 'Gustilo RB, Mendoza RM, Williams DN. Problems in the management of type III (severe) open fractures. J Trauma. 1984;24(8):742-746.', '10.1097/00005373-198408000-00009', '6471139', NULL),
('art00009-0000-0000-0000-000000000009', 3, 'Hak DJ, et al. Delayed union and nonunions: epidemiology, clinical issues, and financial aspects. Injury. 2014;45(Suppl 2):S3-S7.', '10.1016/j.injury.2014.04.002', '24857025', NULL),
('art00009-0000-0000-0000-000000000009', 4, 'McQueen MM, et al. Acute compartment syndrome in tibial diaphyseal fractures. J Bone Joint Surg Br. 1996;78(1):95-98.', NULL, '8898136', NULL),
('art00009-0000-0000-0000-000000000009', 5, 'Hauser CJ, et al. EAST Practice Management Guidelines Work Group: prophylactic antibiotic use in open fractures. J Trauma. 2006;60(6):1319-1334.', '10.1097/01.ta.0000211295.78768.e8', '16766956', NULL),
('art00009-0000-0000-0000-000000000009', 6, 'Bhandari M, et al. A randomized trial of reamed and unreamed nailing for femoral shaft fractures. J Bone Joint Surg Am. 2008;90(Suppl 2 Pt 2):258-267.', '10.2106/JBJS.G.01694', '18310714', NULL),
('art00009-0000-0000-0000-000000000009', 7, 'von Keudell AG, et al. Diagnosis and treatment of acute extremity compartment syndrome. Lancet. 2015;386(10000):1299-1310.', '10.1016/S0140-6736(15)00277-9', '26460664', NULL),
('art00009-0000-0000-0000-000000000009', 8, 'AO Foundation. AO/OTA Fracture and Dislocation Classification. AO Foundation; 2018.', NULL, NULL, 'https://www.aofoundation.org/structure-and-classification');

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 1,
'A tibial fracture with a 12 cm wound, significant soft tissue loss requiring flap coverage, and no vascular injury is classified as Gustilo-Anderson:',
'Type I',
'Type II',
'Type IIIA',
'Type IIIB',
'Type IIIC',
'D',
'Gustilo Type IIIB is characterized by extensive soft tissue injury with inadequate coverage requiring flap reconstruction. The wound size >10 cm with soft tissue loss makes this IIIB. Type IIIC would require arterial injury requiring repair.',
'1,2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 2,
'The earliest and most sensitive sign of compartment syndrome is:',
'Pulselessness',
'Pallor',
'Paralysis',
'Pain with passive stretch',
'Paresthesias',
'D',
'Pain with passive stretch of muscles in the affected compartment is the earliest and most sensitive clinical sign of compartment syndrome. The other "P''s" are later findings. Pulselessness and pallor are very late signs.',
'4,7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 3,
'For a Gustilo Type III open tibial fracture, antibiotic therapy should include:',
'Cefazolin only',
'Cefazolin plus aminoglycoside',
'Fluoroquinolone only',
'Metronidazole only',
'Vancomycin only',
'B',
'Gustilo Type III open fractures require broader coverage with a first-generation cephalosporin (Cefazolin) plus an aminoglycoside (Gentamicin) to cover gram-negative organisms. Penicillin G is added for farm/soil contamination (Clostridium coverage).',
'5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 4,
'A compartment pressure of 45 mmHg in a patient with diastolic blood pressure of 70 mmHg indicates:',
'Normal compartment pressure',
'Elevated but acceptable pressure',
'Compartment syndrome (ΔP = 25 mmHg)',
'Need for repeat measurement in 1 hour',
'No intervention needed',
'C',
'The delta P (ΔP) = Diastolic pressure minus Compartment pressure = 70 - 45 = 25 mmHg. A ΔP <30 mmHg indicates compartment syndrome requiring emergent fasciotomy. Absolute pressure alone is less reliable.',
'4,7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 5,
'Antibiotics for open fractures should ideally be administered within:',
'6 hours of injury',
'3 hours of injury',
'1 hour of injury',
'24 hours of injury',
'12 hours of injury',
'C',
'Antibiotics for open fractures should be administered within 1 hour of injury (ideally as soon as possible). Delayed antibiotic administration is associated with increased infection rates. This is a time-critical intervention.',
'5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 6,
'A humeral shaft fracture is most commonly associated with injury to which nerve?',
'Ulnar nerve',
'Median nerve',
'Radial nerve',
'Musculocutaneous nerve',
'Axillary nerve',
'C',
'The radial nerve spirals around the posterior humerus in the spiral groove and is at risk with humeral shaft fractures. Injury results in wrist drop (inability to extend wrist and fingers) and numbness in the first dorsal web space.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 7,
'How many compartments are present in the lower leg that require release during fasciotomy for compartment syndrome?',
'2',
'3',
'4',
'5',
'6',
'C',
'The lower leg has four compartments: anterior, lateral, superficial posterior, and deep posterior. All four must be released during fasciotomy for compartment syndrome, typically through a two-incision approach.',
'7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 8,
'The reparative phase of fracture healing is characterized by:',
'Hematoma formation and inflammation',
'Formation of soft callus followed by hard callus',
'Conversion of woven bone to lamellar bone',
'Restoration of medullary canal',
'Resorption of excess callus',
'B',
'The reparative phase (weeks 2-6) involves soft callus formation (fibrocartilage) followed by hard callus formation (woven bone). This provides progressive mechanical stability. The inflammatory phase precedes this, and remodeling follows.',
'3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 9,
'When splinting a fracture, which joints should be immobilized?',
'Only the joint proximal to the fracture',
'Only the joint distal to the fracture',
'The joints both proximal and distal to the fracture',
'No joints need to be immobilized',
'Only the fracture site itself',
'C',
'Proper splinting technique requires immobilization of the joint above and below the fracture to prevent motion at the fracture site. This reduces pain, prevents further injury, and maintains reduction.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 10,
'The recommended volume of irrigation for a Gustilo Type II open fracture is:',
'1 liter',
'3 liters',
'6 liters',
'9 liters',
'12 liters',
'C',
'The recommended irrigation volumes are: Type I = 3 liters, Type II = 6 liters, Type III = 9 liters minimum. Low-pressure irrigation (bulb syringe) is preferred over high-pressure which may drive bacteria into tissues.',
'5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 11,
'A traction splint is contraindicated in which of the following situations?',
'Closed midshaft femur fracture',
'Open femur fracture',
'Isolated femoral diaphyseal fracture',
'Femur fracture with significant shortening',
'Femur fracture with thigh swelling',
'B',
'Traction splints are contraindicated in open femur fractures (may draw contamination into wound), hip fractures/dislocations, and knee injuries. They are indicated for isolated closed femoral shaft fractures to restore length and reduce pain/bleeding.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 12,
'In the "safe position" for hand splinting, the MCP joints should be:',
'Extended (0 degrees)',
'Flexed 70-90 degrees',
'Flexed 30-40 degrees',
'Hyperextended',
'Any comfortable position',
'B',
'The "safe position" or "intrinsic plus" position for hand splinting includes wrist extension 20-30°, MCP joints flexed 70-90°, and IP joints in extension. This position maintains collateral ligament length and prevents stiffness.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 13,
'A transverse fracture pattern is most likely caused by:',
'Torsional force',
'Bending force',
'Axial compression',
'Avulsion',
'Shear force',
'B',
'A transverse fracture pattern (perpendicular to the long axis of the bone) is caused by a bending force applied to the bone. Torsional forces cause spiral fractures, and axial loading causes compression or comminuted fractures.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 14,
'What is the time window after which fasciotomy for compartment syndrome provides minimal benefit?',
'2 hours',
'4 hours',
'6 hours',
'12 hours',
'24 hours',
'D',
'Muscle necrosis becomes irreversible at approximately 6-8 hours of ischemia. Fasciotomy performed after 12 hours of ischemia provides minimal benefit and may actually cause harm by releasing toxins (reperfusion syndrome). Emergent fasciotomy should be performed immediately upon diagnosis.',
'7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 15,
'In the AO/OTA classification system, a "42-B2" fracture refers to:',
'Humerus, proximal, wedge fracture',
'Tibia, diaphyseal, wedge fracture',
'Femur, diaphyseal, simple fracture',
'Radius, distal, complex fracture',
'Tibia, proximal, simple fracture',
'B',
'In the AO/OTA system: 4 = Tibia, 2 = Diaphyseal segment, B = Wedge type fracture, 2 = Subgroup. So 42-B2 is a tibial diaphyseal wedge fracture.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 16,
'What distinguishes Gustilo Type IIIC from Types IIIA and IIIB?',
'Wound size greater than 15 cm',
'Bone loss',
'Arterial injury requiring repair',
'Need for free flap coverage',
'Associated spinal cord injury',
'C',
'Gustilo Type IIIC is defined by arterial injury requiring repair, regardless of wound size or other characteristics. This carries the highest risk of amputation and infection (25-50%).',
'1,2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 17,
'The common peroneal nerve is at risk with fractures of the:',
'Femoral shaft',
'Tibial plateau',
'Fibular neck',
'Medial malleolus',
'Calcaneus',
'C',
'The common peroneal nerve wraps around the fibular neck and is susceptible to injury with fibular neck fractures and knee dislocations. Injury results in foot drop (weakness of ankle dorsiflexion and toe extension) and sensory loss over the dorsum of the foot.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 18,
'Primary (direct) bone healing occurs:',
'With any fracture that is immobilized',
'With rigid fixation and anatomic reduction',
'Only in children',
'Through visible callus formation',
'With external fixation',
'B',
'Primary bone healing occurs when there is rigid internal fixation with anatomic reduction, allowing direct osteonal remodeling without visible callus formation. This is slower than secondary healing and is seen with compression plating.',
'3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 19,
'When describing fracture displacement, the position of which fragment is described?',
'The proximal fragment relative to the body',
'The distal fragment relative to the proximal fragment',
'The larger fragment relative to the smaller',
'The most displaced fragment',
'Either fragment relative to the midline',
'B',
'By convention, fracture displacement is described by the position of the distal fragment relative to the proximal fragment. The proximal fragment is considered "fixed" to the body, so displacement describes where the distal fragment has moved.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00009-0000-0000-0000-000000000009', 20,
'A spiral fracture pattern is characteristic of which mechanism of injury?',
'Direct blow',
'Axial loading',
'Torsional (rotational) force',
'Bending force',
'Avulsion',
'C',
'Spiral fractures are caused by torsional or rotational forces applied to the bone. The fracture line spirals around the shaft. In children, spiral fractures of long bones (especially in non-ambulatory children) should raise suspicion for non-accidental trauma.',
'8');
