-- Article 54: Intussusception
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000054-0000-0000-0000-000000000054'::uuid, 'introduction', 1, 'Introduction to Intussusception', 'Intussusception is the invagination of one segment of intestine into an adjacent distal segment. It is the most common cause of intestinal obstruction in infants aged 3 months to 3 years, with peak incidence at 5-9 months. The classic triad of colicky abdominal pain, red currant jelly stools, and palpable abdominal mass is present in only 20-40% of cases. Ileocolic intussusception is most common in children (idiopathic), while adult intussusception usually has a pathological lead point (tumor). Early diagnosis and non-operative reduction with air or contrast enema is successful in most pediatric cases. Surgery is required for failed reduction, peritonitis, or perforation.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 'content', 2, 'Pathophysiology and Classification', 'MECHANISM:
Intussusceptum (inner segment) telescopes into intussuscipiens (outer segment)
Mesentery is dragged in, causing venous congestion, edema, bleeding
Progression: venous obstruction, arterial compromise, necrosis, perforation

TYPES BY LOCATION:
Ileocolic (most common in children) - 80%
Ileo-ileo-colic
Ileoileal - more common in postoperative and cystic fibrosis patients
Colocolic - rare, often has lead point

CLASSIFICATION BY CAUSE:
Primary (Idiopathic) - 90% of pediatric cases
- Hypertrophied Peyer patches after viral infection (rotavirus, adenovirus)
- No pathological lead point

Secondary - pathological lead point
- Meckel diverticulum (most common lead point in children)
- Polyps
- Lymphoma
- Duplication cyst
- Henoch-Schonlein purpura
- Post-operative (ileoileal)

