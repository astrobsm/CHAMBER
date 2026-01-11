-- Surgery 4 MCQ Question Bank - Batch 4
-- Section A: Vascular & Cardiothoracic Surgery - Deep Vein Thrombosis
-- 40 Questions

-- Topic: Deep Vein Thrombosis
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000004-0000-0000-0000-000000000004', 'Deep Vein Thrombosis', 'a0000004-0000-0000-0000-000000000004', 'Pathophysiology, diagnosis, prevention and management of DVT', 4, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Virchow triad includes all of the following EXCEPT:',
 'Venous stasis', 'Endothelial injury', 'Hypercoagulability', 'Hyperviscosity', 'All are included',
 'D', 'Virchow triad consists of: venous stasis, endothelial injury, and hypercoagulability. Hyperviscosity may contribute to thrombosis but is not part of the classic triad.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The most common inherited thrombophilia is:',
 'Protein C deficiency', 'Protein S deficiency', 'Factor V Leiden mutation', 'Antithrombin deficiency', 'Prothrombin gene mutation',
 'C', 'Factor V Leiden (activated protein C resistance) is the most common inherited thrombophilia, present in 5% of Caucasians. It increases DVT risk 3-8 fold in heterozygotes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'D-dimer testing is most useful for:',
 'Confirming DVT diagnosis', 'Ruling out DVT in low probability patients', 'Determining need for anticoagulation', 'Assessing recurrence risk', 'Monitoring treatment',
 'B', 'D-dimer has high sensitivity but low specificity. A negative D-dimer in low/moderate pre-test probability effectively rules out DVT. Positive D-dimer requires imaging confirmation.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The gold standard investigation for DVT diagnosis is:',
 'D-dimer', 'Compression ultrasonography', 'Contrast venography', 'CT venography', 'MR venography',
 'C', 'Contrast venography is the traditional gold standard but rarely used due to invasiveness. Compression ultrasound is the practical first-line test with 95% sensitivity for proximal DVT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'In compression ultrasonography, DVT is diagnosed when:',
 'The vein walls coapt completely', 'The vein fails to compress completely', 'Doppler flow is present', 'Vein diameter is normal', 'Color flow fills the vein',
 'B', 'DVT is diagnosed when the vein fails to compress completely with probe pressure. Normally, the vein walls should coapt completely. Echogenic thrombus may also be visible.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The Wells score for DVT includes all EXCEPT:',
 'Active cancer', 'Paralysis of lower extremity', 'Elevated D-dimer', 'Calf swelling >3cm compared to other leg', 'Pitting edema',
 'C', 'Wells score for DVT includes clinical features only: cancer, paralysis/immobilization, bedridden >3 days/surgery, tenderness along veins, entire leg swelling, calf swelling >3cm, pitting edema, collateral veins, and alternative diagnosis likelihood.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Homans sign refers to:',
 'Swelling of the calf', 'Calf pain on dorsiflexion of the foot', 'Pitting edema', 'Warmth over the calf', 'Dilated superficial veins',
 'B', 'Homans sign is calf pain elicited by passive dorsiflexion of the foot with knee extended. It has low sensitivity and specificity for DVT and is no longer recommended for diagnosis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Phlegmasia cerulea dolens is characterized by:',
 'White painful leg', 'Blue painful swollen leg with risk of venous gangrene', 'Mild calf pain', 'Superficial thrombophlebitis', 'Arterial occlusion',
 'B', 'Phlegmasia cerulea dolens is massive iliofemoral DVT causing blue, painful, swollen leg with risk of venous gangrene. It requires urgent intervention (thrombolysis/thrombectomy).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Phlegmasia alba dolens refers to:',
 'Blue leg', 'Pale swollen painful leg', 'Chronic venous insufficiency', 'Superficial venous thrombosis', 'Normal leg appearance',
 'B', 'Phlegmasia alba dolens is iliofemoral DVT with pale (alba), swollen, painful leg due to arterial spasm. It may progress to phlegmasia cerulea dolens if untreated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The recommended first-line anticoagulant for acute DVT is:',
 'Warfarin alone', 'DOAC (direct oral anticoagulant)', 'Heparin followed by warfarin', 'Aspirin', 'Clopidogrel',
 'B', 'DOACs (rivaroxaban, apixaban) are preferred first-line for most DVT patients due to efficacy, safety, convenience (no monitoring), and ability to start without parenteral bridging.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Duration of anticoagulation for unprovoked proximal DVT is:',
 '3 months', '6 months', 'At least 3 months with consideration for extended therapy', '1 month', 'Lifelong in all cases',
 'C', 'Unprovoked proximal DVT requires at least 3 months anticoagulation, then assessment for extended therapy based on bleeding risk, recurrence risk, and patient preference.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'For provoked DVT with transient risk factor, anticoagulation duration is:',
 '2 weeks', '3 months', '6 months', '12 months', 'Lifelong',
 'B', 'Provoked DVT with transient risk factor (surgery, trauma, immobility) requires 3 months anticoagulation. Longer duration is not beneficial when the provoking factor is removed.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Post-thrombotic syndrome (PTS) occurs in what percentage of DVT patients?',
 '5-10%', '20-50%', '70-80%', '90%', 'Less than 5%',
 'B', 'PTS develops in 20-50% of DVT patients despite adequate anticoagulation. Risk factors include iliofemoral DVT, recurrence, obesity, and inadequate initial anticoagulation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Which measure is most effective in preventing post-thrombotic syndrome?',
 'Aspirin', 'Adequate anticoagulation and prevention of recurrence', 'Bed rest', 'Compression stockings only', 'Surgery',
 'B', 'Adequate anticoagulation preventing recurrence is most important. Elastic compression stockings role is now uncertain (SOXS trial showed no benefit). Early mobilization is also important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'IVC filter insertion is indicated in:',
 'All DVT patients', 'Contraindication to anticoagulation with proximal DVT', 'All surgical patients', 'Preference over anticoagulation', 'Distal DVT only',
 'B', 'IVC filter is indicated when anticoagulation is contraindicated (active bleeding, recent surgery) in patients with proximal DVT or PE. Retrievable filters are preferred.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Catheter-directed thrombolysis for DVT is indicated in:',
 'All proximal DVT', 'Phlegmasia with limb threat', 'All distal DVT', 'Chronic DVT', 'All elderly patients',
 'B', 'Catheter-directed thrombolysis is indicated for limb-threatening DVT (phlegmasia), young patients with iliofemoral DVT and low bleeding risk. It reduces post-thrombotic syndrome.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'May-Thurner syndrome involves:',
 'Superior vena cava compression', 'Left common iliac vein compression by right iliac artery', 'Popliteal vein compression', 'Subclavian vein compression', 'Femoral vein anomaly',
 'B', 'May-Thurner syndrome is compression of left common iliac vein by right common iliac artery against lumbar spine. It predisposes to left iliofemoral DVT, especially in young women.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Paget-Schroetter syndrome refers to:',
 'Lower limb DVT', 'Effort-related upper extremity DVT', 'Mesenteric vein thrombosis', 'Cerebral venous thrombosis', 'Portal vein thrombosis',
 'B', 'Paget-Schroetter syndrome is effort-induced subclavian/axillary vein thrombosis in young athletic individuals due to thoracic outlet compression during repetitive arm movements.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Low molecular weight heparin (LMWH) compared to unfractionated heparin:',
 'Has shorter half-life', 'Has more predictable anticoagulant response', 'Requires more monitoring', 'Has higher HIT risk', 'Cannot be used outpatient',
 'B', 'LMWH has more predictable dose-response, longer half-life, once/twice daily dosing, lower HIT risk, and allows outpatient treatment. Monitoring not usually required.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Heparin-induced thrombocytopenia (HIT) typically occurs:',
 'Within 24 hours', '5-14 days after heparin exposure', 'After 30 days', 'Only with LMWH', 'Never with unfractionated heparin',
 'B', 'HIT type II typically occurs 5-14 days after heparin exposure (earlier if prior exposure). It causes thrombocytopenia and paradoxically increases thrombosis risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Management of confirmed HIT includes:',
 'Continuing heparin at lower dose', 'Stopping all heparin and starting alternative anticoagulant', 'Platelet transfusion', 'Adding aspirin to heparin', 'Observation only',
 'B', 'HIT management: stop all heparin (including flushes), start alternative anticoagulant (argatroban, fondaparinux, DOAC), avoid warfarin until platelets recover, and avoid platelet transfusion.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The 4T score is used to assess:',
 'DVT probability', 'PE probability', 'HIT probability', 'Bleeding risk', 'Recurrence risk',
 'C', 'The 4T score assesses HIT probability: Thrombocytopenia (degree), Timing of platelet fall, Thrombosis, and oTher causes of thrombocytopenia. Score guides testing and management.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Which DVT prophylaxis is recommended for high-risk surgical patients?',
 'Aspirin alone', 'Pharmacological prophylaxis plus mechanical', 'Early ambulation only', 'Mechanical prophylaxis only', 'No prophylaxis needed',
 'B', 'High-risk surgical patients benefit from combined pharmacological (LMWH) and mechanical (IPC, stockings) prophylaxis. This provides additive protection.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Intermittent pneumatic compression (IPC) for DVT prophylaxis works by:',
 'Anticoagulation', 'Increasing venous velocity and stimulating fibrinolysis', 'Cooling the legs', 'Arterial compression', 'Reducing blood pressure',
 'B', 'IPC increases venous blood velocity (reducing stasis) and stimulates release of tissue plasminogen activator, enhancing fibrinolysis. It is effective and has no bleeding risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The Caprini score is used for:',
 'Diagnosing DVT', 'Assessing VTE risk in surgical patients', 'Monitoring anticoagulation', 'Predicting PTS', 'Assessing bleeding risk',
 'B', 'The Caprini Risk Assessment Model stratifies surgical patients into VTE risk categories (low, moderate, high, highest) to guide prophylaxis decisions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Extended thromboprophylaxis (28-35 days) after surgery is recommended for:',
 'All surgical patients', 'Major orthopedic surgery and high-risk abdominal/pelvic cancer surgery', 'Minor procedures only', 'Day surgery', 'Patients on anticoagulation',
 'B', 'Extended prophylaxis is recommended after major orthopedic surgery (hip/knee replacement, hip fracture) and high-risk abdominal/pelvic cancer surgery due to prolonged VTE risk.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Isolated distal (calf) DVT compared to proximal DVT:',
 'Has higher PE risk', 'Has lower PE risk and may be managed with surveillance', 'Always requires 6 months anticoagulation', 'Is more common', 'Never extends proximally',
 'B', 'Isolated distal DVT has lower PE risk (~5-10% extend proximally). Options include anticoagulation or serial ultrasound surveillance for 2 weeks with treatment if extension occurs.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Warfarin anticoagulation monitoring uses:',
 'APTT', 'INR', 'Anti-Xa level', 'Thrombin time', 'D-dimer',
 'B', 'Warfarin is monitored using INR (International Normalized Ratio), target typically 2.0-3.0 for VTE treatment. It reflects warfarin effect on vitamin K-dependent factors.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Rivaroxaban and apixaban directly inhibit:',
 'Thrombin', 'Factor Xa', 'Vitamin K', 'Factor VII', 'Platelet aggregation',
 'B', 'Rivaroxaban and apixaban are direct Factor Xa inhibitors. Dabigatran is a direct thrombin inhibitor. These DOACs have predictable pharmacokinetics and dont require routine monitoring.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Reversal agent for dabigatran is:',
 'Vitamin K', 'Fresh frozen plasma', 'Idarucizumab', 'Protamine sulfate', 'Tranexamic acid',
 'C', 'Idarucizumab is a specific reversal agent (monoclonal antibody) for dabigatran. Andexanet alfa is available for factor Xa inhibitors. Prothrombin complex concentrate is alternative.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'DVT in pregnancy is best treated with:',
 'Warfarin throughout pregnancy', 'LMWH throughout pregnancy', 'DOACs', 'Aspirin', 'IVC filter only',
 'B', 'LMWH is treatment of choice in pregnancy as it does not cross placenta. Warfarin is teratogenic (especially weeks 6-12) and DOACs lack safety data in pregnancy.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Upper extremity DVT is most commonly associated with:',
 'Trauma', 'Central venous catheters', 'Autoimmune disease', 'Pregnancy', 'Obesity',
 'B', 'Central venous catheters are the most common cause of upper extremity DVT (catheter-related thrombosis). Other causes include cancer, pacemakers, and thoracic outlet syndrome.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Cancer-associated thrombosis is best treated with:',
 'Warfarin', 'LMWH or DOAC', 'Aspirin', 'IVC filter alone', 'Observation',
 'B', 'LMWH has been standard for cancer-associated VTE. DOACs (edoxaban, rivaroxaban) are now options except in GI/GU cancers with high bleeding risk where LMWH is preferred.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Thrombophilia testing is most appropriate:',
 'During acute thrombosis', 'While on anticoagulation', '3 months after stopping anticoagulation for unprovoked VTE', 'For all first DVT', 'Never useful',
 'C', 'Thrombophilia testing is most appropriate after anticoagulation is stopped (most tests are affected by acute thrombosis/anticoagulation) and mainly for unprovoked VTE influencing management.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Antiphospholipid syndrome causing DVT is best managed with:',
 'DOACs as first choice', 'Warfarin (target INR 2-3)', 'Aspirin alone', 'LMWH for life', 'No anticoagulation',
 'B', 'Warfarin is preferred over DOACs for antiphospholipid syndrome based on studies showing higher recurrence rates with DOACs. Target INR 2-3 for most patients.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'The PADUA score assesses:',
 'Surgical VTE risk', 'Medical inpatient VTE risk', 'Bleeding risk', 'DVT recurrence risk', 'PE severity',
 'B', 'The PADUA prediction score assesses VTE risk in hospitalized medical patients to guide thromboprophylaxis decisions. Score ≥4 indicates high risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000004-0000-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004',
 'Early mobilization after DVT diagnosis:',
 'Is contraindicated for 2 weeks', 'Is encouraged once anticoagulated', 'Increases PE risk', 'Should wait for IVC filter', 'Is never recommended',
 'B', 'Early mobilization is encouraged once therapeutic anticoagulation is initiated. It does not increase PE risk and reduces symptoms, hospital stay, and may reduce PTS.', 'medium', 'application');
