-- Surgery 2 Article 2: Acute Appendicitis - Sections and MCQs

-- Sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000002-0000-0000-0000-000000000002'::uuid, 'introduction', 1, 'Introduction to Acute Appendicitis', 
'Acute appendicitis is the most common cause of acute abdomen requiring emergency surgery worldwide. It affects approximately 7-8% of the population during their lifetime and is most common in the second and third decades of life.

**Anatomy**
The vermiform appendix is a blind-ended tube arising from the posteromedial aspect of the cecum, approximately 2 cm below the ileocecal valve. Its length varies from 2-20 cm (average 9 cm). The appendix has a mesentery (mesoappendix) containing the appendicular artery, a branch of the ileocolic artery.

**Anatomical Positions**
- Retrocecal (65%): Most common position
- Pelvic (31%): Descending into the pelvis
- Subcecal (2%)
- Preileal and postileal (2%)

**Pathophysiology**
Appendicitis results from luminal obstruction leading to:
1. Obstruction (fecalith, lymphoid hyperplasia, parasites, tumors)
2. Continued mucosal secretion causing distension
3. Venous congestion and ischemia
4. Bacterial invasion through compromised wall
5. Gangrene and perforation if untreated

The sequence typically progresses over 24-72 hours from simple inflammation to gangrene to perforation.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Describe the anatomy and common positions of the appendix
2. Explain the pathophysiology of acute appendicitis
3. Recognize the classic presentation and variations based on appendix position
4. Perform a systematic clinical examination for appendicitis
5. Apply clinical scoring systems (Alvarado score)
6. Select appropriate investigations
7. Differentiate appendicitis from other causes of RIF pain
8. Understand the management options including conservative and operative approaches
9. Recognize complications of appendicitis and their management
10. Describe surgical techniques (open vs. laparoscopic appendicectomy)'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'content', 3, 'Clinical Presentation',
'**Classic Presentation**
The classic history (only 50% of patients) follows a predictable sequence:

1. **Periumbilical pain**: Initially vague, central, colicky (visceral pain from midgut)
2. **Anorexia, nausea, vomiting**: Follows pain onset (key distinguishing feature)
3. **Migration of pain**: Pain shifts to right iliac fossa over 4-12 hours (somatic pain from parietal peritoneum)
4. **Low-grade fever**: Usually 37.5-38.5°C
5. **Localized tenderness**: McBurney point (junction of outer 1/3 and inner 2/3 of line from ASIS to umbilicus)

**Variations by Position**
- **Retrocecal**: Back/flank pain, psoas irritation, less abdominal rigidity
- **Pelvic**: Suprapubic pain, urinary frequency, diarrhea, obturator sign positive
- **Preileal/Postileal**: More central pain, may present as small bowel obstruction

**Special Populations**
- **Infants**: Vomiting, lethargy, irritability; high perforation rate due to delayed diagnosis
- **Elderly**: Atypical presentation, minimal fever, higher complication rate
- **Pregnancy**: Appendix displaced upward; RUQ pain in third trimester; risk of preterm labor

**Physical Examination Findings**
- Low-grade fever
- Tachycardia
- Tenderness at McBurney point
- Guarding and rebound tenderness in RIF
- Rovsing sign: Pain in RIF with LIF pressure
- Psoas sign: Pain on right hip extension (retrocecal)
- Obturator sign: Pain on internal rotation of flexed right hip (pelvic)
- Dunphy sign: Pain with coughing'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'content', 4, 'Diagnosis and Scoring',
'**Alvarado Score (MANTRELS)**
A clinical scoring system to assist diagnosis:

| Feature | Score |
|---------|-------|
| **M**igration of pain | 1 |
| **A**norexia | 1 |
| **N**ausea/vomiting | 1 |
| **T**enderness in RIF | 2 |
| **R**ebound tenderness | 1 |
| **E**levated temperature | 1 |
| **L**eukocytosis | 2 |
| **S**hift to left (neutrophilia) | 1 |
| **Total** | **10** |

**Interpretation**
- 1-4: Appendicitis unlikely
- 5-6: Possible appendicitis, observation/imaging
- 7-8: Probable appendicitis
- 9-10: Almost certain appendicitis

**Laboratory Investigations**
- FBC: Leukocytosis (10,000-18,000/μL), neutrophilia
- CRP: Elevated (not specific)
- Urinalysis: May show sterile pyuria from bladder irritation

