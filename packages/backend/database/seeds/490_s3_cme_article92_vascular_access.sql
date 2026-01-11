-- ============================================================================
-- SURGERY 3 CME ARTICLE 92: Vascular Access and Catheter Care
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000158-0000-0000-0000-000000000158', 'a0000003-0000-0000-0000-000000000003', 'Vascular Access and Catheter Care', 'Techniques and management of venous access')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000392-0000-0000-0000-000000000092',
    'c0000158-0000-0000-0000-000000000158',
    'a0000003-0000-0000-0000-000000000003',
    'Vascular Access: Techniques, Complications, and Management',
    'Central Venous Catheters and Dialysis Access',
    'This article covers central line insertion techniques, ultrasound guidance, complications and management, catheter-related bloodstream infections, dialysis access creation and maintenance, and principles of long-term access.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000392-0001-0000-0000-000000000001', 'd0000392-0000-0000-0000-000000000092', 1,
'The preferred site for central venous catheter placement in elective situations is:',
'Femoral vein due to easy access', 'Internal jugular or subclavian vein with ultrasound guidance, with internal jugular preferred for lower pneumothorax risk', 'External jugular only', 'Peripheral veins only',
'B', 'CENTRAL VENOUS ACCESS site selection: INTERNAL JUGULAR - preferred by many (ultrasound easily visualizes, compressible, lower pneumothorax than subclavian, access to right atrium for PA catheter). SUBCLAVIAN - comfortable for patient, lower infection rate in some studies, pneumothorax risk. FEMORAL - higher infection/thrombosis rates, reserved for emergencies or when upper sites unavailable. ULTRASOUND GUIDANCE recommended for all (reduces complications, improves success). Right side often preferred (straighter path to SVC, avoids thoracic duct on left). Avoid subclavian in dialysis patients (preserve for fistula).', 'easy'),

('e0000392-0002-0000-0000-000000000002', 'd0000392-0000-0000-0000-000000000092', 2,
'Complications of central line insertion include:',
'None if technique is correct', 'Pneumothorax, arterial puncture, air embolism, arrhythmias, catheter malposition, and infection', 'Only infection', 'Complications are extremely rare',
'B', 'CENTRAL LINE COMPLICATIONS - IMMEDIATE: PNEUMOTHORAX (especially subclavian), ARTERIAL PUNCTURE (carotid, subclavian), AIR EMBOLISM (prevented by Trendelenburg, finger over needle hub), ARRHYTHMIAS (guidewire in heart), hematoma, nerve injury. EARLY: catheter MALPOSITION (confirm with CXR), thrombosis. LATE: INFECTION (CLABSI), thrombosis, stenosis. PREVENTION: ultrasound guidance, sterile technique, proper positioning. Post-procedure CXR to confirm position and rule out pneumothorax. Tip should be at cavo-atrial junction.', 'easy'),

('e0000392-0003-0000-0000-000000000003', 'd0000392-0000-0000-0000-000000000092', 3,
'Central line-associated bloodstream infection (CLABSI) prevention bundles include:',
'Routine line changes every 24 hours', 'Hand hygiene, maximal barrier precautions, chlorhexidine skin prep, optimal site selection, and daily review of line necessity', 'No specific measures needed', 'Prophylactic antibiotics always',
'B', 'CLABSI PREVENTION BUNDLE: (1) HAND HYGIENE before insertion and manipulation; (2) MAXIMAL STERILE BARRIER (cap, mask, sterile gown, sterile gloves, large sterile drape); (3) CHLORHEXIDINE (>0.5%) skin antisepsis; (4) Optimal SITE SELECTION (avoid femoral); (5) DAILY REVIEW of line necessity - remove promptly when not needed. Additional: CHG-impregnated dressings, antimicrobial-impregnated catheters in high-risk patients, dedicated IV team, audit and feedback. Routine line replacement NOT recommended (increases complications). Line changes over guidewire only if no infection suspected.', 'easy'),

