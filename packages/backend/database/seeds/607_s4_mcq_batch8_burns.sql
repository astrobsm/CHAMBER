-- Surgery 4 MCQ Question Bank - Batch 8
-- Section B: Trauma & Emergency Surgery - Burns
-- 40 Questions

-- Topic: Burns
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000008-0000-0000-0000-000000000008', 'Burns', 'a0000004-0000-0000-0000-000000000004', 'Classification, assessment and management of burn injuries', 8, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The rule of nines assigns what percentage to each lower limb in adults?',
 '9 percent', '18 percent', '14 percent', '27 percent', '36 percent',
 'B', 'In adults, each lower limb = 18% (front 9%, back 9%). Head = 9%, each upper limb = 9%, anterior trunk = 18%, posterior trunk = 18%, perineum = 1%.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The patient palm including fingers represents approximately what percentage of TBSA?',
 '0.5 percent', '1 percent', '2 percent', '5 percent', '9 percent',
 'B', 'The patients palm (including fingers) represents approximately 1% of TBSA. This is useful for estimating scattered or irregular burns.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'In children under 1 year, the head represents what percentage of TBSA?',
 '9 percent', '18 percent', '14 percent', '7 percent', '21 percent',
 'B', 'In infants, the head is relatively larger (18% vs 9% in adults). Each leg is correspondingly smaller (14% vs 18%). These proportions change with age.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'A superficial partial thickness burn is characterized by:',
 'Dry white surface without blisters', 'Blisters with moist pink painful base', 'Leathery dry painless surface', 'Black eschar', 'Exposed subcutaneous fat',
 'B', 'Superficial partial thickness (2nd degree superficial): blisters, moist pink/red base, very painful, blanches with pressure, heals in 2-3 weeks with minimal scarring.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Full thickness burn is characterized by:',
 'Intact blisters', 'Moist red painful surface', 'Dry leathery white or charred painless surface', 'Only superficial erythema', 'Blanching on pressure',
 'C', 'Full thickness (3rd degree): all skin layers destroyed, dry leathery texture, white/brown/charred color, painless (nerve destruction), no blanching, requires grafting.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The Parkland formula for fluid resuscitation in burns is:',
 '2 ml/kg/% TBSA crystalloid in first 24 hours', '4 ml/kg/% TBSA crystalloid in first 24 hours', '4 ml/kg/% TBSA colloid in first 24 hours', '6 ml/kg/% TBSA in first 24 hours', '2 ml/kg/% TBSA colloid in first 24 hours',
 'B', 'Parkland formula: 4 ml x weight (kg) x %TBSA burn of Lactated Ringers in first 24 hours. Half given in first 8 hours, half in next 16 hours.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The optimal urine output target in adult burn resuscitation is:',
 '0.25 ml/kg/hour', '0.5-1 ml/kg/hour', '2 ml/kg/hour', '5 ml/kg/hour', '100 ml/hour fixed',
 'B', 'Target urine output is 0.5-1 ml/kg/hour in adults (1-2 ml/kg/hour in children). This guides fluid titration. Higher targets may lead to fluid overload.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Burns requiring referral to a burn center include all EXCEPT:',
 'Greater than 10 percent TBSA partial thickness', 'Full thickness burns of any size', 'Burns of hands feet face or perineum', 'Small superficial burn of forearm', 'Inhalation injury',
 'D', 'Referral criteria: >10% TBSA, full thickness, face/hands/feet/perineum/joints, inhalation, electrical, chemical, circumferential, associated trauma, extremes of age, comorbidities.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Inhalation injury should be suspected when:',
 'Burn is only on lower limbs', 'Facial burns singed nasal hair carbonaceous sputum and hoarse voice', 'Minor sunburn present', 'Clean electrical burn', 'Burn occurred outdoors',
 'B', 'Inhalation injury markers: enclosed space fire, facial burns, singed nasal/facial hair, carbonaceous sputum, hoarseness, stridor, cough. Early intubation if suspected.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The investigation of choice for confirming inhalation injury is:',
 'Chest X-ray', 'Arterial blood gas', 'Fiberoptic bronchoscopy', 'CT chest', 'Pulmonary function tests',
 'C', 'Fiberoptic bronchoscopy directly visualizes airway for edema, erythema, soot, and mucosal injury. CXR is often initially normal. Bronchoscopy is the gold standard.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Carbon monoxide poisoning is treated with:',
 'Supportive care only', 'High-flow 100 percent oxygen', 'Low-flow oxygen', 'Hyperbaric nitrogen', 'Blood transfusion',
 'B', 'High-flow 100% O2 (reduces CO half-life from 4-6 hours to 40-80 minutes). Consider hyperbaric O2 for severe poisoning (COHb >25%, neurological symptoms, pregnancy).', 'easy', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Carboxyhemoglobin level indicating severe poisoning is greater than:',
 '5 percent', '10 percent', '15 percent', '25 percent', '50 percent',
 'D', 'COHb >25% indicates severe CO poisoning. >40% is potentially lethal. Symptoms: headache at 20%, confusion at 40%, coma/death at >60%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Escharotomy is indicated for:',
 'All burns', 'Circumferential full thickness burns with vascular or respiratory compromise', 'Superficial burns only', 'Chemical burns only', 'Electrical burns only',
 'B', 'Escharotomy is indicated for circumferential full-thickness burns causing vascular compromise (limbs) or respiratory compromise (chest). It releases constricting eschar.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Escharotomy incisions on the limbs are made:',
 'Circumferentially around limb', 'Along mid-lateral and mid-medial lines', 'Only dorsally', 'Only ventrally', 'Randomly placed',
 'B', 'Escharotomy incisions are made along mid-medial and mid-lateral lines of the limb through eschar to subcutaneous fat. This decompresses the circumferential burn.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The Jackson burn wound model describes zones of:',
 'Infection inflammation and healing', 'Coagulation stasis and hyperemia', 'Necrosis granulation and epithelialization', 'Thrombosis ischemia and infarction', 'Erythema edema and exudate',
 'B', 'Jackson zones: central zone of coagulation (irreversible damage), zone of stasis (potentially salvageable), and outer zone of hyperemia (will recover). Goal is to preserve zone of stasis.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The most common organism causing burn wound infection is:',
 'Streptococcus pyogenes', 'Staphylococcus aureus and Pseudomonas aeruginosa', 'Escherichia coli', 'Clostridium perfringens', 'Candida albicans',
 'B', 'Initially Gram-positive (S. aureus), then Gram-negative (Pseudomonas) predominate. Fungal infections occur later. Multi-drug resistant organisms are increasingly common.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Silver sulfadiazine should be avoided in:',
 'Small burns', 'Facial burns', 'Sulfa allergy and near term pregnancy', 'Hand burns', 'Leg burns',
 'C', 'Silver sulfadiazine is contraindicated in sulfa allergy, G6PD deficiency, pregnant women near term (kernicterus risk), and infants <2 months.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Early excision and grafting of deep burns is ideally performed within:',
 '24 hours', '3-5 days', '2 weeks', '4 weeks', '6 weeks',
 'B', 'Early excision and grafting (within 3-5 days) reduces mortality, hospital stay, and sepsis compared to delayed grafting. Wait for resuscitation stabilization first.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Tangential excision of burns removes:',
 'All tissue to fascia', 'Sequential thin layers until viable bleeding tissue', 'Epidermis only', 'Subcutaneous fat only', 'Muscle',
 'B', 'Tangential excision removes sequential thin layers of burned tissue until viable tissue (punctate bleeding) is reached. It preserves more dermis than fascial excision.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'A mesh skin graft ratio of 1.5:1 is used to:',
 'Increase graft size for larger wounds', 'Decrease graft size', 'Improve cosmetic outcome', 'Prevent infection', 'Increase graft thickness',
 'A', 'Meshing expands graft to cover larger areas. 1.5:1 expands by 50%. Higher ratios (3:1, 6:1) for massive burns but with poorer cosmesis. Unmeshed (sheet) grafts for cosmetic areas.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Cultured epithelial autografts are used when:',
 'There is plenty of donor skin', 'Burn size exceeds available donor sites', 'For small burns only', 'As first-line treatment', 'For outpatient management',
 'B', 'CEAs are grown from small skin biopsy to provide epithelial sheets for massive burns where donor sites are limited. They are fragile and expensive.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Curling ulcer in burn patients is:',
 'Stress ulcer of stomach or duodenum', 'Marjolin ulcer', 'Venous ulcer', 'Decubitus ulcer', 'Neuropathic ulcer',
 'A', 'Curling ulcer is acute stress ulceration of stomach/duodenum in severe burns. Prevented with H2 blockers or PPIs and early enteral feeding.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Nutritional requirements in major burns are:',
 'Decreased due to bed rest', 'Markedly increased - hypermetabolic state', 'Normal', 'Only fluid is needed', 'Protein restriction is needed',
 'B', 'Major burns cause hypermetabolic state with caloric needs 1.5-2x normal. Early enteral feeding is preferred. Protein needs are increased for wound healing.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Electrical burn differs from thermal burn in that:',
 'It only affects skin surface', 'Deep tissue damage exceeds surface appearance', 'It never causes cardiac arrhythmia', 'It heals faster', 'Fluid requirements are less',
 'B', 'Electrical burns cause deep tissue damage (muscle, nerves, vessels) often greater than surface appearance (iceberg effect). Cardiac monitoring essential.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'High voltage electrical injury requires monitoring for:',
 'Hyperkalemia only', 'Myoglobinuria and cardiac arrhythmias', 'Hypoglycemia', 'Hypernatremia', 'Anemia only',
 'B', 'High voltage injury: cardiac monitoring for arrhythmias (can occur up to 24 hours), myoglobinuria (forced diuresis), compartment syndrome, delayed neurological sequelae.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of chemical burn is:',
 'Immediate application of neutralizing agent', 'Copious water irrigation for at least 20 minutes', 'Dry dressing', 'Debridement first', 'Nothing until identified',
 'B', 'Copious water irrigation for at least 20 minutes (longer for alkali). Neutralizing agents may cause heat generation. Remove contaminated clothing. Check pH.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Alkali burns are generally more severe than acid burns because:',
 'Acids penetrate deeper', 'Alkalis cause liquefactive necrosis allowing deeper penetration', 'Acids are more common', 'Alkalis are more painful', 'Acids cause more systemic effects',
 'B', 'Alkalis cause liquefactive necrosis (saponification of fats), allowing progressive deep penetration. Acids cause coagulative necrosis which limits depth.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Hydrofluoric acid burn requires treatment with:',
 'Sodium bicarbonate', 'Calcium gluconate gel or injection', 'Normal saline only', 'Potassium chloride', 'Magnesium sulfate',
 'B', 'Hydrofluoric acid causes fluoride ion toxicity (hypocalcemia, hypomagnesemia) and deep painful burns. Treat with calcium gluconate (topical gel, injection, or IV for systemic toxicity).', 'hard', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The hypermetabolic response to severe burns typically lasts:',
 '1-2 days', '1-2 weeks', 'Up to 2 years or more after injury', '1 month only', 'Resolves at discharge',
 'C', 'Hypermetabolic response can persist for up to 2-3 years after severe burns, affecting growth in children and requiring ongoing nutritional and metabolic support.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Burn scar contracture is minimized by:',
 'Delayed grafting', 'Early grafting and positioning splinting and physiotherapy', 'No treatment needed', 'Rest only', 'Late surgical release only',
 'B', 'Prevention is key: early excision and grafting, proper positioning, splinting, pressure garments, and early physiotherapy. Release surgery for established contractures.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Hypertrophic scarring after burns is characterized by:',
 'Stays within wound margins', 'Extends beyond wound margins', 'Never occurs', 'Only in children', 'Only in elderly',
 'A', 'Hypertrophic scars stay within wound margins (vs keloids which extend beyond). Risk factors: deep burns, delayed healing, infection, tension, dark skin, young age.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Pressure garment therapy for burn scars should be worn for:',
 '1 month', '3 months', '12-18 months or until scars mature', '1 week', 'No specific duration',
 'C', 'Pressure garments (23-25 mmHg) should be worn 23 hours/day for 12-18 months until scars mature (become pale, soft, flat). Early initiation after wound closure.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Heterotopic ossification in burns:',
 'Never occurs', 'Occurs in joints especially with prolonged immobility', 'Is treated with skin grafting', 'Only affects hands', 'Is prevented by steroids',
 'B', 'Heterotopic ossification occurs around joints (especially elbows) in severe burns with prolonged immobility. Prevention: early ROM exercises. Treatment: excision after maturation.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'The Baux score for burn mortality is calculated as:',
 'TBSA only', 'Age plus TBSA plus 17 if inhalation injury', 'Age minus TBSA', 'TBSA times age', 'TBSA divided by age',
 'B', 'Modified Baux score = Age + %TBSA + 17 (if inhalation injury). Provides mortality estimate. Score of 140 approximates 100% mortality.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Toxic epidermal necrolysis (TEN) differs from burns in that:',
 'It is caused by heat', 'It is a drug-induced immune reaction causing skin loss', 'It only affects epidermis', 'It heals without treatment', 'It never affects mucosa',
 'B', 'TEN is usually drug-induced (allopurinol, antibiotics, NSAIDs, anticonvulsants) causing widespread keratinocyte death and skin loss. Treatment is supportive, often in burn units.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Non-accidental burn injury in children should be suspected when:',
 'Burns match the history exactly', 'Burns have sharp demarcation glove stocking pattern or inconsistent history', 'Any burn in a child', 'Only in certain communities', 'Only with full thickness burns',
 'B', 'Non-accidental injury: sharply demarcated margins, glove/stocking pattern (immersion), absence of splash marks, burns inconsistent with stated history, associated injuries, delayed presentation.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Frostbite is classified into how many degrees?',
 '2', '3', '4', '5', '6',
 'C', 'Frostbite: 1st degree (numbness, erythema, edema), 2nd degree (blisters with clear fluid), 3rd degree (blood-filled blisters, skin necrosis), 4th degree (muscle/bone involvement).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000008-0000-0000-0000-000000000008', 'a0000004-0000-0000-0000-000000000004',
 'Rewarming of frostbite is best achieved by:',
 'Rubbing with snow', 'Rapid rewarming in 37-40 degrees Celsius water', 'Slow rewarming at room temperature', 'Dry heat application', 'Immersion in cold water first',
 'B', 'Rapid rewarming in 37-40C water for 15-30 minutes until pink/soft. Avoid refreezing, dry heat, rubbing, or weight bearing on affected tissue.', 'medium', 'application');
