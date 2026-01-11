-- ============================================================================
-- SURGERY 3 MCQ BATCH 48: Surgical Principles, Ethics, and Miscellaneous (Questions 2821-2880)
-- Topic: Surgical Decision-Making, Informed Consent, Surgical Safety, Drains/Tubes
-- ============================================================================

-- First create the topic if not exists
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003', 'Surgical Principles and Safety', 'Surgical decision-making, informed consent, surgical safety protocols, and perioperative care')
ON CONFLICT DO NOTHING;

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Surgical Decision-Making and Ethics (1-20)
('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Informed consent for surgery requires:',
'Only a signed form', 'Disclosure of diagnosis, nature of procedure, risks, benefits, alternatives, and opportunity for questions, with patient understanding and voluntary agreement', 'Verbal consent only', 'Family permission only', 'Consent from hospital administrator',
'B', 'Informed consent elements: (1) Disclosure: diagnosis, proposed treatment, risks (common and serious), benefits, alternatives (including no treatment). (2) Understanding: patient comprehends information. (3) Voluntariness: no coercion or undue influence. (4) Competence/capacity: patient able to make decision. (5) Documentation. The signed form documents but does not constitute consent - consent is the process of discussion. Emergency exception: life-threatening, patient unable to consent, no surrogate available. Reference: Beauchamp TL. Principles of Biomedical Ethics.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'The WHO Surgical Safety Checklist is designed to:',
'Replace surgical training', 'Reduce perioperative mortality and complications through systematic verification of critical safety steps', 'Document billing', 'Extend operative time', 'Satisfy regulatory requirements only',
'B', 'WHO Surgical Safety Checklist: launched 2008, proven to reduce complications and mortality by 30-40%. Three phases: (1) Sign In (before induction): patient identity, site marked, consent, pulse oximeter, allergies, airway, blood loss risk. (2) Time Out (before incision): introduce team, confirm patient/procedure/site, antibiotic prophylaxis, critical steps, equipment. (3) Sign Out (before leaving OR): procedure name, counts correct, specimen labeled, equipment issues, recovery concerns. Reference: Haynes AB. N Engl J Med. 2009.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Wrong-site surgery prevention requires:',
'Surgeon memory only', 'Site marking by operating surgeon, verification protocols, and final Time Out confirmation with active participation of entire team', 'Verbal confirmation only', 'Relying on operative schedule', 'No specific protocol',
'B', 'Wrong-site surgery prevention (Universal Protocol): (1) Preoperative verification: correct patient, procedure, site, documents, imaging. (2) Site marking: by surgeon who will perform procedure, in preop with patient awake and participating, mark remains visible after draping. (3) Time Out: immediately before incision, active confirmation by entire team, resolves any discrepancies. All three steps mandatory. Joint Commission standards. Wrong-site surgery is a never event. Reference: Joint Commission Universal Protocol.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'A second opinion in surgery is most appropriate when:',
'Never needed', 'Diagnosis is uncertain, treatment is controversial, prognosis is serious, or patient requests it', 'Only for minor procedures', 'Against medical advice', 'Only for cosmetic surgery',
'B', 'Second opinion indications: (1) Uncertain or complex diagnosis. (2) Major or irreversible procedure planned. (3) Controversial treatment options. (4) Serious prognosis (cancer diagnosis). (5) Patient request or hesitation. (6) When recommended treatments differ. Benefits: confirms diagnosis, validates treatment plan, provides alternative options, increases patient confidence. Not a sign of distrust - good practice for complex cases. Reference: Shmueli L. Health Policy. 2017.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Futility in surgical care refers to:',
'Any unsuccessful operation', 'Interventions that cannot achieve the goals of care or provide meaningful benefit to the patient', 'Cost of care', 'Patient age alone', 'Any procedure on elderly patients',
'B', 'Medical futility: (1) Physiologic futility: treatment cannot achieve physiologic goal (e.g., CPR in asystole from exsanguination). (2) Qualitative futility: treatment may achieve physiologic effect but not meaningful benefit from patient perspective. Challenges: defining meaningful benefit is value-laden. Approach: goals of care discussion, palliative care involvement, ethics consultation if needed. Surgeons not obligated to provide futile interventions. Communication with family essential. Reference: Schneiderman LJ. Ann Intern Med. 1990.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Do Not Resuscitate (DNR) orders in the perioperative period:',
'Automatically suspend', 'Should be discussed and revised with patient/surrogate, as original assumptions may not apply in OR setting (required reconsideration)', 'Never apply in OR', 'Cannot be modified', 'Mean no surgery allowed',
'B', 'Perioperative DNR: (1) ASA/ACS guidelines: automatic suspension is inappropriate. (2) Required reconsideration: discuss with patient/surrogate before surgery. (3) Options: full suspension during surgery, procedure-specific orders (what interventions acceptable), goal-directed orders (what outcomes patient would accept). (4) Context matters: arrest from reversible anesthetic cause different from end-stage disease. (5) Document discussion and revised orders. (6) DNR does not mean do not treat - patient may want surgery. Reference: American College of Surgeons Statement.',
'medium', 'knowledge'),

