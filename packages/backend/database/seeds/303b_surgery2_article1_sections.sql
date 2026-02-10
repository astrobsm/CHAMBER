-- Surgery 2 Article 1: Acute Abdomen - Sections (corrected)

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000001-0000-0000-0000-000000000001'::uuid, 'introduction', 1, 'Introduction to Acute Abdomen', 
'The acute abdomen represents one of the most challenging presentations in emergency surgery. It describes a syndrome characterized by abdominal pain of sudden onset requiring urgent evaluation and often surgical intervention. The term encompasses a wide spectrum of pathologies ranging from benign self-limiting conditions to life-threatening emergencies.

Understanding the acute abdomen requires a systematic approach integrating clinical history, physical examination, and appropriate investigations. The goal is to identify patients requiring emergency surgery while avoiding unnecessary operations in those who can be managed conservatively.

**Definition and Importance**
Acute abdomen refers to sudden, severe abdominal pain that develops over hours to days, often accompanied by systemic signs suggesting intra-abdominal pathology. It is one of the most common reasons for emergency department visits and surgical consultations worldwide.

**Epidemiology**
- Accounts for 5-10% of all emergency department visits
- Approximately 40% of patients with acute abdominal pain require surgical intervention
- Common causes vary by age, gender, and geographical location
- In developing countries, intestinal obstruction and typhoid perforation are more common
- In developed nations, appendicitis and biliary disease predominate'),

