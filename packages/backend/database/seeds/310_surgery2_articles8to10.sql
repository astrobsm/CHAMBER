-- Surgery 2 Articles 8-10: Salmonellosis, Parasitosis, Abdominal TB

-- ARTICLE 8: Surgical Salmonellosis (Typhoid Fever)
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000008-0000-0000-0000-000000000008'::uuid, 'introduction', 1, 'Introduction to Surgical Salmonellosis', 
'Typhoid fever, caused by Salmonella typhi, remains a significant health burden in developing countries. While primarily a medical condition, surgical complications including intestinal perforation and hemorrhage make it relevant to surgical practice.

**Epidemiology**
- 11-21 million cases annually worldwide
- Endemic in Africa, South Asia, Southeast Asia
- Transmission: Fecal-oral route (contaminated food/water)
- Incubation period: 7-14 days

**Pathophysiology**
1. Ingestion of S. typhi
2. Invasion of intestinal mucosa (Peyer patches in terminal ileum)
3. Multiplication in mesenteric lymph nodes
4. Primary bacteremia → RES (liver, spleen, bone marrow)
5. Secondary bacteremia → clinical illness
6. Necrosis of Peyer patches → ulceration → perforation

**Surgical Complications**
- Intestinal perforation (1-3% of cases) - most common surgical complication
- Intestinal hemorrhage (2-10%)
- Cholecystitis (gallbladder carrier state)
- Splenic abscess/rupture
- Bone and joint infections

Perforation typically occurs in the 3rd week of illness when ulcers in Peyer patches become transmural.'),

