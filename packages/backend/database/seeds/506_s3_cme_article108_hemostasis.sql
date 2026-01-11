-- ============================================================================
-- SURGERY 3 CME ARTICLE 108: Surgical Hemostasis and Coagulation
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000174-0000-0000-0000-000000000174', 'a0000003-0000-0000-0000-000000000003', 'Surgical Hemostasis and Coagulation', 'Principles of hemostasis, coagulation, and management of bleeding in surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000408-0000-0000-0000-000000000108',
    'c0000174-0000-0000-0000-000000000174',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Hemostasis: Coagulation Science and Clinical Application',
    'Comprehensive Hemostasis Management for Surgeons',
    'This article covers the coagulation cascade, interpretation of coagulation tests (PT, PTT, INR), management of anticoagulation perioperatively, hemostatic agents, treatment of massive hemorrhage, and disseminated intravascular coagulation (DIC).',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000408-0001-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 1,
'The prothrombin time (PT) primarily measures:',
'Platelet function', 'The extrinsic and common pathways of coagulation (factors VII, X, V, II, fibrinogen) and is prolonged by warfarin therapy', 'Only intrinsic pathway', 'Fibrinolysis',
'B', 'PROTHROMBIN TIME (PT): measures EXTRINSIC and COMMON pathways. FACTORS tested: VII (extrinsic), X, V, II (prothrombin), I (fibrinogen) (common pathway). PROLONGED by: vitamin K antagonists (WARFARIN - inhibits II, VII, IX, X), liver disease, vitamin K deficiency, factor deficiencies. INR (International Normalized Ratio): standardized PT for monitoring warfarin (INR 2-3 for most indications). Compare to PTT: intrinsic + common pathway. PT/INR is key test for monitoring warfarin anticoagulation and assessing synthetic liver function.', 'easy'),

('e0000408-0002-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 2,
'The activated partial thromboplastin time (aPTT) is prolonged by:',
'Warfarin only', 'Heparin therapy and deficiencies in the intrinsic pathway factors (XII, XI, IX, VIII) as well as common pathway factors', 'Aspirin only', 'Platelet disorders only',
'B', 'ACTIVATED PARTIAL THROMBOPLASTIN TIME (aPTT): measures INTRINSIC and COMMON pathways. FACTORS: XII, XI, IX, VIII (intrinsic) + X, V, II, I (common). PROLONGED by: HEPARIN (unfractionated - monitored by aPTT), factor deficiencies (hemophilia A - VIII, hemophilia B - IX), lupus anticoagulant (paradoxically causes thrombosis despite prolonged aPTT), liver disease. Uses: monitoring UFH therapy, screening for intrinsic factor deficiencies. Note: LMWH monitored by anti-Xa levels, not aPTT. Mixing study: determines if prolongation is due to factor deficiency (corrects) or inhibitor (does not correct).', 'easy'),

('e0000408-0003-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 3,
'Management of perioperative anticoagulation for a patient on warfarin undergoing major surgery:',
'Continue warfarin through surgery', 'Stop warfarin 5 days before surgery, check INR, consider bridging with heparin for high-risk patients, and restart warfarin postoperatively when hemostasis achieved', 'Stop warfarin the night before', 'No management needed',
'B', 'PERIOPERATIVE WARFARIN MANAGEMENT: STOP warfarin 5 DAYS before surgery (allow INR to normalize - half-life 36-42h). Check INR preoperatively (goal usually <1.5). BRIDGING (with therapeutic heparin/LMWH): consider for HIGH-RISK patients (mechanical valve in mitral position, recent VTE <3 months, high-risk atrial fibrillation - CHADS2 5-6). Most patients do NOT need bridging (moderate-risk). RESTART warfarin 12-24h postop when adequate hemostasis and tolerating PO. Restart heparin bridge 48-72h postop if needed. For emergent surgery: reverse with vitamin K, FFP, or 4-factor PCC. Balance bleeding risk vs thrombotic risk.', 'medium'),

