-- CME Article 14: Leg Ulcers
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100014-0000-0000-0000-000000000014',
    'b0000014-0000-0000-0000-000000000014',
    'a0000001-0000-0000-0000-000000000001',
    'Leg Ulcers: Etiology, Diagnosis, and Evidence-Based Management',
    'A Comprehensive Approach to Chronic Leg Wounds',
    'Leg ulcers affect 1-3% of the adult population and significantly impact quality of life. This CME article provides comprehensive coverage of the etiology, classification, diagnosis, and management of venous, arterial, diabetic, and mixed leg ulcers. Evidence-based treatment strategies including compression therapy, wound care, surgical interventions, and prevention of recurrence are discussed. Understanding the underlying pathophysiology is essential for appropriate treatment selection.',
    'UNTH Surgery Department, Vascular Surgery Unit',
    50,
    2.5,
    'medium',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'introduction', 'Introduction',
'A leg ulcer is defined as a loss of skin below the knee that takes more than 6 weeks to heal. Chronic leg ulcers represent a significant healthcare burden, affecting patient quality of life and consuming substantial healthcare resources.

**Epidemiology:**
- Prevalence: 1-3% of adult population
- Increases with age (up to 5% in >80 years)
- More common in women
- Significant economic impact (wound care costs, lost productivity)
- High recurrence rates (up to 70% for venous ulcers)

**Etiology Distribution:**
- Venous insufficiency: 60-80%
- Arterial disease: 10-25%
- Mixed venous-arterial: 10-15%
- Diabetic/neuropathic: 5-10%
- Other causes: 2-5% (vasculitis, malignancy, trauma, infection)

**The Challenge:**
- Chronic wounds are complex, often multifactorial
- Healing requires addressing underlying cause
- Local wound care alone is insufficient
- Patient factors (mobility, nutrition, comorbidities) affect outcomes
- Prevention of recurrence is as important as initial healing

**Goals of Management:**
1. Accurate diagnosis of underlying cause
2. Treatment of underlying condition
3. Optimal local wound care
4. Pain management
5. Prevention of recurrence
6. Improvement in quality of life

This article provides a systematic approach to the diagnosis and evidence-based management of chronic leg ulcers.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Differentiate between venous, arterial, diabetic, and mixed leg ulcers based on clinical features

2. Perform and interpret ankle-brachial index (ABI) for assessment of arterial status

3. Describe the pathophysiology of venous ulceration and chronic venous insufficiency

4. Apply evidence-based compression therapy for venous leg ulcers

5. Identify patients requiring vascular intervention for arterial and venous disease

6. Implement appropriate wound bed preparation using the TIME framework

7. Select appropriate wound dressings based on wound characteristics

8. Describe the role of surgery in leg ulcer management including skin grafting and venous procedures

9. Develop strategies for prevention of ulcer recurrence

10. Recognize atypical ulcers that require biopsy or specialist referral', 2);

-- Section 3: Venous Ulcers
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'content', 'Venous Leg Ulcers',
'## Pathophysiology

### Chronic Venous Insufficiency (CVI)
Venous ulcers result from sustained venous hypertension due to:
- **Primary valve incompetence** (superficial, deep, or perforator veins)
- **Secondary valve damage** (post-thrombotic syndrome)
- **Venous outflow obstruction**
- **Calf muscle pump failure** (immobility, weakness)

### Mechanism of Ulceration
Venous hypertension leads to:
1. Increased capillary pressure
2. Fluid and protein extravasation
3. Pericapillary fibrin cuff formation
4. Capillary occlusion and tissue hypoxia
5. Inflammatory cell accumulation
6. Tissue damage and ulceration

### CEAP Classification

**Clinical (C):**
- C0: No visible signs
- C1: Telangiectasias, reticular veins
- C2: Varicose veins
- C3: Edema
- C4a: Pigmentation, eczema
- C4b: Lipodermatosclerosis, atrophie blanche
- C5: Healed ulcer
- C6: Active ulcer

**Etiology (E):** Primary, Secondary, Congenital
**Anatomy (A):** Superficial, Deep, Perforator
**Pathophysiology (P):** Reflux, Obstruction, Both

## Clinical Features

### Typical Presentation
- **Location**: Medial malleolus (gaiter area)
- **Shape**: Irregular, shallow
- **Base**: Granulating or sloughy
- **Edges**: Sloping, may be macerated
- **Pain**: Mild to moderate, relieved by elevation

### Associated Findings
- Varicose veins
- Hemosiderin staining (brown discoloration)
- Lipodermatosclerosis (woody induration)
- Atrophie blanche (white scarring)
- Ankle flare (dilated venules around ankle)
- Eczema (venous dermatitis)
- Edema

## Diagnosis

