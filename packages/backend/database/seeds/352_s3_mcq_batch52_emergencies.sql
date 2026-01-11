-- ============================================================================
-- SURGERY 3 MCQ BATCH 52: Surgical Emergencies Comprehensive Review
-- Topic: General Surgical Emergencies - Diagnosis and Management
-- ============================================================================

-- First create the topic if not exists
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003', 'Surgical Emergencies Review', 'Comprehensive review of acute surgical emergencies')
ON CONFLICT DO NOTHING;

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Abdominal Emergencies (1-15)
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Free air under the diaphragm on upright chest X-ray indicates:',
'Normal finding', 'Hollow viscus perforation (most commonly peptic ulcer or diverticular perforation), requiring urgent surgical evaluation', 'Lung pathology', 'Liver abscess', 'Splenic rupture',
'B', 'Pneumoperitoneum: (1) Causes: perforated peptic ulcer (most common), perforated diverticulitis, perforated appendicitis, bowel perforation, trauma. (2) Detection: upright CXR shows air under diaphragm (70% sensitivity), CT more sensitive. (3) Benign causes: post-laparoscopy (up to 7 days), post-laparotomy, PD catheter insertion. (4) Management: resuscitation, IV antibiotics, urgent surgical consultation. (5) Most require operative intervention (source control). Reference: Langell JT. Am Surg. 2008.',
'easy', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The most common cause of small bowel obstruction in developed countries is:',
'Hernia', 'Adhesions from prior abdominal surgery', 'Malignancy', 'Crohn disease', 'Intussusception',
'B', 'Small bowel obstruction (SBO) etiology: (1) Developed countries: adhesions (60-75%), usually from prior surgery. (2) Developing countries: hernias (most common). (3) Other causes: malignancy, Crohn disease, intussusception, gallstone ileus. (4) Presentation: colicky abdominal pain, vomiting (bilious), distension, obstipation. (5) Diagnosis: XR (dilated small bowel, air-fluid levels), CT (transition point, strangulation signs). Reference: Miller G. J Am Coll Surg. 2000.',
'easy', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Signs of strangulated bowel obstruction include:',
'Slow onset of pain', 'Constant pain (not colicky), fever, tachycardia, leukocytosis, and peritoneal signs', 'Normal vital signs', 'Low white blood cell count', 'Hyperactive bowel sounds',
'B', 'Strangulation in SBO: (1) Pathophysiology: compromised blood supply to obstructed bowel. (2) Clinical signs: transition from colicky to constant pain, fever, tachycardia, leukocytosis, peritoneal signs, hemodynamic instability. (3) CT findings: thickened bowel wall, mesenteric haziness, lack of enhancement, pneumatosis, portal venous gas. (4) Management: emergent surgery - cannot delay for trial of conservative management. (5) Mortality: significantly higher if strangulation present. Reference: Maglinte DD. Radiology. 2001.',
'medium', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Acute mesenteric ischemia classically presents with:',
'Gradual onset over weeks', 'Pain out of proportion to physical examination findings', 'Immediate peritonitis', 'No abdominal pain', 'Left lower quadrant pain',
'B', 'Acute mesenteric ischemia: (1) Classic presentation: severe abdominal pain out of proportion to exam (early - minimal findings). (2) Risk factors: atrial fibrillation (embolic), atherosclerosis, low cardiac output states. (3) Types: SMA embolism (50%), SMA thrombosis (25%), NOMI (20%), MVT (5%). (4) Late findings: peritonitis, GI bleeding, metabolic acidosis, elevated lactate. (5) Diagnosis: CT angiography. (6) Treatment: emergent revascularization (surgical or endovascular), bowel resection if necrosis. Reference: Bala M. World J Emerg Surg. 2017.',
'medium', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The triad of Rigler in gallstone ileus consists of:',
'Fever, jaundice, right upper quadrant pain', 'Small bowel obstruction, pneumobilia (air in biliary tree), and ectopic gallstone on imaging', 'Murphy sign, leukocytosis, fever', 'Mass, jaundice, weight loss', 'Vomiting, obstipation, distension',
'B', 'Gallstone ileus: (1) Pathophysiology: large gallstone erodes through gallbladder into duodenum (cholecystoduodenal fistula), impacts in small bowel (usually terminal ileum). (2) Rigler triad: SBO, pneumobilia, ectopic gallstone (all three seen in ~50%, two of three in ~70%). (3) Bouveret syndrome: gastric outlet obstruction from stone impacted in duodenum. (4) Treatment: enterolithotomy (remove stone). Fistula repair and cholecystectomy may be done later or same operation. Reference: Reisner RM. Dig Surg. 2003.',
'hard', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Sigmoid volvulus is best initially treated with:',
'Emergent colectomy', 'Endoscopic decompression with flexible sigmoidoscopy, followed by elective sigmoid resection', 'Barium enema', 'Observation only', 'Total parenteral nutrition',
'B', 'Sigmoid volvulus management: (1) Non-gangrenous: endoscopic decompression (flexible sigmoidoscopy) - success rate 70-90%. Insert rectal tube after. (2) Recurrence: high without definitive surgery (40-60%). (3) Elective sigmoid resection recommended after successful decompression. (4) Signs of gangrene/peritonitis: emergent surgery without attempting endoscopic decompression. (5) Risk factors: chronic constipation, high-fiber diet, institutionalized/psychiatric patients, megacolon. (6) XR: coffee-bean sign. Reference: Ballantyne GH. Ann Surg. 1985.',
'medium', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Cecal volvulus is best treated with:',
'Endoscopic decompression first', 'Surgical intervention (right hemicolectomy or cecopexy) as initial treatment', 'Conservative management', 'Barium enema reduction', 'Observation',
'B', 'Cecal volvulus: (1) Unlike sigmoid, endoscopic decompression rarely successful. (2) Treatment: surgery required. (3) Options: right hemicolectomy (preferred - prevents recurrence), cecopexy (higher recurrence). (4) If viable: cecopexy may be considered in high-risk patients. (5) If gangrenous: resection mandatory. (6) Risk factors: prior abdominal surgery, mobile cecum, pregnancy. (7) Presentation: SBO pattern, may have RLQ mass. (8) XR: comma or kidney-shaped cecum in LUQ. Reference: Consorti ET. Dis Colon Rectum. 2005.',
'medium', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Acute appendicitis in a pregnant patient is best diagnosed with:',
'CT scan as first-line', 'Ultrasound as first-line, followed by MRI if inconclusive', 'Plain X-ray', 'Clinical diagnosis only', 'No imaging needed',
'B', 'Appendicitis in pregnancy: (1) First-line imaging: ultrasound (no radiation, good for early pregnancy, but limited by uterus). (2) Second-line: MRI (if US inconclusive - no radiation, excellent soft tissue visualization). (3) CT: avoided if possible due to radiation, but acceptable if needed for diagnosis. (4) Diagnostic challenge: appendix displaced by gravid uterus, symptoms overlap with pregnancy. (5) Treatment: appendectomy (laparoscopic preferred in 1st-2nd trimester). (6) Delay in diagnosis increases perforation and fetal loss. Reference: ACOG Committee Opinion. 2019.',
'medium', 'application'),

