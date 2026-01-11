-- ============================================================================
-- SURGERY 3 CME ARTICLE 62: Surgical Site Infection Prevention
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000128-0000-0000-0000-000000000128', 'a0000003-0000-0000-0000-000000000003', 'Surgical Site Infection Prevention', 'SSI prevention and management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000362-0000-0000-0000-000000000062',
    'c0000128-0000-0000-0000-000000000128',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Site Infection: Prevention and Management',
    'Evidence-Based Strategies for SSI Reduction',
    'This article covers surgical site infection classification, risk factors, prevention bundles, antibiotic prophylaxis guidelines, skin preparation, glycemic control, normothermia, and management of established surgical site infections.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000362-0001-0000-0000-000000000001', 'd0000362-0000-0000-0000-000000000062', 1,
'Surgical wound classification "clean-contaminated" refers to:',
'No entry into respiratory, alimentary, or genitourinary tracts', 'Controlled entry into respiratory, alimentary, or genitourinary tracts without unusual contamination', 'Gross contamination with pus', 'Traumatic wound over 6 hours old', NULL,
'B', 'CDC surgical wound classification: CLEAN: no entry into respiratory, GI, GU tract; no inflammation; closed primarily. SSI rate: <2%. CLEAN-CONTAMINATED: controlled entry into respiratory, alimentary, GU tracts without unusual contamination. SSI rate: 3-10%. CONTAMINATED: open traumatic wounds <4 hours, gross spillage from GI, entry into GU with infected urine, major break in sterile technique. SSI rate: 10-20%. DIRTY/INFECTED: old traumatic wounds, existing infection, perforated viscera. SSI rate: >20%. Classification guides antibiotic prophylaxis decisions.', 'easy'),

('e0000362-0002-0000-0000-000000000002', 'd0000362-0000-0000-0000-000000000062', 2,
'Optimal timing for prophylactic antibiotic administration is:',
'After skin incision', 'Within 60 minutes before surgical incision (or 120 minutes for vancomycin/fluoroquinolones)', 'At the end of surgery', '24 hours before surgery', NULL,
'B', 'Antibiotic prophylaxis timing: WITHIN 60 MINUTES before incision (goal: adequate tissue levels at time of contamination). Exceptions: vancomycin, fluoroquinolones require longer infusion - give within 120 minutes. Too early: subtherapeutic levels. Too late (after incision): contamination already occurred, reduced efficacy. Redosing: for prolonged surgery (>2 half-lives of antibiotic) or significant blood loss. Duration: single dose or maximum 24 hours postoperatively. Extended prophylaxis (>24h) not beneficial and promotes resistance.', 'easy'),

('e0000362-0003-0000-0000-000000000003', 'd0000362-0000-0000-0000-000000000062', 3,
'Cefazolin is the antibiotic of choice for prophylaxis in most clean and clean-contaminated surgeries because:',
'It covers anaerobes well', 'It provides good gram-positive and some gram-negative coverage, adequate tissue penetration, favorable safety profile, and reasonable cost', 'It is the newest antibiotic', 'It covers MRSA', NULL,
'B', 'Cefazolin (first-generation cephalosporin): workhorse of surgical prophylaxis. Coverage: gram-positive (staph, strep - common skin flora/SSI pathogens), some gram-negative. Advantages: well-established efficacy, good tissue levels, long half-life (allows single dose), favorable safety, low cost. Dose: 2g (or 3g if >120kg). Use in: most clean and clean-contaminated cases. Limitations: no MRSA coverage (use vancomycin if MRSA risk), limited anaerobic coverage (add metronidazole for colorectal). Penicillin allergy: consider clindamycin or vancomycin.', 'easy'),

('e0000362-0004-0000-0000-000000000004', 'd0000362-0000-0000-0000-000000000062', 4,
'Maintaining normothermia (temperature greater than 36C) during surgery:',
'Has no impact on SSI', 'Reduces SSI risk by maintaining immune function and tissue oxygenation', 'Increases SSI risk', 'Is only important for comfort', NULL,
'B', 'Normothermia and SSI prevention: perioperative hypothermia (<36C) associated with increased SSI. Mechanisms: hypothermia causes vasoconstriction (reduced tissue oxygen delivery), impairs neutrophil function, reduces oxidative killing of bacteria, impairs collagen synthesis. Trials show maintaining normothermia reduces SSI. SSI prevention bundle includes: forced-air warming, warmed IV fluids, monitoring temperature, temperature >36C. Also reduces bleeding, cardiac events, improves wound healing. Universal component of SSI prevention bundles.', 'easy'),

('e0000362-0005-0000-0000-000000000005', 'd0000362-0000-0000-0000-000000000062', 5,
'Perioperative glucose control to reduce SSI:',
'Is only important in diabetics', 'Is important for all surgical patients, with target glucose less than 180-200 mg/dL in the perioperative period', 'Tight control to less than 100 mg/dL is recommended', 'Has no evidence supporting its use', NULL,
'B', 'Perioperative glycemic control: hyperglycemia impairs neutrophil function, increases SSI risk (even in non-diabetics - stress hyperglycemia). Targets: glucose <180-200 mg/dL (some guidelines <180). Applies to diabetics AND non-diabetics. Very tight control (<110) associated with hypoglycemia risk without added benefit (NICE-SUGAR trial). SSI prevention bundles include glycemic control. Monitor and treat hyperglycemia perioperatively with insulin. Preoperative HbA1c >8% associated with increased SSI in elective surgery - consider optimization.', 'medium'),