### Clinical Assessment
- History: DVT, varicose veins, leg swelling, trauma
- Examination: Ulcer characteristics, surrounding skin changes
- Pulse examination: Must assess arterial status

### Duplex Ultrasound
- Gold standard for venous assessment
- Identifies reflux in superficial, deep, and perforator veins
- Detects previous DVT and obstruction
- Essential before venous intervention

### Ankle-Brachial Index (ABI)
- **Required before compression therapy**
- ABI >0.8: Compression usually safe
- ABI 0.5-0.8: Reduced compression with caution
- ABI <0.5: Avoid compression, refer for arterial assessment

## Treatment

### Compression Therapy
**The cornerstone of venous ulcer treatment**

| Type | Pressure | Indications |
|------|----------|-------------|
| High compression | 40 mmHg at ankle | ABPI >0.8, mobile patient |
| Reduced compression | 23-30 mmHg | ABPI 0.5-0.8, with caution |
| Multicomponent bandages | Preferred for ulcers | Better sustained pressure |
| Compression stockings | After healing | Recurrence prevention |

**Evidence:**
- High compression heals more ulcers than low compression
- Multicomponent systems superior to single-component
- Four-layer bandaging: Classic gold standard
- Two-layer systems: Similar efficacy, easier application

### Wound Care
- Debridement of slough and necrotic tissue
- Appropriate dressings (see wound care section)
- Manage exudate appropriately
- Treat infection if present

### Venous Intervention
**Indications:**
- Superficial reflux on duplex
- Deep venous reflux with superficial component
- ESCHAR trial: Superficial surgery + compression > compression alone

**Options:**
- Endovenous thermal ablation (laser, radiofrequency)
- Foam sclerotherapy
- Traditional surgery (stripping, ligation)
- Perforator ablation

### Skin Grafting
- Consider for large, slow-healing ulcers
- Pinch grafts, split-thickness skin grafts
- Improves healing time but compression still essential', 3);

-- Section 4: Arterial Ulcers
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'content', 'Arterial Leg Ulcers',
'## Pathophysiology

Arterial ulcers result from insufficient arterial blood supply to meet tissue metabolic demands, leading to tissue ischemia and necrosis.

### Causes
- **Atherosclerosis** (most common)
- Thromboangiitis obliterans (Buerger''s disease)
- Vasculitis
- Thromboembolism
- Trauma to diseased arteries

### Risk Factors
- Smoking (most important modifiable factor)
- Diabetes mellitus
- Hypertension
- Hyperlipidemia
- Age
- Chronic kidney disease

## Clinical Features

### Typical Presentation
- **Location**: Toes, heel, lateral malleolus, pressure points
- **Shape**: Punched-out, well-defined borders
- **Base**: Pale, necrotic, or gangrenous; no granulation
- **Edges**: Sharp, defined
- **Pain**: Severe, worse at night and with elevation, relieved by dependency

### Associated Findings
- Absent or diminished pulses
- Cool, pale extremity
- Hair loss on lower leg and foot
- Thickened, dystrophic nails
- Atrophic, shiny skin
- Delayed capillary refill
- Dependent rubor, elevation pallor
- Intermittent claudication or rest pain

### Fontaine Classification

| Stage | Symptoms |
|-------|----------|
| I | Asymptomatic |
| IIa | Mild claudication (>200 m) |
| IIb | Moderate-severe claudication (<200 m) |
| III | Rest pain |
| IV | Tissue loss (ulceration, gangrene) |

## Diagnosis

### Ankle-Brachial Index (ABI)

| ABI | Interpretation |
|-----|----------------|
| >1.3 | Non-compressible (calcified) |
| 1.0-1.3 | Normal |
| 0.9-1.0 | Borderline |
| 0.5-0.9 | Peripheral arterial disease |
| <0.5 | Severe PAD, critical limb ischemia |

### Toe-Brachial Index (TBI)
- Used when ABI unreliable (diabetes, renal disease with calcification)
- TBI <0.7 suggests PAD
- Absolute toe pressure <30 mmHg: Critical ischemia

### Imaging
- **Duplex ultrasound**: Non-invasive, first-line
- **CT angiography**: Detailed anatomy, planning intervention
- **MR angiography**: Alternative to CT, no radiation
- **Digital subtraction angiography**: Gold standard, allows intervention

### Transcutaneous Oxygen (TcPO2)
- Measures tissue oxygenation
- TcPO2 <30 mmHg: Unlikely to heal
- Helps predict amputation healing

## Treatment

### Medical Management
- **Smoking cessation** (essential)
- Antiplatelet therapy (aspirin or clopidogrel)
- Statin therapy
- Blood pressure control
- Diabetes management
- Walking exercise program

### Revascularization
**Critical for arterial ulcer healing**

