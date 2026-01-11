-- ============================================================================
-- SURGERY 3 CME ARTICLE 22: Orthopedic Surgery Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000088-0000-0000-0000-000000000088', 'a0000003-0000-0000-0000-000000000003', 'Orthopedic Principles', 'Fracture management and musculoskeletal conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000322-0000-0000-0000-000000000022',
    'c0000088-0000-0000-0000-000000000088',
    'a0000003-0000-0000-0000-000000000003',
    'Orthopedic Surgery: Fracture Principles and Common Conditions',
    'Fracture Classification, Healing and Management',
    'This article covers fracture description and classification, bone healing physiology, principles of fracture fixation, compartment syndrome, open fractures, common fracture patterns, and orthopedic emergencies.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000322-0001-0000-0000-000000000001', 'd0000322-0000-0000-0000-000000000022', 1,
'A fracture description should include:',
'Only the bone involved', 'Location, pattern, displacement, angulation, open/closed, and associated injuries', 'Only whether it is open or closed', 'Only the mechanism of injury', NULL,
'B', 'Complete fracture description: bone and location (proximal, mid-shaft, distal), pattern (transverse, oblique, spiral, comminuted, segmental), displacement (none, partial, complete), angulation (direction of apex), rotation, shortening, open vs closed, associated injuries. Example: "Closed, displaced, mid-shaft transverse fracture of the right femur with 30° apex-lateral angulation."', 'easy'),

('e0000322-0002-0000-0000-000000000002', 'd0000322-0000-0000-0000-000000000022', 2,
'The stages of bone healing in order are:',
'Remodeling, callus formation, inflammation, repair', 'Inflammation (hematoma), soft callus, hard callus, remodeling', 'Hard callus, soft callus, remodeling, inflammation', 'Only primary bone healing occurs', NULL,
'B', 'Secondary bone healing (most common): (1) Inflammation/Hematoma (days 1-7) - fracture hematoma, inflammatory cells, angiogenesis; (2) Soft callus (weeks 2-3) - cartilaginous callus, fibrous tissue; (3) Hard callus (weeks 3-12) - woven bone replaces cartilage (endochondral ossification); (4) Remodeling (months to years) - woven bone replaced by lamellar bone. Primary bone healing occurs with rigid fixation (no callus).', 'easy'),

('e0000322-0003-0000-0000-000000000003', 'd0000322-0000-0000-0000-000000000022', 3,
'Compartment syndrome occurs when:',
'Blood pressure drops below 90 mmHg', 'Pressure within a closed fascial compartment rises, compromising tissue perfusion', 'Only in open fractures', 'Bone fails to heal', NULL,
'B', 'Compartment syndrome: increased pressure within a closed fascial compartment impairs capillary perfusion, causing muscle and nerve ischemia. The 6 Ps: Pain (especially passive stretch - earliest), Pressure (tense compartment), Paresthesias, Paralysis, Pulselessness, Pallor (late - irreversible damage). Compartment pressure >30 mmHg or within 30 mmHg of diastolic pressure indicates fasciotomy. Time-critical emergency.', 'easy'),

('e0000322-0004-0000-0000-000000000004', 'd0000322-0000-0000-0000-000000000022', 4,
'The Gustilo-Anderson classification for open fractures grades severity based on:',
'Patient age', 'Wound size, soft tissue injury, contamination, and fracture pattern', 'Only bone involved', 'Time to treatment', NULL,
'B', 'Gustilo-Anderson classification: Type I - wound <1cm, minimal contamination, low-energy; Type II - wound 1-10cm, moderate soft tissue damage; Type IIIA - >10cm wound or high-energy mechanism, adequate soft tissue coverage; Type IIIB - extensive soft tissue loss requiring flap coverage; Type IIIC - vascular injury requiring repair. Guides antibiotic selection, debridement, and coverage timing. Higher grade = worse prognosis.', 'medium'),

