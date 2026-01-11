-- ============================================================================
-- SURGERY 3 CME ARTICLE 17: Perioperative Care
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000083-0000-0000-0000-000000000083', 'a0000003-0000-0000-0000-000000000003', 'Perioperative Care', 'Preoperative assessment and postoperative management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000317-0000-0000-0000-000000000017',
    'c0000083-0000-0000-0000-000000000083',
    'a0000003-0000-0000-0000-000000000003',
    'Perioperative Care: Optimizing Surgical Outcomes',
    'Preoperative Assessment, Risk Stratification and Enhanced Recovery',
    'This article covers preoperative assessment including cardiac and pulmonary risk, ASA classification, anticoagulation management, prophylaxis against VTE and SSI, Enhanced Recovery After Surgery (ERAS) protocols, and management of common postoperative complications.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000317-0001-0000-0000-000000000001', 'd0000317-0000-0000-0000-000000000017', 1,
'The ASA Physical Status Classification System:',
'Predicts exact mortality risk with precision', 'Classifies patients by baseline health status from I (healthy) to VI (brain-dead organ donor)', 'Is only used for cardiac surgery', 'Determines specific anesthetic agents to use', NULL,
'B', 'ASA classification: I = healthy, II = mild systemic disease, III = severe systemic disease, IV = severe disease that is constant threat to life, V = moribund (not expected to survive without surgery), VI = brain-dead organ donor. E suffix for emergency. It is a subjective assessment of preoperative health status, correlates with outcomes but does not predict exact risk.', 'easy'),

('e0000317-0002-0000-0000-000000000002', 'd0000317-0000-0000-0000-000000000017', 2,
'According to the Revised Cardiac Risk Index (RCRI), risk factors for perioperative cardiac events include:',
'Only age over 70 years', 'High-risk surgery, ischemic heart disease, heart failure, cerebrovascular disease, diabetes on insulin, creatinine >2', 'BMI over 30', 'Female gender', NULL,
'B', 'RCRI (Lee criteria) - 6 risk factors: (1) High-risk surgery (intraperitoneal, intrathoracic, suprainguinal vascular), (2) History of ischemic heart disease, (3) History of heart failure, (4) History of cerebrovascular disease, (5) Insulin-dependent diabetes, (6) Preoperative creatinine >2 mg/dL. Each factor = 1 point; risk increases with score: 0 = 0.4%, 1 = 0.9%, 2 = 6.6%, ≥3 = 11%.', 'medium'),

('e0000317-0003-0000-0000-000000000003', 'd0000317-0000-0000-0000-000000000017', 3,
'Antibiotic prophylaxis for surgical site infection should be administered:',
'24 hours before surgery', 'Within 60 minutes before incision', 'After wound closure', 'Only if infection develops', NULL,
'B', 'Antibiotic prophylaxis should be given within 60 minutes before incision (120 minutes for vancomycin or fluoroquinolones due to longer infusion time). Ensures adequate tissue levels at time of potential contamination. Redose for prolonged procedures (> 2 half-lives) or significant blood loss. Typically discontinue within 24 hours postoperatively. Choice depends on procedure and likely pathogens.', 'easy'),

('e0000317-0004-0000-0000-000000000004', 'd0000317-0000-0000-0000-000000000017', 4,
'For a patient on warfarin requiring elective surgery, appropriate management is:',
'Continue warfarin through surgery', 'Stop warfarin 5 days before surgery, bridge with LMWH if high thrombotic risk', 'Stop warfarin 24 hours before surgery', 'Double the warfarin dose before surgery', NULL,
'B', 'Warfarin should be stopped 5 days preoperatively (allows INR to normalize). Bridging with LMWH is considered for high thrombotic risk patients (mechanical heart valve, recent VTE, high-risk AFib). For low/moderate risk, bridging may not be needed. Resume warfarin postoperatively when hemostasis is secure (typically 12-24 hours). Direct oral anticoagulants have shorter half-lives (stop 24-48 hours before).', 'medium'),

