-- ============================================================================
-- SURGERY 3 CME ARTICLE 114: Venous Thromboembolism Prevention
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000180-0000-0000-0000-000000000180', 'a0000003-0000-0000-0000-000000000003', 'Venous Thromboembolism Prevention', 'VTE prophylaxis and management in surgical patients')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000414-0000-0000-0000-000000000114',
    'c0000180-0000-0000-0000-000000000180',
    'a0000003-0000-0000-0000-000000000003',
    'Venous Thromboembolism: Prophylaxis and Management in Surgical Patients',
    'VTE Prevention Strategies',
    'This article covers VTE risk stratification, mechanical and pharmacologic prophylaxis options, timing of prophylaxis around surgery, management of DVT and PE, and special considerations in high-risk surgical populations.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000414-0001-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 1,
'Risk factors for venous thromboembolism in surgical patients include:',
'Young age only', 'Major surgery, malignancy, immobility, prior VTE, obesity, and use of oral contraceptives or hormone replacement', 'Minor surgery only', 'Ambulation',
'B', 'VTE RISK FACTORS (Virchow triad - stasis, endothelial injury, hypercoagulability): SURGERY: major procedures (orthopedic, abdominal, pelvic), prolonged operative time, general anesthesia. PATIENT: prior VTE (strongest), MALIGNANCY, OBESITY, age >60, immobility, estrogen use (OCP, HRT), pregnancy, thrombophilia, heart failure, inflammatory conditions. PROCEDURE-SPECIFIC: hip/knee replacement, hip fracture, major trauma, spinal cord injury. Risk stratification tools: Caprini score (surgical), Padua score (medical). Higher risk = more aggressive prophylaxis needed.', 'easy'),

('e0000414-0002-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 2,
'Mechanical VTE prophylaxis options include:',
'Aspirin only', 'Graduated compression stockings (GCS), intermittent pneumatic compression devices (IPCs), and early ambulation', 'Warfarin only', 'Bed rest',
'B', 'MECHANICAL VTE PROPHYLAXIS: (1) GRADUATED COMPRESSION STOCKINGS (GCS/TED hose): graduated pressure (highest at ankle), reduces venous stasis. Contraindicated in peripheral arterial disease. (2) INTERMITTENT PNEUMATIC COMPRESSION (IPC): inflatable cuffs on calves (or feet/thighs), cyclically compress veins, enhances venous return, may stimulate fibrinolysis. Most effective mechanical method. (3) EARLY AMBULATION: mobilization reduces stasis. ADVANTAGES: no bleeding risk, can be used when anticoagulation contraindicated. DISADVANTAGES: less effective than pharmacologic alone for high-risk patients. Often combined with pharmacologic prophylaxis.', 'easy'),

('e0000414-0003-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 3,
'Low molecular weight heparin (LMWH) for VTE prophylaxis:',
'Is given intravenously', 'Is given subcutaneously once or twice daily and has more predictable pharmacokinetics than unfractionated heparin with lower HIT risk', 'Requires daily PTT monitoring', 'Is less effective than UFH',
'B', 'LOW MOLECULAR WEIGHT HEPARIN (LMWH): (enoxaparin, dalteparin, tinzaparin). ADMINISTRATION: SUBCUTANEOUS, once or twice daily (prophylactic dosing usually once daily). ADVANTAGES over UFH: more PREDICTABLE pharmacokinetics (better bioavailability), no routine monitoring needed (anti-Xa levels only if renal impairment, obesity, pregnancy), lower risk of HIT, once daily dosing. DOSING: prophylactic (enoxaparin 40mg daily or 30mg BID), therapeutic (1mg/kg BID or 1.5mg/kg daily). CAUTION: renally cleared - reduce dose or use UFH if CrCl <30. Contraindicated with severe renal failure.', 'easy'),

('e0000414-0004-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 4,
'The optimal timing for initiating pharmacologic VTE prophylaxis in surgical patients is:',
'One week before surgery', 'Preoperatively (12-24 hours before) or within 12-24 hours postoperatively, balancing VTE prevention with bleeding risk', 'Only after discharge', 'Never in surgical patients',
'B', 'VTE PROPHYLAXIS TIMING: balance VTE prevention vs BLEEDING risk. GENERAL SURGERY: start within 12-24 hours postoperatively (after hemostasis achieved) or 2 hours preoperatively (if low bleeding risk). ORTHOPEDIC SURGERY (hip/knee replacement): start 12 hours preoperatively OR 12-24 hours postoperatively depending on protocol and agent. HIGH BLEEDING RISK: delay pharmacologic prophylaxis, use mechanical until safe. SPINE SURGERY: often delayed due to neurologic bleeding concerns - mechanical prophylaxis crucial. Timing varies by institutional protocol, surgical procedure, and individual bleeding risk.', 'medium'),

('e0000414-0005-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 5,
'Extended VTE prophylaxis (beyond hospitalization) is recommended for:',
'All surgical patients', 'High-risk patients including those undergoing major abdominal or pelvic cancer surgery and major orthopedic procedures (hip/knee replacement, hip fracture)', 'No surgical patients', 'Only cardiac surgery',
'B', 'EXTENDED VTE PROPHYLAXIS (post-discharge): HIGH-RISK patients. INDICATIONS: (1) Major CANCER surgery (abdominal/pelvic) - 4 weeks LMWH. (2) Major ORTHOPEDIC surgery (hip replacement, knee replacement, hip fracture) - 28-35 days (LMWH, fondaparinux, DOACs, warfarin, or aspirin). (3) High Caprini score with additional risk factors. RATIONALE: VTE risk persists weeks after surgery (especially cancer, orthopedic). EVIDENCE: extended prophylaxis reduces VTE without significant bleeding increase. Duration typically 28-35 days. Agent: LMWH, fondaparinux, rivaroxaban, apixaban approved for extended orthopedic prophylaxis.', 'medium'),

