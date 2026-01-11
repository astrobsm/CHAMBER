-- Surgery 4 MCQ Question Bank - Batch 1
-- Section A: Vascular & Cardiothoracic Surgery - Varicose Veins and Venous Ulcers
-- 40 Questions

-- Topic: Varicose Veins and Venous Ulcers
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000001-0000-0000-0000-000000000001', 'Varicose Veins and Venous Ulcers', 'a0000004-0000-0000-0000-000000000004', 'Pathophysiology, diagnosis and management of varicose veins and venous ulceration', 1, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which vein is most commonly affected in primary varicose veins?',
 'Great saphenous vein', 'Small saphenous vein', 'Anterior accessory saphenous vein', 'Perforator veins', 'Deep femoral vein',
 'A', 'The great saphenous vein (GSV) is affected in 70-80% of cases of primary varicose veins. It runs from the medial malleolus to the saphenofemoral junction in the groin.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The saphenofemoral junction is located:',
 'At the popliteal fossa', '2-3 cm below and lateral to pubic tubercle', 'At the level of the knee joint', 'At the ankle', 'At the inguinal ligament',
 'B', 'The saphenofemoral junction is located 2-3 cm below and lateral to the pubic tubercle, where the GSV joins the common femoral vein.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which clinical test assesses saphenofemoral incompetence?',
 'Buerger test', 'Trendelenburg test', 'Allen test', 'Ankle-brachial index', 'Homans sign',
 'B', 'The Trendelenburg test assesses saphenofemoral junction competence. The leg is elevated to empty veins, a tourniquet is applied at the upper thigh, and the patient stands. Rapid filling before tourniquet release indicates perforator incompetence.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The CEAP classification for venous disease uses all of the following EXCEPT:',
 'Clinical severity', 'Etiology', 'Anatomy', 'Duration of symptoms', 'Pathophysiology',
 'D', 'CEAP classification includes Clinical (C0-C6), Etiologic (congenital, primary, secondary), Anatomic (superficial, deep, perforator), and Pathophysiologic (reflux, obstruction). Duration is not part of CEAP.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'C4 in CEAP classification indicates:',
 'Varicose veins', 'Edema', 'Skin changes (pigmentation, eczema)', 'Healed ulcer', 'Active ulcer',
 'C', 'C4 indicates skin changes including pigmentation, eczema, lipodermatosclerosis. C1=telangiectasias, C2=varicose veins, C3=edema, C5=healed ulcer, C6=active ulcer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Venous ulcers most commonly occur in which location?',
 'Lateral malleolus', 'Gaiter area (medial malleolus)', 'Dorsum of foot', 'Shin', 'Heel',
 'B', 'Venous ulcers typically occur in the gaiter area around the medial malleolus due to the anatomy of perforating veins and highest venous pressure in this region.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which investigation is gold standard for assessing venous reflux?',
 'Venography', 'Duplex ultrasonography', 'Plethysmography', 'CT venography', 'MR venography',
 'B', 'Duplex ultrasonography is the gold standard for assessing venous reflux, anatomy, and patency. It combines B-mode imaging with Doppler flow assessment.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Reflux time greater than what duration is considered pathological in the superficial venous system?',
 '0.3 seconds', '0.5 seconds', '1.0 seconds', '2.0 seconds', '3.0 seconds',
 'B', 'Reflux time >0.5 seconds in the superficial venous system and >1.0 second in the deep venous system is considered pathological on duplex ultrasound.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Lipodermatosclerosis refers to:',
 'Lipid deposits in the skin', 'Fibrosis and hardening of subcutaneous tissue', 'Lipoma of the leg', 'Fat necrosis', 'Subcutaneous emphysema',
 'B', 'Lipodermatosclerosis is chronic fibrosis and hardening of subcutaneous tissue due to chronic venous hypertension. It causes the classic inverted champagne bottle leg appearance.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The main mechanism of venous return from the lower limb is:',
 'Gravity', 'Arterial pressure', 'Calf muscle pump', 'Negative intrathoracic pressure', 'Venous valves alone',
 'C', 'The calf muscle pump is the main mechanism of venous return. Contraction of calf muscles compresses the deep veins, propelling blood toward the heart with valves preventing backflow.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Corona phlebectatica refers to:',
 'Coronary vein thrombosis', 'Fan-shaped telangiectasias at the ankle', 'Thrombosis of saphenous vein', 'Venous gangrene', 'Varicose veins of the thigh',
 'B', 'Corona phlebectatica is a fan-shaped pattern of telangiectasias and reticular veins at the ankle, indicating chronic venous insufficiency. It is a C4 feature in CEAP.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which is the first-line treatment for uncomplicated varicose veins?',
 'Surgical stripping', 'Compression stockings and lifestyle modification', 'Endovenous laser ablation', 'Sclerotherapy', 'Radiofrequency ablation',
 'B', 'Conservative management with compression stockings, leg elevation, exercise, and weight loss is first-line treatment. Interventional treatment is indicated for symptomatic disease or complications.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Endovenous laser ablation (EVLA) works by:',
 'Mechanical disruption of vein wall', 'Thermal damage causing vein fibrosis', 'Chemical sclerosis', 'Radiofrequency energy', 'Cryotherapy',
 'B', 'EVLA uses laser energy to cause thermal damage to the vein wall, leading to fibrosis and occlusion. It is performed under ultrasound guidance with tumescent anesthesia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The Cockett perforators are located:',
 'In the thigh', 'Posterior to medial malleolus', 'In the popliteal fossa', 'Lateral aspect of leg', 'Anterior tibial region',
 'B', 'Cockett perforators (medial ankle perforators) are located posterior to the medial malleolus. They connect the posterior arch vein to the posterior tibial veins and are often incompetent in venous ulcers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Atrophie blanche refers to:',
 'White patches of sclerosis with telangiectasias', 'Vitiligo-like depigmentation', 'White blood cell infiltration', 'Fibrotic scarring', 'Skin calcification',
 'A', 'Atrophie blanche consists of white, avascular, atrophic skin patches with surrounding telangiectasias, seen in chronic venous insufficiency. It indicates severe microcirculatory damage.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which is a contraindication to sclerotherapy?',
 'Telangiectasias', 'Deep vein thrombosis', 'Reticular veins', 'Varicose tributaries', 'Spider veins',
 'B', 'Deep vein thrombosis (acute or recent) is a contraindication to sclerotherapy due to risk of extension. Other contraindications include allergy to sclerosant, immobility, and pregnancy.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The most common complication of varicose vein surgery is:',
 'Deep vein thrombosis', 'Recurrence', 'Saphenous nerve injury', 'Wound infection', 'Hemorrhage',
 'C', 'Saphenous nerve injury causing numbness or paresthesia is the most common complication, occurring in 10-15% of patients after GSV stripping, especially below the knee.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Foam sclerotherapy uses:',
 'Carbon dioxide and sclerosant', 'Air and sclerosant mixed to create foam', 'Liquid nitrogen', 'Heated saline', 'Ethanol solution',
 'B', 'Foam sclerotherapy uses the Tessari method - mixing air with sclerosant (typically polidocanol or sodium tetradecyl sulfate) to create microfoam, which displaces blood and has prolonged contact with the vein wall.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which statement about compression therapy is correct?',
 'Class 1 provides highest compression', 'Graduated compression is highest at ankle', 'Compression should be avoided in ulcers', 'Bandaging is applied from knee downward', 'Stockings should be removed at night and during walking',
 'B', 'Graduated compression stockings provide highest pressure at the ankle (decreasing proximally). This aids venous return. Class 3 provides highest compression (30-40 mmHg).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Secondary varicose veins are most commonly caused by:',
 'Pregnancy', 'Deep vein thrombosis', 'Heredity', 'Prolonged standing', 'Obesity',
 'B', 'Secondary varicose veins result from deep vein thrombosis causing deep venous obstruction and reflux, with subsequent overload of the superficial system. Primary varicose veins are due to inherent valve weakness.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The Brodie-Trendelenburg test becomes positive when tourniquet is released at:',
 'Level of SFJ incompetence', 'Level of SPJ incompetence', 'Level of perforator incompetence', 'Any level', 'Mid-thigh level only',
 'A', 'In the modified Brodie-Trendelenburg test, rapid filling of varicosities after tourniquet release at the upper thigh indicates saphenofemoral junction incompetence.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The small saphenous vein drains into:',
 'Common femoral vein', 'Popliteal vein', 'Deep femoral vein', 'Posterior tibial vein', 'Anterior tibial vein',
 'B', 'The small saphenous vein (SSV) runs posterior to the lateral malleolus and drains into the popliteal vein at the saphenopopliteal junction in the popliteal fossa.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Pentoxifylline in venous ulcers works by:',
 'Vasoconstriction', 'Improving red cell deformability', 'Anticoagulation', 'Direct wound healing', 'Antibacterial effect',
 'B', 'Pentoxifylline improves red cell deformability, reduces blood viscosity, and has anti-inflammatory effects. It is an adjunct to compression therapy in venous ulcers.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which factor most strongly predicts venous ulcer healing?',
 'Patient age', 'Ulcer size and duration', 'Gender', 'Smoking status', 'Diabetes mellitus',
 'B', 'Ulcer size and duration are the strongest predictors of healing. Larger ulcers and those present for longer duration have lower healing rates and higher recurrence rates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Ambulatory venous pressure (AVP) in severe chronic venous insufficiency:',
 'Falls significantly with exercise', 'Remains elevated despite exercise', 'Is lower than normal', 'Is unaffected by posture', 'Drops to zero with walking',
 'B', 'In severe CVI, ambulatory venous pressure fails to fall normally with exercise due to reflux. Normal AVP drops to 20-30 mmHg with exercise; in CVI it remains elevated (>50 mmHg).', 'hard', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Superficial thrombophlebitis of varicose veins is best managed by:',
 'Immediate surgery', 'Anticoagulation and NSAIDs with compression', 'Antibiotics only', 'Bed rest', 'Thrombolysis',
 'B', 'Superficial thrombophlebitis is managed with NSAIDs, compression, and early mobilization. Anticoagulation is indicated if clot extends toward SFJ/SPJ (within 3 cm) or deep veins.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The Boyd perforator is located:',
 'Below the knee on medial aspect', 'In the thigh', 'At the ankle', 'In the popliteal fossa', 'Lateral calf',
 'A', 'The Boyd perforator is located below the knee on the medial aspect of the leg, connecting the GSV to the posterior tibial veins. It is a common site of incompetence.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'High ligation and stripping of GSV involves:',
 'Ligating tributaries only', 'Flush ligation at SFJ and stripping to knee', 'Stripping entire GSV to ankle', 'Perforator ligation only', 'Vein ablation without ligation',
 'B', 'Standard treatment involves flush ligation at SFJ with all tributaries, and stripping the GSV to the knee. Stripping below knee increases saphenous nerve injury risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Venous claudication is characterized by:',
 'Pain on walking relieved by rest and elevation', 'Pain at rest worse at night', 'Cramping pain in calf muscles', 'Burning pain in feet', 'Pain that improves with walking',
 'A', 'Venous claudication is bursting pain in the leg during exercise (particularly climbing) due to venous outflow obstruction. Unlike arterial claudication, it is relieved by elevation not just rest.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The VCSS (Venous Clinical Severity Score) assesses all EXCEPT:',
 'Pain', 'Varicose veins', 'Genetic factors', 'Inflammation', 'Ulcer characteristics',
 'C', 'VCSS assesses pain, varicose veins, edema, skin pigmentation, inflammation, induration, ulcer number, duration, and size, plus compression use. Genetic factors are not included.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Radiofrequency ablation of varicose veins differs from EVLA in:',
 'Using lower temperatures', 'Not requiring tumescent anesthesia', 'Only treating SSV', 'Having higher recurrence rates', 'Being performed without ultrasound',
 'A', 'Radiofrequency ablation uses lower temperatures (120C vs 800-1000C for EVLA) with segmental pullback technique. Both require tumescent anesthesia and have similar efficacy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which dressing is most appropriate for a heavily exudating venous ulcer?',
 'Film dressings', 'Alginate dressings', 'Paraffin gauze', 'Dry gauze', 'Hydrocolloid dressings',
 'B', 'Alginate dressings are highly absorbent and appropriate for heavily exudating wounds. They form a gel on contact with exudate, maintaining moist wound healing environment.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The typical appearance of a venous ulcer includes:',
 'Punched-out edges with exposed tendons', 'Shallow with sloping edges and granulation tissue', 'Deep with undermined edges', 'Dry necrotic base', 'Pale wound bed',
 'B', 'Venous ulcers are typically shallow with sloping/shelving edges, granulating base, and surrounding skin changes (pigmentation, lipodermatosclerosis). Arterial ulcers have punched-out edges.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'SEPS (Subfascial Endoscopic Perforator Surgery) is indicated for:',
 'Primary GSV incompetence', 'Recurrent ulcers with perforator incompetence', 'Acute DVT', 'Spider veins', 'First-line treatment of varicose veins',
 'B', 'SEPS is indicated for chronic venous ulcers with incompetent perforators, especially when conservative management fails. It allows perforator ligation through healthy tissue.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Cyanoacrylate glue ablation of varicose veins:',
 'Requires tumescent anesthesia', 'Requires post-procedure compression', 'Does not require tumescent anesthesia', 'Has highest recurrence rate', 'Cannot be used for GSV',
 'C', 'Cyanoacrylate glue (VenaSeal) obliterates the vein mechanically without thermal energy, so tumescent anesthesia is not required. Post-procedure compression is also not mandatory.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which is NOT a risk factor for varicose veins?',
 'Female gender', 'Obesity', 'High dietary fiber', 'Prolonged standing occupation', 'Family history',
 'C', 'Risk factors include female gender, pregnancy, obesity, prolonged standing, family history, and age. High fiber diet may actually be protective by preventing constipation and straining.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Eczema in chronic venous insufficiency is best treated with:',
 'Oral steroids', 'Topical steroids and emollients', 'Antibiotics only', 'Surgical intervention', 'Antifungal creams',
 'B', 'Venous eczema is managed with topical steroids to reduce inflammation, emollients to maintain skin barrier, and compression therapy. Oral steroids are rarely needed.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The recurrence rate after varicose vein surgery at 5 years is approximately:',
 '5 percent', '15 percent', '30 percent', '50 percent', '70 percent',
 'C', 'Recurrence rates after varicose vein surgery are approximately 20-30% at 5 years. Causes include neovascularization, progression of disease, and inadequate initial treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'Which anticoagulant is preferred for extended treatment of DVT associated with varicose veins?',
 'Warfarin only', 'Direct oral anticoagulants (DOACs)', 'Aspirin', 'Clopidogrel', 'Fondaparinux',
 'B', 'DOACs (rivaroxaban, apixaban, edoxaban, dabigatran) are preferred for DVT treatment due to fixed dosing, no monitoring requirement, and comparable efficacy with lower bleeding risk.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000001-0000-0000-0000-000000000001', 'a0000004-0000-0000-0000-000000000004',
 'The ankle flare sign indicates:',
 'Acute infection', 'Arterial insufficiency', 'Chronic venous hypertension', 'Lymphedema', 'Cellulitis',
 'C', 'Ankle flare (corona phlebectatica) - fan-shaped telangiectasias around the ankle - is a sign of chronic venous hypertension and indicates significant venous disease.', 'medium', 'knowledge');