**Endovascular:**
- Angioplasty ± stenting
- Preferred for short lesions
- Good for high-risk patients

**Surgical:**
- Bypass grafting (femoral-popliteal, femoral-tibial)
- Endarterectomy
- For complex or long lesions
- Autologous vein graft preferred

### Wound Care Principles
- Avoid compression
- Keep wound dry if necrotic (allow eschar to demarcate)
- Debride only after revascularization improves perfusion
- Appropriate pain management
- Protect from further trauma

### Amputation
- Consider when revascularization not possible
- Pain control in non-reconstructable disease
- Level determined by healing potential and function
- Toe, transmetatarsal, below-knee, above-knee', 4);

-- Section 5: Diabetic Foot Ulcers
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'content', 'Diabetic Foot Ulcers',
'## Pathophysiology

Diabetic foot ulcers result from the combined effects of:

### 1. Peripheral Neuropathy
- **Sensory**: Loss of protective sensation → unnoticed trauma
- **Motor**: Intrinsic muscle wasting → foot deformity, abnormal pressure distribution
- **Autonomic**: Dry skin, cracking, reduced blood flow regulation

### 2. Peripheral Arterial Disease
- 2-4x more common in diabetes
- More distal distribution (infrapopliteal)
- Calcification makes ABI unreliable

### 3. Impaired Immunity
- Increased susceptibility to infection
- Poor wound healing
- Biofilm formation

### 4. Foot Deformity
- Charcot arthropathy
- Claw toes, hammer toes
- Abnormal pressure points

## Clinical Features

### Typical Presentation
- **Location**: Plantar aspect of metatarsal heads, tips of toes, heel
- **Shape**: Often round or oval at pressure points
- **Base**: May be deep, involving tendon or bone
- **Pain**: Often painless due to neuropathy (concerning!)
- **Surrounding skin**: Callus formation

### Associated Findings
- Loss of sensation (10 g monofilament, vibration)
- Foot deformities
- Dry, cracked skin
- Callus at pressure points
- May have palpable pulses (despite PAD)

## Classification

### Wagner Classification

| Grade | Description |
|-------|-------------|
| 0 | Intact skin, at risk |
| 1 | Superficial ulcer |
| 2 | Deep ulcer to tendon, capsule, bone |
| 3 | Deep ulcer with abscess, osteomyelitis |
| 4 | Localized gangrene |
| 5 | Extensive gangrene |

### University of Texas Classification
- Grade: Depth (0-3)
- Stage: A (clean), B (infected), C (ischemic), D (infected + ischemic)
- More predictive of outcome than Wagner

### SINBAD Score
- Site, Ischemia, Neuropathy, Bacterial infection, Area, Depth
- 0-6 scale; higher score = worse prognosis

## Diagnosis

### Neuropathy Assessment
- **10 g monofilament**: Loss at any site = at risk
- **Vibration**: 128 Hz tuning fork at great toe
- **Ankle reflexes**: Diminished or absent

### Vascular Assessment
- Pulse examination
- ABI (may be falsely elevated due to calcification)
- Toe-brachial index
- TcPO2

### Infection Assessment
- Signs may be subtle (no pain, blunted inflammation)
- Erythema, swelling, discharge, fever
- Probe to bone: Positive = high probability of osteomyelitis
- Cultures (deep tissue or bone, not swabs)

### Imaging for Osteomyelitis
- X-ray: May be normal early
- MRI: Most sensitive and specific
- Bone biopsy: Gold standard for diagnosis

## Treatment

### Offloading (Essential)
- Total contact casting (gold standard for plantar ulcers)
- Removable cast walkers
- Therapeutic footwear
- Bed rest if severe

### Wound Care
- Debridement of callus and necrotic tissue
- Appropriate dressings
- Manage exudate
- Negative pressure wound therapy for appropriate wounds

### Infection Management
- Mild: Oral antibiotics, often empiric initially
- Moderate/Severe: IV antibiotics, hospitalization
- Osteomyelitis: Prolonged antibiotics ± surgical debridement
- Cover gram-positive, gram-negative, anaerobes for deep infections

### Revascularization
- Essential if significant PAD
- Endovascular often preferred
- Angioplasty of tibial vessels

### Surgery
- Debridement and drainage of abscess
- Amputation when non-salvageable
- Reconstructive procedures for deformity
- Achilles tendon lengthening for equinus

### Glycemic Control
- HbA1c target <7% when possible
- Improved glycemic control improves healing and reduces infection', 5);

-- Section 6: Wound Care Principles
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'content', 'Wound Care and Dressings',
'## TIME Framework for Wound Bed Preparation

### T - Tissue (Non-viable or Deficient)

**Goal:** Remove non-viable tissue