-- Surgical Site Preparation (21-30)
('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'The preferred method of preoperative hair removal to reduce SSI risk is:',
'Shaving night before surgery', 'Clipping with electric clippers immediately before surgery, or no hair removal if not necessary', 'Depilatory creams', 'Waxing', 'Shaving in OR',
'B', 'Hair removal and SSI: (1) Best: no removal if hair will not interfere. (2) If needed: clip with electric clippers immediately before surgery. (3) Avoid shaving: razor causes microabrasions that harbor bacteria, increases SSI. (4) Depilatory creams: acceptable alternative but may cause skin reactions. (5) Timing: immediately before, not night before (allows bacterial colonization of microabrasions). CDC guidelines recommend clipping over shaving. Reference: Tanner J. Cochrane Database. 2011.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Surgical skin preparation agents include:',
'Soap and water only', 'Chlorhexidine-alcohol (preferred), povidone-iodine, or iodine-alcohol solutions', 'Hydrogen peroxide', 'Plain alcohol only', 'No preparation needed',
'B', 'Skin antisepsis: (1) Chlorhexidine-alcohol (CHG): preferred, superior to povidone-iodine in most studies, persistent activity. (2) Povidone-iodine (aqueous): alternative, less persistent, may use near mucous membranes. (3) Iodine-alcohol: iodophor in alcohol base. Application: concentric circles from incision outward, allow to dry (especially alcohol - fire risk with electrocautery). Contraindications: CHG near ear (ototoxicity), caution with mucous membranes. Reference: Darouiche RO. N Engl J Med. 2010.',
'easy', 'knowledge'),

-- Drains and Tubes (31-45)
('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'The primary indication for surgical drain placement is:',
'All operations require drains', 'Evacuation of fluid collections (blood, serous fluid, pus, bile) where accumulation is expected or would be harmful', 'Preventing all complications', 'Billing purposes', 'Standard of care everywhere',
'B', 'Surgical drains: indications: (1) Dead space with expected fluid accumulation. (2) Contaminated field (drainage of abscess). (3) Risk of specific collections (bile leak, pancreatic leak). (4) Monitoring (postoperative bleeding). Principles: route away from anastomoses, use closed suction systems when possible, remove when output minimal. Evidence: many operations do not benefit from routine drainage (cholecystectomy, appendectomy, colorectal anastomoses). Decision individualized. Reference: Petrowsky H. Ann Surg. 2004.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Jackson-Pratt (JP) drains are:',
'Gravity drains', 'Closed suction drains using a compressible bulb to maintain negative pressure', 'Open drains', 'Chest tubes', 'Urinary catheters',
'B', 'JP drain: closed suction drain. Components: perforated silicone tube + compressible bulb reservoir. Mechanism: squeezing bulb creates negative pressure, draws fluid. Uses: postoperative fluid evacuation (mastectomy, neck dissection, abdominal surgery). Advantages: closed system (lower infection risk than open), portable, measurable output. Care: empty and compress bulb regularly, record output, remove when output less than 25-30 mL/day. Reference: General surgical principles.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'The Salem sump is a type of nasogastric tube characterized by:',
'Single lumen', 'Double lumen design with air vent (blue pigtail) allowing continuous suction without mucosal damage', 'Only for feeding', 'Cannot be used for suction', 'For urinary drainage',
'B', 'Salem sump: double-lumen nasogastric tube. Design: (1) Large lumen: suction/drainage. (2) Small lumen (blue pigtail): air vent allows air to enter stomach, preventing mucosal suction trauma. Uses: gastric decompression, evacuation (bowel obstruction, postoperative ileus, GI bleeding). Care: keep blue pigtail open and above patient (prevents siphoning), flush with air if occluded, verify position before use. Alternative: Levin tube (single lumen, intermittent suction only). Reference: General nursing/surgical texts.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'T-tube drains placed after common bile duct exploration:',
'Are permanent', 'Allow bile drainage and decompression while duct heals, with cholangiogram before removal to confirm patency', 'Block bile flow', 'Are never used', 'Drain urine',
'B', 'T-tube: placed in CBD after choledochotomy (stone extraction, exploration). Purpose: (1) Maintains bile drainage while duct heals. (2) Allows access for cholangiogram. (3) Creates controlled fistula tract for retained stone extraction if needed. Duration: typically 2-3 weeks. Removal: after T-tube cholangiogram confirms no retained stones and free flow into duodenum. Technique: clamp for period before removal to ensure tolerance. Risks: bile leak after removal (usually self-limiting). Reference: Surgical technique texts.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Penrose drains function by:',
'Active suction', 'Passive drainage along the surface of the soft rubber tube (capillary action and gravity)', 'Electrical stimulation', 'Vacuum pressure', 'Pumping mechanism',
'B', 'Penrose drain: flat soft latex rubber tube. Mechanism: passive drainage by capillary action along surface and gravity. Uses: historically common, now less used due to open system (infection risk). May still use: superficial abscess cavities, some neck/thyroid surgeries. Disadvantages: open drain, may serve as conduit for bacteria, difficult to quantify output. Generally prefer closed drains when drainage needed. Reference: Traditional surgical texts.',
'easy', 'knowledge'),

