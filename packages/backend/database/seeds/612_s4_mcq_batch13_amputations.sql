-- Surgery 4 MCQ Question Bank - Batch 13
-- Section A: Vascular Surgery - Amputations
-- 40 Questions

-- Topic: Amputations
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000013-0000-0000-0000-000000000013', 'Amputations', 'a0000004-0000-0000-0000-000000000004', 'Principles and levels of lower and upper limb amputations', 13, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'The most common indication for lower limb amputation is:',
 'Trauma', 'Peripheral vascular disease and diabetes', 'Malignancy', 'Infection', 'Congenital deformity',
 'B', 'PVD and diabetes account for 80-90% of lower limb amputations. Diabetes is single most common cause. Other causes: trauma, malignancy, infection, congenital.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'The principle of selecting amputation level is based on:',
 'Cosmetic outcome only', 'Maximum preservation of length with adequate healing potential', 'Always at the most proximal level', 'Patient preference alone', 'Surgeon convenience',
 'B', 'Amputation level: preserve maximum functional length while ensuring adequate perfusion for healing. Balance between wound healing and prosthetic rehabilitation potential.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Transmetatarsal amputation (TMA) is performed at:',
 'Ankle joint', 'Midfoot through metatarsal shafts', 'Knee joint', 'Toe base only', 'Thigh level',
 'B', 'TMA: amputation through metatarsal shafts. Preserves ankle/heel function. Requires good perfusion to midfoot. May need Achilles lengthening to prevent equinus deformity.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'The Syme amputation is performed at:',
 'Above knee', 'Below knee', 'Ankle level with heel pad preservation', 'Transmetatarsal', 'Hip disarticulation',
 'C', 'Syme amputation: through ankle joint with preservation of heel pad for weight bearing. Allows limited ambulation without prosthesis. Requires adequate heel pad perfusion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Below knee amputation (transtibial) is preferred over above knee because:',
 'Faster surgery', 'Better prosthetic rehabilitation and lower energy expenditure', 'Less blood loss', 'Simpler wound care', 'Always heals better',
 'B', 'BKA advantages: preserves knee joint for prosthetic use, lower energy expenditure for ambulation (40% increase vs 60-100% for AKA), better rehabilitation outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Optimal tibial length for below knee amputation is:',
 '5 cm', '12-15 cm below knee joint', '25 cm', 'As short as possible', 'Full tibial length',
 'B', 'Optimal BKA length: 12-15 cm below knee joint (junction of upper and middle third of tibia). Provides good prosthetic lever arm. Too short = poor prosthetic control, too long = wound healing issues.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'The posterior myocutaneous flap for BKA uses:',
 'Anterior skin only', 'Long posterior flap based on gastrocnemius', 'Equal anterior and posterior flaps', 'Side flaps only', 'No skin flap',
 'B', 'Long posterior flap (Burgess): utilizes gastrocnemius muscle and posterior skin for coverage. Better blood supply than anterior skin. Most commonly used technique.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Above knee amputation (transfemoral) is indicated when:',
 'All elderly patients', 'BKA cannot heal or fixed knee flexion contracture prevents prosthetic use', 'Patient is young', 'Only for trauma', 'Only for malignancy',
 'B', 'AKA indications: BKA unlikely to heal (inadequate perfusion), fixed knee flexion contracture >15-20 degrees, extensive tissue loss, non-ambulatory patient with limited rehabilitation potential.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Optimal femoral length for above knee amputation is:',
 '5 cm from hip', '10-12 cm above knee joint', 'As short as possible', 'At the knee joint', 'Full femoral length',
 'B', 'Optimal AKA: 10-12 cm above knee joint (leaves adequate lever arm for prosthetic control). Minimum 8 cm from perineum needed for sitting. Equal anterior-posterior flaps typically used.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Knee disarticulation amputation advantages include:',
 'Better cosmesis', 'End-bearing stump and long lever arm', 'Faster wound healing', 'Lower energy expenditure than BKA', 'Easier surgery',
 'B', 'Knee disarticulation: end-bearing stump (femoral condyles), long lever arm, easier prosthetic suspension, no muscle transection. Disadvantages: bulky knee mechanism, cosmetic concerns.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Hip disarticulation is indicated for:',
 'All vascular patients', 'Extensive proximal thigh involvement by tumor or infection', 'Routine peripheral vascular disease', 'First choice in elderly', 'Minor trauma',
 'B', 'Hip disarticulation: reserved for extensive proximal thigh disease (tumor, infection), failed AKA, extensive trauma. Very high energy expenditure for ambulation. Rarely done for PVD alone.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Digital amputation of the toe should:',
 'Always include metatarsal head', 'Preserve metatarsal head if viable', 'Remove entire metatarsal', 'Include midfoot', 'Include all adjacent toes',
 'B', 'Digital amputation: preserve metatarsal head if viable to maintain foot architecture and weight distribution. Ray amputation (include metatarsal head) if metatarsal involvement or better wound closure.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Ray amputation involves:',
 'Toe only', 'Toe plus corresponding metatarsal', 'Entire forefoot', 'Ankle joint', 'Midfoot only',
 'B', 'Ray amputation: removal of toe plus entire or partial corresponding metatarsal. First ray most functionally significant. Central rays may be removed without major gait disturbance.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Chopart amputation is at the level of:',
 'Ankle joint', 'Talonavicular and calcaneocuboid joints (midtarsal)', 'Metatarsophalangeal joints', 'Lisfranc joint', 'Subtalar joint',
 'B', 'Chopart amputation: through midtarsal joint (talonavicular and calcaneocuboid). Preserves talus and calcaneus. Prone to equinovarus deformity, requires Achilles lengthening or tenotomy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Lisfranc amputation is at:',
 'Tarsometatarsal joints', 'Ankle joint', 'Midtarsal joints', 'Toe level', 'Subtalar joint',
 'A', 'Lisfranc amputation: through tarsometatarsal joints. Preserves entire hindfoot. Prone to equinus deformity. Requires tendo-Achilles lengthening. Better function than Chopart.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Assessment of amputation healing potential includes:',
 'Visual inspection only', 'Clinical assessment transcutaneous oxygen measurement and skin perfusion pressure', 'X-ray only', 'Blood glucose only', 'Patient age only',
 'B', 'Healing assessment: clinical (warmth, hair, pulses, bleeding), TcPO2 (>30-40 mmHg favorable), skin perfusion pressure (>30 mmHg), ABI, angiography. Multiple factors considered.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Transcutaneous oxygen tension (TcPO2) greater than 40 mmHg at amputation level indicates:',
 'Poor healing potential', 'Good healing potential', 'Need for more proximal amputation', 'Infection', 'Gangrene',
 'B', 'TcPO2 >40 mmHg: high probability of healing. 30-40 mmHg: healing possible. <30 mmHg: poor healing potential, consider revascularization or more proximal level.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Phantom limb sensation is:',
 'Always painful', 'Non-painful awareness of the missing limb', 'Sign of wound infection', 'Psychiatric disorder', 'Never occurs',
 'B', 'Phantom sensation: non-painful awareness of amputated limb. Experienced by most amputees. Distinct from phantom pain. Usually diminishes over time but may persist.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Phantom limb pain affects approximately:',
 '5 percent of amputees', '25 percent of amputees', '50-80 percent of amputees', 'All amputees', 'No amputees',
 'C', 'Phantom pain affects 50-80% of amputees at some point. More common with traumatic amputation, pre-amputation pain. Complex pathophysiology involving peripheral and central mechanisms.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of phantom limb pain includes:',
 'Re-amputation always', 'Multimodal approach with medications mirror therapy and TENS', 'Observation only', 'Ignoring the pain', 'Amputation revision always',
 'B', 'Phantom pain treatment: multimodal (gabapentin, pregabalin, TCAs, opioids, mirror therapy, TENS, desensitization, psychological support). Prevention with perioperative epidural may help.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Stump pain differs from phantom pain in that it:',
 'Is felt in the missing limb', 'Is located at the residual limb and may indicate local pathology', 'Never requires treatment', 'Is always psychological', 'Never occurs',
 'B', 'Stump pain: pain in residual limb. Causes: neuroma, bone spur, infection, ischemia, poor prosthetic fit, skin breakdown. Requires examination for treatable causes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Neuroma formation at amputation site is best prevented by:',
 'Ignoring the nerve', 'Clean transection and allowing nerve to retract into soft tissue away from pressure', 'Cauterizing nerve ends', 'Leaving nerves long', 'No prevention possible',
 'B', 'Neuroma prevention: identify nerves, apply gentle traction, sharply transect to allow retraction into soft tissue away from scar and weight-bearing areas. Epineural ligation described.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Wound complications after amputation are most commonly caused by:',
 'Technical error only', 'Inadequate tissue perfusion', 'Patient non-compliance only', 'Suture material', 'Antibiotic use',
 'B', 'Wound complications (dehiscence, infection, non-healing): most commonly due to inadequate perfusion at selected level. Other factors: diabetes, infection, malnutrition, technique.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Rigid dressing after BKA provides:',
 'No benefit', 'Edema control stump protection and early prosthetic fitting', 'Increased infection risk', 'Poor wound visualization', 'Delayed healing',
 'B', 'Rigid dressing advantages: edema control, stump protection from trauma, prevents knee flexion contracture, allows earlier prosthetic fitting. Disadvantage: limits wound inspection.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Knee flexion contracture after BKA is prevented by:',
 'Pillow under knee', 'Avoiding pillow under knee keeping knee extended and early mobilization', 'Bed rest only', 'Wheelchair positioning', 'Ignoring positioning',
 'B', 'Prevent knee flexion contracture: no pillow under knee, keep knee extended, prone positioning, early mobilization/PT. Contracture limits prosthetic fitting and function.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Hip flexion contracture after AKA is prevented by:',
 'Sitting for prolonged periods', 'Prone lying and hip extension exercises', 'Wheelchair only', 'Pillow between legs', 'Ignoring positioning',
 'B', 'Prevent hip flexion contracture: avoid prolonged sitting/wheelchair, prone lying periods, hip extension exercises. Contracture limits prosthetic alignment and gait efficiency.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Energy expenditure for ambulation with AKA prosthesis compared to normal is increased by:',
 '10 percent', '25 percent', '60-100 percent', '200 percent', 'No increase',
 'C', 'Energy expenditure increase: BKA 40-60%, AKA 60-100%, bilateral BKA 60-100%, bilateral AKA 200%+ (many cannot ambulate). Affects rehabilitation potential especially in elderly/comorbid.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Guillotine amputation is performed for:',
 'Elective amputation', 'Emergency situation with severe infection requiring later revision', 'All traumatic amputations', 'Cosmetic purposes', 'Prosthetic fitting',
 'B', 'Guillotine (open) amputation: emergency for severe infection, uncontrolled sepsis. No flaps, wound left open. Requires subsequent revision to definitive amputation level after infection control.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'The 5-year mortality rate after major lower extremity amputation is approximately:',
 '10 percent', '30 percent', '50-70 percent', '90 percent', '5 percent',
 'C', ' 5-year mortality after major LE amputation: 50-70% (often quoted ~50% for BKA, higher for AKA). Reflects underlying cardiovascular disease burden. Higher than many cancers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Contralateral limb amputation risk within 5 years after unilateral amputation is:',
 '5 percent', '15 percent', '30-50 percent', '75 percent', '100 percent',
 'C', 'Contralateral amputation risk: 30-50% within 5 years of initial amputation in diabetic/PVD patients. Emphasizes importance of aggressive risk factor modification and foot care.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Upper limb amputation indications include all EXCEPT:',
 'Severe trauma', 'Malignancy', 'Chronic pain syndrome without tissue loss', 'Severe infection', 'Ischemia',
 'C', 'Upper limb amputation: trauma (most common), tumor, infection, vascular (rare). Chronic pain without tissue pathology is not indication. Upper limb sensation very important - function emphasized.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'For upper extremity amputation stump length preservation is important because:',
 'Cosmetic reasons only', 'Length correlates with function and prosthetic options', 'It is not important', 'Insurance purposes', 'Patient preference only',
 'B', 'Upper limb: preserve maximum length - each level lost reduces function. Longer stump = better prosthetic control. Elbow preservation particularly important for bimanual function.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Finger amputation through the proximal phalanx is preferred over disarticulation because:',
 'Faster healing', 'Avoids visible joint prominence and allows better flap coverage', 'Less painful', 'No specific reason', 'Cosmetic purposes only',
 'B', 'Finger amputation through bone (transphalangeal) vs disarticulation: avoids bulbous stump from cartilage, better soft tissue coverage. Exception: thumb - preserve maximum length.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic amputation with limb replantation is most successful for:',
 'Crush injuries', 'Sharp clean amputations with short ischemia time', 'Avulsion injuries', 'Injuries in elderly', 'Severely contaminated wounds',
 'B', 'Replantation success factors: clean/sharp amputation, short ischemia time (<6 hours warm, longer cold), younger patient, single digit guillotine, thumb/multiple digits priority.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Preservation of amputated part for replantation involves:',
 'Direct contact with ice', 'Wrapping in saline-moistened gauze in sealed bag placed on ice', 'Dry storage at room temperature', 'Freezing the part', 'Submersion in alcohol',
 'B', 'Amputated part preservation: wrap in saline-moistened gauze, place in sealed plastic bag, place bag on ice. Do NOT freeze or place directly on ice. Do NOT use dry ice.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'Contraindications to replantation include:',
 'Sharp amputation', 'Severe crush avulsion multilevel injury or prolonged warm ischemia', 'Young age', 'Single digit in adult', 'Clean wound',
 'B', 'Replantation contraindications: severe crush/avulsion, multilevel injury, prolonged ischemia, severe contamination, associated life-threatening injuries, psychologically impaired patient.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000013-0000-0000-0000-000000000013', 'a0000004-0000-0000-0000-000000000004',
 'The krukenberg procedure converts:',
 'BKA to end bearing stump', 'Forearm stump into a pincer by separating radius and ulna', 'AKA to shorter level', 'Finger stump to functional unit', 'Hand to foot',
 'B', 'Krukenberg procedure: creates radial-ulnar pincer from below-elbow amputation stump. Provides sensate prehension without prosthesis. Useful in bilateral amputees, especially in developing countries.', 'hard', 'knowledge');