**Methods:**
- **Sharp debridement**: Fast, effective; requires skill
- **Autolytic**: Body''s enzymes; use occlusive dressings
- **Enzymatic**: Collagenase preparations
- **Mechanical**: Wet-to-dry (less preferred), irrigation
- **Biological**: Larval (maggot) therapy

**When NOT to debride:**
- Dry eschar on ischemic limb
- Stable heel eschar in arterial disease

### I - Infection/Inflammation

**Signs of Wound Infection:**
- Increased pain, erythema, warmth
- Purulent discharge
- Increased size or delayed healing
- Friable granulation tissue
- Wound breakdown

**Management:**
- Systemic antibiotics for spreading infection
- Topical antimicrobials for local infection/biofilm
- Cadexomer iodine, silver dressings, honey
- Debridement to remove biofilm

### M - Moisture Imbalance

**Goal:** Maintain optimal moisture

| Wound Status | Intervention |
|--------------|--------------|
| Dry wound | Hydrate with hydrogels |
| Minimal exudate | Maintain moisture with films, hydrocolloids |
| Moderate exudate | Absorb excess with foams, alginates |
| Heavy exudate | Super-absorbents, NPWT |

### E - Edge (Non-advancing or Undermined)

**Assess:**
- Epibole (rolled edges): May need debridement
- Undermining: Suggests shear or infection
- Non-advancing edges: Consider biopsy (malignancy)

**Interventions:**
- Sharp debridement of rolled edges
- Address underlying cause
- Consider skin grafting
- Biopsy if not healing as expected

## Dressing Selection

### Dressing Categories and Uses

| Dressing Type | Characteristics | Indications |
|---------------|-----------------|-------------|
| Film | Transparent, waterproof | Low-exudate wounds, secondary dressing |
| Hydrocolloid | Absorptive, promotes autolysis | Low-moderate exudate, shallow wounds |
| Foam | Absorbent, cushioning | Moderate-high exudate |
| Alginate | Highly absorbent, hemostatic | High exudate, bleeding wounds |
| Hydrogel | Provides moisture | Dry wounds, sloughy wounds |
| Silver-containing | Antimicrobial | Infected or at-risk wounds |
| Honey | Antimicrobial, debridement | Sloughy, infected wounds |
| Collagen | Scaffold for healing | Chronic wounds, stalled healing |

## Negative Pressure Wound Therapy (NPWT)

### Mechanism
- Applies controlled negative pressure to wound
- Removes exudate and infectious material
- Promotes granulation tissue formation
- Draws wound edges together

### Indications
- Large wounds with significant exudate
- Preparation for skin grafting
- Diabetic foot wounds (with adequate perfusion)
- Surgical wound dehiscence

### Contraindications
- Necrotic tissue with eschar
- Untreated osteomyelitis
- Malignancy in wound
- Exposed blood vessels
- Inadequate perfusion

## Skin Grafting

### Split-Thickness Skin Graft (STSG)
- Epidermis + partial dermis
- Heals from wound bed and edges
- Donor site heals secondarily
- Commonly used for leg ulcers

### Pinch Grafts
- Small pieces of full-thickness skin
- Can be done under local anesthesia
- Good for small areas

### Skin Substitutes
- Biological (cadaveric, xenograft)
- Biosynthetic
- Growth factors
- Expensive, variable evidence

## Adjunctive Therapies

### Hyperbaric Oxygen Therapy
- Evidence for diabetic foot ulcers
- Improves tissue oxygenation
- Limited availability, expensive

### Ultrasound Therapy
- Low-frequency ultrasound for debridement
- Evidence limited

### Growth Factors
- Becaplermin (PDGF) for diabetic ulcers
- Variable efficacy', 6);

-- Section 7: Mixed and Atypical Ulcers
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'content', 'Mixed and Atypical Ulcers',
'## Mixed Arterial-Venous Ulcers

### Definition
Co-existing venous insufficiency and peripheral arterial disease

### Importance
- Common: 10-15% of leg ulcers
- Affects treatment decisions (compression)
- Requires careful assessment

### Assessment
- Full arterial evaluation (pulses, ABI, TBI)
- Duplex for venous and arterial disease
- Consider vascular referral

### Management Principles
- ABI 0.5-0.8: Reduced compression with supervision
- ABI <0.5: Revascularization before compression
- Address both components for optimal healing
- May need sequential approach: revascularization first

## Atypical Ulcers

### When to Suspect
- Unusual location
- Atypical appearance
- Failure to heal with standard treatment
- Rapid progression
- Associated systemic symptoms

### Causes to Consider

**Malignancy:**
- Squamous cell carcinoma (Marjolin''s ulcer in chronic wounds)
- Basal cell carcinoma
- Melanoma
- Lymphoma
- Metastatic disease
- Kaposi''s sarcoma

