-- ============================================================================
-- SURGERY 3 CME ARTICLE 27: Plastic and Reconstructive Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000093-0000-0000-0000-000000000093', 'a0000003-0000-0000-0000-000000000003', 'Plastic and Reconstructive Surgery', 'Tissue transfer, wound coverage, and reconstruction principles')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000327-0000-0000-0000-000000000027',
    'c0000093-0000-0000-0000-000000000093',
    'a0000003-0000-0000-0000-000000000003',
    'Plastic and Reconstructive Surgery: Essential Principles',
    'Wound Coverage, Flaps and Tissue Transfer',
    'This article covers reconstructive surgery principles including the reconstructive ladder, skin grafts, local and regional flaps, free tissue transfer, wound coverage options, hand surgery basics, and soft tissue reconstruction following trauma or cancer resection.',
    'Department of Surgery, UNTH',
    2.0,
    22,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000327-0001-0000-0000-000000000001', 'd0000327-0000-0000-0000-000000000027', 1,
'The reconstructive ladder in order from simplest to most complex is:',
'Free flap, local flap, skin graft, secondary intention', 'Secondary intention, primary closure, skin graft, local flap, distant/free flap', 'Primary closure only', 'Free flap first for all wounds', NULL,
'B', 'Reconstructive ladder (simplest to complex): (1) Secondary intention - allow wound to granulate/epithelialize; (2) Primary closure - direct closure if tension-free; (3) Skin graft - split or full thickness; (4) Local flap - tissue adjacent to defect; (5) Regional/distant flap; (6) Free flap - microvascular tissue transfer. Modern approach: "reconstructive elevator" - choose best option for patient/wound, not necessarily simplest. Consider patient factors, wound characteristics, functional/cosmetic requirements.', 'easy'),

('e0000327-0002-0000-0000-000000000002', 'd0000327-0000-0000-0000-000000000027', 2,
'Split-thickness skin grafts (STSG) compared to full-thickness skin grafts (FTSG):',
'Have higher failure rates', 'Take more reliably, have greater contraction, poorer cosmetic result, donor site heals spontaneously', 'Include all dermis', 'Have no donor site morbidity', NULL,
'B', 'STSG (0.008-0.018 inch): includes epidermis + partial dermis. Advantages: higher take rate, can cover larger areas, donor site heals by re-epithelialization (2-3 weeks). Disadvantages: more contraction (up to 50%), poorer cosmesis (color, texture), less durable. FTSG (epidermis + full dermis): better cosmesis, less contraction, but requires well-vascularized bed, donor site requires closure. STSG for large wounds, FTSG for face/hands where appearance matters.', 'medium'),

('e0000327-0003-0000-0000-000000000003', 'd0000327-0000-0000-0000-000000000027', 3,
'Skin graft survival depends on which process occurring in the first 48 hours:',
'Neovascularization', 'Plasmatic imbibition - absorption of nutrients from wound bed plasma', 'Complete vascular anastomosis', 'Fibroblast migration', NULL,
'B', 'Skin graft take phases: (1) Plasmatic imbibition (0-48 hours) - graft survives by absorbing plasma from wound bed through capillary action, graft appears white/edematous; (2) Inosculation (48-72 hours) - anastomosis of graft and bed vessels, graft appears pink; (3) Neovascularization (day 4+) - new vessel ingrowth. Graft failure causes: hematoma, seroma, shear, infection, poor recipient bed (exposed bone/tendon/cartilage without periosteum/paratenon/perichondrium).', 'medium'),

('e0000327-0004-0000-0000-000000000004', 'd0000327-0000-0000-0000-000000000027', 4,
'A random pattern flap receives blood supply from:',
'A named artery', 'The subdermal plexus without a specific named vessel', 'Direct muscle perforators only', 'No blood supply needed', NULL,
'B', 'Random pattern flap: blood supply from subdermal plexus, no specific named vessel. Limited length:width ratio (~3:1, varies by location). Examples: advancement flaps, rotation flaps, transposition flaps (rhomboid, bilobed, Z-plasty). Axial pattern flap: based on named artery running within the flap, allows greater length and reliability. Examples: groin flap (superficial circumflex iliac), deltopectoral (internal mammary perforators), forehead flap (supratrochlear).', 'easy'),

('e0000327-0005-0000-0000-000000000005', 'd0000327-0000-0000-0000-000000000027', 5,
'The purpose of a Z-plasty is to:',
'Close wounds under high tension', 'Lengthen contracted scars, change scar direction, and break up straight-line scars', 'Create skin grafts', 'Reduce wound size', NULL,
'B', 'Z-plasty: local transposition flap using two triangular flaps that interchange positions. Effects: (1) Lengthens scar (gain proportional to angle - 60° = 75% length gain); (2) Changes scar direction; (3) Breaks up straight line (makes scar less noticeable). Indications: scar contractures across joints or concave surfaces, webbed scars, trapdoor deformities, adjustment of tissues (e.g., lip). Standard angles: 60° (most common), 30-90° range. Multiple Z-plasties for longer scars.', 'medium'),

