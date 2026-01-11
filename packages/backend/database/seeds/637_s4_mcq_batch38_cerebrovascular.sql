-- Surgery 4 MCQ Question Bank - Batch 38
-- Section G: Neurosurgery - Cerebrovascular Disorders
-- 40 Questions

-- Topic: Cerebrovascular Disorders
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000038-0000-0000-0000-000000000038', 'Cerebrovascular Disorders', 'a0000004-0000-0000-0000-000000000004', 'Aneurysms, AVMs, stroke, and other cerebrovascular conditions', 38, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of subarachnoid hemorrhage is:',
 'Trauma', 'Ruptured cerebral aneurysm', 'Arteriovenous malformation', 'Hypertensive hemorrhage', 'Tumor bleeding',
 'A', 'SAH causes: trauma (most common overall). Non-traumatic SAH: ruptured aneurysm (85%), arteriovenous malformation, other vascular lesions. Aneurysmal SAH has high morbidity/mortality.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'The most common location for cerebral aneurysms is:',
 'Posterior circulation', 'Anterior communicating artery', 'Middle cerebral artery', 'Basilar artery', 'Vertebral artery',
 'B', 'Aneurysm locations: anterior circulation (90%). Anterior communicating artery (30%), posterior communicating artery (25%), MCA bifurcation (20%). Posterior circulation (10%) - basilar tip, PICA.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Classic presentation of subarachnoid hemorrhage is:',
 'Gradual onset headache', 'Sudden onset severe headache described as the worst headache of life', 'Painless weakness', 'Visual loss only', 'Seizures only',
 'B', '"Thunderclap" headache: sudden onset, maximal intensity at onset, "worst headache of my life." May have LOC, nausea/vomiting, meningismus, photophobia. High clinical suspicion needed - can be misdiagnosed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Initial investigation for suspected subarachnoid hemorrhage is:',
 'MRI', 'Non-contrast CT head', 'Lumbar puncture first', 'Cerebral angiography', 'Skull X-ray',
 'B', 'SAH workup: non-contrast CT head first (~95% sensitive within 6 hours, decreases with time). If CT negative but clinical suspicion high: lumbar puncture (xanthochromia). CTA/catheter angiography to find source.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Xanthochromia in CSF indicates:',
 'Traumatic tap', 'Bilirubin from blood breakdown confirming subarachnoid hemorrhage', 'Infection', 'Normal finding', 'Multiple sclerosis',
 'B', 'Xanthochromia: yellow CSF from bilirubin (RBC breakdown). Develops >6-12 hours after SAH. Distinguishes true SAH from traumatic tap. Persistent for ~2 weeks. Visual inspection or spectrophotometry.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'After diagnosing SAH the next step to identify the source is:',
 'Repeat CT', 'CT angiography or catheter angiography to identify aneurysm', 'Lumbar puncture', 'MRI diffusion', 'Observation',
 'B', 'CTA or DSA (digital subtraction angiography): identify aneurysm location, morphology. CTA: rapid, non-invasive, first-line. DSA: gold standard, also allows treatment. Essential for surgical/endovascular planning.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Treatment options for ruptured cerebral aneurysms include:',
 'Observation only', 'Surgical clipping or endovascular coiling', 'Antibiotics', 'Thrombolysis', 'Radiation',
 'B', 'Aneurysm treatment: surgical clipping (microsurgical, permanent clip across neck) or endovascular coiling (fill aneurysm with coils via catheter). Choice depends on aneurysm characteristics, patient factors. Goal: prevent rebleeding.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Endovascular coiling of aneurysms compared to surgical clipping:',
 'Is more invasive', 'Has lower short-term morbidity but may have higher recurrence rates', 'Is never used', 'Has higher mortality', 'Is the same',
 'B', 'ISAT trial: coiling had better outcomes at 1 year for suitable aneurysms. Less invasive, shorter recovery. Higher recurrence/retreatment rates. Choice individualized - anatomy, patient factors, expertise.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Vasospasm after SAH:',
 'Never occurs', 'Is a major cause of morbidity typically occurring 3-14 days after hemorrhage', 'Occurs immediately', 'Is benign', 'Is treated with steroids',
 'B', 'Cerebral vasospasm: major complication of SAH. Peak 7-10 days (range 3-14 days). Can cause delayed cerebral ischemia (DCI). Monitor with TCD. Prevention: nimodipine. Treatment: "triple-H" therapy, endovascular intervention.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Nimodipine after subarachnoid hemorrhage:',
 'Treats the aneurysm', 'Is a calcium channel blocker that improves outcomes by reducing vasospasm-related ischemia', 'Is contraindicated', 'Increases rebleeding', 'Is not effective',
 'B', 'Nimodipine: calcium channel blocker, improves neurological outcomes after SAH. Given for 21 days. May not prevent angiographic vasospasm but reduces ischemic deficits. Standard of care.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Hunt and Hess grade for SAH is based on:',
 'CT appearance', 'Clinical status including level of consciousness and neurological deficits', 'Aneurysm size', 'Location of hemorrhage', 'Age',
 'B', 'Hunt and Hess: clinical grading. Grade 1: asymptomatic/mild headache. Grade 2: moderate headache, CN palsy. Grade 3: drowsy, mild deficit. Grade 4: stupor, hemiparesis. Grade 5: deep coma, posturing. Higher grade = worse prognosis.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Fisher grade for SAH is based on:',
 'Clinical symptoms', 'Amount and distribution of blood on CT predicting vasospasm risk', 'Aneurysm morphology', 'Patient age', 'Blood pressure',
 'B', 'Fisher scale: CT-based, predicts vasospasm risk. Modified Fisher: Grade 0-4 based on SAH thickness and presence of intraventricular hemorrhage. More blood = higher vasospasm risk.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Complications of SAH include:',
 'Vasospasm only', 'Rebleeding vasospasm hydrocephalus seizures and hyponatremia', 'No complications', 'Only headache', 'Only fever',
 'B', 'SAH complications: rebleeding (highest risk first 24h), vasospasm/DCI (days 3-14), hydrocephalus (acute obstructive, chronic communicating), seizures, hyponatremia (SIADH, cerebral salt wasting), cardiac dysfunction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Hydrocephalus after SAH:',
 'Never occurs', 'Can be acute or chronic requiring CSF diversion', 'Is always chronic', 'Resolves spontaneously', 'Is contraindication for surgery',
 'B', 'Post-SAH hydrocephalus: acute (obstructive - blood in ventricles) or chronic/communicating (impaired CSF absorption weeks later). Treatment: EVD acutely, VP shunt for chronic. ~20-30% require permanent shunt.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Arteriovenous malformations (AVMs) are:',
 'Acquired lesions', 'Congenital vascular lesions with abnormal connections between arteries and veins without capillary bed', 'Always benign', 'Tumors', 'Infectious',
 'B', 'AVM: congenital, abnormal arteriovenous shunting without intervening capillary network. High-flow, high-pressure. Risk of hemorrhage (~2-4%/year), seizures, headache, neurological deficits.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'AVMs present with:',
 'Only headache', 'Hemorrhage seizures headache or neurological deficit', 'No symptoms ever', 'Only visual changes', 'Only weakness',
 'B', 'AVM presentation: hemorrhage (most common, ~50%), seizures (20-30%), headache, progressive neurological deficit (steal phenomenon). Some incidental. Hemorrhage risk ~2-4% per year.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'The Spetzler-Martin grading system for AVMs is based on:',
 'Patient symptoms', 'Size eloquence of adjacent brain and venous drainage pattern', 'Age', 'Location only', 'Number of feeders',
 'B', 'Spetzler-Martin: predicts surgical risk. Size (<3, 3-6, >6 cm: 1-3 points), eloquent location (sensorimotor, language, visual, hypothalamus, brainstem, cerebellar peduncles: 1 point), deep venous drainage (1 point). Grade I-V.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Treatment options for AVMs include:',
 'Antibiotics', 'Microsurgical resection stereotactic radiosurgery embolization or combination', 'Chemotherapy', 'Observation only', 'Medication',
 'B', 'AVM treatment: surgery (curative, especially low-grade), stereotactic radiosurgery (obliterates over 2-3 years, for small/deep lesions), embolization (adjunct, reduces flow), or combination. ARUBA trial debated. Individualized decision.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Cavernous malformations (cavernomas):',
 'Are high-flow lesions', 'Are low-flow vascular lesions that can cause seizures or hemorrhage', 'Never bleed', 'Always require treatment', 'Are the same as AVMs',
 'B', 'Cavernomas: low-flow, mulberry-like vascular malformations. Hemosiderin ring on MRI. Seizures (most common presentation), hemorrhage (lower pressure than AVM). No arterial feeders. Surgery if accessible and symptomatic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Dural arteriovenous fistulas (dAVFs):',
 'Are congenital', 'Are usually acquired abnormal connections between dural arteries and venous sinuses', 'Are always benign', 'Never cause symptoms', 'Are the same as cavernomas',
 'B', 'dAVF: abnormal AV shunting within dura. Usually acquired (trauma, thrombosis, surgery). Range from benign (pulsatile tinnitus) to aggressive (hemorrhage, neurological deficit - depends on venous drainage pattern).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Ischemic stroke is caused by:',
 'Bleeding', 'Arterial occlusion from thrombosis or embolism', 'Trauma', 'Infection', 'Tumor',
 'B', 'Ischemic stroke: arterial occlusion depriving brain of blood. Causes: large vessel atherosclerosis, cardioembolism (AF, valve disease), small vessel disease (lacunar), other (dissection, hypercoagulable). 85% of strokes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'The time window for IV thrombolysis (alteplase) in acute ischemic stroke is:',
 '24 hours', 'Up to 4.5 hours from symptom onset in eligible patients', '12 hours', '1 hour only', 'Anytime',
 'B', 'IV tPA (alteplase): within 4.5 hours of symptom onset (3 hours per FDA, 4.5 with additional criteria). Benefits decrease with time - "time is brain." Exclude hemorrhage, check contraindications.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Mechanical thrombectomy for acute ischemic stroke:',
 'Is never done', 'Can be performed up to 24 hours in selected patients with large vessel occlusion', 'Is only for hemorrhage', 'Replaces thrombolysis always', 'Is only within 1 hour',
 'B', 'Mechanical thrombectomy: large vessel occlusion (ICA, M1 MCA, basilar). Originally 6 hours, extended to 24 hours with appropriate imaging selection (DAWN, DEFUSE-3). Can be done with or after IV tPA.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Hemorrhagic stroke is most commonly caused by:',
 'Trauma', 'Hypertension', 'Aneurysm rupture', 'AVM', 'Tumor',
 'B', 'Intracerebral hemorrhage (ICH): hypertension most common cause (~60%). Other: amyloid angiopathy (elderly, lobar), anticoagulation, vascular malformations, tumor, drugs. Different from SAH.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Common locations for hypertensive intracerebral hemorrhage include:',
 'Cortex only', 'Basal ganglia (putamen) thalamus pons and cerebellum', 'Only frontal lobe', 'Only occipital lobe', 'Spinal cord',
 'B', 'Hypertensive ICH locations: putamen (most common), thalamus, pons, cerebellum, lobar (less common for hypertension). Lenticulostriate and other penetrating arteries affected. Lobar more suggestive of amyloid angiopathy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Cerebellar hemorrhage:',
 'Never requires surgery', 'May require urgent surgical evacuation due to risk of brainstem compression and hydrocephalus', 'Is always conservative', 'Has no neurological signs', 'Is benign',
 'B', 'Cerebellar hemorrhage: surgical emergency if >3 cm or causing brainstem compression, hydrocephalus, deterioration. Suboccipital craniectomy, hematoma evacuation. Smaller can be observed with monitoring.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Blood pressure management in acute intracerebral hemorrhage:',
 'Should be very aggressive lowering to normal', 'Should target SBP less than 140 mmHg but avoid excessive reduction', 'Should keep blood pressure high', 'Is not important', 'Should use vasopressors',
 'B', 'ICH BP management: INTERACT2, ATACH-2. Target SBP <140 mmHg (within 6 hours) is safe and may reduce hematoma expansion. Avoid excessive lowering. Balance preventing expansion vs maintaining perfusion.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Carotid artery stenosis causing TIA or stroke should be considered for:',
 'Medical therapy only', 'Carotid endarterectomy or stenting if symptomatic and significant stenosis (70-99%)', 'No treatment', 'Anticoagulation', 'Thrombolysis',
 'B', 'Symptomatic carotid stenosis: CEA or CAS for 70-99% stenosis (50-69% moderate benefit). Reduces stroke risk. CEA: proven benefit. CAS: alternative especially if high surgical risk. Medical therapy essential adjunct.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Carotid endarterectomy (CEA):',
 'Is stent placement', 'Is surgical removal of atherosclerotic plaque from the carotid artery', 'Is angioplasty', 'Is bypass surgery', 'Is not effective',
 'B', 'CEA: surgical plaque removal from carotid bifurcation. Arteriotomy, endarterectomy (remove plaque with intima), closure with or without patch. Proven benefit for symptomatic high-grade stenosis. Perioperative stroke risk <3%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Moyamoya disease:',
 'Is atherosclerosis', 'Is progressive stenosis of internal carotid arteries with characteristic collateral vessels', 'Is an aneurysm', 'Is an infection', 'Only affects elderly',
 'B', 'Moyamoya: progressive bilateral ICA stenosis/occlusion with characteristic collateral network ("puff of smoke" on angiography). Can cause stroke, hemorrhage. Treatment: revascularization (direct or indirect bypass).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Cerebral venous sinus thrombosis:',
 'Has same presentation as arterial stroke', 'Can present with headache seizures and focal deficits and is treated with anticoagulation', 'Is treated with thrombolysis', 'Never causes hemorrhage', 'Is always benign',
 'B', 'CVST: venous outflow obstruction causes congestion, edema, hemorrhagic infarcts. Presents: headache, seizures, focal deficits, altered consciousness. Risk factors: hypercoagulable states, pregnancy, OCP, infection. Anticoagulation mainstay.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'A transient ischemic attack (TIA) is defined as:',
 'Stroke lasting less than 24 hours', 'Transient neurological deficit without evidence of infarction on imaging', 'Any headache', 'Permanent deficit', 'Seizure',
 'B', 'TIA: transient neurological dysfunction due to focal ischemia without acute infarction (current definition). Old: <24 hours. Tissue-based definition now. TIA is warning - high early stroke risk. Urgent workup and secondary prevention.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'ABCD2 score after TIA predicts:',
 'Long-term survival', 'Short-term risk of stroke', 'Bleeding risk', 'Seizure risk', 'Length of hospitalization',
 'B', 'ABCD2: predicts 2-day stroke risk after TIA. Age >=60, BP >=140/90, Clinical features (weakness vs speech vs other), Duration (>=60 min, 10-59 min), Diabetes. Higher score = higher risk. Guides urgency of workup.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Secondary stroke prevention includes:',
 'No medications', 'Antiplatelet therapy statin therapy blood pressure control and lifestyle modification', 'Anticoagulation for all', 'Only aspirin', 'Only surgery',
 'B', 'Secondary prevention: antiplatelet (aspirin, clopidogrel, aspirin-dipyridamole), anticoagulation for AF, statins (high-intensity), BP control, diabetes control, smoking cessation, diet, exercise, carotid intervention if indicated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'Anticoagulation is preferred over antiplatelet therapy for stroke prevention in:',
 'All strokes', 'Cardioembolic stroke due to atrial fibrillation', 'Lacunar stroke', 'Large vessel atherosclerosis', 'Hemorrhagic stroke',
 'B', 'Anticoagulation: for cardioembolic stroke (AF, mechanical valves, some cardiomyopathies). DOACs or warfarin. Antiplatelet for non-cardioembolic. Combination generally avoided. AF detection important in cryptogenic stroke.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000038-0000-0000-0000-000000000038', 'a0000004-0000-0000-0000-000000000004',
 'The "golden hour" concept in stroke treatment emphasizes:',
 'Waiting for spontaneous resolution', 'Rapid diagnosis and treatment to minimize brain damage', 'Conservative management', 'Avoiding medication', 'Repeat imaging',
 'B', '"Time is brain": ~1.9 million neurons lost per minute of ischemia. Rapid door-to-needle (thrombolysis), door-to-groin (thrombectomy) times critical. Stroke systems of care, prehospital notification, streamlined protocols.', 'easy', 'knowledge');
