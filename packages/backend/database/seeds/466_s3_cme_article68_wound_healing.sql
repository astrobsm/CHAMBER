-- ============================================================================
-- SURGERY 3 CME ARTICLE 68: Wound Healing and Management
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000134-0000-0000-0000-000000000134', 'a0000003-0000-0000-0000-000000000003', 'Wound Healing and Management', 'Phases of wound healing and wound care principles')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000368-0000-0000-0000-000000000068',
    'c0000134-0000-0000-0000-000000000134',
    'a0000003-0000-0000-0000-000000000003',
    'Wound Healing: Phases, Factors, and Management',
    'From Hemostasis to Remodeling',
    'This article covers the phases of wound healing (hemostasis, inflammation, proliferation, remodeling), factors affecting healing, wound classification, dressings, negative pressure wound therapy, and management of chronic wounds.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000368-0001-0000-0000-000000000001', 'd0000368-0000-0000-0000-000000000068', 1,
'The phases of wound healing occur in which sequence?',
'Proliferation, inflammation, hemostasis, remodeling', 'Hemostasis, inflammation, proliferation, remodeling', 'Remodeling, inflammation, proliferation, hemostasis', 'Inflammation, hemostasis, remodeling, proliferation', NULL,
'B', 'Wound healing phases (overlapping): (1) HEMOSTASIS (immediate): vasoconstriction, platelet aggregation, clot formation, provides matrix for cell migration. (2) INFLAMMATION (days 1-4): neutrophils then macrophages, debridement, cytokine/growth factor release. (3) PROLIFERATION (days 4-21): fibroblast migration, collagen synthesis, angiogenesis, granulation tissue, epithelialization, wound contraction. (4) REMODELING (3 weeks to 1 year+): collagen cross-linking, reorganization, scar maturation, tensile strength increases (maximum 80% of original at 3 months).', 'easy'),

('e0000368-0002-0000-0000-000000000002', 'd0000368-0000-0000-0000-000000000068', 2,
'The predominant cell type during the proliferative phase of wound healing is:',
'Neutrophil', 'Macrophage', 'Fibroblast', 'Platelet', NULL,
'C', 'Cell types by phase: HEMOSTASIS: platelets (clot formation, growth factor release). INFLAMMATION: neutrophils (early, phagocytosis, hours to days), then MACROPHAGES (debridement, cytokine production, transition to proliferation - most critical cell for wound healing). PROLIFERATION: FIBROBLASTS predominate - collagen synthesis (primarily Type III initially, replaced by Type I), matrix production, wound contraction (myofibroblasts). Also keratinocytes (epithelialization), endothelial cells (angiogenesis). REMODELING: fibroblasts (collagen remodeling), MMPs.', 'easy'),

('e0000368-0003-0000-0000-000000000003', 'd0000368-0000-0000-0000-000000000068', 3,
'Factors that impair wound healing include all EXCEPT:',
'Diabetes mellitus', 'Malnutrition and vitamin C deficiency', 'Adequate blood supply', 'Corticosteroid use', NULL,
'C', 'Factors IMPAIRING wound healing: LOCAL: infection, ischemia/hypoxia, radiation, foreign body, mechanical stress, poor surgical technique. SYSTEMIC: diabetes (microvascular disease, impaired neutrophil function), malnutrition (protein, vitamin C - required for collagen hydroxylation, zinc, vitamin A), steroids (inhibit inflammation, fibroblast function), smoking (vasoconstriction, tissue hypoxia), advanced age, immunosuppression, chemotherapy. ADEQUATE BLOOD SUPPLY is ESSENTIAL for healing - provides oxygen, nutrients, immune cells.', 'easy'),

('e0000368-0004-0000-0000-000000000004', 'd0000368-0000-0000-0000-000000000068', 4,
'Primary intention wound healing refers to:',
'Healing of wounds left open to granulate', 'Healing of wounds with edges approximated surgically with minimal tissue loss', 'Delayed wound closure', 'Chronic wound healing', NULL,
'B', 'Wound healing types: PRIMARY INTENTION (first intention): wound edges approximated (sutures, staples, adhesive), minimal tissue loss, rapid healing, minimal scarring. Examples: surgical incisions, lacerations closed primarily. SECONDARY INTENTION: wound left open, heals by granulation, contraction, epithelialization. More prolonged, larger scar. Examples: pressure ulcers, burns, infected wounds. TERTIARY INTENTION (delayed primary): wound initially left open, closed later (3-5 days) after infection controlled. Example: contaminated traumatic wounds, abscess cavities.', 'easy'),

('e0000368-0005-0000-0000-000000000005', 'd0000368-0000-0000-0000-000000000068', 5,
'Keloid scars differ from hypertrophic scars in that keloids:',
'Stay within original wound boundaries', 'Extend beyond original wound boundaries and do not regress spontaneously', 'Always regress with time', 'Occur only in Caucasian patients', NULL,
'B', 'Keloid vs hypertrophic scar: HYPERTROPHIC: raised, red, within original wound boundaries, often regress with time, associated with excessive tension. KELOID: extends BEYOND original wound boundaries, does NOT regress, often recurs after excision, more common in darker skin (African, Asian), genetic predisposition, common sites (earlobes, chest, shoulders). Pathophysiology: excessive collagen deposition, altered collagen ratio, fibroblast abnormalities. Treatment: pressure, silicone sheets, intralesional steroids, excision with adjuvant therapy (steroids, radiation), recurrence common.', 'easy'),