('e0000392-0004-0000-0000-000000000004', 'd0000392-0000-0000-0000-000000000092', 4,
'A suspected catheter-related bloodstream infection should be managed by:',
'Continuing to use the catheter', 'Drawing blood cultures (peripheral and through catheter), considering catheter removal especially for certain organisms, and initiating empiric antibiotics', 'Ignoring fever in catheter patients', 'Changing antibiotics only',
'B', 'CATHETER-RELATED BSI management: (1) BLOOD CULTURES - paired samples from catheter AND peripheral site, differential time to positivity (catheter 2+ hours earlier suggests catheter source); (2) REMOVE CATHETER if: severe sepsis, hemodynamic instability, complicated infection (endocarditis, septic thrombosis), tunnel infection, certain organisms (S. aureus, Candida, Pseudomonas); (3) EMPIRIC ANTIBIOTICS covering gram-positive (vancomycin) and gram-negative if indicated; (4) Catheter tip culture if removed. Salvage (treat without removal) possible for uncomplicated coagulase-negative staph with catheter lock therapy.', 'medium'),

('e0000392-0005-0000-0000-000000000005', 'd0000392-0000-0000-0000-000000000092', 5,
'For hemodialysis access, the preferred permanent access is:',
'Tunneled dialysis catheter', 'Native arteriovenous fistula (AVF), preferably radiocephalic (wrist), as it has the best patency and lowest complication rate', 'Prosthetic graft as first choice', 'Peripheral IV access',
'B', 'HEMODIALYSIS ACCESS - "Fistula First": ARTERIOVENOUS FISTULA (AVF) is preferred. ADVANTAGES: best long-term PATENCY, lowest INFECTION rate, lowest THROMBOSIS rate, lowest overall complication rate. ORDER OF PREFERENCE: (1) RADIOCEPHALIC (wrist) - non-dominant arm first; (2) BRACHIOCEPHALIC (elbow); (3) Transposed brachiobasilic. If no native vein suitable: ARTERIOVENOUS GRAFT (AVG) - prosthetic conduit, earlier use but higher complications. TUNNELED CATHETER - temporary or when AVF/AVG not possible. Plan ahead: preserve veins (avoid blood draws, IVs in non-dominant arm), referral before dialysis needed (fistula needs 2-3 months to mature).', 'easy'),

('e0000392-0006-0000-0000-000000000006', 'd0000392-0000-0000-0000-000000000092', 6,
'An arteriovenous fistula requires maturation time because:',
'It can be used immediately', 'The vein needs to arterialize (dilate and thicken) over 6-8 weeks before it can tolerate repetitive needling for dialysis', 'No maturation is needed', 'Only grafts need maturation',
'B', 'AVF MATURATION: after creation, vein needs to ARTERIALIZE - exposed to arterial pressure causes: (1) DILATION (must reach 6mm diameter); (2) WALL THICKENING (to tolerate needle puncture); (3) Increased FLOW (must be >600 mL/min for adequate dialysis). RULE OF 6s: 6 weeks minimum, 6 mm diameter, 6 mm depth (or less), 600 mL/min flow. TIME: typically 6-8 WEEKS, some need longer. FAILURE TO MATURE: common, may need intervention (angioplasty), or revision. AVG (graft) can be used sooner (2-4 weeks) but has worse long-term outcomes. Early referral allows time for fistula maturation.', 'medium'),

