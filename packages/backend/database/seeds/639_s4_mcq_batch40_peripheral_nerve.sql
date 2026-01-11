-- Surgery 4 MCQ Question Bank - Batch 40
-- Section G: Neurosurgery - Peripheral Nerve Surgery
-- 40 Questions

-- Topic: Peripheral Nerve Surgery
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000040-0000-0000-0000-000000000040', 'Peripheral Nerve Surgery', 'a0000004-0000-0000-0000-000000000004', 'Peripheral nerve injuries, entrapment syndromes, and nerve repair', 40, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Peripheral nerves are composed of:',
 'Only axons', 'Axons myelin Schwann cells and connective tissue layers', 'Only myelin', 'Neurons only', 'Glial cells only',
 'B', 'Peripheral nerve structure: axons (myelinated and unmyelinated), Schwann cells (myelin), connective tissue (endoneurium around fibers, perineurium around fascicles, epineurium around nerve). Understanding anatomy crucial for repair.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'The three connective tissue layers of a peripheral nerve from innermost to outermost are:',
 'Epineurium, perineurium, endoneurium', 'Endoneurium perineurium and epineurium', 'Mesoneurium only', 'Dura, arachnoid, pia', 'No connective tissue',
 'B', 'Nerve connective tissue: endoneurium (around individual axons/fibers), perineurium (around fascicles - important barrier), epineurium (around whole nerve, internal and external). Critical for surgical repair decisions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Seddon classification of nerve injuries includes:',
 'Only one type', 'Neurapraxia axonotmesis and neurotmesis', 'Grade I to V only', 'Mild and severe only', 'Complete and incomplete',
 'B', 'Seddon classification: neurapraxia (conduction block, no axonal damage), axonotmesis (axon damaged, connective tissue intact), neurotmesis (complete disruption). Predicts recovery: neurapraxia best, neurotmesis needs surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Neurapraxia is characterized by:',
 'Complete nerve transection', 'Local conduction block with intact axons and full recovery expected', 'Axon disruption', 'No recovery', 'Requires surgery',
 'B', 'Neurapraxia (Sunderland 1st degree): local demyelination/conduction block. No Wallerian degeneration. Axons intact. Complete recovery expected within days to 12 weeks. Caused by compression, stretch. No surgical treatment needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Axonotmesis involves:',
 'Only myelin damage', 'Axon damage with intact endoneurial tubes allowing guided regeneration', 'Complete nerve transection', 'Perineurium damage', 'No regeneration',
 'B', 'Axonotmesis (Sunderland 2nd degree): axon disruption, Wallerian degeneration. Endoneurial tubes intact - guide regeneration to correct targets. Good recovery expected without surgery. Rate ~1 mm/day or 1 inch/month.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Neurotmesis refers to:',
 'Mild injury', 'Complete disruption of the nerve requiring surgical repair', 'Conduction block only', 'Always recovers spontaneously', 'Only affects motor function',
 'B', 'Neurotmesis (Sunderland 4th-5th degree): complete nerve disruption. Loss of continuity. No spontaneous recovery to useful function. Requires surgical repair (primary repair or nerve graft). Worst prognosis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Sunderland classification expands on Seddon by adding:',
 'Same classifications', 'Five degrees of injury with varying connective tissue involvement', 'Only two categories', 'Ten grades', 'No prognostic value',
 'B', 'Sunderland: 1st (neurapraxia), 2nd (axon only), 3rd (endoneurium damaged), 4th (perineurium damaged), 5th (neurotmesis). Higher grades have worse prognosis. 6th degree (Mackinnon) - mixed injury pattern.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Wallerian degeneration refers to:',
 'Regeneration process', 'Degeneration of the axon and myelin distal to injury site', 'Proximal nerve death', 'No degeneration', 'Only myelin changes',
 'B', 'Wallerian degeneration: after axon transection, distal segment degenerates. Myelin breaks down, Schwann cells proliferate, macrophages clear debris. Creates environment for regeneration. Begins within hours, completes over weeks.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Nerve regeneration occurs at a rate of approximately:',
 '1 cm per day', '1 mm per day or about 1 inch per month', '1 meter per month', '1 cm per week', 'No regeneration possible',
 'B', 'Nerve regeneration rate: ~1-3 mm/day or about 1 inch/month. Depends on age, injury level, nerve type. Proximal injuries have longer regeneration distance. Muscle denervation >18-24 months has poor recovery (motor end plate degeneration).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'The Tinel sign is:',
 'A muscle test', 'Tingling elicited by percussion over regenerating nerve at point of regeneration', 'Sensory loss test', 'Motor strength test', 'Reflex test',
 'B', 'Tinel sign: percussion over nerve produces tingling in distribution. Advancing Tinel (distally moving) indicates nerve regeneration. Stationary Tinel suggests neuroma or failed regeneration. Used to track recovery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Carpal tunnel syndrome is caused by compression of the:',
 'Ulnar nerve', 'Median nerve at the wrist', 'Radial nerve', 'Axillary nerve', 'Musculocutaneous nerve',
 'B', 'Carpal tunnel syndrome: median nerve compression under transverse carpal ligament. Most common entrapment neuropathy. Symptoms: hand pain/numbness (thumb, index, middle, radial half of ring finger), thenar weakness.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Symptoms of carpal tunnel syndrome include:',
 'Pinky numbness', 'Numbness in thumb index and middle fingers with nocturnal symptoms', 'Only motor weakness', 'Elbow pain', 'Shoulder weakness',
 'B', 'CTS symptoms: numbness/paresthesias in median nerve distribution (thumb, index, middle, radial ring finger). Worse at night, with prolonged wrist positions. Shaking hand improves (flick sign). Later: thenar atrophy, weakness of thumb opposition.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'The Phalen test for carpal tunnel syndrome involves:',
 'Percussion of wrist', 'Wrist flexion for 60 seconds to reproduce symptoms', 'Elbow flexion', 'Finger extension', 'Shoulder abduction',
 'B', 'Phalen maneuver: wrist held in full flexion for 60 seconds. Positive if reproduces numbness/paresthesias in median nerve distribution. Sensitivity 70-80%. Reverse Phalen (extension) also used.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Diagnosis of carpal tunnel syndrome is confirmed by:',
 'X-ray', 'Nerve conduction studies and electromyography', 'CT scan', 'Blood tests', 'Clinical only',
 'B', 'CTS diagnosis: clinical + electrodiagnostic studies (NCS/EMG). NCS shows prolonged distal motor/sensory latency, reduced amplitude. EMG shows denervation of thenar muscles in severe cases. Ultrasound emerging for diagnosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Surgical treatment of carpal tunnel syndrome involves:',
 'Nerve grafting', 'Division of the transverse carpal ligament', 'Tendon transfer', 'Fusion', 'Amputation',
 'B', 'CTS surgery: carpal tunnel release - division of transverse carpal ligament (flexor retinaculum). Open or endoscopic approach. Decompresses median nerve. Indications: failed conservative treatment, thenar atrophy, severe NCS changes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Cubital tunnel syndrome involves compression of the:',
 'Median nerve', 'Ulnar nerve at the elbow', 'Radial nerve', 'Sciatic nerve', 'Tibial nerve',
 'B', 'Cubital tunnel syndrome: ulnar nerve compression at elbow (behind medial epicondyle). Second most common upper extremity entrapment. Symptoms: paresthesias in ring/small fingers, intrinsic hand weakness, clawing (late).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Symptoms of cubital tunnel syndrome include:',
 'Thumb numbness', 'Numbness of small and ring fingers with intrinsic hand weakness', 'Wrist drop', 'Shoulder pain', 'Foot drop',
 'B', 'Cubital tunnel symptoms: paresthesias/numbness in ulnar 1.5 digits (small, ulnar ring finger). Intrinsic weakness (finger abduction/adduction, grip strength). Elbow flexion exacerbates. Late: claw hand, Wartenberg sign (abducted small finger).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Surgical options for cubital tunnel syndrome include:',
 'No surgical options', 'Simple decompression or anterior transposition of ulnar nerve', 'Only transposition', 'Carpal tunnel release', 'Shoulder surgery',
 'B', 'Cubital tunnel surgery: in situ decompression (release fascia/ligament), anterior transposition (subcutaneous, intramuscular, or submuscular), medial epicondylectomy. Transposition moves nerve anterior to epicondyle.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Radial nerve injury at the spiral groove causes:',
 'Hand numbness', 'Wrist drop and weakness of finger and thumb extension', 'Claw hand', 'Foot drop', 'Shoulder weakness',
 'B', 'Radial nerve - spiral groove injury: wrist drop, finger/thumb extension weakness (extensor compartment). Sensory loss: dorsal first web space. Common causes: humerus fracture, Saturday night palsy. Triceps usually spared (branches proximal).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Saturday night palsy refers to:',
 'Median nerve compression', 'Radial nerve compression from prolonged arm pressure such as sleeping over chair arm', 'Ulnar neuropathy', 'Sciatic injury', 'Facial palsy',
 'B', 'Saturday night palsy: radial nerve compression in spiral groove. Named for falling asleep intoxicated with arm over chair. Wrist drop, finger extension weakness. Usually neurapraxia, recovery expected weeks to months.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'High median nerve injury results in:',
 'Wrist drop', 'Loss of thumb opposition and flexion of thumb and index finger with ape hand deformity', 'Claw hand', 'Foot drop', 'Shoulder weakness',
 'B', 'High median nerve injury: loss of forearm pronation, wrist flexion (radial deviation), thumb opposition (thenar), finger flexion (index, middle FDP). Ape hand deformity - flattened thenar eminence, thumb in plane of palm.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'High ulnar nerve injury results in:',
 'Wrist drop', 'Claw hand deformity affecting ring and small fingers with intrinsic muscle weakness', 'Ape hand', 'Foot drop', 'Wrist extension loss',
 'B', 'High ulnar nerve injury: loss of intrinsics (interossei, lumbricals 3-4), hypothenar muscles, FCU, FDP to ring/small. Claw hand (MCP hyperextension, IP flexion of ring/small). Wartenberg sign. Froment sign (compensatory thumb flexion).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'The ulnar paradox refers to:',
 'Severe clawing with high injury', 'Less severe clawing with high ulnar nerve injury due to FDP denervation', 'No clawing ever', 'Complete paralysis', 'Normal function',
 'B', 'Ulnar paradox: high ulnar injury causes LESS clawing than low injury. Because FDP to ring/small also denervated - cannot flex IP joints. Low injury spares FDP, allowing IP flexion which worsens claw appearance.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Brachial plexus is formed by:',
 'Cervical nerves only', 'Ventral rami of C5 to T1', 'Thoracic nerves only', 'Lumbar plexus', 'Sacral plexus',
 'B', 'Brachial plexus: C5-T1 ventral rami. Forms trunks (upper C5-6, middle C7, lower C8-T1), divisions (anterior, posterior), cords (lateral, posterior, medial), branches. Complex anatomy important for injury localization.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Erb-Duchenne palsy involves injury to:',
 'Lower brachial plexus', 'Upper brachial plexus C5-C6 causing waiter tip position', 'All of brachial plexus', 'Lumbar plexus', 'Individual nerves only',
 'B', 'Erb-Duchenne palsy: upper brachial plexus (C5-C6). Causes: birth injury (shoulder dystocia), trauma. Waiter tip position: arm adducted, internally rotated, elbow extended, forearm pronated. Shoulder abduction, elbow flexion weak.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Klumpke palsy involves injury to:',
 'Upper brachial plexus', 'Lower brachial plexus C8-T1 affecting hand muscles', 'Middle trunk', 'All cords', 'Lumbosacral plexus',
 'B', 'Klumpke palsy: lower brachial plexus (C8-T1). Intrinsic hand weakness, claw hand. Causes: birth injury (arm traction), trauma. May have Horner syndrome if T1 sympathetic fibers involved. Less common than Erb.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Horner syndrome associated with brachial plexus injury indicates:',
 'Good prognosis', 'Involvement of T1 nerve root suggesting preganglionic injury', 'No root avulsion', 'Distal injury only', 'Only postganglionic injury',
 'B', 'Horner with brachial plexus injury: suggests T1 root avulsion (preganglionic). Preganglionic injuries have worse prognosis - cannot repair at root level. Horner: ptosis, miosis, anhidrosis. Indicates severe injury pattern.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Direct nerve repair (neurorrhaphy) is preferred when:',
 'Always', 'Tension-free coaptation can be achieved', 'With large gaps', 'Never in acute injuries', 'Only for sensory nerves',
 'B', 'Primary nerve repair: ideal when clean transection, minimal gap, tension-free anastomosis. End-to-end epineurial or fascicular repair. Tension impairs healing. If gap present, nerve graft preferred over repair under tension.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Nerve grafting is indicated when:',
 'All injuries', 'Gap prevents tension-free primary repair', 'Tension is acceptable', 'Only for motor nerves', 'Never indicated',
 'B', 'Nerve grafting: bridges gap when primary repair would be under tension. Autograft (sural nerve donor) gold standard. Cable grafts for larger nerves. Conduits for small gaps. Allografts emerging option.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'The most common donor nerve for autograft is the:',
 'Median nerve', 'Sural nerve', 'Ulnar nerve', 'Radial nerve', 'Femoral nerve',
 'B', 'Sural nerve graft: most common donor. Sensory nerve from posterior calf, easy harvest, acceptable morbidity (lateral foot numbness). Provides significant length. Other donors: medial antebrachial cutaneous, lateral femoral cutaneous.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Nerve conduits are indicated for:',
 'Large gaps over 3 cm', 'Short gaps typically less than 3 cm in sensory nerves', 'All nerve injuries', 'Mixed nerve gaps over 5 cm', 'Never used',
 'B', 'Nerve conduits: tubular guides for nerve regeneration. Best for short gaps (<3 cm) in sensory/digital nerves. Materials: collagen, synthetic. Allow regeneration without harvest morbidity. Less effective for large gaps/motor nerves.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Nerve transfer involves:',
 'Grafting from leg', 'Sacrificing a functioning nerve to reinnervate a more important denervated target', 'Moving nerve from one limb to another', 'Skin grafting', 'Tendon transfer',
 'B', 'Nerve transfer: transfer expendable functioning nerve to denervated muscle. Reinnervates target faster (shorter regeneration distance). Examples: Oberlin transfer (ulnar fascicle to biceps for C5-6 injury). Distal transfers popular.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Advantages of nerve transfers over nerve grafting include:',
 'No advantages', 'Shorter reinnervation distance and time to motor recovery', 'Less surgical skill needed', 'No donor morbidity', 'Always superior',
 'B', 'Nerve transfer advantages: shorter regeneration distance (transfer done near target), faster motor recovery, single repair site (vs two coaptations with graft), useful when proximal nerve unavailable (root avulsion).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Thoracic outlet syndrome can involve compression of:',
 'Only artery', 'Brachial plexus and/or subclavian vessels', 'Spinal cord', 'Carotid artery', 'Femoral vessels',
 'B', 'Thoracic outlet syndrome: compression of brachial plexus and/or subclavian artery/vein. At thoracic outlet (scalene muscles, clavicle, first rib). Neurogenic (most common), arterial, venous types. Symptoms vary by structure compressed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Neurogenic thoracic outlet syndrome most commonly affects:',
 'Upper trunk', 'Lower trunk C8-T1 with medial arm and hand symptoms', 'All trunks equally', 'Only arteries', 'Only veins',
 'B', 'Neurogenic TOS: lower trunk (C8-T1) most commonly affected. Medial forearm/hand numbness, intrinsic hand weakness, pain. Controversial diagnosis. Disputed vs true neurogenic (with objective findings). Treatment: PT, surgery if severe.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Meralgia paresthetica is caused by compression of the:',
 'Sciatic nerve', 'Lateral femoral cutaneous nerve', 'Femoral nerve', 'Obturator nerve', 'Tibial nerve',
 'B', 'Meralgia paresthetica: lateral femoral cutaneous nerve (purely sensory) compression. At inguinal ligament. Causes lateral thigh numbness/burning. Risk factors: obesity, tight clothing, pregnancy. Conservative treatment usually effective.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Piriformis syndrome involves compression of the:',
 'Femoral nerve', 'Sciatic nerve by the piriformis muscle', 'Obturator nerve', 'Tibial nerve', 'Peroneal nerve',
 'B', 'Piriformis syndrome: sciatic nerve compression/irritation by piriformis muscle in buttock. Symptoms similar to sciatica. Controversial diagnosis. Pain with prolonged sitting, hip external rotation. Treatment: PT, injections, rarely surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'Common peroneal nerve palsy at fibular head causes:',
 'Claw hand', 'Foot drop with weakness of ankle dorsiflexion and eversion', 'Knee weakness', 'Hip flexion weakness', 'Wrist drop',
 'B', 'Common peroneal nerve palsy: foot drop (weak ankle dorsiflexion, toe extension), weak eversion. Sensory loss: lateral leg, dorsum of foot. Causes: fibular head compression (crossing legs, casts), trauma. Often neurapraxia with good recovery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000040-0000-0000-0000-000000000040', 'a0000004-0000-0000-0000-000000000004',
 'The timing window for nerve repair to achieve optimal motor recovery is:',
 'Any time', 'Within 3 to 6 months ideally with motor endplates viable for up to 18 months', 'Only immediate repair', 'Up to 5 years', '2 years minimum delay',
 'B', 'Nerve repair timing: motor end plates degenerate over time without innervation. Optimal repair within 3-6 months. Motor recovery unlikely if >18-24 months. Sensory nerves have longer window. Prompt diagnosis and treatment crucial.', 'hard', 'knowledge');
