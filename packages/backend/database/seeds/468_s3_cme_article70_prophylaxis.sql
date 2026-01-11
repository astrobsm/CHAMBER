-- ============================================================================
-- SURGERY 3 CME ARTICLE 70: Perioperative Antibiotic Prophylaxis
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000136-0000-0000-0000-000000000136', 'a0000003-0000-0000-0000-000000000003', 'Perioperative Antibiotic Prophylaxis', 'Surgical antimicrobial prophylaxis principles')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000370-0000-0000-0000-000000000070',
    'c0000136-0000-0000-0000-000000000136',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Antibiotic Prophylaxis: Evidence-Based Practice',
    'Timing, Selection, and Duration',
    'This article covers principles of surgical antibiotic prophylaxis, wound classification, antibiotic selection by procedure, optimal timing (within 60 minutes before incision), redosing during surgery, duration of prophylaxis, and weight-based dosing.',
    'Department of Surgery, UNTH',
    1.5,
    15,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000370-0001-0000-0000-000000000001', 'd0000370-0000-0000-0000-000000000070', 1,
'The optimal timing for administration of prophylactic antibiotics before surgery is:',
'24 hours before incision', 'Within 60 minutes before surgical incision', 'After the first incision is made', 'After wound closure', NULL,
'B', 'Prophylactic antibiotic timing: WITHIN 60 MINUTES before surgical incision. Rationale: ensures adequate tissue antibiotic levels at time of bacterial contamination. Too early (>60 min): drug levels may decline. Too late (after incision): bacteria already inoculated, prophylaxis less effective. Exceptions: vancomycin and fluoroquinolones - 120 minutes (longer infusion time). Studies show administration within this window reduces SSI rates. Should be documented in surgical safety checklist.', 'easy'),

('e0000370-0002-0000-0000-000000000002', 'd0000370-0000-0000-0000-000000000070', 2,
'Cefazolin is the antibiotic of choice for prophylaxis in:',
'MRSA-colonized patients undergoing cardiac surgery', 'Most clean and clean-contaminated surgeries including orthopedic, vascular, and abdominal procedures', 'Beta-lactam allergic patients', 'Colorectal surgery as sole agent', NULL,
'B', 'Cefazolin: first-line prophylactic antibiotic for MOST surgeries. First-generation cephalosporin. Coverage: gram-positives (S. aureus, streptococci), some gram-negatives. Appropriate for: cardiac, orthopedic, vascular, general surgery clean/clean-contaminated cases. Dose: 2g IV (3g if >120 kg). Half-life 1.8 hours. MRSA-colonized: add vancomycin. Beta-lactam allergy: vancomycin or clindamycin. Colorectal: add metronidazole (anaerobic coverage) or use cefoxitin/ertapenem. Long procedures: redose q3-4 hours.', 'easy'),

('e0000370-0003-0000-0000-000000000003', 'd0000370-0000-0000-0000-000000000070', 3,
'Redosing of prophylactic antibiotics during surgery is indicated when:',
'Never needed during surgery', 'Surgery duration exceeds 2 half-lives of the antibiotic or significant blood loss (greater than 1.5L) occurs', 'At wound closure only', 'Only for contaminated cases', NULL,
'B', 'Intraoperative redosing: maintains adequate tissue antibiotic levels during prolonged procedures. Indications: surgery duration exceeds 2 HALF-LIVES of antibiotic; significant BLOOD LOSS (>1.5L - drug lost with blood, hemodilution). Cefazolin: redose q3-4 hours (half-life ~2 hours). Cefoxitin: redose q2 hours (shorter half-life). Vancomycin: rarely needs redosing (long half-life). Metronidazole: q6-8 hours if needed. Documentation and timing crucial. Omission of redosing associated with increased SSI in long cases.', 'easy'),

('e0000370-0004-0000-0000-000000000004', 'd0000370-0000-0000-0000-000000000070', 4,
'Duration of postoperative prophylactic antibiotics should typically be:',
'7 days for all surgeries', 'Discontinued within 24 hours of surgery for most procedures', '48-72 hours routinely', 'Until all drains are removed', NULL,
'B', 'Prophylactic antibiotic duration: should be DISCONTINUED WITHIN 24 HOURS for most surgeries. Evidence: no benefit from prolonged prophylaxis >24 hours; increases antibiotic resistance, adverse effects, cost, C. difficile risk. Guidelines (SCIP, WHO): single dose often sufficient; maximum 24 hours. Exceptions: cardiac surgery (48 hours in some protocols), specific situations. Common error: continuing prophylaxis for days postoperatively. Presence of drains is NOT an indication for prolonged antibiotics. Therapeutic (not prophylactic) antibiotics if infection develops.', 'easy'),

('e0000370-0005-0000-0000-000000000005', 'd0000370-0000-0000-0000-000000000070', 5,
'For colorectal surgery, appropriate prophylaxis includes:',
'Cefazolin alone', 'Cefazolin plus metronidazole or cefoxitin or ertapenem to cover both aerobic and anaerobic flora', 'Vancomycin alone', 'No prophylaxis needed', NULL,
'B', 'Colorectal surgery prophylaxis: must cover gram-positives, gram-negatives, AND ANAEROBES (Bacteroides fragilis). Options: (1) Cefazolin + metronidazole; (2) Cefoxitin (second-gen cephalosporin with anaerobic coverage, shorter half-life - redose q2h); (3) Ertapenem (single dose, convenient). ORAL mechanical bowel prep with oral antibiotics (neomycin + metronidazole or erythromycin) day before surgery reduces SSI when combined with IV prophylaxis. Avoid cefazolin alone (inadequate anaerobic coverage). Weight-based dosing important.', 'easy'),

