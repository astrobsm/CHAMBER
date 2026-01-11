-- Surgery 2: Article 20 - Haemostasis in Surgery
-- Sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000020-0000-0000-0000-000000000020'::uuid, 'introduction', 1, 'Introduction to Surgical Haemostasis', 
'Haemostasis is the physiological process that stops bleeding at the site of injury while maintaining normal blood flow elsewhere in the circulation. Understanding haemostasis is fundamental to all surgical practice, as uncontrolled bleeding remains one of the leading causes of perioperative morbidity and mortality. The haemostatic system involves a complex interplay between vascular endothelium, platelets, coagulation factors, and fibrinolytic mechanisms.

The surgical significance of haemostasis extends beyond mere bleeding control. Adequate haemostasis ensures clear operative fields, reduces transfusion requirements, minimizes haematoma formation, and promotes optimal wound healing. Conversely, impaired haemostasis leads to excessive blood loss, need for re-exploration, increased infection risk, and compromised patient outcomes.

Modern surgical practice requires surgeons to understand not only the physiology of coagulation but also the pathophysiology of bleeding disorders, the effects of anticoagulant and antiplatelet medications, and the appropriate use of haemostatic agents and techniques. This article provides a comprehensive overview of haemostasis relevant to surgical practice.'),

('d0000020-0000-0000-0000-000000000020'::uuid, 'clinical_presentation', 2, 'Physiology of Coagulation', 
'The coagulation cascade is traditionally described as having intrinsic and extrinsic pathways that converge on a common pathway. While this model is useful for understanding laboratory tests, the cell-based model of coagulation better reflects in vivo haemostasis.

**Primary Haemostasis:**
- Vascular response: vasoconstriction reduces blood flow
- Platelet adhesion: via von Willebrand factor (vWF) to exposed collagen
- Platelet activation: shape change, granule release, aggregation
- Formation of platelet plug

**Secondary Haemostasis (Coagulation Cascade):**

*Extrinsic Pathway (measured by PT/INR):*
- Tissue factor (TF) released from damaged cells
- TF + Factor VIIa activates Factor X
- Rapid but limited thrombin generation

*Intrinsic Pathway (measured by aPTT):*
- Contact activation: Factor XII → XIIa
- Factor XI → XIa → Factor IX → IXa
- Factor IXa + VIIIa activates Factor X
- Slower but sustained thrombin generation

*Common Pathway:*
- Factor Xa + Va (prothrombinase complex)
- Prothrombin → Thrombin
- Fibrinogen → Fibrin
- Factor XIII cross-links fibrin (stable clot)

**Natural Anticoagulants:**
- Antithrombin III: inhibits thrombin, IXa, Xa, XIa
- Protein C and S: inactivate factors Va and VIIIa
- Tissue factor pathway inhibitor (TFPI)

**Fibrinolysis:**
- Plasminogen → Plasmin (by tPA, uPA)
- Plasmin degrades fibrin → D-dimers
- Regulated by PAI-1, α2-antiplasmin'),

('d0000020-0000-0000-0000-000000000020'::uuid, 'diagnosis', 3, 'Assessment of Bleeding Risk', 
'Preoperative assessment of bleeding risk is essential for safe surgical practice. A systematic approach includes history, examination, and selective laboratory testing.

**Clinical History:**
- Previous surgical bleeding (most predictive)
- Easy bruising or prolonged bleeding from minor cuts
- Epistaxis, menorrhagia, gum bleeding
- Family history of bleeding disorders
- Medication history: anticoagulants, antiplatelets, NSAIDs, herbal supplements (ginkgo, garlic, fish oil)
- Medical conditions: liver disease, renal failure, malignancy

**Physical Examination:**
- Petechiae (platelet disorders)
- Ecchymoses (coagulation factor deficiency)
- Haemarthrosis (severe factor deficiency)
- Signs of liver disease (spider naevi, palmar erythema)

**Laboratory Tests:**
- Prothrombin Time (PT)/INR: extrinsic pathway, warfarin monitoring
- Activated Partial Thromboplastin Time (aPTT): intrinsic pathway, heparin monitoring
- Platelet count: thrombocytopenia if <150,000/μL
- Bleeding time: rarely used now
- Fibrinogen level
- D-dimer: fibrinolysis marker
- Thromboelastography (TEG)/ROTEM: global haemostasis assessment

**When to Test:**
- Positive bleeding history
- Liver or renal disease
- Major surgery with significant blood loss expected
- Patients on anticoagulation
- Not recommended for routine preoperative screening in healthy patients'),

('d0000020-0000-0000-0000-000000000020'::uuid, 'management', 4, 'Surgical Haemostatic Techniques', 
'Surgical control of bleeding employs mechanical, thermal, and pharmacological methods. The choice depends on the source and severity of bleeding.

**Mechanical Methods:**
- Direct pressure: first-line for most bleeding
- Ligature: suture ties for identified vessels
- Suture ligation: transfixion sutures for larger vessels
- Vascular clips: quick application, various sizes
- Stapling devices: for vessel transection
- Packing: for diffuse ooze, liver injuries
- Tourniquets: extremity surgery (max 2 hours)

**Thermal Methods:**
- Monopolar electrocautery: cutting and coagulation
- Bipolar electrocautery: precise coagulation, less tissue damage
- Harmonic scalpel: ultrasonic vibration, minimal lateral thermal spread
- LigaSure/Enseal: vessel sealing up to 7mm
- Argon beam coagulator: surface coagulation

**Topical Haemostatic Agents:**

*Mechanical agents:*
- Gelatin sponge (Gelfoam): absorbs blood, provides matrix
- Oxidized cellulose (Surgicel): low pH promotes clotting
- Microfibrillar collagen (Avitene): platelet aggregation

*Active agents:*
- Thrombin (Tisseel): directly converts fibrinogen to fibrin
- Fibrin sealants: combine thrombin + fibrinogen
- Tranexamic acid: topical antifibrinolytic

**Damage Control Surgery:**
- For severely injured patients with coagulopathy
- Abbreviated laparotomy with packing
- ICU resuscitation
- Planned re-exploration in 24-48 hours'),

('d0000020-0000-0000-0000-000000000020'::uuid, 'complications', 5, 'Management of Anticoagulation', 
'Perioperative management of patients on anticoagulation requires balancing bleeding risk against thrombotic risk.

**Warfarin:**
- Stop 5 days before surgery (INR normalizes)
- Bridge with LMWH if high thrombotic risk (mechanical valve, recent VTE)
- Check INR day before surgery (target <1.5 for most procedures)
- Reversal if urgent: Vitamin K (slow), FFP (moderate), PCC (rapid)
- Resume 12-24 hours postoperatively if haemostasis adequate

**Direct Oral Anticoagulants (DOACs):**
- Dabigatran (Pradaxa): stop 2-4 days (longer if renal impairment)
- Rivaroxaban (Xarelto): stop 2 days
- Apixaban (Eliquis): stop 2 days
- Reversal: Idarucizumab for dabigatran, Andexanet alfa for Xa inhibitors

**Antiplatelet Agents:**
- Aspirin: stop 7-10 days for major surgery; continue for cardiac surgery
- Clopidogrel: stop 5-7 days
- Ticagrelor: stop 5 days
- For coronary stents: consult cardiology (dual antiplatelet duration varies)

**Heparin:**
- UFH: stop 4-6 hours before surgery
- LMWH: stop 24 hours before (longer if therapeutic dose)
- Reversal: Protamine sulfate

**Intraoperative Anticoagulation:**
- Vascular surgery: UFH 80-100 units/kg
- Cardiac surgery: higher doses with ACT monitoring
- Reversal with protamine at end of procedure'),

('d0000020-0000-0000-0000-000000000020'::uuid, 'key_points', 6, 'Key Points', 
'• Haemostasis involves vascular, platelet, and coagulation factor components working in concert
• Primary haemostasis forms the platelet plug; secondary haemostasis stabilizes it with fibrin
• PT/INR measures extrinsic pathway; aPTT measures intrinsic pathway
• Clinical bleeding history is the most important predictor of surgical bleeding risk
• Routine preoperative coagulation testing is not indicated in healthy patients
• Mechanical methods (pressure, ligation) are first-line for surgical bleeding control
• Electrocautery, harmonic scalpel, and vessel-sealing devices provide thermal haemostasis
• Topical haemostatic agents include gelatin, cellulose, collagen, and thrombin-based products
• Warfarin requires 5 days cessation; DOACs require 2-4 days
• Bridging anticoagulation needed for high-risk patients (mechanical valves, recent VTE)
• Antiplatelet management requires coordination with cardiology for coronary stent patients
• Tranexamic acid reduces surgical blood loss in major surgery
• Damage control surgery with packing used for coagulopathic trauma patients
• Point-of-care testing (TEG/ROTEM) guides blood product replacement
• Goal-directed transfusion therapy improves outcomes over empiric replacement');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000020-0000-0000-0000-000000000020'::uuid, 1, 'Which component is primarily responsible for primary haemostasis?', 'Fibrinogen', 'Platelets', 'Factor VIII', 'Thrombin', 'Protein C', 'B', 'Primary haemostasis involves platelet adhesion, activation, and aggregation to form the initial platelet plug. Coagulation factors are involved in secondary haemostasis.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 2, 'The prothrombin time (PT) primarily measures which coagulation pathway?', 'Intrinsic pathway', 'Extrinsic pathway', 'Common pathway only', 'Fibrinolytic pathway', 'Platelet function', 'B', 'PT measures the extrinsic pathway (Factor VII, tissue factor) and common pathway. The aPTT measures the intrinsic pathway.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 3, 'Which natural anticoagulant inhibits thrombin and factors IXa, Xa, and XIa?', 'Protein C', 'Protein S', 'Antithrombin III', 'Tissue factor pathway inhibitor', 'Plasminogen', 'C', 'Antithrombin III is the major inhibitor of thrombin and several activated coagulation factors. Its activity is enhanced 1000-fold by heparin.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 4, 'What is the most predictive factor for surgical bleeding risk?', 'Abnormal PT/INR', 'Low platelet count', 'Previous surgical bleeding history', 'Family history of bleeding', 'Use of NSAIDs', 'C', 'A personal history of previous surgical or procedural bleeding is the most predictive factor for future surgical bleeding risk.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 5, 'Petechiae on physical examination suggest a disorder of:', 'Coagulation factors', 'Platelets or vessel wall', 'Fibrinolysis', 'Vitamin K deficiency', 'Liver synthetic function', 'B', 'Petechiae are small pinpoint hemorrhages that indicate platelet disorders or vascular fragility. Coagulation factor deficiencies typically cause larger ecchymoses or haemarthrosis.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 6, 'Which topical haemostatic agent works by directly converting fibrinogen to fibrin?', 'Gelfoam', 'Surgicel', 'Avitene', 'Thrombin', 'Tranexamic acid', 'D', 'Thrombin directly converts fibrinogen to fibrin, forming a clot. Other agents work through mechanical means or platelet aggregation.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 7, 'How many days before surgery should warfarin be discontinued for elective procedures?', '1 day', '2 days', '3 days', '5 days', '10 days', 'D', 'Warfarin should be stopped 5 days before surgery to allow INR to normalize. The half-life of warfarin is 36-42 hours.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 8, 'What is the reversal agent for dabigatran?', 'Vitamin K', 'Protamine sulfate', 'Fresh frozen plasma', 'Idarucizumab', 'Andexanet alfa', 'D', 'Idarucizumab (Praxbind) is a monoclonal antibody fragment that specifically reverses dabigatran. Andexanet alfa reverses factor Xa inhibitors.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 9, 'For how long should clopidogrel be stopped before major elective surgery?', '24 hours', '48 hours', '5-7 days', '10-14 days', '21 days', 'C', 'Clopidogrel irreversibly inhibits platelet P2Y12 receptors. Since platelet lifespan is 7-10 days, 5-7 days cessation allows adequate new platelet production.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 10, 'What is the maximum recommended duration for tourniquet use in extremity surgery?', '30 minutes', '1 hour', '2 hours', '4 hours', '6 hours', 'C', 'Tourniquet time should generally not exceed 2 hours to minimize risk of nerve injury, muscle damage, and reperfusion injury. Brief deflation periods may extend safe use.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 11, 'Which vessel-sealing device uses ultrasonic vibration for haemostasis?', 'Monopolar cautery', 'Bipolar cautery', 'Harmonic scalpel', 'Argon beam coagulator', 'LigaSure', 'C', 'The harmonic scalpel uses ultrasonic vibration (55,000 Hz) to denature proteins and seal vessels with minimal lateral thermal spread.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 12, 'Oxidized cellulose (Surgicel) promotes haemostasis primarily through:', 'Low pH causing protein denaturation', 'Direct thrombin activation', 'Platelet aggregation', 'Fibrinolysis inhibition', 'Vasoconstriction', 'A', 'Oxidized cellulose has a low pH (2.5-3.0) that promotes haemostasis through protein denaturation and provides a matrix for clot formation.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 13, 'Which laboratory test provides a global assessment of haemostasis?', 'PT/INR', 'aPTT', 'Platelet count', 'Thromboelastography (TEG)', 'D-dimer', 'D', 'TEG/ROTEM provides a global assessment of clot formation and lysis, evaluating the interaction of platelets, coagulation factors, and fibrinolysis.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 14, 'What is the role of Factor XIII in haemostasis?', 'Activates prothrombin', 'Cross-links fibrin strands', 'Activates platelets', 'Inhibits fibrinolysis', 'Converts fibrinogen to fibrin', 'B', 'Factor XIII (transglutaminase) cross-links fibrin strands, stabilizing the clot and making it resistant to fibrinolysis.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 15, 'Protamine sulfate is the reversal agent for:', 'Warfarin', 'Heparin', 'Dabigatran', 'Rivaroxaban', 'Aspirin', 'B', 'Protamine sulfate, a positively charged molecule, binds to and neutralizes negatively charged heparin. It reverses UFH completely and LMWH partially.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 16, 'In damage control surgery, what is the primary purpose of abdominal packing?', 'Absorb blood for transfusion', 'Provide definitive hemostasis', 'Temporize bleeding until resuscitation', 'Prevent adhesion formation', 'Reduce infection risk', 'C', 'Damage control surgery uses packing to temporize bleeding while the patient is resuscitated in ICU to correct coagulopathy, hypothermia, and acidosis.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 17, 'Von Willebrand factor (vWF) is essential for:', 'Fibrin cross-linking', 'Platelet adhesion to collagen', 'Thrombin generation', 'Fibrinolysis', 'Vasoconstriction', 'B', 'vWF acts as a bridge between platelets (via GPIb receptor) and exposed subendothelial collagen, essential for platelet adhesion at sites of vascular injury.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 18, 'Which medication should be continued perioperatively in patients undergoing cardiac surgery?', 'Clopidogrel', 'Warfarin', 'Aspirin', 'Rivaroxaban', 'Ticagrelor', 'C', 'Aspirin is typically continued perioperatively for cardiac surgery as the benefits outweigh the bleeding risk. Other antiplatelet/anticoagulant agents are usually stopped.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 19, 'Tranexamic acid works by:', 'Inhibiting thrombin', 'Blocking platelet aggregation', 'Inhibiting plasminogen activation', 'Activating Factor XIII', 'Enhancing Protein C', 'C', 'Tranexamic acid is an antifibrinolytic that competitively inhibits plasminogen activation, thereby reducing clot breakdown and blood loss.'),
('d0000020-0000-0000-0000-000000000020'::uuid, 20, 'Which patient requires bridging anticoagulation when stopping warfarin for surgery?', 'Atrial fibrillation with CHADS2 score of 1', 'History of DVT 2 years ago', 'Mechanical mitral valve', 'Bioprosthetic aortic valve', 'Peripheral vascular disease', 'C', 'Patients with mechanical heart valves, especially mitral, have high thrombotic risk and require bridging with LMWH when warfarin is discontinued for surgery.');
