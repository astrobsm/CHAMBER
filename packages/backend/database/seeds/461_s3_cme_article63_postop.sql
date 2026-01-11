-- ============================================================================
-- SURGERY 3 CME ARTICLE 63: Postoperative Care Essentials
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000129-0000-0000-0000-000000000129', 'a0000003-0000-0000-0000-000000000003', 'Postoperative Care Essentials', 'Key postoperative management concepts')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000363-0000-0000-0000-000000000063',
    'c0000129-0000-0000-0000-000000000129',
    'a0000003-0000-0000-0000-000000000003',
    'Postoperative Care: Early Recognition and Management of Complications',
    'Essential Postoperative Monitoring and Intervention',
    'This article covers postoperative care including monitoring parameters, fluid management, pain control, early mobilization, nutrition, recognition and management of common complications (fever, ileus, atelectasis, DVT), and enhanced recovery protocols.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000363-0001-0000-0000-000000000001', 'd0000363-0000-0000-0000-000000000063', 1,
'Postoperative fever on POD 1-2 is most commonly caused by:',
'Wound infection', 'Atelectasis (or inflammatory response to surgery)', 'Urinary tract infection', 'DVT', NULL,
'B', 'Postoperative fever timing (Ws mnemonic): POD 1-2: WIND (atelectasis, pulmonary issues) - most common early cause, also normal inflammatory response to surgery. POD 3-5: WATER (UTI, especially if catheterized). POD 4-6: WALKING (DVT/PE). POD 5-7: WOUND (surgical site infection). POD 7+: WONDER DRUGS (drug fever, C. difficile from antibiotics). Atelectasis is controversial as true cause of fever, but pulmonary issues common early. Low-grade fever (<38.5C) in first 48 hours often does not need extensive workup.', 'easy'),

('e0000363-0002-0000-0000-000000000002', 'd0000363-0000-0000-0000-000000000063', 2,
'Postoperative ileus:',
'Requires immediate surgery', 'Is temporary cessation of bowel function after abdominal surgery, managed supportively with NPO, NG decompression if needed, IV fluids, and mobilization', 'Only occurs after bowel surgery', 'Is caused by adhesions', NULL,
'B', 'Postoperative ileus: functional bowel paralysis after surgery (especially abdominal). Normal duration: small bowel recovers first (24 hours), stomach (24-48 hours), colon (48-72+ hours). Prolonged ileus (>3-5 days): consider causes (electrolyte abnormalities - hypokalemia, opioids, infection, mechanical obstruction). Management: supportive - NPO or clear liquids, NG tube if vomiting/distension, IV fluids, correct electrolytes, minimize opioids, early mobilization. Alvimopan (mu-opioid antagonist) may help. Distinguish from mechanical obstruction if no improvement.', 'easy'),

('e0000363-0003-0000-0000-000000000003', 'd0000363-0000-0000-0000-000000000063', 3,
'Enhanced Recovery After Surgery (ERAS) protocols emphasize:',
'Prolonged bed rest', 'Multimodal pain control, early mobilization, early feeding, and minimizing opioids and IV fluids', 'Long preoperative fasting', 'Routine NG tubes', NULL,
'B', 'Enhanced Recovery After Surgery (ERAS): evidence-based perioperative protocols. Key elements: PREOPERATIVE: patient education, no prolonged fasting (carbohydrate drink 2-3 hours before), no bowel prep for most colorectal, POSTOPERATIVE: multimodal analgesia (minimize opioids), early oral feeding (same day or POD1), early mobilization (out of bed POD0), minimize IV fluids (goal-directed), no routine NG tubes/drains. Benefits: reduced LOS, fewer complications, faster recovery, lower costs. Widely adopted in colorectal, increasingly other surgeries.', 'easy'),

('e0000363-0004-0000-0000-000000000004', 'd0000363-0000-0000-0000-000000000063', 4,
'Multimodal analgesia in postoperative pain management:',
'Relies solely on opioids', 'Combines multiple analgesic mechanisms (NSAIDs, acetaminophen, regional anesthesia, opioids if needed) to improve pain control and reduce opioid use', 'Is less effective than opioids alone', 'Is only used in minor surgery', NULL,
'B', 'Multimodal analgesia: combining analgesics with different mechanisms for synergistic effect and reduced opioid requirements. Components: (1) Scheduled acetaminophen; (2) NSAIDs (if no contraindication); (3) Regional anesthesia (epidural, nerve blocks, wound infiltration); (4) Adjuncts (gabapentinoids, ketamine, lidocaine infusion); (5) Opioids as rescue. Benefits: better pain control, reduced opioid side effects (ileus, sedation, respiratory depression, addiction risk), faster recovery. ERAS cornerstone. Opioid-sparing strategies increasingly important.', 'easy'),

('e0000363-0005-0000-0000-000000000005', 'd0000363-0000-0000-0000-000000000063', 5,
'Preventing postoperative atelectasis includes:',
'Keeping patient sedated and still', 'Incentive spirometry, early mobilization, adequate pain control, and head of bed elevation', 'Prolonged intubation', 'Avoiding coughing', NULL,
'B', 'Atelectasis prevention: (1) Incentive spirometry - 10 breaths every 1-2 hours while awake; (2) Early mobilization - out of bed, walking; (3) Adequate pain control - pain limits deep breathing; (4) Head of bed elevation (30-45 degrees); (5) Deep breathing and coughing exercises; (6) Avoid prolonged immobility. Risk factors: upper abdominal/thoracic surgery, prolonged anesthesia, obesity, smoking, pre-existing lung disease. Atelectasis can lead to pneumonia. Prevention is key - treatment is same plus chest physiotherapy, bronchodilators, possible bronchoscopy if mucus plugging.', 'easy'),

