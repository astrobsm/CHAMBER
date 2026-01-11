-- ============================================================================
-- SURGERY 3 CME ARTICLE 11: Vascular Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000077-0000-0000-0000-000000000077', 'a0000003-0000-0000-0000-000000000003', 'Vascular Surgery', 'Arterial and venous disorders requiring surgical management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000311-0000-0000-0000-000000000011',
    'c0000077-0000-0000-0000-000000000077',
    'a0000003-0000-0000-0000-000000000003',
    'Vascular Surgery: Arterial and Venous Disorders',
    'Peripheral Arterial Disease, Aneurysms and Venous Thromboembolism',
    'This article covers peripheral arterial disease and critical limb ischemia, abdominal aortic aneurysm management, carotid artery disease, acute limb ischemia, deep vein thrombosis and pulmonary embolism, and varicose veins. Emphasis on clinical presentation, diagnostic workup, and surgical indications.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000311-0001-0000-0000-000000000001', 'd0000311-0000-0000-0000-000000000011', 1,
'Intermittent claudication is characterized by:',
'Pain at rest relieved by walking', 'Muscle pain with walking that is relieved by rest', 'Constant severe limb pain', 'Pain only at night', NULL,
'B', 'Intermittent claudication is exercise-induced muscle pain (usually calf, but can be thigh or buttock depending on level of occlusion) relieved by rest within minutes. It indicates moderate peripheral arterial disease with adequate collaterals at rest. Claudication distance and time to relief help assess severity. Lifestyle modification and medication are first-line; surgery/intervention for disabling claudication.', 'easy'),

('e0000311-0002-0000-0000-000000000002', 'd0000311-0000-0000-0000-000000000011', 2,
'The ankle-brachial index (ABI) diagnostic of peripheral arterial disease is:',
'Greater than 1.3', 'Between 0.9 and 1.3', 'Less than or equal to 0.9', 'Exactly 1.0', NULL,
'C', 'ABI interpretation: >1.3 indicates non-compressible calcified vessels (diabetes, renal disease); 0.9-1.3 is normal; ≤0.9 indicates PAD; 0.4-0.9 indicates claudication range; <0.4 indicates critical limb ischemia. ABI is measured using Doppler and blood pressure cuffs comparing highest ankle pressure (dorsalis pedis or posterior tibial) to brachial pressure.', 'easy'),

('e0000311-0003-0000-0000-000000000003', 'd0000311-0000-0000-0000-000000000011', 3,
'Critical limb ischemia (CLI) is defined by:',
'Intermittent claudication only', 'Rest pain, tissue loss (ulcers/gangrene), or ABI <0.4', 'Normal pulses with pain', 'Mild calf pain with exercise', NULL,
'B', 'Critical limb ischemia represents advanced PAD with threatened limb viability. Criteria: rest pain (especially night pain relieved by dependency), tissue loss (ischemic ulcers, gangrene), ABI <0.4, or absolute ankle pressure <50-70 mmHg. CLI requires urgent revascularization; without intervention, amputation rates are 25% at 1 year and mortality 25%.', 'medium'),

('e0000311-0004-0000-0000-000000000004', 'd0000311-0000-0000-0000-000000000011', 4,
'The indication for elective repair of an abdominal aortic aneurysm (AAA) is:',
'Diameter greater than 3 cm', 'Diameter of 5.5 cm or greater (men) or 5.0 cm (women), or rapid expansion', 'Any AAA regardless of size', 'Only symptomatic aneurysms', NULL,
'B', 'AAA repair indications: diameter ≥5.5 cm (men) or ≥5.0 cm (women), rapid expansion (>1 cm/year or >0.5 cm in 6 months), symptomatic (pain, tenderness), or complicated (rupture, embolization). Rupture risk increases exponentially with size: <5 cm: 0-2%/year; 5-6 cm: 3-15%/year; >6 cm: 20-40%/year. Surveillance for smaller aneurysms.', 'medium'),

