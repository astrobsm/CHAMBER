-- Surgery 2 Article 3: Intestinal Obstruction - Sections and MCQs

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000003-0000-0000-0000-000000000003'::uuid, 'introduction', 1, 'Introduction to Intestinal Obstruction', 
'Intestinal obstruction is a common surgical emergency characterized by mechanical or functional impairment of the normal aboral passage of intestinal contents. It accounts for approximately 15-20% of all surgical admissions for acute abdomen.

**Classification**

**By Mechanism**
1. **Mechanical Obstruction**: Physical blockage of intestinal lumen
   - Intraluminal (within lumen): Gallstone, fecal impaction, bezoar, parasites
   - Intramural (within wall): Tumor, stricture, intussusception
   - Extramural (outside wall): Adhesions, hernias, volvulus

2. **Functional (Paralytic) Obstruction**: Impaired motility without mechanical barrier
   - Paralytic ileus (postoperative, electrolyte disturbance)
   - Pseudo-obstruction (Ogilvie syndrome)

**By Location**
- Small bowel obstruction (SBO): 80% of cases
- Large bowel obstruction (LBO): 20% of cases

**By Degree**
- Complete vs. incomplete (partial)

**By Blood Supply**
- Simple: Blood supply intact
- Strangulated: Compromised blood supply (emergency!)

**Epidemiology**
- Adhesions: Most common cause of SBO in developed countries (60-70%)
- Hernias: Most common cause in developing countries and second most common in developed
- Colorectal cancer: Most common cause of LBO (60-70%)'),

