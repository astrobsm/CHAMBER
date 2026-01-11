-- ============================================================================
-- SURGERY 3 CME ARTICLE 23: Neurosurgery Basics
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000089-0000-0000-0000-000000000089', 'a0000003-0000-0000-0000-000000000003', 'Neurosurgery Basics', 'Head injury, intracranial hemorrhage and raised ICP')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000323-0000-0000-0000-000000000023',
    'c0000089-0000-0000-0000-000000000089',
    'a0000003-0000-0000-0000-000000000003',
    'Neurosurgery Basics: Head Injury and Raised Intracranial Pressure',
    'TBI Classification, Intracranial Hemorrhage and ICP Management',
    'This article covers traumatic brain injury classification (GCS), types of intracranial hemorrhage (epidural, subdural, subarachnoid, intracerebral), skull fractures, raised intracranial pressure management, herniation syndromes, and indications for surgical intervention.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000323-0001-0000-0000-000000000001', 'd0000323-0000-0000-0000-000000000023', 1,
'The Glasgow Coma Scale (GCS) assesses:',
'Only pupil reaction', 'Eye opening, verbal response, and motor response', 'Blood pressure and heart rate', 'Only motor function', NULL,
'B', 'GCS components: Eye opening (4-spontaneous, 3-to voice, 2-to pain, 1-none), Verbal response (5-oriented, 4-confused, 3-inappropriate words, 2-incomprehensible sounds, 1-none), Motor response (6-obeys commands, 5-localizes pain, 4-withdraws, 3-abnormal flexion, 2-extension, 1-none). Score range 3-15. Severe TBI: GCS ≤8, Moderate: 9-12, Mild: 13-15. GCS 8 or less typically requires intubation for airway protection.', 'easy'),

('e0000323-0002-0000-0000-000000000002', 'd0000323-0000-0000-0000-000000000023', 2,
'An epidural hematoma is characterized by:',
'Crescent-shaped collection between dura and brain', 'Biconvex (lens-shaped) collection between skull and dura, often from middle meningeal artery injury', 'Blood in the subarachnoid space', 'Intracerebral bleeding', NULL,
'B', 'Epidural hematoma: biconvex (lens-shaped) collection between skull and dura, usually from middle meningeal artery tear (temporal bone fracture). Classic presentation: loss of consciousness, lucid interval, then deterioration. Does not cross suture lines (dura attached at sutures). Surgical emergency - craniotomy for evacuation. Subdural is crescent-shaped, crosses sutures, from bridging vein tear.', 'easy'),

('e0000323-0003-0000-0000-000000000003', 'd0000323-0000-0000-0000-000000000023', 3,
'A subdural hematoma is:',
'Located between the skull and dura mater', 'Located between the dura mater and arachnoid, from torn bridging veins', 'Always arterial in origin', 'Never seen on CT scan', NULL,
'B', 'Subdural hematoma: blood collection between dura and arachnoid from torn bridging veins. Crescent-shaped on CT, crosses suture lines. Acute (hyperdense, <3 days), subacute (isodense, 3 days-3 weeks), chronic (hypodense, >3 weeks). Risk factors: elderly, alcoholics, anticoagulation, brain atrophy. Chronic subdural can present insidiously. Treatment: surgical evacuation if significant mass effect or neurological deficit.', 'easy'),

('e0000323-0004-0000-0000-000000000004', 'd0000323-0000-0000-0000-000000000023', 4,
'The Cushing triad indicates raised intracranial pressure and consists of:',
'Fever, tachycardia, and hypotension', 'Hypertension, bradycardia, and irregular respirations', 'Hypotension, tachycardia, and hypoventilation', 'Normal blood pressure with normal heart rate', NULL,
'B', 'Cushing triad (Cushing response/reflex): (1) Hypertension (systolic), (2) Bradycardia, (3) Irregular respirations (Cheyne-Stokes, ataxic). Indicates severely elevated ICP and impending brainstem herniation. The hypertension is a reflex to maintain cerebral perfusion against elevated ICP. This is a late and ominous sign. Immediate intervention required: hyperventilation, mannitol/hypertonic saline, surgical decompression.', 'easy'),

('e0000323-0005-0000-0000-000000000005', 'd0000323-0000-0000-0000-000000000023', 5,
'Uncal herniation presents with:',
'Bilateral pinpoint pupils', 'Ipsilateral pupil dilation (CN III compression), contralateral hemiparesis', 'Upward gaze palsy', 'Bilateral leg weakness only', NULL,
'B', 'Uncal herniation: temporal lobe uncus herniates through tentorial notch, compressing CN III → ipsilateral pupil dilation (first sign, parasympathetic fibers on outside of nerve), then compressing cerebral peduncle → contralateral hemiparesis. May progress to ipsilateral hemiparesis (Kernohan notch phenomenon from contralateral peduncle compression against tentorial edge). Indicates severe mass effect requiring urgent intervention.', 'medium'),

