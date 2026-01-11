-- Surgery 2 Article 5: Surgical Jaundice - Sections and MCQs

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000005-0000-0000-0000-000000000005'::uuid, 'introduction', 1, 'Introduction to Surgical Jaundice', 
'Surgical jaundice, also known as obstructive or post-hepatic jaundice, results from mechanical obstruction to bile flow anywhere from the intrahepatic bile ducts to the ampulla of Vater. It is characterized by conjugated (direct) hyperbilirubinemia.

**Bilirubin Metabolism Review**
1. Hemoglobin breakdown → unconjugated (indirect) bilirubin
2. Bound to albumin, transported to liver
3. Conjugated with glucuronic acid in hepatocytes
4. Excreted in bile → gut
5. Bacterial conversion to urobilinogen
6. Reabsorption (enterohepatic circulation) or excretion in stool/urine

**Classification of Jaundice**

**Pre-hepatic (Hemolytic)**
- Increased bilirubin production
- Unconjugated hyperbilirubinemia
- Causes: Hemolysis, ineffective erythropoiesis

**Hepatic (Hepatocellular)**
- Impaired hepatocyte function
- Mixed hyperbilirubinemia
- Causes: Hepatitis, cirrhosis, drugs

**Post-hepatic (Obstructive/Surgical)**
- Mechanical obstruction to bile flow
- Conjugated hyperbilirubinemia
- Causes: Stones, strictures, tumors

**Importance of Distinction**
Surgical jaundice is potentially curable by relieving obstruction, making accurate diagnosis crucial. Untreated obstruction leads to cholangitis, hepatic failure, and coagulopathy.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Understand normal bilirubin metabolism and types of jaundice
2. Differentiate surgical from medical causes of jaundice
3. Recognize the clinical features of obstructive jaundice
4. Identify the causes of surgical jaundice by anatomical location
5. Describe Courvoisier law and its clinical application
6. Apply appropriate biochemical tests to differentiate jaundice types
7. Select appropriate imaging modalities for biliary tract evaluation
8. Understand the pathophysiology of cholangitis and its management
9. Describe surgical and non-surgical treatment options
10. Recognize the importance of preoperative optimization'),