-- Operative Complications (46-55)
('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Intraoperative recognition of bile duct injury during laparoscopic cholecystectomy requires:',
'Ignoring and closing', 'Immediate cholangiogram if any concern, conversion to open if needed, and involvement of hepatobiliary specialist for repair', 'Continuing laparoscopically', 'Hoping it heals', 'Antibiotics only',
'B', 'Bile duct injury management: (1) Prevention: critical view of safety, intraoperative cholangiography if any doubt. (2) Recognition: bile seen, abnormal anatomy, unexplained duct. (3) Immediate steps: stop, obtain cholangiogram, do not clip/divide structures. (4) Repair: depends on injury type and timing - primary repair for small lateral injuries, hepaticojejunostomy for transections. (5) Hepatobiliary specialist: improves outcomes for complex injuries. (6) Delayed recognition: worse outcomes. Reference: Strasberg SM. HPB. 2008.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Seroma formation after surgery:',
'Is always infected', 'Is a collection of serous fluid in a wound or surgical space, usually self-limited', 'Requires emergent reoperation', 'Is always prevented by drains', 'Never occurs with proper technique',
'B', 'Seroma: collection of serous (clear yellow) fluid in surgical dead space. Common after: mastectomy, hernia repair, lymph node dissection, flap surgery. Characteristics: soft, fluctuant, non-tender, not erythematous. Management: (1) Observation (most resolve). (2) Aspiration if large or symptomatic (may need repeated). (3) Compression. (4) Infection rare but can occur - aspirate if concerned. Prevention: meticulous hemostasis, quilting sutures, drain placement (debated). Reference: Sampathraju S. Indian J Surg. 2010.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Postoperative hematoma in neck surgery is concerning because:',
'Cosmetic issue only', 'Can rapidly expand and compress the airway, requiring emergent decompression at bedside if airway threatened', 'Never happens', 'Is always asymptomatic', 'Always drains spontaneously',
'B', 'Neck hematoma: surgical emergency. Risk: thyroidectomy, parathyroidectomy, carotid surgery, neck dissection. Danger: enclosed space - expanding hematoma causes airway compression and respiratory distress. Signs: neck swelling, stridor, respiratory distress, anxiety. Management: (1) Minor: observe. (2) Expanding with airway symptoms: open wound at bedside immediately to relieve pressure, then return to OR. (3) Do not wait for imaging if airway compromised. Prevention: meticulous hemostasis, drain placement. Reference: Rosenbaum MA. Thyroid. 2009.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Anastomotic leak typically presents:',
'Immediately postoperatively', 'Days 5-10 postoperatively with fever, tachycardia, abdominal pain, peritonitis, or drainage of enteric contents', 'Never occurs', 'Only in malnourished patients', 'With skin rash',
'B', 'Anastomotic leak: (1) Timing: usually POD 5-10 (healing incomplete). (2) Presentation: sepsis syndrome (fever, tachycardia, hypotension), abdominal pain/tenderness, ileus, feculent/purulent drainage from incision/drain. (3) Diagnosis: CT with contrast, drain output analysis (high amylase for upper GI, feculent for colorectal). (4) Management: NPO, antibiotics, source control (percutaneous drainage if contained, reoperation if generalized peritonitis). (5) Risk factors: malnutrition, steroids, tension, poor blood supply, distal obstruction. Reference: Kingham TP. Ann Surg Oncol. 2009.',
'medium', 'knowledge'),

