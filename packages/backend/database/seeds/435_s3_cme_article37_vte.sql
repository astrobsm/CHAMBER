-- ============================================================================
-- SURGERY 3 CME ARTICLE 37: Venous Thromboembolism in Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000103-0000-0000-0000-000000000103', 'a0000003-0000-0000-0000-000000000003', 'Venous Thromboembolism', 'DVT and PE prevention and management in surgical patients')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000337-0000-0000-0000-000000000037',
    'c0000103-0000-0000-0000-000000000103',
    'a0000003-0000-0000-0000-000000000003',
    'Venous Thromboembolism: Prevention and Management',
    'DVT Prophylaxis and PE Treatment in Surgical Patients',
    'This article covers venous thromboembolism (VTE) in surgical patients including risk stratification, DVT prophylaxis strategies, diagnosis of DVT and PE, anticoagulation options, IVC filter indications, and management of perioperative anticoagulation.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000337-0001-0000-0000-000000000001', 'd0000337-0000-0000-0000-000000000037', 1,
'Virchow triad for thrombosis includes:',
'Infection, fever, and leukocytosis', 'Venous stasis, endothelial injury, and hypercoagulability', 'Artery, vein, and capillary involvement', 'Inflammation, necrosis, and fibrosis', NULL,
'B', 'Virchow triad (1856): (1) Venous stasis - immobility, surgery, paralysis, venous obstruction; (2) Endothelial injury - surgery, trauma, catheters, prior DVT; (3) Hypercoagulability - malignancy, inherited thrombophilia (Factor V Leiden, prothrombin mutation), acquired (pregnancy, OCP, antiphospholipid syndrome). Surgery activates all three components. Risk stratification (Caprini score) guides prophylaxis intensity. VTE is leading preventable cause of hospital death.', 'easy'),

('e0000337-0002-0000-0000-000000000002', 'd0000337-0000-0000-0000-000000000037', 2,
'The most appropriate DVT prophylaxis for a patient undergoing major abdominal cancer surgery is:',
'Early ambulation only', 'Combined pharmacologic (LMWH/UFH) and mechanical (compression devices) prophylaxis, with extended prophylaxis for 4 weeks', 'Aspirin alone', 'No prophylaxis needed', NULL,
'B', 'High-risk VTE prophylaxis (major surgery, cancer): pharmacologic + mechanical. LMWH preferred over UFH (once daily, more consistent effect). Extended prophylaxis (4 weeks) for abdominal/pelvic cancer surgery reduces VTE by 60%. Start pharmacologic prophylaxis 2-12 hours postop (or preop depending on anesthesia). Mechanical: intermittent pneumatic compression devices, graduated compression stockings. Cancer patients remain at high risk throughout treatment. Aspirin alone insufficient for high-risk surgical patients.', 'medium'),

('e0000337-0003-0000-0000-000000000003', 'd0000337-0000-0000-0000-000000000037', 3,
'The gold standard test for diagnosing pulmonary embolism is:',
'D-dimer', 'CT pulmonary angiography (CTPA)', 'Chest X-ray', 'ECG', NULL,
'B', 'CTPA: first-line definitive imaging for PE. Sensitivity 83-100%, specificity 89-97%. Shows filling defects in pulmonary arteries. Also evaluates RV strain, alternative diagnoses. V/Q scan: alternative when CTPA contraindicated (renal failure, contrast allergy, pregnancy - though CTPA often used). D-dimer: useful to rule out PE in low/intermediate probability (high sensitivity, low specificity) - negative D-dimer with low Wells score excludes PE. ECG may show S1Q3T3, tachycardia (non-specific). CXR usually normal or non-specific.', 'easy'),

('e0000337-0004-0000-0000-000000000004', 'd0000337-0000-0000-0000-000000000037', 4,
'Indications for IVC filter placement include:',
'All DVT patients', 'Contraindication to anticoagulation with acute VTE, or VTE despite therapeutic anticoagulation', 'Prevention in all surgical patients', 'After all hip fractures', NULL,
'B', 'IVC filter indications: (1) Absolute contraindication to anticoagulation with acute proximal DVT/PE (active bleeding, recent major surgery, hemorrhagic stroke); (2) Recurrent VTE despite therapeutic anticoagulation; (3) Relative: massive PE with hemodynamic compromise (to prevent additional emboli), poor cardiopulmonary reserve. Retrievable filters should be removed when anticoagulation can resume (reduces long-term complications: IVC thrombosis, filter migration, caval penetration). Prophylactic filters generally not recommended.', 'medium'),

('e0000337-0005-0000-0000-000000000005', 'd0000337-0000-0000-0000-000000000037', 5,
'For patients on warfarin requiring urgent surgery, reversal options include:',
'Stopping warfarin 5 days before', 'Vitamin K, fresh frozen plasma, or prothrombin complex concentrate (PCC), depending on urgency', 'No reversal possible', 'Protamine sulfate', NULL,
'B', 'Warfarin reversal: (1) Urgent/emergent surgery: 4-factor PCC (rapid, complete reversal within minutes) + IV vitamin K 10mg; (2) Semi-urgent: FFP (slower, volume issues) + vitamin K; (3) Elective: hold warfarin 5 days preop, bridge with LMWH if high thrombotic risk. Vitamin K alone takes 6-24 hours for effect. PCC preferred over FFP (faster, smaller volume, more consistent). Target INR <1.5 for most major surgery. Protamine reverses heparin, not warfarin. Check INR before procedure.', 'medium'),

