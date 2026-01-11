-- ============================================================================
-- SURGERY 3 CME ARTICLE 87: Neurosurgery Emergencies
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000153-0000-0000-0000-000000000153', 'a0000003-0000-0000-0000-000000000003', 'Neurosurgery Emergencies', 'Urgent neurosurgical conditions and management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000387-0000-0000-0000-000000000087',
    'c0000153-0000-0000-0000-000000000153',
    'a0000003-0000-0000-0000-000000000003',
    'Neurosurgical Emergencies: Recognition and Management',
    'Critical Concepts for the General Surgeon',
    'This article covers epidural and subdural hematomas, traumatic brain injury, raised intracranial pressure, herniation syndromes, subarachnoid hemorrhage, spinal cord injury, and indications for emergent neurosurgical intervention.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000387-0001-0000-0000-000000000001', 'd0000387-0000-0000-0000-000000000087', 1,
'An epidural hematoma classically presents with:',
'Gradual onset over months', 'A lucid interval following head trauma, then deterioration, and appears as a lens-shaped (biconvex) hyperdensity on CT limited by cranial sutures', 'Always bilateral presentation', 'No association with skull fracture',
'B', 'EPIDURAL HEMATOMA (EDH): arterial bleeding (usually middle meningeal artery) between skull and dura. CLASSIC PRESENTATION: trauma, brief LOC, LUCID INTERVAL (patient awakens/improves), then DETERIORATION (expanding hematoma). Associated with temporal skull FRACTURE (85%). CT: BICONVEX (lens-shaped) hyperdensity, limited by SUTURE lines (dura attached). Does NOT cross sutures but CAN cross midline. Location: temporal > frontal. TREATMENT: emergent craniotomy/craniectomy and evacuation if >30mL, >15mm thick, or neurological deficit. Can be rapidly fatal if not treated.', 'medium'),

('e0000387-0002-0000-0000-000000000002', 'd0000387-0000-0000-0000-000000000087', 2,
'A subdural hematoma differs from an epidural in that:',
'It is arterial bleeding', 'It is venous bleeding from bridging veins, crosses suture lines, and appears crescent-shaped on CT conforming to brain surface', 'It never causes mass effect', 'It is always traumatic',
'B', 'SUBDURAL HEMATOMA (SDH): venous bleeding (BRIDGING VEINS) between dura and arachnoid. RISK FACTORS: elderly, brain atrophy, anticoagulation, alcoholism, minor trauma. CT: CRESCENT-shaped, conforms to brain surface, CROSSES SUTURE LINES (does not cross midline/falx). Types: acute (<3 days - hyperdense), subacute (3 days-3 weeks - isodense), chronic (>3 weeks - hypodense). ACUTE SDH: high mortality, requires craniotomy if significant. CHRONIC SDH: insidious symptoms (headache, confusion, weakness), treated with burr holes and drainage. Different mechanism from EDH.', 'medium'),

('e0000387-0003-0000-0000-000000000003', 'd0000387-0000-0000-0000-000000000087', 3,
'The Cushing triad (reflex) indicating severely elevated intracranial pressure consists of:',
'Fever, tachycardia, hypotension', 'Hypertension, bradycardia, and irregular respirations', 'Hypotension, tachycardia, fever', 'Normal vital signs',
'B', 'CUSHING TRIAD (Cushing reflex): sign of SEVERELY elevated ICP with impending herniation. Components: (1) HYPERTENSION (systemic response to maintain cerebral perfusion); (2) BRADYCARDIA (vagal response to hypertension via baroreceptor reflex); (3) IRREGULAR RESPIRATIONS (brainstem compression). This is a LATE sign - indicates brainstem compression, imminent herniation, and potential death. Requires emergent intervention: hyperventilation (temporary), mannitol/hypertonic saline, surgical decompression. Do not wait for Cushing triad - treat elevated ICP earlier.', 'easy'),

('e0000387-0004-0000-0000-000000000004', 'd0000387-0000-0000-0000-000000000087', 4,
'Uncal herniation characteristically produces:',
'Bilateral pinpoint pupils', 'Ipsilateral pupil dilation (CN III compression), contralateral hemiparesis, and decreased consciousness', 'Bilateral mydriasis immediately', 'Normal pupillary response',
'B', 'UNCAL HERNIATION (transtentorial): medial temporal lobe (uncus) herniates through tentorial incisura. CLASSIC SIGNS: (1) IPSILATERAL PUPIL DILATION (CN III compressed against tentorial edge - parasympathetics on outside of nerve affected first); (2) CONTRALATERAL HEMIPARESIS (cerebral peduncle compression); (3) Decreased consciousness (reticular activating system). Can have ipsilateral hemiparesis if contralateral peduncle compressed against Kernohan notch. TREATMENT: osmotic therapy, hyperventilation, surgical decompression (remove cause). Other herniations: subfalcine, central, tonsillar.', 'medium'),

('e0000387-0005-0000-0000-000000000005', 'd0000387-0000-0000-0000-000000000087', 5,
'The Glasgow Coma Scale (GCS) is composed of:',
'Only motor response', 'Eye opening (1-4), verbal response (1-5), and motor response (1-6), with scores ranging from 3-15', 'Two components only', 'Blood pressure and pulse',
'B', 'GLASGOW COMA SCALE: standardized assessment of consciousness. THREE COMPONENTS: (1) EYE OPENING (4=spontaneous, 3=to voice, 2=to pain, 1=none); (2) VERBAL (5=oriented, 4=confused, 3=inappropriate words, 2=incomprehensible sounds, 1=none); (3) MOTOR (6=obeys commands, 5=localizes pain, 4=withdraws from pain, 3=abnormal flexion/decorticate, 2=extension/decerebrate, 1=none). RANGE: 3-15. Severity: Mild TBI (13-15), Moderate (9-12), Severe (3-8). GCS <=8 typically requires intubation for airway protection. Motor score is most predictive of outcome.', 'easy'),

