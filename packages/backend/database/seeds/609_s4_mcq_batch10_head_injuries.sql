-- Surgery 4 MCQ Question Bank - Batch 10
-- Section B: Trauma & Emergency Surgery - Head Injuries
-- 40 Questions

-- Topic: Head Injuries
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000010-0000-0000-0000-000000000010', 'Head Injuries', 'a0000004-0000-0000-0000-000000000004', 'Traumatic brain injury assessment, classification, and management', 10, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The Glasgow Coma Scale assesses all of the following EXCEPT:',
 'Eye opening', 'Verbal response', 'Motor response', 'Pupillary reaction', 'None of the above',
 'D', 'GCS assesses Eye opening (1-4), Verbal response (1-5), and Motor response (1-6). Pupillary reaction is assessed separately as part of neurological examination but not part of GCS.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The maximum GCS score is:',
 '10', '12', '14', '15', '18',
 'D', 'Maximum GCS = 15 (E4 + V5 + M6). Minimum = 3 (E1 + V1 + M1). Severe TBI <9, Moderate 9-12, Mild 13-15.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'A patient who opens eyes to pain, makes incomprehensible sounds, and flexes to pain has GCS of:',
 '6', '7', '8', '9', '10',
 'C', 'Eye opening to pain = E2, Incomprehensible sounds = V2, Flexion to pain = M4. Total GCS = 2 + 2 + 4 = 8.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Severe traumatic brain injury is defined as GCS:',
 'Less than 13', 'Less than 10', '8 or less', 'Less than 6', '3',
 'C', 'Severe TBI: GCS 3-8 (or 8 or less). Moderate: GCS 9-12. Mild: GCS 13-15. Severe TBI requires intubation for airway protection.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Primary brain injury refers to:',
 'Damage at the moment of impact', 'Damage from secondary insults', 'Damage from infection', 'Damage from medication', 'Damage from surgery',
 'A', 'Primary injury occurs at moment of impact (contusions, lacerations, axonal shearing). Secondary injury develops over hours-days from hypoxia, hypotension, edema, herniation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Secondary brain injury prevention focuses on avoiding:',
 'Hypotension and hypoxia', 'Hyperglycemia only', 'Movement', 'All medications', 'Nutrition',
 'A', 'Secondary injury prevention: avoid hypotension (SBP <90 mmHg), hypoxia (O2 sat <90%), hyperthermia, hypo/hyperglycemia, and increased ICP. These worsen outcome significantly.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Epidural hematoma is characteristically associated with:',
 'Venous bleeding', 'Middle meningeal artery injury', 'Cortical contusion', 'Subdural bridging veins', 'Vertebral artery',
 'B', 'EDH typically from middle meningeal artery injury associated with temporal bone fracture. Arterial bleeding leads to rapid accumulation of blood between skull and dura.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The classic CT appearance of epidural hematoma is:',
 'Crescentic hyperdensity', 'Biconvex lens-shaped hyperdensity', 'Diffuse brain swelling', 'Midline shift without hematoma', 'Hydrocephalus',
 'B', 'EDH appears as biconvex (lentiform) hyperdensity on CT. It does NOT cross suture lines (dura is tightly adherent to skull at sutures).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The lucid interval is classically seen in:',
 'Subdural hematoma', 'Epidural hematoma', 'Intracerebral hemorrhage', 'Diffuse axonal injury', 'Concussion',
 'B', 'Lucid interval: initial LOC, recovery of consciousness, then deterioration as EDH expands. Present in about 50% of EDH. Rapid deterioration requires immediate surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Subdural hematoma results from:',
 'Arterial bleeding from skull fracture', 'Tearing of bridging veins', 'Contusion only', 'Dural arteriovenous malformation', 'Aneurysm rupture',
 'B', 'SDH results from tearing of bridging veins between cortex and dural sinuses due to acceleration-deceleration forces. More common in elderly and alcoholics (cerebral atrophy).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The CT appearance of acute subdural hematoma is:',
 'Biconvex lens-shaped', 'Crescentic hyperdensity crossing suture lines', 'Isodense lesion', 'Hypodense collection', 'Ring-enhancing lesion',
 'B', 'Acute SDH appears as crescentic hyperdensity that crosses suture lines and follows brain contour. It lies between dura and arachnoid. May cause significant mass effect.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Chronic subdural hematoma becomes hypodense on CT after approximately:',
 '24 hours', '1 week', '3 weeks', '3 months', '6 months',
 'C', 'SDH density changes over time: acute (hyperdense), subacute 1-3 weeks (isodense to brain), chronic >3 weeks (hypodense). Mixed density suggests rebleeding.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Indications for surgical evacuation of acute subdural hematoma include:',
 'All subdural hematomas', 'Thickness greater than 10mm or midline shift greater than 5mm or GCS drop', 'Only if GCS is 15', 'Thickness less than 5mm', 'No indications exist',
 'B', 'Surgical indications for acute SDH: thickness >10mm, midline shift >5mm, GCS decrease by 2 or more points, or ICP >20 mmHg. Timing is critical.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The Monro-Kellie doctrine states that:',
 'ICP is always normal', 'The cranial vault has fixed volume with brain blood and CSF in equilibrium', 'Brain can expand indefinitely', 'CSF production is constant', 'Blood flow is independent of pressure',
 'B', 'Monro-Kellie: fixed intracranial volume (brain 80%, blood 10%, CSF 10%). Increase in one component must be compensated by decrease in another, or ICP rises.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Normal intracranial pressure in adults is:',
 'Less than 5 mmHg', '5-15 mmHg', '20-25 mmHg', '30-40 mmHg', 'Greater than 50 mmHg',
 'B', 'Normal ICP: 5-15 mmHg (7-20 cm H2O). ICP >20 mmHg is elevated. ICP >40 mmHg is severely elevated and may cause herniation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Cerebral perfusion pressure is calculated as:',
 'Systolic BP minus ICP', 'Mean arterial pressure minus ICP', 'Diastolic BP minus ICP', 'ICP minus MAP', 'Systolic BP plus ICP',
 'B', 'CPP = MAP - ICP. Target CPP in TBI is 60-70 mmHg. CPP <60 mmHg is associated with ischemia; >70 mmHg does not improve outcome and may cause ARDS.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The Cushing reflex (response) consists of:',
 'Tachycardia hypotension and tachypnea', 'Hypertension bradycardia and irregular respiration', 'Hypotension tachycardia and apnea', 'Normal vitals', 'Fever and hypotension',
 'B', 'Cushing reflex: hypertension, bradycardia, and irregular respiration. Late sign of critically elevated ICP/brainstem compression. Indicates imminent herniation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'A fixed dilated pupil in head injury indicates:',
 'Bilateral third nerve palsy', 'Uncal herniation compressing the ipsilateral third nerve', 'Optic nerve injury', 'Normal finding', 'Basilar artery occlusion',
 'B', 'Fixed dilated pupil indicates uncal herniation with compression of ipsilateral CN III. Initially reactive then becomes fixed. Contralateral hemiparesis develops. Requires emergent intervention.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Diffuse axonal injury is best diagnosed by:',
 'CT scan', 'MRI showing punctate hemorrhages at grey-white junction', 'Lumbar puncture', 'Skull X-ray', 'Clinical examination only',
 'B', 'DAI is better seen on MRI (especially susceptibility-weighted/gradient echo). CT often normal or shows punctate hemorrhages at grey-white junction, corpus callosum, brainstem.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The mechanism of diffuse axonal injury is:',
 'Direct impact', 'Rotational acceleration-deceleration shearing axons', 'Penetrating injury', 'Blast wave', 'Thermal injury',
 'B', 'DAI results from rotational acceleration-deceleration causing shearing of axons at grey-white junction. Common in high-speed MVA. Often coma with minimal CT findings.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Battle sign is indicative of:',
 'Anterior cranial fossa fracture', 'Posterior fossa fracture or petrous temporal bone fracture', 'Parietal skull fracture', 'Facial fracture', 'Cervical spine injury',
 'B', 'Battle sign: ecchymosis over mastoid process. Indicates basilar skull fracture involving posterior fossa or petrous temporal bone. Appears 24-48 hours post-injury.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Raccoon eyes (periorbital ecchymosis) indicates:',
 'Direct orbital trauma only', 'Anterior cranial fossa fracture', 'Posterior fossa fracture', 'Maxillary fracture', 'Nasal bone fracture only',
 'B', 'Raccoon eyes (bilateral periorbital ecchymosis) indicates anterior cranial fossa fracture. Blood tracks along orbital roofs. May be associated with CSF rhinorrhea.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'CSF rhinorrhea is confirmed by:',
 'Visual inspection alone', 'Beta-2 transferrin test', 'Glucose testing only', 'CT scan only', 'MRI only',
 'B', 'Beta-2 transferrin (tau protein) is specific for CSF. Halo sign and glucose testing are supportive but not specific. CT cisternography or MRI may localize the leak.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of CSF leak includes:',
 'Immediate surgical repair', 'Bed rest head elevation and avoid nose blowing', 'Lumbar drain immediately', 'Antibiotics prophylaxis proven', 'No treatment needed',
 'B', 'Conservative management: bed rest, head elevation 30 degrees, avoid straining/nose blowing/sneezing. Most resolve in 7-10 days. Persistent leak may need lumbar drain or surgical repair.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Medical management to reduce ICP includes all EXCEPT:',
 'Head elevation to 30 degrees', 'Hyperventilation to PaCO2 25-30 mmHg', 'Hypotonic saline infusion', 'Mannitol or hypertonic saline', 'Sedation',
 'C', 'ICP reduction: head elevation, sedation, osmotherapy (mannitol 20%, hypertonic saline 3-23.4%), controlled hyperventilation (PaCO2 30-35). Hypotonic fluids worsen edema.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The mechanism of mannitol in reducing ICP is:',
 'Increasing cerebral blood flow', 'Osmotic diuresis reducing brain water content', 'Direct vasoconstriction', 'Reducing CSF production', 'Increasing blood viscosity',
 'B', 'Mannitol (osmotic diuretic) creates osmotic gradient drawing water from brain tissue into circulation. Also reduces blood viscosity improving CBF. Dose: 0.25-1 g/kg.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Hyperventilation reduces ICP by:',
 'Increasing cerebral blood volume', 'Causing cerebral vasoconstriction through hypocapnia', 'Reducing brain metabolism', 'Osmotic effect', 'Reducing CSF production',
 'B', 'Hyperventilation causes hypocapnia which leads to cerebral vasoconstriction reducing CBV and ICP. Use cautiously (risk of ischemia). Target PaCO2 30-35 mmHg.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Decompressive craniectomy is considered for:',
 'All head injuries', 'Refractory intracranial hypertension not responding to medical management', 'Minor concussion', 'Chronic subdural only', 'As first-line treatment',
 'B', 'Decompressive craniectomy removes bone flap allowing brain to expand externally. Reserved for refractory ICP elevation despite maximal medical therapy. Controversial outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Depressed skull fracture requires surgical elevation when:',
 'All depressed fractures', 'Depressed greater than bone thickness or compound or significant cosmetic defect', 'Only if GCS less than 8', 'Never requires surgery', 'Only in children',
 'B', 'Surgical indications: depression greater than bone thickness, compound (open) fracture, underlying hematoma, significant contamination, cosmetic concerns over frontal bone.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Growing skull fracture occurs in:',
 'Adults only', 'Children under 3 years', 'Elderly only', 'All ages equally', 'Never occurs',
 'B', 'Growing skull fracture (leptomeningeal cyst) occurs in infants/young children. Dural tear allows arachnoid and brain to herniate through fracture preventing healing. Expands over time.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Seizure prophylaxis in TBI is recommended for:',
 'All head injuries indefinitely', 'First 7 days in severe TBI to prevent early seizures', '1 year duration', 'Only after seizure occurs', 'Never recommended',
 'B', 'Early seizure prophylaxis (phenytoin/levetiracetam) for 7 days reduces early post-traumatic seizures. Does not prevent late epilepsy. Indicated for severe TBI, ICH, depressed fracture.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Concussion is characterized by:',
 'Structural brain damage visible on CT', 'Transient neurological dysfunction with normal imaging', 'Always loss of consciousness', 'Permanent deficit', 'Seizures always',
 'B', 'Concussion is functional (not structural) injury. Transient confusion, amnesia, or LOC with normal CT/MRI. Symptoms usually resolve within days to weeks. Return to play guidelines important.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Second impact syndrome refers to:',
 'Repeat concussion before first resolves causing catastrophic swelling', 'Two epidural hematomas', 'Bilateral subdural hematomas', 'Recurrent meningitis', 'Post-concussion syndrome',
 'A', 'Second impact syndrome: second concussion before symptoms of first resolve leads to loss of cerebrovascular autoregulation, massive cerebral swelling, often fatal. Seen in young athletes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Traumatic subarachnoid hemorrhage is best seen on:',
 'Plain X-ray', 'Non-contrast CT scan', 'MRI only', 'Ultrasound', 'Nuclear medicine scan',
 'B', 'Traumatic SAH appears as hyperdense blood in sulci and cisterns on non-contrast CT. Usually located at convexity (vs. aneurysmal SAH in basal cisterns).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Cerebral contusion is most common in:',
 'Occipital lobe', 'Frontal and temporal lobes due to rough skull base', 'Parietal lobe', 'Cerebellum', 'Brainstem',
 'B', 'Contusions common in frontal and temporal lobes (coup-contrecoup) due to movement against irregular anterior and middle fossa skull base. May expand (blossom) over time.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'Post-concussion syndrome includes all EXCEPT:',
 'Headache', 'Cognitive difficulties', 'Hemiplegia', 'Mood changes', 'Sleep disturbances',
 'C', 'Post-concussion syndrome: headache, dizziness, fatigue, cognitive issues, sleep disturbance, mood changes. Hemiplegia indicates structural injury, not post-concussion syndrome.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'ICP monitoring is indicated in severe TBI patients who:',
 'All TBI patients', 'Cannot be followed by neurological examination due to sedation or abnormal CT', 'Mild TBI only', 'No indications exist', 'Only in children',
 'B', 'ICP monitoring indicated in GCS 3-8 with abnormal CT or normal CT with age >40, motor posturing, or SBP <90. Allows CPP-directed therapy. EVD allows therapeutic CSF drainage.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000010-0000-0000-0000-000000000010', 'a0000004-0000-0000-0000-000000000004',
 'The preferred method of ICP monitoring is:',
 'Subdural bolt', 'External ventricular drain (intraventricular catheter)', 'Lumbar puncture', 'Epidural sensor', 'Transcranial Doppler',
 'B', 'EVD (intraventricular catheter) is gold standard. Allows accurate measurement AND therapeutic CSF drainage. Infection risk is main complication. Intraparenchymal monitors are alternative.', 'medium', 'knowledge');
