-- ============================================================================
-- SURGERY 3 CME ARTICLE 84: Burns and Burn Management
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000150-0000-0000-0000-000000000150', 'a0000003-0000-0000-0000-000000000003', 'Burns and Burn Management', 'Assessment and treatment of thermal, chemical, and electrical injuries')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000384-0000-0000-0000-000000000084',
    'c0000150-0000-0000-0000-000000000150',
    'a0000003-0000-0000-0000-000000000003',
    'Burns: Assessment, Resuscitation, and Surgical Management',
    'Comprehensive Burn Care Principles',
    'This article covers burn depth classification, TBSA estimation using Rule of Nines and Lund-Browder chart, Parkland formula for fluid resuscitation, escharotomy indications, burn wound care, inhalational injury, burn center referral criteria, and reconstructive considerations.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000384-0001-0000-0000-000000000001', 'd0000384-0000-0000-0000-000000000084', 1,
'A deep partial thickness (second degree) burn is characterized by:',
'Dry, leathery, painless wound with no blisters', 'Painful wound with blisters, involving epidermis and part of dermis, hair follicles preserved', 'Only erythema with intact epidermis', 'Black, charred tissue extending to muscle',
'B', 'Burn depth classification: SUPERFICIAL (1st degree) - epidermis only, erythema, no blisters, painful (sunburn). PARTIAL THICKNESS (2nd degree): Superficial partial - blisters, moist, very painful, blanches; Deep partial - mottled, less painful, may not blanch well. FULL THICKNESS (3rd degree) - entire dermis destroyed, dry, leathery, painless, no blanching, eschar forms. FOURTH DEGREE - involves fat, muscle, bone. Deep partial thickness: hair follicles and sweat glands partially preserved allowing re-epithelialization.', 'easy'),

('e0000384-0002-0000-0000-000000000002', 'd0000384-0000-0000-0000-000000000084', 2,
'Using the Rule of Nines in an adult, the anterior trunk represents what percentage of TBSA?',
'9%', '18%', '27%', '36%',
'B', 'Rule of Nines for TBSA estimation in ADULTS: Head 9%, Each arm 9%, Anterior trunk 18%, Posterior trunk 18%, Each leg 18%, Perineum 1%. Total = 100%. For partial areas, patient palm (including fingers) = approximately 1% TBSA. CHILDREN: different proportions - larger head (up to 18%), smaller legs. Lund-Browder chart more accurate for children (age-adjusted). Only count partial and full thickness burns (not superficial). Critical for fluid resuscitation calculations.', 'easy'),

('e0000384-0003-0000-0000-000000000003', 'd0000384-0000-0000-0000-000000000084', 3,
'The Parkland formula for burn resuscitation recommends:',
'Normal saline at maintenance rate', '4 mL/kg per percentage TBSA of lactated Ringer solution, half in first 8 hours, half over next 16 hours', '2 mL/kg per percentage TBSA of colloid', 'Blood transfusion based on TBSA',
'B', 'Parkland (Baxter) formula: 4 mL x weight (kg) x %TBSA burned. Fluid: LACTATED RINGER (crystalloid). Give HALF in first 8 hours from time of burn (not time of presentation), remaining HALF over next 16 hours. Titrate to urine output: 0.5-1 mL/kg/hr adults, 1-1.5 mL/kg/hr children. Avoid over-resuscitation (abdominal compartment syndrome, pulmonary edema). Modified Brooke formula uses 2 mL/kg/%TBSA. Colloids controversial in first 24 hours.', 'medium'),

('e0000384-0004-0000-0000-000000000004', 'd0000384-0000-0000-0000-000000000084', 4,
'Escharotomy is indicated for:',
'All superficial burns', 'Circumferential full thickness burns causing compartment syndrome or respiratory compromise', 'Partial thickness burns of the face', 'First degree burns with pain',
'B', 'ESCHAROTOMY: incision through eschar (full thickness burn) to release constriction. INDICATIONS: (1) Circumferential limb burns with distal ischemia (decreased pulses, delayed cap refill, pain, paresthesias); (2) Circumferential chest/trunk burns impairing ventilation; (3) Circumferential neck burns. TECHNIQUE: longitudinal incisions through eschar to subcutaneous fat, mid-lateral/mid-medial lines of extremities. No anesthesia needed (full thickness is insensate). Different from FASCIOTOMY (for compartment syndrome, goes through fascia).', 'medium'),

('e0000384-0005-0000-0000-000000000005', 'd0000384-0000-0000-0000-000000000084', 5,
'Signs of inhalational injury include:',
'Burns on the lower extremities only', 'Facial burns, singed nasal hairs, carbonaceous sputum, hoarseness, and history of enclosed space fire', 'Normal oxygen saturation excludes diagnosis', 'Clear chest X-ray excludes diagnosis',
'B', 'Inhalational injury CLINICAL FEATURES: facial burns, singed eyebrows/nasal hair, carbonaceous sputum, hoarseness, stridor, oropharyngeal edema/erythema, wheezing. HISTORY: enclosed space fire, loss of consciousness. DIAGNOSIS: bronchoscopy (gold standard) - erythema, edema, soot. CXR may be initially normal. CO-oximetry for carboxyhemoglobin (pulse ox unreliable). Early intubation if suspected (airway swells rapidly). Treat CO poisoning with 100% O2. Associated with increased mortality, fluid requirements.', 'easy'),