('e0000387-0006-0000-0000-000000000006', 'd0000387-0000-0000-0000-000000000087', 6,
'Subarachnoid hemorrhage (SAH) from aneurysm rupture classically presents with:',
'Gradual onset mild headache over weeks', 'Sudden onset severe headache ("worst headache of my life" or thunderclap headache), often with neck stiffness, nausea, and altered consciousness', 'Painless vision loss', 'Chronic fatigue',
'B', 'SUBARACHNOID HEMORRHAGE (SAH): bleeding into subarachnoid space. CAUSES: trauma (most common), aneurysm rupture (most common non-traumatic), AVM. ANEURYSMAL SAH PRESENTATION: sudden, severe "THUNDERCLAP" or "WORST HEADACHE OF LIFE", often occipital, may have sentinel headache (warning leak), neck stiffness (meningismus), photophobia, nausea, decreased consciousness, focal deficits. DIAGNOSIS: CT head (sensitivity 95%+ early), LP if CT negative (xanthochromia). CTA/DSA for aneurysm. TREATMENT: secure aneurysm (clip or coil), prevent vasospasm (nimodipine), manage complications.', 'medium'),

('e0000387-0007-0000-0000-000000000007', 'd0000387-0000-0000-0000-000000000087', 7,
'Spinal cord injury with neurogenic shock presents with:',
'Hypertension and tachycardia', 'Hypotension and bradycardia due to loss of sympathetic tone below the level of injury', 'Normal blood pressure', 'Fever and hypotension',
'B', 'NEUROGENIC SHOCK: hemodynamic instability due to spinal cord injury (usually cervical or upper thoracic). MECHANISM: loss of SYMPATHETIC TONE below injury level causes vasodilation (hypotension) and loss of cardiac sympathetic stimulation (bradycardia). PRESENTATION: HYPOTENSION + BRADYCARDIA (differs from hemorrhagic shock which has tachycardia). Warm, dry skin (vasodilation). TREATMENT: fluid resuscitation first, then vasopressors (phenylephrine or norepinephrine) to maintain MAP >85-90 for spinal cord perfusion. Different from SPINAL SHOCK (transient loss of reflexes below injury).', 'medium'),

('e0000387-0008-0000-0000-000000000008', 'd0000387-0000-0000-0000-000000000087', 8,
'Emergency burr hole decompression for epidural hematoma:',
'Is never indicated', 'May be life-saving in a deteriorating patient when neurosurgery is unavailable; placed over the temporal region on the side of the dilated pupil', 'Should be bilateral', 'Requires general anesthesia only',
'B', 'EMERGENCY BURR HOLES: may be LIFE-SAVING in rapidly deteriorating patient with epidural hematoma when neurosurgical backup unavailable. INDICATION: unilateral pupil dilation, declining GCS, no neurosurgeon available, CT showing EDH. LOCATION: temporal region (pterion) on side of DILATED PUPIL (ipsilateral to hematoma). Technique: incision above zygoma, burr hole through temporal bone, evacuate clot. This is a TEMPORIZING measure - patient needs definitive craniotomy. Also consider in settings with prolonged transfer times. Should only be done by trained personnel.', 'hard'),

('e0000387-0009-0000-0000-000000000009', 'd0000387-0000-0000-0000-000000000087', 9,
'Medical management of raised intracranial pressure includes:',
'Placing patient flat', 'Head elevation to 30 degrees, mannitol or hypertonic saline, sedation, controlled hyperventilation (temporary), and treating fever', 'Aggressive fluid restriction causing dehydration', 'No interventions available',
'B', 'MEDICAL MANAGEMENT of raised ICP: (1) HEAD ELEVATION 30 degrees (improves venous drainage); (2) Maintain head midline (avoid jugular compression); (3) OSMOTIC THERAPY - mannitol (0.5-1 g/kg) or hypertonic saline (draws water from brain); (4) SEDATION (reduces metabolic demand); (5) Controlled HYPERVENTILATION - temporary measure (PaCO2 30-35, causes vasoconstriction, rapid but short-term effect); (6) Treat FEVER (increases metabolic demand); (7) Adequate ANALGESIA; (8) Avoid hypotension (maintain CPP). Surgical: EVD for CSF drainage, decompressive craniectomy.', 'medium'),

('e0000387-0010-0000-0000-000000000010', 'd0000387-0000-0000-0000-000000000087', 10,
'A depressed skull fracture requires surgical elevation when:',
'All depressed fractures need surgery', 'There is depression greater than the thickness of the skull, open fracture, neurological deficit, significant cosmetic deformity, or underlying hematoma', 'Only if patient is unconscious', 'Surgery is never indicated',
'B', 'DEPRESSED SKULL FRACTURE surgical indications: (1) Depression greater than thickness of skull (typically >1 cm or full thickness); (2) OPEN (compound) fracture - dura likely torn, infection risk; (3) Neurological DEFICIT from underlying injury; (4) Significant COSMETIC deformity (especially frontal); (5) UNDERLYING HEMATOMA requiring evacuation; (6) Evidence of dural tear with CSF leak; (7) Contamination. TREATMENT: debridement, elevation of fragments, dural repair if needed. Closed, minimally depressed fractures over non-eloquent areas may be managed conservatively with observation.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 87 (Neurosurgery Emergencies) with 10 self-assessment questions inserted' as status;