-- Hepatobiliary Emergencies (16-25)
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The Charcot triad of ascending cholangitis consists of:',
'Nausea, vomiting, diarrhea', 'Fever, right upper quadrant pain, and jaundice', 'Headache, neck stiffness, photophobia', 'Chest pain, dyspnea, hemoptysis', 'Abdominal pain, hypotension, melena',
'B', 'Charcot triad (ascending cholangitis): (1) Fever/chills. (2) RUQ pain. (3) Jaundice. Present in 50-70% of cases. Reynolds pentad: adds hypotension and altered mental status (severe/suppurative cholangitis - poor prognosis). Cause: biliary obstruction (stone, stricture, malignancy) with bacterial infection. Treatment: IV antibiotics, urgent biliary decompression (ERCP preferred, PTC if ERCP fails). Reference: Kimura Y. J Hepatobiliary Pancreat Surg. 2007.',
'easy', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Emphysematous cholecystitis is characterized by:',
'Mild symptoms', 'Gas in the gallbladder wall on imaging, associated with diabetes and Clostridium/E.coli infection, with high perforation risk', 'Stone-free gallbladder', 'Only in young patients', 'Normal imaging',
'B', 'Emphysematous cholecystitis: (1) Definition: gas in gallbladder wall (gangrenous cholecystitis with gas-forming organisms). (2) Organisms: Clostridium, E. coli, Klebsiella. (3) Risk factors: diabetes (30-50% of cases), males, immunocompromised. (4) Presentation: often more toxic than typical cholecystitis. (5) Imaging: gas in GB wall on XR or CT. (6) Complications: high perforation rate (up to 20%). (7) Treatment: emergent cholecystectomy (or cholecystostomy if unfit for surgery), IV antibiotics. Reference: Mentzer RM. Am J Surg. 1975.',
'hard', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Acute pancreatitis severity is best assessed using:',
'Amylase level alone', 'BISAP score, Ranson criteria, APACHE II, or SIRS criteria along with clinical assessment', 'Lipase level alone', 'Ultrasound findings', 'Patient age only',
'B', 'Pancreatitis severity scoring: (1) BISAP (Bedside Index): BUN >25, Impaired mental status, SIRS, Age >60, Pleural effusion. Score ≥3 predicts severe disease. (2) Ranson criteria: 11 parameters at admission and 48 hours. (3) APACHE II: general ICU scoring. (4) Atlanta classification: mild (no organ failure), moderate-severe (transient organ failure), severe (persistent organ failure). (5) SIRS criteria: simple bedside predictor. None perfect - use clinical judgment with scoring. Reference: Banks PA. Gut. 2013.',
'medium', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Infected pancreatic necrosis should be suspected when:',
'Patient improves rapidly', 'Patient fails to improve or worsens after 7-10 days, develops new fever or sepsis, or CT shows gas in necrotic collection', 'On day 1 of symptoms', 'Only in alcoholic pancreatitis', 'No specific signs exist',
'B', 'Infected pancreatic necrosis: (1) Timing: typically after 7-14 days (early interventions usually not for infection). (2) Suspicion: clinical deterioration, persistent/new fever, sepsis. (3) CT findings: gas bubbles within necrotic collection (pathognomonic). (4) Diagnosis: CT/US-guided aspiration and culture if uncertain. (5) Treatment: antibiotics + delayed necrosectomy (minimally invasive - step-up approach preferred). (6) Sterile necrosis: usually managed conservatively. Reference: van Santvoort HC. N Engl J Med. 2010.',
'medium', 'application'),

