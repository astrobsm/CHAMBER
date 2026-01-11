-- ============================================================================
-- SURGERY 3 CME ARTICLE 15: Burns Management
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000081-0000-0000-0000-000000000081', 'a0000003-0000-0000-0000-000000000003', 'Burns Management', 'Assessment and treatment of burn injuries')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000315-0000-0000-0000-000000000015',
    'c0000081-0000-0000-0000-000000000081',
    'a0000003-0000-0000-0000-000000000003',
    'Burns Management: From Initial Assessment to Definitive Care',
    'Classification, Fluid Resuscitation, Wound Care and Complications',
    'This article covers burn classification by depth and extent, initial assessment and primary survey, fluid resuscitation (Parkland formula), inhalation injury, wound management, escharotomy, skin grafting principles, and management of electrical and chemical burns.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000315-0001-0000-0000-000000000001', 'd0000315-0000-0000-0000-000000000015', 1,
'A second-degree burn (partial thickness) is characterized by:',
'Involvement of epidermis only, dry and erythematous', 'Involvement of epidermis and dermis, blisters, painful', 'Full thickness skin loss, painless, leathery eschar', 'Involvement of muscle and bone', NULL,
'B', 'Second-degree (partial thickness) burns involve epidermis and varying depths of dermis. Superficial partial: painful, moist, blisters, blanching, intact sensation, heals in 2-3 weeks. Deep partial: less painful, mottled appearance, may require grafting. First-degree: epidermis only (sunburn). Third-degree (full thickness): painless, leathery eschar, requires grafting. Fourth-degree: extends to muscle/bone.', 'easy'),

('e0000315-0002-0000-0000-000000000002', 'd0000315-0000-0000-0000-000000000015', 2,
'The Rule of Nines for estimating burn surface area in adults assigns what percentage to each lower extremity?',
'9%', '18%', '27%', '36%', NULL,
'B', 'Rule of Nines for adults: Head 9%, each arm 9%, anterior trunk 18%, posterior trunk 18%, each leg 18%, perineum 1%. Total = 100%. For children, head is proportionally larger (18% in infants, decreasing with age) and legs smaller. Lund-Browder chart is more accurate for children. Palm method: patient palm (including fingers) = approximately 1% TBSA - useful for scattered burns.', 'easy'),

('e0000315-0003-0000-0000-000000000003', 'd0000315-0000-0000-0000-000000000015', 3,
'The Parkland formula for fluid resuscitation in burns calculates:',
'Total fluids for the first week', '4 mL x weight (kg) x %TBSA burned, with half given in first 8 hours', '1 mL x weight (kg) x %TBSA burned', '10 mL x weight (kg) x %TBSA burned', NULL,
'B', 'Parkland formula: 4 mL × body weight (kg) × %TBSA burned in first 24 hours, using lactated Ringer solution. Half is given in first 8 hours (from time of injury, not hospital arrival), remainder over next 16 hours. Titrate to urine output: 0.5 mL/kg/hr adults, 1 mL/kg/hr children. Overresuscitation causes abdominal compartment syndrome, pulmonary edema.', 'medium'),

('e0000315-0004-0000-0000-000000000004', 'd0000315-0000-0000-0000-000000000015', 4,
'Indications for transfer to a burn center include:',
'First-degree burns covering less than 10% TBSA', 'Partial thickness burns >10% TBSA, burns of face/hands/feet/genitalia, full thickness burns, electrical burns, inhalation injury', 'Only burns greater than 80% TBSA', 'All burns regardless of severity', NULL,
'B', 'American Burn Association criteria for burn center referral: partial thickness >10% TBSA; burns of face, hands, feet, genitalia, perineum, major joints; third-degree burns; electrical burns; chemical burns; inhalation injury; burns with trauma; burns in patients with comorbidities; burns requiring special intervention (social, rehabilitation). Pediatric burns should go to centers with pediatric capability.', 'medium'),

('e0000315-0005-0000-0000-000000000005', 'd0000315-0000-0000-0000-000000000015', 5,
'Inhalation injury should be suspected when:',
'The patient has isolated limb burns', 'Burns occurred in enclosed space, singed nasal hairs, carbonaceous sputum, hoarseness present', 'Patient is fully conscious with no respiratory symptoms', 'Burns cover less than 5% TBSA', NULL,
'B', 'Inhalation injury indicators: enclosed space fire, singed nasal hairs/eyebrows, carbonaceous sputum, facial/oropharyngeal burns, hoarseness, stridor, wheezing. Early intubation is critical before airway edema progresses. Fiberoptic bronchoscopy confirms diagnosis (erythema, edema, soot, ulceration). Inhalation injury increases mortality and fluid requirements. Treat with humidified oxygen, bronchodilators, pulmonary toilet.', 'easy'),