**Imaging**
- **Ultrasound**: Non-compressible appendix >6mm diameter, aperistalsis, target sign
- **CT Scan**: 95% sensitivity; shows enlarged appendix, periappendiceal fat stranding, abscess
- **MRI**: Safe in pregnancy, comparable accuracy to CT'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'content', 5, 'Differential Diagnosis',
'The differential diagnosis varies by age and gender:

**Surgical Conditions**
- Mesenteric adenitis
- Meckel diverticulitis
- Crohn disease (terminal ileitis)
- Cecal diverticulitis
- Perforated peptic ulcer
- Cholecystitis
- Intestinal obstruction

**Gynecological Conditions (Females)**
- Ruptured ectopic pregnancy
- Ruptured ovarian cyst
- Ovarian torsion
- Pelvic inflammatory disease (PID)
- Mittelschmerz (ovulation pain)
- Endometriosis

**Urological Conditions**
- Right ureteric colic
- Urinary tract infection
- Testicular torsion (in males)

**Medical Conditions**
- Gastroenteritis
- Mesenteric lymphadenitis
- Diabetic ketoacidosis
- Right lower lobe pneumonia

**Key Differentiating Features**
- Ectopic pregnancy: Missed period, positive pregnancy test
- Ovarian torsion: Sudden onset severe pain, adnexal mass
- PID: Bilateral pain, cervical motion tenderness, discharge
- Mesenteric adenitis: Preceding viral illness, diffuse adenopathy'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'content', 6, 'Management',
'**Conservative Management (Non-operative)**
Emerging evidence supports antibiotic therapy for uncomplicated appendicitis:
- IV antibiotics (Ceftriaxone + Metronidazole or Piperacillin-Tazobactam)
- Bowel rest
- Close monitoring
- Success rate: 70-90% initially; 30-40% recurrence at 1 year
- Reserved for select patients who refuse surgery or are high operative risk

**Surgical Management - Gold Standard**
**Preoperative Preparation**
- IV fluid resuscitation
- Antibiotics (single dose or short course)
- NPO status
- VTE prophylaxis

**Laparoscopic Appendicectomy (Preferred)**
Advantages:
- Less postoperative pain
- Faster recovery
- Lower wound infection rate
- Better cosmesis
- Diagnostic capability
- Lower incidence of adhesive obstruction

Technique:
- 3-port technique most common
- Division of mesoappendix
- Ligation and division of appendix base
- Specimen retrieval in bag

**Open Appendicectomy**
Indications:
- Laparoscopy contraindicated
- Surgeon preference
- Resource-limited settings

Technique:
- McBurney or Lanz incision
- Grid-iron muscle splitting
- Retrograde or antegrade dissection
- Ligation of appendix base'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'content', 7, 'Complications',
'**Complications of Appendicitis**
1. **Perforation**: More common in extremes of age; presents with generalized peritonitis
2. **Appendix Mass**: Walled-off perforated appendix; palpable RIF mass
3. **Appendix Abscess**: Loculated pus collection; requires drainage
4. **Portal Pyemia (Pylephlebitis)**: Septic thrombophlebitis of portal vein; high mortality
5. **Peritonitis**: Generalized spread of infection

**Management of Appendix Mass**
Conservative approach (Ochsner-Sherren regimen):
- IV antibiotics
- IV fluids
- Bowel rest
- Close monitoring
- Interval appendicectomy at 6-8 weeks (controversial)

**Complications of Surgery**
- Wound infection (most common)
- Intra-abdominal abscess
- Stump appendicitis (incomplete removal)
- Fecal fistula
- Adhesive intestinal obstruction
- Incisional hernia

**Negative Appendicectomy**
Removal of a normal appendix occurs in 10-20% of cases. This is acceptable given the risks of missed appendicitis. Removed appendix should always be sent for histopathology (may reveal carcinoid, adenocarcinoma).'),

