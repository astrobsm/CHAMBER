-- Surgery 4 MCQ Question Bank - Batch 37
-- Section G: Neurosurgery - Spinal Disorders
-- 40 Questions

-- Topic: Spinal Disorders
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000037-0000-0000-0000-000000000037', 'Spinal Disorders', 'a0000004-0000-0000-0000-000000000004', 'Disc herniation, spinal stenosis, spinal tumors, and spinal trauma', 37, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'The most common level of lumbar disc herniation is:',
 'L1-L2', 'L3-L4', 'L4-L5 and L5-S1', 'L2-L3', 'T12-L1',
 'C', 'Lumbar disc herniation: L4-L5 and L5-S1 most common (90% of cases). Greatest motion and stress at these levels. L4-L5 affects L5 nerve root, L5-S1 affects S1 nerve root (exiting root one level above disc).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'L5 radiculopathy from disc herniation presents with:',
 'Ankle reflex loss', 'Weakness of ankle dorsiflexion (foot drop) and numbness of lateral leg and dorsum of foot', 'Knee reflex loss', 'Hip flexor weakness', 'Knee extensor weakness',
 'B', 'L5 radiculopathy: weakness of ankle dorsiflexion (tibialis anterior - foot drop), EHL, hip abduction (gluteus medius). Numbness: lateral leg, dorsum of foot, great toe. No specific reflex (or internal hamstring).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'S1 radiculopathy from disc herniation presents with:',
 'Knee reflex loss', 'Weakness of ankle plantarflexion and loss of ankle jerk reflex', 'Foot drop', 'Hip flexor weakness', 'Quadriceps weakness',
 'B', 'S1 radiculopathy: weakness of ankle plantarflexion (gastrocnemius), toe flexion, hip extension (gluteus maximus). Diminished ankle jerk. Numbness: posterior leg, lateral/plantar foot, small toe.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'L4 radiculopathy presents with:',
 'Ankle reflex loss', 'Weakness of knee extension and diminished patellar reflex', 'Foot drop', 'Ankle dorsiflexion weakness', 'Plantar flexion weakness',
 'B', 'L4 radiculopathy: weakness of knee extension (quadriceps), hip flexion. Diminished patellar reflex. Numbness: anterior thigh, medial leg. Caused by L3-L4 disc (L4 root exits below L4 pedicle).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Cauda equina syndrome is characterized by:',
 'Upper motor neuron signs', 'Saddle anesthesia urinary retention fecal incontinence and bilateral leg weakness', 'Unilateral leg pain only', 'Normal bladder function', 'Spastic paralysis',
 'B', 'Cauda equina syndrome: surgical emergency. Massive disc herniation compressing cauda equina. Saddle anesthesia, urinary retention/incontinence, fecal incontinence, bilateral leg weakness, decreased reflexes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Cauda equina syndrome requires:',
 'Elective surgery', 'Emergency surgical decompression', 'Conservative management', 'Physical therapy only', 'MRI in 6 weeks',
 'B', 'Cauda equina syndrome: neurosurgical emergency. Urgent MRI and emergency decompressive surgery (within 24-48 hours, ideally <24 hours). Delay worsens outcomes. Recovery depends on severity and timing of surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'The imaging study of choice for lumbar disc herniation is:',
 'X-ray', 'MRI', 'CT myelography always', 'Ultrasound', 'Bone scan',
 'B', 'MRI: gold standard for disc herniation. Shows disc, nerve roots, spinal cord, soft tissues. No radiation. CT myelography if MRI contraindicated. X-ray for alignment, spondylolisthesis, but does not show disc.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Most lumbar disc herniations are treated with:',
 'Immediate surgery', 'Conservative management including physical therapy and medications', 'Bed rest for 6 weeks', 'Spinal fusion', 'Traction always',
 'B', 'Conservative treatment: most (90%) disc herniations improve without surgery. NSAIDs, activity modification (avoid prolonged sitting, heavy lifting), physical therapy, epidural steroid injections. Surgery if failed conservative or neurological deficit.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Surgical indications for lumbar disc herniation include:',
 'Any back pain', 'Cauda equina syndrome progressive neurological deficit or failed conservative treatment', 'Mild pain', 'Disc bulge on MRI', 'Age over 50',
 'B', 'Surgery indications: cauda equina (emergency), progressive neurological deficit (motor weakness), intractable pain despite 6-12 weeks conservative treatment. MRI findings alone do not indicate surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Microdiscectomy for lumbar disc herniation:',
 'Removes the entire disc', 'Removes the herniated disc fragment compressing the nerve with minimal disruption', 'Always requires fusion', 'Is open laminectomy', 'Is not effective',
 'B', 'Microdiscectomy: targeted removal of herniated disc fragment. Small incision, operating microscope or tubular retractor. Preserves most of disc and facet. High success rate (~85-90%). Same-day or overnight.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Lumbar spinal stenosis is caused by:',
 'Disc herniation only', 'Degenerative narrowing of the spinal canal from disc bulging facet hypertrophy and ligamentum flavum thickening', 'Tumor always', 'Infection', 'Congenital only',
 'B', 'Lumbar stenosis: degenerative. Disc bulge, facet arthropathy, ligamentum flavum hypertrophy narrow canal and foramina. Congenital narrowing can predispose. Compression of neural elements.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Classic symptom of lumbar spinal stenosis is:',
 'Constant leg pain', 'Neurogenic claudication (leg pain and weakness with walking relieved by sitting or bending forward)', 'Bladder incontinence', 'Constant back pain', 'Saddle anesthesia',
 'B', 'Neurogenic claudication: bilateral leg pain, heaviness, weakness with walking or standing. Relief with sitting, bending forward (opens canal). Distinguished from vascular claudication (relief with standing still).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'The "shopping cart sign" in lumbar stenosis refers to:',
 'Need for cane', 'Relief of symptoms when leaning forward (as on shopping cart) which opens the spinal canal', 'Worse with sitting', 'Limping', 'Urinary urgency',
 'B', 'Shopping cart sign: patients lean forward (flexion) for relief - opens spinal canal, reduces stenosis effect. Patients may tolerate biking (flexed) better than walking. Distinguishes from vascular claudication.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Surgical treatment for lumbar spinal stenosis is:',
 'Discectomy only', 'Decompressive laminectomy with or without fusion', 'Disc replacement', 'Epidural abscess drainage', 'Kyphoplasty',
 'B', 'Lumbar stenosis surgery: laminectomy (remove lamina, ligamentum flavum, partial facetectomy) to decompress. Fusion added if instability or deformity. MILD procedure or interspinous spacers are alternatives for some.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Cervical disc herniation most commonly occurs at:',
 'C2-C3', 'C5-C6 and C6-C7', 'C3-C4', 'C7-T1', 'C1-C2',
 'B', 'Cervical disc herniation: C5-C6 and C6-C7 most common. C5-C6 affects C6 root, C6-C7 affects C7 root. Unlike lumbar, cervical nerve exits above pedicle of same number (C6 root exits at C5-C6).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'C6 radiculopathy presents with:',
 'Finger abduction weakness', 'Biceps weakness decreased brachioradialis reflex and numbness of thumb and index finger', 'Triceps weakness', 'Intrinsic hand weakness', 'Shoulder weakness',
 'B', 'C6 radiculopathy: weakness of biceps, wrist extension. Decreased biceps and brachioradialis reflexes. Numbness: lateral forearm, thumb, index finger (C6 dermatome). C5-C6 disc commonly responsible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'C7 radiculopathy presents with:',
 'Biceps weakness', 'Triceps weakness decreased triceps reflex and numbness of middle finger', 'Deltoid weakness', 'Grip strength only', 'No reflex changes',
 'B', 'C7 radiculopathy: weakness of triceps, wrist flexion, finger extension. Decreased triceps reflex. Numbness: middle finger, posterior forearm. C6-C7 disc commonly responsible. Most common cervical radiculopathy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Cervical myelopathy (spinal cord compression) presents with:',
 'Lower motor neuron signs only', 'Upper motor neuron signs including hyperreflexia gait disturbance and hand clumsiness', 'Radicular pain only', 'No neurological signs', 'Hyporeflexia',
 'B', 'Cervical myelopathy: cord compression. UMN signs: hyperreflexia, spasticity, clonus, Babinski, Hoffman sign. Gait disturbance (spastic gait), hand clumsiness (fine motor), bowel/bladder dysfunction late.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Hoffman sign suggests:',
 'L5 radiculopathy', 'Cervical myelopathy (upper motor neuron lesion)', 'Normal finding', 'Peripheral neuropathy', 'Lumbar stenosis',
 'B', 'Hoffman sign: flick middle finger, observe thumb/index flexion. Positive suggests cervical cord pathology (UMN). Analogous to Babinski for upper limb. Check with hyperreflexia, clonus for myelopathy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Surgical approaches for cervical disc disease include:',
 'Only posterior approach', 'Anterior cervical discectomy and fusion (ACDF) or posterior laminectomy/laminoplasty', 'Only discectomy without fusion', 'No surgical options', 'Thoracotomy',
 'B', 'Cervical spine surgery: ACDF (remove disc, fuse) for radiculopathy or 1-2 level myelopathy. Posterior (laminectomy, laminoplasty) for multilevel myelopathy, posterior compression. Disc replacement option for some.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Spondylolisthesis is:',
 'Vertebral body fracture', 'Forward displacement of one vertebra relative to the one below', 'Disc herniation', 'Spinal stenosis', 'Vertebral infection',
 'B', 'Spondylolisthesis: anterior slippage of vertebra on inferior one. Types: isthmic (pars defect - spondylolysis), degenerative (facet arthropathy), traumatic, pathologic. L4-L5 and L5-S1 most common.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Spondylolysis is:',
 'Vertebral slippage', 'A defect in the pars interarticularis often from stress fracture', 'Disc degeneration', 'Spinal infection', 'Vertebral tumor',
 'B', 'Spondylolysis: pars interarticularis defect. Often stress fracture in young athletes (gymnasts, football). L5 most common. May lead to spondylolisthesis. Diagnosed on oblique X-ray ("Scotty dog" collar) or CT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Spinal cord injury at C5 level would result in:',
 'Complete quadriplegia with no arm function', 'Quadriplegia with preserved shoulder and elbow flexion but no wrist or hand function', 'Normal arm function', 'Paraplegia only', 'Only sensory loss',
 'B', 'C5 complete injury: paralysis below C5. Preserved: shoulder abduction/flexion (deltoid C5), elbow flexion (biceps C5-C6). Lost: wrist extension, hand function, trunk, legs. Diaphragm preserved (C3-C5).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Central cord syndrome:',
 'Causes complete paralysis', 'Causes greater weakness in upper extremities than lower extremities often after hyperextension injury in elderly', 'Only affects lower extremities', 'Has no bladder dysfunction', 'Is always complete',
 'B', 'Central cord syndrome: incomplete SCI. Upper extremity weakness > lower extremity (hands most affected). Hyperextension injury in elderly with stenosis. Variable sensory and bladder dysfunction. Better prognosis than complete.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Anterior cord syndrome:',
 'Preserves motor function', 'Causes motor loss and pain/temperature loss with preserved posterior column function', 'Only affects one side', 'Has best prognosis', 'Is the same as central cord',
 'B', 'Anterior cord syndrome: anterior 2/3 cord affected. Loss of motor, pain, temperature below level. Preserved: proprioception, vibration (posterior columns). Often from anterior spinal artery occlusion or burst fracture.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Brown-Sequard syndrome results from:',
 'Complete cord transection', 'Hemisection of the cord causing ipsilateral motor loss and contralateral pain/temperature loss', 'Central cord injury', 'Anterior cord injury', 'Cauda equina injury',
 'B', 'Brown-Sequard: cord hemisection. Ipsilateral: motor loss, proprioception/vibration loss (posterior columns). Contralateral: pain/temperature loss (spinothalamic - crosses 1-2 levels above entry). Best prognosis of incomplete syndromes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Spinal shock refers to:',
 'Hypovolemic shock', 'Temporary loss of spinal cord function and reflexes below the level of injury', 'Permanent paralysis', 'Hemorrhagic shock', 'Cardiogenic shock',
 'B', 'Spinal shock: transient loss of all neurological function below SCI level including reflexes. Flaccid paralysis, areflexia, atonic bladder. Resolves over days-weeks (bulbocavernosus reflex returns first).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Neurogenic shock after spinal cord injury is characterized by:',
 'Tachycardia and hypertension', 'Hypotension and bradycardia due to loss of sympathetic tone', 'Normal vital signs', 'Fever', 'Tachycardia and hypotension',
 'B', 'Neurogenic shock: high SCI (above T6) disrupts sympathetic outflow. Hypotension (vasodilation), bradycardia (unopposed vagal). Warm extremities (vasodilation). Treat with fluids, vasopressors.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'The most common primary spinal cord tumor is:',
 'Metastasis', 'Ependymoma (intramedullary) and meningioma/schwannoma (extramedullary)', 'Glioblastoma', 'Hemangioblastoma', 'Medulloblastoma',
 'B', 'Spinal cord tumors: intramedullary (within cord) - ependymoma most common, then astrocytoma. Intradural extramedullary - meningioma, schwannoma. Extradural - metastases most common overall.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Metastatic spinal tumors:',
 'Are intramedullary', 'Are usually extradural and can cause epidural spinal cord compression', 'Are always benign', 'Never cause neurological symptoms', 'Are treated with chemotherapy only',
 'B', 'Spinal metastases: extradural, usually vertebral body involvement. Common sources: lung, breast, prostate, kidney, thyroid. Epidural spinal cord compression (ESCC) - oncologic emergency requiring urgent treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Epidural spinal cord compression from metastatic cancer:',
 'Can wait for elective treatment', 'Is an oncologic emergency requiring urgent corticosteroids and radiation or surgery', 'Is always treated with chemotherapy', 'Has no treatment', 'Only causes pain',
 'B', 'ESCC: oncologic emergency. High-dose dexamethasone immediately. MRI whole spine. RT for most. Surgery for: unknown primary (tissue), spinal instability, radioresistant tumor, progression on RT. Timing critical for neurological outcome.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Spinal epidural abscess typically presents with:',
 'Painless paralysis', 'Back pain fever and progressive neurological deficits', 'Headache only', 'No fever', 'Only sensory symptoms',
 'B', 'Spinal epidural abscess: classic triad - back pain, fever, neurological deficit (progresses rapidly). Risk factors: IVDU, diabetes, immunocompromised, recent spinal procedure. MRI urgent. Surgical drainage + antibiotics.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of spinal epidural abscess includes:',
 'Antibiotics alone always', 'Surgical drainage and prolonged intravenous antibiotics', 'Observation', 'Oral antibiotics only', 'Steroids only',
 'B', 'Spinal epidural abscess: surgical emergency in most cases. Decompressive laminectomy, abscess drainage. IV antibiotics 4-6 weeks. Non-operative: selected cases without significant deficit, small abscess, high surgical risk.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Vertebral osteomyelitis (spondylodiscitis):',
 'Never affects the disc', 'Typically involves adjacent vertebral endplates and intervening disc', 'Is always surgical', 'Is caused by fungi only', 'Has no imaging findings',
 'B', 'Spondylodiscitis: infection of disc space and adjacent vertebrae. Usually hematogenous. Most common organism: S. aureus. MRI: T1 low, T2 high, enhancement. Treatment: prolonged IV antibiotics, surgery if instability or abscess.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Osteoporotic vertebral compression fractures:',
 'Always require surgery', 'Often can be treated conservatively or with vertebroplasty/kyphoplasty', 'Never cause pain', 'Only occur in young patients', 'Cause paraplegia',
 'B', 'Vertebral compression fractures: common in osteoporosis. Usually stable, conservative treatment (bracing, analgesia). Vertebroplasty/kyphoplasty: cement injection for persistent pain. Surgery for instability, neurological deficit.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Syringomyelia is:',
 'A tumor', 'A fluid-filled cavity within the spinal cord often associated with Chiari malformation', 'A disc herniation', 'An abscess', 'A fracture',
 'B', 'Syringomyelia: cystic cavity (syrinx) in spinal cord. Causes: Chiari I malformation (most common), trauma, tumor, tethered cord. Symptoms: cape-like sensory loss (pain/temp), weakness, scoliosis. Treatment: address underlying cause.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000037-0000-0000-0000-000000000037', 'a0000004-0000-0000-0000-000000000004',
 'Chiari I malformation is defined as:',
 'Brainstem herniation', 'Cerebellar tonsillar herniation greater than 5 mm below foramen magnum', 'Myelomeningocele', 'Spina bifida', 'Disc herniation',
 'B', 'Chiari I: cerebellar tonsils >5 mm below foramen magnum. May be asymptomatic or cause headache (Valsalva-related), syringomyelia, brainstem symptoms. Treatment: posterior fossa decompression if symptomatic.', 'hard', 'knowledge');