-- Vascular Emergencies (26-35)
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Ruptured abdominal aortic aneurysm classically presents with:',
'Gradual onset lower back pain', 'Abdominal or back pain, hypotension, and pulsatile abdominal mass', 'Chest pain only', 'Lower extremity edema', 'Hematuria only',
'B', 'Ruptured AAA: (1) Classic triad: abdominal/back pain, hypotension, pulsatile mass (only 50% have all three). (2) May mimic: renal colic, diverticulitis, musculoskeletal pain. (3) Contained rupture: temporarily stable (retroperitoneal tamponade). (4) Free rupture: rapidly fatal. (5) Diagnosis: unstable - proceed directly to OR; stable - CT angiography. (6) Treatment: emergent open repair or EVAR (if anatomy suitable). (7) Mortality: 50% reach hospital alive, 50% of those survive surgery. Reference: Brewster DC. J Vasc Surg. 2003.',
'easy', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Acute limb ischemia is a surgical emergency because irreversible damage occurs after:',
'24 hours', '6 hours of ischemia without intervention', '48 hours', '1 week', '30 minutes',
'B', 'Acute limb ischemia: (1) Time-critical: muscle tolerates 4-6 hours of ischemia before irreversible damage. (2) Presentation: 6 Ps - Pain, Pallor, Pulselessness, Poikilothermia, Paresthesias, Paralysis (late). (3) Rutherford classification: I (viable), IIa (marginally threatened), IIb (immediately threatened), III (irreversible). (4) Treatment: immediate anticoagulation (heparin), then revascularization (thromboembolectomy, bypass, or catheter-directed thrombolysis). (5) Category III: may require primary amputation. Reference: Rutherford RB. J Vasc Surg. 1997.',
'easy', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Type A aortic dissection involving the ascending aorta is treated with:',
'Medical management only', 'Emergent surgical repair', 'Endovascular stent only', 'Observation', 'Thrombolysis',
'B', 'Aortic dissection management: (1) Type A (involving ascending aorta): emergent surgical repair - mortality increases ~1% per hour without surgery. (2) Type B (descending only, distal to left subclavian): medical management (BP control, pain), unless complicated. (3) Complicated Type B (malperfusion, rupture, refractory pain): TEVAR or surgery. (4) Medical: IV beta-blocker first (reduce shear stress), then vasodilator for BP target <120 systolic. (5) Type A mortality: 25-30% with surgery, >50% without. Reference: Nienaber CA. Circulation. 2003.',
'easy', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The most common site of arterial embolism in acute limb ischemia is:',
'Iliac artery', 'Femoral artery bifurcation (common femoral)', 'Popliteal artery', 'Tibial arteries', 'Aortic bifurcation',
'B', 'Arterial embolism: (1) Most common site: femoral bifurcation (35-50%). (2) Source: usually cardiac (atrial fibrillation, MI, valvular disease). (3) Other sites: iliac, popliteal, aortic bifurcation (saddle embolus), upper extremity. (4) Diagnosis: clinical + Doppler, CTA. (5) Treatment: heparin, then embolectomy (balloon catheter) for large vessel emboli. (6) Differentiate from thrombosis: sudden onset, no prior claudication, source of emboli, normal contralateral extremity favor embolism. Reference: Baxter-Smith DC. Eur J Vasc Surg. 1988.',
'medium', 'knowledge'),