('e0000370-0006-0000-0000-000000000006', 'd0000370-0000-0000-0000-000000000070', 6,
'In patients with documented severe penicillin allergy (anaphylaxis), appropriate alternatives include:',
'Cefazolin', 'Vancomycin or clindamycin for gram-positive coverage, with aztreonam or aminoglycoside for gram-negative coverage if needed', 'Amoxicillin-clavulanate', 'Penicillin desensitization for every case', NULL,
'B', 'Beta-lactam allergy alternatives: SEVERE ALLERGY (anaphylaxis, angioedema): avoid all beta-lactams. Alternatives: VANCOMYCIN (MRSA, gram-positives), CLINDAMYCIN (gram-positives). For gram-negative coverage add: AZTREONAM (safe in penicillin allergy) or aminoglycoside (gentamicin) or fluoroquinolone. MILD ALLERGY (rash only): cephalosporins generally safe (cross-reactivity <2% with 2nd+ generation). Skin testing available. Document allergy type in preoperative assessment. Allergy should not be reason to omit prophylaxis entirely.', 'medium'),

('e0000370-0007-0000-0000-000000000007', 'd0000370-0000-0000-0000-000000000070', 7,
'Surgical wound classification "contaminated" includes:',
'Elective surgery with primary closure, respiratory tract entered', 'Fresh traumatic wounds, major breaks in sterile technique, or spillage from GI tract', 'Surgery on actively infected tissue with pus', 'Hernia repair without bowel entry', NULL,
'B', 'Surgical wound classification: CLEAN: elective, primary closure, no inflammation, no entry to respiratory/alimentary/GU tract (hernia, thyroid). CLEAN-CONTAMINATED: controlled entry to respiratory/alimentary/GU tract without unusual contamination, minor break in technique. CONTAMINATED: fresh traumatic wounds (<4 hours), MAJOR break in sterile technique, gross spillage from GI tract, acute non-purulent inflammation. DIRTY-INFECTED: old traumatic wounds (>4 hours), established infection, perforated viscera, pus. SSI rates: clean 1-2%, clean-contaminated 2-8%, contaminated 10-15%, dirty 25-40%.', 'easy'),

('e0000370-0008-0000-0000-000000000008', 'd0000370-0000-0000-0000-000000000070', 8,
'Vancomycin is added to surgical prophylaxis when:',
'For all surgical patients', 'The patient is MRSA-colonized or the institution has high MRSA rates, particularly for implant/prosthetic surgery', 'It replaces cefazolin for all procedures', 'Only for dirty wounds', NULL,
'B', 'Vancomycin in prophylaxis: NOT routine for all patients. Indications to ADD vancomycin: (1) Known MRSA colonization; (2) High institutional MRSA SSI rates; (3) Prosthetic/implant surgery in MRSA-prevalent settings (joint replacement, cardiac surgery, neurosurgical implants). When added: does NOT replace cefazolin (vancomycin has inadequate gram-negative coverage). Give both cefazolin + vancomycin. Timing: start vancomycin 120 minutes before incision (slow infusion needed to prevent red man syndrome). Overuse promotes vancomycin-resistant organisms.', 'medium'),

('e0000370-0009-0000-0000-000000000009', 'd0000370-0000-0000-0000-000000000070', 9,
'Weight-based dosing of cefazolin for prophylaxis recommends:',
'1g for all patients', '2g for patients less than 120 kg and 3g for patients 120 kg or greater', '500 mg for all patients', 'Dose does not change with weight', NULL,
'B', 'Cefazolin weight-based dosing: OBESE patients have larger volume of distribution; standard doses may not achieve adequate tissue levels. Recommendations: <120 kg: 2g IV; >=120 kg: 3g IV. Some guidelines: 2g for 60-120 kg, 3g for >120 kg. Adequate dosing particularly important for procedures with implants, deep infections. Also applies to redosing during long surgeries. Other antibiotics may also require dose adjustment. Obesity associated with increased SSI rates; adequate antibiotic dosing is one modifiable factor.', 'easy'),

('e0000370-0010-0000-0000-000000000010', 'd0000370-0000-0000-0000-000000000070', 10,
'Surgical prophylaxis is generally NOT indicated for:',
'Cardiac valve surgery', 'Clean procedures with low infection risk such as simple uncomplicated hernia repair in some guidelines', 'Colorectal surgery', 'Joint replacement', NULL,
'B', 'Prophylaxis indications: generally recommended for clean-contaminated, contaminated, and dirty wounds; clean procedures with implants/prostheses; and high-risk patients. Prophylaxis may be OMITTED for: some LOW-RISK CLEAN procedures without implants (simple hernia repair - though practice varies, breast biopsy, some minor procedures). However: most surgeons still give prophylaxis for hernia (foreign mesh often used). Prophylaxis always indicated: cardiac surgery, joint replacement, vascular prostheses, GI surgery, contaminated wounds. Cost-benefit analysis considers baseline SSI risk.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 70 (Antibiotic Prophylaxis) with 10 self-assessment questions inserted' as status;
