-- ============================================================================
-- SURGERY 3 CME ARTICLE 69: Surgical Sutures, Needles, and Knots
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000135-0000-0000-0000-000000000135', 'a0000003-0000-0000-0000-000000000003', 'Surgical Sutures, Needles, and Knots', 'Suture materials, needle types, and surgical knots')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000369-0000-0000-0000-000000000069',
    'c0000135-0000-0000-0000-000000000135',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Sutures and Knots: Technical Essentials',
    'Materials, Techniques, and Applications',
    'This article covers suture classification (absorbable vs non-absorbable, monofilament vs braided), common suture materials (silk, nylon, prolene, vicryl, PDS, chromic), suture sizing, needle types, and knot tying principles.',
    'Department of Surgery, UNTH',
    1.5,
    15,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000369-0001-0000-0000-000000000001', 'd0000369-0000-0000-0000-000000000069', 1,
'Vicryl (polyglactin 910) is classified as:',
'Non-absorbable monofilament', 'Absorbable braided synthetic suture', 'Absorbable monofilament', 'Non-absorbable braided', NULL,
'B', 'Vicryl (polyglactin 910): ABSORBABLE, BRAIDED, SYNTHETIC suture. Absorption: by hydrolysis, 50% tensile strength at 2-3 weeks, absorbed by 56-70 days. Uses: subcutaneous closure, fascia, bowel anastomosis, ligatures. Other absorbable braided: polyglycolic acid (Dexon). Absorbable monofilament: PDS (polydioxanone), Monocryl (poliglecaprone). Non-absorbable braided: silk, polyester (Ethibond). Non-absorbable monofilament: nylon (Ethilon), polypropylene (Prolene), steel.', 'easy'),

('e0000369-0002-0000-0000-000000000002', 'd0000369-0000-0000-0000-000000000069', 2,
'Which suture material is preferred for vascular anastomosis?',
'Silk', 'Chromic catgut', 'Polypropylene (Prolene)', 'Vicryl', NULL,
'C', 'Vascular anastomosis suture: POLYPROPYLENE (Prolene). Properties: non-absorbable, monofilament, smooth, minimal tissue reactivity, permanent tensile strength, glides easily through tissue. Monofilament = less thrombogenic than braided (no interstices for platelet aggregation). Does not swell. Maintains strength in vascular environment. Sizes: 5-0, 6-0, 7-0 for different vessel sizes. Alternative: PTFE sutures for prosthetic grafts. Avoid absorbable sutures (anastomotic failure after absorption) and braided (thrombogenic, bacterial harbor).', 'easy'),

('e0000369-0003-0000-0000-000000000003', 'd0000369-0000-0000-0000-000000000069', 3,
'The disadvantage of braided sutures compared to monofilament includes:',
'Less tensile strength', 'Greater tendency to harbor bacteria and increased tissue drag', 'Cannot be used for skin closure', 'They are always absorbable', NULL,
'B', 'Braided vs monofilament sutures: BRAIDED advantages: easier handling, better knot security, more pliable. BRAIDED disadvantages: HARBOR BACTERIA in interstices (higher infection risk, avoid in contaminated wounds), increased TISSUE DRAG (saw effect), capillary action (wick fluid). MONOFILAMENT advantages: smooth, less tissue trauma, less bacterial harbor, glides through tissue. MONOFILAMENT disadvantages: memory (harder to handle), less knot security (more throws needed), can cut tissue if tied too tight. Choice depends on clinical situation.', 'easy'),

('e0000369-0004-0000-0000-000000000004', 'd0000369-0000-0000-0000-000000000069', 4,
'In USP suture sizing, which is the larger suture?',
'2-0', '5-0', '0', '6-0', NULL,
'C', 'USP suture sizing: larger number after hyphen = SMALLER suture. 5 > 4 > 3 > 2 > 1 > 0 > 2-0 > 3-0 > 4-0 > 5-0 > 6-0 > 7-0. Size 0 ("ought") is larger than 2-0 ("two-ought"). Size 5 is very thick (retention sutures). Size 6-0, 7-0 very fine (vascular, ophthalmic). Clinical selection: skin 3-0 to 5-0; fascia 0 to 1; bowel 3-0 to 4-0; vascular 5-0 to 7-0. Principle: use smallest suture that will adequately hold tissue together to minimize tissue reaction and foreign body.', 'easy'),

('e0000369-0005-0000-0000-000000000005', 'd0000369-0000-0000-0000-000000000069', 5,
'PDS (polydioxanone) suture is characterized by:',
'Non-absorbable and braided', 'Absorbable monofilament with prolonged tensile strength retention', 'Natural suture from animal source', 'Loses tensile strength within 1 week', NULL,
'B', 'PDS (polydioxanone): ABSORBABLE MONOFILAMENT synthetic suture. Key feature: PROLONGED tensile strength retention - 50% at 4 weeks, absorbed by 180-210 days. Uses: fascia closure (particularly abdominal wall), situations requiring prolonged support. Advantages: monofilament (less infection risk, tissue drag), long strength retention. Disadvantage: stiff, has memory (harder to handle). Comparison: Vicryl loses strength faster (50% at 2-3 weeks). Monocryl (poliglecaprone): absorbable monofilament but faster absorption than PDS.', 'easy'),

