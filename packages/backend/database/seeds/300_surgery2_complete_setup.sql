-- Surgery 2 Topics and CME Articles Setup

-- First create the Surgery 2 category
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) VALUES
('a0000002-0000-0000-0000-000000000002'::uuid, 'Surgery 2', 'SURG2', 'surgery_2', 'General & Emergency Surgery, Trauma, Vascular, Orthopaedics, Neurosurgery, and Subspecialties', 8, true)
ON CONFLICT (id) DO UPDATE SET 
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    duration_weeks = EXCLUDED.duration_weeks;

-- Create a rotation for Surgery 2
INSERT INTO rotations (id, category_id, name, start_date, end_date, is_active) VALUES
('c0000002-1111-0000-0000-000000000002', 'a0000002-0000-0000-0000-000000000002', 
 'Surgery 2 - January 2026', '2026-01-01', '2026-02-28', true)
ON CONFLICT DO NOTHING;

-- Create Surgery 2 topics (using c prefix to avoid collision with Surgery 1)
INSERT INTO topics (id, category_id, name, description, order_index, is_active) VALUES
-- GENERAL & EMERGENCY SURGERY (01-10)
('c2000001-0000-0000-0000-000000000001'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Acute Abdomen', 'Differential diagnosis and management of acute abdominal emergencies', 1, true),
('c2000002-0000-0000-0000-000000000002'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Acute Appendicitis', 'Diagnosis and management of appendicitis', 2, true),
('c2000003-0000-0000-0000-000000000003'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intestinal Obstruction', 'Pathophysiology, diagnosis and management of bowel obstruction', 3, true),
('c2000004-0000-0000-0000-000000000004'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Enterocutaneous Fistulae', 'Management of intestinal fistulae', 4, true),
('c2000005-0000-0000-0000-000000000005'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Jaundice', 'Evaluation and management of obstructive jaundice', 5, true),
('c2000006-0000-0000-0000-000000000006'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgery in Diabetic Patients', 'Perioperative management of diabetic surgical patients', 6, true),
('c2000007-0000-0000-0000-000000000007'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Infections', 'Common infections of surgical importance', 7, true),
('c2000008-0000-0000-0000-000000000008'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Salmonellosis', 'Surgical complications of typhoid fever', 8, true),
('c2000009-0000-0000-0000-000000000009'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Parasitosis', 'Parasitic diseases requiring surgical intervention', 9, true),
('c2000010-0000-0000-0000-000000000010'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Abdominal Tuberculosis', 'Diagnosis and surgical management of abdominal TB', 10, true),

-- TRAUMA & CRITICAL CARE (11-19)
('c2000011-0000-0000-0000-000000000011'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Trauma Management Principles', 'Systematic approach to trauma patient management', 11, true),
('c2000012-0000-0000-0000-000000000012'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'ATLS Principles', 'Basic and Advanced Trauma Life Support', 12, true),
('c2000013-0000-0000-0000-000000000013'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Abdominal Trauma', 'Blunt and penetrating abdominal trauma management', 13, true),
('c2000014-0000-0000-0000-000000000014'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Chest Trauma', 'Thoracic trauma and pericardial lesions', 14, true),
('c2000015-0000-0000-0000-000000000015'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Cardiac Tamponade', 'Aetiology and emergency management', 15, true),
('c2000016-0000-0000-0000-000000000016'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Spinal Injuries', 'Principles of spinal cord injury management', 16, true),
('c2000017-0000-0000-0000-000000000017'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Pelvic Fractures', 'Principles of pelvic ring injury management', 17, true),
('c2000018-0000-0000-0000-000000000018'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Compartment Syndrome', 'Recognition and management', 18, true),
('c2000019-0000-0000-0000-000000000019'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Burns Management', 'Assessment and management of burn injuries', 19, true),

-- VASCULAR, HEMATOLOGY & PHYSIOLOGY (20-23)
('c2000020-0000-0000-0000-000000000020'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Haemostasis in Surgery', 'Principles of surgical hemostasis', 20, true),
('c2000021-0000-0000-0000-000000000021'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Inotropes and Vasopressors', 'Pharmacology and clinical use', 21, true),
('c2000022-0000-0000-0000-000000000022'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Thrombo-embolism', 'DVT and PE in surgical practice', 22, true),
('c2000023-0000-0000-0000-000000000023'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Varicose Veins', 'Management of varicose veins and venous ulcers', 23, true),

-- NUTRITION, SUPPORTIVE CARE (24-26)
('c2000024-0000-0000-0000-000000000024'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Nutrition', 'Nutritional assessment and support', 24, true),
('c2000025-0000-0000-0000-000000000025'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Central Venous Lines', 'CVC insertion and management', 25, true),
('c2000026-0000-0000-0000-000000000026'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Imaging', 'Ultrasound, CT, and MRI basics', 26, true),

-- ORTHOPAEDICS (27-29)
('c2000027-0000-0000-0000-000000000027'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Metabolic Bone Diseases', 'Osteoporosis and bone metabolism disorders', 27, true),
('c2000028-0000-0000-0000-000000000028'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Arthritis', 'Arthritis conditions of surgical importance', 28, true),
('c2000029-0000-0000-0000-000000000029'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Bone Tumours', 'Classification, diagnosis and management', 29, true),

-- NEUROSURGERY (30-33)
('c2000030-0000-0000-0000-000000000030'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Glasgow Coma Scale', 'GCS assessment and interpretation', 30, true),
('c2000031-0000-0000-0000-000000000031'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Hydrocephalus', 'Surgical management and neurological anomalies', 31, true),
('c2000032-0000-0000-0000-000000000032'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intracranial Suppurations', 'Brain abscess and empyema management', 32, true),
('c2000033-0000-0000-0000-000000000033'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'CNS Tumours', 'Brain and spinal cord tumour management', 33, true),

-- PLASTIC & SKIN (34-36)
('c2000034-0000-0000-0000-000000000034'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Suturing Techniques', 'Different suturing methods and timing', 34, true),
('c2000035-0000-0000-0000-000000000035'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Keloids and Scars', 'Management of abnormal scarring', 35, true),
('c2000036-0000-0000-0000-000000000036'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Hand Infections', 'Diagnosis and management', 36, true),

-- ENDOCRINE & BREAST (37-38)
('c2000037-0000-0000-0000-000000000037'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Breast Diseases', 'Fibroadenoma, fibrocystic disease and other conditions', 37, true),
('c2000038-0000-0000-0000-000000000038'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Thyroid Diseases', 'Goiter, thyroiditis and thyroid nodules', 38, true),

-- GI & HEPATOBILIARY (39-43)
('c2000039-0000-0000-0000-000000000039'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'External Hernias', 'Inguinal, femoral, umbilical and incisional hernias', 39, true),
('c2000040-0000-0000-0000-000000000040'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Colorectal Diseases', 'Benign diseases of the colorectum', 40, true),
('c2000041-0000-0000-0000-000000000041'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Anorectal Diseases', 'Hemorrhoids, fissures, fistulae and abscesses', 41, true),
('c2000042-0000-0000-0000-000000000042'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Gallstones', 'Cholelithiasis and biliary disease', 42, true),
('c2000043-0000-0000-0000-000000000043'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Dysphagia', 'Evaluation and management of swallowing disorders', 43, true),

-- UROLOGY (44-50)
('c2000044-0000-0000-0000-000000000044'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urinary System Tumours', 'Renal, ureteric and bladder cancers', 44, true),
('c2000045-0000-0000-0000-000000000045'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Prostate Cancer', 'Diagnosis and management', 45, true),
('c2000046-0000-0000-0000-000000000046'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'BPH', 'Benign prostatic hyperplasia management', 46, true),
('c2000047-0000-0000-0000-000000000047'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'LUTS and IPSS', 'Lower urinary tract symptoms assessment', 47, true),
('c2000048-0000-0000-0000-000000000048'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urethral Injuries', 'Urethral trauma and strictures', 48, true),
('c2000049-0000-0000-0000-000000000049'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Haematuria and GU Trauma', 'Urological trauma evaluation', 49, true),
('c2000050-0000-0000-0000-000000000050'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urolithiasis', 'Kidney stones management', 50, true),

-- ANDROLOGY (51-53)
('c2000051-0000-0000-0000-000000000051'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Male Infertility', 'Male factor infertility evaluation', 51, true),
('c2000052-0000-0000-0000-000000000052'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Undescended Testis', 'Cryptorchidism management', 52, true),
('c2000053-0000-0000-0000-000000000053'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Scrotal Pathology', 'Scrotal swellings and pain', 53, true),

-- PAEDIATRIC (54-55)
('c2000054-0000-0000-0000-000000000054'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intussusception', 'Pediatric intestinal obstruction', 54, true),
('c2000055-0000-0000-0000-000000000055'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Pediatric Neck Masses', 'Differential diagnosis of neck masses in children', 55, true),

-- ONCOLOGY (56-58)
('c2000056-0000-0000-0000-000000000056'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Radiotherapy in Surgery', 'Principles and applications', 56, true),
('c2000057-0000-0000-0000-000000000057'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'BRCA Genes', 'Molecular genetics in breast cancer', 57, true),
('c2000058-0000-0000-0000-000000000058'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Molecular Surgery', 'Molecular dimensions of surgical practice', 58, true),

-- CARDIOTHORACIC & TRANSPLANT (59-60)
('c2000059-0000-0000-0000-000000000059'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Open Heart Surgery', 'Indications for cardiac surgery', 59, true),
('c2000060-0000-0000-0000-000000000060'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Organ Transplantation', 'Principles of transplant surgery', 60, true),

-- TOXICOLOGY (61)
('c2000061-0000-0000-0000-000000000061'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Venomous Bites and Stings', 'Snake bites, scorpion stings, envenomation', 61, true);

-- Now create the CME articles linked to topics
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level, is_published) VALUES
-- GENERAL & EMERGENCY SURGERY
('d2000001-0000-0000-0000-000000000001'::uuid, 'c2000001-0000-0000-0000-000000000001'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Acute Abdomen: Differential Diagnosis and Management', 'Emergency surgical evaluation of abdominal pain', 'Comprehensive guide to evaluating and managing acute abdominal emergencies', 'UNTH Surgery Department', 2.0, 35, 'medium', true),
('d2000002-0000-0000-0000-000000000002'::uuid, 'c2000002-0000-0000-0000-000000000002'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Acute Appendicitis: Diagnosis and Management', 'Clinical approach to appendicitis', 'From presentation to surgical management of appendicitis', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000003-0000-0000-0000-000000000003'::uuid, 'c2000003-0000-0000-0000-000000000003'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intestinal Obstruction', 'Bowel obstruction pathophysiology and management', 'Understanding the diagnosis and management of bowel obstruction', 'UNTH Surgery Department', 2.0, 35, 'medium', true),
('d2000004-0000-0000-0000-000000000004'::uuid, 'c2000004-0000-0000-0000-000000000004'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Enterocutaneous Fistulae', 'Management of intestinal fistulae', 'Principles of managing enterocutaneous fistulae', 'UNTH Surgery Department', 1.5, 30, 'hard', true),
('d2000005-0000-0000-0000-000000000005'::uuid, 'c2000005-0000-0000-0000-000000000005'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Jaundice', 'Obstructive jaundice evaluation and management', 'Evaluation and management of surgical causes of jaundice', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000006-0000-0000-0000-000000000006'::uuid, 'c2000006-0000-0000-0000-000000000006'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgery in the Diabetic Patient', 'Perioperative management of diabetic patients', 'Optimizing surgical outcomes in diabetic patients', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000007-0000-0000-0000-000000000007'::uuid, 'c2000007-0000-0000-0000-000000000007'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Common Infections of Surgical Importance', 'Surgical infections prevention and treatment', 'Diagnosis and management of common surgical infections', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000008-0000-0000-0000-000000000008'::uuid, 'c2000008-0000-0000-0000-000000000008'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Management of Salmonellosis', 'Typhoid fever surgical complications', 'Surgical complications and management of typhoid fever', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000009-0000-0000-0000-000000000009'::uuid, 'c2000009-0000-0000-0000-000000000009'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Parasitosis', 'Parasitic diseases requiring surgery', 'Parasitic diseases requiring surgical intervention', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000010-0000-0000-0000-000000000010'::uuid, 'c2000010-0000-0000-0000-000000000010'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Management of Abdominal Tuberculosis', 'Abdominal TB diagnosis and surgery', 'Diagnosis and surgical management of abdominal TB', 'UNTH Surgery Department', 2.0, 30, 'hard', true),

-- TRAUMA & CRITICAL CARE
('d2000011-0000-0000-0000-000000000011'::uuid, 'c2000011-0000-0000-0000-000000000011'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Management of Trauma Patients', 'Principles and practice of trauma care', 'Systematic approach to trauma patient management', 'UNTH Surgery Department', 2.5, 40, 'medium', true),
('d2000012-0000-0000-0000-000000000012'::uuid, 'c2000012-0000-0000-0000-000000000012'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Basic and Advanced Trauma Life Support', 'ATLS principles and protocols', 'Comprehensive ATLS training principles', 'UNTH Surgery Department', 2.5, 45, 'medium', true),
('d2000013-0000-0000-0000-000000000013'::uuid, 'c2000013-0000-0000-0000-000000000013'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Abdominal Trauma Management', 'Blunt and penetrating abdominal trauma', 'Management of abdominal injuries', 'UNTH Surgery Department', 2.0, 35, 'medium', true),
('d2000014-0000-0000-0000-000000000014'::uuid, 'c2000014-0000-0000-0000-000000000014'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Chest Trauma and Pericardial Lesions', 'Thoracic trauma assessment and management', 'Management of chest injuries', 'UNTH Surgery Department', 2.0, 35, 'medium', true),
('d2000015-0000-0000-0000-000000000015'::uuid, 'c2000015-0000-0000-0000-000000000015'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Cardiac Tamponade', 'Recognition and emergency management', 'Aetiology and management of cardiac tamponade', 'UNTH Surgery Department', 1.5, 25, 'hard', true),
('d2000016-0000-0000-0000-000000000016'::uuid, 'c2000016-0000-0000-0000-000000000016'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Spinal Injuries Management', 'Spinal cord injury principles', 'Assessment and management of spinal injuries', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000017-0000-0000-0000-000000000017'::uuid, 'c2000017-0000-0000-0000-000000000017'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Pelvic Fractures Management', 'Pelvic ring injuries', 'Management principles for pelvic fractures', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000018-0000-0000-0000-000000000018'::uuid, 'c2000018-0000-0000-0000-000000000018'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Compartment Syndrome', 'Recognition and management', 'Diagnosis and treatment of compartment syndrome', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000019-0000-0000-0000-000000000019'::uuid, 'c2000019-0000-0000-0000-000000000019'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Burns: Assessment and Management', 'Comprehensive burn care', 'From initial assessment to rehabilitation', 'UNTH Surgery Department', 2.5, 40, 'medium', true),

-- VASCULAR, HEMATOLOGY & PHYSIOLOGY
('d2000020-0000-0000-0000-000000000020'::uuid, 'c2000020-0000-0000-0000-000000000020'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Haemostasis in Surgery', 'Surgical hemostasis principles', 'Coagulation and hemostasis in surgical practice', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000021-0000-0000-0000-000000000021'::uuid, 'c2000021-0000-0000-0000-000000000021'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Inotropes and Vasopressors', 'Cardiovascular pharmacology', 'Clinical use of inotropes and vasopressors', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000022-0000-0000-0000-000000000022'::uuid, 'c2000022-0000-0000-0000-000000000022'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Thrombo-embolism in Surgical Practice', 'DVT and PE prevention and management', 'Venous thromboembolism in surgery', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000023-0000-0000-0000-000000000023'::uuid, 'c2000023-0000-0000-0000-000000000023'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Management of Varicose Veins', 'Chronic venous insufficiency treatment', 'Varicose veins and venous ulcer management', 'UNTH Surgery Department', 1.5, 30, 'medium', true),

-- NUTRITION, SUPPORTIVE CARE & PROCEDURES
('d2000024-0000-0000-0000-000000000024'::uuid, 'c2000024-0000-0000-0000-000000000024'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Nutrition in Surgery', 'Surgical nutrition support', 'Nutritional assessment and support in surgical patients', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000025-0000-0000-0000-000000000025'::uuid, 'c2000025-0000-0000-0000-000000000025'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Central Venous Lines', 'CVC insertion and management', 'Central venous catheter procedures and complications', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000026-0000-0000-0000-000000000026'::uuid, 'c2000026-0000-0000-0000-000000000026'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Basic Imaging in Surgery', 'Ultrasound, CT, and MRI interpretation', 'Surgical imaging modalities', 'UNTH Surgery Department', 2.0, 35, 'medium', true),

-- ORTHOPAEDICS & MUSCULOSKELETAL
('d2000027-0000-0000-0000-000000000027'::uuid, 'c2000027-0000-0000-0000-000000000027'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Common Metabolic Bone Diseases', 'Osteoporosis and bone metabolism', 'Metabolic bone disorders of surgical importance', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000028-0000-0000-0000-000000000028'::uuid, 'c2000028-0000-0000-0000-000000000028'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Arthritis of Surgical Importance', 'Surgical management of arthritis', 'Arthritis conditions requiring surgical treatment', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000029-0000-0000-0000-000000000029'::uuid, 'c2000029-0000-0000-0000-000000000029'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Bone Tumours', 'Classification and management', 'Diagnosis and treatment of bone tumors', 'UNTH Surgery Department', 2.0, 35, 'hard', true),

-- NEUROSURGERY
('d2000030-0000-0000-0000-000000000030'::uuid, 'c2000030-0000-0000-0000-000000000030'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Glasgow Coma Scale', 'GCS assessment and interpretation', 'Understanding and applying the Glasgow Coma Scale', 'UNTH Surgery Department', 1.0, 20, 'easy', true),
('d2000031-0000-0000-0000-000000000031'::uuid, 'c2000031-0000-0000-0000-000000000031'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Hydrocephalus and Neurological Anomalies', 'Surgical management of hydrocephalus', 'Hydrocephalus and congenital neurological anomalies', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000032-0000-0000-0000-000000000032'::uuid, 'c2000032-0000-0000-0000-000000000032'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intracranial Suppurations', 'Brain abscess management', 'Management of brain abscess and empyema', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000033-0000-0000-0000-000000000033'::uuid, 'c2000033-0000-0000-0000-000000000033'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Brain and Spinal Cord Tumours', 'Neuro-oncology principles', 'Principles of CNS tumor management', 'UNTH Surgery Department', 2.0, 35, 'hard', true),

-- PLASTIC, RECONSTRUCTIVE & SKIN
('d2000034-0000-0000-0000-000000000034'::uuid, 'c2000034-0000-0000-0000-000000000034'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Suturing Techniques and Suture Removal', 'Wound closure methods', 'Different suturing techniques and timing', 'UNTH Surgery Department', 1.0, 25, 'easy', true),
('d2000035-0000-0000-0000-000000000035'::uuid, 'c2000035-0000-0000-0000-000000000035'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Keloids and Hypertrophic Scars', 'Abnormal scarring management', 'Prevention and treatment of abnormal scars', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000036-0000-0000-0000-000000000036'::uuid, 'c2000036-0000-0000-0000-000000000036'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Hand Infections', 'Diagnosis and management', 'Common hand infections and their treatment', 'UNTH Surgery Department', 1.5, 25, 'medium', true),

-- ENDOCRINE & BREAST
('d2000037-0000-0000-0000-000000000037'::uuid, 'c2000037-0000-0000-0000-000000000037'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Diseases of the Breast', 'Breast lumps and conditions', 'Fibroadenoma, fibrocystic disease, and other conditions', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000038-0000-0000-0000-000000000038'::uuid, 'c2000038-0000-0000-0000-000000000038'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Diseases of the Thyroid', 'Thyroid nodules and goiter', 'Evaluation and management of benign thyroid disease', 'UNTH Surgery Department', 1.5, 30, 'medium', true),

-- GASTROINTESTINAL & HEPATOBILIARY
('d2000039-0000-0000-0000-000000000039'::uuid, 'c2000039-0000-0000-0000-000000000039'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'External Hernias', 'Hernia diagnosis and management', 'Inguinal, femoral, umbilical, and incisional hernias', 'UNTH Surgery Department', 2.0, 35, 'medium', true),
('d2000040-0000-0000-0000-000000000040'::uuid, 'c2000040-0000-0000-0000-000000000040'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Diseases of the Colorectum', 'Colorectal conditions', 'Diverticular disease, polyps, and other conditions', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000041-0000-0000-0000-000000000041'::uuid, 'c2000041-0000-0000-0000-000000000041'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Diseases of the Anus', 'Anorectal conditions', 'Hemorrhoids, fissures, fistulae, and abscesses', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000042-0000-0000-0000-000000000042'::uuid, 'c2000042-0000-0000-0000-000000000042'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Gallstones and Biliary Disease', 'Gallbladder pathology', 'Cholelithiasis and cholecystitis management', 'UNTH Surgery Department', 2.0, 35, 'medium', true),
('d2000043-0000-0000-0000-000000000043'::uuid, 'c2000043-0000-0000-0000-000000000043'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Management of Dysphagia', 'Swallowing disorders', 'Evaluation and treatment of dysphagia', 'UNTH Surgery Department', 1.5, 30, 'medium', true),

-- UROLOGY
('d2000044-0000-0000-0000-000000000044'::uuid, 'c2000044-0000-0000-0000-000000000044'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Tumours of the Urinary System', 'Urological malignancies', 'Renal, ureteric, and bladder cancers', 'UNTH Surgery Department', 2.0, 35, 'hard', true),
('d2000045-0000-0000-0000-000000000045'::uuid, 'c2000045-0000-0000-0000-000000000045'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Cancer of the Prostate', 'Prostate cancer management', 'Diagnosis and treatment of prostate cancer', 'UNTH Surgery Department', 2.0, 35, 'hard', true),
('d2000046-0000-0000-0000-000000000046'::uuid, 'c2000046-0000-0000-0000-000000000046'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Prostatic Hyperplasia', 'BPH evaluation and treatment', 'Management of benign prostate enlargement', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000047-0000-0000-0000-000000000047'::uuid, 'c2000047-0000-0000-0000-000000000047'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'LUTS and IPSS', 'Lower urinary tract symptoms', 'Assessment using International Prostate Symptom Score', 'UNTH Surgery Department', 1.0, 25, 'medium', true),
('d2000048-0000-0000-0000-000000000048'::uuid, 'c2000048-0000-0000-0000-000000000048'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urethral Injuries and Strictures', 'Urethral trauma management', 'Urethral injury and stricture treatment', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000049-0000-0000-0000-000000000049'::uuid, 'c2000049-0000-0000-0000-000000000049'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Haematuria and Urinary Tract Trauma', 'Urological trauma evaluation', 'Assessment of hematuria and GU injuries', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000050-0000-0000-0000-000000000050'::uuid, 'c2000050-0000-0000-0000-000000000050'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urolithiasis', 'Kidney stones management', 'Diagnosis and treatment of urinary calculi', 'UNTH Surgery Department', 1.5, 30, 'medium', true),

-- ANDROLOGY & MALE REPRODUCTIVE
('d2000051-0000-0000-0000-000000000051'::uuid, 'c2000051-0000-0000-0000-000000000051'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Male Factor Infertility', 'Male infertility evaluation', 'Causes and treatment of male infertility', 'UNTH Surgery Department', 1.5, 30, 'medium', true),
('d2000052-0000-0000-0000-000000000052'::uuid, 'c2000052-0000-0000-0000-000000000052'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Undescended Testis', 'Cryptorchidism management', 'Diagnosis and treatment of undescended testis', 'UNTH Surgery Department', 1.0, 25, 'medium', true),
('d2000053-0000-0000-0000-000000000053'::uuid, 'c2000053-0000-0000-0000-000000000053'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Scrotal Swellings and Pain', 'Scrotal pathology differential', 'Evaluation of scrotal masses and acute scrotum', 'UNTH Surgery Department', 1.5, 30, 'medium', true),

-- PAEDIATRIC SURGERY
('d2000054-0000-0000-0000-000000000054'::uuid, 'c2000054-0000-0000-0000-000000000054'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intussusception in Children', 'Pediatric bowel obstruction', 'Diagnosis and management of intussusception', 'UNTH Surgery Department', 1.5, 25, 'medium', true),
('d2000055-0000-0000-0000-000000000055'::uuid, 'c2000055-0000-0000-0000-000000000055'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Neck Masses in Children', 'Pediatric neck lumps', 'Differential diagnosis of neck masses in children', 'UNTH Surgery Department', 1.5, 25, 'medium', true),

-- ONCOLOGY & ADVANCED
('d2000056-0000-0000-0000-000000000056'::uuid, 'c2000056-0000-0000-0000-000000000056'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Principles of Radiotherapy in Surgery', 'Surgical oncology radiotherapy', 'Role of radiation therapy in surgical practice', 'UNTH Surgery Department', 1.5, 30, 'hard', true),
('d2000057-0000-0000-0000-000000000057'::uuid, 'c2000057-0000-0000-0000-000000000057'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'BRCA Genes in Breast Cancer', 'Molecular genetics of breast cancer', 'BRCA1/BRCA2 and hereditary breast cancer', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000058-0000-0000-0000-000000000058'::uuid, 'c2000058-0000-0000-0000-000000000058'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Molecular Dimensions of Surgery', 'Molecular biology in surgery', 'Molecular perspectives in surgical practice', 'UNTH Surgery Department', 2.0, 30, 'hard', true),

-- CARDIOTHORACIC & TRANSPLANT
('d2000059-0000-0000-0000-000000000059'::uuid, 'c2000059-0000-0000-0000-000000000059'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Indications for Open Heart Surgery', 'Cardiac surgery principles', 'When and why open heart surgery is indicated', 'UNTH Surgery Department', 2.0, 30, 'hard', true),
('d2000060-0000-0000-0000-000000000060'::uuid, 'c2000060-0000-0000-0000-000000000060'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Principles of Organ Transplantation', 'Transplant surgery fundamentals', 'Basic principles of organ transplantation', 'UNTH Surgery Department', 2.0, 35, 'hard', true),

-- TOXICOLOGY & ENVENOMATION
('d2000061-0000-0000-0000-000000000061'::uuid, 'c2000061-0000-0000-0000-000000000061'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Venomous Stings and Bites', 'Envenomation management', 'Snake bites, scorpion stings, and other envenomations', 'UNTH Surgery Department', 2.0, 35, 'medium', true);