**Vasculitis:**
- Rheumatoid arthritis
- Systemic lupus erythematosus
- Polyarteritis nodosa
- Wegener''s granulomatosis

**Hematologic:**
- Sickle cell disease
- Polycythemia vera
- Leukemia

**Infectious:**
- Pyoderma gangrenosum
- Ecthyma
- Tropical ulcers
- Mycobacterial infection
- Fungal infection

**Other:**
- Pyoderma gangrenosum
- Necrobiosis lipoidica
- Calciphylaxis
- Factitious/self-inflicted

### Marjolin''s Ulcer
- Squamous cell carcinoma arising in chronic wounds
- Typically after 20-30 years of chronic ulceration
- Aggressive, high metastatic potential
- Signs: Raised edges, excessive granulation, bleeding
- Treatment: Wide excision + lymph node assessment

### Pyoderma Gangrenosum
- Inflammatory, not infectious
- Rapidly progressive, painful ulcers
- Purple, undermined borders
- Associated with IBD, rheumatoid arthritis, hematologic conditions
- Treatment: Immunosuppression (steroids, cyclosporine)
- DO NOT debride aggressively (pathergy)

## Biopsy Indications

### When to Biopsy
- Non-healing ulcer after 3 months of treatment
- Atypical appearance or location
- Excessive granulation tissue
- Rolled or heaped-up edges
- Suspected malignancy
- Suspected vasculitis
- Unusual presentation

### Technique
- Punch biopsy (4-6 mm)
- Include ulcer edge and normal tissue
- Consider multiple biopsies
- Send for histology (and microbiology if infection suspected)

## Specialist Referral

### Indications for Referral
- Uncertain diagnosis
- Arterial disease requiring intervention
- Failed conservative management (>3 months)
- Suspected malignancy
- Systemic disease association
- Complex wounds
- Need for skin grafting', 7);

-- Section 8: Prevention and Recurrence
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'content', 'Prevention and Recurrence',
'## Venous Ulcer Recurrence Prevention

### The Problem
- 70% recurrence rate at 5 years without prevention
- Recurrence usually at same site
- Each recurrence harder to heal

### Compression Therapy (Essential)
- **Lifelong compression stockings** after healing
- Class 2 (23-32 mmHg) minimum
- Higher pressure if tolerated
- Proper fitting essential
- Replace stockings every 3-6 months

### Lifestyle Modifications
- Regular walking exercise
- Leg elevation when resting
- Avoid prolonged standing
- Weight management
- Skin care (moisturizers, avoid trauma)

### Venous Intervention
- Treat superficial reflux
- May reduce recurrence rates
- Consider after ulcer healing

### Follow-up
- Regular review (initially monthly, then 3-6 monthly)
- Early intervention if skin changes develop
- Patient education on warning signs

## Arterial Ulcer Prevention

### Risk Factor Modification
- **Smoking cessation** (most important)
- Blood pressure control
- Lipid management (statins)
- Diabetes control
- Antiplatelet therapy

### Supervised Exercise
- Walking programs improve claudication
- Increase walking distance progressively

### Foot Care
- Daily inspection
- Appropriate footwear
- Avoid injury
- Prompt treatment of any wounds

## Diabetic Foot Ulcer Prevention

### High-Risk Foot Identification
- Previous ulcer or amputation
- Peripheral neuropathy
- Foot deformity
- Peripheral arterial disease
- Poor glycemic control

### Prevention Strategies

**Patient Education:**
- Daily foot inspection
- Never walk barefoot
- Check inside shoes before wearing
- Report problems promptly

**Footwear:**
- Therapeutic shoes
- Custom orthotics if needed
- Proper fitting (assess with monofilament)

**Regular Foot Care:**
- Podiatry for nail care, callus removal
- Moisturizers for dry skin
- Avoid cuts when trimming nails

**Glycemic Control:**
- Target HbA1c <7% when possible
- Improves healing and reduces infection risk

**Regular Screening:**
- Foot examination at every diabetes visit
- Annual comprehensive foot exam
- Risk stratification and appropriate follow-up

## Patient Education

### Key Messages
- Underlying condition must be managed lifelong
- Compression is essential for venous disease (unless contraindicated)
- Foot care is critical for diabetic patients
- Report new wounds or changes early
- Maintain healthy lifestyle

### Warning Signs to Report
- New ulcer or wound
- Increasing pain
- Signs of infection (redness, swelling, discharge)
- Skin discoloration or changes
- Changes in sensation

## Multidisciplinary Care

### Team Members
- Vascular surgeon
- Dermatologist
- Diabetologist/endocrinologist
- Podiatrist
- Wound care nurse
- Orthotist
- Nutritionist