('d0000008-0000-0000-0000-000000000008'::uuid, 'content', 2, 'Clinical Features and Diagnosis',
'**Medical Presentation**
Week 1: Gradual fever, headache, malaise, relative bradycardia
Week 2: High sustained fever (stepladder pattern), rose spots, hepatosplenomegaly
Week 3: Complications (perforation, hemorrhage, encephalopathy)
Week 4: Resolution or death if untreated

**Signs of Perforation**
- Sudden severe abdominal pain
- Abdominal distension and rigidity
- Absent bowel sounds
- Signs of septic shock
- May be masked by existing illness and antibiotics

**Diagnosis**
- Blood culture (positive in 60-80% in week 1)
- Stool and urine culture
- Widal test (antibodies against O and H antigens)
- Typhidot test (IgM/IgG)

**Imaging for Complications**
- Erect CXR/AXR: Pneumoperitoneum (air under diaphragm)
- CT abdomen: Free fluid, abscess, perforation site

**Management of Typhoid Perforation**
1. Resuscitation: IV fluids, correct electrolytes, NG decompression
2. Antibiotics: Ceftriaxone + Metronidazole (or ciprofloxacin if sensitive)
3. Surgery: Laparotomy is mandatory for perforation'),

('d0000008-0000-0000-0000-000000000008'::uuid, 'content', 3, 'Surgical Management',
'**Operative Findings**
- Perforations typically in terminal ileum (antimesenteric border)
- Single perforation in 80%; multiple in 20%
- Ulcerated Peyer patches visible
- Peritoneal contamination

**Surgical Options**
1. **Primary closure** (simple sutured closure)
   - For single, small perforation
   - Healthy bowel margins
   - Minimal contamination

2. **Wedge excision with primary closure**
   - Removes necrotic ulcer edges
   - Commonly performed

3. **Resection with primary anastomosis**
   - Multiple perforations
   - Extensive bowel involvement
   - Requires healthy bowel for anastomosis

4. **Resection with ileostomy**
   - Severe peritoneal contamination
   - Hemodynamic instability
   - Poor nutritional status
   - Safest option in developing world settings

**Postoperative Care**
- Continue IV antibiotics (14-21 days total)
- NG decompression until bowel function returns
- Monitor for complications (anastomotic leak, wound infection)
- Nutritional support

**Prognosis**
- Mortality with perforation: 10-30% (higher in developing countries)
- Earlier surgery improves outcomes'),

('d0000008-0000-0000-0000-000000000008'::uuid, 'key_points', 4, 'Key Points',
'1. Typhoid perforation occurs in week 3 of illness, typically in terminal ileum
2. Perforation is the most common surgical complication (1-3%)
3. Signs may be masked by ongoing illness and antibiotics
4. Erect CXR shows pneumoperitoneum
5. Surgery is mandatory for perforation - no role for conservative management
6. Surgical options: Primary closure, wedge excision, resection ± ileostomy
7. Ileostomy is safest in contaminated, unstable, or malnourished patients
8. Mortality 10-30% with perforation
9. Antibiotics: Ceftriaxone + Metronidazole for 14-21 days
10. Prevention: Clean water, sanitation, vaccination');

-- ARTICLE 9: Surgical Parasitosis
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000009-0000-0000-0000-000000000009'::uuid, 'introduction', 1, 'Introduction to Surgical Parasitosis', 
'Parasitic diseases requiring surgical intervention are common in tropical and developing countries. Understanding these conditions is essential for surgeons in endemic areas.

**Common Parasites Requiring Surgery**

1. **Intestinal Parasites**
   - Ascaris lumbricoides (roundworm)
   - Entamoeba histolytica (amoebiasis)
   - Taenia species (tapeworms)

2. **Tissue Parasites**
   - Echinococcus granulosus (hydatid disease)
   - Filaria (lymphatic filariasis)
   - Dracunculus medinensis (guinea worm)

3. **Biliary Parasites**
   - Ascaris lumbricoides
   - Clonorchis sinensis (liver fluke)
   - Fasciola hepatica'),

('d0000009-0000-0000-0000-000000000009'::uuid, 'content', 2, 'Intestinal Ascariasis and Amoebiasis',
'**Ascariasis**
Most common helminthic infection worldwide (1 billion infected)

Surgical complications:
- Intestinal obstruction (bolus of worms)
- Biliary ascariasis (worm in CBD causing cholangitis)
- Appendicitis (worm in appendix)
- Perforation, volvulus

Clinical features:
- Colicky abdominal pain
- Vomiting (may vomit worms)
- Palpable mass of worms
- History of passing worms in stool

Management:
- Most cases: Anthelmintic (albendazole, mebendazole)
- Obstruction: Conservative initially (NG, IV fluids, anthelmintics)
- Surgery if: Complete obstruction, perforation, volvulus, biliary obstruction not resolving

**Amoebic Liver Abscess**
Caused by Entamoeba histolytica

Clinical features:
- Right upper quadrant pain
- Fever, hepatomegaly
- May rupture into peritoneum, pleura, or pericardium

Diagnosis:
- Serology (amoebic antibodies)
- Ultrasound/CT: Single abscess in right lobe (80%)
- "Anchovy sauce" pus

Management:
- Medical: Metronidazole (mainstay treatment)
- Drainage indications:
  - Large abscess (>5-10cm)
  - Left lobe (risk of pericardial rupture)
  - No response to medical treatment
  - Imminent rupture'),

('d0000009-0000-0000-0000-000000000009'::uuid, 'content', 3, 'Hydatid Disease',
'**Etiology**
Echinococcus granulosus (dog tapeworm)
Life cycle: Dog (definitive host) → Sheep/humans (intermediate host)

**Common Sites**
- Liver (70%)
- Lung (20%)
- Other organs (10%)

**Clinical Features**
- Slowly growing cyst
- Hepatomegaly
- RUQ discomfort
- Complications: Rupture (anaphylaxis, peritoneal seeding), infection, biliary communication

**Diagnosis**
- Serology (Casoni test, ELISA)
- Imaging: US/CT shows cyst with daughter cysts
- Pathognomonic: "Water lily sign" (floating membrane)
- Calcified cyst wall on X-ray

**Classification (WHO)**
- CE1-CE5 based on ultrasound appearance
- Active (CE1, CE2), Transitional (CE3), Inactive (CE4, CE5)

**Management**

**Medical (Albendazole)**
- Pre and post-surgery (reduces recurrence)
- Small, asymptomatic cysts
- Poor surgical candidate

**PAIR (Puncture, Aspiration, Injection, Re-aspiration)**
- Percutaneous drainage
- Inject scolicidal agent (hypertonic saline)
- Suitable for selected cases

**Surgery**
- Mainstay for large/complicated cysts
- Principles:
  1. Protect field (scolicidal agents)
  2. Aspirate cyst contents
  3. Remove germinal layer and daughter cysts
  4. Manage residual cavity (omentoplasty, capitonnage, marsupilization)
- Never incise cyst before killing scolices (risk of spillage and anaphylaxis)'),

('d0000009-0000-0000-0000-000000000009'::uuid, 'key_points', 4, 'Key Points',
'1. Ascariasis: Most common helminthic infection; obstruction managed conservatively first
2. Biliary ascariasis: Worm in CBD causing cholangitis - ERCP may be needed
3. Amoebic liver abscess: Metronidazole first; drain if large, left lobe, or not responding
4. Hydatid disease: Liver most common site; surgery with scolicidal protection
5. Never incise hydatid cyst without protecting field - risk of anaphylaxis/seeding
6. PAIR technique for selected hydatid cysts
7. Albendazole pre and post hydatid surgery reduces recurrence
8. Water lily sign on imaging suggests hydatid cyst
9. Guinea worm (Dracunculus): Slow extraction by winding on stick
10. Prevention through public health measures is key');

-- ARTICLE 10: Abdominal Tuberculosis
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000010-0000-0000-0000-000000000010'::uuid, 'introduction', 1, 'Introduction to Abdominal Tuberculosis', 
'Abdominal tuberculosis is a common extrapulmonary manifestation of TB, particularly in endemic regions. It can affect any part of the GI tract and peritoneum, often mimicking other conditions and presenting diagnostic challenges.

**Epidemiology**
- 1-3% of all TB cases
- Higher in HIV-positive patients
- Endemic in developing countries
- Often primary without pulmonary TB (50-70%)

**Pathogenesis**
1. Swallowing infected sputum (pulmonary TB)
2. Hematogenous spread from primary focus
3. Direct spread from adjacent organ
4. Ingestion of infected milk (M. bovis)

**Sites Affected**
- Ileocecal region (most common - 75%)
- Peritoneum (tuberculous peritonitis)
- Mesenteric lymph nodes
- Solid organs (liver, spleen)
- Esophagus, stomach (rare)'),

('d0000010-0000-0000-0000-000000000010'::uuid, 'content', 2, 'Clinical Types and Presentation',
'**Types of Intestinal TB**

1. **Ulcerative Type**
   - Circumferential ulcers (transverse to bowel axis)
   - Hemorrhage, perforation, fistula
   - May cause stricture on healing

2. **Hypertrophic Type**
   - Mass lesion (especially ileocecal)
   - Mimics carcinoma or Crohn disease
   - Causes obstruction

3. **Ulcerohypertrophic Type**
   - Combination of above
   - Most common type

**Tuberculous Peritonitis**
Types:
- Wet (ascitic) - most common
- Dry (plastic/adhesive)
- Fibrotic (loculated)

**Clinical Features**
- Chronic symptoms (weeks to months)
- Abdominal pain (85%)
- Weight loss, anorexia, fever
- Abdominal distension (ascites)
- Palpable mass (ileocecal)
- Alternating diarrhea and constipation
- Subacute intestinal obstruction

**Complications**
- Intestinal obstruction (most common surgical presentation)
- Perforation
- Hemorrhage
- Fistula formation
- Malabsorption'),

('d0000010-0000-0000-0000-000000000010'::uuid, 'content', 3, 'Diagnosis and Differential',
'**Laboratory Investigations**
- ESR elevated
- Anemia
- Hypoalbuminemia
- Mantoux test positive (limited value in endemic areas)
- Interferon-gamma release assays (IGRA)

**Imaging**
- CXR: Concurrent pulmonary TB in 25-50%
- AXR: Obstruction pattern, calcified nodes
- Barium studies: Pulled-up/contracted cecum, strictures, "string sign"
- CT scan: 
  - Ileocecal thickening
  - Lymphadenopathy with central necrosis (caseous)
  - Ascites
  - "Sandwich" sign (nodes between mesentery)

**Ascitic Fluid Analysis**
- Exudate (protein >3g/dL)
- Lymphocyte predominance
- ADA (adenosine deaminase) >36 U/L suggests TB
- AFB smear and culture (low yield)

**Tissue Diagnosis**
- Colonoscopy with biopsy (ileocecal lesions)
- Laparoscopy with biopsy (peritoneal TB)
- Histology: Caseating granulomas with Langerhans giant cells

**Differential Diagnosis**
- Crohn disease (main differential)
- Cecal carcinoma
- Appendicular mass
- Lymphoma
- Amoebiasis'),

('d0000010-0000-0000-0000-000000000010'::uuid, 'content', 4, 'Management',
'**Medical Treatment - Mainstay**
Anti-tubercular therapy (ATT):
- Intensive phase (2 months): HRZE (Isoniazid, Rifampicin, Pyrazinamide, Ethambutol)
- Continuation phase (4-7 months): HR

Duration: 6-12 months (typically 6 months for uncomplicated)

Response assessment:
- Symptom improvement in 2-4 weeks
- Weight gain
- Strictures may require longer treatment

**Surgical Indications**
1. Diagnosis uncertain (biopsy needed)
2. Complications:
   - Intestinal obstruction not responding to medical treatment
   - Perforation
   - Massive hemorrhage
   - Fistula
3. Fibrous strictures after ATT

**Surgical Procedures**
- Stricturoplasty (for short strictures)
- Resection with anastomosis (for longer strictures)
- Right hemicolectomy (for ileocecal mass if cancer cannot be excluded)
- Adhesiolysis for TB peritonitis with obstruction
- Bypass procedures (for unresectable disease)

**Important Principles**
- Start ATT preoperatively if TB suspected
- Continue ATT postoperatively
- Conservative management preferred when possible
- Surgery for complications only'),

('d0000010-0000-0000-0000-000000000010'::uuid, 'key_points', 5, 'Key Points',
'1. Ileocecal region is the most common site (75%)
2. Types: Ulcerative, hypertrophic, ulcerohypertrophic
3. Chronic symptoms: Weight loss, fever, abdominal pain, mass
4. Main differential: Crohn disease and cecal carcinoma
5. CT: Lymph nodes with central necrosis, pulled-up cecum
6. Ascitic fluid ADA >36 U/L suggests TB peritonitis
7. Histology: Caseating granulomas with Langerhans giant cells
8. Medical treatment (ATT) is the mainstay - 6-12 months
9. Surgery only for complications (obstruction, perforation, hemorrhage)
10. Start ATT preoperatively if TB suspected');

-- MCQs for Articles 8, 9, 10
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
-- Article 8: Typhoid
('d0000008-0000-0000-0000-000000000008'::uuid, 1, 'At what week of typhoid fever does intestinal perforation typically occur?', 'Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 6', 'C', 'Typhoid perforation typically occurs in the third week of illness when ulcers in the Peyer patches become transmural and perforate. This is during the period of ulceration and necrosis.'),
('d0000008-0000-0000-0000-000000000008'::uuid, 2, 'Where do typhoid perforations most commonly occur?', 'Duodenum', 'Jejunum', 'Terminal ileum', 'Cecum', 'Sigmoid colon', 'C', 'Typhoid perforations occur in the terminal ileum on the antimesenteric border where Peyer patches are concentrated. This is typically 20-40 cm from the ileocecal valve.'),
('d0000008-0000-0000-0000-000000000008'::uuid, 3, 'What is the safest surgical option for typhoid perforation in a malnourished patient with severe peritoneal contamination?', 'Primary closure', 'Wedge excision', 'Resection with primary anastomosis', 'Resection with ileostomy', 'Conservative management', 'D', 'Resection with ileostomy is the safest option for high-risk patients (malnourished, severe contamination, hemodynamic instability). It avoids the risk of anastomotic leak in compromised patients.'),
('d0000008-0000-0000-0000-000000000008'::uuid, 4, 'What is the mortality rate for typhoid perforation?', '1-5%', '10-30%', '50-60%', '70-80%', '90%', 'B', 'Mortality for typhoid perforation is 10-30%, higher in developing countries due to delayed presentation and limited resources. Early surgery improves outcomes.'),
('d0000008-0000-0000-0000-000000000008'::uuid, 5, 'Which investigation shows air under the diaphragm in typhoid perforation?', 'Supine abdominal X-ray', 'Erect chest X-ray', 'CT without contrast', 'Ultrasound', 'Barium meal', 'B', 'Erect chest X-ray is the best plain film to detect pneumoperitoneum (air under the diaphragm). This indicates perforation of a hollow viscus.'),

-- Article 9: Parasitosis
('d0000009-0000-0000-0000-000000000009'::uuid, 1, 'What is the most common surgical complication of ascariasis?', 'Perforation', 'Hemorrhage', 'Intestinal obstruction', 'Appendicitis', 'Volvulus', 'C', 'Intestinal obstruction from a bolus of worms is the most common surgical complication of ascariasis. It typically presents with colicky pain and may be palpable as a mass.'),
('d0000009-0000-0000-0000-000000000009'::uuid, 2, 'What is the initial management of ascaris intestinal obstruction?', 'Emergency surgery', 'Conservative management with anthelmintics', 'Endoscopic removal', 'Percutaneous drainage', 'Observation only', 'B', 'Initial management of ascaris obstruction is conservative: NG decompression, IV fluids, and anthelmintics (albendazole, mebendazole). Surgery is reserved for complete obstruction not responding to conservative measures.'),
('d0000009-0000-0000-0000-000000000009'::uuid, 3, 'What is the first-line treatment for amoebic liver abscess?', 'Surgical drainage', 'Percutaneous drainage', 'Metronidazole', 'Albendazole', 'Chloroquine', 'C', 'Metronidazole is the first-line treatment for amoebic liver abscess. Most abscesses respond to medical treatment alone. Drainage is indicated for large abscesses, left lobe location, or failure to respond.'),
('d0000009-0000-0000-0000-000000000009'::uuid, 4, 'What is the most common site of hydatid disease?', 'Lung', 'Liver', 'Brain', 'Bone', 'Kidney', 'B', 'The liver is the most common site of hydatid disease (70%), followed by lungs (20%). The cyst develops where the embryo lodges after passing through the intestinal wall.'),
('d0000009-0000-0000-0000-000000000009'::uuid, 5, 'What precaution is essential before incising a hydatid cyst?', 'Giving antibiotics', 'Using diathermy', 'Protecting field with scolicidal agent', 'Fasting the patient', 'Placing drains', 'C', 'Before incising a hydatid cyst, the field must be protected with scolicidal agents (hypertonic saline, cetrimide). Spillage of viable scolices can cause anaphylaxis and peritoneal seeding with recurrence.'),
('d0000009-0000-0000-0000-000000000009'::uuid, 6, 'What does PAIR stand for in hydatid management?', 'Puncture, Aspiration, Injection, Re-aspiration', 'Percutaneous, Aspiration, Incision, Resection', 'Puncture, Ablation, Irrigation, Removal', 'Primary, Aspiration, Injection, Removal', 'None of the above', 'A', 'PAIR stands for Puncture, Aspiration, Injection (of scolicidal agent), and Re-aspiration. It is a percutaneous technique for treating selected hydatid cysts without open surgery.'),
('d0000009-0000-0000-0000-000000000009'::uuid, 7, 'What is the water lily sign seen in?', 'Amoebic abscess', 'Hydatid cyst', 'Tuberculous abscess', 'Pyogenic abscess', 'Ascariasis', 'B', 'The water lily sign (floating collapsed membrane within fluid) is pathognomonic of hydatid cyst. It represents separation of the endocyst membrane from the pericyst.'),

-- Article 10: Abdominal TB
('d0000010-0000-0000-0000-000000000010'::uuid, 1, 'What is the most common site of intestinal tuberculosis?', 'Esophagus', 'Stomach', 'Jejunum', 'Ileocecal region', 'Rectum', 'D', 'The ileocecal region is the most common site of intestinal TB (75% of cases). This is because of abundant lymphoid tissue, physiological stasis, and increased contact time with bacilli.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 2, 'What is the main differential diagnosis for ileocecal tuberculosis?', 'Ulcerative colitis', 'Appendicitis', 'Crohn disease', 'Diverticulitis', 'Colorectal cancer only', 'C', 'Crohn disease is the main differential diagnosis for ileocecal TB. Both can cause strictures, fistulae, and skip lesions. Histology (caseating vs non-caseating granulomas) helps differentiate.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 3, 'What histological finding is characteristic of intestinal TB?', 'Non-caseating granulomas', 'Caseating granulomas with Langerhans giant cells', 'Crypt abscesses', 'Reed-Sternberg cells', 'Signet ring cells', 'B', 'Caseating granulomas with Langerhans giant cells are characteristic of TB. Non-caseating granulomas are seen in Crohn disease. Central caseation (cheese-like necrosis) is the key differentiating feature.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 4, 'What is the mainstay of treatment for abdominal TB?', 'Surgery', 'Steroids', 'Anti-tubercular therapy (ATT)', 'Antibiotics', 'Immunotherapy', 'C', 'Anti-tubercular therapy (ATT) is the mainstay of treatment for abdominal TB. Surgery is reserved for complications (obstruction, perforation, hemorrhage) or diagnostic uncertainty. Most patients respond to medical treatment.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 5, 'What level of ascitic fluid ADA suggests tuberculous peritonitis?', 'Greater than 10 U/L', 'Greater than 20 U/L', 'Greater than 36 U/L', 'Greater than 100 U/L', 'Greater than 500 U/L', 'C', 'Ascitic fluid ADA (adenosine deaminase) level >36 U/L has high sensitivity and specificity for tuberculous peritonitis. ADA is an enzyme released by activated T lymphocytes.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 6, 'What CT finding suggests tuberculous lymphadenopathy?', 'Uniformly enhancing nodes', 'Lymph nodes with central necrosis', 'Calcified nodes only', 'No visible nodes', 'Small non-enhancing nodes', 'B', 'Lymph nodes with central necrosis (low attenuation center with peripheral enhancement) are characteristic of tuberculous lymphadenopathy. This represents central caseation.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 7, 'What is the typical duration of ATT for abdominal TB?', '2 months', '4 months', '6-12 months', '18 months', '24 months', 'C', 'ATT for abdominal TB is typically given for 6-12 months (usually 6 months for uncomplicated cases). Strictures may require longer treatment. The intensive phase is 2 months (HRZE), followed by continuation phase.'),
('d0000010-0000-0000-0000-000000000010'::uuid, 8, 'Which surgical indication is most common in abdominal TB?', 'Perforation', 'Hemorrhage', 'Intestinal obstruction', 'Fistula', 'Diagnostic biopsy', 'C', 'Intestinal obstruction not responding to medical treatment is the most common surgical indication in abdominal TB. It may be due to strictures, adhesions, or hypertrophic disease.');
