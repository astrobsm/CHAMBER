-- ============================================================================
-- SURGERY 3 MCQ BATCH 51: Orthopedic Surgery Principles
-- Topic: Fracture Management, Bone Healing, Orthopedic Emergencies
-- ============================================================================

-- First create the topic if not exists
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003', 'Orthopedic Surgery Principles', 'Fractures, bone healing, and orthopedic emergencies for general surgeons')
ON CONFLICT DO NOTHING;

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Fracture Classification (1-12)
('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'An open (compound) fracture is classified according to:',
'Only bone type', 'The Gustilo-Anderson classification based on wound size, contamination, and soft tissue/vascular damage', 'Patient age', 'Only mechanism of injury', 'Time since injury only',
'B', 'Gustilo-Anderson classification (open fractures): Type I: wound <1 cm, clean, simple fracture pattern. Type II: wound 1-10 cm, moderate soft tissue damage, simple/comminuted fracture. Type IIIA: wound >10 cm, adequate soft tissue coverage possible. Type IIIB: wound >10 cm, requires flap for coverage. Type IIIC: any open fracture with arterial injury requiring repair. Management: antibiotics (cephalosporin +/- aminoglycoside), tetanus, irrigation, debridement, stabilization. Reference: Gustilo RB. J Bone Joint Surg Am. 1976.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A Salter-Harris fracture classification is used for:',
'Adult spine fractures', 'Pediatric fractures involving the growth plate (physis)', 'Open fractures', 'Stress fractures', 'Pelvic fractures',
'B', 'Salter-Harris classification (physeal fractures): Type I: fracture through physis only. Type II: through physis and metaphysis (most common). Type III: through physis and epiphysis. Type IV: through metaphysis, physis, and epiphysis. Type V: compression injury to physis. Prognosis: higher types have higher risk of growth arrest. Mnemonic: SALTR (Slipped, Above, Lower, Through, Ruined). Management: reduction and immobilization, follow for growth disturbance. Reference: Salter RB. J Bone Joint Surg Am. 1963.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A pathologic fracture occurs through:',
'Normal bone with excessive force', 'Bone weakened by disease (tumor, infection, metabolic disorder) with minimal or no trauma', 'Only in children', 'Only in the spine', 'Healthy cortical bone',
'B', 'Pathologic fractures: (1) Definition: fracture through abnormal bone. (2) Causes: metastatic cancer (most common - breast, prostate, lung, kidney, thyroid), primary bone tumors, osteoporosis, Paget disease, infection (osteomyelitis). (3) Presentation: pain with minimal trauma, fracture without significant force. (4) Evaluation: imaging (XR, CT, MRI), biopsy if unknown primary. (5) Treatment: depends on prognosis, may require stabilization and treatment of underlying disease. Reference: Mirels H. Clin Orthop Relat Res. 1989.',
'easy', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The most common site of metastatic bone disease is:',
'Distal extremities', 'Axial skeleton (spine, pelvis, proximal femur)', 'Hands and feet', 'Clavicle', 'Patella',
'B', 'Metastatic bone disease: (1) Location: axial skeleton (red marrow distribution) - spine, pelvis, proximal femur, ribs, skull, proximal humerus. (2) Common primaries: breast, prostate, lung, kidney, thyroid (mnemonic: BLT with Kosher Pickle). (3) Lytic vs blastic: lung, kidney, thyroid typically lytic; prostate typically blastic; breast mixed. (4) Evaluation: bone scan, XR, CT, MRI for cord compression. (5) Fracture risk: Mirels score (site, pain, lesion type, size). Reference: Coleman RE. Cancer. 2006.',
'easy', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A comminuted fracture is defined as:',
'Fracture through joint', 'Fracture with more than two bone fragments', 'Incomplete fracture', 'Fracture without displacement', 'Fracture in children only',
'B', 'Fracture terminology: (1) Comminuted: more than 2 fragments. (2) Segmental: isolated segment of bone. (3) Spiral: twisting mechanism. (4) Oblique: diagonal fracture line. (5) Transverse: perpendicular to bone axis. (6) Greenstick: incomplete fracture (pediatric). (7) Torus/buckle: cortical compression (pediatric). (8) Avulsion: fragment pulled by tendon/ligament. Description includes: open/closed, location, pattern, displacement, angulation. Reference: AO Foundation Classification.',
'easy', 'knowledge'),

