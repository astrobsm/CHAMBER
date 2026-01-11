-- Surgery 4 MCQ Question Bank - Batch 50
-- Section H: Special Topics - Comprehensive Review
-- 40 Questions (Mixed topics from all Surgery 4 sections)

-- Topic: Comprehensive Surgical Review
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000050-0000-0000-0000-000000000050', 'Comprehensive Surgical Review', 'a0000004-0000-0000-0000-000000000004', 'Comprehensive review covering vascular, cardiothoracic, trauma, pediatric, urologic, oncologic, plastic, and neurosurgical topics', 50, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A patient with an ankle-brachial index of 0.5 has:',
 'Normal perfusion', 'Mild peripheral arterial disease', 'Moderate peripheral arterial disease', 'Severe peripheral arterial disease', 'Incompressible vessels',
 'D', 'ABI interpretation: >0.9 normal, 0.71-0.9 mild PAD, 0.41-0.7 moderate PAD, <0.4 severe PAD. ABI 0.5 indicates severe disease with significant ischemia. >1.3 suggests incompressible calcified vessels (falsely elevated).', 'medium', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of lower gastrointestinal bleeding in adults is:',
 'Colon cancer', 'Diverticulosis', 'Inflammatory bowel disease', 'Hemorrhoids', 'Angiodysplasia',
 'B', 'Lower GI bleeding causes in adults: diverticulosis most common (~40%), followed by hemorrhoids, angiodysplasia (especially elderly), colorectal cancer, IBD. Diverticular bleeding often painless, brisk, and stops spontaneously.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The tetralogy of Fallot includes all EXCEPT:',
 'Ventricular septal defect', 'Overriding aorta', 'Right ventricular hypertrophy', 'Atrial septal defect', 'Pulmonary stenosis',
 'D', 'Tetralogy of Fallot: VSD, overriding aorta, pulmonary stenosis, right ventricular hypertrophy. Most common cyanotic congenital heart disease. ASD is not part of tetralogy (would be pentalogy of Fallot if present).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most lethal solid organ injury in blunt abdominal trauma is:',
 'Kidney', 'Liver', 'Spleen', 'Pancreas', 'Adrenal gland',
 'B', 'Liver injury: most lethal solid organ injury (mortality up to 10-20% in severe cases). Large blood volume, difficult to compress. Spleen most commonly injured (but manageable). Liver injury grading important for management decisions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'Hypertrophic pyloric stenosis typically presents at:',
 'Birth', 'Two to six weeks of age', 'Six months of age', 'One year of age', 'Two years of age',
 'B', 'Hypertrophic pyloric stenosis: typically presents 2-6 weeks (peak 3-4 weeks). Nonbilious projectile vomiting, olive-shaped mass in RUQ. Male predominance. Hypochloremic hypokalemic metabolic alkalosis. Ultrasound diagnostic. Pyloromyotomy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of kidney stone is:',
 'Uric acid', 'Calcium oxalate', 'Struvite', 'Cystine', 'Calcium phosphate',
 'B', 'Kidney stone composition: calcium oxalate ~75-80% (most common), calcium phosphate ~15%, uric acid ~5-10%, struvite ~5-10% (infection stones), cystine ~1% (genetic). Stone analysis guides prevention.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The Virchow node is located in the:',
 'Right axilla', 'Left supraclavicular fossa', 'Right inguinal region', 'Left axilla', 'Submandibular region',
 'B', 'Virchow node (Troisier sign): left supraclavicular lymphadenopathy. Suggests abdominal malignancy (gastric cancer classically) via thoracic duct. Right supraclavicular suggests mediastinal/esophageal/lung malignancy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most appropriate initial management of a tension pneumothorax is:',
 'Chest X-ray', 'CT scan', 'Needle decompression', 'Intubation', 'Observation',
 'C', 'Tension pneumothorax: clinical diagnosis (respiratory distress, hypotension, distended neck veins, absent breath sounds, tracheal deviation). Immediate needle decompression (2nd ICS MCL) followed by tube thoracostomy. Never delay for imaging.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A breast mass with irregular margins and spiculations on mammogram is most suspicious for:',
 'Fibroadenoma', 'Cyst', 'Malignancy', 'Fat necrosis', 'Hamartoma',
 'C', 'Mammographic findings of malignancy: irregular/spiculated margins, heterogeneous density, microcalcifications (pleomorphic, clustered), architectural distortion, asymmetric density. Fibroadenomas are typically well-circumscribed. Biopsy required.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The rule of nines for burn surface area assigns what percentage to each lower extremity in adults:',
 '9%', '18%', '14%', '27%', '36%',
 'B', 'Rule of nines (adults): each arm 9%, each leg 18%, anterior trunk 18%, posterior trunk 18%, head 9%, perineum 1%. Total 100%. Children have larger head proportionally. Used for fluid resuscitation calculations.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The Glasgow Coma Scale consists of:',
 'Eye and verbal response only', 'Eye verbal and motor response', 'Motor response only', 'Pupillary response and motor', 'Blood pressure and consciousness',
 'B', 'GCS components: Eye opening (1-4), Verbal response (1-5), Motor response (1-6). Total 3-15. Severe TBI <9, moderate 9-12, mild 13-15. Motor score has best prognostic value. Limitations: intubated, sedated, orbital injuries.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A pulsatile abdominal mass in a 65-year-old with sudden back pain suggests:',
 'Pancreatitis', 'Ruptured or symptomatic abdominal aortic aneurysm', 'Renal colic', 'Bowel obstruction', 'Aortic dissection',
 'B', 'Symptomatic AAA triad: abdominal/back pain, pulsatile mass, hypotension (if ruptured). Classic presentation but not always present. Ruptured AAA is surgical emergency. CT if stable, OR if unstable. High mortality without intervention.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most common organism causing surgical site infections is:',
 'E. coli', 'Staphylococcus aureus', 'Pseudomonas aeruginosa', 'Enterococcus', 'Streptococcus pyogenes',
 'B', 'SSI microbiology: S. aureus most common overall, MRSA increasingly prevalent. GI surgery: gram negatives, anaerobes. Source typically patient skin flora. Clean procedures: mainly staphylococci. Proper skin prep and prophylaxis reduce SSI.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The Cushing reflex (hypertension and bradycardia) indicates:',
 'Shock', 'Increased intracranial pressure', 'Myocardial infarction', 'Hemorrhage', 'Spinal cord injury',
 'B', 'Cushing reflex/triad: hypertension, bradycardia, irregular respirations. Late sign of severely elevated ICP and brainstem compression. Ominous sign requiring immediate intervention. Due to brainstem ischemia triggering sympathetic response.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A thyroid nodule with microcalcifications on ultrasound is suspicious for:',
 'Benign cyst', 'Papillary thyroid carcinoma', 'Multinodular goiter', 'Thyroiditis', 'Colloid nodule',
 'B', 'Suspicious thyroid US features: microcalcifications (psammoma bodies - papillary carcinoma), hypoechoic, solid, irregular margins, taller than wide, extrathyroidal extension. Fine-needle aspiration needed for suspicious nodules.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most sensitive indicator of intravascular volume status in the ICU is:',
 'Central venous pressure', 'Urine output', 'Dynamic indices like pulse pressure variation', 'Blood pressure', 'Heart rate',
 'C', 'Volume status assessment: dynamic indices (PPV, SVV) best predict fluid responsiveness in mechanically ventilated patients. Static measures (CVP, PAOP) less reliable. Integrate with clinical exam, urine output, lactate. Point-of-care echo helpful.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'Phlegmasia cerulea dolens is characterized by:',
 'White swollen leg', 'Blue painful swollen leg with impending venous gangrene', 'Chronic leg swelling', 'Arterial occlusion', 'Cellulitis',
 'B', 'Phlegmasia cerulea dolens: massive iliofemoral DVT causing venous gangrene. Blue, painful, swollen leg, may lead to compartment syndrome and arterial compromise. Emergency requiring anticoagulation, often thrombolysis/thrombectomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most appropriate management of a healthy 25-year-old with uncomplicated appendicitis is:',
 'Antibiotics only', 'Laparoscopic appendectomy', 'Open appendectomy', 'Observation', 'CT-guided drainage',
 'B', 'Uncomplicated appendicitis: laparoscopic appendectomy is standard (less pain, faster recovery, lower wound infection). Antibiotics-first is alternative in select patients but appendectomy remains definitive. Open appendectomy still appropriate.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The Breslow depth is most important in staging which cancer:',
 'Lung cancer', 'Melanoma', 'Breast cancer', 'Colon cancer', 'Prostate cancer',
 'B', 'Breslow depth: vertical thickness of melanoma from top of granular layer to deepest invasive cell. Most important prognostic factor in localized melanoma. Determines staging, margin width, need for sentinel node biopsy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'Necrotizing fasciitis requires:',
 'Antibiotics only', 'Immediate surgical debridement and broad-spectrum antibiotics', 'Hyperbaric oxygen alone', 'Observation and serial exams', 'CT scan before any treatment',
 'B', 'Necrotizing fasciitis: surgical emergency. Immediate radical debridement is definitive treatment. Broad-spectrum antibiotics (cover gram positive, negative, anaerobes). May need multiple debridements. High mortality without prompt surgery.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The FAST exam evaluates for fluid in which locations:',
 'Chest only', 'Pericardium and peritoneum including perihepatic perisplenic and pelvis', 'Retroperitoneum', 'Mediastinum', 'Subcutaneous tissue',
 'B', 'FAST exam views: RUQ (Morrisons pouch/hepatorenal), LUQ (perisplenic/splenorenal), pelvic (Pouch of Douglas/rectovesical), subxiphoid (pericardium). Extended FAST adds thorax for hemothorax. Does not assess retroperitoneum.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A hernia that cannot be reduced and has compromised blood supply is classified as:',
 'Reducible', 'Incarcerated', 'Strangulated', 'Sliding', 'Richter',
 'C', 'Hernia classification: reducible (contents return to abdomen), incarcerated (irreducible but viable), strangulated (incarcerated with vascular compromise). Strangulation is emergency requiring urgent surgery. Signs: severe pain, erythema, systemic illness.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most common complication of percutaneous tracheostomy is:',
 'Death', 'Hemorrhage', 'Tracheal stenosis', 'Aspiration', 'Infection',
 'B', 'Percutaneous tracheostomy complications: bleeding most common (usually minor, peristomal). Other: false passage, posterior tracheal wall injury, pneumothorax. Late: stenosis, tracheoinnominate fistula. Overall safe procedure.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The dumping syndrome after gastrectomy is characterized by:',
 'Constipation only', 'Vasomotor and GI symptoms after eating due to rapid gastric emptying', 'Delayed gastric emptying', 'Bile reflux only', 'Weight gain',
 'B', 'Dumping syndrome: rapid gastric emptying. Early dumping (15-30 min): GI (cramping, diarrhea) and vasomotor (flushing, tachycardia, syncope) from osmotic fluid shifts. Late dumping (1-3 h): reactive hypoglycemia. Dietary modification helps.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The Parkland formula for burn resuscitation uses:',
 '2 mL crystalloid per kg per percent burn', '4 mL crystalloid per kg per percent burn over 24 hours', '1 L per hour', '500 mL per hour', '10 mL per kg per percent burn',
 'B', 'Parkland formula: 4 mL x weight (kg) x %TBSA burn over 24 hours. Half in first 8 hours from time of burn, remaining half over next 16 hours. Titrate to urine output 0.5-1 mL/kg/hr. Lactated Ringers preferred.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A child with bilious vomiting in the first few days of life most likely has:',
 'Pyloric stenosis', 'Malrotation with midgut volvulus', 'Gastroesophageal reflux', 'Cow milk allergy', 'Overfeeding',
 'B', 'Bilious vomiting in neonate: surgical emergency until proven otherwise. Malrotation with midgut volvulus most concerning - can cause intestinal necrosis rapidly. Upper GI series diagnostic. Duodenal atresia (double bubble), other atresias also cause.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most common location for a pressure ulcer is:',
 'Heels', 'Occiput', 'Sacrum', 'Ischium', 'Greater trochanter',
 'C', 'Pressure ulcer locations: sacrum most common (~30%), followed by heels, ischium (sitting), trochanter, occiput. Risk factors: immobility, incontinence, malnutrition, impaired sensation. Prevention: repositioning, pressure relief, skin care.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The lethal triad in trauma consists of:',
 'Hypotension hemorrhage hypoxia', 'Hypothermia acidosis and coagulopathy', 'Sepsis ARDS and DIC', 'Anemia hypoxia and hypercarbia', 'Hypoglycemia hyponatremia and hypothermia',
 'B', 'Trauma triad of death: hypothermia, acidosis, coagulopathy. Self-perpetuating cycle. All worsen hemorrhage. Damage control surgery addresses by limiting operative time, allowing ICU resuscitation before definitive repair. Warm, correct acidosis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'A patient with an epidural hematoma classically has:',
 'Continuous declining consciousness', 'Lucid interval followed by deterioration', 'No neurological symptoms', 'Gradual chronic symptoms', 'Bilateral weakness',
 'B', 'Epidural hematoma: classically lucid interval (brief LOC, recovery, then deterioration as hematoma expands). Due to arterial bleeding (middle meningeal artery). Lens-shaped on CT. Surgical emergency for significant hematomas.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The characteristic radiographic finding of sigmoid volvulus is:',
 'Rigler sign', 'Coffee bean or bent inner tube sign', 'Double bubble sign', 'Birds beak sign on barium enema', 'Pneumoperitoneum',
 'B', 'Sigmoid volvulus X-ray: large bent inner tube/coffee bean sign (dilated loop of sigmoid), absent haustra, loss of sigmoid shadow. Barium enema shows birds beak at site of twist. CT helpful. Management: endoscopic decompression if viable, surgery for gangrenous.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'Sentinel lymph node biopsy is used in staging of:',
 'Colon cancer only', 'Breast cancer and melanoma', 'Lung cancer', 'Pancreatic cancer', 'All GI cancers',
 'B', 'Sentinel node biopsy: identifies first draining lymph node. Breast cancer and melanoma primarily. Negative SLN predicts negative basin (avoids complete lymphadenectomy). Blue dye and/or radiotracer used for localization.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of small bowel obstruction in developed countries is:',
 'Hernia', 'Adhesions', 'Tumor', 'Crohn disease', 'Volvulus',
 'B', 'SBO etiology in developed countries: adhesions ~75% (prior surgery), hernias ~15%, tumors ~10%, other (Crohn, intussusception, gallstone ileus). In developing countries, hernias more common. History of prior surgery important.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'Zone II of the neck contains the:',
 'Thoracic outlet', 'Carotid bifurcation and jugular vein', 'Skull base', 'Clavicle', 'Vertebral arteries only',
 'B', 'Neck zones: Zone I (thoracic inlet to cricoid), Zone II (cricoid to angle of mandible - carotid bifurcation, jugular, larynx, pharynx), Zone III (angle of mandible to skull base). Zone II most accessible surgically.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The Whipple procedure is performed for:',
 'Gastric cancer only', 'Periampullary tumors including pancreatic head cancer', 'Liver metastases', 'Colon cancer', 'Cholecystitis',
 'B', 'Pancreaticoduodenectomy (Whipple): resection of pancreatic head, duodenum, distal common bile duct, gallbladder, distal stomach (classic). Indications: pancreatic head/periampullary cancers, chronic pancreatitis. Complex reconstruction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most important factor determining prognosis in colon cancer is:',
 'Tumor grade', 'Tumor size', 'Lymph node status', 'Patient age', 'Tumor location',
 'C', 'Colon cancer prognosis: lymph node status (N stage) most important prognostic factor. Positive nodes significantly worsen prognosis and indicate need for adjuvant chemotherapy. Other factors: T stage, grade, MSI status, CEA.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The most appropriate management of a stable patient with a contained retroperitoneal hematoma from blunt abdominal trauma is:',
 'Immediate exploration', 'Non-operative management with serial exams and imaging', 'Angioembolization always', 'Damage control laparotomy', 'Observation without imaging',
 'B', 'Retroperitoneal hematoma in blunt trauma: if contained and patient stable, non-operative management preferred (especially zone II - renal). Serial exams, repeat imaging. Expanding, pulsatile, or uncontained may need intervention. Avoid opening Gerotas fascia unless necessary.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The principle of damage control surgery includes:',
 'Complete definitive repair immediately', 'Abbreviated surgery for hemorrhage and contamination control with delayed definitive repair', 'No surgery for trauma', 'Only conservative management', 'Extended surgery to fix everything',
 'B', 'Damage control surgery: abbreviated initial operation (stop bleeding, control contamination, temporary closure), ICU resuscitation (correct triad: hypothermia, acidosis, coagulopathy), planned return for definitive repair. For severely injured patients who would not survive long operation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000050-0000-0000-0000-000000000050', 'a0000004-0000-0000-0000-000000000004',
 'The best time to perform cleft lip repair is:',
 'Immediately at birth', 'Around 3 months of age following rule of 10s', 'After 1 year', 'After 5 years', 'Only in adulthood',
 'B', 'Cleft lip repair timing: rule of 10s - 10 weeks old, 10 pounds weight, hemoglobin 10 g/dL. Typically around 3 months. Cleft palate repair: 9-12 months (before speech development). Earlier surgery allows better speech development.', 'medium', 'knowledge');