('e0000327-0006-0000-0000-000000000006', 'd0000327-0000-0000-0000-000000000027', 6,
'A myocutaneous (muscle) flap includes:',
'Skin only', 'Muscle and overlying skin with blood supply from musculocutaneous perforators', 'Fascia only', 'Bone and muscle', NULL,
'B', 'Myocutaneous (musculocutaneous) flap: muscle + overlying skin, blood supply via musculocutaneous perforators from the main muscle pedicle to skin. Advantages: robust blood supply, fills dead space, can be functional. Disadvantages: donor site morbidity (muscle function loss), bulkier. Examples: latissimus dorsi, pectoralis major, rectus abdominis (TRAM), gracilis. Muscle flap classification (Mathes-Nahai) based on vascular pattern (Type I-V).', 'easy'),

('e0000327-0007-0000-0000-000000000007', 'd0000327-0000-0000-0000-000000000027', 7,
'The most common donor site for free flap breast reconstruction is:',
'Latissimus dorsi', 'Deep inferior epigastric perforator (DIEP) flap from the abdomen', 'Gracilis muscle', 'Radial forearm', NULL,
'B', 'DIEP flap: perforator flap based on deep inferior epigastric artery perforators. Harvests abdominal skin and fat (similar tissue to breast) while preserving rectus muscle (vs TRAM which sacrifices muscle). Advantages: autologous tissue (natural feel), no implant complications, abdominoplasty benefit. Alternatives: SIEA (superficial inferior epigastric artery), GAP (gluteal artery perforator), TUG (transverse upper gracilis). Implant-based reconstruction is alternative approach.', 'medium'),

('e0000327-0008-0000-0000-000000000008', 'd0000327-0000-0000-0000-000000000027', 8,
'In hand surgery, flexor tendon injuries in Zone 2 (between distal palmar crease and PIP joint) are historically called:',
'Zone of safety', 'No man''s land due to poor results with repair in this confined fibro-osseous tunnel', 'Zone of excellence', 'Free zone', NULL,
'B', 'Zone 2 ("No Man''s Land" - Bunnell): extends from A1 pulley to insertion of FDS. Historically poor outcomes due to: (1) Confined fibro-osseous tunnel, (2) Two tendons (FDS and FDP) in tight sheath, (3) Adhesion formation limiting gliding. Modern results much improved with: atraumatic technique, early protected motion protocols, core sutures with epitendinous repair. Rehabilitation critical for outcome. Other zones have generally better prognosis.', 'medium'),

('e0000327-0009-0000-0000-000000000009', 'd0000327-0000-0000-0000-000000000027', 9,
'Negative pressure wound therapy (NPWT/VAC) promotes wound healing by:',
'Increasing bacterial colonization', 'Removing excess fluid, increasing blood flow, promoting granulation tissue, and reducing edema', 'Preventing any tissue formation', 'Drying out the wound completely', NULL,
'B', 'NPWT mechanisms: (1) Macrodeformation - wound contraction bringing edges together; (2) Microdeformation - cellular stretch promoting proliferation/angiogenesis; (3) Fluid removal - reduces edema, removes inflammatory mediators; (4) Increased blood flow to wound margins; (5) Moist wound environment. Indications: complex wounds, wound bed preparation before grafting, flap/graft bolster, dehisced wounds. Contraindications: malignancy in wound, exposed vessels, untreated osteomyelitis, necrotic tissue requiring debridement.', 'easy'),

('e0000327-0010-0000-0000-000000000010', 'd0000327-0000-0000-0000-000000000027', 10,
'A perforator flap differs from a musculocutaneous flap in that:',
'It includes muscle', 'It is based on vessels that perforate through or around muscle, preserving the muscle', 'It has no blood supply', 'It cannot be used as a free flap', NULL,
'B', 'Perforator flaps: skin/fat nourished by perforating vessels that are dissected through or around muscle, preserving muscle function. Examples: DIEP (deep inferior epigastric perforator), ALT (anterolateral thigh - descending branch lateral circumflex femoral), SGAP/IGAP (gluteal). Advantages: reduced donor morbidity (muscle preserved), can be tailored. Disadvantages: technically demanding, variable anatomy. Represents evolution from musculocutaneous flaps. Can be pedicled or free.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 27 (Plastic and Reconstructive Surgery) with 10 self-assessment questions inserted' as status;