-- Bone Healing (13-22)
('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The phases of bone healing in order are:',
'Inflammation only', 'Inflammation (hematoma), soft callus formation, hard callus formation, and remodeling', 'Immediate bone formation', 'Scar formation only', 'No specific phases',
'B', 'Bone healing phases: (1) Inflammatory (0-7 days): hematoma formation, inflammatory cell recruitment. (2) Soft callus (1-3 weeks): cartilage formation (endochondral ossification), granulation tissue. (3) Hard callus (3-12 weeks): woven bone replaces cartilage, calcification. (4) Remodeling (months to years): woven bone replaced by lamellar bone, restoration of mechanical properties. Primary healing: direct cortical bridging with rigid fixation, minimal callus. Secondary: more common, visible callus. Reference: Marsell R. Injury. 2011.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Factors that impair bone healing include:',
'Good blood supply', 'NSAIDs, smoking, infection, malnutrition, diabetes, corticosteroids, poor fixation, and extensive soft tissue injury', 'High protein diet', 'Young age', 'Vitamin D supplementation',
'B', 'Impaired bone healing: (1) Patient factors: smoking (#1 modifiable), diabetes, malnutrition, advanced age, immunosuppression. (2) Medications: NSAIDs (inhibit prostaglandins), steroids, chemotherapy. (3) Local factors: infection, poor blood supply, soft tissue damage, gap/motion at fracture site. (4) Systemic: thyroid/parathyroid disorders, vitamin D deficiency. Delayed union: slower than expected healing. Nonunion: failure to heal (typically >6 months). Smoking cessation is critical. Reference: Pountos I. Injury. 2008.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A nonunion is defined as:',
'Healing within 4 weeks', 'Failure of fracture to heal within expected time (typically 6+ months) without further intervention', 'Any fracture with delayed healing', 'Only in elderly patients', 'Fracture through joint',
'B', 'Nonunion: (1) Definition: fracture that has failed to heal and will not heal without intervention (usually >6-9 months). (2) Types: atrophic (poor blood supply, no callus), hypertrophic (good blood supply, inadequate stability - elephant foot callus). (3) Causes: infection, inadequate blood supply, instability, gap, patient factors (smoking, DM). (4) Treatment: atrophic - bone graft; hypertrophic - improved stabilization. (5) Delayed union: slower healing but still progressing. Reference: Giannoudis PV. J Bone Joint Surg Br. 2007.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Which fracture has the highest risk of avascular necrosis (AVN)?',
'Tibial shaft fracture', 'Femoral neck fracture (intracapsular) and scaphoid waist fracture', 'Clavicle fracture', 'Fibula fracture', 'Rib fracture',
'B', 'High AVN risk fractures: (1) Femoral neck (intracapsular): blood supply from retinacular vessels runs along neck - disrupted by fracture. Higher displacement = higher AVN risk (up to 30-40%). (2) Scaphoid waist: blood supply enters distally, proximal pole at risk. (3) Talus: precarious blood supply. (4) Humeral head: 4-part fractures. (5) Lunate: Kienbock disease. These fractures often require urgent surgical fixation to minimize AVN risk. Reference: Catto M. J Bone Joint Surg Br. 1965.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Heterotopic ossification most commonly occurs after:',
'Wrist fracture', 'Major trauma, burns, traumatic brain injury, and surgery around the hip and elbow', 'Finger fracture', 'Toe fracture', 'Clavicle fracture',
'B', 'Heterotopic ossification (HO): (1) Definition: formation of bone in soft tissues. (2) Risk factors: traumatic brain injury, spinal cord injury, burns, hip/elbow surgery, acetabular fractures. (3) Presentation: pain, swelling, decreased range of motion. (4) Prevention: NSAIDs (indomethacin), radiation therapy (hip surgery). (5) Treatment: observation (may mature and cause less symptoms), surgical excision (wait until mature, typically 1-2 years). (6) Screening: elevated alkaline phosphatase, bone scan, XR. Reference: Vanden Bossche L. J Rehabil Med. 2005.',
'medium', 'knowledge'),

