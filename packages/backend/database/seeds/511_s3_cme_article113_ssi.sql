-- ============================================================================
-- SURGERY 3 CME ARTICLE 113: Surgical Site Infection Prevention
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000179-0000-0000-0000-000000000179', 'a0000003-0000-0000-0000-000000000003', 'Surgical Site Infection Prevention', 'Strategies for preventing and managing surgical site infections')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000413-0000-0000-0000-000000000113',
    'c0000179-0000-0000-0000-000000000179',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Site Infection: Prevention Bundles and Evidence-Based Practice',
    'SSI Prevention and Management',
    'This article covers SSI classification, risk factors, evidence-based prevention bundles including appropriate antibiotic prophylaxis timing, skin preparation, normothermia, glucose control, and wound classification.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000413-0001-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 1,
'Surgical site infections are classified as:',
'Only deep infections', 'Superficial incisional (skin and subcutaneous), deep incisional (fascia and muscle), and organ/space (any anatomy opened during surgery)', 'Only wound infections', 'Skin infections only',
'B', 'SSI CLASSIFICATION (CDC): (1) SUPERFICIAL INCISIONAL: involves only SKIN and SUBCUTANEOUS tissue, within 30 days. Signs: purulent drainage, pain, erythema, swelling, positive culture, opened by surgeon. (2) DEEP INCISIONAL: involves FASCIA and MUSCLE layers, within 30-90 days (if implant). Signs: purulent drainage from deep incision, dehiscence with fever/pain, abscess on imaging. (3) ORGAN/SPACE: involves any anatomy opened or manipulated during surgery (e.g., peritonitis, abscess), within 30-90 days (implant). Important for surveillance, benchmarking, quality improvement. Each has specific diagnostic criteria.', 'easy'),

('e0000413-0002-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 2,
'The optimal timing for prophylactic antibiotic administration is:',
'After skin closure', 'Within 60 minutes before surgical incision (120 minutes for vancomycin and fluoroquinolones) to ensure adequate tissue levels at time of incision', 'The day before surgery', 'Only if infection develops',
'B', 'ANTIBIOTIC PROPHYLAXIS TIMING: give WITHIN 60 MINUTES before incision. RATIONALE: ensures adequate tissue and serum drug levels at time of incision when bacterial contamination occurs. For VANCOMYCIN and FLUOROQUINOLONES: within 120 minutes (longer infusion time). Too early or too late = reduced efficacy. REDOSING: if surgery prolonged (>2 half-lives of antibiotic) or significant blood loss. DURATION: single dose or within 24 hours - extended prophylaxis NOT beneficial, increases resistance and C. diff risk. Choose antibiotic based on likely organisms: cefazolin (most clean cases), additional gram-negative/anaerobic coverage for GI surgery.', 'easy'),

('e0000413-0003-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 3,
'Preoperative skin preparation should use:',
'Soap and water only', 'Chlorhexidine-alcohol based solutions, which have been shown to be superior to povidone-iodine for reducing surgical site infections', 'No preparation is needed', 'Iodine solutions only',
'B', 'SKIN PREPARATION: reduces skin flora at surgical site. CHLORHEXIDINE-ALCOHOL (CHG-alcohol): superior to povidone-iodine in multiple studies. Advantages: rapid onset, persistent activity (binds to skin), effective in blood/serum. POVIDONE-IODINE: still used, less persistent, inactivated by blood. ALCOHOL: rapid bactericidal, evaporates (must be dry before draping - fire risk). TECHNIQUE: apply in concentric circles from incision site outward, allow adequate drying time. PREOPERATIVE BATHING: CHG wipes or shower night before and morning of surgery - reduces skin colonization. Patient HAIR REMOVAL: clipping preferred over shaving (nicks increase SSI).', 'easy'),

('e0000413-0004-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 4,
'Wound classification categories include:',
'Only clean and dirty', 'Clean, clean-contaminated, contaminated, and dirty/infected, with SSI risk increasing with each category', 'Only two categories', 'Based on size only',
'B', 'WOUND CLASSIFICATION (CDC): (1) CLEAN: no inflammation, no entry into GI/GU/respiratory tract, no break in technique. SSI risk ~1-2%. (2) CLEAN-CONTAMINATED: controlled entry into GI/GU/respiratory tract without unusual contamination. SSI risk ~3-5%. (3) CONTAMINATED: open trauma, major break in technique, gross GI spillage, acute non-purulent inflammation. SSI risk ~5-10%. (4) DIRTY/INFECTED: old trauma, existing infection, perforated viscus, pus encountered. SSI risk ~20-40%. Classification guides antibiotic prophylaxis (vs treatment), predicts SSI risk, used for benchmarking. May change during surgery (planned clean becomes contaminated if spillage).', 'easy'),

('e0000413-0005-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 5,
'Perioperative normothermia is important for SSI prevention because:',
'Temperature has no effect', 'Hypothermia impairs immune function and wound healing, and maintaining normothermia (above 36 degrees Celsius) reduces SSI rates', 'Hypothermia is beneficial', 'Only affects cardiac surgery',
'B', 'NORMOTHERMIA for SSI prevention: maintain core temperature >36°C. HYPOTHERMIA effects: (1) impairs IMMUNE function (reduced neutrophil oxidative killing, reduced antibody production). (2) Causes VASOCONSTRICTION, reducing oxygen delivery to wound (oxygen critical for neutrophil killing, collagen synthesis). (3) Impairs coagulation, increases blood loss. EVIDENCE: warming reduces SSI in colorectal surgery (landmark Kurz study). METHODS: forced-air warming blankets (most effective), warmed IV fluids, increased OR temperature, warming mattress. Monitor temperature. Part of SSI prevention BUNDLE (prophylactic antibiotics, normothermia, glucose control, proper skin prep).', 'easy'),

