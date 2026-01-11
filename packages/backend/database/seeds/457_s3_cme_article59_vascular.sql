-- ============================================================================
-- SURGERY 3 CME ARTICLE 59: Vascular Surgery Essentials
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000125-0000-0000-0000-000000000125', 'a0000003-0000-0000-0000-000000000003', 'Vascular Surgery Essentials', 'Key vascular surgery concepts')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000359-0000-0000-0000-000000000059',
    'c0000125-0000-0000-0000-000000000125',
    'a0000003-0000-0000-0000-000000000003',
    'Vascular Surgery Essentials: Arterial and Venous Disease',
    'Core Concepts in Vascular Pathology',
    'This article covers essential vascular surgery concepts including peripheral arterial disease, abdominal aortic aneurysm, carotid disease, acute limb ischemia, venous disease, and principles of vascular reconstruction.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000359-0001-0000-0000-000000000001', 'd0000359-0000-0000-0000-000000000059', 1,
'Intermittent claudication is characterized by:',
'Pain at rest', 'Reproducible muscle pain with walking that resolves with rest, caused by peripheral arterial disease', 'Pain that worsens with elevation', 'Constant pain unrelated to activity', NULL,
'B', 'Intermittent claudication: classic symptom of peripheral arterial disease (PAD). Features: (1) Muscle pain, aching, cramping, or fatigue in leg muscles (calf most common, also thigh, buttock depending on disease level); (2) Brought on by walking a reproducible distance; (3) Relieved by rest (within minutes, not position-dependent unlike neurogenic claudication); (4) Reproducible. Fontaine classification: I=asymptomatic, II=claudication (IIa>200m, IIb<200m), III=rest pain, IV=tissue loss. ABI <0.9 confirms PAD. Treatment: risk factor modification, exercise, medications, revascularization if severe/lifestyle-limiting.', 'easy'),

('e0000359-0002-0000-0000-000000000002', 'd0000359-0000-0000-0000-000000000059', 2,
'Ankle-brachial index (ABI) of 0.4 indicates:',
'Normal circulation', 'Severe peripheral arterial disease with critical limb ischemia risk', 'Venous disease', 'Arterial calcification only', NULL,
'B', 'Ankle-brachial index (ABI): ratio of ankle systolic pressure to brachial systolic pressure. Interpretation: >1.3 = non-compressible (calcified vessels, often diabetic); 1.0-1.3 = normal; 0.9-1.0 = borderline; 0.5-0.9 = mild-moderate PAD (claudication); <0.5 = severe PAD (critical limb ischemia risk); <0.4 = critical limb ischemia (rest pain, tissue loss). ABI correlates with cardiovascular mortality. Also used post-revascularization to assess success. Toe-brachial index useful when ABI unreliable (calcified vessels).', 'easy'),

('e0000359-0003-0000-0000-000000000003', 'd0000359-0000-0000-0000-000000000059', 3,
'Abdominal aortic aneurysm (AAA) is defined as:',
'Any dilation of aorta', 'Aortic diameter greater than 3cm or greater than 50% increase from normal adjacent aorta', 'Only dissection', 'Narrowing of aorta', NULL,
'B', 'AAA definition: (1) Diameter >3cm (normal infrarenal aorta ~2cm); OR (2) Diameter >50% larger than normal adjacent aorta. Classification by size: <4cm = small, 4-5.5cm = medium, >5.5cm = large. Risk factors: smoking (strongest), male, age >65, family history, hypertension. Rupture risk: increases exponentially with size - <4cm = 0.5%/year; 5-5.9cm = 3-15%/year; >6cm = 20-40%/year. Screening: one-time US for men 65-75 who have ever smoked. Repair threshold: typically 5.5cm (men), 5.0cm (women), or symptomatic, or rapid growth (>0.5cm/6mo).', 'easy'),

('e0000359-0004-0000-0000-000000000004', 'd0000359-0000-0000-0000-000000000059', 4,
'Carotid endarterectomy (CEA) is indicated for:',
'All carotid plaques', 'Symptomatic carotid stenosis greater than 50-70% and asymptomatic stenosis greater than 60-80% in appropriate candidates', 'Only complete occlusion', 'All asymptomatic patients', NULL,
'B', 'Carotid endarterectomy indications: SYMPTOMATIC (TIA, stroke within 6 months): stenosis 50-99% (greater benefit with higher stenosis). Surgery within 2 weeks of symptoms optimal. ASYMPTOMATIC: stenosis >60-80% in patients with acceptable surgical risk and life expectancy >3-5 years. Benefits must outweigh risks. CEA technique: arteriotomy, removal of plaque with endarterectomy plane, patch closure. Alternative: carotid artery stenting (CAS) - may be preferred in high surgical risk, prior neck surgery/radiation, high lesion, restenosis. Goal: stroke prevention.', 'medium'),

('e0000359-0005-0000-0000-000000000005', 'd0000359-0000-0000-0000-000000000059', 5,
'Acute limb ischemia has a "golden window" of approximately:',
'24-48 hours', '4-6 hours before irreversible muscle damage occurs', '1 week', '30 minutes', NULL,
'B', 'Acute limb ischemia - time-critical emergency. Irreversible changes: muscle necrosis begins at 4-6 hours of complete ischemia, irreversible by 6-8 hours. Amputation threshold: typically 6 hours for warm ischemia. Rutherford classification guides urgency: I (viable, not immediately threatened); IIa (marginally threatened, salvageable with prompt treatment); IIb (immediately threatened, salvageable with immediate revascularization); III (irreversible, major tissue loss inevitable). Motor/sensory deficit indicates threatened limb. Treatment: anticoagulation (heparin), urgent revascularization (surgical embolectomy, bypass, or catheter-directed thrombolysis).', 'easy'),