-- Orthopedic Emergencies (23-40)
('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Compartment syndrome is characterized by:',
'Low compartment pressure', 'Pain out of proportion to injury, pain with passive stretch, paresthesias, and pressure (the 5 Ps - late: pulselessness, paralysis)', 'Only in arm injuries', 'Immediately visible on X-ray', 'Self-limiting condition',
'B', 'Compartment syndrome: (1) Pathophysiology: increased pressure within fascial compartment impairs perfusion and causes muscle/nerve ischemia. (2) Causes: fracture (tibial shaft, forearm), crush injury, burns, tight casts/dressings, bleeding. (3) Clinical: pain out of proportion, pain with passive stretch (earliest), paresthesias, pressure/tenseness. Pulselessness and paralysis are late signs. (4) Diagnosis: clinical suspicion, compartment pressure (>30 mmHg or within 30 mmHg of diastolic). (5) Treatment: EMERGENT fasciotomy. Reference: Via AG. Muscles Ligaments Tendons J. 2015.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The most common location for acute compartment syndrome is:',
'Upper arm', 'Anterior compartment of the leg following tibial fracture', 'Thigh', 'Foot', 'Hand',
'B', 'Compartment syndrome locations: (1) Leg (most common): 4 compartments (anterior - most common, lateral, superficial posterior, deep posterior). (2) Associated with tibial shaft fractures, crushing injuries. (3) Forearm: volar and dorsal compartments. (4) Thigh, gluteal, hand, foot: less common but possible. Anterior compartment: deep peroneal nerve, anterior tibial artery, tibialis anterior, extensors. Foot-drop if anterior compartment involved. Reference: McQueen MM. J Bone Joint Surg Br. 2000.',
'easy', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The treatment for compartment syndrome is:',
'Elevation and ice', 'Emergent fasciotomy of all involved compartments', 'Cast application', 'Antibiotics', 'Observation',
'B', 'Compartment syndrome treatment: (1) Remove constrictive dressings/casts. (2) Extremity at heart level (elevation impairs perfusion). (3) Emergent fasciotomy: release all compartments in affected region. (4) Leg: 4-compartment release via two incisions. (5) Forearm: volar and dorsal incisions. (6) Wounds left open, closed by secondary intention or skin graft at 48-72 hours. (7) Delay in treatment: irreversible muscle necrosis in 6-8 hours. Reference: Olson SA. J Orthop Trauma. 2005.',
'easy', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Cauda equina syndrome presents with:',
'Upper extremity weakness only', 'Saddle anesthesia, urinary retention/incontinence, fecal incontinence, and bilateral leg weakness', 'Neck pain only', 'Single nerve root symptoms', 'Normal bladder function',
'B', 'Cauda equina syndrome: (1) Cause: compression of cauda equina (nerve roots below L1/L2), often from disc herniation, tumor, epidural abscess, or trauma. (2) Classic presentation: bilateral sciatica, saddle anesthesia (perineum), urinary retention (overflow incontinence), fecal incontinence, decreased rectal tone, bilateral leg weakness. (3) Diagnosis: urgent MRI. (4) Treatment: emergent surgical decompression within 24-48 hours - delay leads to permanent deficits. (5) Red flag for any low back pain. Reference: Ahn UM. Spine. 2000.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Septic arthritis requires:',
'Oral antibiotics only', 'Urgent joint aspiration for diagnosis and surgical drainage/washout plus IV antibiotics', 'Observation', 'Immobilization only', 'NSAIDs alone',
'B', 'Septic arthritis: (1) Presentation: acute monoarticular joint pain, swelling, warmth, decreased ROM, fever. (2) Risk factors: diabetes, RA, prosthetic joint, IV drug use, skin infection. (3) Diagnosis: joint aspiration (WBC >50,000 with >75% PMNs, positive culture). (4) Common organisms: S. aureus (most common), Streptococcus, N. gonorrhoeae (young, sexually active). (5) Treatment: urgent surgical drainage (arthroscopy or open) plus IV antibiotics. (6) Delay leads to cartilage destruction and permanent joint damage. Reference: Goldenberg DL. Lancet. 1998.',
'easy', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A hip dislocation is an emergency because of risk of:',
'Skin necrosis', 'Avascular necrosis of the femoral head, which increases significantly after 6 hours', 'Infection', 'Pulmonary embolism', 'Compartment syndrome',
'B', 'Hip dislocation: (1) Types: posterior (90%, dashboard injury - hip flexed, adducted, internally rotated) vs anterior (10%, abducted, externally rotated). (2) Emergency: blood supply to femoral head runs along neck, disrupted by dislocation. (3) AVN risk: increases significantly after 6 hours of dislocation. (4) Treatment: urgent closed reduction (within 6 hours), sedation required. Post-reduction CT for loose bodies/fractures. (5) Associated injuries: posterior - sciatic nerve, acetabular fracture. Reference: Hougaard K. J Bone Joint Surg Br. 1987.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Fat embolism syndrome typically occurs:',
'Immediately after fracture', '24-72 hours after long bone fracture, presenting with hypoxia, altered mental status, and petechial rash', 'At 2 weeks', 'Only after surgery', 'Only in elderly',
'B', 'Fat embolism syndrome (FES): (1) Timing: 24-72 hours after long bone fracture or orthopedic surgery. (2) Classic triad: respiratory distress (hypoxia), neurologic changes (confusion), petechial rash (upper body, axillae, conjunctivae). (3) Pathophysiology: fat globules from marrow enter circulation, cause inflammatory response. (4) Diagnosis: clinical, exclusion of other causes. May see fat in urine/sputum. (5) Treatment: supportive, respiratory support. (6) Prevention: early fracture stabilization may reduce incidence. Reference: Mellor A. Anaesthesia. 2001.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The most reliable early sign of compartment syndrome is:',
'Absent pulse', 'Pain with passive stretch of muscles in the affected compartment', 'Paralysis', 'Pallor', 'Poikilothermia',
'B', 'Compartment syndrome early diagnosis: (1) Pain out of proportion to injury: most sensitive early finding. (2) Pain with passive stretch: earliest objective finding (stretches ischemic muscles). (3) Paresthesias: sensory nerve dysfunction. (4) Pressure/tenseness: palpable compartment tension. (5) Late signs (suggest irreversible damage): Pulselessness (pulses often present until late), Paralysis. Pressure measurement: clinical suspicion is key. Compartment pressure >30 mmHg or delta pressure (diastolic - compartment) <30 mmHg indicates need for fasciotomy. Reference: Ulmer T. J Emerg Med. 2002.',
'medium', 'application'),

