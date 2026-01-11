-- ============================================================================
-- SURGERY 3 CME ARTICLE 20: Wound Healing and Management
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000086-0000-0000-0000-000000000086', 'a0000003-0000-0000-0000-000000000003', 'Wound Healing', 'Physiology of wound healing and wound management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000320-0000-0000-0000-000000000020',
    'c0000086-0000-0000-0000-000000000086',
    'a0000003-0000-0000-0000-000000000003',
    'Wound Healing: Physiology and Clinical Management',
    'Phases of Healing, Chronic Wounds and Wound Closure Techniques',
    'This article covers the phases of wound healing (hemostasis, inflammation, proliferation, remodeling), factors affecting healing, types of wound closure, chronic wound management, negative pressure wound therapy, and skin grafts and flaps.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000320-0001-0000-0000-000000000001', 'd0000320-0000-0000-0000-000000000020', 1,
'The correct sequence of wound healing phases is:',
'Proliferation, inflammation, hemostasis, remodeling', 'Hemostasis, inflammation, proliferation, remodeling', 'Inflammation, hemostasis, remodeling, proliferation', 'Remodeling, proliferation, inflammation, hemostasis', NULL,
'B', 'Wound healing phases: (1) Hemostasis (immediate) - vasoconstriction, platelet plug, coagulation cascade; (2) Inflammation (days 1-4) - neutrophils then macrophages, debris removal; (3) Proliferation (days 4-21) - granulation tissue, angiogenesis, epithelialization, fibroblasts deposit collagen; (4) Remodeling (3 weeks to 1 year) - collagen maturation, wound contraction, maximum tensile strength reached.', 'easy'),

('e0000320-0002-0000-0000-000000000002', 'd0000320-0000-0000-0000-000000000020', 2,
'The predominant cell type in the proliferative phase of wound healing is:',
'Neutrophil', 'Macrophage', 'Fibroblast', 'Platelet', NULL,
'C', 'Fibroblasts are the predominant cells in the proliferative phase. They migrate into the wound, synthesize collagen (initially type III, later replaced by type I), produce ground substance, and contract the wound (myofibroblasts). Macrophages are crucial in inflammation and orchestrate healing. Endothelial cells form new vessels (angiogenesis). Keratinocytes re-epithelialize the wound.', 'easy'),

('e0000320-0003-0000-0000-000000000003', 'd0000320-0000-0000-0000-000000000020', 3,
'A wound closed primarily at the time of injury is healing by:',
'Secondary intention', 'Primary intention (first intention)', 'Tertiary intention (delayed primary closure)', 'Contraction only', NULL,
'B', 'Primary intention (first intention): wound edges approximated with sutures/staples/tape at time of injury - minimal granulation tissue, fastest healing. Secondary intention: wound left open to heal by granulation, contraction, and epithelialization - used for contaminated or large tissue-loss wounds. Tertiary intention (delayed primary closure): wound left open initially for debridement/antibiotics, then closed after 3-5 days when clean.', 'easy'),

('e0000320-0004-0000-0000-000000000004', 'd0000320-0000-0000-0000-000000000020', 4,
'The maximum tensile strength a healed wound can achieve compared to normal skin is:',
'50%', '80%', '100%', '120%', NULL,
'B', 'Healed wounds never regain 100% tensile strength of normal skin. At 1 week: ~5%; 3 weeks: ~20%; 3 months: ~80% (maximum). The collagen is less organized than native tissue, and some elastic fiber components are not fully restored. Wound strength increases most rapidly in first 6 weeks due to collagen deposition and cross-linking. This has implications for timing of suture removal and activity restrictions.', 'medium'),

('e0000320-0005-0000-0000-000000000005', 'd0000320-0000-0000-0000-000000000020', 5,
'Factors that impair wound healing include:',
'Adequate blood supply', 'Diabetes, malnutrition, infection, smoking, steroids, radiation', 'Normal oxygen tension', 'Vitamin C supplementation', NULL,
'B', 'Factors impairing wound healing: Local - infection, foreign body, ischemia, radiation damage, mechanical stress. Systemic - diabetes (impaired neutrophil function, microangiopathy), malnutrition (protein, vitamin C, zinc deficiency), smoking (vasoconstriction, impaired oxygenation), steroids (anti-inflammatory effect), chemotherapy, advanced age, immunosuppression. Optimization of modifiable factors improves outcomes.', 'easy'),

