-- Surgery 4 MCQ Question Bank - Batch 35
-- Section G: Neurosurgery - Traumatic Brain Injury
-- 40 Questions

-- Topic: Traumatic Brain Injury
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000035-0000-0000-0000-000000000035', 'Traumatic Brain Injury', 'a0000004-0000-0000-0000-000000000004', 'Head trauma, intracranial hemorrhages, and neurosurgical emergencies', 35, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'The Glasgow Coma Scale (GCS) assesses:',
 'Blood pressure only', 'Eye opening verbal response and motor response', 'Pupil size only', 'Reflexes only', 'Breathing pattern',
 'B', 'GCS: standardized scale for consciousness. Eye opening (1-4), verbal response (1-5), motor response (1-6). Total 3-15. Severe TBI: GCS 3-8, moderate: 9-12, mild: 13-15. Used for prognosis and management.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'The motor component of GCS with the highest score (6) is:',
 'Withdraws to pain', 'Obeys commands', 'Localizes to pain', 'Flexion to pain', 'No response',
 'B', 'Motor GCS: 6 (obeys commands), 5 (localizes pain), 4 (withdraws - normal flexion), 3 (abnormal flexion/decorticate), 2 (extension/decerebrate), 1 (none). Motor most predictive component.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Severe traumatic brain injury is defined as GCS:',
 '13-15', '9-12', '3-8', '1-3', 'Greater than 12',
 'C', 'TBI classification by GCS: mild (13-15), moderate (9-12), severe (3-8). Severe TBI requires airway protection (intubation), ICP monitoring, ICU care. Associated with significant morbidity/mortality.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'A fixed dilated pupil after head injury suggests:',
 'Benign finding', 'Ipsilateral uncal herniation compressing CN III', 'Contralateral brainstem lesion', 'Orbital injury only', 'Normal variant',
 'B', 'Fixed dilated pupil: CN III compression, usually ipsilateral to mass lesion (uncal herniation). Emergency - requires urgent imaging and treatment. Contralateral hemiparesis may occur (Kernohan notch).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Cushing triad indicating increased intracranial pressure includes:',
 'Tachycardia hypotension tachypnea', 'Hypertension bradycardia and irregular respirations', 'Hypotension tachycardia regular breathing', 'Normal vitals', 'Fever and hypotension',
 'B', 'Cushing triad: hypertension (widened pulse pressure), bradycardia, irregular respirations. Late sign of severely elevated ICP. Indicates impending herniation. Requires immediate intervention.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'The initial imaging study of choice for acute head trauma is:',
 'MRI', 'Non-contrast CT head', 'Skull X-ray', 'PET scan', 'Contrast CT',
 'B', 'Non-contrast CT: first-line for acute head trauma. Fast, widely available, sensitive for blood, fractures, mass effect. MRI more sensitive for diffuse axonal injury, posterior fossa, but slower.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Epidural hematoma on CT appears as:',
 'Crescent-shaped collection', 'Biconvex (lens-shaped) hyperdense collection', 'Diffuse edema', 'Intraventricular blood', 'No visible abnormality',
 'B', 'Epidural hematoma: biconvex/lentiform shape. Between skull and dura. Usually arterial (middle meningeal). Does not cross suture lines (dura attached). Often associated with skull fracture. Surgical emergency.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Epidural hematoma is most commonly caused by:',
 'Venous sinus injury', 'Middle meningeal artery laceration from temporal bone fracture', 'Bridging vein rupture', 'Cortical contusion', 'Aneurysm rupture',
 'B', 'Epidural hematoma: middle meningeal artery (85%). Temporal bone fracture tears artery. Can be venous (dural sinus injury). Classic: lucid interval then rapid deterioration. Neurosurgical emergency.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'The classic clinical presentation of epidural hematoma is:',
 'Immediate coma', 'Loss of consciousness followed by lucid interval then deterioration', 'Gradual onset headache', 'No symptoms', 'Chronic progressive decline',
 'B', 'EDH "lucid interval": initial LOC (concussion), then lucid period (minutes to hours), then deterioration as hematoma expands. Not always present. High mortality if not treated promptly.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Subdural hematoma on CT appears as:',
 'Biconvex collection', 'Crescent-shaped collection that crosses suture lines', 'Intraventricular blood', 'Round mass', 'Hypodense only',
 'B', 'Subdural hematoma: crescent/concave shape. Between dura and arachnoid. Crosses suture lines (not limited by dural attachments). Usually venous (bridging veins). Acute = hyperdense, chronic = hypo/isodense.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Subdural hematoma is caused by:',
 'Arterial bleeding always', 'Rupture of bridging veins between cortex and dural sinuses', 'Skull fracture always', 'Aneurysm rupture', 'Hypertensive bleeding',
 'B', 'Subdural hematoma: bridging veins torn (acceleration-deceleration injury). Venous bleeding, slower accumulation than EDH. Risk factors: elderly, alcoholics, anticoagulation (atrophied brain, stretched veins).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Chronic subdural hematoma:',
 'Always requires surgery immediately', 'Often occurs in elderly with minor trauma and may present with gradual neurological decline', 'Is always acute', 'Only affects young patients', 'Never needs treatment',
 'B', 'Chronic SDH: >3 weeks old. Elderly, anticoagulated, minor/no recalled trauma. Gradual onset confusion, headache, weakness, gait disturbance. CT: hypodense or mixed density. Treatment: burr hole drainage if symptomatic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic subarachnoid hemorrhage:',
 'Has same distribution as aneurysmal SAH', 'Is common after TBI and found in sulci and cisterns', 'Is always fatal', 'Requires clipping', 'Is not seen on CT',
 'B', 'Traumatic SAH: blood in subarachnoid space from trauma. Common in moderate-severe TBI. Usually over convexities, interpeduncular cistern. Different from aneurysmal SAH pattern. Usually managed conservatively.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Cerebral contusion is:',
 'An extra-axial collection', 'A bruise of the brain parenchyma commonly in frontal and temporal lobes', 'Always bilateral', 'Never hemorrhagic', 'A skull fracture',
 'B', 'Cerebral contusion: parenchymal bruise. Coup (under impact) and contrecoup (opposite side). Frontal, temporal poles common (bone irregularity). May expand/coalesce ("blossom"). Monitor for mass effect.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Diffuse axonal injury (DAI):',
 'Is visible on CT as large hematomas', 'Results from rotational acceleration causing axonal shearing with often normal initial CT', 'Only affects gray matter', 'Is always fatal', 'Is the same as contusion',
 'B', 'DAI: shearing injury to axons from rotational forces. CT often normal or shows small petechial hemorrhages (corpus callosum, gray-white junction, brainstem). MRI (DWI, SWI) more sensitive. Coma despite normal-appearing CT.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Skull fractures:',
 'Always require surgery', 'May be linear depressed basilar or compound with varying treatment', 'Are always visible on X-ray', 'Never cause complications', 'Are the same as TBI',
 'B', 'Skull fractures: linear (most common, usually conservative), depressed (surgery if >thickness of skull, open, underlying injury), basilar (CSF leak, CN palsies, raccoon eyes, Battle sign), compound (open - infection risk).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Battle sign (mastoid ecchymosis) and raccoon eyes (periorbital ecchymosis) suggest:',
 'Facial fracture only', 'Basilar skull fracture', 'Orbital fracture only', 'Nasal fracture', 'Mandibular fracture',
 'B', 'Basilar skull fracture signs: Battle sign (mastoid ecchymosis - posterior fossa fracture), raccoon eyes (periorbital - anterior fossa fracture), CSF rhinorrhea/otorrhea, hemotympanum, CN palsies (VII, VIII).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'CSF rhinorrhea after head trauma:',
 'Is always treated surgically', 'Indicates dural tear and most cases resolve with conservative management', 'Requires immediate surgery', 'Is benign', 'Is never a concern',
 'B', 'CSF rhinorrhea: cribriform plate/frontal sinus fracture. Dural tear. Risk of meningitis. Most resolve conservatively (head elevation, avoid straining). Surgery if persistent (>7-14 days) or recurrent meningitis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Intracranial pressure (ICP) monitoring is indicated for:',
 'All head injuries', 'Severe TBI (GCS 3-8) with abnormal CT', 'Mild TBI only', 'Only if surgery planned', 'Never indicated',
 'B', 'ICP monitoring indications: severe TBI (GCS <=8) with abnormal CT, or normal CT with risk factors (age >40, posturing, SBP <90). Goal: ICP <22 mmHg, CPP 60-70. External ventricular drain or intraparenchymal monitor.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Normal intracranial pressure is approximately:',
 '0-5 mmHg', '5-15 mmHg', '20-30 mmHg', '30-40 mmHg', '40-50 mmHg',
 'B', 'Normal ICP: 5-15 mmHg (7-18 cmH2O). Elevated ICP: >20-22 mmHg requires treatment. Cerebral perfusion pressure (CPP) = MAP - ICP. Target CPP 60-70 mmHg in severe TBI.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Medical management of elevated ICP includes:',
 'Fluid restriction only', 'Head elevation sedation osmotic therapy hyperventilation and temperature control', 'Lumbar puncture', 'Increasing PaCO2', 'Trendelenburg position',
 'B', 'ICP management: head of bed 30 degrees, sedation, osmotic therapy (mannitol, hypertonic saline), controlled hyperventilation (PaCO2 30-35, short-term), normothermia, seizure prophylaxis, CSF drainage.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Mannitol for elevated ICP:',
 'Is a hypertonic saline', 'Is an osmotic diuretic that creates an osmotic gradient to reduce brain water', 'Increases ICP', 'Is contraindicated in TBI', 'Is the same as normal saline',
 'B', 'Mannitol: osmotic diuretic. Creates osmotic gradient, draws water from brain into vasculature. Rapid ICP reduction. Dose: 0.25-1 g/kg. Risk: hypotension (diuresis), rebound with repeated dosing. Check osmolar gap.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Hypertonic saline for elevated ICP:',
 'Causes hypotension', 'Creates osmotic gradient to reduce cerebral edema without diuretic effect', 'Is contraindicated', 'Increases brain water', 'Is the same as mannitol',
 'B', 'Hypertonic saline (3%, 23.4%): osmotic therapy, reduces cerebral edema. No diuretic effect (unlike mannitol). May be preferred if hypotensive. Various concentrations and dosing. Monitor sodium, osmolarity.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Hyperventilation for ICP control:',
 'Is always beneficial', 'Causes cerebral vasoconstriction and should be used cautiously for short-term ICP reduction', 'Increases ICP', 'Is first-line therapy', 'Is never used',
 'C', 'Hyperventilation: lowers PaCO2, causes cerebral vasoconstriction, reduces CBV and ICP. Risk of ischemia if aggressive. Short-term use for impending herniation. Target PaCO2 30-35. Avoid prophylactic hyperventilation.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Decompressive craniectomy:',
 'Is never used', 'Removes part of skull to allow brain swelling and reduce ICP in refractory cases', 'Is first-line treatment', 'Increases ICP', 'Is only for hematoma evacuation',
 'B', 'Decompressive craniectomy: removal of bone flap to allow brain expansion. For refractory ICP elevation. Reduces ICP, may improve survival. Controversial impact on functional outcomes. Bone replaced later (cranioplasty).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Surgical indications for epidural hematoma include:',
 'All epidural hematomas', 'Volume over 30 mL thickness over 15 mm or midline shift over 5 mm', 'Only if GCS is 15', 'No surgical indications', 'Only in elderly',
 'B', 'EDH surgical indications: volume >30 mL regardless of GCS, thickness >15 mm, midline shift >5 mm, GCS <=8 with pupil asymmetry, neurological deterioration. Small EDH in awake patient may be observed.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Surgical indications for subdural hematoma include:',
 'All subdural hematomas', 'Thickness over 10 mm midline shift over 5 mm GCS drop or ICP over 20', 'Only chronic SDH', 'Only in young patients', 'No surgical indications',
 'B', 'SDH surgical indications: thickness >10 mm, midline shift >5 mm, GCS decrease >=2 points, ICP >20. Acute SDH: craniotomy. Chronic SDH: burr hole(s). Small SDH may be observed with close monitoring.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Seizure prophylaxis after traumatic brain injury:',
 'Is never indicated', 'Is recommended for 7 days in severe TBI to prevent early post-traumatic seizures', 'Is for life', 'Is only for penetrating injury', 'Prevents late seizures',
 'B', 'Seizure prophylaxis: phenytoin or levetiracetam for 7 days in severe TBI. Reduces early seizures (<7 days). Does NOT prevent late post-traumatic epilepsy. Not recommended for mild TBI.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Concussion (mild TBI) is characterized by:',
 'Structural brain damage on CT', 'Temporary neurological dysfunction with typically normal imaging', 'Always involves loss of consciousness', 'Requires surgery', 'Permanent brain damage',
 'B', 'Concussion: transient neurological dysfunction from biomechanical forces. CT typically normal. May have LOC, amnesia, confusion, headache, dizziness. Most symptoms resolve in days-weeks. Rest and gradual return to activity.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Post-concussion syndrome includes:',
 'Immediate coma', 'Persistent headache dizziness cognitive difficulties and mood changes', 'Paralysis', 'Seizures always', 'No symptoms',
 'B', 'Post-concussion syndrome: symptoms persisting weeks-months after mild TBI. Headache, dizziness, fatigue, difficulty concentrating, memory problems, irritability, sleep disturbance. Multifactorial. Supportive treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Second impact syndrome:',
 'Is common', 'Is rare but potentially fatal rapid brain swelling after a second concussion before full recovery from the first', 'Is benign', 'Only affects adults', 'Is well understood',
 'B', 'Second impact syndrome: rare, catastrophic. Second concussion before first resolved leads to loss of autoregulation, malignant cerebral edema. High mortality. Supports return-to-play protocols after concussion.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Herniation syndromes include:',
 'Only uncal herniation', 'Uncal central tonsillar and subfalcine herniation', 'No recognized syndromes', 'Upward herniation only', 'Herniation is benign',
 'B', 'Herniation syndromes: uncal (temporal lobe through tentorial notch - CN III palsy), central (diencephalon through tentorial notch), subfalcine (cingulate under falx), tonsillar (cerebellar tonsils through foramen magnum - fatal).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Uncal herniation classically presents with:',
 'Bilateral dilated pupils', 'Ipsilateral dilated pupil and contralateral hemiparesis', 'Bilateral constricted pupils', 'No neurological signs', 'Upgoing toes only',
 'B', 'Uncal herniation: medial temporal lobe herniates through tentorial notch. Compresses CN III (ipsilateral dilated pupil), cerebral peduncle (contralateral hemiparesis). May have Kernohan notch (ipsilateral hemiparesis - false localizing sign).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Penetrating brain injury management includes:',
 'Removing all bone and metal fragments always', 'Debridement watertight dural closure and prophylactic antibiotics', 'No antibiotics', 'No surgery needed', 'Observation only',
 'B', 'Penetrating TBI: surgery for debridement, removal of accessible fragments, watertight dural closure (prevents infection, CSF leak). Prophylactic antibiotics, seizure prophylaxis. Avoid aggressive deep exploration.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'Cerebral autoregulation:',
 'Maintains constant ICP', 'Maintains constant cerebral blood flow despite changes in blood pressure within a certain range', 'Is never impaired in TBI', 'Increases blood flow with low BP', 'Is the same as CPP',
 'B', 'Cerebral autoregulation: maintains constant CBF over MAP range (~50-150 mmHg in normals). Impaired after TBI - CBF becomes pressure-passive. Maintaining adequate MAP/CPP critical when autoregulation impaired.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000035-0000-0000-0000-000000000035', 'a0000004-0000-0000-0000-000000000004',
 'The Monro-Kellie doctrine states that:',
 'CSF is always constant', 'The cranial vault is a fixed space so an increase in one component must be compensated by a decrease in another', 'Brain can expand without limit', 'ICP is always normal', 'Skull is flexible',
 'B', 'Monro-Kellie doctrine: fixed intracranial volume (brain 80%, CSF 10%, blood 10%). Increase in one must be compensated by decrease in others (initially CSF, venous blood). When compensation exhausted, ICP rises rapidly.', 'medium', 'knowledge');