('e0000311-0005-0000-0000-000000000005', 'd0000311-0000-0000-0000-000000000011', 5,
'A patient presents with sudden onset severe leg pain, pallor, pulselessness, paresthesias, paralysis, and poikilothermia. This represents:',
'Chronic PAD', 'Acute limb ischemia - the 6 Ps', 'Deep vein thrombosis', 'Compartment syndrome', NULL,
'B', 'The 6 Ps of acute limb ischemia: Pain (sudden, severe), Pallor, Pulselessness, Paresthesias (early sensory deficit), Paralysis (late motor deficit - limb threatening), Poikilothermia (cold). Causes: embolism (cardiac source - AFib, MI, vegetations) or thrombosis (atherosclerotic plaque rupture). This is a surgical emergency; revascularization within 6 hours to prevent irreversible damage.', 'easy'),

('e0000311-0006-0000-0000-000000000006', 'd0000311-0000-0000-0000-000000000011', 6,
'The most common source of arterial embolism causing acute limb ischemia is:',
'Atherosclerotic plaque', 'Left atrium in atrial fibrillation', 'Deep vein thrombus via patent foramen ovale', 'Aortic aneurysm', NULL,
'B', 'Cardiac sources account for 80-90% of arterial emboli. Atrial fibrillation is the most common source (left atrial appendage thrombus). Other sources: post-MI mural thrombus, prosthetic valves, endocarditis, cardiomyopathy. Non-cardiac: arterial aneurysm, atheroma (blue toe syndrome). Paradoxical embolism from DVT through PFO is rare but should be considered.', 'medium'),

('e0000311-0007-0000-0000-000000000007', 'd0000311-0000-0000-0000-000000000011', 7,
'Symptomatic carotid artery stenosis of 70% or greater is best managed with:',
'Medical therapy alone', 'Carotid endarterectomy or carotid artery stenting', 'Observation only', 'External carotid ligation', NULL,
'B', 'Symptomatic carotid stenosis ≥70% (stroke or TIA within 6 months) benefits from revascularization (CEA or CAS) in addition to best medical therapy. CEA is preferred for most patients; CAS may be considered for high surgical risk patients. Benefit greatest when performed within 2 weeks of symptoms. Asymptomatic 60-70% stenosis requires individual risk assessment.', 'medium'),

('e0000311-0008-0000-0000-000000000008', 'd0000311-0000-0000-0000-000000000011', 8,
'Virchow triad for venous thrombosis includes:',
'Arterial stenosis, hypertension, diabetes', 'Stasis, hypercoagulability, endothelial injury', 'Infection, trauma, immobility', 'Obesity, smoking, alcohol', NULL,
'B', 'Virchow triad describes pathophysiology of venous thromboembolism: (1) Stasis - immobility, surgery, long travel; (2) Hypercoagulability - cancer, thrombophilias, pregnancy, OCPs, dehydration; (3) Endothelial injury - trauma, surgery, catheters, inflammation. DVT can lead to pulmonary embolism and post-thrombotic syndrome. Prevention with anticoagulation and mechanical prophylaxis is crucial.', 'easy'),

('e0000311-0009-0000-0000-000000000009', 'd0000311-0000-0000-0000-000000000011', 9,
'The Wells score is used to assess clinical probability of:',
'Peripheral arterial disease', 'Deep vein thrombosis and pulmonary embolism', 'Abdominal aortic aneurysm', 'Carotid stenosis', NULL,
'B', 'Wells score is a clinical prediction rule for DVT and PE (separate scores exist for each). For DVT: assesses active cancer, paralysis/immobilization, recent bedridden status, tenderness, swelling, asymmetry, pitting edema, collateral veins, alternative diagnosis. Guides D-dimer testing and imaging. Low probability + negative D-dimer can exclude DVT without ultrasound.', 'easy'),

('e0000311-0010-0000-0000-000000000010', 'd0000311-0000-0000-0000-000000000011', 10,
'The treatment of choice for great saphenous vein incompetence with symptomatic varicose veins is:',
'Conservative compression therapy only', 'Endovenous laser ablation or radiofrequency ablation', 'Immediate limb amputation', 'Arterial bypass', NULL,
'B', 'Endovenous thermal ablation (laser or radiofrequency) is first-line for great saphenous vein incompetence. Advantages over stripping: outpatient procedure, faster recovery, less pain, equivalent efficacy. Alternatives include foam sclerotherapy and ultrasound-guided sclerotherapy for smaller veins. High ligation and stripping is less commonly performed now but remains effective.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 11 (Vascular Surgery) with 10 self-assessment questions inserted' as status;