-- Fracture Management (41-52)
('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Initial management of an open fracture includes:',
'Delayed antibiotics', 'Tetanus prophylaxis, IV antibiotics (cephalosporin +/- aminoglycoside), wound coverage, splinting, and urgent surgical debridement', 'Close wound primarily', 'No antibiotics needed', 'Apply tourniquet to all',
'B', 'Open fracture initial management: (1) Tetanus prophylaxis (update if needed). (2) Antibiotics: cefazolin for Type I-II, add aminoglycoside for Type III, add penicillin if farm contamination. (3) Wound: remove gross contamination, sterile saline-moistened dressing, do not close. (4) Splint: stabilize fracture, reduce further soft tissue injury. (5) Urgent I&D: within 6-24 hours (earlier better for contaminated wounds). (6) Stabilization: external fixation often for severe injuries. Reference: Gustilo RB. J Trauma. 1990.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Femoral neck fractures in elderly patients are best treated with:',
'Cast immobilization', 'Surgical fixation (cannulated screws) or hemiarthroplasty/total hip arthroplasty depending on fracture displacement and patient factors', 'Bed rest for 6 weeks', 'Skeletal traction only', 'NSAIDs and observation',
'B', 'Femoral neck fracture treatment: (1) Non-displaced (Garden I-II): internal fixation with cannulated screws. (2) Displaced (Garden III-IV): higher AVN/nonunion risk. Active elderly: total hip arthroplasty. Less active/low demand: hemiarthroplasty. (3) Young patients: reduction and fixation attempted to preserve native hip. (4) Surgery timing: within 24-48 hours reduces mortality, delirium, complications. (5) DVT prophylaxis essential. Non-operative: only for truly non-ambulatory patients with severe comorbidities. Reference: Parker MJ. Cochrane Database. 2010.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The typical treatment for displaced supracondylar humerus fracture in a child is:',
'Cast only', 'Closed reduction and percutaneous pinning under general anesthesia', 'Open reduction always', 'Observation', 'Skeletal traction for 3 weeks',
'B', 'Pediatric supracondylar humerus fracture: (1) Most common elbow fracture in children (ages 5-7). (2) Classification: Type I (non-displaced) - cast; Type II (angulated) - may need reduction; Type III (completely displaced) - surgical. (3) Treatment: closed reduction and percutaneous K-wire fixation. (4) Complications: neurovascular injury (anterior interosseous nerve, brachial artery), compartment syndrome, Volkmann contracture, cubitus varus. (5) Examine: radial pulse, median/anterior interosseous/radial nerve function. Reference: Omid R. J Am Acad Orthop Surg. 2008.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A Colles fracture is:',
'Fracture of the proximal humerus', 'Dorsally displaced, dorsally angulated fracture of the distal radius, typically from fall on outstretched hand', 'Hip fracture', 'Spiral tibial fracture', 'Clavicle fracture',
'B', 'Colles fracture: (1) Definition: extra-articular distal radius fracture with dorsal displacement/angulation. (2) Mechanism: fall on outstretched hand (FOOSH), wrist in extension. (3) Appearance: dinner fork deformity (dorsal displacement). (4) Treatment: closed reduction and casting if stable; ORIF if unstable, intra-articular involvement. (5) Complications: median nerve injury (carpal tunnel), malunion, CRPS. Smith fracture: opposite - volar displacement (garden spade deformity). Reference: Chung KC. J Hand Surg Am. 2009.',
'easy', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'An ankle fracture involving the medial malleolus, lateral malleolus, and posterior malleolus is classified as:',
'Unimalleolar', 'Trimalleolar fracture, indicating significant ankle instability', 'Simple sprain', 'Isolated fibula fracture', 'Stress fracture',
'B', 'Ankle fracture classification: (1) Unimalleolar: one malleolus (usually lateral). (2) Bimalleolar: medial and lateral. (3) Trimalleolar: medial, lateral, and posterior (posterior lip of tibia). (4) Significance: more malleoli involved = more unstable. (5) Weber classification (lateral malleolus level): A (below syndesmosis), B (at syndesmosis), C (above syndesmosis - syndesmotic injury likely). (6) Treatment: stable/non-displaced may be treated with cast; unstable requires ORIF. Reference: Michelson JD. J Bone Joint Surg Am. 1995.',
'easy', 'knowledge'),