-- Soft Tissue Emergencies (36-45)
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Fournier gangrene is a form of necrotizing fasciitis affecting:',
'Upper extremity', 'Perineum and genital region', 'Face', 'Chest wall', 'Lower extremity only',
'B', 'Fournier gangrene: (1) Definition: necrotizing fasciitis of perineum and genitalia. (2) Risk factors: diabetes, immunosuppression, alcohol, anorectal/urogenital infection or trauma. (3) Microbiology: polymicrobial (gram-positive, gram-negative, anaerobes). (4) Presentation: perineal pain, swelling, erythema, crepitus, systemic toxicity. (5) Treatment: EMERGENT wide surgical debridement, IV broad-spectrum antibiotics, resuscitation. Multiple debridements often needed. (6) Mortality: 20-40% even with treatment. Reference: Eke N. Br J Surg. 2000.',
'medium', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The most important treatment for necrotizing soft tissue infection is:',
'IV antibiotics alone', 'Emergent and aggressive surgical debridement of all necrotic tissue', 'Hyperbaric oxygen first', 'Wound dressing changes', 'CT-guided drainage',
'B', 'NSTI treatment principles: (1) Surgery: emergent wide debridement is cornerstone - delay increases mortality. (2) Debridement: all necrotic tissue removed, often repeated (second-look in 24-48 hours). (3) Antibiotics: broad-spectrum (vancomycin + piperacillin-tazobactam or carbapenem + clindamycin). (4) Resuscitation: ICU care, fluid resuscitation. (5) Adjuncts: IVIG for Group A Strep, hyperbaric oxygen (controversial, should not delay surgery). (6) Antibiotics without surgery = death. Reference: Wong CH. Crit Care Med. 2004.',
'easy', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Toxic shock syndrome is most commonly caused by:',
'E. coli', 'Staphylococcus aureus or Streptococcus pyogenes toxin-mediated systemic illness', 'Candida', 'Pseudomonas', 'Bacteroides',
'B', 'Toxic shock syndrome: (1) Staphylococcal TSS: TSST-1 toxin, associated with tampon use, wound packing, surgical site infections. (2) Streptococcal TSS: streptococcal pyrogenic exotoxins, often associated with NSTI. (3) Presentation: fever, rash (diffuse macular erythroderma), hypotension, multi-organ involvement. (4) Late: desquamation (1-2 weeks). (5) Treatment: source control (remove foreign body, debride), antibiotics (clindamycin to reduce toxin production + beta-lactam), resuscitation. Reference: Stevens DL. N Engl J Med. 1989.',
'medium', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'A hand infection in the flexor tendon sheath (flexor tenosynovitis) presents with:',
'Only redness', 'Kanavel four cardinal signs: flexed posture, fusiform swelling, tenderness along sheath, pain with passive extension', 'Normal finger movement', 'Only at the DIP joint', 'No specific signs',
'B', 'Flexor tenosynovitis (Kanavel signs): (1) Finger held in flexed posture. (2) Fusiform (sausage-like) swelling of finger. (3) Tenderness along flexor tendon sheath. (4) Pain with passive extension (most specific). Treatment: early IV antibiotics may suffice if very early; usually requires urgent surgical drainage (open vs catheter irrigation). Delay leads to tendon necrosis and permanent dysfunction. Most common organism: S. aureus. Reference: Pang HN. J Hand Surg Am. 2007.',
'medium', 'application'),