('e0000384-0006-0000-0000-000000000006', 'd0000384-0000-0000-0000-000000000084', 6,
'Burn center referral criteria include:',
'Any superficial burn less than 5% TBSA', 'Partial thickness burns greater than 10% TBSA, full thickness burns, burns to face/hands/feet/genitalia, electrical or chemical burns, inhalational injury', 'First degree sunburn', 'Healed burns requiring follow-up',
'B', 'ABA Burn Center Referral Criteria: (1) Partial thickness >10% TBSA; (2) Burns to face, hands, feet, genitalia, perineum, major joints; (3) Full thickness burns any size; (4) Electrical burns including lightning; (5) Chemical burns; (6) Inhalational injury; (7) Pre-existing conditions complicating management; (8) Concomitant trauma; (9) Children at facilities without pediatric capability; (10) Special social/emotional/rehabilitation needs. Transfer after stabilization with adequate IV access and fluid resuscitation initiated.', 'easy'),

('e0000384-0007-0000-0000-000000000007', 'd0000384-0000-0000-0000-000000000084', 7,
'Electrical burns are characterized by:',
'Injury limited to skin surface only', 'Extensive deep tissue damage out of proportion to visible skin injury, cardiac arrhythmias, and risk of compartment syndrome', 'No internal organ damage', 'Low risk of complications',
'B', 'Electrical burns: HIGH VOLTAGE (>1000V) vs low voltage. Tissue damage depends on: current type (AC more dangerous - tetanic contraction), pathway, duration, tissue resistance. FEATURES: entry and exit wounds (tip of iceberg), extensive DEEP TISSUE DAMAGE (muscle necrosis), rhabdomyolysis (myoglobinuria), compartment syndrome (requires fasciotomy), CARDIAC ARRHYTHMIAS (monitor, get ECG), neurologic injury, cataracts (delayed). Management: aggressive fluid resuscitation, target UOP 1-2 mL/kg/hr until myoglobin clears, monitor CK, early fasciotomy if needed.', 'medium'),

('e0000384-0008-0000-0000-000000000008', 'd0000384-0000-0000-0000-000000000084', 8,
'Initial management of chemical burns includes:',
'Application of neutralizing agents immediately', 'Copious water irrigation for at least 20-30 minutes, removal of contaminated clothing, and identification of the agent', 'Dry dressing only', 'Delayed treatment until agent identified',
'B', 'Chemical burns INITIAL MANAGEMENT: (1) SAFETY - protect rescuers; (2) REMOVE contaminated clothing; (3) COPIOUS WATER IRRIGATION - at least 20-30 minutes (longer for alkali burns - cause liquefactive necrosis, penetrate deeper). DO NOT use neutralizing agents (exothermic reaction causes thermal injury). (4) IDENTIFY agent (for specific treatment if needed). ALKALI burns worse than acid (acids cause coagulative necrosis limiting penetration). Special: HF (hydrofluoric acid) - calcium gluconate. Eyes - continuous irrigation, ophthalmology consult.', 'easy'),

('e0000384-0009-0000-0000-000000000009', 'd0000384-0000-0000-0000-000000000084', 9,
'Skin grafting for burns:',
'Is required for all partial thickness burns', 'Is indicated for full thickness burns and deep partial thickness burns that will not heal within 3 weeks; split thickness grafts are most commonly used', 'Must always use full thickness grafts', 'Should be done immediately on day of injury',
'B', 'Skin grafting for burns: INDICATIONS - full thickness burns (no dermal appendages for re-epithelialization), deep partial thickness unlikely to heal in 3 weeks. TYPES: Split thickness (STSG) - most common in burns, epidermis + part of dermis, donor site heals; Full thickness (FTSG) - better quality, less contraction, limited supply. TIMING: after excision of necrotic tissue, clean wound bed, granulation tissue present. Early excision and grafting (within days) improves outcomes. MESHING allows coverage of larger areas, drainage.', 'medium'),

('e0000384-0010-0000-0000-000000000010', 'd0000384-0000-0000-0000-000000000084', 10,
'Burn wound infection and sepsis:',
'Are rare in burns', 'Are leading causes of death in burns; wound cultures showing greater than 10 to the 5th organisms per gram indicate infection requiring treatment', 'Only occur with electrical burns', 'Are treated with topical agents alone',
'B', 'Burn wound infection: leading cause of death after initial resuscitation. RISK FACTORS: large TBSA, delayed treatment, immunosuppression. DIAGNOSIS: wound changes (deepening, discoloration, early eschar separation), systemic signs, QUANTITATIVE CULTURE >10^5 organisms/gram tissue. ORGANISMS: Pseudomonas, Staph aureus (including MRSA), Candida, Aspergillus. TREATMENT: debridement, systemic antibiotics (based on culture), topical antimicrobials. PREVENTION: early excision and grafting, topical agents (silver sulfadiazine, mafenide, silver dressings), infection control practices.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 84 (Burns and Burn Management) with 10 self-assessment questions inserted' as status;