('d0000005-0000-0000-0000-000000000005'::uuid, 'content', 3, 'Causes of Surgical Jaundice',
'Causes can be classified by anatomical level or by nature (benign vs malignant).

**By Anatomical Level**

**Intrahepatic Bile Duct Obstruction**
- Cholangiocarcinoma (Klatskin tumor at hilum)
- Hepatocellular carcinoma
- Metastatic disease
- Primary sclerosing cholangitis

**Extrahepatic Bile Duct Obstruction**

*Common Bile Duct*
- Choledocholithiasis (most common benign cause)
- Cholangiocarcinoma
- Stricture (post-surgical, post-ERCP)
- Mirizzi syndrome (impacted cystic duct stone compressing CBD)
- Parasites (Ascaris, liver flukes)

*Ampulla/Pancreas*
- Periampullary carcinoma
- Pancreatic head carcinoma (most common malignant cause)
- Chronic pancreatitis
- Ampullary carcinoma

**Extrinsic Compression**
- Lymph node enlargement (porta hepatis)
- Duodenal tumors
- Pancreatitis

**By Nature**

**Benign Causes**
- Choledocholithiasis (most common overall)
- Strictures (post-surgical, chronic pancreatitis)
- Mirizzi syndrome
- Parasites
- Choledochal cysts
- Primary sclerosing cholangitis

**Malignant Causes**
- Pancreatic head carcinoma (most common malignant)
- Cholangiocarcinoma
- Ampullary carcinoma
- Gallbladder carcinoma
- Metastatic disease'),

('d0000005-0000-0000-0000-000000000005'::uuid, 'content', 4, 'Clinical Presentation',
'**Symptoms**

1. **Jaundice**: Yellow discoloration of skin and sclera
   - Clinically detectable when bilirubin >2.5-3 mg/dL
   - Progressive and painless in malignancy
   - Fluctuating with pain in stones

2. **Dark urine (Cola-colored)**: Conjugated bilirubin is water-soluble
   - Often the first symptom noticed

3. **Pale stools (Clay-colored)**: Absence of stercobilinogen
   - Pathognomonic of obstructive jaundice

4. **Pruritus**: Bile salt deposition in skin
   - Can be severe and debilitating
   - Often precedes jaundice

5. **Pain**
   - Colicky RUQ pain: Suggests choledocholithiasis
   - Painless progressive jaundice: Suggests malignancy

6. **Weight loss**: Suggests malignancy

7. **Fever with chills (Charcot triad)**: Suggests cholangitis
   - Jaundice + Fever + RUQ pain
   - Reynolds pentad adds: Confusion + Shock

**Physical Examination**
- Icterus (sclera, skin, mucous membranes)
- Scratch marks (pruritus)
- Hepatomegaly (obstruction)
- Palpable gallbladder (Courvoisier sign - see below)
- Abdominal mass
- Cachexia (malignancy)
- Ascites (advanced malignancy)

**Courvoisier Law**
"In the presence of jaundice, a palpable gallbladder is unlikely to be due to stones"

Explanation:
- Stones cause chronic inflammation → fibrosed, contracted gallbladder → cannot distend
- Malignant obstruction → healthy gallbladder → can distend

Exceptions:
- Concurrent stone and malignancy
- Impacted cystic duct stone (Mucocele)
- Double impacted stones'),

('d0000005-0000-0000-0000-000000000005'::uuid, 'content', 5, 'Investigations',
'**Biochemical Tests**

**Liver Function Tests**
| Test | Obstructive Pattern |
|------|---------------------|
| Total Bilirubin | ↑↑↑ |
| Direct (Conjugated) | ↑↑↑ (>50% of total) |
| ALP | ↑↑↑ (>3x normal) |
| GGT | ↑↑↑ |
| AST/ALT | Mild ↑ or normal |

ALP and GGT elevation (cholestatic pattern) is key to distinguishing obstructive from hepatocellular jaundice.

**Other Blood Tests**
- PT/INR: Prolonged (vitamin K malabsorption)
- Albumin: May be decreased
- FBC: Anemia, elevated WCC (infection)
- Urea/Creatinine: Hepatorenal syndrome
- Tumor markers: CA 19-9 (pancreatic cancer), CEA

**Urine Analysis**
- Bilirubin: Positive (conjugated bilirubin)
- Urobilinogen: Absent or decreased

**Imaging Studies**

**Ultrasound (First-line)**
- Dilated bile ducts (>6mm CBD diameter)
- Level of obstruction
- Gallstones, gallbladder status
- Liver metastases
- Pancreatic mass (limited by bowel gas)

**CT Scan (Contrast-enhanced)**
- Characterize pancreatic/periampullary lesions
- Staging for malignancy
- Identify level and cause of obstruction
- Vascular involvement

**MRCP (Magnetic Resonance Cholangiopancreatography)**
- Non-invasive bile duct imaging
- Excellent for choledocholithiasis
- Maps biliary tree anatomy
- Alternative when ERCP fails

**ERCP (Endoscopic Retrograde Cholangiopancreatography)**
- Diagnostic AND therapeutic
- Stone extraction, stent placement
- Brush cytology/biopsy
- Sphincterotomy

**EUS (Endoscopic Ultrasound)**
- Small pancreatic/ampullary lesions
- FNA biopsy
- Detects small CBD stones missed on US/CT

**PTC (Percutaneous Transhepatic Cholangiography)**
- When ERCP fails or inaccessible
- Proximal/hilar obstruction
- Allows biliary drainage'),

('d0000005-0000-0000-0000-000000000005'::uuid, 'content', 6, 'Management',
'**Preoperative Optimization**

Obstructive jaundice increases surgical risk:
- Coagulopathy (vitamin K dependent factor deficiency)
- Impaired wound healing
- Susceptibility to infection
- Hepatorenal syndrome risk
- Endotoxemia

**Preoperative Measures**
- Vitamin K (10mg IV for 3 days) to correct coagulopathy
- Adequate hydration
- Treat any cholangitis
- Biliary drainage (stent) if:
  - Cholangitis present
  - Bilirubin >250 μmol/L
  - Planned neoadjuvant therapy
  - Expected delay to surgery

**Cholangitis - Medical Emergency**
Charcot triad → IV fluids, IV antibiotics, urgent biliary drainage

Reynolds pentad (severe/suppurative cholangitis) → ICU, emergency drainage

Drainage options:
- ERCP with sphincterotomy and stent (preferred)
- PTC with external/internal drain
- Surgical drainage (if endoscopic fails)

**Treatment by Cause**

**Choledocholithiasis**
- ERCP + sphincterotomy + stone extraction
- Followed by laparoscopic cholecystectomy
- Alternative: Lap cholecystectomy + CBD exploration

**Malignant Obstruction**

*Resectable Disease*
- Pancreaticoduodenectomy (Whipple) for pancreatic head/ampullary cancer
- Bile duct resection for cholangiocarcinoma
- Liver resection for hilar cholangiocarcinoma

*Unresectable Disease - Palliation*
- Endoscopic stent (plastic or metal)
- Surgical bypass (hepaticojejunostomy)
- PTC drainage if ERCP fails

**Benign Strictures**
- Endoscopic dilatation and stenting
- Surgical biliary-enteric bypass (hepaticojejunostomy)'),

('d0000005-0000-0000-0000-000000000005'::uuid, 'key_points', 7, 'Key Points',
'1. Surgical jaundice = post-hepatic/obstructive jaundice with conjugated hyperbilirubinemia
2. Classic triad: Jaundice + dark urine + pale stools
3. Choledocholithiasis is the most common benign cause; pancreatic head cancer is the most common malignant cause
4. Courvoisier law: Palpable gallbladder with jaundice suggests malignancy, not stones
5. LFT pattern: Elevated ALP/GGT (cholestatic) with elevated conjugated bilirubin
6. Ultrasound is first-line imaging; CT for staging; MRCP for bile duct detail
7. ERCP is both diagnostic and therapeutic
8. Charcot triad (fever, jaundice, RUQ pain) indicates cholangitis - urgent drainage needed
9. Reynolds pentad adds confusion and shock - indicates suppurative cholangitis (emergency)
10. Preoperative optimization: Vitamin K, hydration, treat cholangitis, consider drainage if high bilirubin');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000005-0000-0000-0000-000000000005'::uuid, 1,
'Which type of bilirubin is elevated in obstructive jaundice?',
'Unconjugated (indirect)', 'Conjugated (direct)', 'Both equally', 'Delta bilirubin', 'Albumin-bound bilirubin',
'B', 'In obstructive (surgical) jaundice, conjugated (direct) bilirubin is predominantly elevated. Conjugated bilirubin cannot be excreted into the gut due to obstruction and refluxes back into the blood. It is water-soluble and appears in urine (dark urine).'),

('d0000005-0000-0000-0000-000000000005'::uuid, 2,
'What is the classic clinical triad of obstructive jaundice?',
'Jaundice, dark urine, pale stools', 'Jaundice, fever, right upper quadrant pain', 'Jaundice, pruritus, hepatomegaly', 'Dark urine, pale stools, weight loss', 'Jaundice, ascites, confusion',
'A', 'The classic triad of obstructive jaundice is: jaundice (conjugated hyperbilirubinemia), dark urine (bilirubin in urine), and pale stools (absence of stercobilinogen). The second triad mentioned is Charcot triad for cholangitis.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 3,
'What is Courvoisier law?',
'Palpable gallbladder with jaundice is always due to malignancy', 'Palpable gallbladder with jaundice is unlikely due to stones', 'Non-palpable gallbladder with jaundice indicates stones', 'Jaundice with fever indicates cholangitis', 'All gallstones cause jaundice eventually',
'B', 'Courvoisier law states that in the presence of jaundice, a palpable gallbladder is unlikely to be due to stones. This is because stones cause chronic inflammation leading to a fibrotic, non-distensible gallbladder, whereas malignant obstruction affects a previously healthy gallbladder that can distend.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 4,
'What is the most common benign cause of surgical jaundice?',
'Biliary stricture', 'Chronic pancreatitis', 'Choledocholithiasis', 'Mirizzi syndrome', 'Sclerosing cholangitis',
'C', 'Choledocholithiasis (stones in the common bile duct) is the most common benign cause of surgical jaundice overall. It presents with colicky pain, fluctuating jaundice, and may cause cholangitis.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 5,
'What is the most common malignant cause of surgical jaundice?',
'Cholangiocarcinoma', 'Hepatocellular carcinoma', 'Pancreatic head carcinoma', 'Ampullary carcinoma', 'Gallbladder carcinoma',
'C', 'Pancreatic head carcinoma is the most common malignant cause of surgical jaundice, presenting with painless progressive jaundice, weight loss, and often a palpable gallbladder. It carries a poor prognosis.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 6,
'What liver function test pattern is characteristic of obstructive jaundice?',
'AST/ALT markedly elevated, normal ALP', 'ALP and GGT markedly elevated, mild AST/ALT rise', 'All liver enzymes normal', 'Only bilirubin elevated', 'AST higher than ALT by 2:1 ratio',
'B', 'Obstructive jaundice shows a cholestatic pattern with marked elevation of ALP (>3x normal) and GGT, with only mild elevation or normal AST/ALT. This contrasts with hepatocellular jaundice where transaminases are markedly elevated.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 7,
'What is the first-line imaging investigation for suspected obstructive jaundice?',
'CT scan', 'MRCP', 'ERCP', 'Ultrasound', 'PTC',
'D', 'Ultrasound is the first-line imaging for suspected obstructive jaundice. It can identify dilated bile ducts (>6mm CBD diameter), level of obstruction, gallstones, and liver lesions. It is non-invasive, widely available, and has no radiation.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 8,
'What CBD diameter is considered dilated on ultrasound?',
'Greater than 4 mm', 'Greater than 6 mm', 'Greater than 10 mm', 'Greater than 12 mm', 'Greater than 15 mm',
'B', 'A common bile duct diameter >6 mm is considered dilated. In elderly patients and post-cholecystectomy patients, up to 8-10 mm may be normal. Diameter >10 mm is definitely abnormal and suggests significant obstruction.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 9,
'Charcot triad consists of:',
'Jaundice, fever, hepatomegaly', 'Jaundice, dark urine, pale stools', 'Jaundice, fever, right upper quadrant pain', 'Fever, rigors, confusion', 'Jaundice, pruritus, weight loss',
'C', 'Charcot triad for acute cholangitis consists of: jaundice, fever, and right upper quadrant pain. It indicates infection in an obstructed biliary tree and requires urgent biliary drainage.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 10,
'Reynolds pentad adds which two features to Charcot triad?',
'Pruritus and dark urine', 'Confusion and hypotension', 'Hepatomegaly and splenomegaly', 'Nausea and vomiting', 'Weight loss and anorexia',
'B', 'Reynolds pentad adds mental confusion (encephalopathy) and hypotension (septic shock) to Charcot triad. It indicates severe or suppurative cholangitis, a life-threatening emergency requiring immediate resuscitation and urgent biliary drainage.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 11,
'What is the investigation that is both diagnostic and therapeutic in obstructive jaundice?',
'Ultrasound', 'CT scan', 'MRCP', 'ERCP', 'PTC',
'D', 'ERCP (Endoscopic Retrograde Cholangiopancreatography) is both diagnostic and therapeutic. It allows direct visualization of the biliary tree, stone extraction, sphincterotomy, stent placement, and tissue sampling.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 12,
'What is Mirizzi syndrome?',
'Gallstone ileus', 'Impacted cystic duct stone compressing the CBD', 'Cholangiocarcinoma at the hilum', 'Pancreatic divisum', 'Choledochal cyst',
'B', 'Mirizzi syndrome occurs when a stone impacted in the cystic duct or gallbladder neck externally compresses the common hepatic duct or CBD, causing obstructive jaundice. It may progress to form a cholecystobiliary fistula.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 13,
'Why is Vitamin K given preoperatively in obstructive jaundice?',
'To prevent infection', 'To improve wound healing', 'To correct coagulopathy', 'To reduce bilirubin', 'To treat pruritus',
'C', 'Vitamin K is given to correct coagulopathy in obstructive jaundice. Bile is required for absorption of fat-soluble vitamins (A, D, E, K). Vitamin K deficiency leads to deficiency of clotting factors II, VII, IX, X, causing prolonged PT/INR.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 14,
'What is the definitive surgical procedure for pancreatic head cancer?',
'Cholecystectomy', 'Distal pancreatectomy', 'Pancreaticoduodenectomy (Whipple procedure)', 'Hepaticojejunostomy', 'Gastrojejunostomy',
'C', 'Pancreaticoduodenectomy (Whipple procedure) is the definitive surgical procedure for resectable pancreatic head cancer. It involves resection of the pancreatic head, duodenum, distal stomach, gallbladder, and distal CBD with reconstruction.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 15,
'In unresectable malignant biliary obstruction, what is the preferred palliation?',
'No treatment', 'Chemotherapy alone', 'Endoscopic stent placement', 'External beam radiation', 'Liver transplant',
'C', 'Endoscopic stent placement (ERCP) is the preferred palliation for unresectable malignant biliary obstruction. Metal stents are preferred for longer patency. This relieves jaundice and pruritus, improving quality of life. PTC drainage is an alternative if ERCP fails.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 16,
'What urine finding is characteristic of obstructive jaundice?',
'Positive urobilinogen, negative bilirubin', 'Negative urobilinogen, positive bilirubin', 'Both positive', 'Both negative', 'Positive blood only',
'B', 'In obstructive jaundice, urine is positive for bilirubin (conjugated bilirubin is water-soluble) but negative or low for urobilinogen (bile cannot reach the gut for bacterial conversion). This contrasts with hemolytic jaundice where urobilinogen is increased.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 17,
'A Klatskin tumor refers to cholangiocarcinoma located at:',
'Distal CBD', 'Ampulla of Vater', 'Hepatic hilum (bifurcation)', 'Intrahepatic bile ducts', 'Gallbladder',
'C', 'A Klatskin tumor is a cholangiocarcinoma located at the hepatic hilum (bifurcation of right and left hepatic ducts). It is the most common location for cholangiocarcinoma. It causes bilateral intrahepatic duct dilatation with non-dilated CBD.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 18,
'What is the best imaging modality for detailed bile duct anatomy without instrumentation?',
'Ultrasound', 'CT scan', 'MRCP', 'Plain X-ray', 'PET scan',
'C', 'MRCP (Magnetic Resonance Cholangiopancreatography) provides excellent non-invasive visualization of the biliary tree without instrumentation or contrast injection. It is excellent for detecting stones and mapping anatomy before surgery.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 19,
'Which tumor marker is most useful in pancreatic cancer?',
'AFP', 'CEA', 'CA 19-9', 'CA 125', 'PSA',
'C', 'CA 19-9 is the most useful tumor marker for pancreatic cancer. It is elevated in 70-80% of pancreatic cancers and is useful for monitoring treatment response. However, it is not specific and can be elevated in other biliary/GI conditions.'),

('d0000005-0000-0000-0000-000000000005'::uuid, 20,
'What is the urgent management of acute cholangitis?',
'Oral antibiotics and observation', 'IV fluids, IV antibiotics, and urgent biliary drainage', 'Emergency laparotomy', 'Conservative management only', 'Lithotripsy',
'B', 'Acute cholangitis requires IV fluids, IV broad-spectrum antibiotics, and urgent biliary drainage (usually by ERCP). Without drainage, antibiotics alone cannot adequately treat the infected, obstructed system. This is a medical emergency with high mortality if untreated.');