('e0000363-0006-0000-0000-000000000006', 'd0000363-0000-0000-0000-000000000063', 6,
'Postoperative oliguria (urine output less than 0.5 mL/kg/hour):',
'Always requires diuretics', 'Should prompt assessment of volume status, ensuring adequate resuscitation before considering other causes', 'Is normal and requires no action', 'Always indicates renal failure', NULL,
'B', 'Postoperative oliguria approach: First assess VOLUME STATUS - most common cause is hypovolemia (blood loss, third-spacing, inadequate resuscitation). Assessment: vital signs, JVP, mucous membranes, skin turgor, urine specific gravity, recent I/O. If hypovolemic: fluid challenge. Other causes: urinary retention (check for bladder distension), catheter obstruction (flush), renal injury (pre-renal from hypoperfusion, ATN, nephrotoxins). Do not give diuretics to hypovolemic patient. Adequate urine output: >0.5 mL/kg/hour.', 'easy'),

('e0000363-0007-0000-0000-000000000007', 'd0000363-0000-0000-0000-000000000063', 7,
'Early warning of anastomotic leak after GI surgery includes:',
'Only peritonitis', 'Tachycardia, fever, increasing pain, malaise, elevated WBC, and decreased urine output, even without obvious peritonitis', 'Normal postoperative course', 'Only wound changes', NULL,
'B', 'Anastomotic leak recognition: potentially devastating complication. Early signs (often subtle): (1) Tachycardia (most sensitive early sign - "the unwell patient"); (2) Fever; (3) Increasing abdominal pain out of proportion; (4) General malaise, failure to progress as expected; (5) Rising WBC or inflammatory markers; (6) Oliguria. Later signs: frank peritonitis, sepsis, feculent drain output. "Failure to progress normally" should raise concern. Maintain high suspicion days 3-7. CT with contrast if suspected. Treatment: sepsis management, source control (drainage, reoperation if needed).', 'medium'),

('e0000363-0008-0000-0000-000000000008', 'd0000363-0000-0000-0000-000000000063', 8,
'VTE prophylaxis after major abdominal surgery should continue:',
'Only during hospitalization', 'For extended duration (up to 4 weeks) in high-risk patients undergoing major cancer surgery', 'For 1 day only', 'Is not needed if patient is mobilizing', NULL,
'B', 'Extended VTE prophylaxis: standard prophylaxis during hospitalization, but high-risk patients (major abdominal/pelvic surgery for cancer) benefit from extended prophylaxis (4 weeks total). Risk factors: cancer surgery, prolonged surgery, immobility, prior VTE, obesity. Agents: LMWH (enoxaparin) or DOAC (rivaroxaban, apixaban). ACCP, ASCO guidelines recommend extended prophylaxis for major cancer surgery. Balance bleeding risk. Mechanical prophylaxis (IPC, stockings) also important. Early mobilization does not eliminate need for pharmacological prophylaxis.', 'medium'),

('e0000363-0009-0000-0000-000000000009', 'd0000363-0000-0000-0000-000000000063', 9,
'Urinary catheter removal after surgery:',
'Should remain for 7 days routinely', 'Should occur as early as possible (within 1-2 days for most surgeries) to reduce CAUTI risk', 'Is not important', 'Only after bowel function returns', NULL,
'B', 'Urinary catheter removal: early removal reduces catheter-associated UTI (CAUTI). Recommendations: remove within 24-48 hours for most surgeries. Longer catheterization needed: pelvic surgery with risk of urinary retention, complex fluid management, critically ill, epidural analgesia, specific urological indications. Bladder scanner can assess for retention if concerned after removal. CAUTI is one of most common hospital-acquired infections. Catheter necessity should be assessed daily. ERAS protocols emphasize early removal.', 'easy'),

('e0000363-0010-0000-0000-000000000010', 'd0000363-0000-0000-0000-000000000063', 10,
'Postoperative delirium is:',
'Normal and expected in all patients', 'An acute confusional state more common in elderly patients, associated with increased morbidity and mortality, requiring prevention strategies and management', 'Only caused by medications', 'Not a significant problem', NULL,
'B', 'Postoperative delirium: acute confusional state (fluctuating attention, disorganized thinking, altered consciousness). Risk factors: age >65, cognitive impairment, sensory impairment, poor nutrition, multiple medications, surgery type (orthopedic, cardiac). Consequences: increased LOS, morbidity, mortality, long-term cognitive decline, institutionalization. Prevention: minimize sedatives/anticholinergics, maintain orientation (glasses, hearing aids), sleep hygiene, early mobilization, treat pain, correct metabolic derangements. Treatment: treat underlying cause, reorientation, minimize medications, low-dose antipsychotics if severe.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 63 (Postoperative Care Essentials) with 10 self-assessment questions inserted' as status;
