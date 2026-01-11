-- ============================================================================
-- SURGERY 3 CME ARTICLE 86: Hand Surgery Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000152-0000-0000-0000-000000000152', 'a0000003-0000-0000-0000-000000000003', 'Hand Surgery Principles', 'Evaluation and management of hand injuries and conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000386-0000-0000-0000-000000000086',
    'c0000152-0000-0000-0000-000000000152',
    'a0000003-0000-0000-0000-000000000003',
    'Hand Surgery: Assessment and Management',
    'Clinical Approach to Hand Injuries',
    'This article covers hand anatomy, tendon injuries, nerve injuries, fractures, infections, Dupuytren contracture, carpal tunnel syndrome, trigger finger, and principles of hand rehabilitation.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000386-0001-0000-0000-000000000001', 'd0000386-0000-0000-0000-000000000086', 1,
'Flexor tendon injuries in zone 2 are challenging because:',
'There are no tendons in this zone', 'Both FDS and FDP tendons pass through the fibro-osseous tunnel, making repair technically difficult with high risk of adhesions', 'Only one tendon is present', 'It is above the wrist',
'B', 'ZONE 2 ("no man''s land"): from A1 pulley (MCP crease) to FDS insertion (middle phalanx). BOTH FDS and FDP tendons pass through narrow FIBRO-OSSEOUS TUNNEL with pulley system. CHALLENGES: tight space, both tendons glide independently, pulley system must be preserved for function, high risk of ADHESION formation. Treatment: primary repair within 2 weeks, repair both tendons, preserve A2 and A4 pulleys, early protected motion protocols. Zones: 1 (FDP only), 2 (both), 3 (palm), 4 (carpal tunnel), 5 (forearm).', 'medium'),

('e0000386-0002-0000-0000-000000000002', 'd0000386-0000-0000-0000-000000000086', 2,
'The median nerve in the hand:',
'Provides motor to all intrinsics', 'Provides motor to thenar muscles (LOAF: Lumbricals 1-2, Opponens pollicis, Abductor pollicis brevis, Flexor pollicis brevis) and sensation to radial 3.5 digits', 'Has no sensory function', 'Only supplies the little finger',
'B', 'MEDIAN NERVE in hand: enters via carpal tunnel. MOTOR: LOAF muscles - Lumbricals (1st and 2nd), Opponens pollicis, Abductor pollicis brevis, Flexor pollicis brevis (superficial head). SENSORY: palmar surface of radial 3.5 digits (thumb, index, middle, radial half ring), dorsal fingertips of same. Recurrent motor branch vulnerable in carpal tunnel surgery. High median nerve injury: loss of forearm pronation, wrist/finger flexion (lateral), thumb opposition. Carpal tunnel syndrome = compression at wrist.', 'easy'),

('e0000386-0003-0000-0000-000000000003', 'd0000386-0000-0000-0000-000000000086', 3,
'A mallet finger injury is:',
'Fracture of the proximal phalanx', 'Disruption of the terminal extensor tendon at the DIP joint causing a flexion deformity; treated with continuous extension splinting for 6-8 weeks', 'Dislocation of the MCP joint', 'Carpal tunnel syndrome',
'B', 'MALLET FINGER: disruption of terminal extensor tendon insertion at distal phalanx (DIP joint). MECHANISM: forced flexion of extended finger (ball striking fingertip). PRESENTATION: DIP flexion, unable to actively extend DIP. TYPES: tendinous (tendon rupture) or bony (avulsion fracture). TREATMENT: CONTINUOUS extension splinting of DIP for 6-8 weeks (even 24/7 - if splint removed and DIP flexes, restart clock). Surgery if: >50% articular surface involved, palmar subluxation, failed conservative. Untreated: swan neck deformity.', 'easy'),

('e0000386-0004-0000-0000-000000000004', 'd0000386-0000-0000-0000-000000000086', 4,
'Felon (pulp space infection) is best treated by:',
'Oral antibiotics alone', 'Incision and drainage using a midlateral or volar longitudinal approach, avoiding the pincer grip area', 'Observation only', 'Amputation',
'B', 'FELON: closed space infection of fingertip pulp. ANATOMY: pulp has fibrous septa connecting skin to periosteum, creating multiple closed compartments. ORGANISMS: Staph aureus most common. PRESENTATION: severe throbbing pain, tense swelling of fingertip pulp. TREATMENT: INCISION AND DRAINAGE - midlateral approach (preserves pincer grip sensation) or volar longitudinal (central or radial to avoid ulnar digital nerve). Break up septae. Antibiotics adjunct. COMPLICATIONS if untreated: osteomyelitis of distal phalanx, flexor tenosynovitis, tissue necrosis.', 'easy'),

('e0000386-0005-0000-0000-000000000005', 'd0000386-0000-0000-0000-000000000086', 5,
'Kanavel signs for flexor tenosynovitis include:',
'Swelling over the dorsum only', 'Fusiform swelling, finger held in flexion, tenderness along flexor sheath, and pain with passive extension', 'Mallet deformity', 'Trigger finger',
'B', 'KANAVEL SIGNS (flexor tenosynovitis - pyogenic): (1) FUSIFORM (uniform) SWELLING of finger; (2) Finger held in slight FLEXION at rest; (3) TENDERNESS along FLEXOR TENDON SHEATH; (4) PAIN with PASSIVE EXTENSION (most reliable). ETIOLOGY: penetrating trauma, spread from adjacent infection. ORGANISMS: Staph aureus. EMERGENCY: can destroy tendon within 24-48 hours. TREATMENT: surgical irrigation/drainage (open or closed catheter), IV antibiotics. Horseshoe abscess: infection spreading between thumb and little finger via radial/ulnar bursae connection.', 'easy'),