('e0000414-0006-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 6,
'The diagnosis of deep vein thrombosis (DVT) is best made by:',
'Clinical exam alone', 'Compression ultrasonography, which is non-invasive and has high sensitivity and specificity for proximal DVT', 'CT scan always', 'Blood tests only',
'B', 'DVT DIAGNOSIS: COMPRESSION ULTRASONOGRAPHY (duplex ultrasound): first-line imaging. TECHNIQUE: compress vein with probe - normal vein collapses completely, thrombosed vein does not compress (incompressible). Also shows flow characteristics. SENSITIVITY/SPECIFICITY: >95% for PROXIMAL DVT (popliteal and above), less sensitive for calf DVT (60-70%). Pre-test probability: Wells score (clinical prediction rule) guides testing. D-DIMER: sensitive but not specific - negative D-dimer with low Wells score can rule out DVT. VENOGRAPHY: gold standard but invasive, rarely used. CT/MR venography: for iliac/pelvic veins if US inconclusive.', 'easy'),

('e0000414-0007-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 7,
'Treatment of acute pulmonary embolism includes:',
'Observation only', 'Anticoagulation as mainstay, with systemic thrombolysis or catheter-directed therapy for massive PE with hemodynamic instability, and IVC filter for anticoagulation contraindication', 'Antibiotics', 'Only bed rest',
'B', 'PULMONARY EMBOLISM TREATMENT: (1) ANTICOAGULATION: mainstay for most PE. Options: LMWH/fondaparinux bridged to warfarin, or DOACs (rivaroxaban, apixaban) as monotherapy. Duration: 3 months minimum, extended if unprovoked or ongoing risk. (2) MASSIVE PE (hemodynamic instability): systemic THROMBOLYSIS (alteplase) or catheter-directed thrombolysis/thrombectomy, surgical embolectomy if thrombolysis fails/contraindicated. (3) SUBMASSIVE PE (RV dysfunction without hypotension): anticoagulation +/- escalation based on clinical trajectory. (4) IVC FILTER: when anticoagulation CONTRAINDICATED (active bleeding), not routinely used otherwise.', 'medium'),

('e0000414-0008-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 8,
'IVC filter placement is indicated when:',
'For all VTE patients', 'Anticoagulation is contraindicated in a patient with acute proximal DVT or PE, such as recent major bleeding or upcoming high-risk surgery', 'VTE is prevented', 'Patient has no clot',
'B', 'IVC FILTER INDICATIONS: PRIMARY: acute proximal DVT or PE when anticoagulation CONTRAINDICATED (active major bleeding, recent intracranial hemorrhage, upcoming high-bleeding-risk surgery). RELATIVE: failure of anticoagulation (recurrent PE despite therapeutic anticoagulation), massive PE with residual DVT and poor cardiopulmonary reserve. NOT ROUTINE: not for VTE prevention alone, not added to anticoagulation routinely. RETRIEVABLE filters: preferred when temporary contraindication - should be removed when anticoagulation can be resumed. Complications: filter migration, IVC thrombosis, filter fracture, penetration.', 'medium'),

('e0000414-0009-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 9,
'The Caprini risk assessment score:',
'Is not useful clinically', 'Stratifies surgical patients into VTE risk categories based on patient and procedure factors, guiding the intensity of VTE prophylaxis', 'Only applies to medical patients', 'Predicts bleeding risk',
'B', 'CAPRINI SCORE: validated VTE RISK STRATIFICATION tool for surgical patients. FACTORS scored: age, BMI, prior VTE, malignancy, surgery type, immobility, estrogen use, thrombophilia, many others. RISK CATEGORIES and prophylaxis: Very low (0-1): early ambulation. Low (2): mechanical prophylaxis (IPC). Moderate (3-4): LMWH or UFH +/- mechanical. High (≥5): LMWH + mechanical, consider extended prophylaxis. Helps individualize prophylaxis intensity. Higher score = higher VTE risk = more aggressive prophylaxis warranted. Updated versions and institution-specific modifications exist.', 'easy'),

('e0000414-0010-0000-0000-000000000114', 'd0000414-0000-0000-0000-000000000114', 10,
'Post-thrombotic syndrome:',
'Is rare after DVT', 'Is a chronic complication of DVT occurring in 20-50% of patients, characterized by leg pain, swelling, skin changes, and ulceration due to venous hypertension', 'Resolves immediately', 'Only affects arms',
'B', 'POST-THROMBOTIC SYNDROME (PTS): chronic complication after DVT. INCIDENCE: 20-50% of DVT patients develop some degree. PATHOPHYSIOLOGY: venous valve damage from DVT, residual obstruction - leads to VENOUS HYPERTENSION, venous reflux. SYMPTOMS: leg pain (worse with standing, better with elevation), SWELLING, heaviness, skin changes (hyperpigmentation, lipodermatosclerosis), venous ULCERATION (severe cases). RISK FACTORS: proximal DVT, recurrent DVT, inadequate anticoagulation, obesity. PREVENTION: adequate anticoagulation duration, compression stockings (controversial - ATTRACT trial). TREATMENT: compression, elevation, wound care for ulcers. Significantly impacts quality of life.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 114 (Venous Thromboembolism Prevention) with 10 self-assessment questions inserted' as status;