('e0000315-0006-0000-0000-000000000006', 'd0000315-0000-0000-0000-000000000015', 6,
'Escharotomy is indicated for:',
'All burn patients', 'Circumferential full-thickness burns causing vascular compromise or respiratory restriction', 'Superficial burns only', 'Outpatient burn management', NULL,
'B', 'Escharotomy releases the constrictive eschar in circumferential full-thickness burns. Indications: compromised distal circulation (absent pulses, Doppler signals, capillary refill), respiratory compromise from chest eschar. Performed bedside with scalpel or electrocautery through eschar to subcutaneous fat. Incisions along mid-lateral/medial lines of extremities, along anterior axillary lines for chest. Does not require anesthesia (eschar is insensate).', 'medium'),

('e0000315-0007-0000-0000-000000000007', 'd0000315-0000-0000-0000-000000000015', 7,
'A split-thickness skin graft (STSG) includes:',
'Epidermis only', 'Epidermis and partial dermis', 'Full-thickness epidermis and dermis', 'Muscle and fascia', NULL,
'B', 'Split-thickness skin graft (STSG) includes epidermis and partial dermis. Advantages: can cover large areas, donor site heals by re-epithelialization. Disadvantages: more contracture, less durable, color/texture mismatch. Full-thickness skin graft (FTSG) includes all dermis - better cosmesis, less contracture, but limited availability (donor requires primary closure). Meshing STSG expands coverage but creates pattern.', 'easy'),

('e0000315-0008-0000-0000-000000000008', 'd0000315-0000-0000-0000-000000000015', 8,
'The most important initial treatment for chemical burns is:',
'Immediate application of neutralizing agent', 'Copious water irrigation for at least 20-30 minutes', 'Debridement of affected tissue', 'Application of topical antibiotics', NULL,
'B', 'Immediate copious water irrigation (minimum 20-30 minutes, often longer) is the most important treatment for chemical burns. Remove contaminated clothing. Do NOT use neutralizing agents (exothermic reaction can worsen injury). Exceptions: dry powder should be brushed off before irrigation; elemental metals (sodium, lithium) react with water - cover with oil. Alkali burns penetrate deeper than acid. Hydrofluoric acid requires calcium gluconate.', 'easy'),

('e0000315-0009-0000-0000-000000000009', 'd0000315-0000-0000-0000-000000000015', 9,
'Electrical burns characteristically:',
'Only cause superficial skin injury', 'Cause more extensive internal damage than visible surface burns (iceberg effect)', 'Never cause cardiac arrhythmias', 'Do not require IV fluids', NULL,
'B', 'Electrical burns cause internal injury far exceeding visible surface burns (iceberg phenomenon). Current travels through tissues of least resistance (nerves, blood vessels, muscle) causing deep injury. Complications: cardiac arrhythmias (monitor on ECG), myoglobinuria/rhabdomyolysis (aggressive fluids, urine output 1-2 mL/kg/hr), compartment syndrome requiring fasciotomy, neurological injury. Low-voltage causes local burns; high-voltage causes systemic injury.', 'medium'),

('e0000315-0010-0000-0000-000000000010', 'd0000315-0000-0000-0000-000000000015', 10,
'Silver sulfadiazine cream used in burn wound care:',
'Has no antimicrobial properties', 'Provides broad-spectrum antimicrobial coverage including Pseudomonas', 'Is first-line for facial burns', 'Promotes rapid epithelialization', NULL,
'B', 'Silver sulfadiazine (SSD) is a topical antimicrobial for burn wounds, active against gram-positive, gram-negative (including Pseudomonas), and Candida. Apply 2-4mm thickness, change 1-2 times daily. Side effects: transient leukopenia, delays epithelialization (avoid on face, may use bacitracin instead), contraindicated in sulfa allergy. Alternatives: mafenide acetate (penetrates eschar, for deep burns), silver-impregnated dressings.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 15 (Burns Management) with 10 self-assessment questions inserted' as status;