('e0000337-0006-0000-0000-000000000006', 'd0000337-0000-0000-0000-000000000037', 6,
'Heparin-induced thrombocytopenia (HIT) type II is characterized by:',
'Mild thrombocytopenia without clinical consequences', 'Immune-mediated thrombocytopenia with paradoxical thrombosis risk, occurring 5-10 days after heparin exposure', 'Only occurs with LMWH', 'Treated by increasing heparin dose', NULL,
'B', 'HIT type II: immune-mediated (antibodies to heparin-PF4 complex). Onset: 5-10 days after heparin start (or sooner if prior exposure). Platelet count drops >50% from baseline. Paradoxically causes thrombosis (arterial and venous), not bleeding. Diagnosis: 4T score, anti-PF4/heparin antibody, serotonin release assay. Management: STOP all heparin immediately (including flushes), start alternative anticoagulant (argatroban, fondaparinux, DOACs). Do NOT give platelets (fuel thrombosis). Can occur with UFH or LMWH. Never re-expose to heparin.', 'hard'),

('e0000337-0007-0000-0000-000000000007', 'd0000337-0000-0000-0000-000000000037', 7,
'Post-thrombotic syndrome is prevented primarily by:',
'Bed rest', 'Adequate anticoagulation for appropriate duration', 'Immediate IVC filter', 'Aspirin', NULL,
'B', 'Post-thrombotic syndrome (PTS): chronic complication of DVT. Symptoms: leg pain, swelling, skin changes (hyperpigmentation, lipodermatosclerosis), venous ulcers. Occurs in 20-50% of DVT patients. Prevention: (1) Adequate anticoagulation intensity and duration (reduces recurrence and PTS); (2) Early mobilization (bed rest does not reduce embolization); (3) Compression stockings (controversial - ATTRACT trial showed no benefit for routine use). Compression stockings not routine but may help symptomatic patients. Catheter-directed thrombolysis for selected iliofemoral DVT may reduce PTS.', 'medium'),

('e0000337-0008-0000-0000-000000000008', 'd0000337-0000-0000-0000-000000000037', 8,
'The Wells score is used for:',
'Calculating surgical risk', 'Clinical probability assessment for DVT or PE', 'Bleeding risk assessment', 'Nutritional status', NULL,
'B', 'Wells score: validated clinical prediction rules for DVT and PE (separate scores). DVT Wells: considers active cancer, paralysis/immobilization, bedridden >3 days, localized tenderness, entire leg swelling, calf swelling >3cm vs asymptomatic, pitting edema, collateral veins, alternative diagnosis likely. PE Wells: considers DVT symptoms, no alternative diagnosis, tachycardia, immobilization/surgery, prior VTE, hemoptysis, malignancy. Combined with D-dimer to guide imaging decisions. Low probability + negative D-dimer often excludes VTE.', 'easy'),

('e0000337-0009-0000-0000-000000000009', 'd0000337-0000-0000-0000-000000000037', 9,
'Direct oral anticoagulants (DOACs) compared to warfarin:',
'Require more monitoring', 'Have predictable pharmacokinetics, no routine monitoring, and fewer drug/food interactions', 'Are less effective for VTE', 'Have no reversal agents', NULL,
'B', 'DOACs (rivaroxaban, apixaban, edoxaban = factor Xa inhibitors; dabigatran = direct thrombin inhibitor): fixed dosing, no routine INR monitoring, rapid onset (no bridging needed), fewer drug/food interactions, shorter half-lives. Efficacy comparable or superior to warfarin for VTE treatment with reduced major bleeding. Limitations: renal excretion (dose adjust or avoid in renal impairment), cost, reversal agents now available (idarucizumab for dabigatran, andexanet alfa for Xa inhibitors). Not for mechanical heart valves. First-line for most VTE treatment.', 'medium'),

('e0000337-0010-0000-0000-000000000010', 'd0000337-0000-0000-0000-000000000037', 10,
'Massive pulmonary embolism with hemodynamic instability should be treated with:',
'Anticoagulation alone', 'Systemic thrombolysis, catheter-directed therapy, or surgical embolectomy in addition to anticoagulation', 'Observation', 'Aspirin only', NULL,
'B', 'Massive/high-risk PE (hemodynamic instability - SBP <90, requiring pressors, cardiac arrest): requires reperfusion therapy. Options: (1) Systemic thrombolysis (alteplase) - fastest, most evidence, bleeding risk ~2-3%; (2) Catheter-directed thrombolysis/thrombectomy - lower systemic bleeding, specialized centers; (3) Surgical embolectomy - for contraindications to thrombolysis, failed thrombolysis, or when surgical expertise available. Submassive PE (RV dysfunction without hypotension): anticoagulation standard, thrombolysis selective/controversial.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 37 (Venous Thromboembolism) with 10 self-assessment questions inserted' as status;
