-- Surgery 4 MCQ Question Bank - Batch 39
-- Section G: Neurosurgery - Hydrocephalus and CSF Disorders
-- 40 Questions

-- Topic: Hydrocephalus and CSF Disorders
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000039-0000-0000-0000-000000000039', 'Hydrocephalus and CSF Disorders', 'a0000004-0000-0000-0000-000000000004', 'Hydrocephalus types, CSF dynamics, and shunt procedures', 39, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Hydrocephalus is defined as:',
 'Brain tumor', 'Abnormal accumulation of cerebrospinal fluid in the ventricles', 'Subdural hematoma', 'Brain atrophy', 'Cerebral edema',
 'B', 'Hydrocephalus: excess CSF causing ventricular enlargement. Results from imbalance of CSF production, circulation, or absorption. Multiple etiologies and types. Distinct from ex vacuo ventriculomegaly (atrophy).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'CSF is primarily produced by:',
 'Brain parenchyma', 'Choroid plexus in the ventricles', 'Meninges', 'Spinal cord', 'Skull',
 'B', 'CSF production: choroid plexus (70%), remainder from brain parenchyma, ependyma. Rate ~500 mL/day in adults. Total volume ~150 mL, replaced 3-4 times daily. Flows through ventricular system, absorbed at arachnoid granulations.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'CSF is primarily absorbed at:',
 'Choroid plexus', 'Arachnoid granulations (villi) into dural venous sinuses', 'Ventricles', 'Spinal cord', 'Brain tissue',
 'B', 'CSF absorption: arachnoid granulations project into dural venous sinuses (especially superior sagittal sinus). Pressure-dependent flow. Also lymphatic drainage along cranial and spinal nerves. Impaired absorption causes communicating hydrocephalus.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Communicating hydrocephalus is caused by:',
 'Obstruction within the ventricular system', 'Impaired CSF absorption with open ventricular pathways', 'Brain tumor in ventricle', 'Aqueductal stenosis', 'Colloid cyst',
 'B', 'Communicating hydrocephalus: CSF can flow through ventricles but absorption impaired (arachnoid granulations). Causes: SAH, meningitis, post-hemorrhage. All ventricles enlarged. Non-obstructive.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Non-communicating (obstructive) hydrocephalus is caused by:',
 'Impaired absorption', 'Blockage of CSF flow within the ventricular system', 'Increased production', 'Brain atrophy', 'Normal aging',
 'B', 'Obstructive hydrocephalus: blockage within ventricular system or outlets. Causes: aqueductal stenosis, tumors (posterior fossa, pineal, 3rd ventricle), colloid cyst, Dandy-Walker, post-inflammatory. Ventricles above obstruction dilate.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Aqueductal stenosis causes:',
 'Fourth ventricle dilation', 'Dilation of lateral and third ventricles with normal fourth ventricle', 'Only lateral ventricle dilation', 'No ventricular changes', 'Spinal stenosis',
 'B', 'Aqueductal stenosis: obstruction at cerebral aqueduct (of Sylvius). Dilated lateral and 3rd ventricles, normal or small 4th ventricle. Congenital (most common cause of congenital hydrocephalus) or acquired (tumor, infection, hemorrhage).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Clinical features of hydrocephalus in infants include:',
 'Headache', 'Enlarging head circumference bulging fontanelle and sunset sign', 'Decreased head size', 'Normal development', 'Hearing loss only',
 'B', 'Infant hydrocephalus: open sutures allow head enlargement. Macrocephaly (crossing percentiles), bulging fontanelle, sunset sign (eyes deviated downward), dilated scalp veins, lethargy, poor feeding, delayed development.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'The "sunset sign" in hydrocephalic infants refers to:',
 'Skin discoloration', 'Downward deviation of eyes with sclera visible above iris', 'Upward gaze palsy', 'Pupil dilation', 'Facial asymmetry',
 'B', 'Sunset sign (sun-setting eyes): upper lid retraction with downward gaze deviation, sclera visible above iris. Due to pressure on tectum (Parinaud syndrome variant). Classic sign of pediatric hydrocephalus.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Clinical features of hydrocephalus in adults include:',
 'Head enlargement', 'Headache nausea vomiting papilledema and altered consciousness', 'No symptoms', 'Only visual changes', 'Hearing loss',
 'B', 'Adult hydrocephalus (closed sutures): headache (worse morning, with vomiting), papilledema, decreased consciousness, cognitive decline, gait disturbance. Acute can present with rapid deterioration. NPH has different presentation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Normal pressure hydrocephalus (NPH) classically presents with the triad of:',
 'Headache, vomiting, papilledema', 'Gait disturbance dementia and urinary incontinence', 'Fever, headache, neck stiffness', 'Visual loss, headache, obesity', 'Weakness, numbness, pain',
 'B', 'NPH triad (Adams): gait apraxia (magnetic gait, wide-based), cognitive impairment (subcortical dementia), urinary incontinence. "Wet, wacky, and wobbly." Gait often first and most responsive to treatment.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Normal pressure hydrocephalus:',
 'Has elevated ICP', 'Has normal CSF opening pressure despite ventriculomegaly', 'Is a medical emergency', 'Only affects children', 'Is diagnosed by blood test',
 'B', 'NPH: communicating hydrocephalus with normal or intermittently elevated CSF pressure. Elderly. Idiopathic (iNPH) or secondary (SAH, trauma, meningitis). Ventriculomegaly out of proportion to atrophy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Predictors of good response to shunting in NPH include:',
 'Long duration of symptoms', 'Short symptom duration gait as predominant symptom and improvement after large volume LP', 'Advanced dementia', 'Atrophy on imaging', 'Old age',
 'B', 'NPH shunt response predictors: short duration (<2 years), gait disturbance predominant, known etiology (secondary), improvement after high-volume LP or extended lumbar drainage, specific imaging features (tight convexity, DESH).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'High-volume lumbar puncture or extended lumbar drainage in NPH:',
 'Is contraindicated', 'Is a diagnostic test to predict shunt response based on clinical improvement', 'Is therapeutic only', 'Is never done', 'Always causes harm',
 'B', 'LP tap test: remove 30-50 mL CSF, assess gait before and after (30 min to 24 hours). Improvement suggests shunt benefit. Extended drainage (3-5 days) more sensitive but more invasive. Negative test does not exclude NPH.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'The standard surgical treatment for hydrocephalus is:',
 'Medication only', 'CSF shunt placement (usually ventriculoperitoneal)', 'Craniectomy', 'Lumbar puncture', 'Blood patch',
 'B', 'CSF shunts: divert CSF from ventricles to another body cavity. VP shunt most common (ventricle to peritoneum). Others: VA (ventriculoatrial), VPL (ventriculopleural), LP (lumboperitoneal). Programmable valves available.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Components of a ventriculoperitoneal shunt include:',
 'Only a tube', 'Ventricular catheter valve and distal catheter', 'Single catheter only', 'External bag', 'Pump only',
 'B', 'VP shunt components: proximal/ventricular catheter (in lateral ventricle), valve (regulates flow, may be programmable), distal/peritoneal catheter (in peritoneal cavity). Some have reservoirs for tapping.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Programmable shunt valves:',
 'Cannot be adjusted', 'Allow non-invasive adjustment of opening pressure using external magnetic device', 'Require surgery to adjust', 'Are contraindicated with MRI', 'Have no advantage',
 'B', 'Programmable valves: opening pressure adjustable non-invasively with external programmer. Allows optimization without surgery. Note: some reset with MRI (need verification after). Avoids need for revision for pressure adjustments.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopic third ventriculostomy (ETV) is:',
 'Shunt placement', 'An endoscopic procedure creating an opening in the floor of the third ventricle to bypass obstruction', 'Tumor removal', 'Aneurysm clipping', 'Biopsy',
 'B', 'ETV: endoscopic fenestration of floor of 3rd ventricle into prepontine cistern. Bypasses obstruction (aqueductal stenosis). No hardware/foreign body. Best for obstructive hydrocephalus. Not ideal for communicating hydrocephalus.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'ETV is most effective for:',
 'Communicating hydrocephalus', 'Obstructive hydrocephalus such as aqueductal stenosis', 'Normal pressure hydrocephalus', 'All types equally', 'Post-hemorrhagic hydrocephalus',
 'B', 'ETV success: best for aqueductal stenosis, posterior fossa tumors causing obstruction. Less effective for communicating hydrocephalus, post-hemorrhagic, post-meningitic (absorption issue). ETV success score predicts outcome.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Complications of VP shunt include:',
 'No complications', 'Infection obstruction overdrainage and malfunction', 'Only infection', 'Only overdrainage', 'No long-term issues',
 'B', 'VP shunt complications: infection (most serious, 5-10%), obstruction (proximal or distal), overdrainage (slit ventricles, subdural hematomas), underdrainage, migration, bowel perforation, abdominal pseudocyst. 50% fail within 2 years in children.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Shunt infection typically presents within:',
 '1 year after surgery', '1-3 months after surgery or revision', '5 years', 'Immediately intraoperatively', 'Never',
 'B', 'Shunt infection: most within first 6 months, majority within 1-3 months. S. epidermidis, S. aureus most common. Symptoms: fever, shunt malfunction signs, wound erythema, abdominal symptoms. Treatment: shunt removal, antibiotics, replacement.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Signs of shunt malfunction include:',
 'No symptoms', 'Recurrence of hydrocephalus symptoms such as headache lethargy and vomiting', 'Improved cognition', 'Decreased head circumference', 'Weight gain',
 'B', 'Shunt malfunction symptoms: recurrent hydrocephalus (headache, vomiting, lethargy, decreased consciousness, visual changes). In children: irritability, bulging fontanelle, sunset sign. May be gradual or acute. Urgent evaluation needed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Evaluation of suspected shunt malfunction includes:',
 'No imaging needed', 'Head CT to assess ventricular size and shunt series X-rays', 'Only blood tests', 'Lumbar puncture', 'EEG',
 'B', 'Shunt malfunction workup: head CT (compare ventricle size to baseline - may not enlarge in slit ventricle syndrome), shunt series X-rays (disconnection, migration, kinks), clinical assessment, reservoir tap if needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Slit ventricle syndrome:',
 'Is large ventricles', 'Is chronic overdrainage with small ventricles and intermittent symptoms', 'Is shunt infection', 'Is tumor recurrence', 'Is normal finding',
 'B', 'Slit ventricle syndrome: chronic overdrainage leads to small, non-compliant ventricles. Intermittent symptoms (headache, nausea) with normal or small ventricles. Difficult to diagnose. Treatment: anti-siphon device, shunt revision, compliance restoration.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Subdural collections can occur as a complication of shunting due to:',
 'Underdrainage', 'Overdrainage causing brain to pull away from dura', 'Infection', 'Tumor growth', 'Hemorrhage into ventricle',
 'B', 'Shunt overdrainage: brain shrinks away from inner table, bridging veins stretched, subdural hygroma or hematoma develops. Treat by adjusting valve (programmable) or adding anti-siphon device. May need subdural drainage.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Idiopathic intracranial hypertension (pseudotumor cerebri) presents with:',
 'Low CSF pressure', 'Headache papilledema and elevated CSF pressure without mass lesion', 'Normal ICP', 'Ventriculomegaly', 'Always with tumor',
 'B', 'IIH: elevated ICP without hydrocephalus, mass, or venous sinus thrombosis. Headache, papilledema (risk of vision loss), pulsatile tinnitus, diplopia (CN VI palsy). Obese women of childbearing age. CSF opening pressure >25 cm H2O.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of idiopathic intracranial hypertension includes:',
 'VP shunt always', 'Weight loss acetazolamide and surgical procedures if needed for vision preservation', 'No treatment', 'Antibiotics', 'Chemotherapy',
 'B', 'IIH treatment: weight loss (5-10% can be curative), acetazolamide (reduces CSF production), topiramate. Surgical: optic nerve sheath fenestration (vision threatened), LP shunt, venous sinus stenting (stenosis). Serial LP for fulminant.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Acetazolamide for IIH works by:',
 'Increasing CSF absorption', 'Inhibiting carbonic anhydrase to decrease CSF production', 'Dilating vessels', 'Reducing brain volume', 'Unknown mechanism',
 'B', 'Acetazolamide: carbonic anhydrase inhibitor. Reduces CSF production at choroid plexus. First-line medical therapy for IIH. Side effects: paresthesias, dysgeusia, kidney stones, metabolic acidosis, fatigue.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Spontaneous intracranial hypotension is caused by:',
 'Overproduction of CSF', 'CSF leak usually from dural tear in the spine', 'Brain tumor', 'Hydrocephalus', 'Stroke',
 'B', 'Spontaneous intracranial hypotension (SIH): CSF leak, usually spinal. Dural weakness, meningeal diverticulum, nerve root sleeve tear. Orthostatic headache (worse upright, better lying down). MRI: pachymeningeal enhancement, brain sagging.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Classic symptom of intracranial hypotension is:',
 'Headache worse when lying down', 'Orthostatic headache that improves when recumbent', 'Headache unrelated to position', 'No headache', 'Seizures',
 'B', 'Orthostatic headache: hallmark of low CSF pressure. Worse within minutes of standing, better when lying down. May have nausea, neck stiffness, tinnitus, diplopia, cognitive changes. Opposite of IIH pattern.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'MRI findings in spontaneous intracranial hypotension include:',
 'Normal brain', 'Diffuse pachymeningeal enhancement and brain sagging', 'Hydrocephalus', 'Brain atrophy', 'No enhancement',
 'B', 'SIH MRI findings: diffuse pachymeningeal (dural) enhancement, brain sagging (low-lying tonsils, effaced basal cisterns, descent of brainstem), subdural collections, pituitary engorgement, venous distention.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of spontaneous intracranial hypotension includes:',
 'VP shunt', 'Conservative measures caffeine and epidural blood patch', 'Antibiotics', 'Decompressive surgery', 'Chemotherapy',
 'B', 'SIH treatment: conservative (bed rest, fluids, caffeine, abdominal binder), epidural blood patch (autologous blood seals leak), targeted treatment if specific leak identified (fibrin glue, surgery). Most respond to blood patch.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Epidural blood patch for CSF leak:',
 'Is chemotherapy', 'Involves injecting autologous blood into the epidural space to seal the dural defect', 'Uses artificial blood', 'Is intrathecal injection', 'Uses saline only',
 'B', 'Epidural blood patch: 10-30 mL autologous venous blood injected into epidural space near suspected leak. Blood clots, seals defect, and tamponades. Often effective, may need repeat. Usually lumbar but can be targeted.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Post-dural puncture headache after lumbar puncture:',
 'Never occurs', 'Is caused by CSF leak through dural puncture site', 'Is unrelated to procedure', 'Indicates meningitis', 'Requires immediate surgery',
 'B', 'PDPH: CSF leak through LP hole. Orthostatic headache 24-48 hours after LP. Risk factors: young age, female, large needle, cutting needle. Prevention: small gauge, atraumatic needle, perpendicular insertion. Treatment: hydration, caffeine, blood patch.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Dandy-Walker malformation includes:',
 'Normal posterior fossa', 'Cystic dilation of fourth ventricle cerebellar vermis hypoplasia and enlarged posterior fossa', 'Only lateral ventricle enlargement', 'Normal cerebellum', 'Spina bifida',
 'B', 'Dandy-Walker malformation: cystic dilation of 4th ventricle, hypoplastic or absent cerebellar vermis, enlarged posterior fossa, elevated tentorium. Associated with hydrocephalus, other anomalies. Treatment: shunt or ETV.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Myelomeningocele is commonly associated with:',
 'Normal ventricles', 'Chiari II malformation and hydrocephalus', 'Chiari I malformation', 'Dandy-Walker', 'No CNS anomalies',
 'B', 'Myelomeningocele: open spinal dysraphism. Nearly all have Chiari II malformation (hindbrain herniation with elongated 4th ventricle, beaking of tectum). 80-90% develop hydrocephalus requiring shunt. Arnold-Chiari II.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'External ventricular drain (EVD) is used for:',
 'Permanent CSF diversion', 'Temporary CSF drainage and ICP monitoring in acute settings', 'Chronic hydrocephalus', 'Outpatient management', 'Diagnosing tumors',
 'B', 'EVD: temporary, externalized catheter in lateral ventricle. Drains CSF, monitors ICP. Used in acute hydrocephalus (SAH, IVH, infection), pending definitive treatment. Requires ICU, infection risk, weaning trial before removal/shunt.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Lumboperitoneal shunt differs from VP shunt in that:',
 'They are identical', 'LP shunt drains from lumbar subarachnoid space rather than ventricle', 'LP shunt goes to the heart', 'VP shunt is less invasive', 'LP shunt is for obstructive hydrocephalus',
 'B', 'LP shunt: drains CSF from lumbar subarachnoid space to peritoneum. No intracranial surgery. Used for communicating hydrocephalus, IIH, CSF fistula. Not for obstructive hydrocephalus. Risk of Chiari herniation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000039-0000-0000-0000-000000000039', 'a0000004-0000-0000-0000-000000000004',
 'Choroid plexus papilloma can cause hydrocephalus by:',
 'Obstruction only', 'CSF overproduction from the tumor', 'Decreased absorption', 'Hemorrhage only', 'No effect on CSF',
 'B', 'Choroid plexus papilloma: benign tumor of choroid plexus. Can cause hydrocephalus by CSF overproduction and/or obstruction. Treatment: surgical resection. Choroid plexus carcinoma is malignant variant, more aggressive.', 'hard', 'knowledge');