('e0000408-0004-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 4,
'Direct oral anticoagulants (DOACs) such as apixaban and rivaroxaban:',
'Are monitored by INR', 'Have shorter half-lives than warfarin and should be stopped 24-48 hours before surgery depending on bleeding risk and renal function', 'Never need to be stopped', 'Are reversed by vitamin K',
'B', 'DIRECT ORAL ANTICOAGULANTS (DOACs) perioperative management: DOACs include factor Xa inhibitors (rivaroxaban, apixaban, edoxaban) and direct thrombin inhibitor (dabigatran). HALF-LIFE: 8-15 hours (shorter than warfarin). PREOPERATIVE STOP: 24-48 HOURS before surgery depending on bleeding risk (high-risk: 48h) and renal function (especially dabigatran - renally cleared). Not routinely monitored (anti-Xa levels for factor Xa inhibitors, TT for dabigatran if needed). REVERSAL: idarucizumab for dabigatran, andexanet alfa or PCC for factor Xa inhibitors. RESTART: 24-72h postop based on hemostasis. Generally NO bridging needed.', 'medium'),

('e0000408-0005-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 5,
'Topical hemostatic agents include:',
'Systemic antibiotics', 'Absorbable gelatin (Gelfoam), oxidized cellulose (Surgicel), microfibrillar collagen, thrombin, and fibrin sealants, used to control surface bleeding', 'IV tranexamic acid only', 'Warfarin',
'B', 'TOPICAL HEMOSTATIC AGENTS: used for LOCAL hemostasis during surgery. MECHANICAL: (1) GELFOAM (absorbable gelatin) - provides matrix. (2) SURGICEL (oxidized cellulose) - promotes platelet aggregation, low pH bactericidal. (3) Microfibrillar COLLAGEN. ACTIVE: (4) THROMBIN (topical) - converts fibrinogen to fibrin. (5) FIBRIN SEALANTS (fibrinogen + thrombin) - forms fibrin clot at site. COMBINED: FloSeal (thrombin + gelatin). Use: oozing surfaces, parenchymal bleeding (liver, spleen), difficult-to-suture bleeding. Not for major vessel bleeding (need suture/clip). Remove excess before closing (foreign body reaction).', 'easy'),

('e0000408-0006-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 6,
'The massive transfusion protocol:',
'Focuses on RBCs only', 'Provides balanced blood component replacement (RBCs, plasma, platelets in approximately 1:1:1 ratio) with early activation to prevent coagulopathy in massive hemorrhage', 'Delays plasma administration', 'Avoids platelet transfusion',
'B', 'MASSIVE TRANSFUSION PROTOCOL (MTP): for life-threatening hemorrhage requiring >10 units RBC/24h or >4 units/hour. PRINCIPLES: (1) EARLY activation (do not wait for labs). (2) BALANCED resuscitation: RBC:FFP:platelets approximately 1:1:1 ratio (prevents dilutional coagulopathy, trauma-induced coagulopathy). (3) Limit crystalloid (contributes to dilution, acidosis, hypothermia). (4) Treat LETHAL TRIAD (hypothermia, acidosis, coagulopathy). (5) Consider adjuncts: TXA (tranexamic acid) early, calcium (citrate binds calcium), fibrinogen concentrate/cryoprecipitate. Goal-directed with TEG/ROTEM (viscoelastic testing) if available. Damage control surgery principles.', 'medium'),

('e0000408-0007-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 7,
'Tranexamic acid (TXA):',
'Promotes fibrinolysis', 'Is an antifibrinolytic agent that inhibits plasminogen activation, reducing blood loss and mortality when given early in trauma and major surgery', 'Is a vitamin K analogue', 'Replaces clotting factors',
'B', 'TRANEXAMIC ACID (TXA): ANTIFIBRINOLYTIC agent. MECHANISM: inhibits PLASMINOGEN activation to plasmin, prevents fibrin clot breakdown (hyperfibrinolysis). USES: (1) TRAUMA: CRASH-2 trial - reduces mortality if given <3 hours (1g bolus then 1g over 8h). (2) Major surgery (cardiac, orthopedic, obstetric) - reduces blood loss and transfusion. (3) Heavy menstrual bleeding. (4) Dental procedures in anticoagulated patients. TIMING: must be given EARLY (benefit decreases with time, may be harmful after 3h in trauma). Contraindications: active thromboembolism, hypersensitivity. Also: epsilon-aminocaproic acid (EACA) - similar agent.', 'easy'),