('d0000002-0000-0000-0000-000000000002'::uuid, 'key_points', 8, 'Key Points',
'1. Appendicitis is the most common surgical emergency worldwide
2. Classic presentation: periumbilical pain migrating to RIF, anorexia, then vomiting
3. McBurney point is junction of outer 1/3 and inner 2/3 of ASIS-umbilicus line
4. Alvarado score helps clinical decision-making (7-10 = high probability)
5. CT scan has 95% sensitivity and is the gold standard imaging
6. Pregnancy test mandatory in females of reproductive age
7. Laparoscopic appendicectomy is the preferred surgical approach
8. Appendix mass is managed conservatively initially with interval appendicectomy
9. Perforated appendicitis more common at extremes of age
10. Always send appendix for histopathology (occult malignancy in 1%)');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000002-0000-0000-0000-000000000002'::uuid, 1,
'What is the most common position of the appendix?',
'Pelvic', 'Retrocecal', 'Subcecal', 'Preileal', 'Postileal',
'B', 'The retrocecal position is the most common position of the appendix, occurring in approximately 65% of cases. This has clinical implications as retrocecal appendicitis may present with atypical symptoms including back pain and less pronounced abdominal rigidity.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 2,
'The McBurney point is located at which anatomical landmark?',
'Midpoint between umbilicus and pubic symphysis', 'Junction of outer 1/3 and inner 2/3 of line from ASIS to umbilicus', 'Junction of middle and outer 1/3 of line from umbilicus to ASIS', '2 cm below the umbilicus in the midline', 'At the level of the anterior superior iliac spine',
'B', 'McBurney point is located at the junction of the outer (lateral) 1/3 and inner (medial) 2/3 of the line drawn from the anterior superior iliac spine (ASIS) to the umbilicus. This corresponds to the base of the appendix in most patients.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 3,
'In the classic presentation of appendicitis, which symptom typically occurs FIRST?',
'Vomiting', 'Fever', 'Right iliac fossa pain', 'Periumbilical pain', 'Diarrhea',
'D', 'In the classic presentation, periumbilical pain occurs first (visceral pain from midgut origin). This is followed by anorexia and nausea, then vomiting, and finally migration to the right iliac fossa as inflammation involves the parietal peritoneum. This sequence (pain before vomiting) helps differentiate from gastroenteritis.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 4,
'A positive Psoas sign suggests the appendix is in which position?',
'Pelvic', 'Retrocecal', 'Subcecal', 'Preileal', 'Anterior',
'B', 'A positive psoas sign (pain on passive extension of the right hip or active flexion against resistance) suggests a retrocecal appendix lying on the psoas muscle. Extension stretches the psoas, irritating the overlying inflamed appendix.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 5,
'What is the maximum score on the Alvarado (MANTRELS) scoring system?',
'8', '9', '10', '12', '15',
'C', 'The Alvarado score has a maximum of 10 points. The mnemonic MANTRELS represents: Migration (1), Anorexia (1), Nausea/vomiting (1), Tenderness in RIF (2), Rebound (1), Elevated temperature (1), Leukocytosis (2), Shift to left (1) = 10 total.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 6,
'Which of the following is the main arterial supply to the appendix?',
'Superior mesenteric artery directly', 'Appendicular artery (branch of ileocolic)', 'Right colic artery', 'Inferior mesenteric artery', 'Middle colic artery',
'B', 'The appendix is supplied by the appendicular artery, which is a branch of the ileocolic artery (which arises from the superior mesenteric artery). The appendicular artery runs in the mesoappendix and is an end-artery with no collateral supply.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 7,
'A 25-year-old woman presents with RIF pain. What investigation is mandatory before surgery?',
'CT scan', 'Serum amylase', 'Urine pregnancy test', 'Pelvic ultrasound', 'Diagnostic laparoscopy',
'C', 'A urine pregnancy test is mandatory in all females of reproductive age presenting with abdominal pain. Ectopic pregnancy must be excluded as it is a life-threatening emergency that can mimic appendicitis. CT scan should be avoided in early pregnancy.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 8,
'What ultrasound finding is diagnostic of appendicitis?',
'Appendix diameter <6 mm', 'Compressible appendix', 'Non-compressible appendix >6 mm diameter', 'Increased peristalsis', 'Normal mesoappendix',
'C', 'Ultrasound findings diagnostic of appendicitis include: non-compressible appendix with diameter >6mm, aperistaltic, and the target sign (concentric rings on cross-section). Periappendiceal fluid and fat stranding may also be seen.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 9,
'What is the most common cause of appendiceal obstruction in young adults?',
'Fecalith', 'Lymphoid hyperplasia', 'Carcinoid tumor', 'Parasites', 'Foreign body',
'B', 'Lymphoid hyperplasia is the most common cause of appendiceal obstruction in young adults, often following viral infections. Fecaliths are more common in older adults. Tumors (carcinoid, adenocarcinoma) are rare causes.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 10,
'The Rovsing sign is positive when pressure on which area causes pain in the right iliac fossa?',
'Right upper quadrant', 'Epigastrium', 'Left iliac fossa', 'Suprapubic region', 'Right iliac fossa itself',
'C', 'Rovsing sign is positive when pressure on the left iliac fossa causes pain in the right iliac fossa. This occurs because compressing the colon transmits pressure through the bowel gas to the inflamed appendix, eliciting pain.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 11,
'What is the preferred surgical approach for acute appendicitis?',
'Open appendicectomy via McBurney incision', 'Laparoscopic appendicectomy', 'Open appendicectomy via midline incision', 'Interval appendicectomy', 'Conservative management only',
'B', 'Laparoscopic appendicectomy is the preferred approach for acute appendicitis. It offers advantages including less postoperative pain, faster recovery, lower wound infection rates, better cosmesis, and diagnostic capability if the diagnosis is uncertain.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 12,
'What is the appropriate initial management of an appendix mass?',
'Emergency laparotomy', 'Emergency laparoscopy', 'Conservative treatment with IV antibiotics', 'Percutaneous drainage', 'CT-guided biopsy',
'C', 'Appendix mass (phlegmon) is initially managed conservatively with the Ochsner-Sherren regimen: IV antibiotics, IV fluids, bowel rest, and close monitoring. Emergency surgery risks spreading the infection and bowel injury. Interval appendicectomy may be performed at 6-8 weeks.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 13,
'Which age group has the highest rate of appendiceal perforation?',
'Teenagers', 'Young adults (20-30 years)', 'Middle-aged adults', 'Elderly and children', 'All ages equally',
'D', 'Extremes of age (elderly and children, especially <5 years) have the highest rates of perforation. This is due to delayed/atypical presentation, difficulty obtaining history, and delayed diagnosis. Children have thinner appendiceal walls and underdeveloped omentum to wall off infection.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 14,
'The obturator sign is positive in appendicitis when the appendix is in which position?',
'Retrocecal', 'Pelvic', 'Subcecal', 'Preileal', 'Lateral',
'B', 'The obturator sign (pain on passive internal rotation of the flexed right hip) is positive when the appendix is in the pelvic position, lying near the obturator internus muscle. The movement stretches the obturator and irritates the adjacent inflamed appendix.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 15,
'What is the incidence of occult malignancy found in appendicectomy specimens?',
'Less than 0.1%', 'About 1%', 'About 5%', 'About 10%', 'About 20%',
'B', 'Approximately 1% of appendicectomy specimens contain an occult malignancy (most commonly carcinoid tumor, followed by adenocarcinoma). This is why all removed appendices should be sent for histopathological examination regardless of macroscopic appearance.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 16,
'Portal pyemia (pylephlebitis) is a complication of appendicitis involving which structure?',
'Hepatic artery', 'Portal vein', 'Inferior vena cava', 'Superior mesenteric artery', 'Hepatic veins',
'B', 'Portal pyemia (pylephlebitis) is septic thrombophlebitis of the portal vein and its tributaries. It is a rare but serious complication of appendicitis with high mortality. Patients present with high fever, jaundice, and hepatomegaly. Treatment requires prolonged antibiotics and sometimes anticoagulation.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 17,
'In pregnancy, where is appendiceal pain typically located in the third trimester?',
'Right iliac fossa', 'Left iliac fossa', 'Right upper quadrant', 'Periumbilical', 'Suprapubic',
'C', 'In the third trimester of pregnancy, the gravid uterus displaces the appendix superiorly and laterally. Pain may be felt in the right upper quadrant or right flank rather than the right iliac fossa. This atypical location can lead to delayed diagnosis.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 18,
'What is the most common complication of appendicectomy?',
'Intra-abdominal abscess', 'Wound infection', 'Stump appendicitis', 'Fecal fistula', 'Adhesive obstruction',
'B', 'Wound infection is the most common complication of appendicectomy, occurring in approximately 5-10% of cases (higher with perforation). The risk is lower with laparoscopic surgery. Other complications include abscess, stump appendicitis, and adhesive obstruction.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 19,
'Which feature helps distinguish acute appendicitis from acute gastroenteritis?',
'Both cause vomiting', 'In appendicitis, pain precedes vomiting; in gastroenteritis, vomiting precedes pain', 'Fever is higher in appendicitis', 'Diarrhea is more common in appendicitis', 'Anorexia occurs only in gastroenteritis',
'B', 'In acute appendicitis, the sequence is characteristically: pain first, then anorexia, then nausea/vomiting. In gastroenteritis, vomiting and diarrhea typically precede or occur simultaneously with abdominal pain. This sequence is a helpful differentiating feature.'),

('d0000002-0000-0000-0000-000000000002'::uuid, 20,
'An acceptable negative appendicectomy rate is considered to be:',
'0%', '5-10%', '10-20%', '25-30%', '50%',
'C', 'A negative appendicectomy rate of 10-20% is generally considered acceptable. This reflects the challenge of diagnosis and the priority of avoiding missed appendicitis (which has significant morbidity from perforation). With widespread CT use, rates are decreasing to around 5-10%.');
