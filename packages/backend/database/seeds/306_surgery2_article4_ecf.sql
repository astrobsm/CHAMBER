-- Surgery 2 Article 4: Enterocutaneous Fistulae - Sections and MCQs

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000004-0000-0000-0000-000000000004'::uuid, 'introduction', 1, 'Introduction to Enterocutaneous Fistulae', 
'An enterocutaneous fistula (ECF) is an abnormal communication between the gastrointestinal tract and the skin. It represents one of the most challenging conditions in surgical practice, associated with significant morbidity, mortality, and healthcare costs.

**Definition**
A fistula is defined as an abnormal communication between two epithelialized surfaces. ECF specifically connects intestinal lumen to skin surface.

**Classification**

**By Output**
- Low output: <200 mL/24 hours
- Moderate output: 200-500 mL/24 hours
- High output: >500 mL/24 hours

**By Anatomy**
- Simple: Direct tract, short (<2 cm), single opening
- Complex: Multiple openings, associated abscess, discontinuity of bowel

**By Origin**
- Gastric, duodenal, jejunal, ileal, colonic

**Etiology**
1. **Postoperative (75-85%)**
   - Anastomotic leak (most common cause)
   - Inadvertent enterotomy
   - Ischemia of anastomosis
2. **Spontaneous (15-25%)**
   - Crohn disease
   - Malignancy
   - Radiation enteritis
   - Diverticular disease
   - Appendicitis
   - Tuberculosis

**Mortality**
- Historical mortality 40-60%
- Modern mortality 5-20% with optimal management
- Major causes of death: Sepsis, electrolyte imbalance, malnutrition'),