('e0000386-0006-0000-0000-000000000006', 'd0000386-0000-0000-0000-000000000086', 6,
'Dupuytren contracture:',
'Is a malignant tumor', 'Is a fibroproliferative disorder of the palmar fascia causing progressive flexion contracture, most commonly affecting ring and little fingers', 'Only affects women', 'Is caused by trauma alone',
'B', 'DUPUYTREN CONTRACTURE: fibroproliferative disorder of palmar fascia. EPIDEMIOLOGY: Northern European descent (Viking disease), males > females, older age. ASSOCIATIONS: diabetes, alcohol, smoking, epilepsy medications, HIV. PATHOLOGY: myofibroblast proliferation, collagen deposition, nodules and cords. PRESENTATION: painless nodules, then cords, then flexion CONTRACTURE (MCP > PIP), usually RING and LITTLE fingers. TREATMENT: observation if no contracture; intervention if: positive tabletop test, MCP >30 degrees, PIP >20 degrees. Options: needle aponeurotomy, collagenase injection, limited fasciectomy.', 'medium'),

('e0000386-0007-0000-0000-000000000007', 'd0000386-0000-0000-0000-000000000086', 7,
'Carpal tunnel syndrome is characterized by:',
'Ulnar nerve compression', 'Median nerve compression at the wrist causing numbness in radial 3.5 digits, thenar weakness, and positive Phalen and Tinel tests', 'Radial nerve injury', 'Normal nerve function',
'B', 'CARPAL TUNNEL SYNDROME: MEDIAN nerve compression at wrist (carpal tunnel). SYMPTOMS: numbness/paresthesias in radial 3.5 digits (median distribution), worse at night, thenar weakness (late). EXAMINATION: Phalen test (wrist flexion reproduces symptoms), Tinel (percussion over carpal tunnel), thenar atrophy (late). EMG/NCS confirms diagnosis. CAUSES: idiopathic, pregnancy, diabetes, hypothyroidism, rheumatoid, repetitive use. TREATMENT: splinting (neutral wrist), NSAIDs, steroid injection; surgical release (open or endoscopic) if conservative fails.', 'easy'),

('e0000386-0008-0000-0000-000000000008', 'd0000386-0000-0000-0000-000000000086', 8,
'Trigger finger is caused by:',
'Tendon rupture', 'Stenosing tenosynovitis with thickening of the A1 pulley causing catching and locking of the finger during flexion/extension', 'Bone fracture', 'Nerve injury',
'B', 'TRIGGER FINGER (stenosing tenosynovitis): thickening of A1 PULLEY at MCP joint level, with nodular thickening of flexor tendon. MECHANISM: tendon nodule catches on pulley during motion, causing CATCHING or LOCKING. PRESENTATION: painful catching, clicking, locking in flexion (may need passive extension), nodule palpable at A1 pulley. ASSOCIATIONS: diabetes, rheumatoid, repetitive gripping. TREATMENT: splinting, steroid injection (effective in majority, can repeat), A1 pulley release (open or percutaneous). Trigger thumb common in children (congenital).', 'easy'),

('e0000386-0009-0000-0000-000000000009', 'd0000386-0000-0000-0000-000000000086', 9,
'Scaphoid fractures are significant because:',
'They always heal without treatment', 'Blood supply is predominantly distal to proximal, placing the proximal pole at risk for avascular necrosis', 'They never cause complications', 'They are visible on all X-rays immediately',
'B', 'SCAPHOID FRACTURES: most common carpal fracture. MECHANISM: fall on outstretched hand (FOOSH). BLOOD SUPPLY: enters DISTALLY, flows PROXIMALLY - makes PROXIMAL POLE vulnerable to AVN. PRESENTATION: anatomic snuffbox tenderness, scaphoid tubercle tenderness, pain with axial compression of thumb. IMAGING: X-rays may be negative initially (up to 2 weeks); if high suspicion, treat as fracture or get MRI/CT. TREATMENT: non-displaced - thumb spica cast 8-12 weeks; displaced/proximal - surgery (screw fixation). COMPLICATIONS: non-union, AVN, SNAC wrist (scaphoid nonunion advanced collapse).', 'medium'),

('e0000386-0010-0000-0000-000000000010', 'd0000386-0000-0000-0000-000000000086', 10,
'After flexor tendon repair, early protected motion is important because:',
'It causes tendon rupture', 'It reduces adhesion formation and improves tendon gliding, leading to better functional outcomes', 'It prevents all healing', 'Motion is harmful to repair',
'B', 'EARLY PROTECTED MOTION after flexor tendon repair: critical for outcomes. RATIONALE: (1) Reduces ADHESION formation (tendon glides through sheath); (2) Improves tendon STRENGTH (controlled stress stimulates healing); (3) Better RANGE OF MOTION outcomes. PROTOCOLS: Kleinert (rubber band dynamic extension splint, active extension, passive flexion), Duran (passive motion), or combinations. Protect for 6-12 weeks. Balance: too much motion = rupture; too little = adhesions. Contraindicated: unreliable patients, children, severe injury. Supervised hand therapy essential.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 86 (Hand Surgery Principles) with 10 self-assessment questions inserted' as status;