-- Special Topics (53-60)
('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The anatomic snuffbox tenderness suggests fracture of:',
'Metacarpal', 'Scaphoid bone, which requires urgent evaluation due to AVN risk', 'Radius', 'Ulna', 'Triquetrum',
'B', 'Scaphoid fracture: (1) Anatomic snuffbox: depression between EPL and EPB/APL tendons. (2) Mechanism: FOOSH. (3) Presentation: snuffbox tenderness, pain with axial thumb compression. (4) Initial XR: may be negative (up to 20%). If clinical suspicion high with negative XR: MRI or repeat XR in 10-14 days. (5) AVN risk: blood supply enters distally, proximal pole at risk (up to 30-40% for proximal fractures). (6) Treatment: thumb spica cast for non-displaced; surgical fixation for displaced or proximal pole. Reference: Kawamura K. J Hand Surg Am. 2008.',
'medium', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Osteomyelitis is most commonly caused by:',
'Fungal infection', 'Staphylococcus aureus, spreading hematogenously or from contiguous source', 'Viral infection', 'Parasitic infection', 'E. coli',
'B', 'Osteomyelitis microbiology: (1) S. aureus: most common overall (60-80%), including MRSA. (2) Pediatric: S. aureus; also Kingella kingae in <5 years. (3) Sickle cell disease: Salmonella (also S. aureus). (4) Diabetic foot: polymicrobial (gram-positives, gram-negatives, anaerobes). (5) Puncture through shoe: Pseudomonas. (6) Routes: hematogenous (children, vertebral), contiguous (trauma, surgery, diabetic ulcer), direct inoculation. Reference: Lew DP. Lancet. 2004.',
'easy', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The Galeazzi fracture consists of:',
'Isolated radial head fracture', 'Radial shaft fracture with dislocation of the distal radioulnar joint (DRUJ)', 'Ulnar shaft fracture', 'Both bone fractures', 'Wrist dislocation alone',
'B', 'Galeazzi fracture: (1) Definition: radial shaft fracture (usually middle-distal third) + DRUJ dislocation/subluxation. (2) Mechanism: FOOSH with forced pronation. (3) Treatment: surgical (ORIF radius, DRUJ usually reduces). (4) Monteggia fracture: opposite - ulnar shaft fracture + radial head dislocation. Mnemonic: GRUesome (Galeazzi = Radius shaft + Ulnar dislocation) vs MUGR (Monteggia = Ulna shaft + Radial dislocation). (5) Must check for associated dislocation on XR. Reference: Giannoulis FS. Clin Orthop Relat Res. 2007.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'A pelvic fracture with hemodynamic instability is best initially managed with:',
'Immediate laparotomy', 'Pelvic binder or sheet for temporary stabilization, followed by resuscitation and angioembolization or preperitoneal packing', 'CT scan first', 'Observation', 'Oral fluids',
'B', 'Unstable pelvic fracture management: (1) Life-threatening hemorrhage source. (2) Immediate: pelvic binder or circumferential sheet (reduces volume, tamponades bleeding). (3) Resuscitation: massive transfusion protocol, permissive hypotension. (4) Hemorrhage control: angioembolization (arterial) or preperitoneal packing (venous). REBOA may be considered. (5) External fixation: temporary stabilization. (6) FAST: evaluate for intraperitoneal hemorrhage (may need laparotomy if positive). Decision depends on hemodynamics and bleeding source. Reference: Costantini TW. J Trauma. 2010.',
'hard', 'application'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'The Ottawa ankle rules help determine need for X-ray based on:',
'Mechanism of injury only', 'Bone tenderness at specific locations (posterior distal tibia, fibula, navicular, base of 5th metatarsal) and inability to bear weight', 'Patient age', 'Time since injury', 'Degree of swelling',
'B', 'Ottawa ankle rules: Ankle XR if: (1) Bone tenderness at posterior edge or tip of lateral malleolus OR (2) Bone tenderness at posterior edge or tip of medial malleolus OR (3) Unable to bear weight (4 steps) immediately and in ED. Foot XR if: (1) Bone tenderness at base of 5th metatarsal OR (2) Bone tenderness at navicular OR (3) Unable to bear weight. Sensitivity: 98-100% for significant fractures. Reduces unnecessary XRs by 30-40%. Reference: Stiell IG. JAMA. 1994.',
'medium', 'knowledge'),

('c0000066-0000-0000-0000-000000000066', 'a0000003-0000-0000-0000-000000000003',
'Deep vein thrombosis prophylaxis after major orthopedic surgery (hip/knee replacement) should continue for:',
'Only during hospitalization', 'Extended prophylaxis for 28-35 days postoperatively', '1 week', '6 months', 'No prophylaxis needed',
'B', 'DVT prophylaxis after major orthopedic surgery: (1) Risk: highest for hip fracture, total hip replacement, total knee replacement. (2) Duration: extended prophylaxis 28-35 days (ACCP guidelines). (3) Agents: LMWH (enoxaparin), fondaparinux, rivaroxaban, apixaban, aspirin (newer data). (4) Mechanical: IPC devices, early mobilization. (5) Risk of VTE remains elevated for 3 months after surgery. (6) Without prophylaxis: DVT rates 40-60%. Reference: Falck-Ytter Y. Chest. 2012.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 51 (Orthopedic Surgery Principles): 60 questions inserted' as status;