### Benefits
- Comprehensive assessment
- Coordinated care
- Improved outcomes
- Reduced amputation rates', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'key_points', 'Key Points',
'1. **Etiology Matters**: 60-80% of leg ulcers are venous; accurate diagnosis determines treatment. Arterial status MUST be assessed before compression.

2. **Venous Ulcers**: Medial malleolus location, shallow, irregular borders, associated skin changes (hemosiderin, lipodermatosclerosis). Compression is the cornerstone of treatment.

3. **Arterial Ulcers**: Punched-out, painful (especially at night), toes/lateral leg, absent pulses. Revascularization required for healing.

4. **ABI Before Compression**: ABI >0.8 = safe for high compression; 0.5-0.8 = reduced compression with caution; <0.5 = contraindicated.

5. **Diabetic Foot Ulcers**: Neuropathy + pressure + PAD + infection. Offloading is essential. Probe to bone suggests osteomyelitis.

6. **TIME Framework**: Tissue debridement, Infection control, Moisture balance, Edge assessment—systematic approach to wound bed preparation.

7. **Compression Evidence**: High compression heals more venous ulcers than low compression. Multicomponent systems are preferred.

8. **When to Biopsy**: Non-healing ulcer after 3 months, atypical appearance, excessive granulation, rolled edges—rule out malignancy.

9. **Recurrence Prevention**: Lifelong compression stockings for venous ulcers. Risk factor modification for arterial. Therapeutic footwear and education for diabetic.

10. **Multifactorial Approach**: Healing requires addressing underlying cause, optimizing wound care, managing comorbidities, and preventing recurrence.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: An ulcer on the lateral leg or foot in a patient with varicose veins is NOT automatically venous. Check ABI and consider arterial disease.

💡 **Pearl 2**: Pain that wakes the patient at night and is relieved by dangling the leg over the bed is classic for arterial insufficiency—gravity helps perfusion.

💡 **Pearl 3**: A painless foot ulcer in a diabetic is more worrying, not less. Loss of protective sensation means serious injury can occur without the patient''s awareness.

💡 **Pearl 4**: Positive "probe to bone" test (sterile probe reaches bone through ulcer) has >85% positive predictive value for osteomyelitis in diabetic foot ulcers.

💡 **Pearl 5**: Marjolin''s ulcer (SCC in chronic wound) should be suspected in any ulcer present for decades that suddenly changes character—especially with raised edges or excessive bleeding.

💡 **Pearl 6**: Don''t debride dry, stable eschar on an ischemic foot. Let it demarcate or treat with revascularization first. Debridement without perfusion worsens outcomes.

💡 **Pearl 7**: ABI may be falsely elevated (>1.3) in diabetics and renal patients due to vessel calcification. Use toe-brachial index or TcPO2 instead.

💡 **Pearl 8**: In pyoderma gangrenosum, aggressive debridement worsens the ulcer (pathergy). Medical treatment with immunosuppression is primary therapy.

💡 **Pearl 9**: Patients rarely comply with compression stockings after ulcer healing unless educated about recurrence risk. Emphasize this is lifelong therapy.