ADULT INTUSSUSCEPTION:
Almost always has organic cause (lead point)
90% have identifiable lesion
Malignancy in 50% of colonic cases
Requires surgical resection'),
('d2000054-0000-0000-0000-000000000054'::uuid, 'content', 3, 'Clinical Features and Diagnosis', 'CLASSIC TRIAD (only 20-40% of cases):
1. Colicky abdominal pain - episodic, drawing up legs
2. Red currant jelly stools (late sign) - blood and mucus
3. Palpable sausage-shaped abdominal mass

CLINICAL PRESENTATION:
Sudden onset intermittent colicky pain with crying
Pallor, lethargy between episodes
Vomiting - initially non-bilious, becomes bilious
Passage of blood per rectum (late sign)
Sausage-shaped mass in right upper quadrant
Empty right iliac fossa (Dance sign)
May present with altered consciousness (encephalopathy-like)

PHYSICAL EXAMINATION:
Abdominal distension
Sausage-shaped mass (right upper quadrant)
Empty RIF (Dance sign)
Bloody mucus on rectal examination
Signs of peritonitis (late) - tenderness, guarding, rigidity

INVESTIGATIONS:
Plain abdominal X-ray:
- Target sign or crescent sign
- Absence of caecal gas
- Signs of obstruction (dilated small bowel, air-fluid levels)
- Free air if perforated

Ultrasound (investigation of choice):
- Target sign (doughnut sign) in transverse section
- Pseudokidney sign (sandwich sign) in longitudinal section
- Sensitivity greater than 95%

Contrast enema (diagnostic and therapeutic):
- Coiled spring appearance
- Claw sign (meniscus sign)'),
('d2000054-0000-0000-0000-000000000054'::uuid, 'content', 4, 'Management', 'NON-OPERATIVE REDUCTION:
Indications:
- Ileocolic intussusception
- Duration less than 48 hours
- No peritonitis or perforation
- Hemodynamically stable

Methods:
Air enema reduction (preferred):
- Pressure limit: 120 mmHg
- Success rate: 80-90%
- Lower perforation risk than barium

Hydrostatic reduction (saline/contrast):
- Contrast column height of 100 cm
- Fluoroscopic or ultrasound guided

Criteria for successful reduction:
- Free flow of air/contrast into ileum
- Resolution of mass
- Clinical improvement

Rule of Threes:
- 3 attempts at reduction
- 3 minutes each attempt
- Not exceeding 3 attempts

CONTRAINDICATIONS TO ENEMA REDUCTION:
Peritonitis/perforation
Profound shock
Duration greater than 48 hours (relative)

SURGICAL MANAGEMENT:
Indications:
- Failed non-operative reduction
- Peritonitis or perforation
- Shock unresponsive to resuscitation
- Pathological lead point suspected
- Recurrent intussusception (3rd recurrence)

Technique:
- Manual reduction (milking intussusceptum out)
- Assess bowel viability
- Resection if necrotic or lead point present
- Primary anastomosis

RECURRENCE:
Rate: 5-10%
Usually occurs within 72 hours
Most can be treated with repeat enema reduction'),
('d2000054-0000-0000-0000-000000000054'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Peak incidence 5-9 months. Classic triad present in only 20-40%. Red currant jelly stool is LATE sign. Dance sign: empty RIF. Ultrasound: target/doughnut sign (transverse), pseudokidney sign (longitudinal). Air enema preferred (80-90% success). Rule of Threes: 3 attempts, 3 minutes each. Adult intussusception usually has lead point - surgery required. Meckel diverticulum: most common pediatric lead point.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 'key_points', 6, 'Key Points Summary', 'Most common cause of bowel obstruction in infants. Ileocolic most common type. Idiopathic 90% in children (hypertrophied Peyer patches). Ultrasound: target sign, pseudokidney sign. Air enema reduction: first-line treatment, 80-90% success. Surgery for: failed reduction, peritonitis, perforation. Adult: always exclude lead point (malignancy). Recurrence 5-10%.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000054-0000-0000-0000-000000000054'::uuid, 1, 'Most common cause of intestinal obstruction in infants (3 months to 3 years) is:', 'Hernia', 'Intussusception', 'Volvulus', 'Hirschsprung disease', 'Meckel diverticulum', 'B', 'Intussusception is the most common cause of intestinal obstruction in infants aged 3 months to 3 years.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 2, 'Peak age for intussusception is:', '1-3 months', '5-9 months', '2-3 years', '5-10 years', 'Adults', 'B', 'Peak incidence of intussusception is between 5-9 months of age.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 3, 'Most common type of intussusception in children is:', 'Ileoileal', 'Colocolic', 'Ileocolic', 'Jejunojejunal', 'Rectosigmoid', 'C', 'Ileocolic intussusception accounts for approximately 80% of pediatric cases.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 4, 'The classic triad of intussusception includes all EXCEPT:', 'Colicky abdominal pain', 'Red currant jelly stools', 'Palpable abdominal mass', 'Projectile vomiting', 'Intermittent crying', 'D', 'The classic triad is colicky pain, red currant jelly stools, and palpable mass. Projectile vomiting is characteristic of pyloric stenosis.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 5, 'Dance sign in intussusception refers to:', 'Mass in right upper quadrant', 'Empty right iliac fossa', 'Blood in stool', 'Bilious vomiting', 'Doughnut appearance on ultrasound', 'B', 'Dance sign refers to an empty right iliac fossa due to the ascending colon having intussuscepted upward.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 6, 'Investigation of choice for intussusception is:', 'Plain X-ray', 'CT scan', 'Ultrasound', 'Barium enema', 'MRI', 'C', 'Ultrasound is the investigation of choice with greater than 95% sensitivity. Shows target/doughnut sign.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 7, 'Target sign (doughnut sign) on ultrasound in intussusception is seen in:', 'Longitudinal section', 'Transverse section', 'Sagittal section', 'Coronal section', 'Any section', 'B', 'Target/doughnut sign is seen in transverse section. Pseudokidney sign is seen in longitudinal section.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 8, 'Red currant jelly stool is a:', 'Early sign', 'Late sign', 'Diagnostic sign', 'Pathognomonic sign', 'Always present', 'B', 'Red currant jelly stool (blood and mucus) is a LATE sign indicating mucosal ischemia.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 9, 'First-line treatment for uncomplicated ileocolic intussusception is:', 'Emergency laparotomy', 'Air enema reduction', 'IV antibiotics', 'Observation', 'Nasogastric suction only', 'B', 'Air enema (pneumatic) reduction is the first-line treatment with 80-90% success rate.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 10, 'Maximum pressure during air enema reduction should not exceed:', '60 mmHg', '80 mmHg', '120 mmHg', '200 mmHg', '300 mmHg', 'C', 'Maximum pressure during air enema reduction is 120 mmHg to avoid perforation.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 11, 'Contraindication to enema reduction includes:', 'Duration less than 24 hours', 'Peritonitis', 'First episode', 'Stable vital signs', 'Age less than 1 year', 'B', 'Contraindications include peritonitis, perforation, and shock. These require surgical management.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 12, 'Rule of Threes in intussusception reduction refers to:', '3 types, 3 treatments, 3 signs', '3 attempts, 3 minutes each', '3 hours maximum', '3 days observation', '3 age groups', 'B', 'Rule of Threes: maximum 3 attempts at enema reduction, 3 minutes each attempt.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 13, 'Most common pathological lead point in pediatric intussusception is:', 'Polyp', 'Lymphoma', 'Meckel diverticulum', 'Duplication cyst', 'Lipoma', 'C', 'Meckel diverticulum is the most common pathological lead point in pediatric intussusception.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 14, 'Adult intussusception differs from pediatric in that:', 'It is more common', 'It is usually idiopathic', 'It usually has a pathological lead point', 'Enema reduction is preferred', 'It is always benign', 'C', 'Adult intussusception almost always has a pathological lead point, and malignancy should be suspected especially in colonic cases.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 15, 'Recurrence rate of intussusception is approximately:', '1%', '5-10%', '25%', '50%', 'Rare', 'B', 'Recurrence rate is 5-10%, usually occurring within 72 hours. Most recurrences can be treated with repeat enema.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 16, 'Most common cause of primary/idiopathic intussusception is thought to be:', 'Dietary change', 'Hypertrophied Peyer patches from viral infection', 'Anatomical variant', 'Constipation', 'Formula feeding', 'B', 'Hypertrophied Peyer patches following viral infection (rotavirus, adenovirus) are thought to act as lead point.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 17, 'Which type of intussusception is more common post-operatively?', 'Ileocolic', 'Colocolic', 'Ileoileal', 'Rectosigmoid', 'Jejunocolic', 'C', 'Ileoileal intussusception is more common post-operatively and in cystic fibrosis patients.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 18, 'Surgical indication for intussusception includes all EXCEPT:', 'Peritonitis', 'Failed enema reduction', 'First episode with stable vitals', 'Perforation', 'Pathological lead point', 'C', 'First episode with stable vitals is treated with enema reduction first. Surgery is for failed reduction, peritonitis, perforation, or lead point.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 19, 'Criteria for successful enema reduction includes:', 'Passage of flatus', 'Free flow of air/contrast into ileum', 'Decrease in abdominal girth', 'Cessation of vomiting', 'All of the above', 'B', 'Successful reduction is confirmed by free flow of air or contrast into the terminal ileum with resolution of the mass.'),
('d2000054-0000-0000-0000-000000000054'::uuid, 20, 'Henoch-Schonlein purpura can cause intussusception by:', 'Polyp formation', 'Submucosal hemorrhage acting as lead point', 'Stricture formation', 'Adhesions', 'Volvulus', 'B', 'HSP can cause intussusception through submucosal hemorrhage (purpura) in the bowel wall acting as a lead point.');
