-- Surgery 4 MCQ Question Bank - Batch 34
-- Section F: Plastic and Reconstructive Surgery
-- 40 Questions

-- Topic: Plastic and Reconstructive Surgery
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000034-0000-0000-0000-000000000034', 'Plastic and Reconstructive Surgery', 'a0000004-0000-0000-0000-000000000004', 'Wound healing, skin grafts, flaps, and reconstructive techniques', 34, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'The phases of wound healing in order are:',
 'Proliferation inflammation remodeling', 'Hemostasis inflammation proliferation and remodeling', 'Remodeling proliferation inflammation', 'Inflammation only', 'Hemostasis remodeling proliferation',
 'B', 'Wound healing phases: hemostasis (clot formation, minutes), inflammation (neutrophils, macrophages, days 1-4), proliferation (granulation, epithelialization, days 4-21), remodeling (collagen maturation, weeks to years).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'The predominant cell type in the inflammatory phase of wound healing is:',
 'Fibroblast', 'Macrophage (initially neutrophils then macrophages)', 'Keratinocyte', 'Myofibroblast', 'Endothelial cell',
 'B', 'Inflammatory phase: neutrophils arrive first (peak 24-48h), then macrophages (day 2-3, peak day 4). Macrophages critical for coordinating healing, releasing growth factors. Prolonged inflammation impairs healing.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'The predominant cell in the proliferative phase of wound healing is:',
 'Neutrophil', 'Fibroblast', 'Macrophage', 'Platelet', 'Mast cell',
 'B', 'Proliferative phase: fibroblasts key cells. Produce collagen (type III initially), ECM, granulation tissue. Also: angiogenesis (endothelial cells), epithelialization (keratinocytes), wound contraction (myofibroblasts).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'During wound remodeling the predominant collagen changes from:',
 'Type I to type III', 'Type III to type I', 'Type IV to type II', 'Type II to type IV', 'No change occurs',
 'B', 'Remodeling: type III collagen (early, less organized) replaced by type I (stronger, mature). Collagen cross-linking increases. Wound strength reaches ~80% of normal skin by 3 months. Never reaches 100%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Maximum wound tensile strength reaches approximately what percentage of normal unwounded skin:',
 '50 percent', '80 percent', '100 percent', '60 percent', '95 percent',
 'B', 'Wound strength: increases rapidly first 6 weeks, then slowly. Maximum ~80% of unwounded skin by 3 months, never returns to 100%. Collagen remodeling improves organization and cross-linking.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Factors that impair wound healing include:',
 'Good nutrition', 'Diabetes infection malnutrition and smoking', 'Young age', 'Adequate blood supply', 'Moist wound environment',
 'B', 'Impaired healing: diabetes (impaired neutrophils, microangiopathy), infection, malnutrition (protein, vitamin C, zinc deficiency), smoking (vasoconstriction, hypoxia), steroids, radiation, poor blood supply, age.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Primary wound healing (primary intention) refers to:',
 'Wound left open to heal on its own', 'Wound edges approximated with sutures or staples', 'Healing with granulation tissue', 'Delayed closure', 'Skin grafting',
 'B', 'Primary intention: wound edges approximated (sutured). Minimal granulation tissue, fast healing, best cosmesis. Requires clean wound, no tension, good blood supply. Used for surgical incisions.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Secondary wound healing (secondary intention) involves:',
 'Suturing wound edges', 'Wound left open to heal by granulation contraction and epithelialization', 'Skin grafting', 'Flap coverage', 'Immediate closure',
 'B', 'Secondary intention: wound left open. Heals by granulation (fills defect), contraction (reduces size), epithelialization (covers surface). Slower, more scarring. Used for contaminated wounds, large defects.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Delayed primary closure (tertiary intention) is:',
 'Never used', 'Initial wound left open then closed after 4-5 days when clean and granulating', 'Same as primary intention', 'Same as secondary intention', 'Only for burns',
 'B', 'Tertiary intention: wound initially left open (contaminated, traumatic), managed with dressings, then closed primarily after 4-7 days if clean. Reduces infection risk, allows evaluation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Keloid scars:',
 'Stay within wound boundaries', 'Extend beyond original wound margins and have high recurrence rate', 'Are the same as hypertrophic scars', 'Resolve spontaneously', 'Are not related to genetics',
 'B', 'Keloids: extend beyond original wound, high recurrence (50-80%), more common in darker skin types, genetic predisposition. Treatment: pressure, steroids, silicone, radiation, surgery + adjuvant therapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Hypertrophic scars:',
 'Extend beyond wound margins', 'Stay within original wound boundaries and may improve over time', 'Are the same as keloids', 'Never improve', 'Require radiation treatment',
 'B', 'Hypertrophic scars: stay within wound boundaries, raised, red. Often improve over 1-2 years. Pressure therapy, silicone sheets, steroid injection effective. Revision surgery if persistent.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'The reconstructive ladder from simplest to most complex includes:',
 'Flap skin graft healing by secondary intention', 'Healing by secondary intention primary closure skin graft local flap free flap', 'Free flap first always', 'Only skin grafts', 'Only flaps',
 'B', 'Reconstructive ladder: secondary intention -> primary closure -> skin graft -> local flap -> regional flap -> free flap. Simplest effective option preferred. "Reconstructive elevator" concept allows jumping steps.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'A split-thickness skin graft contains:',
 'Full dermis', 'Epidermis and part of dermis', 'Epidermis only', 'Dermis only', 'Subcutaneous tissue',
 'B', 'Split-thickness skin graft (STSG): epidermis + partial dermis. Donor site heals by epithelialization from adnexal structures. More likely to take, contracts more. Appearance less ideal than full-thickness.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'A full-thickness skin graft contains:',
 'Epidermis only', 'Epidermis and entire dermis', 'Epidermis and part of dermis', 'Dermis only', 'Subcutaneous tissue',
 'B', 'Full-thickness skin graft (FTSG): epidermis + full dermis. Donor site requires primary closure or STSG. Better cosmesis, less contraction. Requires better recipient bed. Used for face, hands.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Skin graft survival initially depends on:',
 'Blood vessel ingrowth immediately', 'Plasmatic imbibition (diffusion of nutrients from wound bed)', 'Lymphatic drainage', 'Nerve regeneration', 'Skin appendages',
 'B', 'Graft take phases: 1) Plasmatic imbibition (0-48h, diffusion), 2) Inoculation (48-72h, capillary connection), 3) Revascularization (days 4-7, ingrowth/outgrowth). Graft must be in contact with vascularized bed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Causes of skin graft failure include:',
 'Good vascularity', 'Hematoma seroma infection shearing and poor recipient bed', 'Adequate nutrition', 'Proper wound care', 'Stable graft',
 'B', 'Graft failure causes: hematoma (lifts graft), seroma, infection, shear forces (movement), inadequate recipient bed (avascular - cartilage, bone without periosteum, tendon without paratenon, irradiated tissue).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Skin grafts will not take on:',
 'Muscle', 'Bare cortical bone without periosteum', 'Granulation tissue', 'Fat', 'Dermis',
 'B', 'Avascular surfaces: bare bone, bare cartilage, bare tendon (without periosteum/perichondrium/paratenon). Irradiated tissue poor. Grafts need vascularized bed. These require flaps for coverage.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Meshing a split-thickness skin graft:',
 'Decreases graft take', 'Allows expansion and drainage of fluid from beneath the graft', 'Improves cosmesis', 'Is never done', 'Prevents contraction',
 'B', 'Mesh graft: multiple slits allow expansion (1:1.5 to 1:6), drainage of seroma/hematoma, contouring to irregular surfaces. Drawback: mesh pattern appearance. Sheet grafts for cosmetic areas (face).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'A flap differs from a skin graft in that:',
 'They are the same', 'A flap carries its own blood supply', 'A graft has its own blood supply', 'Flaps are thinner', 'Grafts are more reliable',
 'B', 'Flap: tissue transferred with its own blood supply (pedicle or free). Can cover avascular beds. More robust. Graft: tissue separated from blood supply, depends on recipient bed for survival.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'A local flap is:',
 'Tissue from a distant site', 'Adjacent tissue mobilized and transferred to nearby defect', 'A free tissue transfer', 'A muscle flap only', 'A bone graft',
 'B', 'Local flap: tissue adjacent to defect, pivoted or advanced. Types: advancement, rotation, transposition. Maintains blood supply through base. Good color/texture match. Limited by available tissue.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Types of local flaps include:',
 'Free flaps only', 'Advancement rotation and transposition flaps', 'Pedicled flaps only', 'Muscle flaps only', 'Distant flaps',
 'B', 'Local flap types: advancement (slides forward), rotation (pivots around point), transposition (moves across intervening skin), interpolation (pedicle crosses over/under tissue). Based on movement pattern.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'A pedicled flap:',
 'Has its blood supply divided', 'Maintains blood supply through an attached base during transfer', 'Is the same as a free flap', 'Has no blood supply', 'Is a skin graft',
 'B', 'Pedicled flap: blood supply through attached pedicle (skin, fascia, or named vessels). Rotated or tunneled to defect. Examples: pectoralis major, latissimus dorsi (for regional transfer), forehead flap.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'A free flap (free tissue transfer):',
 'Has a random blood supply', 'Is completely detached and revascularized at the recipient site using microsurgery', 'Is the same as a pedicled flap', 'Does not need blood supply', 'Is a skin graft',
 'B', 'Free flap: tissue completely detached, vessels anastomosed at recipient site using microsurgery. Allows transfer from distant sites. Examples: ALT, radial forearm, fibula, TRAM/DIEP. High success rates (>95%).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'The deep inferior epigastric perforator (DIEP) flap is used for:',
 'Lower extremity reconstruction', 'Autologous breast reconstruction using abdominal tissue', 'Head and neck reconstruction', 'Hand reconstruction', 'Abdominal wall reconstruction',
 'B', 'DIEP flap: abdominal tissue (skin, fat) based on deep inferior epigastric perforators. Muscle-sparing. Popular for breast reconstruction. Donor site: similar to abdominoplasty. Alternative: free TRAM (takes muscle).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'The fibula free flap is commonly used for:',
 'Breast reconstruction', 'Mandible reconstruction providing vascularized bone', 'Abdominal wall reconstruction', 'Upper extremity soft tissue', 'Scalp coverage',
 'B', 'Fibula free flap: vascularized bone for mandible reconstruction (oromandibular, post-oncologic), long bone defects. Can include skin paddle. Peroneal vessels. Allows dental implants. Alternative: scapula, iliac crest.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Z-plasty is used to:',
 'Close circular defects', 'Lengthen scars reorient scars along relaxed skin tension lines and break up straight lines', 'Create skin grafts', 'Remove tumors', 'Close large wounds only',
 'B', 'Z-plasty: transposes triangular flaps. Lengthens scar (60-degree angles = 75% lengthening), reorients scar (to RSTL), breaks up straight line (less visible). Used for scar contractures.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Negative pressure wound therapy (NPWT) or VAC:',
 'Is never used', 'Applies subatmospheric pressure to promote wound healing and granulation', 'Increases wound infection', 'Is only for burns', 'Decreases granulation tissue',
 'B', 'NPWT/VAC: negative pressure (usually -125 mmHg) promotes granulation, removes fluid, decreases edema, improves blood flow, reduces bacterial load. Used for complex wounds, graft bolster, wound bed preparation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Tissue expansion:',
 'Is immediate', 'Gradually stretches tissue by inflating an implanted expander to generate extra tissue for reconstruction', 'Only for burns', 'Cannot be used for scars', 'Is only for breast',
 'B', 'Tissue expansion: silicone expander placed subcutaneously, gradually inflated (weekly) over weeks-months. Generates extra tissue (skin, blood vessels, nerves). Breast reconstruction, scalp, forehead flap, other.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Options for breast reconstruction after mastectomy include:',
 'Implant only', 'Implant-based reconstruction autologous tissue reconstruction or combination', 'Autologous only', 'No reconstruction possible', 'Skin graft only',
 'B', 'Breast reconstruction: implant-based (tissue expander then implant, direct-to-implant), autologous (DIEP, TRAM, latissimus, PAP), combination. Timing: immediate or delayed. Patient factors, preferences guide choice.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Cleft lip repair is typically performed at what age:',
 'Newborn period', 'Around 3-6 months of age', 'One year', 'After 2 years', 'Any time',
 'B', 'Cleft lip repair: traditionally ~3 months (rule of 10s: 10 weeks, 10 lbs, Hgb 10). Early repair for bonding, feeding. Cleft palate repair: ~9-12 months (before speech). Team approach: surgery, ENT, speech, dental.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Cleft palate repair is typically performed at what age:',
 'Newborn period', '9-18 months of age to optimize speech development', 'After 3 years', 'Any time', 'Before lip repair',
 'B', 'Cleft palate repair: 9-18 months before speech development. Goals: close palate, optimize velopharyngeal function for speech. Methods: Furlow, two-flap palatoplasty. Speech therapy post-operatively.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Pressure sores (decubitus ulcers) are most commonly located over:',
 'Abdomen', 'Sacrum ischium trochanter and heels', 'Chest', 'Face', 'Hands',
 'B', 'Pressure sore locations: sacrum (most common), ischial tuberosities (sitting), greater trochanter (side-lying), heels, occiput. Over bony prominences. Prevention: repositioning, pressure-relieving surfaces.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Stage III pressure ulcer is characterized by:',
 'Non-blanchable erythema', 'Full-thickness skin loss with visible subcutaneous fat', 'Superficial ulcer involving epidermis', 'Muscle or bone exposure', 'Skin intact',
 'B', 'Pressure ulcer staging: I (non-blanchable erythema, intact skin), II (partial thickness, dermis), III (full thickness, fat visible), IV (full thickness, muscle/bone/tendon exposed). Unstageable if covered by eschar.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of stage IV pressure ulcers may include:',
 'Observation only', 'Debridement wound care optimization of nutrition and flap reconstruction', 'Antibiotics only', 'Skin graft always', 'Amputation always',
 'B', 'Stage IV pressure ulcer: debride necrotic tissue, optimize nutrition, treat infection, pressure offloading, wound care. Surgical: may need musculocutaneous flap (gluteal, TFL, gracilis). High recurrence without lifestyle changes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Hand surgery principles include:',
 'Extensive incisions anywhere', 'Respecting skin creases minimizing scarring over flexion surfaces and preserving critical structures', 'Ignoring anatomy', 'Large drains always', 'No splinting',
 'B', 'Hand surgery principles: Brunner (zigzag) incisions, respect skin creases, protect neurovascular bundles, handle tissues gently, meticulous hemostasis, early motion when possible, hand therapy critical.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Replantation of amputated digits:',
 'Is never attempted', 'Should be considered for thumb multiple digits and distal amputations with proper cold preservation', 'Is always successful', 'Does not require microsurgery', 'Is contraindicated',
 'B', 'Replantation indications: thumb (most functional), multiple digits, child (best outcomes), wrist/forearm, individual digit (distal, non-dominant). Relative contraindication: single proximal digit, heavy contamination. Microsurgery required.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Dupuytren contracture:',
 'Is a congenital condition', 'Is fibromatosis of the palmar fascia causing flexion contractures of the fingers', 'Affects the wrist only', 'Is a tumor', 'Is always painful',
 'B', 'Dupuytren contracture: palmar fibromatosis. Progressive nodules and cords causing MCP and PIP flexion contracture. Ring > little finger. Risk factors: Northern European, male, diabetes, alcohol, smoking. Treatment: surgery, collagenase, needle aponeurotomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Syndactyly refers to:',
 'Extra digits', 'Webbed or fused fingers', 'Short fingers', 'Absent fingers', 'Curved fingers',
 'B', 'Syndactyly: congenital fusion of digits (webbing). Simple (skin only) or complex (bone). Complete or incomplete. Treatment: surgical separation with skin grafting, usually ~12-18 months (border digits earlier).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000034-0000-0000-0000-000000000034', 'a0000004-0000-0000-0000-000000000004',
 'Polydactyly refers to:',
 'Fused digits', 'Extra digits', 'Short digits', 'Absent digits', 'Curved digits',
 'B', 'Polydactyly: extra digits. Preaxial (radial/thumb side), central, postaxial (ulnar/small finger side). Postaxial most common in African ancestry. Treatment: surgical excision. May have functional implications depending on type.', 'easy', 'knowledge');