('e0000320-0006-0000-0000-000000000006', 'd0000320-0000-0000-0000-000000000020', 6,
'A chronic wound is defined as a wound that:',
'Has been present for 24 hours', 'Fails to heal within the expected time frame (usually 4-6 weeks) and remains stuck in the inflammatory phase', 'Is always infected', 'Can only occur in diabetic patients', NULL,
'B', 'Chronic wounds fail to progress through normal healing phases within expected timeframe (typically 4-6 weeks). They remain in a prolonged inflammatory state with elevated proteases (MMPs), senescent cells, impaired growth factors, and often biofilm. Common types: diabetic foot ulcers, venous leg ulcers, pressure ulcers, arterial ulcers. Management requires addressing underlying cause and optimizing local wound environment.', 'easy'),

('e0000320-0007-0000-0000-000000000007', 'd0000320-0000-0000-0000-000000000020', 7,
'Negative pressure wound therapy (NPWT) works by:',
'Applying positive pressure to the wound', 'Applying controlled subatmospheric pressure to promote granulation, reduce edema, and remove exudate', 'Heating the wound', 'Injecting antibiotics directly', NULL,
'B', 'NPWT (VAC therapy) applies subatmospheric pressure (typically -125 mmHg) through a sealed foam dressing. Benefits: promotes granulation tissue formation, reduces wound edema, removes exudate and bacteria, increases blood flow, reduces wound size, prepares bed for grafting. Indications: traumatic wounds, surgical dehiscence, pressure ulcers, diabetic ulcers, open abdomen. Contraindicated: necrotic tissue (debride first), unexplored fistulas, malignancy.', 'medium'),

('e0000320-0008-0000-0000-000000000008', 'd0000320-0000-0000-0000-000000000020', 8,
'The Wagner classification is used for:',
'Burn depth', 'Diabetic foot ulcer grading', 'Pressure ulcer staging', 'Venous ulcer classification', NULL,
'B', 'Wagner classification grades diabetic foot ulcers: Grade 0 - at risk foot, no ulcer; Grade 1 - superficial ulcer; Grade 2 - deep ulcer to tendon/bone/joint; Grade 3 - deep ulcer with abscess/osteomyelitis; Grade 4 - localized gangrene (forefoot); Grade 5 - extensive gangrene (whole foot). University of Texas classification also considers ischemia and infection. Both guide treatment decisions and predict outcomes.', 'medium'),

('e0000320-0009-0000-0000-000000000009', 'd0000320-0000-0000-0000-000000000020', 9,
'A keloid differs from a hypertrophic scar in that a keloid:',
'Stays within the boundaries of the original wound', 'Extends beyond the original wound margins and does not regress spontaneously', 'Resolves within 6 months', 'Only occurs in wounds closed primarily', NULL,
'B', 'Keloids extend beyond original wound margins, do not regress spontaneously, and have high recurrence after excision. More common in darker skin, earlobes, chest, shoulders. Hypertrophic scars remain within wound boundaries and may regress over 1-2 years. Both have excessive collagen deposition but different collagen organization patterns. Treatment: silicone sheets, intralesional steroids, pressure therapy, radiation for keloids, surgical revision with adjuncts.', 'easy'),

('e0000320-0010-0000-0000-000000000010', 'd0000320-0000-0000-0000-000000000020', 10,
'Skin flaps differ from skin grafts in that flaps:',
'Have no blood supply', 'Carry their own blood supply and are used to cover wounds with exposed vital structures', 'Can only be taken from the thigh', 'Never require surgical expertise', NULL,
'B', 'Skin flaps carry their own blood supply (pedicled or free with microvascular anastomosis), allowing coverage of wounds with exposed bone, tendon, blood vessels, or joints that cannot support a graft. Flaps can include skin, fascia, muscle, or bone. Skin grafts (split or full thickness) depend on recipient bed vascularity for survival (plasmatic imbibition then revascularization). Reconstructive ladder: healing by secondary intention → primary closure → grafts → local flaps → distant/free flaps.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 20 (Wound Healing) with 10 self-assessment questions inserted' as status;
