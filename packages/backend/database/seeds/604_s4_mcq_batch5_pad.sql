-- Surgery 4 MCQ Question Bank - Batch 5
-- Section A: Vascular & Cardiothoracic Surgery - Peripheral Arterial Disease
-- 40 Questions

-- Topic: Peripheral Arterial Disease
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000005-0000-0000-0000-000000000005', 'Peripheral Arterial Disease', 'a0000004-0000-0000-0000-000000000004', 'Chronic and acute limb ischemia - diagnosis and management', 5, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of peripheral arterial disease is:',
 'Thromboangiitis obliterans', 'Atherosclerosis', 'Fibromuscular dysplasia', 'Vasculitis', 'Trauma',
 'B', 'Atherosclerosis accounts for over 90% of peripheral arterial disease. Risk factors include smoking, diabetes, hypertension, and hyperlipidemia.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Intermittent claudication is characterized by:',
 'Pain at rest relieved by walking', 'Muscle pain on exertion relieved by rest', 'Constant leg pain', 'Night pain only', 'Pain unrelated to activity',
 'B', 'Intermittent claudication is reproducible muscle pain on exertion (walking) that is relieved by rest within minutes. The claudication distance is consistent.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Critical limb ischemia is defined by:',
 'Claudication distance less than 200 meters', 'Rest pain or tissue loss with ankle pressure less than 50-70 mmHg', 'Intermittent claudication only', 'ABPI of 0.9', 'Absent pedal pulses only',
 'B', 'CLI is defined by rest pain for >2 weeks or ischemic ulcers/gangrene, with ankle pressure <50-70 mmHg or toe pressure <30-50 mmHg. It indicates limb-threatening ischemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'An ABPI of 0.4-0.9 indicates:',
 'Normal circulation', 'Mild to moderate PAD', 'Critical limb ischemia', 'Arterial calcification', 'Venous disease',
 'B', 'ABPI 0.9-1.3 is normal, 0.4-0.9 indicates mild-moderate PAD (claudication), <0.4 indicates severe PAD/CLI. ABPI >1.3 suggests calcified incompressible arteries.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Buerger test assesses:',
 'Venous insufficiency', 'Arterial supply to the leg', 'Lymphatic function', 'Nerve function', 'Deep vein patency',
 'B', 'Buerger test: elevated limb becomes pale (loss of blood), then placed in dependent position develops rubor (reactive hyperemia). Positive test indicates severe PAD.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The angle at which the leg becomes pale during Buerger test is called:',
 'Buerger angle', 'Critical angle', 'Pallor angle', 'Ischemic angle', 'Dependency angle',
 'A', 'Buerger angle is the angle of leg elevation at which it becomes pale. Normal is >90 degrees, <20 degrees indicates severe ischemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The most important modifiable risk factor for PAD is:',
 'Hypertension', 'Diabetes mellitus', 'Smoking', 'Hyperlipidemia', 'Obesity',
 'C', 'Smoking is the most important modifiable risk factor. Smokers have 4x increased risk and smoking cessation is the single most effective intervention for PAD.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for intermittent claudication is:',
 'Angioplasty', 'Bypass surgery', 'Supervised exercise therapy and risk factor modification', 'Amputation', 'Bed rest',
 'C', 'Supervised exercise therapy (walking programs) and cardiovascular risk factor modification (smoking cessation, statin, antiplatelet) are first-line for claudication.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Cilostazol is used in PAD because it:',
 'Is an anticoagulant', 'Causes vasodilation and inhibits platelet aggregation', 'Reduces cholesterol', 'Is an analgesic', 'Promotes collateral formation',
 'B', 'Cilostazol is a phosphodiesterase III inhibitor causing vasodilation and platelet inhibition. It improves claudication distance by 50-70%. Contraindicated in heart failure.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The Fontaine classification stage IIb indicates:',
 'Asymptomatic PAD', 'Claudication >200m', 'Claudication <200m', 'Rest pain', 'Gangrene',
 'C', 'Fontaine classification: I=asymptomatic, IIa=claudication >200m, IIb=claudication <200m, III=rest pain, IV=ulceration/gangrene.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The Rutherford classification category 4 indicates:',
 'Asymptomatic', 'Mild claudication', 'Rest pain', 'Minor tissue loss', 'Major tissue loss',
 'C', 'Rutherford: 0=asymptomatic, 1-3=claudication (mild/moderate/severe), 4=rest pain, 5=minor tissue loss, 6=major tissue loss.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Leriche syndrome involves occlusion of:',
 'Femoral artery', 'Popliteal artery', 'Aortoiliac segment', 'Tibial arteries', 'Subclavian artery',
 'C', 'Leriche syndrome is aortoiliac occlusive disease presenting with buttock/thigh claudication, impotence, and absent femoral pulses bilaterally.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The triad of Leriche syndrome includes all EXCEPT:',
 'Buttock claudication', 'Erectile dysfunction', 'Absent femoral pulses', 'Upper limb claudication', 'Thigh claudication',
 'D', 'Leriche syndrome triad: bilateral buttock/thigh claudication, erectile dysfunction, and absent/diminished femoral pulses. Upper limb is not affected.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'CT angiography for PAD:',
 'Cannot show calcification', 'Provides excellent anatomical detail for surgical planning', 'Requires arterial puncture', 'Has no radiation exposure', 'Cannot show below-knee vessels',
 'B', 'CTA provides excellent anatomical detail of entire arterial tree, shows calcification, requires IV contrast (not arterial puncture), and is useful for surgical/interventional planning.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Duplex ultrasound for PAD assessment shows stenosis when peak systolic velocity ratio is greater than:',
 '1.5', '2.0', '3.0', '4.0', '5.0',
 'B', 'PSV ratio >2.0 indicates >50% stenosis; >4.0 indicates >75% stenosis. Duplex is useful for screening and surveillance of interventions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The preferred conduit for infrainguinal bypass is:',
 'PTFE graft', 'Dacron graft', 'Autologous saphenous vein', 'Umbilical vein', 'Bovine graft',
 'C', 'Autologous great saphenous vein is the preferred conduit for infrainguinal bypass with superior patency (70-80% at 5 years) compared to prosthetic grafts, especially below knee.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Aortobifemoral bypass for aortoiliac disease has 5-year patency rate of approximately:',
 '30%', '50%', '70%', '85-90%', '100%',
 'D', 'Aortobifemoral bypass has excellent long-term patency (85-90% at 5 years) and is the gold standard surgical treatment for extensive aortoiliac occlusive disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Endovascular treatment of PAD offers:',
 'Better long-term patency than surgery', 'Lower procedural morbidity than surgery', 'No need for antiplatelet therapy', 'Better outcomes for long occlusions', 'Replacement of all open surgery',
 'B', 'Endovascular treatment has lower procedural morbidity/mortality, shorter recovery, but generally lower long-term patency. Best for short segment disease (TASC A/B lesions).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Drug-eluting stents and balloons for PAD use:',
 'Heparin', 'Paclitaxel or sirolimus', 'Aspirin', 'Statins', 'Antibiotics',
 'B', 'Drug-eluting devices use antiproliferative agents (paclitaxel, sirolimus) to reduce neointimal hyperplasia and restenosis, improving patency especially in femoropopliteal disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Acute limb ischemia is defined as ischemia symptoms present for less than:',
 '6 hours', '12 hours', '24 hours', '14 days', '4 weeks',
 'D', 'Acute limb ischemia is defined as sudden decrease in limb perfusion threatening limb viability, occurring within 14 days. Beyond this is chronic ischemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The six Ps of acute limb ischemia include all EXCEPT:',
 'Pain', 'Pallor', 'Pulselessness', 'Paralysis', 'Pyrexia',
 'E', 'The 6 Ps are: Pain, Pallor, Pulselessness, Paresthesia, Paralysis, and Perishing cold (Poikilothermia). Pyrexia is not one of them.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'In acute limb ischemia, the sign indicating muscle infarction and non-viable limb is:',
 'Pallor', 'Absent pulses', 'Fixed mottling with muscle rigidity', 'Pain', 'Reduced capillary refill',
 'C', 'Fixed mottling (non-blanching), muscle rigidity/tenderness, and sensory/motor loss indicate irreversible ischemia. Primary amputation rather than revascularization may be needed.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Rutherford class IIb acute limb ischemia indicates:',
 'Viable limb, not immediately threatened', 'Marginally threatened, salvageable with prompt treatment', 'Immediately threatened, requires urgent revascularization', 'Irreversible ischemia', 'Venous thrombosis',
 'C', 'Rutherford IIb is immediately threatened: salvageable with immediate revascularization (sensory loss beyond toes, muscle weakness). IIa is marginally threatened; III is irreversible.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The most common source of arterial embolism is:',
 'Deep vein thrombosis', 'Atrial fibrillation with left atrial thrombus', 'Aortic aneurysm', 'Subclavian aneurysm', 'Venous malformation',
 'B', 'Cardiac sources (especially atrial fibrillation) account for 80% of arterial emboli. Other sources include post-MI mural thrombus, endocarditis, and proximal aneurysms.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Features distinguishing embolus from thrombosis include:',
 'Chronic claudication history, bilateral involvement', 'Sudden onset, no claudication history, normal contralateral limb', 'Gradual onset over weeks', 'Always affects venous system', 'Never causes rest pain',
 'B', 'Embolism: sudden onset, no claudication history, cardiac source, normal contralateral pulses. Thrombosis: PAD history, bilateral disease, gradual progression.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Femoral embolectomy is performed using:',
 'Direct arteriotomy and clot removal', 'Fogarty balloon catheter', 'Thrombolysis only', 'Bypass grafting', 'Stenting',
 'B', 'Femoral embolectomy uses a Fogarty balloon catheter passed beyond the clot, inflated, and withdrawn to extract the embolus. It is performed under local anesthesia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Reperfusion injury after revascularization may cause:',
 'Immediate clinical improvement', 'Compartment syndrome and metabolic acidosis', 'Hypocalcemia', 'Hypernatremia', 'Respiratory alkalosis',
 'B', 'Reperfusion injury causes release of potassium, myoglobin, lactate; leading to hyperkalemia, metabolic acidosis, myoglobinuria, and compartment syndrome. May require fasciotomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The indication for four-compartment fasciotomy after revascularization is:',
 'All revascularization procedures', 'Compartment pressure >30 mmHg or within 30 mmHg of diastolic', 'Only for bypass surgery', 'Never indicated', 'Only for embolectomy',
 'B', 'Fasciotomy is indicated when compartment pressure >30 mmHg, or delta pressure (diastolic - compartment pressure) <30 mmHg. Clinical signs may also indicate need.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Blue toe syndrome is caused by:',
 'Venous thrombosis', 'Atheroemboli from proximal source', 'Frostbite', 'Raynaud phenomenon', 'Cyanotic heart disease',
 'B', 'Blue toe syndrome results from cholesterol/atheromatous emboli from proximal plaques (aorta, iliac) causing digital ischemia. Pulses are often palpable (shower of microemboli).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Thromboangiitis obliterans (Buerger disease) characteristically:',
 'Affects large vessels', 'Affects young male smokers with small vessel involvement', 'Is associated with atherosclerosis', 'Affects only upper limbs', 'Responds to statin therapy',
 'B', 'Buerger disease affects small and medium vessels in young smokers (usually male, <45 years), causing claudication, rest pain, and gangrene. Strongly associated with smoking.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The single most important treatment for Buerger disease is:',
 'Bypass surgery', 'Prostacyclin infusion', 'Complete smoking cessation', 'Amputation', 'Anticoagulation',
 'C', 'Complete smoking cessation is essential - disease progression stops with abstinence but continues with any tobacco use. Prostanoids may help but cannot replace smoking cessation.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Popliteal entrapment syndrome typically affects:',
 'Elderly patients with atherosclerosis', 'Young athletic individuals', 'Diabetic patients', 'Patients with coagulopathy', 'Patients with vasculitis',
 'B', 'Popliteal entrapment affects young athletic individuals due to anomalous relationship between popliteal artery and surrounding muscles (usually gastrocnemius). Causes claudication in young patients.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Adventitial cystic disease of the popliteal artery:',
 'Is a form of atherosclerosis', 'Causes claudication from mucin-containing cysts in arterial wall', 'Only affects veins', 'Requires anticoagulation', 'Is malignant',
 'B', 'Adventitial cystic disease causes claudication from mucin-containing cysts in the adventitia compressing the arterial lumen. Treatment is surgical (cyst excision or bypass).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Exercise testing in PAD can:',
 'Replace ABPI measurement', 'Confirm diagnosis when resting ABPI is normal but symptoms suggest PAD', 'Only be done in hospital', 'Is contraindicated in claudication', 'Has no diagnostic value',
 'B', 'Exercise testing (treadmill) can unmask PAD when resting ABPI is normal (borderline cases). A >20% drop in ABPI after exercise confirms PAD.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Toe-brachial pressure index (TBPI) is useful when:',
 'ABPI is falsely low', 'ABPI is falsely elevated due to arterial calcification', 'Toe is gangrenous', 'Upper limb disease is suspected', 'Venous disease is suspected',
 'B', 'TBPI is useful when ABPI is unreliable due to calcified incompressible arteries (diabetes, renal failure). Toe arteries rarely calcify. TBPI <0.7 is abnormal.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The WIfI classification for threatened limbs uses:',
 'Wound, Ischemia, foot Infection', 'Walking distance, Imaging, femoropopliteal status', 'Width, Infection, Inflammation', 'Wound only', 'Imaging only',
 'A', 'WIfI (Wound, Ischemia, foot Infection) classification grades each component 0-3 to predict amputation risk and benefit from revascularization. It guides treatment decisions.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Optimal medical therapy for PAD includes all EXCEPT:',
 'Antiplatelet therapy', 'Statin therapy', 'Blood pressure control', 'Routine anticoagulation', 'Smoking cessation',
 'D', 'Optimal medical therapy includes antiplatelet (aspirin/clopidogrel), statin, BP control, diabetic control, and smoking cessation. Routine anticoagulation is not indicated for PAD alone.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'The BASIL trial compared:',
 'Medical therapy vs surgery', 'Bypass surgery vs angioplasty for critical limb ischemia', 'Amputation vs revascularization', 'Stents vs balloons', 'LMWH vs aspirin',
 'B', 'The BASIL trial compared bypass surgery vs angioplasty-first for CLI. Results showed similar amputation-free survival at 2 years; surgery better beyond 2 years if suitable vein available.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000005-0000-0000-0000-000000000005', 'a0000004-0000-0000-0000-000000000004',
 'Supervised exercise therapy for claudication should be performed:',
 'Once weekly for 3 months', 'At least 3 times weekly for minimum 3 months', 'Daily unsupervised', 'Only after revascularization', 'Until pain occurs then stop',
 'B', 'Supervised exercise should be at least 3 times weekly, 30-60 minutes per session, for minimum 3 months. Exercise to near-maximal claudication pain, rest, repeat.', 'medium', 'application');