('e0000359-0006-0000-0000-000000000006', 'd0000359-0000-0000-0000-000000000059', 6,
'Embolus vs thrombosis in acute limb ischemia:',
'Are clinically identical with no distinguishing features', 'Embolus typically has sudden onset, no claudication history, often AF source; thrombosis has PAD history, more gradual onset, collaterals', 'Are treated identically always', 'Embolus only affects veins', NULL,
'B', 'Embolus vs Thrombosis in acute limb ischemia: EMBOLUS: sudden, severe onset ("out of the blue"), no prior claudication history, cardiac source common (AF, MI, endocarditis), no collaterals developed (severe ischemia), contralateral leg normal. Treatment: surgical embolectomy (Fogarty catheter). THROMBOSIS: background of PAD/claudication, progression of known disease, more gradual, collaterals present (may have less severe ischemia), evidence of atherosclerosis. Treatment: may tolerate thrombolysis, often needs bypass. Clinical distinction important for management.', 'medium'),

('e0000359-0007-0000-0000-000000000007', 'd0000359-0000-0000-0000-000000000059', 7,
'Deep vein thrombosis (DVT) Virchow triad includes:',
'Only immobility', 'Venous stasis, endothelial injury, and hypercoagulability', 'Only hypercoagulability', 'Only trauma', NULL,
'B', 'Virchow triad for DVT/thrombosis: (1) STASIS: immobility, bed rest, long travel, heart failure, obesity; (2) ENDOTHELIAL INJURY: surgery, trauma, catheters, prior DVT; (3) HYPERCOAGULABILITY: inherited (Factor V Leiden, prothrombin mutation, protein C/S deficiency, antithrombin deficiency) or acquired (malignancy, pregnancy, OCP, antiphospholipid syndrome). DVT risk highest when multiple factors present. Prevention: early mobilization, mechanical prophylaxis (compression stockings, IPC), pharmacological prophylaxis (LMWH, UFH) in at-risk patients.', 'easy'),

('e0000359-0008-0000-0000-000000000008', 'd0000359-0000-0000-0000-000000000059', 8,
'Leriche syndrome presents with:',
'Upper extremity claudication', 'Buttock and thigh claudication, impotence, and absent femoral pulses due to aortoiliac occlusive disease', 'Only calf claudication', 'Normal femoral pulses', NULL,
'B', 'Leriche syndrome: aortoiliac occlusive disease (atherosclerosis causing stenosis/occlusion of distal aorta and iliac arteries). Classic triad: (1) Buttock and thigh claudication (bilateral); (2) Erectile dysfunction (impotence - from reduced internal iliac flow); (3) Absent/diminished femoral pulses. Treatment: endovascular (angioplasty/stenting for focal disease) or surgical (aortobifemoral bypass - gold standard for extensive disease, excellent patency). Risk factor modification essential. May have preserved distal pulses if collaterals developed.', 'medium'),

('e0000359-0009-0000-0000-000000000009', 'd0000359-0000-0000-0000-000000000059', 9,
'Chronic venous insufficiency results from:',
'Arterial disease', 'Venous valve incompetence and/or obstruction leading to venous hypertension, skin changes, and ulceration', 'Lymphatic obstruction only', 'Bone disease', NULL,
'B', 'Chronic venous insufficiency (CVI): venous hypertension from valve incompetence (primary or post-thrombotic) and/or obstruction. Results in: ambulatory venous hypertension. Clinical features (CEAP classification): C0=no signs; C1=telangiectasias/reticular veins; C2=varicose veins; C3=edema; C4=skin changes (pigmentation, eczema, lipodermatosclerosis); C5=healed ulcer; C6=active ulcer. Ulcers: typically medial malleolus (gaiter area), shallow, irregular, surrounding dermatitis. Treatment: compression therapy (cornerstone), elevation, wound care, venous intervention (ablation, stripping) for symptomatic varicose veins.', 'medium'),

('e0000359-0010-0000-0000-000000000010', 'd0000359-0000-0000-0000-000000000059', 10,
'Endovascular aneurysm repair (EVAR) compared to open AAA repair:',
'Has higher early mortality', 'Has lower early mortality but requires lifelong surveillance and may have more reinterventions', 'Is suitable for all aneurysm anatomies', 'Never has complications', NULL,
'B', 'EVAR vs Open AAA repair: EVAR advantages: lower 30-day mortality (1-2% vs 4-5%), less invasive, shorter hospital stay, faster recovery, suitable for high-risk patients. EVAR disadvantages: requires suitable anatomy (adequate landing zones, access vessels), endoleaks (persistent aneurysm sac pressurization), requires lifelong CT surveillance, higher reintervention rate. Long-term survival similar. Open repair: more durable, no surveillance needed, suitable for all anatomies if patient fit. Choice depends on anatomy, patient fitness, life expectancy, preference.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 59 (Vascular Surgery Essentials) with 10 self-assessment questions inserted' as status;