('e0000392-0007-0000-0000-000000000007', 'd0000392-0000-0000-0000-000000000092', 7,
'Peripherally inserted central catheters (PICCs):',
'Are only for short-term use', 'Are inserted via arm veins with tip in SVC/cavo-atrial junction, suitable for weeks of IV therapy, but associated with higher DVT risk than other central lines', 'Cannot deliver chemotherapy', 'Have no complications',
'B', 'PICC (Peripherally Inserted Central Catheter): inserted via basilic, brachial, or cephalic vein in upper arm, tip in SVC/cavo-atrial junction. USES: long-term IV antibiotics, TPN, chemotherapy (if power PICC), difficult peripheral access. ADVANTAGES: can be placed at bedside, no pneumothorax risk, easy removal. DISADVANTAGES: higher DVT risk (upper extremity thrombosis), cannot use for hemodialysis, malposition, smaller lumens. CARE: flush regularly, dressing changes, monitor for thrombosis (arm swelling). Duration: weeks to months. Dedicated PICC teams improve outcomes.', 'medium'),

('e0000392-0008-0000-0000-000000000008', 'd0000392-0000-0000-0000-000000000092', 8,
'Implantable venous access ports (Port-a-Cath):',
'Require daily external care', 'Are completely implanted under the skin with a reservoir accessed through the skin using special non-coring needles, ideal for intermittent long-term access', 'Cannot be used for chemotherapy', 'Must be removed after each use',
'B', 'IMPLANTABLE PORT (Port-a-Cath): subcutaneous reservoir connected to central venous catheter. PLACEMENT: surgically placed, reservoir usually in chest wall, catheter tip in SVC. ACCESS: through skin using NON-CORING (Huber) needle. ADVANTAGES: completely IMPLANTED (cosmetic, no external care when not accessed), low infection rate, suitable for INTERMITTENT long-term use (chemotherapy, blood draws). DISADVANTAGES: requires procedure for placement/removal, cannot be used for high-flow (dialysis), requires special needle for access. CARE: flush after each use, monthly if not used. LIFESPAN: years if maintained properly.', 'easy'),

('e0000392-0009-0000-0000-000000000009', 'd0000392-0000-0000-0000-000000000092', 9,
'Dialysis access steal syndrome occurs when:',
'Blood flow is too low', 'The fistula diverts too much blood from the distal extremity causing ischemia with symptoms of pain, coolness, weakness, or tissue loss in the hand', 'The vein does not dilate', 'There is too much blood in the arm',
'B', 'STEAL SYNDROME (access-induced ischemia): AVF/AVG diverts blood from distal extremity, causing ISCHEMIA. MECHANISM: high-flow fistula "steals" blood that would go to hand; plus retrograde flow in artery distal to anastomosis. PRESENTATION: hand PAIN (especially during dialysis), COOLNESS, weakness, NUMBNESS, tissue loss/ulceration (severe). CLASSIFICATION: Grade 1 (mild, cold hand without pain), to Grade 4 (tissue loss, gangrene). RISK FACTORS: diabetes, peripheral vascular disease, proximal fistulas. TREATMENT: observation (mild), banding (narrow fistula), DRIL procedure (distal revascularization-interval ligation), ligation (severe, to save hand).', 'medium'),

('e0000392-0010-0000-0000-000000000010', 'd0000392-0000-0000-0000-000000000092', 10,
'Ultrasound-guided vascular access:',
'Is not superior to landmark technique', 'Improves success rates, reduces complications including arterial puncture and pneumothorax, and is recommended as standard of care for central venous access', 'Should only be used by radiologists', 'Increases procedure time without benefit',
'B', 'ULTRASOUND-GUIDED VASCULAR ACCESS: real-time visualization during insertion. BENEFITS: higher FIRST-PASS SUCCESS, fewer attempts, reduced ARTERIAL PUNCTURE, reduced PNEUMOTHORAX (especially IJ), faster access, higher overall success rate. TECHNIQUE: sterile probe cover, identify vein (compressible, non-pulsatile), confirm artery (pulsatile, non-compressible), visualize needle in real-time (in-plane or out-of-plane approach). STANDARD OF CARE: recommended by multiple guidelines for central venous access. Also useful for peripheral IV in difficult access, arterial lines, nerve blocks. Training required for competence.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 92 (Vascular Access and Catheter Care) with 10 self-assessment questions inserted' as status;
