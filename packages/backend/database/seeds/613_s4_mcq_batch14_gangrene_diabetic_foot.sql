-- Surgery 4 MCQ Question Bank - Batch 14
-- Section A: Vascular Surgery - Gangrene and Diabetic Foot
-- 40 Questions

-- Topic: Gangrene and Diabetic Foot
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000014-0000-0000-0000-000000000014', 'Gangrene and Diabetic Foot', 'a0000004-0000-0000-0000-000000000004', 'Types of gangrene and comprehensive diabetic foot management', 14, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Gangrene is defined as:',
 'Tissue inflammation', 'Death and putrefaction of tissue', 'Minor infection', 'Edema only', 'Cellulitis',
 'B', 'Gangrene: death of tissue with subsequent putrefaction. Can be dry (ischemic without infection), wet (ischemic with infection), or gas gangrene (clostridial myonecrosis).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Dry gangrene is characterized by:',
 'Moist black tissue with foul smell and systemic toxicity', 'Desiccated mummified tissue with clear demarcation', 'Gas in tissues', 'Rapid progression', 'Purulent discharge',
 'B', 'Dry gangrene: tissue becomes dry, shrunken, dark/black (mummified). Clear line of demarcation. Results from gradual arterial occlusion without infection. May auto-amputate.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Wet gangrene is characterized by:',
 'Dry mummified tissue', 'Edematous infected tissue with systemic toxicity', 'Clear demarcation line', 'Slow progression', 'No odor',
 'B', 'Wet gangrene: ischemic tissue with superimposed infection. Edematous, blistered, foul smelling. No clear demarcation. Systemic toxicity common. Requires urgent debridement.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Gas gangrene is most commonly caused by:',
 'Staphylococcus aureus', 'Clostridium perfringens', 'E. coli', 'Streptococcus', 'Pseudomonas',
 'B', 'Gas gangrene (clostridial myonecrosis): Clostridium perfringens most common (80%). Other species: C. novyi, C. septicum. Produces alpha-toxin (lecithinase) causing tissue destruction.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Clinical features of gas gangrene include:',
 'Gradual painless swelling', 'Severe pain out of proportion crepitus and rapid progression with toxicity', 'Mild discomfort only', 'Localized abscess only', 'Slow progression over weeks',
 'B', 'Gas gangrene: severe pain, rapidly progressive, crepitus, bronze/brown skin, thin watery discharge (dirty dishwater), sweet odor, systemic toxicity. Mortality 25-40%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of gas gangrene includes:',
 'Antibiotics only', 'Aggressive surgical debridement high-dose penicillin and possible hyperbaric oxygen', 'Observation', 'Topical treatment only', 'Warm compresses',
 'B', 'Gas gangrene treatment: emergency surgical debridement (may need amputation), high-dose IV penicillin (+ clindamycin for toxin suppression), supportive care, HBO adjunctive.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Fournier gangrene is:',
 'Gangrene of the hand', 'Necrotizing fasciitis of the perineum and genitalia', 'Dry gangrene of the foot', 'Gangrene of the face', 'Venous gangrene',
 'B', 'Fournier gangrene: necrotizing fasciitis of perineum/genitalia. Polymicrobial. Risk factors: diabetes, alcohol, immunosuppression. Rapid progression, high mortality. Emergency debridement.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Necrotizing fasciitis differs from cellulitis by:',
 'Less severe presentation', 'Pain out of proportion to findings rapid spread and systemic toxicity', 'Slower progression', 'Better response to antibiotics alone', 'Superficial involvement only',
 'B', 'Necrotizing fasciitis: pain out of proportion, rapid spread, systemic toxicity, crepitus, skin necrosis, fails to respond to antibiotics. Surgical emergency requiring debridement.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'The LRINEC score is used to:',
 'Stage cancer', 'Differentiate necrotizing fasciitis from other soft tissue infections', 'Grade diabetic foot ulcers', 'Assess cardiac risk', 'Measure wound healing',
 'B', 'LRINEC (Laboratory Risk Indicator for Necrotizing Fasciitis): uses CRP, WBC, hemoglobin, sodium, creatinine, glucose. Score >6 concerning for NF. Clinical suspicion still paramount.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Venous gangrene (phlegmasia cerulea dolens) is caused by:',
 'Arterial occlusion', 'Massive iliofemoral venous thrombosis compromising arterial flow', 'Lymphatic obstruction', 'Minor venous disease', 'Arteriovenous fistula',
 'B', 'Phlegmasia cerulea dolens: massive iliofemoral DVT causing venous congestion so severe that arterial inflow is compromised. Blue, painful, swollen limb. Risk of venous gangrene.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Diabetes affects the foot through:',
 'Neuropathy only', 'Neuropathy peripheral arterial disease and immunopathy', 'Vascular disease only', 'Immune dysfunction only', 'Bone disease only',
 'B', 'Diabetic foot triad: neuropathy (loss of protective sensation), PAD (ischemia), immunopathy (increased infection risk). All contribute to ulceration, infection, and amputation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Diabetic peripheral neuropathy most commonly presents as:',
 'Proximal motor weakness', 'Distal symmetric sensory loss in stocking distribution', 'Unilateral weakness', 'Cranial nerve involvement', 'Pain only',
 'B', 'Diabetic polyneuropathy: distal symmetric sensory > motor, stocking-glove distribution, loss of vibration/position sense and light touch, later loss of pain/temperature.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'The 10g monofilament test assesses:',
 'Motor function', 'Loss of protective sensation in diabetic foot', 'Blood glucose', 'Circulation', 'Balance',
 'B', 'Semmes-Weinstein 10g monofilament: tests loss of protective sensation. Inability to feel at specified sites indicates high ulceration risk. Screen annually in diabetics.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Charcot neuroarthropathy of the foot is:',
 'Infectious arthritis', 'Destructive bone and joint condition from neuropathy', 'Rheumatoid arthritis', 'Gout', 'Osteoarthritis',
 'B', 'Charcot foot: progressive destructive arthropathy in neuropathic foot. Repetitive microtrauma without pain leads to bone fragmentation, joint destruction, deformity (rocker-bottom foot).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Acute Charcot foot presents with:',
 'Cold pale foot', 'Warm swollen erythematous foot that may mimic cellulitis or DVT', 'Blue discoloration', 'Dry gangrene', 'No symptoms',
 'B', 'Acute Charcot: warm, swollen, erythematous foot (increased blood flow from autonomic neuropathy). Often misdiagnosed as cellulitis, DVT, or gout. Temperature difference from contralateral foot.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of acute Charcot foot is primarily:',
 'Immediate surgery', 'Immobilization and offloading with total contact cast', 'Antibiotics', 'Amputation', 'Weight bearing exercises',
 'B', 'Acute Charcot: non-weight bearing, total contact cast or removable cast walker. Goal: prevent progression and deformity during active phase. Surgery only for instability/ulceration later.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Diabetic foot ulcers most commonly occur:',
 'On dorsum of foot', 'At sites of pressure especially plantar metatarsal heads', 'On the ankle', 'On the calf', 'Random locations',
 'B', 'Diabetic foot ulcers: pressure points - plantar metatarsal heads, tips of toes, heel. Also over bony prominences from deformity. Neuropathy prevents pain response to pressure.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'The Wagner classification of diabetic foot ulcers grades:',
 'Infection severity', 'Ulcer depth from superficial to deep with gangrene stages', 'Arterial supply only', 'Neuropathy severity', 'Bone involvement only',
 'B', 'Wagner grades: 0= intact skin at risk, 1= superficial ulcer, 2= deep to tendon/capsule, 3= deep with abscess/osteomyelitis, 4= partial foot gangrene, 5= whole foot gangrene.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'The University of Texas classification considers:',
 'Only wound depth', 'Wound depth and presence of ischemia and infection', 'Only infection', 'Only ischemia', 'Only neuropathy',
 'B', 'UT classification: grades (0-3) depth + stages (A-D) for ischemia/infection: A= neither, B= infected, C= ischemic, D= both. More predictive of outcomes than Wagner alone.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Probe-to-bone test is positive when:',
 'X-ray shows bone destruction', 'A sterile metal probe reaches bone through the ulcer', 'Blood tests are abnormal', 'MRI shows bone changes', 'Bone scan is positive',
 'B', 'Probe-to-bone test: positive when sterile blunt probe reaches bone through wound. High specificity for osteomyelitis (up to 90%). Simple bedside test.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'The most accurate imaging for diagnosing diabetic foot osteomyelitis is:',
 'Plain X-ray', 'MRI', 'Bone scan only', 'Ultrasound', 'CT scan',
 'B', 'MRI is most accurate for diabetic foot osteomyelitis (sensitivity 90%, specificity 80%). Shows bone marrow edema. X-ray insensitive for early disease. Bone scan sensitive but non-specific.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of diabetic foot osteomyelitis includes:',
 'Short-course oral antibiotics', 'Prolonged IV antibiotics and possible surgical debridement or resection', 'Topical antibiotics only', 'Observation', 'Dressings alone',
 'B', 'Osteomyelitis treatment: prolonged antibiotics (6+ weeks IV initially), surgical debridement of necrotic bone (may need amputation). Combined approach often best. Culture-directed therapy.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Offloading in diabetic foot ulcer treatment refers to:',
 'Increasing pressure', 'Reducing pressure on the ulcer through devices or rest', 'Elevating the foot only', 'Exercise therapy', 'Medication changes',
 'B', 'Offloading: reducing pressure on ulcer. Methods: total contact cast (gold standard), removable cast walker, therapeutic footwear, crutches/wheelchair. Essential for healing neuropathic ulcers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Total contact cast for diabetic foot ulcer works by:',
 'Increasing blood flow', 'Distributing weight across entire plantar surface reducing focal pressure', 'Keeping wound dry', 'Preventing infection', 'Improving sensation',
 'B', 'Total contact cast: redistributes plantar pressure, reduces shear, enforces offloading compliance. Up to 90% healing rate for neuropathic ulcers. Contraindicated in infected or ischemic wounds.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Sharp debridement of diabetic foot ulcer serves to:',
 'Increase wound size permanently', 'Remove non-viable tissue reduce bioburden and stimulate healing', 'Cause more infection', 'Delay healing', 'No purpose',
 'B', 'Sharp debridement: removes necrotic tissue, callus, biofilm, reduces bacterial load, converts chronic wound to acute wound, stimulates healing. Essential part of wound care.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Revascularization in diabetic foot with PAD should be considered when:',
 'Never in diabetics', 'Significant PAD contributing to non-healing or threatened limb', 'Only in non-diabetics', 'Only after amputation', 'Only for mild disease',
 'B', 'Revascularization indicated when PAD significantly contributes to ulcer non-healing or limb threat. Improves perfusion for healing and limb salvage. Angioplasty or bypass options.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Negative pressure wound therapy (NPWT) in diabetic foot ulcers:',
 'Should never be used', 'Promotes granulation tissue and may accelerate healing after debridement', 'Causes infection', 'Increases wound size', 'Delays healing',
 'B', 'NPWT benefits: removes exudate, reduces edema, increases blood flow, promotes granulation tissue formation. Used after adequate debridement. Not on dry eschar or untreated osteomyelitis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Bioengineered skin substitutes in diabetic foot ulcers are indicated for:',
 'All diabetic ulcers', 'Ulcers not responding to standard care after adequate debridement and offloading', 'Infected ulcers only', 'Ischemic ulcers without revascularization', 'Never indicated',
 'B', 'Skin substitutes/grafts: for wounds not healing with standard care (offloading, debridement, dressings). Require adequate blood supply and infection control first.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Hyperbaric oxygen therapy for diabetic foot wounds may be considered for:',
 'All diabetic ulcers', 'Refractory wounds with inadequate healing response to standard therapy', 'First-line treatment', 'Infected wounds as sole therapy', 'Minor cuts',
 'B', 'HBO: adjunct for chronic non-healing wounds, may improve oxygenation and wound healing. Not first-line. Most evidence for ischemic wounds not amenable to revascularization.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Prevention of diabetic foot complications includes:',
 'Annual foot exam only', 'Daily self-examination proper footwear glycemic control and regular professional assessment', 'No specific prevention needed', 'Walking barefoot for sensory stimulation', 'Ignoring minor injuries',
 'B', 'Prevention: daily self-exam, appropriate footwear (fitted, protective), glycemic control, regular professional foot exam, prompt treatment of injuries, patient education.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Diabetic patients should be advised to:',
 'Walk barefoot to toughen feet', 'Never walk barefoot inspect feet daily and wear appropriate footwear', 'Ignore blisters', 'Cut corns and calluses themselves', 'Soak feet in hot water',
 'B', 'Foot care education: never barefoot, daily foot inspection (use mirror), check shoes for objects, wear fitted shoes, avoid extremes of temperature, professional nail and callus care.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Glycemic control improves diabetic foot outcomes by:',
 'No effect on foot outcomes', 'Reducing neuropathy progression and improving wound healing', 'Only cosmetic benefit', 'Increasing amputation rate', 'Worsening circulation',
 'B', 'Good glycemic control: slows neuropathy progression, reduces ulcer/infection risk, improves wound healing. Part of comprehensive diabetic foot care. HbA1c target individualized.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'The multidisciplinary diabetic foot team typically includes:',
 'Only surgeon', 'Endocrinology vascular surgery podiatry orthotics infectious disease and wound care', 'Only endocrinologist', 'Only podiatrist', 'Only nurse',
 'B', 'Multidisciplinary team approach reduces amputation rates: endocrinology/diabetes, vascular surgery, podiatry, orthotist, ID, wound care nurse, orthopedic surgery, plastics, rehabilitation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'After healing of a diabetic foot ulcer recurrence prevention includes:',
 'No further follow-up needed', 'Lifelong surveillance custom footwear and continued foot care practices', 'Return to normal shoes immediately', 'No activity restrictions', 'Stop monitoring blood sugar',
 'B', 'Post-healing: high recurrence risk (40% at 1 year, 65% at 3 years). Lifelong surveillance, custom footwear/orthotics, continued offloading, maintain glycemic control, regular foot exams.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Antibiotic selection for diabetic foot infection should be:',
 'Always broad-spectrum IV', 'Based on infection severity wound culture and local resistance patterns', 'Never use antibiotics', 'Topical only', 'Single agent always',
 'B', 'Antibiotic selection: mild= oral narrow-spectrum (S. aureus, Strep), moderate/severe= broader spectrum (gram-neg, anaerobes), IV initially, culture-guided adjustment. Duration based on response.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000014-0000-0000-0000-000000000014', 'a0000004-0000-0000-0000-000000000004',
 'Smoking cessation in diabetic patients with foot complications is important because:',
 'No relation to foot health', 'Smoking worsens PAD and impairs wound healing', 'Smoking improves circulation', 'Only cosmetic concern', 'Affects only respiratory health',
 'B', 'Smoking cessation critical: smoking accelerates PAD, impairs wound healing, increases amputation risk. Essential component of diabetic foot and cardiovascular risk management.', 'easy', 'knowledge');
