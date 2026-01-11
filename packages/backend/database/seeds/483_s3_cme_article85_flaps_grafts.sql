-- ============================================================================
-- SURGERY 3 CME ARTICLE 85: Plastic Surgery Basics - Flaps and Grafts
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000151-0000-0000-0000-000000000151', 'a0000003-0000-0000-0000-000000000003', 'Plastic Surgery Basics', 'Reconstructive principles including flaps and grafts')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000385-0000-0000-0000-000000000085',
    'c0000151-0000-0000-0000-000000000151',
    'a0000003-0000-0000-0000-000000000003',
    'Reconstructive Surgery: Flaps, Grafts, and Wound Coverage',
    'Principles of Tissue Transfer',
    'This article covers the reconstructive ladder, skin graft types and physiology, local flap classification, pedicled and free flaps, Z-plasty principles, tissue expansion, and principles of microsurgery.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000385-0001-0000-0000-000000000001', 'd0000385-0000-0000-0000-000000000085', 1,
'The reconstructive ladder from simplest to most complex is:',
'Free flap, then graft, then primary closure', 'Primary closure, secondary healing, skin graft, local flap, regional flap, distant/free flap', 'Amputation first, then reconstruction', 'All wounds require free flaps',
'B', 'Reconstructive ladder (simplest to most complex): (1) PRIMARY CLOSURE; (2) SECONDARY INTENTION healing; (3) SKIN GRAFT (split or full thickness); (4) LOCAL FLAP; (5) REGIONAL/PEDICLED FLAP; (6) DISTANT FLAP; (7) FREE (MICROVASCULAR) FLAP. Modern concept: "reconstructive elevator" - choose optimal method based on wound requirements, not just simplest option. Consider: defect size, location, exposed structures (bone, tendon, hardware), patient factors, functional and aesthetic goals.', 'easy'),

('e0000385-0002-0000-0000-000000000002', 'd0000385-0000-0000-0000-000000000085', 2,
'A split thickness skin graft (STSG) differs from a full thickness skin graft (FTSG) in that:',
'STSG includes all of the dermis', 'STSG includes epidermis and part of dermis, contracts more, and allows donor site healing; FTSG includes entire dermis with less contraction', 'FTSG is easier to harvest', 'Both are identical in outcomes',
'B', 'SPLIT THICKNESS SKIN GRAFT (STSG): epidermis + PART of dermis. Harvest: dermatome. Donor site heals by re-epithelialization from remaining dermal appendages. MORE PRIMARY CONTRACTION (elastic dermis recoils), MORE SECONDARY CONTRACTION (wound contracts during healing). Takes on less vascular beds. Thinner = better take but more contraction. FULL THICKNESS SKIN GRAFT (FTSG): epidermis + ENTIRE dermis. Harvest: scalpel. Donor site requires closure. LESS CONTRACTION, better color/texture match, more durable. Requires well-vascularized bed.', 'easy'),

('e0000385-0003-0000-0000-000000000003', 'd0000385-0000-0000-0000-000000000085', 3,
'Skin graft survival depends on:',
'Exposure to sunlight', 'Plasmatic imbibition (first 24-48 hours), then inosculation and capillary ingrowth; requires contact with vascular bed and immobilization', 'Immediate arterial anastomosis', 'Suturing tension only',
'B', 'Skin graft survival phases: (1) PLASMATIC IMBIBITION (0-48h) - graft absorbs plasma from wound bed, appears pale/white; (2) INOSCULATION (48-72h) - donor and recipient vessels align and connect; (3) CAPILLARY INGROWTH/REVASCULARIZATION (Day 3-7) - new capillary growth. REQUIREMENTS: vascularized wound bed (NOT over bone without periosteum, tendon without paratenon, cartilage without perichondrium); IMMOBILIZATION (bolster dressing); contact (no hematoma/seroma). Graft failure causes: hematoma, seroma, infection, shear.', 'medium'),

('e0000385-0004-0000-0000-000000000004', 'd0000385-0000-0000-0000-000000000085', 4,
'Local flaps are classified by their blood supply as:',
'Only arterial or venous', 'Random pattern (subdermal plexus) or axial pattern (named vessel running in flap)', 'All flaps are random', 'Blood supply is not important',
'B', 'Local flap blood supply classification: RANDOM PATTERN - supplied by subdermal/dermal plexus, no named vessel; length-to-width ratio typically 1:1 to 2:1 (face allows more due to rich vascularity). AXIAL PATTERN - contains named artery/vein running longitudinally; allows longer length. Examples of axial flaps: forehead (supratrochlear), groin (superficial circumflex iliac), deltopectoral (internal mammary perforators). Flaps also classified by: movement (advancement, rotation, transposition), tissue content (cutaneous, fasciocutaneous, muscle, bone).', 'medium'),

('e0000385-0005-0000-0000-000000000005', 'd0000385-0000-0000-0000-000000000085', 5,
'A Z-plasty is used to:',
'Close circular wounds', 'Lengthen a scar or reorient it to lie in relaxed skin tension lines, gaining length along the central limb', 'Replace tissue loss', 'Remove excess skin',
'B', 'Z-PLASTY: technique using two triangular transposition flaps. PURPOSES: (1) LENGTHEN contracted scar (central limb gains length); (2) REORIENT scar to lie in relaxed skin tension lines (RSTL) or natural creases; (3) Break up linear scar. DESIGN: central limb along scar/contracture, two limbs at equal angles (typically 60 degrees = 75% length gain; 45 degrees = 50% gain; 30 degrees = 25% gain). After transposing triangular flaps, central limb reoriented 90 degrees. Multiple Z-plasties for long scars.', 'medium'),

