-- Surgery 2 Article 1: Acute Abdomen - Sections and MCQs

-- Sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000001-0000-0000-0000-000000000001'::uuid, 'introduction', 1, 'Introduction to Acute Abdomen', 
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

('d0000001-0000-0000-0000-000000000001'::uuid, 'clinical_presentation', 2, 'Clinical Presentation and History Taking',
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

**Associated Symptoms**
- Nausea and vomiting (timing relative to pain is important)
- Anorexia (classic in appendicitis)
- Bowel habit changes
- Urinary symptoms
- Fever and rigors
- Vaginal discharge or bleeding (in females)

**SOCRATES Mnemonic for Pain Assessment**
- **S**ite: Where is the pain?
- **O**nset: When did it start? Sudden or gradual?
- **C**haracter: What does it feel like?
- **R**adiation: Does it spread anywhere?
- **A**ssociations: Any other symptoms?
- **T**ime course: Getting better or worse?
- **E**xacerbating/relieving factors
- **S**everity: Scale of 1-10'),

('d0000001-0000-0000-0000-000000000001'::uuid, 'examination', 3, 'Physical Examination',
'Systematic examination is essential and should follow a structured approach.

**General Inspection**
- Vital signs: Tachycardia, hypotension, fever, tachypnea
- Position: Patients with peritonitis lie still; those with colic are restless
- Facial expression and pallor
- Signs of dehydration
- Jaundice

**Abdominal Examination**
1. **Inspection**
   - Distension (obstruction, ascites)
   - Visible peristalsis
   - Scars from previous surgery
   - Hernial orifices

2. **Palpation**
   - Start away from the site of maximal pain
   - Assess for tenderness, guarding, rigidity
   - Check for masses and organomegaly
   - Evaluate hernial orifices

3. **Percussion**
   - Tympany (gas-filled loops)
   - Dullness (fluid, mass)
   - Loss of liver dullness (pneumoperitoneum)
   - Shifting dullness (ascites)

4. **Auscultation**
   - Hyperactive bowel sounds (early obstruction)
   - Absent bowel sounds (ileus, late obstruction)
   - Tinkling sounds (mechanical obstruction)

**Key Clinical Signs**
- **Rebound tenderness**: Worsening pain on sudden release of pressure (peritonitis)
- **Guarding**: Voluntary muscle contraction to protect tender area
- **Rigidity**: Involuntary board-like abdominal wall (generalized peritonitis)
- **Rovsing sign**: Pain in RIF when pressing LIF (appendicitis)
- **Murphy sign**: Inspiratory arrest during RUQ palpation (cholecystitis)
- **Obturator sign**: Pain on internal rotation of flexed right hip (pelvic appendicitis)
- **Psoas sign**: Pain on hip extension (retrocecal appendicitis)

**Digital Rectal Examination**
Essential in all cases of acute abdomen:
- Tenderness (pelvic peritonitis)
- Masses
- Blood (mesenteric ischemia, intussusception)
- Prostate assessment in males'),

('d0000001-0000-0000-0000-000000000001'::uuid, 'differential_diagnosis', 4, 'Differential Diagnosis',
'The differential diagnosis of acute abdomen is extensive and can be categorized by etiology and location.

**By Anatomical Location**

**Right Upper Quadrant**
- Acute cholecystitis
- Biliary colic
- Acute hepatitis
- Hepatic abscess
- Right lower lobe pneumonia
- Perforated duodenal ulcer

**Epigastric**
- Peptic ulcer disease/perforation
- Acute pancreatitis
- Acute gastritis
- Myocardial infarction
- Aortic dissection

**Left Upper Quadrant**
- Splenic rupture
- Splenic infarct
- Left lower lobe pneumonia
- Gastric ulcer

**Right Lower Quadrant**
- Acute appendicitis
- Mesenteric adenitis
- Ruptured ectopic pregnancy
- Ovarian torsion
- Ruptured ovarian cyst
- Meckel diverticulitis

**Left Lower Quadrant**
- Acute diverticulitis
- Sigmoid volvulus
- Ruptured ectopic pregnancy
- Ovarian pathology

**Periumbilical**
- Early appendicitis
- Small bowel obstruction
- Gastroenteritis
- Mesenteric ischemia
- Ruptured aortic aneurysm

**Suprapubic**
- Acute urinary retention
- Cystitis
- Pelvic inflammatory disease
- Ectopic pregnancy

**Diffuse Abdominal Pain**
- Generalized peritonitis
- Intestinal obstruction
- Mesenteric ischemia
- Diabetic ketoacidosis
- Acute intermittent porphyria
- Sickle cell crisis

**Non-Surgical Causes (Medical Acute Abdomen)**
- Diabetic ketoacidosis
- Addisonian crisis
- Acute intermittent porphyria
- Lead poisoning
- Herpes zoster
- Tabes dorsalis'),

('d0000001-0000-0000-0000-000000000001'::uuid, 'investigations', 5, 'Investigations',
'Investigations should be targeted based on clinical suspicion but a baseline workup is generally performed.

**Laboratory Investigations**

1. **Full Blood Count**
   - Leukocytosis with left shift (infection, inflammation)
   - Anemia (bleeding, chronic disease)
   - Thrombocytosis (reactive)

2. **Serum Electrolytes and Renal Function**
   - Dehydration assessment
   - Electrolyte imbalances (vomiting, diarrhea)
   - Renal impairment

3. **Liver Function Tests**
   - Elevated in biliary/hepatic pathology
   - Conjugated hyperbilirubinemia (obstruction)
   - Transaminase elevation (hepatocellular injury)

4. **Serum Amylase/Lipase**
   - Elevated in acute pancreatitis (>3x upper limit of normal is diagnostic)
   - Can be elevated in other conditions (perforated ulcer, obstruction)

5. **Urinalysis**
   - Hematuria (urolithiasis)
   - Pyuria (UTI, appendicitis with bladder irritation)
   - Pregnancy test (mandatory in females of reproductive age)

6. **Arterial Blood Gas**
   - Metabolic acidosis (sepsis, ischemia)
   - Lactate elevation (tissue hypoperfusion)

**Imaging Studies**

1. **Plain Abdominal X-ray (Erect and Supine)**
   - Free air under diaphragm (perforation)
   - Air-fluid levels (obstruction)
   - Dilated bowel loops
   - Radio-opaque calculi
   - Soft tissue masses

2. **Chest X-ray (Erect)**
   - Pneumoperitoneum
   - Basal pneumonia
   - Pleural effusion

3. **Abdominal Ultrasound**
   - First-line for biliary pathology
   - Excellent for appendicitis in experienced hands
   - Detects free fluid, masses, AAA
   - Gynecological assessment

4. **CT Abdomen and Pelvis**
   - Gold standard for most acute abdominal conditions
   - Sensitive for appendicitis, diverticulitis, obstruction
   - Identifies source and extent of peritonitis
   - Contrast-enhanced for vascular assessment

5. **CT Angiography**
   - Mesenteric ischemia
   - Aortic pathology

**Diagnostic Peritoneal Lavage**
- Rarely used now with availability of CT
- May be useful in unstable trauma patients'),

('d0000001-0000-0000-0000-000000000001'::uuid, 'management', 6, 'Management Principles',
'Management follows ABCDE resuscitation principles with concurrent surgical evaluation.

**Initial Resuscitation**
1. **Airway and Breathing**
   - Supplemental oxygen
   - Consider intubation if GCS impaired

2. **Circulation**
   - Large-bore IV access (two sites)
   - Aggressive fluid resuscitation with crystalloids
   - Blood transfusion if hemorrhagic shock
   - Urinary catheter for monitoring output (target >0.5 mL/kg/hr)

3. **Disability**
   - Neurological assessment
   - Blood glucose

4. **Exposure**
   - Full examination
   - Temperature control

**Supportive Measures**
- Nil per oral (NPO)
- Nasogastric tube (if vomiting, obstruction)
- Analgesia (morphine does NOT mask clinical signs - adequate pain relief is ethical and necessary)
- Antiemetics
- Proton pump inhibitors
- VTE prophylaxis

**Antibiotic Therapy**
Empirical broad-spectrum coverage for intra-abdominal sepsis:
- Community-acquired: Ceftriaxone + Metronidazole OR Amoxicillin-Clavulanate
- Healthcare-associated: Piperacillin-Tazobactam OR Meropenem
- Severe sepsis/septic shock: Meropenem + Vancomycin

**Surgical Decision-Making**

**Immediate Surgery Required**
- Generalized peritonitis
- Perforated viscus
- Ruptured ectopic pregnancy
- Ruptured AAA
- Mesenteric ischemia
- Strangulated hernia

**Urgent Surgery (within 24 hours)**
- Acute appendicitis
- Acute cholecystitis
- Bowel obstruction not resolving

**Conservative Management**
- Uncomplicated diverticulitis
- Mild pancreatitis
- Gastroenteritis
- Mesenteric adenitis

**Operative Approaches**
- Laparoscopy: Preferred for appendicitis, cholecystitis, diagnostic uncertainty
- Laparotomy: Unstable patients, anticipated complex pathology, diffuse peritonitis'),

('d0000001-0000-0000-0000-000000000001'::uuid, 'key_points', 7, 'Key Points',
'**Essential Learning Points**

1. **Definition**: Acute abdomen is sudden severe abdominal pain requiring urgent evaluation and often surgical intervention.

2. **Clinical Approach**: History and examination remain the cornerstone of diagnosis - SOCRATES for pain assessment.

3. **Pain Types**:
   - Visceral: Dull, poorly localized, midline
   - Somatic: Sharp, well-localized, indicates peritonitis
   - Referred: Distant from pathology site

4. **Red Flags Requiring Urgent Surgery**:
   - Board-like rigidity
   - Absent bowel sounds with distension
   - Signs of shock
   - Peritonitis

5. **Investigations**:
   - Baseline bloods including FBC, U&E, LFTs, amylase
   - Urinalysis and pregnancy test (females)
   - Erect CXR for pneumoperitoneum
   - CT is gold standard for most conditions

6. **Management Priorities**:
   - Resuscitation (ABCDE approach)
   - Analgesia (do not withhold - it does not mask clinical signs)
   - Antibiotics for suspected sepsis
   - Timely surgical intervention when indicated

7. **Surgical Indications**:
   - Perforated viscus
   - Generalized peritonitis
   - Intestinal ischemia
   - Strangulated hernia
   - Ruptured AAA/ectopic pregnancy

8. **Medical Acute Abdomen**: Always consider non-surgical causes (DKA, porphyria, sickle cell) to avoid unnecessary surgery.

9. **Laparoscopy**: Increasingly used for diagnosis and treatment of acute abdominal conditions.

10. **Monitoring**: Repeated clinical examination is essential - the evolving clinical picture guides management.');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000001-0000-0000-0000-000000000001'::uuid, 1, 
'A 45-year-old man presents with sudden onset severe epigastric pain radiating to the back. He has a history of peptic ulcer disease. On examination, he has board-like rigidity. What is the most likely diagnosis?',
'Acute pancreatitis', 'Perforated duodenal ulcer', 'Acute cholecystitis', 'Myocardial infarction', 'Aortic dissection',
'B', 'Board-like rigidity indicates generalized peritonitis. In a patient with peptic ulcer disease presenting with sudden severe epigastric pain, perforated duodenal ulcer is the most likely diagnosis. The pain radiates to the back due to peritoneal irritation. Acute pancreatitis can cause similar pain but typically does not cause board-like rigidity early in the course.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 2,
'A 25-year-old woman presents with right lower quadrant pain. Which investigation is mandatory before proceeding to surgery?',
'Serum amylase', 'Full blood count', 'Urine pregnancy test', 'Abdominal ultrasound', 'CT scan of abdomen',
'C', 'A urine pregnancy test is mandatory in all females of reproductive age presenting with acute abdominal pain. Ruptured ectopic pregnancy must be excluded as it is a life-threatening emergency and can mimic appendicitis. Missing this diagnosis could be fatal.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 3,
'Visceral pain from the midgut structures is typically felt in which location?',
'Epigastric region', 'Periumbilical region', 'Suprapubic region', 'Right lower quadrant', 'Left lower quadrant',
'B', 'Midgut structures (jejunum, ileum, appendix, cecum, ascending and transverse colon) produce visceral pain that is felt in the periumbilical region. This is because the midgut is innervated by sympathetic nerves from T10 spinal segment. Epigastric pain is from foregut, and suprapubic from hindgut structures.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 4,
'Which of the following is the most reliable sign of generalized peritonitis?',
'Rebound tenderness', 'Guarding', 'Absent bowel sounds', 'Board-like rigidity', 'Localized tenderness',
'D', 'Board-like rigidity (involuntary muscle contraction causing a rigid abdominal wall) is the most reliable sign of generalized peritonitis. It indicates severe peritoneal irritation and is an indication for emergency laparotomy. Guarding is voluntary and can be overcome, while rebound tenderness is less specific.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 5,
'A patient with acute abdomen has absent liver dullness on percussion. What does this finding suggest?',
'Massive hepatomegaly', 'Pneumoperitoneum', 'Ascites', 'Intestinal obstruction', 'Hepatic abscess',
'B', 'Loss of liver dullness on percussion (Jobert sign) suggests pneumoperitoneum - free air in the peritoneal cavity. This is because the free air rises to the highest point (right hypochondrium in supine position) and overlies the liver, replacing the normal dullness with tympany. This indicates visceral perforation.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 6,
'Murphy sign is positive in which condition?',
'Acute appendicitis', 'Acute pancreatitis', 'Acute cholecystitis', 'Perforated peptic ulcer', 'Renal colic',
'C', 'Murphy sign is characteristic of acute cholecystitis. It is elicited by asking the patient to inspire deeply while palpating the right upper quadrant. Inspiration causes the inflamed gallbladder to descend and contact the examining fingers, causing pain and inspiratory arrest.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 7,
'Which investigation is the gold standard for diagnosing most causes of acute abdomen?',
'Plain abdominal X-ray', 'Abdominal ultrasound', 'CT scan of abdomen and pelvis', 'MRI abdomen', 'Diagnostic laparoscopy',
'C', 'Contrast-enhanced CT scan of the abdomen and pelvis is the gold standard for diagnosing most causes of acute abdomen. It has high sensitivity and specificity for appendicitis, diverticulitis, bowel obstruction, pancreatitis, and can identify the source and extent of peritonitis. It also provides vascular assessment.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 8,
'A patient with acute abdominal pain is restless and constantly moving. What type of pain is this most consistent with?',
'Peritonitis', 'Biliary colic', 'Appendicitis with peritonitis', 'Perforated viscus', 'Mesenteric ischemia',
'B', 'Patients with colicky pain (such as biliary colic, renal colic, or intestinal colic) are characteristically restless and unable to find a comfortable position. In contrast, patients with peritonitis lie very still because any movement aggravates the pain caused by peritoneal irritation.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 9,
'Which of the following is NOT a cause of medical (non-surgical) acute abdomen?',
'Diabetic ketoacidosis', 'Acute intermittent porphyria', 'Lead poisoning', 'Strangulated hernia', 'Sickle cell crisis',
'D', 'Strangulated hernia is a surgical emergency requiring operative intervention. The other options - DKA, acute intermittent porphyria, lead poisoning, and sickle cell crisis - are medical causes of acute abdominal pain that do not require surgical treatment and can mimic surgical conditions.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 10,
'Shoulder tip pain in a patient with acute abdomen suggests irritation of which structure?',
'Stomach', 'Gallbladder', 'Diaphragm', 'Pancreas', 'Spleen',
'C', 'Shoulder tip pain (referred pain) indicates irritation of the diaphragm. The phrenic nerve (C3-C5) innervates the diaphragm, and irritation causes referred pain to the C3-C5 dermatome distribution in the shoulder. This can occur with subphrenic abscess, splenic rupture, or perforated peptic ulcer with subphrenic air.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 11,
'In a patient with suspected intestinal obstruction, which X-ray finding is most characteristic?',
'Free air under diaphragm', 'Multiple air-fluid levels', 'Ground glass appearance', 'Sentinel loop', 'Thumbprinting',
'B', 'Multiple air-fluid levels on erect abdominal X-ray are characteristic of intestinal obstruction. They represent gas-fluid interfaces in dilated obstructed bowel loops. Free air under diaphragm suggests perforation, ground glass suggests ascites, sentinel loop suggests localized ileus, and thumbprinting suggests colonic ischemia.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 12,
'Which of the following statements about analgesia in acute abdomen is TRUE?',
'Analgesia should be withheld until diagnosis is made', 'Morphine masks important clinical signs', 'Adequate analgesia is ethical and does not impair diagnosis', 'Only non-opioid analgesics should be used', 'Analgesia delays surgical intervention',
'C', 'Modern evidence shows that adequate analgesia does not mask clinical signs and is both ethical and necessary for patient comfort. Withholding pain relief is unethical and causes unnecessary suffering. Studies have shown that opioid analgesia does not significantly affect diagnostic accuracy or clinical decision-making.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 13,
'A serum amylase level more than how many times the upper limit of normal is diagnostic of acute pancreatitis?',
'1 time', '2 times', '3 times', '5 times', '10 times',
'C', 'A serum amylase or lipase level greater than 3 times the upper limit of normal is diagnostic of acute pancreatitis in the appropriate clinical context. Lower elevations can be seen in other conditions such as perforated peptic ulcer, intestinal obstruction, and renal failure.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 14,
'The Rovsing sign is positive when pressure in which area causes pain in the right iliac fossa?',
'Right upper quadrant', 'Epigastrium', 'Left iliac fossa', 'Suprapubic region', 'Umbilical region',
'C', 'Rovsing sign is positive when palpation of the left iliac fossa causes pain in the right iliac fossa. This occurs because pressing on the left side compresses bowel gas, which transmits pressure to the inflamed appendix in the right iliac fossa, causing pain. It is a classic sign of acute appendicitis.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 15,
'Which antibiotic regimen is appropriate for community-acquired intra-abdominal sepsis?',
'Gentamicin alone', 'Metronidazole alone', 'Ceftriaxone plus Metronidazole', 'Vancomycin alone', 'Fluconazole plus Ampicillin',
'C', 'Community-acquired intra-abdominal sepsis requires broad-spectrum coverage against gram-negative bacteria and anaerobes. Ceftriaxone (third-generation cephalosporin) provides gram-negative coverage, while Metronidazole covers anaerobes. Alternative regimens include Amoxicillin-Clavulanate or Piperacillin-Tazobactam.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 16,
'Which of the following conditions can be managed conservatively without surgery?',
'Perforated duodenal ulcer', 'Strangulated inguinal hernia', 'Uncomplicated acute diverticulitis', 'Mesenteric ischemia', 'Ruptured ectopic pregnancy',
'C', 'Uncomplicated acute diverticulitis (without perforation, abscess, or obstruction) is typically managed conservatively with antibiotics, bowel rest, and close monitoring. The other conditions listed are surgical emergencies requiring operative intervention.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 17,
'The psoas sign in appendicitis is positive when which movement causes pain?',
'Flexion of right hip', 'Extension of right hip', 'Internal rotation of right hip', 'External rotation of right hip', 'Adduction of right hip',
'B', 'The psoas sign is positive when passive extension of the right hip (or active flexion against resistance) causes pain in the right iliac fossa. This occurs when the inflamed appendix is retrocecal and lies on the psoas muscle. Extension stretches the psoas, irritating the overlying inflamed appendix.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 18,
'A 60-year-old man presents with sudden onset abdominal pain, bloody diarrhea, and is in shock. Abdomen is soft with minimal tenderness. What is the most likely diagnosis?',
'Perforated peptic ulcer', 'Acute pancreatitis', 'Mesenteric ischemia', 'Ruptured AAA', 'Sigmoid volvulus',
'C', 'This presentation (pain out of proportion to physical findings, bloody diarrhea, and shock) is classic for acute mesenteric ischemia. The "pain out of proportion to exam" is a key feature - severe pain with a relatively benign abdominal examination initially. This is a surgical emergency requiring urgent revascularization.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 19,
'What is the minimum urine output target during resuscitation of a patient with acute abdomen?',
'0.25 mL/kg/hour', '0.5 mL/kg/hour', '1 mL/kg/hour', '2 mL/kg/hour', '3 mL/kg/hour',
'B', 'The minimum target urine output during resuscitation is 0.5 mL/kg/hour (approximately 30-50 mL/hour in an average adult). This indicates adequate renal perfusion and is a marker of successful fluid resuscitation. A urinary catheter should be placed to monitor output accurately.'),

('d0000001-0000-0000-0000-000000000001'::uuid, 20,
'Which is the preferred surgical approach for diagnostic uncertainty in acute abdomen?',
'Midline laparotomy', 'Right paramedian incision', 'McBurney incision', 'Diagnostic laparoscopy', 'Pfannenstiel incision',
'D', 'Diagnostic laparoscopy is the preferred approach for diagnostic uncertainty in acute abdomen, especially in young women where gynecological pathology may mimic appendicitis. It allows visualization of the entire abdomen, definitive diagnosis, and often therapeutic intervention with minimal morbidity compared to open surgery.');