💡 **Pearl 10**: If a venous ulcer is not showing improvement after 4-6 weeks of adequate compression, reassess the diagnosis and consider referral, imaging, or biopsy.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100014-0000-0000-0000-000000000014', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100014-0000-0000-0000-000000000014', 1, 'O''Donnell TF Jr, et al. Management of venous leg ulcers: Clinical practice guidelines of the Society for Vascular Surgery and the American Venous Forum. J Vasc Surg. 2014;60(2 Suppl):3S-59S.', '10.1016/j.jvs.2014.04.049', '24974070', NULL),
('a1100014-0000-0000-0000-000000000014', 2, 'Conte MS, et al. Global vascular guidelines on the management of chronic limb-threatening ischemia (GVG-CLTI). J Vasc Surg. 2019;69(6S):3S-125S.', '10.1016/j.jvs.2019.02.016', '31159978', NULL),
('a1100014-0000-0000-0000-000000000014', 3, 'Lipsky BA, et al. IWGDF/IDSA Guidelines on the Diagnosis and Treatment of Diabetes-related Foot Infections. Clin Infect Dis. 2020;71(6):e199-e226.', '10.1093/cid/ciaa006', '32246533', NULL),
('a1100014-0000-0000-0000-000000000014', 4, 'Gohel MS, et al. A Randomized Trial of Early Endovenous Ablation in Venous Ulceration (EVRA Trial). N Engl J Med. 2018;378(22):2105-2114.', '10.1056/NEJMoa1801214', '29688123', NULL),
('a1100014-0000-0000-0000-000000000014', 5, 'Nelson EA, et al. Compression for preventing recurrence of venous ulcers. Cochrane Database Syst Rev. 2014;2014(9):CD002303.', '10.1002/14651858.CD002303.pub3', '25203307', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 1,
'The most common cause of leg ulcers is:',
'Arterial insufficiency',
'Venous insufficiency',
'Diabetes mellitus',
'Trauma',
'Malignancy',
'B',
'Venous insufficiency accounts for 60-80% of all leg ulcers, making it the most common cause. Arterial disease accounts for 10-25%, and mixed venous-arterial disease for 10-15%. Diabetic ulcers account for about 5-10%.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 2,
'Venous ulcers are typically located:',
'Over the lateral malleolus',
'Over the medial malleolus (gaiter area)',
'On the tips of the toes',
'On the heel',
'On the dorsum of the foot',
'B',
'Venous ulcers typically occur over the medial malleolus in the "gaiter area" of the lower leg. This is due to the distribution of venous hypertension and perforator veins in this region. Arterial ulcers are more common on toes, heel, and lateral aspects.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 3,
'Before applying compression therapy for a leg ulcer, which assessment is MANDATORY?',
'Duplex ultrasound of veins',
'Ankle-brachial index (ABI)',
'Wound culture',
'Hemoglobin level',
'Nutritional assessment',
'B',
'Ankle-brachial index (ABI) is MANDATORY before compression therapy to rule out significant arterial disease. Compression on an ischemic limb can worsen perfusion and lead to tissue necrosis. ABI >0.8 is generally safe for high compression.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 4,
'An ABI of 0.5 indicates:',
'Normal arterial circulation',
'Mild peripheral arterial disease',
'Severe peripheral arterial disease',
'Venous insufficiency',
'Measurement error',
'C',
'An ABI of 0.5 indicates severe peripheral arterial disease. Normal ABI is 1.0-1.3. Borderline is 0.9-1.0. Mild-moderate PAD is 0.5-0.9. ABI <0.5 indicates severe PAD and critical limb ischemia. Compression is contraindicated at this level.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 5,
'Classic features of an arterial ulcer include all EXCEPT:',
'Punched-out appearance',
'Severe pain, worse at night',
'Location on medial malleolus',
'Absent peripheral pulses',
'Pain relieved by dependency',
'C',
'Arterial ulcers are typically located on toes, heels, and lateral malleolus—not the medial malleolus, which is classic for venous ulcers. Arterial ulcers are punched-out, painful (worse at night, relieved by dependency), and associated with absent pulses.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 6,
'The cornerstone of venous ulcer treatment is:',
'Antibiotics',
'Debridement',
'Compression therapy',
'Skin grafting',
'Elevation alone',
'C',
'Compression therapy is the cornerstone of venous ulcer treatment. High compression heals more ulcers than low compression. Multicomponent systems are superior to single-component. Other treatments (dressings, debridement) are adjunctive to compression.', '{1,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 7,
'In diabetic foot ulcers, the most essential component of treatment is:',
'Antibiotics',
'Debridement',
'Offloading',
'Compression',
'Topical growth factors',
'C',
'Offloading (removing pressure from the wound) is the most essential component of diabetic foot ulcer treatment. Total contact casting is the gold standard for plantar ulcers. Without adequate offloading, wounds will not heal despite other interventions.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 8,
'A positive "probe to bone" test in a diabetic foot ulcer suggests:',
'Adequate wound depth',
'Need for skin grafting',
'High probability of osteomyelitis',
'Good prognosis for healing',
'Superficial infection only',
'C',
'A positive probe to bone test (sterile probe reaches bone through the ulcer) has >85% positive predictive value for osteomyelitis in diabetic foot ulcers. This finding should prompt further investigation (imaging, bone biopsy) and consideration of prolonged antibiotic therapy.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 9,
'Lipodermatosclerosis and hemosiderin staining are characteristic of:',
'Arterial insufficiency',
'Chronic venous insufficiency',
'Diabetic neuropathy',
'Pyoderma gangrenosum',
'Vasculitis',
'B',
'Lipodermatosclerosis (woody induration of the skin) and hemosiderin staining (brown discoloration) are characteristic features of chronic venous insufficiency. These result from chronic venous hypertension and extravasation of red blood cells with hemoglobin breakdown.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 10,
'The TIME framework for wound bed preparation stands for:',
'Temperature, Infection, Moisture, Epithelialization',
'Tissue, Infection, Moisture, Edge',
'Treatment, Inflammation, Medication, Evaluation',
'Timing, Irrigation, Management, Elevation',
'Tissue, Inflammation, Moist, Epithelium',
'B',
'TIME stands for Tissue (non-viable), Infection/Inflammation, Moisture imbalance, and Edge (non-advancing). This systematic framework guides wound bed preparation to optimize conditions for healing.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 11,
'Marjolin''s ulcer refers to:',
'Venous ulcer that fails to heal',
'Squamous cell carcinoma arising in a chronic wound',
'Arterial ulcer requiring amputation',
'Diabetic foot ulcer with osteomyelitis',
'Traumatic ulcer with infection',
'B',
'Marjolin''s ulcer is a squamous cell carcinoma that arises in chronic wounds, typically after 20-30 years of non-healing. It is aggressive with high metastatic potential. Signs include raised edges, excessive granulation, and bleeding. Treatment is wide excision.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 12,
'A leg ulcer that is not healing after 3 months of appropriate treatment should prompt:',
'Continuation of the same treatment',
'Immediate amputation',
'Biopsy to rule out malignancy',
'Switching antibiotics',
'Increasing compression pressure',
'C',
'A non-healing ulcer after 3 months of appropriate treatment should prompt biopsy to rule out malignancy and other atypical causes. Malignancy, vasculitis, and other conditions may present as chronic ulcers.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 13,
'In mixed arterial-venous ulcers with ABI 0.6, the appropriate management is:',
'High compression (40 mmHg)',
'No compression at all',
'Reduced compression (23-30 mmHg) with caution',
'Immediate surgical intervention',
'Amputation',
'C',
'For mixed arterial-venous ulcers with ABI 0.5-0.8, reduced compression (23-30 mmHg) can be used with caution and close supervision. These patients may benefit from vascular assessment and possible revascularization. Full compression is reserved for ABI >0.8.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 14,
'The recurrence rate for venous ulcers at 5 years WITHOUT prevention measures is approximately:',
'10%',
'30%',
'50%',
'70%',
'90%',
'D',
'Without preventive measures (especially compression stockings), venous ulcer recurrence rates are approximately 70% at 5 years. Lifelong compression therapy significantly reduces this rate. Patient education and compliance are essential.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 15,
'For prevention of venous ulcer recurrence, compression stockings should be worn:',
'For 6 months after healing',
'For 1 year after healing',
'Lifelong',
'Only when symptoms occur',
'Only during winter months',
'C',
'Compression stockings should be worn lifelong after venous ulcer healing to prevent recurrence. Class 2 compression (23-32 mmHg) is the minimum recommended. Stockings should be replaced every 3-6 months as they lose elasticity.', '{5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 16,
'Which dressing is most appropriate for a heavily exudating wound?',
'Hydrocolloid',
'Film dressing',
'Alginate or foam',
'Hydrogel',
'Paraffin gauze',
'C',
'Alginate and foam dressings are highly absorbent and appropriate for heavily exudating wounds. Hydrocolloids are for low-moderate exudate. Hydrogels provide moisture to dry wounds. Film dressings are for minimal exudate or as secondary dressings.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 17,
'In pyoderma gangrenosum, aggressive debridement:',
'Is the treatment of choice',
'Should be avoided as it worsens the condition',
'Is only done after immunosuppression',
'Is required to remove all necrotic tissue',
'Has no effect on the condition',
'B',
'In pyoderma gangrenosum, aggressive debridement should be avoided as it can trigger pathergy (worsening of the ulcer due to trauma). Primary treatment is medical with immunosuppression (corticosteroids, cyclosporine). Gentle wound care is acceptable.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 18,
'The gold standard for offloading a plantar diabetic foot ulcer is:',
'Bed rest',
'Therapeutic sandals',
'Total contact casting',
'Regular walking shoes',
'Wheelchair use',
'C',
'Total contact casting (TCC) is the gold standard for offloading plantar diabetic foot ulcers. It redistributes pressure across the entire foot, is irremovable (ensuring compliance), and promotes healing. Removable cast walkers are an alternative.', '{3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 19,
'Dry, stable eschar on an ischemic heel should be:',
'Aggressively debrided immediately',
'Left intact unless signs of infection develop',
'Covered with moist dressings',
'Surgically excised',
'Treated with enzymatic debridement',
'B',
'Dry, stable eschar on an ischemic limb (especially the heel) should be left intact and kept dry unless signs of infection develop (erythema, drainage, odor). Debridement without adequate perfusion can lead to larger wounds and potential amputation.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100014-0000-0000-0000-000000000014', 20,
'The EVRA trial demonstrated that for venous leg ulcers with superficial reflux:',
'Compression alone is adequate',
'Early endovenous ablation improves healing rates',
'Surgery should be delayed until ulcer heals',
'Antibiotics improve outcomes',
'Skin grafting is superior to compression',
'B',
'The EVRA trial (2018) demonstrated that early endovenous ablation of superficial venous reflux, combined with compression, leads to faster healing of venous leg ulcers compared to compression with deferred intervention. This supports early intervention for venous ulcers.', '{4}');