('d2000003-0000-0000-0000-000000000003'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Classify intestinal obstruction by mechanism, location, and blood supply status
2. Identify the common causes of small and large bowel obstruction
3. Understand the pathophysiology of intestinal obstruction
4. Recognize the clinical features and differentiate SBO from LBO
5. Identify signs of strangulation requiring emergency surgery
6. Interpret plain abdominal X-rays for obstruction
7. Describe the role of CT scan in diagnosis and management
8. Apply appropriate conservative management protocols
9. Recognize indications for surgical intervention
10. Describe operative approaches for different causes'),

('d2000003-0000-0000-0000-000000000003'::uuid, 'content', 3, 'Pathophysiology',
'Understanding the pathophysiology is essential for management.

**Proximal Bowel Changes**
1. Accumulation of fluid and gas proximal to obstruction
2. Bowel distension (up to 8-10 cm diameter)
3. Increased intraluminal pressure
4. Mucosal edema and inflammation
5. Third-space fluid losses (massive - up to 6-8L)

**Systemic Effects**
1. Dehydration and electrolyte loss
   - Sodium, potassium, chloride depletion
   - Metabolic alkalosis (vomiting) or acidosis (distal obstruction)
2. Hypovolemia and shock
3. Sepsis (bacterial translocation)

**Closed Loop Obstruction**
Occurs when both ends of a bowel segment are obstructed (e.g., volvulus, incarcerated hernia):
- Rapid rise in intraluminal pressure
- Early compromise of blood supply
- High risk of ischemia, gangrene, perforation
- Surgical emergency

**Large Bowel with Competent Ileocecal Valve**
Creates a closed-loop situation:
- Cecum distends preferentially (law of Laplace)
- Risk of cecal perforation when diameter >12 cm
- Emergency decompression required

**Strangulation**
Compromised blood supply leads to:
- Venous congestion initially
- Arterial occlusion follows
- Bowel wall ischemia
- Gangrene and necrosis
- Perforation and peritonitis'),

('d2000003-0000-0000-0000-000000000003'::uuid, 'content', 4, 'Clinical Presentation',
'**Cardinal Symptoms of Obstruction**
1. **Colicky abdominal pain**: Intermittent, cramping (every 3-5 min in SBO, every 10-15 min in LBO)
2. **Vomiting**: Early and profuse in proximal SBO; late and feculent in distal/LBO
3. **Abdominal distension**: Minimal in proximal SBO; marked in distal SBO and LBO
4. **Absolute constipation**: No flatus or feces (complete obstruction)

**Small Bowel vs Large Bowel Obstruction**

| Feature | SBO | LBO |
|---------|-----|-----|
| Pain | Periumbilical, frequent colic | Lower abdominal, less frequent |
| Vomiting | Early, profuse, bilious | Late, feculent |
| Distension | Central, moderate | Peripheral, marked |
| Constipation | Later onset | Earlier onset |

**Physical Examination**
- Dehydration signs: Dry mucosa, reduced skin turgor, tachycardia
- Abdominal distension
- Visible peristalsis (thin patients)
- Hyperactive bowel sounds initially → absent bowel sounds later
- Tenderness: Mild in simple obstruction
- Examine hernial orifices (ALWAYS!)
- Digital rectal exam: Empty rectum, masses, blood

**Signs of Strangulation (EMERGENCY)**
- Constant severe pain (no longer colicky)
- Fever
- Tachycardia out of proportion to fever
- Localized tenderness with guarding
- Peritonitis
- Elevated WBC, lactate, metabolic acidosis
- Bloody aspirate or stool'),

('d2000003-0000-0000-0000-000000000003'::uuid, 'content', 5, 'Investigations',
'**Laboratory Tests**
- FBC: Leukocytosis (infection, strangulation), hemoconcentration
- Electrolytes: Hypokalemia, hypochloremia, hyponatremia
- Renal function: Elevated urea/creatinine (dehydration)
- Arterial blood gas: Metabolic acidosis (strangulation, sepsis)
- Lactate: Elevated in ischemia
- Amylase: May be mildly elevated

**Plain Abdominal X-ray (Supine and Erect)**
**Small Bowel Obstruction**
- Dilated small bowel loops (>3 cm diameter)
- Central distribution
- Valvulae conniventes (plicae circulares) cross entire bowel width
- Multiple air-fluid levels at different heights (erect)
- String of beads sign
- Paucity of gas in colon

**Large Bowel Obstruction**
- Dilated colon (>6 cm, cecum >9 cm is concerning, >12 cm emergency)
- Peripheral distribution
- Haustral folds do NOT cross entire width
- Collapsed bowel distal to obstruction

**CT Abdomen (Gold Standard)**
- Sensitivity >90% for high-grade obstruction
- Identifies transition point (site of obstruction)
- Determines cause (tumor, hernia, adhesions)
- Detects signs of strangulation
- Identifies closed-loop obstruction
- Small bowel feces sign (suggests complete obstruction)

**Water-Soluble Contrast Study (Gastrografin)**
- Both diagnostic and therapeutic
- Failure of contrast to reach colon in 24 hours suggests complete obstruction
- May promote resolution of adhesive SBO'),

('d2000003-0000-0000-0000-000000000003'::uuid, 'content', 6, 'Management',
'**Initial Resuscitation**
"Drip and Suck" - foundation of conservative management
1. **IV Fluid Resuscitation**: Aggressive crystalloid replacement
2. **Nasogastric Decompression**: Wide-bore NG tube on free drainage
3. **Urinary Catheter**: Monitor output (target >0.5 mL/kg/hr)
4. **Electrolyte Correction**: K+, Na+, Cl-
5. **Analgesia**: As needed
6. **Antibiotics**: If strangulation suspected

**Conservative Management**
Indicated for:
- Partial SBO
- Adhesive SBO without strangulation signs
- Early postoperative obstruction
- Inflammatory conditions (Crohn flare)

Trial period: 24-72 hours with close monitoring

Success predictors:
- Partial obstruction
- Contrast reaching colon in 24 hours
- Resolution of symptoms and distension
- Return of flatus/bowel movements

**Indications for Emergency Surgery**
1. Strangulated obstruction (peritonitis, sepsis, acidosis)
2. Closed-loop obstruction
3. Complete obstruction not resolving
4. Irreducible/strangulated hernia
5. Suspected or confirmed malignancy causing LBO
6. Cecal diameter >12 cm

**Surgical Options**
**Small Bowel Obstruction**
- Adhesiolysis (laparoscopic or open)
- Resection of non-viable bowel with primary anastomosis
- Hernia repair
- Resection of stricture/tumor

**Large Bowel Obstruction**
- Right-sided: Right hemicolectomy with primary anastomosis
- Left-sided: Options include:
  - Hartmann procedure (resection + end colostomy)
  - Resection with primary anastomosis ± defunctioning stoma
  - Stenting as bridge to surgery (for malignancy)
  - Decompressive cecostomy/loop colostomy (rarely)'),

('d2000003-0000-0000-0000-000000000003'::uuid, 'key_points', 7, 'Key Points',
'1. Adhesions are the most common cause of SBO; colorectal cancer is the most common cause of LBO
2. Cardinal features: Colicky pain, vomiting, distension, absolute constipation
3. Always examine hernial orifices - incarcerated hernia is easily missed
4. Signs of strangulation: Constant pain, fever, tachycardia, peritonitis, elevated lactate
5. Plain X-ray: Dilated loops, air-fluid levels; CT is gold standard for diagnosis
6. Valvulae conniventes (complete crossing) = small bowel; haustrae (partial) = large bowel
7. Cecum >12 cm diameter requires emergency decompression (perforation risk)
8. Initial management: Drip and suck (IV fluids, NG decompression)
9. Conservative management appropriate for uncomplicated adhesive SBO (24-72 hour trial)
10. Emergency surgery for strangulation, closed-loop, complete obstruction not resolving');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000003-0000-0000-0000-000000000003'::uuid, 1,
'What is the most common cause of small bowel obstruction in developed countries?',
'Incarcerated hernia', 'Adhesions from previous surgery', 'Malignancy', 'Crohn disease', 'Intussusception',
'B', 'Adhesions from previous abdominal surgery are the most common cause of small bowel obstruction in developed countries, accounting for 60-70% of cases. Hernias are the second most common cause in developed nations but remain the leading cause in developing countries.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 2,
'What is the most common cause of large bowel obstruction?',
'Volvulus', 'Diverticular stricture', 'Colorectal carcinoma', 'Fecal impaction', 'Adhesions',
'C', 'Colorectal carcinoma is the most common cause of large bowel obstruction, accounting for 60-70% of cases. Volvulus (particularly sigmoid) is the second most common cause, followed by diverticular stricture. Left-sided tumors are more likely to cause obstruction than right-sided tumors.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 3,
'Vomiting is early and profuse in which type of obstruction?',
'Distal small bowel obstruction', 'Large bowel obstruction', 'Proximal small bowel obstruction', 'Sigmoid volvulus', 'Cecal volvulus',
'C', 'Vomiting is early and profuse in proximal small bowel obstruction because there is little intestinal capacity proximal to the obstruction to store secretions. The vomit is typically bilious. In distal SBO and LBO, vomiting is late and may become feculent.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 4,
'On plain abdominal X-ray, which feature distinguishes small bowel from large bowel?',
'Location of dilated loops', 'Valvulae conniventes cross entire width of bowel', 'Size of loops', 'Presence of air-fluid levels', 'Amount of gas present',
'B', 'Valvulae conniventes (plicae circulares) in the small bowel cross the entire width of the bowel wall. Haustral folds in the large bowel are thicker and do NOT cross the entire bowel width. This is a key distinguishing feature on plain X-ray.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 5,
'At what cecal diameter does the risk of perforation become critical, requiring emergency intervention?',
'6 cm', '9 cm', '12 cm', '15 cm', '20 cm',
'C', 'Cecal diameter >12 cm is considered critical with high risk of perforation (Laplace law - tension in wall proportional to diameter). A diameter of 9 cm is concerning and requires close monitoring. Emergency decompression (surgery or cecostomy) is indicated at >12 cm.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 6,
'Which of the following is NOT a sign of strangulated obstruction?',
'Constant severe pain', 'Fever and tachycardia', 'Colicky intermittent pain', 'Peritonitis', 'Elevated serum lactate',
'C', 'In strangulated obstruction, pain becomes CONSTANT and severe rather than colicky. The loss of colicky character indicates that the bowel is no longer contracting normally due to ischemia. Other signs include fever, tachycardia, localized tenderness, peritonitis, and elevated lactate.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 7,
'What is the "Drip and Suck" approach in managing intestinal obstruction?',
'IV contrast and NG aspiration for diagnosis', 'IV fluids resuscitation and NG decompression', 'Oral rehydration and rectal suction', 'IV antibiotics and peritoneal lavage', 'Enteral feeding and gastric drainage',
'B', 'Drip and Suck refers to aggressive IV fluid resuscitation (drip) and nasogastric decompression (suck). This is the foundation of conservative management for intestinal obstruction, addressing fluid/electrolyte losses and decompressing the distended bowel.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 8,
'A closed-loop obstruction is characterized by:',
'Only proximal obstruction', 'Only distal obstruction', 'Obstruction of both ends of a bowel segment', 'Obstruction with intact blood supply', 'Partial bowel obstruction',
'C', 'A closed-loop obstruction occurs when both ends of a bowel segment are obstructed (e.g., sigmoid volvulus, incarcerated hernia). This prevents decompression in either direction, causes rapid pressure rise, and leads to early strangulation. It is a surgical emergency.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 9,
'What is the investigation of choice for intestinal obstruction?',
'Plain abdominal X-ray', 'Abdominal ultrasound', 'CT scan of abdomen', 'Barium enema', 'Colonoscopy',
'C', 'CT scan of the abdomen is the gold standard investigation for intestinal obstruction. It has >90% sensitivity, identifies the site and cause of obstruction, detects signs of strangulation, and identifies closed-loop obstruction. Plain X-ray is useful for initial assessment but less sensitive.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 10,
'What is the role of water-soluble contrast (Gastrografin) in adhesive small bowel obstruction?',
'It is contraindicated', 'Diagnostic only', 'Diagnostic and potentially therapeutic', 'Therapeutic only', 'Used only for large bowel obstruction',
'C', 'Water-soluble contrast (Gastrografin) is both diagnostic and potentially therapeutic in adhesive SBO. Failure of contrast to reach the colon in 24 hours indicates complete obstruction requiring surgery. The hypertonic contrast may also promote resolution by drawing fluid into the lumen and stimulating peristalsis.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 11,
'Which physical examination should NEVER be omitted in a patient with suspected intestinal obstruction?',
'Auscultation of heart', 'Examination of hernial orifices', 'Neurological examination', 'Breast examination', 'Thyroid examination',
'B', 'Examination of all hernial orifices (inguinal, femoral, umbilical, incisional) should NEVER be omitted in suspected intestinal obstruction. Incarcerated hernias are a common and easily treatable cause of obstruction that can be missed if not specifically examined.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 12,
'How long is an appropriate trial of conservative management for uncomplicated adhesive SBO?',
'6 hours', '12 hours', '24-72 hours', '1 week', '2 weeks',
'C', 'A trial of conservative management for uncomplicated adhesive SBO is typically 24-72 hours. During this time, the patient should be closely monitored for signs of improvement (resolution of symptoms, passage of flatus) or deterioration (signs of strangulation).'),

('d2000003-0000-0000-0000-000000000003'::uuid, 13,
'The "string of beads" sign on abdominal X-ray is seen in:',
'Large bowel obstruction', 'Paralytic ileus', 'Small bowel obstruction', 'Volvulus', 'Intussusception',
'C', 'The string of beads sign refers to small pockets of air trapped between valvulae conniventes in fluid-filled small bowel loops on an erect abdominal X-ray. It is characteristic of small bowel obstruction and indicates almost complete fluid-filling of the obstructed loops.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 14,
'What is the preferred surgical procedure for obstructing left-sided colon cancer?',
'Right hemicolectomy', 'Transverse colectomy', 'Hartmann procedure', 'Total colectomy', 'Subtotal colectomy',
'C', 'The Hartmann procedure (resection of the sigmoid/rectosigmoid with end colostomy and rectal stump closure) is often preferred for obstructing left-sided colon cancer. Primary anastomosis in the setting of obstruction carries high leak risk. Some surgeons perform primary anastomosis with defunctioning stoma.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 15,
'Paralytic ileus is most commonly seen after:',
'Cardiac surgery', 'Abdominal surgery', 'Thoracic surgery', 'Orthopedic surgery', 'Neurosurgery',
'B', 'Paralytic ileus is most commonly seen after abdominal surgery. It typically lasts 24-72 hours postoperatively. Prolonged ileus beyond 3-5 days should prompt investigation for complications (anastomotic leak, abscess) or other causes (electrolyte disturbance, medications).'),

('d2000003-0000-0000-0000-000000000003'::uuid, 16,
'Which metabolic abnormality is most commonly associated with vomiting in proximal small bowel obstruction?',
'Metabolic acidosis', 'Metabolic alkalosis', 'Respiratory acidosis', 'Respiratory alkalosis', 'Mixed acidosis',
'B', 'Proximal small bowel obstruction with profuse vomiting leads to loss of gastric hydrochloric acid, resulting in metabolic alkalosis (hypochloremic, hypokalemic). In distal obstruction or strangulation with sepsis, metabolic acidosis may predominate.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 17,
'Ogilvie syndrome refers to:',
'Mechanical large bowel obstruction', 'Acute colonic pseudo-obstruction', 'Sigmoid volvulus', 'Paralytic ileus', 'Chronic intestinal pseudo-obstruction',
'B', 'Ogilvie syndrome is acute colonic pseudo-obstruction - massive colonic dilatation without mechanical obstruction. It typically occurs in hospitalized, elderly patients with multiple comorbidities. Treatment includes correction of underlying cause, neostigmine, and colonoscopic decompression if needed.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 18,
'What is the minimum urine output target indicating adequate resuscitation in intestinal obstruction?',
'0.25 mL/kg/hour', '0.5 mL/kg/hour', '1.0 mL/kg/hour', '2.0 mL/kg/hour', '100 mL/hour',
'B', 'The minimum target urine output is 0.5 mL/kg/hour (approximately 30-50 mL/hour in an adult), indicating adequate renal perfusion. Given the significant third-space losses in intestinal obstruction, aggressive fluid resuscitation is essential.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 19,
'Which finding on CT scan suggests complete small bowel obstruction?',
'Dilated loops only', 'Transition point identification', 'Small bowel feces sign', 'Free fluid', 'Mesenteric edema',
'C', 'The small bowel feces sign (particulate feculent material in small bowel proximal to obstruction) suggests complete or high-grade small bowel obstruction with prolonged intestinal stasis. It indicates that contrast will unlikely pass and surgery may be needed.'),

('d2000003-0000-0000-0000-000000000003'::uuid, 20,
'Which is an absolute indication for emergency surgery in intestinal obstruction?',
'Partial small bowel obstruction', 'Adhesive obstruction of 24 hours duration', 'Strangulated hernia', 'First episode of adhesive SBO', 'Postoperative ileus',
'C', 'Strangulated hernia is an absolute indication for emergency surgery. The compromised blood supply will lead to bowel gangrene if not relieved urgently. Other absolute indications include complete obstruction with signs of strangulation, peritonitis, and closed-loop obstruction.');
