-- Surgery 4 MCQ Question Bank - Batch 12
-- Section A: Vascular Surgery - Aneurysms (Aortic and Peripheral)
-- 40 Questions

-- Topic: Aneurysms
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000012-0000-0000-0000-000000000012', 'Aneurysms', 'a0000004-0000-0000-0000-000000000004', 'Aortic and peripheral arterial aneurysms diagnosis and management', 12, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'An aneurysm is defined as:',
 'Any dilation of a blood vessel', 'Focal dilation greater than 50 percent of normal diameter involving all layers', 'Narrowing of a vessel', 'Complete occlusion', 'Dissection only',
 'B', 'True aneurysm: focal dilation >50% (or 1.5x) normal diameter involving all three vessel wall layers (intima, media, adventitia). Distinguished from pseudoaneurysm and ectasia.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'The most common location for an abdominal aortic aneurysm is:',
 'Suprarenal', 'Infrarenal', 'Juxtarenal', 'Thoracoabdominal', 'Iliac only',
 'B', 'Infrarenal AAA is most common (90%). Below renal arteries to bifurcation. May extend to involve iliac arteries. Suprarenal and juxtarenal less common but more complex to repair.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'The most important risk factor for AAA development is:',
 'Diabetes', 'Smoking', 'Hypertension', 'Obesity', 'High cholesterol',
 'B', 'Smoking is the strongest modifiable risk factor for AAA (7x increased risk). Other factors: age >65, male sex, family history, hypertension, atherosclerosis. Diabetes is actually protective.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'AAA screening is recommended for:',
 'All adults annually', 'Men aged 65-75 who have ever smoked', 'Women only', 'Children', 'Only symptomatic patients',
 'B', 'USPSTF recommends one-time ultrasound screening for AAA in men aged 65-75 who have ever smoked. Reduces AAA-related mortality. Selective screening for men who never smoked.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Normal abdominal aortic diameter is approximately:',
 '1.0 cm', '2.0 cm', '3.0 cm', '4.0 cm', '5.0 cm',
 'B', 'Normal infrarenal aortic diameter: approximately 2.0 cm (range 1.4-2.4 cm). Ectasia: 2.5-2.9 cm. Aneurysm: ≥3.0 cm or >50% increase from normal.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'The threshold for elective AAA repair is generally:',
 '3.0 cm', '4.0 cm', '5.5 cm in men or 5.0 cm in women', '7.0 cm', '2.5 cm',
 'C', 'Elective repair threshold: 5.5 cm in men, 5.0-5.2 cm in women (higher rupture risk at smaller sizes). Also repair if growth >1 cm/year or symptomatic at any size.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance for a 4.0 cm AAA should be:',
 'No surveillance needed', 'Ultrasound every 2-3 years', 'Ultrasound every 6-12 months', 'Immediate surgery', 'CT scan monthly',
 'C', 'Surveillance intervals: <3 cm no follow-up, 3.0-3.9 cm every 2-3 years, 4.0-4.9 cm every 6-12 months, ≥5.0 cm every 6 months or consider repair.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Classic presentation of ruptured AAA is:',
 'Painless abdominal mass', 'Sudden severe abdominal or back pain hypotension and pulsatile mass', 'Gradual onset of leg weakness', 'Fever and chills', 'Chest pain only',
 'B', 'Classic triad of ruptured AAA: sudden severe abdominal/back pain, hypotension, pulsatile abdominal mass. Present in 25-50% of cases. High mortality (80-90% overall).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'The most appropriate imaging for suspected ruptured AAA in an unstable patient is:',
 'CT angiography', 'MRI', 'Plain X-ray', 'Bedside ultrasound if available then immediate OR', 'Angiography',
 'D', 'Hemodynamically unstable patient with suspected ruptured AAA: bedside ultrasound can confirm AAA, then immediate operative intervention. CT only if patient is stable.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Endovascular aneurysm repair (EVAR) requires:',
 'Open abdominal incision', 'Suitable anatomy with adequate landing zones', 'Only general anesthesia', 'Cardiopulmonary bypass', 'No specific requirements',
 'B', 'EVAR requires suitable anatomy: adequate proximal neck (length >10-15mm, diameter, angulation), adequate iliac access and landing zones. Not all AAAs anatomically suitable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Advantage of EVAR over open repair includes:',
 'Superior long-term durability', 'Lower perioperative mortality and faster recovery', 'No need for surveillance', 'Treats all anatomies', 'Lower cost',
 'B', 'EVAR advantages: lower perioperative mortality (1-2% vs 3-5%), shorter hospital stay, faster recovery, less blood loss. Disadvantages: requires surveillance, higher reintervention rate.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Endoleak is defined as:',
 'Graft infection', 'Persistent blood flow outside the graft but within the aneurysm sac', 'Graft thrombosis', 'Access site complication', 'Normal finding',
 'B', 'Endoleak: persistent blood flow in aneurysm sac outside the graft. Prevents sac shrinkage and maintains rupture risk. Types I-V based on source.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Type I endoleak is from:',
 'Branch vessel retrograde flow', 'Inadequate seal at graft attachment site', 'Graft defect', 'Thrombus porosity', 'Unknown source',
 'B', 'Type I: attachment site leak (Ia proximal, Ib distal). Requires immediate treatment. Type II: branch vessel (lumbar, IMA). Type III: graft defect. Type IV: graft porosity. Type V: endotension.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Type II endoleak from lumbar arteries is usually managed by:',
 'Immediate open repair', 'Observation if sac stable or embolization if sac enlarging', 'Emergency surgery', 'Graft removal', 'Anticoagulation',
 'B', 'Type II endoleak: often benign, many resolve spontaneously. Observe if sac stable. Intervene (embolization) if sac enlarges >5mm or persistent >6-12 months.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Open AAA repair involves:',
 'Endovascular graft placement', 'Surgical exposure with graft interposition', 'Angioplasty', 'Bypass only', 'Ligation only',
 'B', 'Open repair: midline or retroperitoneal approach, aortic clamping, aneurysm opened, graft (usually Dacron) sewn to normal aorta proximally and distally (tube or bifurcated).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Postoperative complications of AAA repair include all EXCEPT:',
 'Myocardial infarction', 'Colonic ischemia', 'Spinal cord ischemia', 'Improved sexual function', 'Renal failure',
 'D', 'Complications: cardiac (MI most common cause of death), colonic ischemia (IMA), renal failure, spinal cord ischemia, graft infection, aortoenteric fistula. Sexual dysfunction (not improvement) may occur.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Colonic ischemia after AAA repair is suggested by:',
 'Normal recovery', 'Bloody diarrhea in early postoperative period', 'Constipation only', 'Leg swelling', 'Urinary retention',
 'B', 'Colonic ischemia (especially sigmoid): bloody diarrhea, abdominal distension, acidosis postoperatively. From IMA ligation without adequate collaterals. Colonoscopy to assess. May need colectomy.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Aortoenteric fistula after AAA repair typically presents with:',
 'Painless mass', 'GI bleeding often with herald bleed followed by massive hemorrhage', 'Diarrhea only', 'Constipation', 'Urinary symptoms',
 'B', 'Aortoenteric fistula: communication between graft and bowel (usually duodenum). Herald GI bleed followed by massive hemorrhage. High mortality. CT shows air around graft.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Thoracic aortic aneurysm is most commonly located in:',
 'Ascending aorta', 'Aortic arch', 'Descending thoracic aorta', 'All locations equally', 'Thoracoabdominal',
 'A', 'Ascending aorta most common site (60%), followed by descending (40%). Arch aneurysms less common. Etiology differs: ascending often degenerative/connective tissue, descending atherosclerotic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Marfan syndrome is associated with:',
 'Atherosclerotic aneurysms', 'Annuloaortic ectasia and ascending aortic aneurysm', 'Peripheral aneurysms only', 'No vascular abnormalities', 'Venous aneurysms',
 'B', 'Marfan syndrome: FBN1 mutation causing connective tissue weakness. Annuloaortic ectasia, ascending aortic aneurysm/dissection, aortic regurgitation. Also MVP, lens dislocation, skeletal features.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Intervention threshold for ascending aortic aneurysm in Marfan syndrome is:',
 '6.0 cm', '5.0 cm or less depending on risk factors', '4.0 cm', '3.0 cm', '7.0 cm',
 'B', 'Lower threshold in Marfan: 5.0 cm or 4.5 cm if risk factors (family history of dissection, rapid growth >0.5 cm/year, severe AR, desire for pregnancy). Non-Marfan: 5.5 cm ascending.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Acute aortic dissection is classified by Stanford as:',
 'Type 1 2 and 3', 'Type A involves ascending regardless of origin and Type B does not involve ascending', 'Based on symptoms', 'Based on etiology', 'By duration only',
 'B', 'Stanford: Type A - involves ascending aorta (surgical emergency). Type B - does not involve ascending (usually medical management initially). DeBakey: I (ascending+descending), II (ascending only), III (descending only).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Classic presentation of acute aortic dissection is:',
 'Gradual onset chest pain', 'Sudden severe tearing chest or back pain radiating between shoulder blades', 'Abdominal pain only', 'Leg pain', 'Painless',
 'B', 'Acute dissection: sudden severe tearing/ripping chest pain radiating to back. May have pulse deficits, BP differential, neurological symptoms, malperfusion syndromes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'The initial diagnostic study of choice for suspected aortic dissection is:',
 'Chest X-ray', 'CT angiography', 'Echocardiography only', 'Aortography', 'MRI only',
 'B', 'CTA is initial study of choice: rapid, widely available, high sensitivity/specificity. TEE excellent if unstable. MRI most accurate but time-consuming. CXR may show widened mediastinum.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Medical management of acute Type B dissection targets:',
 'Increased heart rate and BP', 'Heart rate less than 60 and systolic BP 100-120 mmHg', 'No specific targets', 'Anticoagulation', 'Thrombolysis',
 'B', 'Anti-impulse therapy: beta-blockers first (reduce dP/dt and HR to <60), then vasodilators if needed for SBP 100-120 mmHg. Reduces wall stress and propagation.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Complicated Type B dissection requiring intervention includes:',
 'All Type B dissections', 'Malperfusion rupture refractory pain or rapid expansion', 'Only asymptomatic dissections', 'Dissection length greater than 5 cm', 'Age greater than 70',
 'B', 'Complicated Type B (requires TEVAR or surgery): malperfusion (visceral, renal, limb), rupture/impending rupture, refractory hypertension/pain, rapid expansion. Uncomplicated: medical management.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Popliteal artery aneurysm is the most common:',
 'Visceral aneurysm', 'Peripheral artery aneurysm', 'Cerebral aneurysm', 'Aortic aneurysm', 'Venous aneurysm',
 'B', 'Popliteal artery aneurysm is most common peripheral aneurysm. Often bilateral (50%). Associated with AAA (40% have AAA). Risk: thrombosis, embolization, rarely rupture.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Popliteal aneurysm typically presents with:',
 'Rupture commonly', 'Acute limb ischemia from thrombosis or embolization', 'Pain only', 'Always asymptomatic', 'Claudication only',
 'B', 'Popliteal aneurysms present with acute limb ischemia (thrombosis/distal embolization) in 40%. Chronic ischemia, compression symptoms, or incidental finding. Rupture rare (<5%).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Threshold for repair of asymptomatic popliteal aneurysm is:',
 '1.0 cm', '2.0 cm or presence of thrombus', '4.0 cm', '5.0 cm', '3.0 cm always',
 'B', 'Repair recommended for popliteal aneurysm ≥2.0 cm or with mural thrombus (risk of embolization) regardless of size. Open bypass or endovascular repair options.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Femoral artery pseudoaneurysm after catheterization is best initially treated by:',
 'Open surgical repair', 'Ultrasound-guided compression or thrombin injection', 'Observation only', 'Amputation', 'Anticoagulation',
 'B', 'Femoral pseudoaneurysm: ultrasound-guided thrombin injection is preferred (success >95%). Alternative: compression (time-consuming, less successful). Surgery for large, infected, or failed cases.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Mycotic aneurysm refers to:',
 'Fungal infection only', 'Infected aneurysm from any organism', 'Aneurysm near fungal infection', 'Normal aneurysm', 'Sterile aneurysm',
 'B', 'Mycotic aneurysm: infected aneurysm (misnomer - not specifically fungal). Usually bacterial. Sources: endocarditis, bacteremia, contiguous infection. Requires antibiotics and usually excision.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Splenic artery aneurysm is most common in:',
 'Young males', 'Multiparous women', 'Children', 'Athletes', 'Elderly men',
 'B', 'Splenic artery aneurysm: most common visceral aneurysm. Higher in multiparous women, portal hypertension, pancreatitis. Pregnancy increases rupture risk (treatment threshold lower).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of splenic artery aneurysm is indicated when:',
 'All splenic artery aneurysms', 'Size greater than 2 cm symptomatic or in women of childbearing potential', 'Only if ruptured', 'Never indicated', 'Size greater than 5 cm only',
 'B', 'Repair indications: symptomatic, >2 cm, in women of childbearing age (rupture risk in pregnancy), rapid growth. Options: coil embolization or surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Renal artery aneurysm rupture risk increases significantly above:',
 '1.0 cm', '1.5 cm', '2.0 cm', '3.0 cm', '5.0 cm',
 'C', 'Renal artery aneurysm: rupture risk increases >2 cm. Repair if >2 cm, symptomatic, causing renovascular hypertension, or in women of childbearing age. Most are saccular at bifurcation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Inflammatory abdominal aortic aneurysm is characterized by:',
 'Normal appearance', 'Thick inflammatory rind surrounding aorta with adhesion to adjacent structures', 'Only small size', 'No symptoms', 'Bacterial infection',
 'B', 'Inflammatory AAA (5-10% of AAA): thick rind of inflammation around aorta adhering to duodenum, ureters, IVC. Elevated ESR, back/abdominal pain. More technically challenging to repair.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Beta-blocker therapy in Marfan syndrome is used to:',
 'Treat hypertension only', 'Slow aortic root dilation by reducing wall stress', 'Prevent arrhythmias only', 'Improve exercise tolerance', 'No proven benefit',
 'B', 'Beta-blockers (and ARBs/losartan) reduce rate of aortic root dilation in Marfan by reducing dP/dt and wall stress. Started at diagnosis and continued lifelong. Reduces dissection risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'Intracranial aneurysm rupture typically presents with:',
 'Gradual headache', 'Sudden severe thunderclap headache with possible altered consciousness', 'Focal weakness only', 'Visual changes only', 'Seizure only',
 'B', 'Ruptured intracranial aneurysm: sudden severe worst headache of life (subarachnoid hemorrhage). May have altered consciousness, focal deficits, meningismus. High mortality.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000012-0000-0000-0000-000000000012', 'a0000004-0000-0000-0000-000000000004',
 'The Crawford classification applies to:',
 'AAA only', 'Thoracoabdominal aortic aneurysms based on extent', 'Ascending aortic aneurysms', 'Peripheral aneurysms', 'Pseudoaneurysms',
 'B', 'Crawford classification for TAAA: Type I (left subclavian to above renals), II (left subclavian to aortic bifurcation), III (T6 to bifurcation), IV (T12 to bifurcation). Guides surgical approach.', 'hard', 'knowledge');