('e0000317-0005-0000-0000-000000000005', 'd0000317-0000-0000-0000-000000000017', 5,
'Venous thromboembolism (VTE) prophylaxis for moderate-risk surgical patients typically includes:',
'Aspirin only', 'Low molecular weight heparin or unfractionated heparin plus mechanical prophylaxis', 'No prophylaxis needed', 'Warfarin started 1 week before surgery', NULL,
'B', 'VTE prophylaxis depends on risk stratification (Caprini score). Low risk: early ambulation only. Moderate risk: pharmacologic (LMWH, UFH, fondaparinux) OR mechanical (IPC, GCS). High risk: pharmacologic AND mechanical. Very high risk: extended prophylaxis (4 weeks for major cancer surgery). Balance bleeding risk vs. VTE risk. Start pharmacologic prophylaxis preoperatively or postoperatively depending on bleeding risk.', 'medium'),

('e0000317-0006-0000-0000-000000000006', 'd0000317-0000-0000-0000-000000000017', 6,
'Enhanced Recovery After Surgery (ERAS) protocols include:',
'Prolonged NPO status and bedrest', 'Multimodal analgesia, early oral intake, early mobilization, minimal drains/tubes', 'Routine nasogastric tube decompression', 'Prolonged IV fluids', NULL,
'B', 'ERAS protocols improve outcomes and reduce length of stay. Key elements: preoperative counseling and carbohydrate loading; minimize fasting; multimodal opioid-sparing analgesia; goal-directed fluid therapy; avoid nasogastric tubes/drains when possible; early oral intake; early mobilization; audit compliance. Evidence strongest for colorectal surgery but applicable broadly.', 'easy'),

('e0000317-0007-0000-0000-000000000007', 'd0000317-0000-0000-0000-000000000017', 7,
'Postoperative fever on days 3-5 is most commonly caused by:',
'Atelectasis', 'Wound infection or UTI', 'Drug reaction', 'Malignant hyperthermia', NULL,
'B', 'Postoperative fever timing (Ws mnemonic): Day 0-2: Wind (atelectasis), Water (UTI); Day 3-5: Wound (surgical site infection), Water (UTI), Walking (DVT); Day 5-7: Drug fever; Week 2+: Deep abscess. However, wound infection and UTI are common causes on days 3-5. Evaluate based on clinical context, examination, and targeted investigations.', 'medium'),

('e0000317-0008-0000-0000-000000000008', 'd0000317-0000-0000-0000-000000000017', 8,
'Postoperative ileus is characterized by:',
'Mechanical obstruction', 'Functional inhibition of bowel motility without mechanical obstruction', 'Bowel perforation', 'Volvulus', NULL,
'B', 'Postoperative ileus is functional inhibition of bowel motility without mechanical obstruction. Normal after abdominal surgery (small bowel recovers in 24 hours, stomach 24-48 hours, colon 3-5 days). Prolonged ileus (>3-5 days) is pathological. Causes: opioids, electrolyte imbalance, intra-abdominal complications. Management: correct electrolytes, minimize opioids, early mobilization, prokinetics (limited evidence), identify/treat complications.', 'easy'),

('e0000317-0009-0000-0000-000000000009', 'd0000317-0000-0000-0000-000000000017', 9,
'The most important factor in preventing surgical site infection is:',
'Type of suture material', 'Proper surgical technique and adherence to infection prevention bundle', 'Patient age', 'Duration of hospital stay before surgery', NULL,
'B', 'Surgical technique is paramount: gentle tissue handling, hemostasis, avoiding dead space, appropriate closure. Infection prevention bundle: appropriate antibiotic prophylaxis (timing, agent, duration), preoperative bathing, hair removal (clipping not shaving), glucose control, normothermia, oxygenation. Modifiable patient factors: smoking cessation, glycemic control, nutritional optimization.', 'easy'),

('e0000317-0010-0000-0000-000000000010', 'd0000317-0000-0000-0000-000000000017', 10,
'A patient develops acute shortness of breath and hypotension on postoperative day 5. The most likely diagnosis is:',
'Postoperative ileus', 'Pulmonary embolism', 'Wound infection', 'Urinary retention', NULL,
'B', 'Acute dyspnea and hypotension on POD 5 suggests pulmonary embolism (VTE risk peaks in first week). Other causes: MI, pneumonia, aspiration, ARDS. PE presentation: dyspnea, pleuritic chest pain, tachycardia, hypoxia, hypotension (massive PE). Diagnosis: D-dimer (if low probability), CT pulmonary angiography (gold standard). Treatment: anticoagulation; thrombolysis or embolectomy for massive PE with hemodynamic instability.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 17 (Perioperative Care) with 10 self-assessment questions inserted' as status;