-- Trauma (46-52)
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The most commonly injured solid organ in blunt abdominal trauma is:',
'Liver', 'Spleen', 'Kidney', 'Pancreas', 'Adrenal gland',
'B', 'Solid organ injury in blunt trauma: (1) Spleen: most commonly injured (40-55%). (2) Liver: second most common (35-45%). (3) Location and mobility contribute to spleen vulnerability. (4) Diagnosis: CT with IV contrast (gold standard). (5) Management: hemodynamically stable - non-operative management (observation, angioembolization). Unstable - operative intervention. (6) Spleen grading: I-V based on hematoma size, laceration depth, vascular injury. Reference: AAST Organ Injury Scale.',
'easy', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'A positive FAST exam in trauma indicates:',
'Normal findings', 'Free fluid (blood) in the peritoneal cavity, pericardium, or thorax', 'Solid organ injury directly', 'Bowel injury', 'Retroperitoneal hemorrhage',
'B', 'FAST (Focused Assessment with Sonography for Trauma): (1) Views: pericardial, right upper quadrant (hepatorenal/Morison pouch), left upper quadrant (splenorenal), pelvis (retrovesical/rectouterine). (2) Positive: free fluid (appears black/anechoic). (3) In trauma context, free fluid = blood until proven otherwise. (4) Limitations: does not detect solid organ injury, retroperitoneal blood, small amounts of fluid. (5) Extended FAST (eFAST): includes lung for pneumothorax/hemothorax. (6) Use: unstable patient - positive FAST may indicate need for emergent laparotomy. Reference: Kirkpatrick AW. J Trauma. 2004.',
'easy', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Damage control surgery involves:',
'Complete repair of all injuries', 'Abbreviated surgery to control hemorrhage and contamination, followed by ICU resuscitation and planned return to OR for definitive repair', 'Only observation', 'Delayed surgery by days', 'Single definitive operation always',
'B', 'Damage control surgery: (1) Indication: lethal triad (hypothermia <35C, acidosis pH <7.2, coagulopathy). (2) Principle: avoid prolonged surgery in dying patient. (3) Phase 1: abbreviated surgery - control bleeding (packing, ligation) and contamination (staple/tie bowel), temporary closure. (4) Phase 2: ICU resuscitation - correct hypothermia, acidosis, coagulopathy, transfusion. (5) Phase 3: planned re-exploration and definitive repair (24-72 hours). (6) Improved survival in severely injured patients. Reference: Rotondo MF. J Trauma. 1993.',
'medium', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Tension pneumothorax requires:',
'Chest X-ray before treatment', 'Immediate needle decompression followed by chest tube insertion, without waiting for imaging', 'CT scan confirmation', 'Observation', 'Intubation first',
'B', 'Tension pneumothorax: (1) Clinical diagnosis - do not delay for imaging. (2) Signs: severe respiratory distress, hypotension, JVD, tracheal deviation (late), absent breath sounds, hyperresonance. (3) Mechanism: one-way valve effect, mediastinal shift, impaired venous return. (4) Treatment: immediate needle decompression (2nd intercostal space, midclavicular line or 5th ICS, anterior axillary), followed by chest tube. (5) Needle decompression buys time but is not definitive. Reference: ATLS Manual. American College of Surgeons.',
'easy', 'application'),