('e0000369-0006-0000-0000-000000000006', 'd0000369-0000-0000-0000-000000000069', 6,
'A cutting needle is most appropriate for:',
'Bowel anastomosis', 'Vascular anastomosis', 'Skin closure due to its ability to penetrate tough tissue', 'Liver parenchyma', NULL,
'C', 'Needle types: CUTTING needles: triangular cross-section with cutting edge. Conventional cutting: apex inside curve (cuts toward wound edge). Reverse cutting: apex outside curve (cuts away from wound, less likely to cut through). Best for: SKIN, fascia, tough tissue. TAPER (round) needles: circular cross-section, gradually tapers to point. Parts tissue without cutting. Best for: bowel, vascular, soft tissue - less tissue trauma. BLUNT needles: for friable tissue (liver), reduces needlestick injury. Side-cutting (spatula): ophthalmic surgery.', 'easy'),

('e0000369-0007-0000-0000-000000000007', 'd0000369-0000-0000-0000-000000000069', 7,
'Silk sutures:',
'Are absorbable synthetic sutures', 'Are natural non-absorbable braided sutures with excellent handling but significant tissue reaction', 'Are preferred for vascular anastomosis', 'Should be used in infected wounds', NULL,
'B', 'Silk sutures: NATURAL (from silkworm), NON-ABSORBABLE (though slowly degrades over 2 years), BRAIDED. Properties: excellent handling and knot security (gold standard for comparison), pliable, minimal memory. Disadvantages: SIGNIFICANT TISSUE REACTION (most reactive non-absorbable suture), harbors bacteria (braided), capillarity. Uses: ligatures, skin (though higher reaction), where handling is important. Avoid in: vascular (reactive, thrombogenic), contaminated wounds. Often used as standard for comparing other sutures. Less common now with synthetic alternatives.', 'easy'),

('e0000369-0008-0000-0000-000000000008', 'd0000369-0000-0000-0000-000000000069', 8,
'The minimum number of throws required for a secure knot with monofilament suture is:',
'Two throws', 'Three throws', 'Four to six throws due to increased tendency to slip', 'One throw', NULL,
'C', 'Knot security: number of throws needed varies by suture material. MONOFILAMENT sutures (nylon, Prolene): higher tendency to slip due to smooth surface, requires MORE throws (typically 4-6). BRAIDED sutures (silk, Vicryl): better knot security, fewer throws needed (typically 3-4). Square knots preferred (throws in opposite directions). Additional throws beyond minimum add bulk without security. Cut ends: leave 3mm for monofilament (may unravel), shorter for braided. Proper technique more important than excessive throws.', 'easy'),

('e0000369-0009-0000-0000-000000000009', 'd0000369-0000-0000-0000-000000000069', 9,
'Chromic catgut differs from plain catgut in that:',
'It is non-absorbable', 'It is treated with chromic salts to delay absorption and reduce tissue reaction', 'It is synthetic', 'It has less tensile strength', NULL,
'B', 'Catgut sutures: NATURAL absorbable (from sheep/cattle intestine submucosa - "gut" refers to string, not necessarily intestine). PLAIN catgut: absorbed rapidly (70 days), loses strength quickly (7-10 days), significant tissue reaction. CHROMIC catgut: treated with CHROMIC SALTS - delays absorption (90 days), prolongs tensile strength (2-3 weeks), reduced tissue reaction. Uses now limited (synthetic alternatives preferred): urology, gynecology, oral surgery. Absorption: by enzymatic degradation (vs hydrolysis for synthetic). More variable absorption than synthetic.', 'easy'),

('e0000369-0010-0000-0000-000000000010', 'd0000369-0000-0000-0000-000000000069', 10,
'When suturing bowel anastomosis, the preferred technique and suture is:',
'Running non-absorbable suture', 'Interrupted absorbable sutures with taper needle taking full-thickness bites', 'Continuous locking non-absorbable with cutting needle', 'Staples only', NULL,
'B', 'Bowel anastomosis suturing: ABSORBABLE sutures preferred (non-absorbable can erode into lumen, cause stricture). Commonly: Vicryl (3-0 or 4-0), PDS. TAPER needle: parts tissue without cutting, less trauma to bowel wall, less leakage. Technique: single-layer full-thickness (mucosa to serosa) or two-layer (inner full-thickness, outer seromuscular). INTERRUPTED vs continuous: interrupted may be more forgiving (does not purse-string if one fails). Principles: adequate blood supply, no tension, accurate mucosal approximation, watertight. Stapled anastomoses increasingly common.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 69 (Sutures, Needles, and Knots) with 10 self-assessment questions inserted' as status;
