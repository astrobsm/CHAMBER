-- Surgery 4 MCQ Question Bank - Batch 41
-- Section G: Neurosurgery - Functional Neurosurgery
-- 40 Questions

-- Topic: Functional Neurosurgery
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000041-0000-0000-0000-000000000041', 'Functional Neurosurgery', 'a0000004-0000-0000-0000-000000000004', 'Deep brain stimulation, movement disorders surgery, and epilepsy surgery', 41, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Functional neurosurgery refers to:',
 'Only tumor removal', 'Surgery to modulate neural circuits for treating neurological disorders', 'Spinal fusion only', 'Vascular surgery', 'Cosmetic surgery',
 'B', 'Functional neurosurgery: procedures modifying brain/nerve function for movement disorders, pain, epilepsy, psychiatric conditions. Includes DBS, ablation, stimulation, lesioning. Targets circuits rather than removing lesions.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Deep brain stimulation (DBS) involves:',
 'Removing brain tissue', 'Implanting electrodes to deliver electrical stimulation to specific brain targets', 'External stimulation only', 'Chemotherapy delivery', 'No surgery required',
 'B', 'DBS: implanted electrodes deliver continuous electrical stimulation to deep brain nuclei. Modulates neural circuits. Reversible, adjustable. Targets: STN, GPi (Parkinson), Vim (tremor), GPi (dystonia). Generator in chest.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'FDA-approved indications for deep brain stimulation include:',
 'Only essential tremor', 'Parkinson disease essential tremor dystonia and obsessive-compulsive disorder', 'Brain tumors', 'Stroke', 'Dementia',
 'B', 'DBS FDA approvals: Parkinson disease, essential tremor, dystonia, OCD (humanitarian device). Investigational: epilepsy, depression, Tourette, chronic pain. Off-label uses expanding. Most experience with movement disorders.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'The most common targets for DBS in Parkinson disease are:',
 'Thalamus only', 'Subthalamic nucleus and globus pallidus interna', 'Cerebellum', 'Spinal cord', 'Motor cortex',
 'B', 'Parkinson DBS targets: STN (subthalamic nucleus) most common - allows medication reduction. GPi (globus pallidus interna) also effective, better for dyskinesias. Vim (thalamus) for tremor-dominant but doesn''t help bradykinesia.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Candidates for DBS in Parkinson disease should have:',
 'Poor response to levodopa', 'Good response to levodopa but motor fluctuations or medication-resistant tremor', 'Dementia', 'Parkinson-plus syndrome', 'Early disease only',
 'B', 'PD DBS candidacy: levodopa-responsive disease (predicts DBS response), motor fluctuations/dyskinesias despite optimal medical therapy, medication-resistant tremor. Exclude: dementia, unstable psychiatric disease, Parkinson-plus syndromes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'The DBS target for essential tremor is typically the:',
 'Subthalamic nucleus', 'Ventral intermediate nucleus of thalamus', 'Globus pallidus', 'Caudate', 'Putamen',
 'B', 'Essential tremor DBS: Vim (ventral intermediate nucleus) of thalamus. Highly effective for hand tremor (80-90%). Targets cerebellar-thalamic pathway. Also: cZi (caudal zona incerta), PSA (posterior subthalamic area) being explored.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Globus pallidus interna DBS is the preferred target for:',
 'Essential tremor', 'Primary generalized dystonia', 'Parkinson tremor only', 'Depression', 'Epilepsy',
 'B', 'GPi DBS for dystonia: primary generalized dystonia (especially DYT1 mutation) responds well. Improvement gradual over months. Secondary dystonia less predictable. Also used in Parkinson (especially with dyskinesias).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Components of a DBS system include:',
 'Only electrodes', 'Implanted electrodes extension cable and pulse generator', 'External device only', 'Infusion pump', 'Shunt only',
 'B', 'DBS system: electrode (4 contacts, in brain target), extension cable (connects electrode to generator, tunneled subcutaneously), implantable pulse generator/IPG (battery, in chest/abdomen). Programmable parameters.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Complications of DBS surgery include:',
 'No complications', 'Hemorrhage infection hardware complications and stimulation side effects', 'Only battery failure', 'No risk of infection', 'Only tremor worsening',
 'B', 'DBS complications: surgical (hemorrhage 1-2%, infection 3-5%), hardware (lead migration, fracture, erosion, battery depletion), stimulation-related (speech, gait, mood changes). Mortality <1%. Reversible if stimulation turned off.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'MR-guided focused ultrasound (MRgFUS) ablation for tremor:',
 'Is experimental only', 'Is an FDA-approved non-incisional technique for essential tremor and Parkinson tremor', 'Requires open surgery', 'Uses radiation', 'Is not effective',
 'B', 'MRgFUS: non-invasive, incisionless lesioning. Focused ultrasound creates thermal lesion in Vim (thalamus). FDA-approved for essential tremor, PD tremor. Advantages: no incision, real-time MRI monitoring. Unilateral only (bilateral risk).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Epilepsy surgery is indicated for patients with:',
 'All seizure types', 'Drug-resistant focal epilepsy with identifiable seizure focus', 'Generalized epilepsy only', 'First-time seizure', 'Well-controlled epilepsy',
 'B', 'Epilepsy surgery indication: drug-resistant epilepsy (failed 2+ appropriate medications), focal seizure onset with identifiable focus. Goal: seizure freedom or reduction. Temporal lobe epilepsy most common surgical candidate.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Drug-resistant epilepsy is defined as failure of:',
 'One medication', 'Two or more appropriately chosen antiseizure medications', 'Any medication trial', 'Surgery only', 'All available medications',
 'B', 'Drug-resistant epilepsy: failure of 2 or more appropriately chosen and used ASMs at adequate doses. Only 50% of patients become seizure-free with first drug, 11% with second. Early referral to epilepsy center important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Pre-surgical evaluation for epilepsy surgery includes:',
 'Only EEG', 'Video-EEG monitoring MRI PET neuropsychological testing and sometimes invasive monitoring', 'CT only', 'Blood tests only', 'Clinical history only',
 'B', 'Epilepsy surgery workup: video-EEG (characterize seizures, localize onset), MRI (structural lesions), PET (hypometabolism), neuropsych (lateralize language, memory), WADA/fMRI (language dominance). Invasive EEG if needed.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of resective epilepsy surgery is:',
 'Hemispherectomy', 'Anterior temporal lobectomy for mesial temporal sclerosis', 'Corpus callosotomy', 'VNS', 'Multiple subpial transections',
 'B', 'Anterior temporal lobectomy: most common, most successful epilepsy surgery. For mesial temporal sclerosis (hippocampal sclerosis). 60-80% seizure-free. Removes anterior temporal lobe including amygdala, hippocampus.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Mesial temporal sclerosis on MRI shows:',
 'Normal hippocampus', 'Hippocampal atrophy and increased T2 signal', 'Mass lesion', 'Hemorrhage', 'Enhancement',
 'B', 'Mesial temporal sclerosis MRI: hippocampal volume loss (atrophy), increased T2/FLAIR signal, loss of internal architecture. Most common pathology in temporal lobe epilepsy. Excellent surgical outcome when concordant with EEG.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Selective amygdalohippocampectomy compared to standard temporal lobectomy:',
 'Is never done', 'Removes less tissue with potentially lower cognitive side effects', 'Has worse seizure outcomes', 'Removes more tissue', 'Is only for tumors',
 'B', 'Selective amygdalohippocampectomy: removes mesial structures (amygdala, hippocampus) while preserving neocortex. Potentially better cognitive outcomes. Seizure freedom comparable to standard lobectomy. Multiple surgical approaches.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Corpus callosotomy is indicated for:',
 'Temporal lobe epilepsy', 'Generalized seizures with drop attacks when resection not possible', 'Focal seizures', 'All epilepsy types', 'First-line treatment',
 'B', 'Corpus callosotomy: palliative procedure. Disconnects hemispheres, prevents bilateral seizure spread. Best for atonic/drop attacks (Lennox-Gastaut syndrome). Not curative but reduces injurious falls. Anterior or complete section.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Hemispherectomy or hemispherotomy is indicated for:',
 'Focal epilepsy', 'Severe unilateral hemispheric epilepsy with hemiplegia usually in children', 'Temporal lobe epilepsy', 'Essential tremor', 'Adult onset epilepsy',
 'B', 'Hemispherectomy: remove or disconnect entire hemisphere. For severe unilateral disease (Rasmussen encephalitis, hemimegalencephaly, Sturge-Weber, stroke). Children with existing hemiplegia. 70-80% seizure-free. Functional hemispherotomy preferred.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Vagus nerve stimulation (VNS) is:',
 'Curative surgery', 'A palliative neuromodulation therapy for drug-resistant epilepsy', 'First-line treatment', 'Removal of vagus nerve', 'Only for pain',
 'B', 'VNS: implantable device stimulating left vagus nerve. Palliative (not curative) for drug-resistant epilepsy and depression. ~50% have 50% seizure reduction. Side effects: hoarseness, cough. Doesn''t require brain surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Responsive neurostimulation (RNS) for epilepsy:',
 'Provides continuous stimulation', 'Detects abnormal brain activity and delivers targeted stimulation to abort seizures', 'Is placed on vagus nerve', 'Removes seizure focus', 'Is external device',
 'B', 'RNS: closed-loop brain stimulation. Electrodes in seizure foci detect abnormal activity, deliver stimulation to abort seizure. For focal epilepsy not amenable to resection (eloquent cortex, bilateral foci). FDA-approved.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Laser interstitial thermal therapy (LITT) for epilepsy:',
 'Is open surgery', 'Is a minimally invasive MRI-guided ablation technique', 'Uses radiation', 'Requires craniotomy', 'Is only experimental',
 'B', 'LITT: minimally invasive stereotactic laser ablation. MRI-guided, real-time thermal monitoring. Small burr hole only. For MTS, hypothalamic hamartomas, focal lesions. Less invasive than open surgery, comparable seizure outcomes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Trigeminal neuralgia is characterized by:',
 'Constant dull pain', 'Brief severe lancinating facial pain triggered by light touch', 'Numbness only', 'Motor weakness', 'Hearing loss',
 'B', 'Trigeminal neuralgia: paroxysmal, lancinating, electric shock-like pain in trigeminal distribution. Brief attacks, trigger zones. V2, V3 most common. Usually caused by vascular compression of nerve root. No sensory loss.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for trigeminal neuralgia is:',
 'Surgery', 'Carbamazepine', 'Aspirin', 'Opioids', 'Physical therapy',
 'B', 'TN first-line: carbamazepine (most effective, diagnostic value). Oxcarbazepine also used. 70-80% response. Side effects limit use. Surgical options for refractory cases or medication intolerance.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Microvascular decompression for trigeminal neuralgia involves:',
 'Nerve destruction', 'Placing a cushion between offending vessel and trigeminal nerve root', 'Rhizotomy', 'Radiation', 'Medication only',
 'B', 'MVD: posterior fossa craniotomy, identify vascular compression of CN V, place Teflon sponge between vessel and nerve. Most durable relief (70-80% long-term), preserves sensation. Superior cerebellar artery most common offender.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Percutaneous procedures for trigeminal neuralgia include:',
 'Only MVD', 'Radiofrequency rhizotomy glycerol injection and balloon compression', 'Medication infusion', 'DBS', 'Shunt placement',
 'B', 'Percutaneous TN procedures: RF thermocoagulation, glycerol rhizotomy, balloon compression of Gasserian ganglion. Less invasive than MVD, but cause facial numbness. Higher recurrence than MVD. Good for elderly, high-risk patients.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Gamma Knife radiosurgery for trigeminal neuralgia:',
 'Is not used', 'Delivers focused radiation to the trigeminal nerve root entry zone', 'Requires open surgery', 'Has immediate effect', 'Is first-line treatment',
 'B', 'Gamma Knife TN: single fraction focused radiation to nerve root. Non-invasive, outpatient. Delayed effect (weeks to months). 70-80% initial relief, recurrence common. Sensory changes less than percutaneous. Good for elderly, MS.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Hemifacial spasm is caused by:',
 'Trigeminal neuralgia', 'Vascular compression of the facial nerve causing involuntary facial twitching', 'Stroke', 'Tumor always', 'Muscle disease',
 'B', 'Hemifacial spasm: involuntary unilateral facial muscle contractions. Usually vascular compression of CN VII at brainstem. AICA or PICA loop. Treatment: botulinum toxin (symptomatic), MVD (curative 85-90%).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Spinal cord stimulation is used for:',
 'Parkinson disease', 'Chronic neuropathic pain such as failed back surgery syndrome and CRPS', 'Epilepsy', 'Tremor', 'Stroke',
 'B', 'Spinal cord stimulation: epidural electrodes deliver electrical stimulation to dorsal columns. Gate control theory. For chronic neuropathic pain: FBSS, CRPS, peripheral neuropathy, angina. Trial before permanent implant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Failed back surgery syndrome (FBSS) refers to:',
 'Surgical failure', 'Persistent or recurrent pain after spinal surgery', 'Infection', 'Tumor recurrence', 'Paralysis',
 'B', 'FBSS: persistent/recurrent leg or back pain after spinal surgery. Multiple causes: recurrent/residual stenosis, instability, epidural fibrosis, wrong level, new pathology. SCS effective for neuropathic leg pain component.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Intrathecal drug delivery systems are used for:',
 'Systemic drug administration', 'Delivering medications directly into spinal fluid for pain or spasticity', 'IV medications', 'Oral medication only', 'Nerve blocks',
 'B', 'Intrathecal pumps: programmable pump delivers medication to CSF. Bypasses blood-brain barrier. For spasticity (baclofen) and chronic pain (morphine, ziconotide). Lower doses, fewer systemic side effects. Requires refills.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Intrathecal baclofen is indicated for:',
 'Pain only', 'Severe spasticity not responding to oral medications', 'Parkinson disease', 'Epilepsy', 'Headache',
 'B', 'Intrathecal baclofen: for severe spasticity (spinal cord injury, MS, CP, stroke) refractory to oral meds. Trial dose before permanent pump. Direct CSF delivery, lower doses, fewer cognitive side effects. Abrupt withdrawal dangerous.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Motor cortex stimulation is used for:',
 'Parkinson disease', 'Chronic refractory neuropathic pain especially facial pain', 'Epilepsy', 'Tremor', 'Depression',
 'B', 'Motor cortex stimulation: epidural electrodes over motor cortex. For refractory neuropathic pain, especially trigeminal neuropathic pain, post-stroke pain, phantom limb. Modulates pain circuits. Variable results.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Psychiatric neurosurgery such as DBS for OCD and depression targets:',
 'Motor cortex', 'Limbic structures such as anterior cingulate and ventral capsule', 'Thalamus Vim', 'Cerebellum', 'Spinal cord',
 'B', 'Psychiatric DBS: targets limbic circuits. OCD: ventral capsule/ventral striatum, STN. Depression: subgenual cingulate (Cg25), VC/VS. Strictly regulated, refractory to all other treatments. Emerging but controversial.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Stereotactic radiosurgery:',
 'Uses chemotherapy', 'Delivers focused radiation to precise targets in a single session without incision', 'Requires craniotomy', 'Is same as standard radiation', 'Takes months of treatment',
 'B', 'Stereotactic radiosurgery (SRS): highly focused radiation, single fraction, no incision. Treats tumors, AVMs, TN. Platforms: Gamma Knife, CyberKnife, linear accelerator. Precision <1mm. Effect over weeks-months.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Awake craniotomy is performed for:',
 'All brain tumors', 'Surgery near eloquent cortex requiring intraoperative mapping and patient testing', 'Posterior fossa tumors', 'Vascular malformations', 'Hydrocephalus',
 'B', 'Awake craniotomy: patient awake during portion of surgery. Allows real-time mapping of motor, language, sensory cortex. Maximizes tumor resection while preserving function. For lesions in/near eloquent areas.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'Intraoperative neurophysiological monitoring includes:',
 'Only EEG', 'Somatosensory evoked potentials motor evoked potentials EMG and EEG', 'No monitoring needed', 'Blood pressure only', 'CT scanning',
 'B', 'IONM techniques: SSEPs (sensory pathways), MEPs (motor pathways), EMG (nerve root function), EEG (cortical activity), brainstem auditory evoked potentials. Detect injury in real-time, allow surgical modification.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000041-0000-0000-0000-000000000041', 'a0000004-0000-0000-0000-000000000004',
 'The Wada test is used preoperatively to:',
 'Measure ICP', 'Determine hemispheric language and memory dominance before epilepsy surgery', 'Diagnose tumors', 'Measure blood flow', 'Test vision',
 'B', 'Wada test (intracarotid amobarbital test): inject amobarbital into ICA, temporarily anesthetize hemisphere. Test language and memory while hemisphere inactive. Determines lateralization before temporal surgery. Increasingly replaced by fMRI.', 'hard', 'knowledge');