('e0000385-0006-0000-0000-000000000006', 'd0000385-0000-0000-0000-000000000085', 6,
'Muscle flaps are preferred for coverage of:',
'Superficial abrasions', 'Contaminated wounds, irradiated tissue, exposed bone/hardware, and osteomyelitis due to their excellent blood supply', 'Clean granulating wounds', 'Donor sites',
'B', 'MUSCLE FLAPS: excellent blood supply provides: (1) Oxygen delivery for WOUND HEALING; (2) ANTIBIOTIC delivery; (3) IMMUNE CELLS for infection control; (4) Obliteration of DEAD SPACE. IDEAL FOR: contaminated wounds, OSTEOMYELITIS (with bone debridement), irradiated tissue, exposed bone/orthopedic hardware, chronic wounds. Examples: gastrocnemius (knee/upper tibia), soleus (middle tibia), latissimus dorsi (various), rectus abdominis (chest/groin), gracilis (perineum). Can be pedicled or free.', 'medium'),

('e0000385-0007-0000-0000-000000000007', 'd0000385-0000-0000-0000-000000000085', 7,
'A free flap (microvascular free tissue transfer) involves:',
'Simple skin advancement', 'Complete detachment of tissue with its blood supply and reanastomosis of artery and vein to recipient vessels using microsurgery', 'No blood vessel connection', 'Only grafting without vessels',
'B', 'FREE FLAP (free tissue transfer): tissue with its blood supply COMPLETELY DETACHED from body, then REANASTOMOSED to recipient vessels using MICROSURGERY (operating microscope, 8-0 to 10-0 sutures). Requires: microsurgical expertise, suitable recipient vessels, appropriate patient selection. ADVANTAGES: large tissue volume, tailored tissue type, single-stage. MONITORING: color, temperature, capillary refill, Doppler. Flap failure: arterial (pale, no bleeding, no Doppler) or venous (congested, dark, rapid bleeding). Common free flaps: ALT, radial forearm, fibula, DIEP.', 'hard'),

('e0000385-0008-0000-0000-000000000008', 'd0000385-0000-0000-0000-000000000085', 8,
'Tissue expansion works by:',
'Shrinking adjacent tissue', 'Placing an inflatable device under skin and gradually filling it, inducing histologic changes that create additional tissue for reconstruction', 'Removing excess tissue', 'Injecting fillers',
'B', 'TISSUE EXPANSION: silicone expander placed subcutaneously, gradually inflated over weeks-months. HISTOLOGIC CHANGES: increased mitosis (true tissue GAIN), thinned dermis, thickened epidermis, capsule formation. ADVANTAGES: tissue with similar color/texture, sensate, hair-bearing (scalp), maintains specialized function. USES: breast reconstruction, scalp reconstruction, removal of large nevi, ear reconstruction. COMPLICATIONS: expander exposure, infection, hematoma, pain, device failure. Contraindicated in irradiated tissue, active infection.', 'medium'),

('e0000385-0009-0000-0000-000000000009', 'd0000385-0000-0000-0000-000000000085', 9,
'The angiosome concept in flap surgery refers to:',
'Random skin blood supply', 'Three-dimensional block of tissue supplied by a source artery and drained by accompanying veins, with connections to adjacent angiosomes', 'Bone vascularity only', 'Nerve territories',
'B', 'ANGIOSOME CONCEPT (Taylor and Palmer): body divided into 3D blocks of tissue (skin, subcutaneous, muscle, bone) supplied by SOURCE ARTERY and drained by accompanying veins. Adjacent angiosomes connected by: (1) TRUE ANASTOMOSES (same caliber); (2) CHOKE VESSELS (reduced caliber, can dilate). Understanding angiosomes allows: perforator flap design, prediction of flap viability, understanding of ischemia patterns. ~40 angiosomes identified. Skin supplied by perforators from underlying source arteries (direct cutaneous, musculocutaneous, septocutaneous).', 'hard'),

('e0000385-0010-0000-0000-000000000010', 'd0000385-0000-0000-0000-000000000085', 10,
'Negative pressure wound therapy (NPWT) promotes healing by:',
'Increasing bacterial load', 'Removing excess fluid, reducing edema, increasing blood flow, promoting granulation tissue, and reducing wound size', 'Drying out the wound completely', 'Preventing all cell growth',
'B', 'Negative pressure wound therapy (NPWT/VAC): applies subatmospheric pressure (-75 to -125 mmHg) to wound via foam/gauze dressing and suction. MECHANISMS: (1) MACRODEFORMATION - wound edges drawn together; (2) MICRODEFORMATION - cellular level stimulation; (3) Removes EXCESS FLUID/EDEMA; (4) Increases BLOOD FLOW; (5) Promotes GRANULATION tissue; (6) Reduces BACTERIAL LOAD. USES: complex wounds, open fractures, open abdomen, skin graft bolster, sternal wounds. Contraindicated: malignancy, untreated osteomyelitis, necrotic tissue, exposed vessels.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 85 (Plastic Surgery - Flaps and Grafts) with 10 self-assessment questions inserted' as status;