('d2000001-0000-0000-0000-000000000001'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Define acute abdomen and understand its clinical significance
2. Differentiate between visceral, somatic, and referred pain
3. Conduct a systematic history and physical examination for acute abdominal pain
4. Apply the SOCRATES mnemonic for comprehensive pain assessment
5. Recognize key clinical signs including Murphy sign, Rovsing sign, and psoas sign
6. Identify red flags requiring emergency surgical intervention
7. Select appropriate investigations for different presentations
8. Understand the role of CT scanning as the gold standard investigation
9. Differentiate surgical from medical causes of acute abdomen
10. Apply appropriate resuscitation and management principles'),

('d2000001-0000-0000-0000-000000000001'::uuid, 'content', 3, 'Clinical Presentation and History Taking',
'A thorough history is the cornerstone of evaluating acute abdomen. The character, location, and evolution of pain provide crucial diagnostic clues.

**Pain Characteristics**
1. **Visceral Pain**: Dull, poorly localized, midline pain arising from stretching of hollow viscus or organ capsule
   - Foregut structures (stomach, duodenum, liver, biliary tree): Epigastric pain
   - Midgut structures (small bowel, appendix, ascending colon): Periumbilical pain
   - Hindgut structures (descending colon, rectum): Suprapubic/lower abdominal pain

2. **Somatic (Parietal) Pain**: Sharp, well-localized pain from peritoneal irritation
   - Indicates progression to peritonitis
   - Localizes to the quadrant overlying the affected organ

3. **Referred Pain**: Pain perceived at a site distant from the pathology
   - Diaphragmatic irritation: Shoulder tip pain (C3-C5 dermatome)
   - Biliary colic: Right scapular pain
   - Renal colic: Groin/testicular pain

**SOCRATES Mnemonic for Pain Assessment**
- **S**ite: Where is the pain?
- **O**nset: When did it start? Sudden or gradual?
- **C**haracter: What does it feel like?
- **R**adiation: Does it spread anywhere?
- **A**ssociations: Any other symptoms?
- **T**ime course: Getting better or worse?
- **E**xacerbating/relieving factors
- **S**everity: Scale of 1-10'),

('d2000001-0000-0000-0000-000000000001'::uuid, 'content', 4, 'Physical Examination',
'Systematic examination is essential and should follow a structured approach.

**General Inspection**
- Vital signs: Tachycardia, hypotension, fever, tachypnea
- Position: Patients with peritonitis lie still; those with colic are restless
- Facial expression and pallor
- Signs of dehydration and jaundice

**Abdominal Examination**
1. **Inspection**: Distension, visible peristalsis, scars, hernial orifices
2. **Palpation**: Start away from maximal pain; assess tenderness, guarding, rigidity, masses
3. **Percussion**: Tympany (gas), dullness (fluid/mass), loss of liver dullness (pneumoperitoneum)
4. **Auscultation**: Hyperactive/absent bowel sounds, tinkling sounds

**Key Clinical Signs**
- **Rebound tenderness**: Worsening pain on sudden release of pressure (peritonitis)
- **Guarding**: Voluntary muscle contraction to protect tender area
- **Rigidity**: Involuntary board-like abdominal wall (generalized peritonitis)
- **Rovsing sign**: Pain in RIF when pressing LIF (appendicitis)
- **Murphy sign**: Inspiratory arrest during RUQ palpation (cholecystitis)
- **Obturator sign**: Pain on internal rotation of flexed right hip (pelvic appendicitis)
- **Psoas sign**: Pain on hip extension (retrocecal appendicitis)'),

('d2000001-0000-0000-0000-000000000001'::uuid, 'content', 5, 'Differential Diagnosis and Investigations',
'**Differential Diagnosis by Location**

**Right Upper Quadrant**: Cholecystitis, biliary colic, hepatitis, hepatic abscess, pneumonia
**Epigastric**: Peptic ulcer/perforation, pancreatitis, gastritis, MI, aortic dissection
**Right Lower Quadrant**: Appendicitis, mesenteric adenitis, ectopic pregnancy, ovarian torsion
**Left Lower Quadrant**: Diverticulitis, sigmoid volvulus, gynecological pathology

**Laboratory Investigations**
- Full Blood Count: Leukocytosis with left shift
- Serum Electrolytes and Renal Function
- Liver Function Tests
- Serum Amylase/Lipase (>3x ULN diagnostic for pancreatitis)
- Urinalysis and pregnancy test (mandatory in females)
- Arterial Blood Gas and lactate

**Imaging Studies**
- Plain X-ray: Free air, air-fluid levels, dilated loops
- Chest X-ray (erect): Pneumoperitoneum
- Abdominal Ultrasound: First-line for biliary pathology
- CT Abdomen/Pelvis: Gold standard for most conditions
- CT Angiography: Mesenteric ischemia, aortic pathology'),

('d2000001-0000-0000-0000-000000000001'::uuid, 'content', 6, 'Management Principles',
'**Initial Resuscitation (ABCDE)**
- Airway and Breathing: Supplemental oxygen
- Circulation: Large-bore IV access, fluid resuscitation, urinary catheter
- Disability: Neurological assessment
- Exposure: Full examination

**Supportive Measures**
- Nil per oral, NG tube if vomiting/obstruction
- Analgesia (adequate pain relief is ethical and does NOT mask clinical signs)
- Antiemetics and PPI
- VTE prophylaxis

**Antibiotic Therapy**
- Community-acquired: Ceftriaxone + Metronidazole
- Healthcare-associated: Piperacillin-Tazobactam
- Severe sepsis: Meropenem + Vancomycin

**Surgical Decision-Making**
**Immediate Surgery**: Generalized peritonitis, perforated viscus, ruptured ectopic, ruptured AAA, mesenteric ischemia, strangulated hernia
**Urgent Surgery (24h)**: Appendicitis, cholecystitis, unresolved obstruction
**Conservative**: Uncomplicated diverticulitis, mild pancreatitis, gastroenteritis'),

('d2000001-0000-0000-0000-000000000001'::uuid, 'key_points', 7, 'Key Points',
'1. **Definition**: Acute abdomen is sudden severe abdominal pain requiring urgent evaluation
2. **Pain Types**: Visceral (dull, midline), Somatic (sharp, localized), Referred (distant site)
3. **Red Flags**: Board-like rigidity, absent bowel sounds, signs of shock, peritonitis
4. **Investigations**: CT scan is gold standard; always do pregnancy test in females
5. **Management**: ABCDE resuscitation, analgesia does NOT mask signs, timely surgery
6. **Surgical Indications**: Perforated viscus, peritonitis, ischemia, strangulated hernia
7. **Medical Acute Abdomen**: Consider DKA, porphyria, sickle cell to avoid unnecessary surgery
8. **Laparoscopy**: Preferred for diagnostic uncertainty and many therapeutic interventions');