('d0000004-0000-0000-0000-000000000004'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Define and classify enterocutaneous fistulae by output, anatomy, and origin
2. Identify the common causes of ECF
3. Recognize factors affecting spontaneous closure (FRIENDS mnemonic)
4. Understand the pathophysiology of fluid, electrolyte, and nutritional losses
5. Apply the phases of ECF management
6. Describe appropriate wound and stoma care techniques
7. Select appropriate nutritional support strategies
8. Recognize indications and timing for definitive surgical repair
9. Describe surgical principles for ECF repair
10. Understand prevention strategies in high-risk patients'),

('d0000004-0000-0000-0000-000000000004'::uuid, 'content', 3, 'Pathophysiology and Complications',
'**Fluid and Electrolyte Losses**
High-output fistulae cause massive losses:
- Volume: Up to 3-6 liters/day in proximal fistulae
- Sodium, potassium, chloride, bicarbonate
- Metabolic acidosis (distal fistula) or alkalosis (gastric fistula)
- Dehydration and acute kidney injury

**Nutritional Impact**
- Loss of nutrients in fistula effluent
- Malabsorption (short bowel)
- Catabolic state from sepsis
- Protein losses (up to 100g/day)
- Weight loss and sarcopenia

**Skin Complications**
- Effluent is caustic (digestive enzymes)
- Perifistular skin excoriation and ulceration
- Cellulitis
- Pain and discomfort

**Septic Complications**
- Intra-abdominal abscess (most common)
- Wound infection
- Septicemia
- Multi-organ dysfunction

**Factors Affecting Spontaneous Closure - FRIENDS**
Factors that PREVENT spontaneous closure:
- **F**oreign body in tract
- **R**adiation
- **I**nfection/Inflammation
- **E**pithelialization of tract
- **N**eoplasm
- **D**istal obstruction
- **S**hort tract (<2 cm)
- (Additional: High output, Crohn disease, complete bowel discontinuity)

**Spontaneous Closure Rates**
- Overall: 20-40% with conservative management
- Low output, simple fistulae: Up to 60-80%
- High output, complex fistulae: <10%'),

('d0000004-0000-0000-0000-000000000004'::uuid, 'content', 4, 'Initial Assessment and Stabilization',
'Management follows a phased approach: Resuscitation → Investigation → Nutrition → Definitive treatment.

**Phase 1: Resuscitation and Control of Sepsis (Days 1-10)**

**Fluid and Electrolyte Management**
- IV crystalloid resuscitation
- Replace fistula losses volume-for-volume
- Frequent electrolyte monitoring and correction
- Urinary catheter for output monitoring
- Central venous access for high-output fistulae

**Sepsis Control**
- Source control is paramount
- Identify and drain any abscess (CT-guided or surgical)
- Broad-spectrum antibiotics
- Repeated imaging if clinical deterioration

**Output Reduction**
- Nil per oral initially
- Nasogastric decompression
- Proton pump inhibitors (reduce gastric secretion)
- Octreotide (somatostatin analog) - may reduce output by 40-50%

**Wound and Skin Care**
- Protect perifistular skin from effluent
- Stoma appliances to contain output
- Wound VAC therapy may be beneficial
- Skin barrier products (zinc oxide, stomahesive)
- Wound care nurse involvement essential

**Phase 2: Investigation (Days 7-14)**

**Imaging**
- CT scan with oral and IV contrast
  - Identify abscess, discontinuity, obstruction
  - Define fistula anatomy
- Fistulogram (water-soluble contrast through fistula opening)
  - Identifies tract course, connections, distal obstruction

**Endoscopy**
- Upper GI endoscopy if proximal fistula suspected
- Colonoscopy for colonic fistulae'),

('d0000004-0000-0000-0000-000000000004'::uuid, 'content', 5, 'Nutritional Management',
'Nutrition is the cornerstone of ECF management. Patients are typically severely malnourished.

**Nutritional Assessment**
- Pre-illness weight and recent weight loss
- Serum albumin, prealbumin, transferrin
- Nitrogen balance studies
- Body composition assessment

**Nutritional Goals**
- Calories: 25-35 kcal/kg/day
- Protein: 1.5-2.5 g/kg/day (higher with high-output fistula)
- Replace trace elements and vitamins

**Routes of Nutrition**

**Enteral Nutrition (Preferred when possible)**
Advantages:
- Maintains gut mucosal integrity
- Reduces bacterial translocation
- Cheaper and more physiological
- Supports immune function

Options:
- Oral diet (low residue) for low-output fistulae
- Feeding tube distal to fistula (fistuloclysis)
- Fistuloclysis: Reinfusing fistula effluent distally

**Parenteral Nutrition (TPN)**
Indications:
- High-output fistulae (>500 mL/day)
- Cannot achieve enteral access distal to fistula
- Short bowel
- Bowel obstruction

Complications:
- Catheter-related infections
- Liver dysfunction
- Metabolic abnormalities
- Thrombosis

**Duration**
- Maintain nutrition for 4-6 weeks minimum before surgery
- Aim for positive nitrogen balance
- Correct micronutrient deficiencies'),

('d0000004-0000-0000-0000-000000000004'::uuid, 'content', 6, 'Definitive Management',
'**Conservative Management**
Allow 4-8 weeks for potential spontaneous closure:
- Continue nutritional support
- Wound care
- Monitor for signs of closure

Spontaneous closure typically occurs by 6 weeks if it will occur.

**Indications for Surgery**
- Failure of spontaneous closure after adequate trial
- Persistent sepsis despite drainage
- Complete bowel discontinuity
- Associated abscess not amenable to percutaneous drainage
- Distal obstruction
- Fistula through tumor

**Timing of Surgery**
- Wait minimum 6-12 weeks from last laparotomy
- Allow resolution of adhesions (frozen abdomen)
- Optimize nutritional status
- Control sepsis completely
- "Pinch test" - skin folds indicate adequate nutrition

**Surgical Principles**
1. Complete adhesiolysis
2. Identify and resect entire fistula tract
3. Resect involved segment of bowel
4. Primary anastomosis in healthy bowel
5. Interpose omentum between anastomosis and abdominal wall
6. Close abdominal wall securely (may need mesh)
7. Consider diverting stoma in high-risk cases

**Outcomes**
- Operative mortality: 5-15%
- Recurrence rate: 10-20%
- Success rate with proper technique: >80%

**Prevention of ECF**
- Meticulous surgical technique
- Avoid tension on anastomoses
- Ensure adequate blood supply
- Avoid anastomosis in contaminated field
- Protect anastomosis (omental wrap)
- Early recognition and treatment of anastomotic leak'),

('d0000004-0000-0000-0000-000000000004'::uuid, 'key_points', 7, 'Key Points',
'1. ECF = abnormal communication between GI tract and skin; 75-85% are postoperative
2. Classification by output: Low <200mL, Moderate 200-500mL, High >500mL per day
3. Mortality mainly from sepsis, electrolyte imbalance, and malnutrition
4. FRIENDS mnemonic - factors preventing spontaneous closure
5. Management phases: Resuscitation → Investigation → Nutrition → Definitive treatment
6. Sepsis control with drainage is the first priority
7. Nutrition is the cornerstone - enteral preferred; TPN for high-output fistulae
8. Spontaneous closure in 20-40%; most occur by 6 weeks if they will close
9. Wait 6-12 weeks before definitive surgery to allow adhesion resolution
10. Surgical principles: Resect tract, bowel resection, healthy anastomosis, omental interposition');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000004-0000-0000-0000-000000000004'::uuid, 1,
'What output defines a high-output enterocutaneous fistula?',
'<100 mL/24 hours', '100-200 mL/24 hours', '200-500 mL/24 hours', '>500 mL/24 hours', '>1000 mL/24 hours',
'D', 'A high-output fistula is defined as producing >500 mL in 24 hours. Low output is <200 mL, and moderate is 200-500 mL. High-output fistulae are more challenging to manage and have lower rates of spontaneous closure.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 2,
'What is the most common cause of enterocutaneous fistula?',
'Crohn disease', 'Malignancy', 'Anastomotic leak following surgery', 'Radiation enteritis', 'Tuberculosis',
'C', 'Postoperative causes account for 75-85% of ECF, with anastomotic leak being the most common. Spontaneous causes (Crohn disease, malignancy, radiation, infection) account for only 15-25% of cases.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 3,
'In the FRIENDS mnemonic for factors preventing spontaneous closure, what does the "N" stand for?',
'Nutrition deficiency', 'Neoplasm', 'Necrosis', 'Narrow tract', 'Non-adherence',
'B', 'The FRIENDS mnemonic: Foreign body, Radiation, Infection/Inflammation, Epithelialization of tract, Neoplasm, Distal obstruction, Short tract (<2cm). These factors prevent spontaneous closure of fistulae.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 4,
'What is the overall spontaneous closure rate for enterocutaneous fistulae with conservative management?',
'5-10%', '20-40%', '60-70%', '80-90%', '95%',
'B', 'Overall, 20-40% of ECF close spontaneously with conservative management. Simple, low-output fistulae have higher closure rates (up to 60-80%), while complex, high-output fistulae have much lower rates (<10%).'),

('d0000004-0000-0000-0000-000000000004'::uuid, 5,
'What is the primary cause of death in patients with enterocutaneous fistulae?',
'Hemorrhage', 'Malnutrition alone', 'Sepsis', 'Pulmonary embolism', 'Renal failure alone',
'C', 'Sepsis is the primary cause of death in ECF patients, often from uncontrolled intra-abdominal abscess. Malnutrition and electrolyte imbalance are other major contributing factors. Modern management has reduced mortality from 40-60% historically to 5-20%.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 6,
'What medication may reduce fistula output by 40-50%?',
'Omeprazole', 'Loperamide', 'Octreotide', 'Metoclopramide', 'Erythromycin',
'C', 'Octreotide, a somatostatin analog, can reduce fistula output by 40-50% by decreasing gastrointestinal secretions. It is used as an adjunct in managing high-output fistulae but has not been shown to improve spontaneous closure rates.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 7,
'What is the first priority in the initial management of ECF?',
'Start parenteral nutrition', 'Plan definitive surgery', 'Sepsis control and resuscitation', 'Fistulogram', 'Consult wound care nurse',
'C', 'Sepsis control and resuscitation is the first priority in ECF management. This includes IV fluid resuscitation, identifying and draining any abscesses, and starting antibiotics. Without sepsis control, other interventions will fail.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 8,
'What is fistuloclysis?',
'Irrigation of fistula with saline', 'Reinfusing fistula effluent distally into the bowel', 'Injection of contrast into fistula', 'Endoscopic treatment of fistula', 'Application of negative pressure to fistula',
'B', 'Fistuloclysis is the technique of collecting fistula effluent and reinfusing it into the distal bowel (via tube or distal stoma). This allows use of the distal bowel for absorption, reduces parenteral nutrition requirements, and maintains gut integrity.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 9,
'What is the recommended protein intake for patients with high-output ECF?',
'0.5-1.0 g/kg/day', '1.0-1.2 g/kg/day', '1.5-2.5 g/kg/day', '3.0-4.0 g/kg/day', '5.0 g/kg/day',
'C', 'Protein requirements are increased to 1.5-2.5 g/kg/day in patients with high-output ECF due to protein losses in fistula effluent (up to 100g/day) and the catabolic state. Caloric requirements are 25-35 kcal/kg/day.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 10,
'What is the minimum waiting period before definitive surgery for ECF after the last laparotomy?',
'2 weeks', '4 weeks', '6-12 weeks', '6 months', '1 year',
'C', 'A waiting period of 6-12 weeks from the last laparotomy is recommended before definitive surgery. This allows adhesions to mature and become more filmy (frozen abdomen resolves), reducing the risk of inadvertent enterotomy during adhesiolysis.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 11,
'Which imaging modality best defines fistula anatomy and identifies abscesses?',
'Plain abdominal X-ray', 'Ultrasound', 'CT scan with oral and IV contrast', 'MRI', 'Nuclear medicine scan',
'C', 'CT scan with oral and IV contrast is the best modality to define fistula anatomy, identify associated abscesses, assess bowel continuity, and identify any distal obstruction. A fistulogram provides additional detail about the tract itself.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 12,
'If spontaneous closure is going to occur, by what time will it typically happen?',
'1 week', '2 weeks', '6 weeks', '6 months', '1 year',
'C', 'If an ECF is going to close spontaneously, it typically does so within 4-6 weeks of onset. If no closure occurs by 6 weeks with optimal conservative management, spontaneous closure is unlikely and surgical planning should begin.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 13,
'What is the role of omentum in surgical repair of ECF?',
'Provide blood supply to anastomosis', 'Interpose between anastomosis and abdominal wall', 'Fill dead space', 'All of the above', 'None of the above',
'D', 'The omentum serves multiple functions in ECF repair: it provides additional blood supply, fills dead space, has immunological properties, and most importantly, is interposed between the new anastomosis and the abdominal wall to prevent recurrent fistula formation.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 14,
'What is the "pinch test" used to assess in ECF patients?',
'Hydration status', 'Nutritional adequacy', 'Skin thickness for surgery', 'Edema', 'Infection',
'B', 'The pinch test assesses nutritional status by checking if adequate subcutaneous fat has been restored. If skin folds can be easily "pinched" at the chest wall, it suggests the patient has achieved adequate nutritional repletion and may be ready for surgery.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 15,
'What type of fistula has the lowest spontaneous closure rate?',
'Low-output jejunal fistula', 'Low-output colonic fistula', 'High-output ileal fistula with short tract', 'Lateral duodenal fistula', 'Gastric fistula',
'C', 'High-output fistulae with short tracts (<2 cm) have the lowest spontaneous closure rates (<10%). The high output prevents tract collapse and healing, while short tracts tend to epithelialize rapidly, preventing closure.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 16,
'What metabolic disturbance is expected with a high-output jejunal fistula?',
'Metabolic alkalosis, hyperkalemia', 'Metabolic acidosis, hypokalemia', 'Respiratory alkalosis', 'Respiratory acidosis', 'No significant metabolic disturbance',
'B', 'High-output jejunal fistulae cause metabolic acidosis (loss of bicarbonate-rich intestinal secretions) and hypokalemia. Gastric fistulae cause metabolic alkalosis due to loss of HCl. All high-output fistulae cause significant electrolyte losses.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 17,
'Why is enteral nutrition preferred over parenteral nutrition when possible?',
'It is cheaper', 'It maintains gut mucosal integrity', 'It reduces bacterial translocation', 'It supports immune function', 'All of the above',
'E', 'Enteral nutrition is preferred for multiple reasons: it is cheaper, maintains gut mucosal integrity, reduces bacterial translocation, supports immune function, and is more physiological. TPN is reserved for when enteral feeding is not possible.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 18,
'What is the recurrence rate after surgical repair of ECF?',
'1-5%', '10-20%', '30-40%', '50-60%', '70-80%',
'B', 'With proper surgical technique and appropriate patient selection, the recurrence rate after ECF repair is 10-20%. Success rates >80% are achievable with adequate nutritional optimization, sepsis control, and adherence to surgical principles.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 19,
'What is the most important factor in preventing ECF during primary surgery?',
'Use of drains', 'Meticulous surgical technique', 'Prophylactic antibiotics', 'Early postoperative feeding', 'Use of fibrin glue',
'B', 'Meticulous surgical technique is the most important factor in preventing ECF. This includes avoiding tension on anastomoses, ensuring adequate blood supply, not creating anastomoses in contaminated fields, and careful handling of tissues.'),

('d0000004-0000-0000-0000-000000000004'::uuid, 20,
'A patient with ECF has persistent fever despite antibiotics. CT shows a 5cm collection adjacent to the fistula. What is the next step?',
'Increase antibiotic coverage', 'Start TPN', 'CT-guided or surgical drainage', 'Proceed to definitive surgery', 'Obtain fistulogram',
'C', 'Persistent sepsis despite antibiotics with an identified collection requires drainage (CT-guided if accessible, otherwise surgical). Source control is essential - antibiotics alone cannot treat undrained abscesses. This takes priority over other management steps.');