-- Additional Review (53-60)
('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'An incarcerated hernia with signs of strangulation requires:',
'Elective repair in 6 weeks', 'Emergent surgical exploration and repair', 'Trial of manual reduction first', 'Observation', 'Antibiotic treatment only',
'B', 'Strangulated hernia: (1) Definition: incarcerated hernia with compromised blood supply to contents. (2) Signs: severe pain, tenderness, erythema over hernia, fever, leukocytosis, peritoneal signs, bowel obstruction symptoms. (3) Treatment: emergent surgery - delay leads to bowel necrosis. (4) Surgery: assess bowel viability, resect if non-viable, repair hernia. (5) Incarcerated without strangulation: may attempt reduction if recent onset and no systemic signs, but urgent surgery if reduction fails. Reference: Kulah B. Ann Surg. 2001.',
'easy', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Massive hematemesis with hemodynamic instability is best managed with:',
'Observation and serial hemoglobin', 'Resuscitation with blood products, IV PPI, and urgent upper endoscopy for diagnosis and intervention', 'Colonoscopy first', 'Outpatient follow-up', 'Only oral medications',
'B', 'Massive upper GI bleeding management: (1) Resuscitation: IV access, blood products (balanced transfusion if massive), correct coagulopathy. (2) IV PPI: high-dose (bolus + infusion). (3) Urgent endoscopy: within 24 hours (or emergent if unstable) - diagnostic and therapeutic. (4) Airway protection: consider intubation for massive bleeding or altered mental status. (5) Interventions: endoscopic (epinephrine, clips, thermal), angiography/embolization, surgery if other measures fail. (6) Risk stratification: Glasgow-Blatchford, Rockall scores. Reference: Barkun AN. Ann Intern Med. 2010.',
'medium', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Testicular torsion must be treated within how many hours to maximize testicular salvage?',
'24 hours', '6 hours (ideally less) to achieve highest salvage rates', '48 hours', '1 week', '12 hours is acceptable',
'B', 'Testicular torsion: (1) Time-critical: salvage rates ~100% at <6 hours, 70% at 6-12 hours, <20% at >12 hours. (2) Presentation: sudden onset severe testicular pain, high-riding testis, absent cremasteric reflex, horizontal lie. (3) Diagnosis: clinical - do not delay for imaging. Doppler US if diagnosis uncertain. (4) Treatment: emergent surgical exploration and detorsion with bilateral orchiopexy. (5) Manual detorsion: may attempt while awaiting OR (open the book - lateral rotation), but surgery still required. Reference: Mellick LB. J Emerg Med. 2012.',
'easy', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Acute cholecystitis is best treated with:',
'Long-term antibiotics alone', 'Cholecystectomy (preferably laparoscopic) during the index admission, optimally within 72 hours', 'Observation only', 'ERCP first always', 'Diet modification only',
'B', 'Acute cholecystitis management: (1) IV fluids, NPO, IV antibiotics. (2) Surgery: laparoscopic cholecystectomy during same admission (ideally within 72 hours - Tokyo Guidelines). (3) Benefits of early surgery: shorter total hospital stay, lower costs, equivalent complication rates. (4) High-risk patients: percutaneous cholecystostomy as bridge. (5) If CBD stone suspected: ERCP before or after cholecystectomy, or IOC with CBD exploration. (6) Delayed surgery: higher conversion rates, recurrent attacks. Reference: Gurusamy K. Cochrane Database. 2013.',
'medium', 'application'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'The Alvarado score is used to help diagnose:',
'Cholecystitis', 'Acute appendicitis, using symptoms, signs, and laboratory findings', 'Pancreatitis', 'Bowel obstruction', 'Peptic ulcer',
'B', 'Alvarado score (MANTRELS): Migration of pain (1), Anorexia (1), Nausea/vomiting (1), Tenderness in RLQ (2), Rebound pain (1), Elevation of temperature (1), Leukocytosis (2), Shift to left (1). Total: 10 points. Score ≤4: appendicitis unlikely. 5-6: possible (observation/imaging). 7-8: probable. 9-10: very probable. Useful for risk stratification but does not replace clinical judgment or imaging. Reference: Alvarado A. Ann Emerg Med. 1986.',
'medium', 'knowledge'),

('c0000067-0000-0000-0000-000000000067', 'a0000003-0000-0000-0000-000000000003',
'Perforated peptic ulcer is best managed with:',
'Antibiotics only', 'Emergent surgery (Graham patch or definitive ulcer surgery) after resuscitation', 'PPI alone', 'Endoscopic treatment always', 'Observation for 48 hours',
'B', 'Perforated peptic ulcer: (1) Presentation: sudden severe epigastric pain (peritonitis), board-like rigidity, free air on imaging. (2) Treatment: resuscitation, IV PPI, broad-spectrum antibiotics, emergent surgery. (3) Surgery: Graham patch (omental patch) most common - simple closure with omentum. (4) Definitive surgery: rarely needed now (PPI era). (5) Laparoscopic approach: feasible in stable patients. (6) Non-operative: very select stable patients with contained perforation (sealed). Reference: Lau JY. Ann Surg. 2011.',
'easy', 'application');

SELECT 'Surgery 3 MCQ Batch 52 (Surgical Emergencies Review): 60 questions inserted' as status;
