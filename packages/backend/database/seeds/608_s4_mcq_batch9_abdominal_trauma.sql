-- Surgery 4 MCQ Question Bank - Batch 9
-- Section B: Trauma & Emergency Surgery - Abdominal Trauma
-- 40 Questions

-- Topic: Abdominal Trauma
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000009-0000-0000-0000-000000000009', 'Abdominal Trauma', 'a0000004-0000-0000-0000-000000000004', 'Blunt and penetrating abdominal trauma assessment and management', 9, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly injured organ in blunt abdominal trauma is:',
 'Liver', 'Spleen', 'Kidney', 'Small bowel', 'Pancreas',
 'B', 'The spleen is the most commonly injured organ in blunt abdominal trauma (40-55%), followed by liver (35-45%). The solid organs are vulnerable due to their fixed positions.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly injured organ in penetrating abdominal trauma is:',
 'Spleen', 'Liver', 'Kidney', 'Large bowel', 'Pancreas',
 'B', 'The liver is most commonly injured in penetrating trauma due to its large size. Small bowel is also commonly injured. In stab wounds: liver > small bowel > colon.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'FAST examination assesses for free fluid in all the following areas EXCEPT:',
 'Hepatorenal recess', 'Splenorenal recess', 'Pelvis', 'Pericardium', 'Retroperitoneum',
 'E', 'FAST examines: hepatorenal (Morrisons pouch), splenorenal recess, pelvis (Pouch of Douglas/rectovesical), and pericardium. It cannot reliably detect retroperitoneal fluid.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'A positive FAST in hemodynamically unstable blunt trauma patient indicates:',
 'Need for CT scan', 'Need for diagnostic peritoneal lavage', 'Immediate laparotomy', 'Observation', 'Discharge home',
 'C', 'Positive FAST + hemodynamic instability = immediate laparotomy. No further imaging needed. Source of bleeding is identified and controlled surgically.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'CT scan for blunt abdominal trauma is indicated in:',
 'All trauma patients', 'Hemodynamically stable patients requiring further evaluation', 'Hemodynamically unstable patients', 'Minor trauma only', 'Only penetrating trauma',
 'B', 'CT scan is the investigation of choice in hemodynamically STABLE patients requiring further evaluation. It provides detailed organ injury grading and can detect retroperitoneal injury.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Diagnostic peritoneal lavage (DPL) is positive when:',
 'Any fluid is aspirated', 'RBC greater than 100000/mm3 or WBC greater than 500/mm3', 'Clear lavage fluid', 'Only gross blood', 'Lymphocytes present',
 'B', 'Positive DPL: gross blood/enteric contents on aspiration, or RBC >100,000/mm3, WBC >500/mm3, amylase elevation, bile/food particles, or bacteria in lavage fluid.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Current indications for DPL include:',
 'First-line investigation for all trauma', 'When FAST and CT are unavailable or equivocal in unstable patient', 'Only for penetrating trauma', 'Never indicated anymore', 'For hemodynamically stable patients',
 'B', 'DPL is now rarely used but remains useful when FAST/CT unavailable, FAST equivocal in unstable patient, or for detection of hollow viscus injury in selected cases.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Non-operative management of splenic injury is appropriate when:',
 'All splenic injuries', 'Hemodynamically stable patient without other operative indications', 'Only Grade 1 injuries', 'All unstable patients', 'Only children',
 'B', 'NOM is standard for hemodynamically stable patients with blunt splenic injury (all grades) without peritonitis or other operative indications. Requires monitoring and possible angioembolization.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Splenic artery embolization is indicated in:',
 'All splenic injuries', 'High-grade injuries contrast extravasation or pseudoaneurysm with hemodynamic stability', 'Only Grade 1-2 injuries', 'Hemodynamically unstable patients', 'As replacement for surgery',
 'B', 'Angioembolization is adjunct to NOM for high-grade injuries (Grade III-V), contrast blush, pseudoaneurysm, or ongoing transfusion needs in hemodynamically stable or stabilized patients.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'The AAST grade for splenic laceration 3 cm depth is:',
 'Grade I', 'Grade II', 'Grade III', 'Grade IV', 'Grade V',
 'C', 'AAST splenic injury: I= <1cm laceration/<10% subcapsular hematoma, II= 1-3cm/<50% subcapsular, III= >3cm or involving trabecular vessels, IV= involving segmental/hilar vessels, V= shattered/devascularized.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Overwhelming post-splenectomy infection (OPSI) risk is highest in:',
 'All age groups equally', 'Children under 5 and immunocompromised', 'Adults only', 'Elderly only', 'Athletes only',
 'B', 'OPSI risk is highest in children <5 years, first 2 years post-splenectomy, and immunocompromised. Encapsulated organisms (S. pneumoniae, H. influenzae, N. meningitidis) are causative.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Post-splenectomy vaccination should include all EXCEPT:',
 'Pneumococcal vaccine', 'Haemophilus influenzae type b vaccine', 'Meningococcal vaccine', 'Varicella vaccine', 'Influenza vaccine',
 'D', 'Post-splenectomy vaccines: pneumococcal (PCV13 then PPSV23), Hib, meningococcal (MCV4 and MenB), and annual influenza. Varicella is not specifically required for asplenia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Grade IV liver injury is characterized by:',
 'Simple laceration less than 1 cm', 'Laceration 1-3 cm depth', 'Parenchymal disruption of 25-75 percent of lobe', 'Hilar vascular injury', 'Subcapsular hematoma only',
 'C', 'AAST liver injury: I= <1cm laceration/<10% subcapsular, II= 1-3cm/<50% subcapsular, III= >3cm/>50% subcapsular, IV= 25-75% lobe disruption, V= >75% lobe/juxtahepatic veins, VI= hepatic avulsion.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Non-operative management success rate for blunt liver injury is approximately:',
 '30 percent', '50 percent', '70-85 percent', '95 percent', '100 percent',
 'C', 'NOM is successful in 70-85% of blunt liver injuries in hemodynamically stable patients. Higher grade injuries and contrast extravasation may benefit from angioembolization.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Damage control surgery for liver injury includes:',
 'Complete anatomical resection', 'Perihepatic packing and temporary closure', 'Hepaticojejunostomy', 'Hepatic transplant', 'Prolonged operative time',
 'B', 'Damage control: hemorrhage control (packing, topical agents, vessel ligation), temporary closure, ICU resuscitation, then planned re-exploration for definitive treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'The Pringle maneuver involves:',
 'Clamping the IVC', 'Clamping the hepatoduodenal ligament', 'Clamping the aorta', 'Packing the liver', 'Mobilizing the spleen',
 'B', 'Pringle maneuver is compression/clamping of hepatoduodenal ligament (portal vein, hepatic artery, CBD) to temporarily control hepatic hemorrhage. Safe for 60-90 minutes with releases.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Delayed complications of liver injury include all EXCEPT:',
 'Biloma', 'Hepatic abscess', 'Hemobilia', 'Splenic abscess', 'Arteriovenous fistula',
 'D', 'Delayed hepatic complications: biloma, abscess, biliary fistula, hemobilia, pseudoaneurysm, AV fistula, and hepatic necrosis. Splenic abscess is not a liver injury complication.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Seat belt sign on the abdomen is associated with:',
 'No specific injury pattern', 'Lumbar spine fracture and hollow viscus injury', 'Only superficial injury', 'Pelvic fracture', 'Upper limb injury',
 'B', 'Seat belt sign (ecchymosis from lap belt) is associated with lumbar spine (Chance fracture) and hollow viscus (small bowel, mesentery) injuries. High index of suspicion needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'The handlebar injury in children typically causes:',
 'Liver laceration', 'Duodenal or pancreatic injury', 'Splenic rupture', 'Kidney contusion', 'Bladder rupture',
 'B', 'Handlebar injuries cause focal trauma to epigastric region, resulting in duodenal hematoma, duodenal perforation, or pancreatic injury (transection over spine).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Duodenal hematoma in children is best managed by:',
 'Immediate surgery', 'Conservative management with NG decompression and TPN', 'Endoscopic drainage', 'Antibiotics only', 'Observation without intervention',
 'B', 'Duodenal hematoma is usually managed conservatively: NG decompression, IV fluids/TPN, serial imaging. Most resolve in 2-3 weeks. Surgery only for perforation or non-resolution.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'CT finding most suggestive of small bowel injury is:',
 'Normal appearance', 'Free fluid without solid organ injury', 'Splenic laceration', 'Hepatic contusion', 'Renal hematoma',
 'B', 'Free fluid without solid organ injury, bowel wall thickening, mesenteric hematoma/stranding, and extraluminal air suggest hollow viscus injury. Serial examination if equivocal.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Stab wound to the anterior abdomen with evisceration requires:',
 'Immediate laparotomy', 'Wound exploration only', 'CT scan first', 'Observation only', 'Replacement and observation',
 'A', 'Evisceration of bowel or omentum is indication for laparotomy. Contents should be covered with moist dressing, not replaced. Associated bowel injury is common.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Selective non-operative management of anterior abdominal stab wounds includes:',
 'All stab wounds', 'Serial clinical examination in reliable patients without peritonitis', 'Only tangential wounds', 'All gunshot wounds', 'Only posterior wounds',
 'B', 'Selective NOM is appropriate for stable patients without peritonitis, evisceration, or free air. Requires serial examination by same team. Local wound exploration can assess fascial breach.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Gunshot wounds to the abdomen are generally managed by:',
 'Selective observation', 'Exploratory laparotomy', 'CT scan in all cases first', 'Local wound exploration', 'Antibiotics only',
 'B', 'GSW to abdomen generally require laparotomy due to high-energy transfer and likely organ injury. Exceptions: tangential wounds, selected right upper quadrant wounds in stable patients.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Retroperitoneal hematoma from blunt trauma in Zone 1 (central) should be:',
 'Observed', 'Explored at laparotomy', 'Embolized only', 'Ignored', 'Drained percutaneously',
 'B', 'Zone 1 (central/midline) retroperitoneal hematomas from blunt trauma should be explored due to risk of major vascular or pancreaticoduodenal injury.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Zone 2 (lateral/perirenal) retroperitoneal hematoma from blunt trauma:',
 'Always explored', 'Not explored unless expanding or pulsatile', 'Always embolized', 'Requires nephrectomy', 'Ignored completely',
 'B', 'Zone 2 blunt hematomas are usually not explored (kidney self-tamponades). Explore if expanding, pulsatile, or associated with urine extravasation. Penetrating Zone 2 usually explored.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Zone 3 (pelvic) retroperitoneal hematoma from blunt trauma:',
 'Should be explored', 'Should NOT be opened - pelvic stabilization and angiography preferred', 'Requires colostomy', 'Requires cystoscopy', 'Needs laparoscopy',
 'B', 'Zone 3 blunt pelvic hematomas should NOT be opened (releases tamponade). Management: pelvic stabilization (binder/external fixator) and angioembolization for arterial bleeding.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Pancreatic injury is best evaluated by:',
 'Plain abdominal X-ray', 'CT scan with serum amylase lipase', 'Ultrasound only', 'DPL', 'Clinical examination only',
 'B', 'CT scan is primary imaging (may miss early injury). MRCP or ERCP for ductal evaluation. Serum amylase/lipase may be elevated but is not specific. Serial imaging may be needed.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Main pancreatic duct injury (AAST Grade III or higher) usually requires:',
 'Conservative management', 'Surgical intervention', 'Endoscopic stenting only in all cases', 'Observation', 'Antibiotics only',
 'B', 'Ductal injury requires intervention. Distal injuries: distal pancreatectomy (with/without splenectomy). Proximal injuries: drainage vs pancreaticoduodenectomy. ERCP stenting may be option for some.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Bladder rupture is classified as:',
 'Complete and incomplete', 'Intraperitoneal and extraperitoneal', 'Simple and complex', 'Upper and lower', 'Anterior and posterior',
 'B', 'Bladder rupture: intraperitoneal (requires surgical repair) or extraperitoneal (usually managed with catheter drainage alone). Combination injuries may occur.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Intraperitoneal bladder rupture is diagnosed by:',
 'Clinical examination', 'CT cystogram showing contrast in peritoneal cavity', 'Plain X-ray', 'Blood tests', 'Ultrasound only',
 'B', 'CT cystogram (with bladder distension by contrast) shows contrast in peritoneal cavity. Intraperitoneal rupture requires surgical repair due to urine peritonitis risk.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Urethral injury should be suspected when:',
 'Any pelvic fracture', 'Blood at meatus perineal hematoma or high-riding prostate', 'Abdominal pain only', 'Arm fracture', 'No specific signs',
 'B', 'Blood at urethral meatus, inability to void, perineal/scrotal hematoma, and high-riding or non-palpable prostate suggest urethral injury. Do NOT catheterize before urethrography.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Retrograde urethrogram is performed before catheterization when:',
 'All trauma patients', 'Urethral injury is suspected', 'Bladder injury is suspected', 'No indication', 'Only in women',
 'B', 'RUG should be performed before urethral catheterization if urethral injury is suspected to avoid converting partial injury to complete or creating false passage.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'REBOA (Resuscitative Endovascular Balloon Occlusion of Aorta) is used for:',
 'Hemorrhage control in selected cases of non-compressible torso hemorrhage', 'All trauma resuscitation', 'Venous bleeding only', 'Head injury', 'Upper limb injury',
 'A', 'REBOA provides temporary hemorrhage control for non-compressible torso hemorrhage (abdominal, pelvic) by aortic balloon occlusion, as a bridge to definitive treatment.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Diaphragmatic injury is best diagnosed by:',
 'Chest X-ray always', 'Thoracoscopy or laparoscopy if CT equivocal', 'Physical examination alone', 'Ultrasound only', 'MRI only',
 'B', 'Diaphragmatic injury can be missed on CT. Laparoscopy or thoracoscopy provides definitive diagnosis and allows repair. Higher index of suspicion for left-sided and penetrating injuries.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Delayed presentation of traumatic diaphragmatic hernia may present with:',
 'Asymptomatic finding', 'Bowel obstruction or strangulation', 'Pulmonary embolism', 'Pancreatitis', 'Cholecystitis',
 'B', 'Missed diaphragmatic injury can present years later with bowel obstruction, strangulation, or respiratory compromise as abdominal contents herniate into chest.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Abdominal compartment syndrome is defined as sustained intra-abdominal pressure greater than:',
 '10 mmHg', '15 mmHg', '20 mmHg with new organ dysfunction', '30 mmHg', '5 mmHg',
 'C', 'Intra-abdominal hypertension is IAP >12 mmHg. Abdominal compartment syndrome is sustained IAP >20 mmHg with new organ dysfunction. Measured via bladder catheter.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000009-0000-0000-0000-000000000009', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of abdominal compartment syndrome is:',
 'Observation', 'Decompressive laparotomy', 'Diuretics only', 'Paracentesis only', 'Increased IV fluids',
 'B', 'Decompressive laparotomy with temporary abdominal closure is definitive treatment for ACS. Medical measures (sedation, neuromuscular blockade, NG decompression) may temporize.', 'medium', 'application');