('e0000362-0006-0000-0000-000000000006', 'd0000362-0000-0000-0000-000000000062', 6,
'Skin preparation for surgery:',
'Requires shaving the night before', 'Should use alcohol-based chlorhexidine, with hair removal by clipping (not shaving) if necessary, immediately before surgery', 'Plain soap is sufficient', 'Betadine is always superior to chlorhexidine', NULL,
'B', 'Skin preparation best practices: (1) Antiseptic: alcohol-based chlorhexidine gluconate (CHG) superior to povidone-iodine in most settings (except certain mucosal areas); (2) Hair removal: only if necessary for surgery, clip (do not shave - razors cause micro-abrasions increasing SSI), immediately before surgery (not the night before); (3) Preoperative CHG bathing/showering: may reduce bacterial load, increasingly recommended. Allow antiseptic to dry completely (especially alcohol-based for fire safety, and for optimal antimicrobial effect).', 'easy'),

('e0000362-0007-0000-0000-000000000007', 'd0000362-0000-0000-0000-000000000062', 7,
'Superficial vs deep vs organ/space surgical site infection:',
'Are all treated the same', 'Superficial involves skin/subcutaneous only; deep involves fascia/muscle; organ/space involves body spaces opened/manipulated during surgery', 'Only organ/space SSI requires treatment', 'Only superficial SSI is serious', NULL,
'B', 'SSI classification (CDC): SUPERFICIAL INCISIONAL: involves skin and subcutaneous tissue only (within 30 days). Treatment: open wound, local care, antibiotics if cellulitis. DEEP INCISIONAL: involves deep soft tissue (fascia, muscle) (within 30-90 days for implants). Treatment: may need operative debridement. ORGAN/SPACE: involves organs or body spaces opened/manipulated during surgery (e.g., intra-abdominal abscess, meningitis after craniotomy) (within 30-90 days). Treatment: often requires drainage, source control. All SSI require recognition and appropriate treatment.', 'easy'),

('e0000362-0008-0000-0000-000000000008', 'd0000362-0000-0000-0000-000000000062', 8,
'Risk factors for SSI include all EXCEPT:',
'Diabetes mellitus', 'Obesity', 'Malnutrition', 'Ambulatory surgery in healthy patient', NULL,
'D', 'SSI risk factors: PATIENT: diabetes, obesity, malnutrition (albumin <3), smoking, immunosuppression, ASA >2, extremes of age, prolonged preoperative hospitalization, remote infection. SURGICAL: wound classification, duration of surgery, emergency surgery, implant placement, inadequate hemostasis, dead space, tissue trauma. PERIOPERATIVE: hypothermia, hyperglycemia, inadequate prophylaxis, improper skin prep, poor oxygenation. Ambulatory surgery in a healthy patient is lowest risk. NNIS/NHSN risk index combines ASA, wound class, and duration for risk stratification.', 'easy'),

('e0000362-0009-0000-0000-000000000009', 'd0000362-0000-0000-0000-000000000062', 9,
'Management of a superficial SSI with purulent drainage:',
'Antibiotics alone', 'Open the wound, drain the pus, pack loosely, and allow healing by secondary intention; antibiotics only if cellulitis or systemic signs', 'Close the wound tighter', 'Apply more dressing without opening', NULL,
'B', 'Superficial SSI management: Source control is key. (1) Open wound (remove sutures/staples over affected area); (2) Drain purulent material; (3) Break up loculations; (4) Pack loosely or negative pressure if appropriate; (5) Allow healing by secondary intention (or delayed primary closure). Antibiotics: NOT always needed if adequate drainage. Indicated if: surrounding cellulitis, systemic signs (fever), immunocompromised. Deep SSI and organ/space SSI often need operative intervention. Cultures guide antibiotic therapy if systemic treatment needed.', 'easy'),

('e0000362-0010-0000-0000-000000000010', 'd0000362-0000-0000-0000-000000000062', 10,
'SSI prevention bundles typically include all EXCEPT:',
'Appropriate antibiotic prophylaxis', 'Normothermia', 'Glycemic control', 'Extended prophylactic antibiotics for 5-7 days', NULL,
'D', 'SSI prevention bundles (SCIP, WHO, CDC recommendations): (1) Appropriate antibiotic prophylaxis (correct drug, timing, dosing); (2) Normothermia (>36C); (3) Glycemic control (<180-200 mg/dL); (4) Proper skin preparation (chlorhexidine-alcohol, clipping not shaving); (5) Supplemental oxygen (controversial but included in some bundles); (6) Smoking cessation before elective surgery; (7) Preoperative bathing. EXTENDED ANTIBIOTICS (>24 hours) are NOT recommended - do not reduce SSI and promote resistance. Bundle compliance improves SSI rates.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 62 (Surgical Site Infection Prevention) with 10 self-assessment questions inserted' as status;