('e0000322-0005-0000-0000-000000000005', 'd0000322-0000-0000-0000-000000000022', 5,
'The initial management of an open fracture includes:',
'Immediate internal fixation', 'Wound irrigation, tetanus prophylaxis, IV antibiotics, splinting, and surgical debridement', 'Observation only', 'Cast application', NULL,
'B', 'Open fracture management: (1) Remove gross contamination, cover with saline-soaked sterile dressing; (2) Splint the fracture; (3) Tetanus prophylaxis; (4) IV antibiotics - first-generation cephalosporin for Type I-II, add aminoglycoside for Type III, add penicillin if barnyard/fecal contamination; (5) Surgical debridement and irrigation within 6-24 hours (timing controversial); (6) Stabilization (external fixation often first). Serial debridements as needed.', 'easy'),

('e0000322-0006-0000-0000-000000000006', 'd0000322-0000-0000-0000-000000000022', 6,
'A Colles fracture is:',
'A hip fracture', 'A distal radius fracture with dorsal displacement and angulation', 'A tibial plateau fracture', 'A vertebral compression fracture', NULL,
'B', 'Colles fracture: distal radius fracture with dorsal (posterior) displacement and angulation, creating "dinner fork" deformity. Mechanism: fall on outstretched hand (FOOSH) with wrist in extension. Common in osteoporotic patients. Smith fracture is the reverse (volar/palmar displacement). Treatment depends on stability and displacement: splinting, closed reduction and casting, or surgical fixation (plates, external fixation).', 'easy'),

('e0000322-0007-0000-0000-000000000007', 'd0000322-0000-0000-0000-000000000022', 7,
'The most common mechanism of hip fracture in elderly patients is:',
'High-energy motor vehicle accident', 'Low-energy fall from standing height (fragility fracture)', 'Sports injury', 'Penetrating trauma', NULL,
'B', 'Hip fractures in elderly are typically low-energy fragility fractures from falls, associated with osteoporosis. Classified as intracapsular (femoral neck - risk of AVN) or extracapsular (intertrochanteric, subtrochanteric). Treatment usually surgical: hemiarthroplasty or total hip for displaced femoral neck in elderly, internal fixation for stable/non-displaced or intertrochanteric. Goal: early mobilization to prevent complications (pneumonia, DVT, pressure sores).', 'easy'),

('e0000322-0008-0000-0000-000000000008', 'd0000322-0000-0000-0000-000000000022', 8,
'Avascular necrosis (AVN) is a significant risk in fractures of the:',
'Tibial shaft', 'Femoral neck, scaphoid, and talus', 'Clavicle', 'Ulnar shaft', NULL,
'B', 'AVN risk is high in bones with tenuous blood supply: Femoral head (neck fractures disrupt retinacular vessels), Scaphoid (proximal pole - blood enters distally), Talus (talar neck fractures), Humeral head. Risk increases with displacement. AVN leads to bone collapse and joint destruction, often requiring arthroplasty. Early recognition and appropriate treatment minimize risk.', 'medium'),

('e0000322-0009-0000-0000-000000000009', 'd0000322-0000-0000-0000-000000000022', 9,
'Fat embolism syndrome typically occurs:',
'Immediately after fracture', '24-72 hours after long bone or pelvic fractures', 'Only with open fractures', 'After soft tissue injuries only', NULL,
'B', 'Fat embolism syndrome (FES) occurs 24-72 hours after long bone or pelvic fractures. Classic triad: respiratory distress (hypoxia, ARDS), neurological changes (confusion, altered consciousness), petechial rash (chest, axillae, conjunctivae - late sign). Fat globules from marrow enter circulation and cause mechanical and inflammatory injury. Treatment is supportive. Early fracture stabilization may reduce incidence.', 'medium'),

('e0000322-0010-0000-0000-000000000010', 'd0000322-0000-0000-0000-000000000022', 10,
'Supracondylar humerus fractures in children are concerning for:',
'Pathological fracture', 'Brachial artery and median/radial nerve injury', 'Growth plate stimulation', 'Guaranteed non-union', NULL,
'B', 'Supracondylar humerus fractures (most common elbow fracture in children) risk neurovascular injury: brachial artery (displaced fragments, may cause Volkmann ischemic contracture if missed), median nerve (anterior interosseous nerve most common), radial nerve. Must assess distal pulses, capillary refill, and motor/sensory function before and after reduction. Displaced fractures require urgent reduction and pinning. Cubitus varus deformity is late complication.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 22 (Orthopedic Principles) with 10 self-assessment questions inserted' as status;