('e0000323-0006-0000-0000-000000000006', 'd0000323-0000-0000-0000-000000000023', 6,
'The cerebral perfusion pressure (CPP) is calculated as:',
'Mean Arterial Pressure + Intracranial Pressure', 'Mean Arterial Pressure - Intracranial Pressure', 'Systolic Blood Pressure - Diastolic Blood Pressure', 'Heart Rate x Stroke Volume', NULL,
'B', 'CPP = MAP - ICP. Normal CPP should be maintained >60-70 mmHg (some guidelines say >50-60). If ICP rises, MAP must increase to maintain CPP. Alternatively, lowering ICP maintains CPP. In TBI management, goal is to optimize CPP while avoiding excessive ICP. CPP too low = ischemia; CPP too high = edema/hemorrhage. ICP monitoring indicated for severe TBI (GCS ≤8 with abnormal CT).', 'medium'),

('e0000323-0007-0000-0000-000000000007', 'd0000323-0000-0000-0000-000000000023', 7,
'Initial medical management of raised ICP includes:',
'Aggressive fluid restriction causing hypotension', 'Head elevation, sedation, osmotic therapy (mannitol or hypertonic saline), controlled ventilation', 'Immediate lumbar puncture', 'Vasodilators', NULL,
'B', 'ICP management: (1) Head of bed 30° elevation, midline head position; (2) Adequate sedation and analgesia; (3) Avoid hyperthermia, seizures, hyponatremia; (4) Osmotic therapy - mannitol 20% (0.25-1 g/kg) or hypertonic saline 3% (target Na 145-155); (5) Controlled ventilation targeting PaCO2 35-40 (hyperventilation to 30-35 only for acute herniation); (6) Maintain euvolemia, avoid hypotension. Decompressive craniectomy for refractory cases.', 'medium'),

('e0000323-0008-0000-0000-000000000008', 'd0000323-0000-0000-0000-000000000023', 8,
'A basilar skull fracture is suspected when there is:',
'Only headache without other findings', 'Battle sign (mastoid ecchymosis), raccoon eyes (periorbital ecchymosis), CSF rhinorrhea/otorrhea, hemotympanum', 'Fever and neck stiffness', 'Elevated blood pressure only', NULL,
'B', 'Basilar skull fracture signs: Battle sign (mastoid ecchymosis - posterior fossa), raccoon eyes/periorbital ecchymosis (anterior fossa), CSF rhinorrhea (anterior fossa through cribriform plate) or otorrhea (temporal bone), hemotympanum. These signs may take hours to develop. Avoid nasogastric tube (use orogastric) if suspected. CSF leak usually resolves spontaneously; prophylactic antibiotics controversial.', 'easy'),

('e0000323-0009-0000-0000-000000000009', 'd0000323-0000-0000-0000-000000000023', 9,
'Subarachnoid hemorrhage from ruptured aneurysm typically presents with:',
'Gradual onset mild headache', 'Sudden severe "thunderclap" headache, often described as the worst headache of life', 'Painless visual loss', 'Chronic memory problems', NULL,
'B', 'Aneurysmal SAH presents with sudden severe headache ("worst headache of my life"), often with neck stiffness, photophobia, nausea/vomiting, altered consciousness, focal deficits. May have sentinel headache days before major bleed. Diagnosis: CT head (sensitive early), LP if CT negative (xanthochromia). Complications: rebleeding (highest risk early), vasospasm (days 4-14), hydrocephalus. Management: secure aneurysm (clipping or coiling), nimodipine for vasospasm prophylaxis.', 'easy'),

('e0000323-0010-0000-0000-000000000010', 'd0000323-0000-0000-0000-000000000023', 10,
'Indications for craniotomy in traumatic brain injury include:',
'All patients with any head injury', 'Epidural hematoma with mass effect, significant subdural hematoma, depressed skull fracture, or refractory elevated ICP', 'Mild concussion', 'Only if GCS is 15', NULL,
'B', 'Surgical indications in TBI: (1) Epidural hematoma >30 mL or with mass effect; (2) Acute subdural hematoma >10mm thickness or >5mm midline shift with neurological deficit/GCS drop; (3) Depressed skull fracture greater than skull thickness or open/contaminated; (4) Posterior fossa mass lesions; (5) Decompressive craniectomy for refractory intracranial hypertension. Timing is critical for epidural hematoma.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 23 (Neurosurgery Basics) with 10 self-assessment questions inserted' as status;
