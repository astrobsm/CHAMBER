-- Surgery 4 MCQ Question Bank - Batch 11
-- Section B: Trauma & Emergency Surgery - Spinal Injuries
-- 40 Questions

-- Topic: Spinal Injuries
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000011-0000-0000-0000-000000000011', 'Spinal Injuries', 'a0000004-0000-0000-0000-000000000004', 'Spinal cord and vertebral column injuries assessment and management', 11, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'The most common level of cervical spine injury is:',
 'C1-C2', 'C3-C4', 'C5-C6', 'C7-T1', 'Thoracic spine',
 'C', 'C5-C6 is the most common level for cervical spine injury due to greatest mobility and mechanical stress. C2 is second most common (hangman fracture, odontoid fracture).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'SCIWORA (Spinal Cord Injury Without Radiographic Abnormality) is most common in:',
 'Adults', 'Elderly', 'Children under 8 years', 'Adolescents', 'Never occurs',
 'C', 'SCIWORA occurs predominantly in children due to ligamentous laxity and horizontally oriented facets. Cord injured by transient distraction/compression without bony injury visible on X-ray/CT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Spinal shock is characterized by:',
 'Hypotension due to blood loss', 'Flaccid areflexia below injury level', 'Hyperreflexia', 'Normal reflexes', 'Fever',
 'B', 'Spinal shock: transient loss of all spinal reflexes below injury level with flaccidity. May last days to weeks. Resolution marked by return of bulbocavernosus reflex.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Neurogenic shock is caused by:',
 'Hemorrhage', 'Loss of sympathetic tone causing vasodilation', 'Sepsis', 'Adrenal insufficiency', 'Myocardial injury',
 'B', 'Neurogenic shock: loss of sympathetic tone (injuries above T6) causing vasodilation, hypotension, and paradoxical bradycardia. Warm extremities distinguish from hemorrhagic shock.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of neurogenic shock includes:',
 'Blood transfusion only', 'Fluid resuscitation and vasopressors if needed', 'Antibiotics', 'Tourniquet', 'Epinephrine only',
 'B', 'Neurogenic shock treatment: IV fluids for relative hypovolemia, vasopressors (norepinephrine, phenylephrine) if hypotension persists. Avoid over-resuscitation. Atropine for bradycardia.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'The ASIA (American Spinal Injury Association) classification A indicates:',
 'Normal motor and sensory', 'Motor incomplete injury', 'Sensory incomplete injury', 'Complete injury with no motor or sensory function below level', 'Motor complete only',
 'D', 'ASIA A: Complete (no motor/sensory in S4-S5). B: Sensory incomplete. C: Motor incomplete (most muscles <3). D: Motor incomplete (most >3). E: Normal.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Sacral sparing indicates:',
 'Complete spinal cord injury', 'Incomplete injury with preserved S4-S5 function', 'Cauda equina syndrome', 'No clinical significance', 'Normal examination',
 'B', 'Sacral sparing (perianal sensation, rectal tone, toe flexion) indicates incomplete injury with better prognosis. Presence distinguishes ASIA B-D from ASIA A.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Central cord syndrome typically presents with:',
 'Lower extremity weakness greater than upper', 'Upper extremity weakness greater than lower with bladder dysfunction', 'Complete paralysis', 'Pure sensory loss', 'No deficits',
 'B', 'Central cord syndrome: arms weaker than legs, distal > proximal weakness, bladder dysfunction, variable sensory loss. Common in elderly with hyperextension injury and pre-existing stenosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Brown-Sequard syndrome results from:',
 'Complete cord transection', 'Hemisection of the cord', 'Central cord injury', 'Anterior cord injury', 'Posterior cord injury',
 'B', 'Brown-Sequard (cord hemisection): ipsilateral motor loss and proprioception loss, contralateral pain and temperature loss. Usually from penetrating trauma. Best prognosis of incomplete syndromes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Anterior cord syndrome is characterized by:',
 'Preserved motor with sensory loss', 'Loss of motor and pain/temperature with preserved proprioception', 'Pure motor loss', 'Complete loss of all modalities', 'Preserved pain sensation',
 'B', 'Anterior cord syndrome: loss of motor, pain, and temperature (anterior 2/3 of cord) with preserved proprioception and vibration (posterior columns). Worst prognosis of incomplete injuries.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Posterior cord syndrome affects:',
 'Motor function mainly', 'Proprioception and vibration sense', 'Pain and temperature', 'Autonomic function', 'All modalities equally',
 'B', 'Posterior cord syndrome: loss of proprioception and vibration sense with preserved motor, pain, and temperature. Rare. Causes sensory ataxia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Cauda equina syndrome involves injury to:',
 'Spinal cord proper', 'Nerve roots below L1-L2', 'Conus medullaris only', 'Cervical cord', 'Thoracic cord',
 'B', 'Cauda equina: injury to nerve roots below conus (L1-L2). LMN pattern with flaccidity, areflexia, asymmetric deficits, bladder/bowel dysfunction, saddle anesthesia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Conus medullaris syndrome differs from cauda equina by:',
 'More asymmetric findings', 'Sudden onset symmetric findings with early bladder dysfunction', 'Better prognosis', 'LMN signs only', 'No difference',
 'B', 'Conus medullaris: sudden, symmetric deficits, early bladder dysfunction, mixed UMN/LMN findings. Cauda equina: gradual, asymmetric, late bladder involvement, pure LMN.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'The first imaging study for suspected cervical spine injury is:',
 'MRI', 'CT scan of cervical spine', 'Plain X-ray three views only', 'Flexion-extension views', 'Myelography',
 'B', 'CT cervical spine is now first-line imaging (replaced plain X-rays). Superior for bone injury detection. MRI added for suspected cord injury, ligamentous injury, or neurological deficit.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'The Canadian C-Spine Rule can clear the cervical spine if:',
 'Patient has midline tenderness', 'No high-risk factors and able to rotate neck 45 degrees each direction', 'GCS less than 15', 'Age over 65', 'Dangerous mechanism present',
 'B', 'Canadian C-Spine Rule: if no high-risk factors, presence of low-risk factors allowing safe assessment, and able to rotate neck 45 degrees each direction - no imaging needed.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Jefferson fracture is:',
 'Odontoid fracture', 'Burst fracture of C1 atlas', 'Hangman fracture', 'Teardrop fracture', 'Clay shoveler fracture',
 'B', 'Jefferson fracture: burst fracture of C1 ring from axial loading. Usually stable if transverse ligament intact. Unstable if lateral mass displacement exceeds 7mm (Rules of Spence).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Hangman fracture involves:',
 'C1 ring', 'Bilateral C2 pars interarticularis', 'Odontoid process', 'C3 vertebral body', 'Dens fracture',
 'B', 'Hangman fracture: bilateral fractures through C2 pars interarticularis. From hyperextension and axial loading. Usually neurologically intact (canal widened by fracture).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Type II odontoid fracture is:',
 'Fracture through tip of dens', 'Fracture at base of dens (junction with body)', 'Fracture extending into C2 body', 'Fracture of C1', 'No fracture',
 'B', 'Type II: fracture at base of dens (most common, highest non-union rate). Type I: tip avulsion (rare, stable). Type III: extends into C2 body (better union rate).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Atlanto-axial instability is diagnosed when atlantodental interval exceeds:',
 '1 mm', '3 mm in adults (5 mm in children)', '7 mm', '10 mm', 'Any displacement',
 'B', 'Atlantodental interval (ADI) normal: up to 3 mm adults, 5 mm children. >3 mm suggests transverse ligament injury. >5 mm suggests alar ligament injury.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Subaxial cervical spine instability is suggested by:',
 'Normal alignment', 'Anterior subluxation greater than 3.5 mm or angulation greater than 11 degrees', 'Widened disc space', 'Decreased lordosis only', 'Osteophytes',
 'B', 'White and Panjabi criteria: translation >3.5 mm or angulation >11 degrees between adjacent vertebrae indicates instability. Clinical stability scoring system also used.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Facet dislocation is classified as unilateral or bilateral based on:',
 'Degree of subluxation', 'Whether one or both facets jump forward', 'Patient symptoms', 'X-ray only', 'MRI findings',
 'B', 'Unilateral facet dislocation: one facet jumps forward (25% subluxation, rotational deformity). Bilateral: both facets dislocate (>50% subluxation, high cord injury risk).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Teardrop fracture of the cervical spine is associated with:',
 'Stable injury', 'Highly unstable flexion injury with high rate of cord injury', 'Extension injury only', 'Rotation only', 'Minimal risk of cord injury',
 'B', 'Flexion teardrop fracture: highly unstable with high rate of complete cord injury. Triangular fragment from anteroinferior body with posterior ligament disruption and facet dislocation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Clay shoveler fracture is:',
 'C1 fracture', 'Spinous process avulsion fracture C6-T1', 'C2 body fracture', 'Burst fracture', 'Teardrop fracture',
 'B', 'Clay shoveler fracture: avulsion of spinous process (usually C6, C7, or T1) from supraspinous ligament pull. Stable injury from forceful flexion. Named for manual laborers.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Thoracolumbar burst fracture involves:',
 'Posterior elements only', 'Anterior column compression with posterior vertebral body fragment', 'Spinous process only', 'Transverse process only', 'Facet joints only',
 'B', 'Burst fracture: axial load causing vertebral body to explode with retropulsion of posterior body fragment into canal. Involves anterior and middle columns. May need surgery if unstable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Chance fracture is caused by:',
 'Axial compression', 'Flexion-distraction injury', 'Hyperextension', 'Rotation only', 'Direct impact',
 'B', 'Chance fracture: horizontal fracture through vertebral body extending through posterior elements. Flexion-distraction mechanism (lap belt injury). Associated with abdominal visceral injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Thoracolumbar Injury Classification and Severity Score (TLICS) greater than 4 indicates:',
 'Conservative management', 'Surgical management recommended', 'No treatment needed', 'Observation only', 'Physical therapy only',
 'B', 'TLICS scoring: morphology + neurologic status + PLC integrity. Score <4: non-operative. Score 4: either option. Score >4: surgical stabilization recommended.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Current evidence for high-dose methylprednisolone in acute spinal cord injury shows:',
 'Strong recommendation for use', 'No proven benefit and potential harm - not routinely recommended', 'Mandatory use within 24 hours', 'Proven to restore function', 'Only effective if given within 1 hour',
 'B', 'NASCIS studies showed marginal benefit with significant complications. Current guidelines do not recommend routine use of methylprednisolone in acute SCI. Risk of infection, GI bleeding.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Mean arterial pressure target in acute spinal cord injury is:',
 'MAP 60-65 mmHg', 'MAP 85-90 mmHg for 5-7 days', 'MAP greater than 100 mmHg', 'No specific target', 'MAP less than 70 mmHg',
 'B', 'Maintain MAP 85-90 mmHg for 5-7 days to optimize spinal cord perfusion. Avoid hypotension. Use vasopressors if needed. Based on AANS/CNS guidelines.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Autonomic dysreflexia occurs in injuries above:',
 'L1', 'T10', 'T6', 'C5', 'S1',
 'C', 'Autonomic dysreflexia occurs with injuries at or above T6. Triggered by noxious stimulus below lesion (distended bladder common). Causes severe hypertension, bradycardia, headache, sweating.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of autonomic dysreflexia includes:',
 'Ignoring the symptoms', 'Sitting patient up and identifying and removing triggering stimulus', 'Laying patient flat', 'IV fluids only', 'Increasing blood pressure',
 'B', 'Immediate management: sit patient up (orthostatic drop in BP), loosen clothing, identify/remove trigger (usually bladder distension - empty bladder, check for fecal impaction, skin issues).', 'medium', 'application'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Deep vein thrombosis prophylaxis in spinal cord injury should include:',
 'Aspirin only', 'Mechanical and pharmacological prophylaxis', 'No prophylaxis needed', 'Bedrest only', 'Early ambulation only',
 'B', 'High DVT risk in SCI. Prophylaxis: mechanical (compression devices) immediately + pharmacological (LMWH) when safe. Duration at least 12 weeks for complete injury.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Heterotopic ossification in SCI occurs:',
 'Immediately after injury', 'Typically 1-4 months post-injury below the level of lesion', 'Only in cervical injuries', 'Never in SCI', 'After 2 years',
 'B', 'HO develops 1-4 months post-injury in about 20% of SCI. Usually around hip. Presents with swelling, decreased ROM, low-grade fever. Risk factors: complete injury, pressure ulcers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of death in chronic spinal cord injury is:',
 'Trauma', 'Respiratory complications', 'Urinary tract infections', 'Pressure ulcers', 'Suicide',
 'B', 'Respiratory complications (pneumonia, respiratory failure) are leading cause of death in chronic SCI, especially in cervical injuries. Prevention with pulmonary toilet, vaccination important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Bladder management in acute spinal cord injury typically involves:',
 'Condom catheter only', 'Indwelling catheter acutely then transition to intermittent catheterization', 'Suprapubic catheter immediately', 'No catheter needed', 'Valsalva maneuver',
 'B', 'Initial indwelling catheter for monitoring during acute phase. Transition to intermittent catheterization (gold standard) when stable to reduce UTI risk. Goal: low-pressure reservoir with complete emptying.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Spasticity following spinal cord injury is treated with:',
 'No treatment available', 'Physical therapy oral medications intrathecal baclofen or botulinum toxin', 'Surgery only', 'Bed rest only', 'Amputation',
 'B', 'Spasticity management: stretching/PT, oral medications (baclofen, tizanidine, diazepam), intrathecal baclofen pump for severe cases, botulinum toxin for focal spasticity, rarely surgical tendon release.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Pressure ulcer prevention in SCI includes all EXCEPT:',
 'Regular position changes every 2 hours', 'Appropriate wheelchair cushion', 'Skin inspection', 'Prolonged sitting without relief', 'Adequate nutrition',
 'D', 'Pressure ulcer prevention: frequent repositioning, specialized mattresses/cushions, skin inspection, adequate nutrition and hydration, avoid moisture. Prolonged sitting WITHOUT pressure relief causes ulcers.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000011-0000-0000-0000-000000000011', 'a0000004-0000-0000-0000-000000000004',
 'Syringomyelia following spinal cord injury presents with:',
 'Immediate symptoms', 'Progressive pain weakness and sensory loss months to years after injury', 'No symptoms ever', 'Acute improvement', 'Only in cervical injuries',
 'B', 'Post-traumatic syringomyelia: cystic cavity expansion in cord. Presents months to years after injury with ascending motor/sensory loss, pain, increased spasticity. MRI diagnostic. May need shunting.', 'hard', 'knowledge');