('e0000408-0008-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 8,
'Disseminated intravascular coagulation (DIC):',
'Is a primary clotting disorder', 'Is a consumptive coagulopathy triggered by systemic activation of coagulation (sepsis, trauma, malignancy), causing simultaneous thrombosis and bleeding with prolonged PT/PTT and low platelets and fibrinogen', 'Causes only thrombosis', 'Has normal coagulation tests',
'B', 'DISSEMINATED INTRAVASCULAR COAGULATION (DIC): consumptive coagulopathy. TRIGGERS: SEPSIS (most common), trauma, malignancy, obstetric (amniotic embolism, placental abruption), transfusion reaction. PATHOPHYSIOLOGY: widespread activation of coagulation - microthrombi (organ ischemia) + CONSUMPTION of factors and platelets (bleeding). LABS: prolonged PT/PTT, LOW PLATELETS, low FIBRINOGEN, elevated D-DIMER, schistocytes on smear. PRESENTATION: simultaneous THROMBOSIS and BLEEDING. TREATMENT: treat UNDERLYING CAUSE (essential), supportive transfusion (FFP, platelets, cryoprecipitate for fibrinogen), consider heparin in chronic DIC with thrombosis.', 'medium'),

('e0000408-0009-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 9,
'Heparin-induced thrombocytopenia (HIT):',
'Is a benign condition', 'Is an immune-mediated syndrome causing platelet activation and paradoxical thrombosis, requiring immediate heparin cessation and alternative anticoagulation', 'Causes bleeding primarily', 'Is treated with more heparin',
'B', 'HEPARIN-INDUCED THROMBOCYTOPENIA (HIT): serious complication. TYPE II HIT: IMMUNE-mediated - antibodies to heparin-PF4 complexes activate platelets. ONSET: 5-10 days after heparin exposure (or sooner if prior exposure). PRESENTATION: THROMBOCYTOPENIA (drop >50% from baseline), PARADOXICAL THROMBOSIS (venous > arterial, despite low platelets). DIAGNOSIS: 4Ts score, anti-PF4 antibodies (ELISA), serotonin release assay (confirmatory). MANAGEMENT: STOP ALL HEPARIN immediately, start ALTERNATIVE anticoagulation (argatroban, bivalirudin - direct thrombin inhibitors; or fondaparinux). Do NOT give platelets (worsens thrombosis). Do NOT wait for confirmation to stop heparin if high suspicion.', 'medium'),

('e0000408-0010-0000-0000-000000000108', 'd0000408-0000-0000-0000-000000000108', 10,
'Intraoperative bleeding not controlled by surgical means may require:',
'Only observation', 'Blood component therapy guided by coagulation tests, treatment of hypothermia and acidosis, and consideration of damage control surgery with planned re-exploration', 'Increasing IV fluids only', 'Continuing surgery until complete',
'B', 'INTRAOPERATIVE BLEEDING MANAGEMENT: if not controlled surgically: (1) BLOOD COMPONENTS: RBC, FFP (coagulation factors), platelets, cryoprecipitate (fibrinogen, factor VIII). Guided by labs or viscoelastic testing (TEG/ROTEM). (2) Correct LETHAL TRIAD: warm patient (hypothermia impairs coagulation), correct ACIDOSIS (impairs enzyme function), treat coagulopathy. (3) DAMAGE CONTROL SURGERY: pack and abbreviate surgery, temporary closure, resuscitate in ICU, planned RE-EXPLORATION when stabilized (24-48h). (4) Adjuncts: TXA, topical hemostatics, recombinant factor VIIa (selected cases). Do not continue surgery in coagulopathic patient - bleeding begets bleeding.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 108 (Surgical Hemostasis and Coagulation) with 10 self-assessment questions inserted' as status;