('e0000413-0006-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 6,
'Perioperative glucose control in diabetic patients:',
'Has no impact on SSI', 'Reduces SSI risk, with target glucose levels typically maintained below 180-200 mg/dL during and after surgery', 'Requires very tight control below 80', 'Only matters in cardiac surgery',
'B', 'GLUCOSE CONTROL for SSI prevention: HYPERGLYCEMIA impairs immune function (neutrophil chemotaxis, phagocytosis, killing). TARGET: generally <180-200 mg/dL perioperatively (SCIP, STS guidelines). Very tight control (<110) not shown to be more beneficial and risks hypoglycemia. EVIDENCE: strongest in cardiac surgery (sternal wound infections), but applies broadly. MANAGEMENT: monitor glucose, use insulin infusion or sliding scale as needed. Applies to diabetics AND non-diabetics (stress hyperglycemia). Hemoglobin A1c: if very elevated preoperatively, consider optimizing before elective surgery.', 'easy'),

('e0000413-0007-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 7,
'The SSI prevention bundle includes:',
'Only antibiotics', 'Multiple evidence-based interventions including appropriate antibiotic prophylaxis, skin preparation, normothermia, glucose control, and hair removal with clippers rather than razors', 'Single intervention only', 'Postoperative care only',
'B', 'SSI PREVENTION BUNDLE: combining multiple evidence-based interventions for greater effect. COMPONENTS: (1) Appropriate ANTIBIOTIC prophylaxis (correct drug, correct timing, correct duration). (2) SKIN PREPARATION (CHG-alcohol, preoperative bathing). (3) NORMOTHERMIA (>36°C). (4) GLUCOSE CONTROL (<180-200). (5) Hair removal: CLIPPERS, not razors (or no removal). (6) Supplemental OXYGEN (controversial, some evidence in colorectal). (7) Proper surgical technique (hemostasis, tissue handling). (8) HAND HYGIENE. Bundle approach: compliance with all elements yields greater SSI reduction than individual interventions. Quality improvement through bundle adherence monitoring.', 'easy'),

('e0000413-0008-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 8,
'Appropriate duration of prophylactic antibiotics is:',
'5-7 days postoperatively', 'Within 24 hours of surgery completion, as prolonged prophylaxis does not reduce SSI and increases antibiotic resistance and C. difficile risk', 'Until wound heals', 'Until drains removed',
'B', 'ANTIBIOTIC PROPHYLAXIS DURATION: discontinue WITHIN 24 HOURS of surgery end. Most single dose is sufficient. EVIDENCE: prolonged prophylaxis does NOT reduce SSI (multiple studies). HARMS of prolonged prophylaxis: antibiotic resistance development, C. difficile colitis, adverse drug effects, cost. EXCEPTIONS: cardiac surgery - may extend to 48 hours (limited evidence). Do NOT continue until drains removed, wound healed, or patient discharged. If INFECTION develops, that is treatment (not prophylaxis) - different duration/selection. This is quality measure - "prophylactic antibiotics stopped within 24 hours."', 'easy'),

('e0000413-0009-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 9,
'Risk factors for surgical site infection include:',
'Young age only', 'Diabetes, obesity, smoking, immunosuppression, malnutrition, prolonged surgery, and contaminated wound class', 'Clean wounds only', 'Elective surgery only',
'B', 'SSI RISK FACTORS: PATIENT factors: DIABETES (hyperglycemia), OBESITY (poor tissue perfusion, technical difficulty), SMOKING (impairs oxygen delivery, healing), immunosuppression (steroids, chemotherapy), MALNUTRITION (impairs immune function, healing), advanced age, remote infection, prolonged preoperative hospital stay, ASA class. SURGICAL factors: WOUND CLASS (contaminated > clean), prolonged OPERATIVE TIME, emergency surgery, poor hemostasis, tissue trauma, hypothermia, blood transfusion, foreign body (mesh, prosthesis), inadequate prophylaxis. Risk indices (NNIS) combine ASA, wound class, operative time. Modifiable factors (smoking, glucose) should be optimized preoperatively.', 'easy'),

('e0000413-0010-0000-0000-000000000113', 'd0000413-0000-0000-0000-000000000113', 10,
'Treatment of superficial SSI typically involves:',
'IV antibiotics only', 'Opening the wound to allow drainage, wound care with dressing changes, and antibiotics reserved for cellulitis or systemic signs', 'Immediate reoperation', 'No treatment needed',
'B', 'SUPERFICIAL SSI TREATMENT: (1) OPEN the wound - allow pus to drain (most important step). Remove some or all staples/sutures as needed. (2) WOUND CARE: packing, wet-to-dry dressings, healing by secondary intention or delayed primary closure. (3) ANTIBIOTICS: NOT always needed. Indicated if: significant CELLULITIS surrounding wound, systemic signs (fever, leukocytosis), immunocompromised patient. Drainage is usually sufficient. (4) Culture wound: guide antibiotics if needed. (5) Rule out deeper infection (deep incisional, organ/space). Most superficial SSIs heal well with local care. Deep SSI or organ/space SSI: may need imaging, drainage, possible reoperation.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 113 (Surgical Site Infection Prevention) with 10 self-assessment questions inserted' as status;