-- Sutures and Wound Management (56-60)
('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Absorbable sutures lose tensile strength over time by:',
'Mechanical degradation', 'Enzymatic degradation (gut) or hydrolysis (synthetic) by body tissues', 'Evaporation', 'Thermal breakdown', 'Never lose strength',
'B', 'Absorbable suture degradation: (1) Natural (gut): enzymatic degradation by proteases. (2) Synthetic (Vicryl, PDS, Monocryl): hydrolysis - water breaks polymer bonds. Absorption time: fast (Vicryl rapide - days), intermediate (Vicryl - 60-90 days), slow (PDS - 180+ days). Selection based on: tissue healing time, strength requirements, infection risk. Infected wounds: prefer absorbable (no foreign body to remove). Fascia closure: slow-absorbing (PDS) or permanent. Reference: Hochberg J. Surg Clin North Am. 2009.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Monofilament sutures compared to braided sutures:',
'Harbor more bacteria', 'Have lower tissue drag, less bacterial adherence, but are stiffer and have less knot security', 'Are never used', 'Are always absorbable', 'Have higher infection rates',
'B', 'Suture characteristics: Monofilament (Prolene, PDS, Nylon): single strand, smooth, less tissue drag, less bacterial colonization (important in contaminated fields), stiff, needs more throws for knot security. Braided (Vicryl, Silk): multiple fibers twisted/braided, better handling, better knot security, but interstices harbor bacteria (avoid in contaminated). Selection: contaminated wounds favor monofilament, delicate handling favor braided. Reference: Trimbos JB. Lancet. 2002.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Stapled versus hand-sewn anastomoses:',
'Stapled always better', 'Generally equivalent outcomes with proper technique, with stapled being faster but hand-sewn allowing more flexibility', 'Hand-sewn always better', 'Stapled has higher leak rate', 'Only for colorectal',
'B', 'Stapled vs hand-sewn anastomoses: (1) Outcomes: generally equivalent in leak rate, stricture, bleeding when properly performed. (2) Stapled advantages: faster, more standardized, useful in deep pelvis (circular stapler for rectal anastomosis). (3) Hand-sewn advantages: flexibility, can adjust for tissue quality/mismatch, lower cost. (4) Technique matters more than method. (5) Site-specific: colorectal often stapled, small bowel may be either. (6) End-to-end, side-to-side, functional end-to-end all have indications. Reference: Neutzling CB. Cochrane Database. 2012.',
'medium', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Skin staples compared to sutures for skin closure:',
'Cause more scarring', 'Are faster to place and remove, with equivalent cosmetic outcomes in most locations, but may be avoided on face', 'Are never appropriate', 'Are more painful', 'Are only for emergencies',
'B', 'Skin staples: (1) Advantages: faster application and removal, lower cost, lower risk of needlestick. (2) Outcomes: equivalent wound infection and dehiscence rates. (3) Cosmesis: generally equivalent in trunk/extremities, may avoid on face where subcuticular sutures preferred. (4) Removal: staple remover, typically 7-14 days. (5) Not for use on digits or areas with thin skin. Choice often based on surgeon preference and wound location. Reference: Smith TO. BMJ. 2010.',
'easy', 'knowledge'),

('c0000063-0000-0000-0000-000000000063', 'a0000003-0000-0000-0000-000000000003',
'Fascial closure to minimize incisional hernia risk should use:',
'Interrupted rapidly absorbing sutures', 'Slowly absorbable or non-absorbable sutures in continuous fashion with 4:1 suture length to wound length ratio and small bites', 'Running fast-absorbing sutures', 'No closure necessary', 'Skin staples for fascia',
'B', 'Fascial closure technique: (1) Suture: slowly absorbable (PDS) or non-absorbable (Prolene, Nylon). (2) Technique: continuous preferred (less tissue ischemia than interrupted). (3) Suture length to wound length ratio: greater than 4:1 (long suture relative to incision). (4) Bite size and spacing: small bites (5-8 mm from edge, 5 mm apart) - STITCH trial showed lower hernia rate with small bites. (5) Avoid excess tension (tissue necrosis). (6) Mass closure (all layers together) acceptable. Reference: Deerenberg TC. Lancet. 2015 (STITCH trial).',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 48 (Surgical Principles and Safety): 60 questions inserted' as status;