('e0000368-0006-0000-0000-000000000006', 'd0000368-0000-0000-0000-000000000068', 6,
'Negative pressure wound therapy (NPWT/VAC) works by:',
'Increasing bacterial count', 'Removing exudate, reducing edema, promoting granulation tissue formation, and improving blood flow', 'Keeping wound dry and desiccated', 'Replacing skin grafting', NULL,
'B', 'Negative pressure wound therapy (NPWT/VAC - vacuum-assisted closure): foam dressing with sealed occlusive film, connected to suction (typically -125 mmHg). Mechanisms: removes exudate and edema, reduces bacterial load, macrodeformation (wound contraction), microdeformation (cell stretch stimulates proliferation), improves local blood flow, promotes granulation tissue. Indications: complex wounds, open abdomen, wound bed preparation before grafting, diabetic ulcers, surgical site complications. Contraindications: malignancy in wound, unexplored fistulas to organs, untreated osteomyelitis, exposed vessels.', 'easy'),

('e0000368-0007-0000-0000-000000000007', 'd0000368-0000-0000-0000-000000000068', 7,
'The TIME framework for chronic wound assessment stands for:',
'Temperature, Inflammation, Movement, Edema', 'Tissue, Infection/Inflammation, Moisture imbalance, Edge of wound', 'Time, Infection, Medication, Evaluation', 'Treatment, Incision, Management, Epithelialization', NULL,
'B', 'TIME framework for wound bed preparation: (1) T - TISSUE (non-viable or deficient): debride necrotic tissue. (2) I - INFECTION or INFLAMMATION: treat infection/biofilm, manage excessive inflammation. (3) M - MOISTURE imbalance: maintain moist (not wet) wound environment; address excess exudate or desiccation. (4) E - EDGE of wound (non-advancing or undermined): assess epidermal margin, consider advanced therapies if stalled. Systematic approach to chronic wound assessment and management. Address each component for optimal healing.', 'easy'),

('e0000368-0008-0000-0000-000000000008', 'd0000368-0000-0000-0000-000000000068', 8,
'Dehiscence of an abdominal wound with evisceration requires:',
'Outpatient wound care', 'Covering exposed bowel with saline-moistened sterile dressings and urgent surgical repair', 'Allowing secondary intention healing', 'Oral antibiotics only', NULL,
'B', 'Wound dehiscence: separation of wound edges. Fascial dehiscence with EVISCERATION (bowel protrusion): surgical emergency. Risk factors: obesity, malnutrition, steroids, infection, poor technique, increased intra-abdominal pressure (coughing, vomiting). Warning sign: serosanguinous ("salmon-colored") discharge precedes frank evisceration. Management of evisceration: (1) Do not attempt to replace bowel; (2) Cover with saline-moistened sterile dressings; (3) Keep patient NPO; (4) IV fluids, antibiotics; (5) URGENT operative repair. Prevention: proper technique, use of retention sutures in high-risk patients.', 'easy'),

('e0000368-0009-0000-0000-000000000009', 'd0000368-0000-0000-0000-000000000068', 9,
'Appropriate wound dressing selection depends on:',
'Using the same dressing for all wounds', 'Wound characteristics including exudate level, depth, infection status, and healing stage', 'Always using dry gauze', 'Patient preference only', NULL,
'B', 'Wound dressing selection: match dressing to wound characteristics. EXUDATE LEVEL: high exudate - alginate, foam, hydrofiber; low exudate - hydrocolloid, hydrogel. WOUND DEPTH: deep - packing materials (alginate, hydrofiber); shallow - films, hydrocolloids. INFECTION: antimicrobial dressings (silver, iodine). STAGE: necrotic - debridement, autolytic (hydrogel), enzymatic; granulating - moist environment; epithelializing - protection, non-adherent. Goals: maintain moist environment, manage exudate, protect wound, minimize pain at dressing changes, cost-effective.', 'easy'),

('e0000368-0010-0000-0000-000000000010', 'd0000368-0000-0000-0000-000000000068', 10,
'Tensile strength of a healed wound reaches maximum of approximately:',
'100% of original tissue at 2 weeks', '50% of original tissue permanently', '80% of original tissue at about 3 months', '20% of original tissue at 1 year', NULL,
'C', 'Wound tensile strength timeline: 1 week: 3% (epithelialization, early collagen). 3 weeks: 20% (proliferation phase completing). 6 weeks: 60%. 3 MONTHS: approximately 80% of original tissue strength (MAXIMUM achieved). Never reaches 100%. Rapid gain during proliferative phase, slower during remodeling. Collagen remodeling: Type III replaced by Type I, cross-linking improves, fiber reorganization along stress lines. Scar never as strong as original tissue. Clinical implications: no heavy lifting 4-6 weeks postoperatively, mesh reinforcement for high-tension closures.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 68 (Wound Healing) with 10 self-assessment questions inserted' as status;
