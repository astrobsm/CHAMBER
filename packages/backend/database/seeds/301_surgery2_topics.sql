-- Surgery 2 Complete Setup

-- First create the Surgery 2 category
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) VALUES
('a0000002-0000-0000-0000-000000000002'::uuid, 'Surgery 2', 'SURG2', 'surgery_2', 'General & Emergency Surgery, Trauma, Vascular, Orthopaedics, Neurosurgery, and Subspecialties', 8, true)
ON CONFLICT (id) DO NOTHING;

-- Create Surgery 2 topics
INSERT INTO topics (id, category_id, name, description, order_index, is_active) VALUES
-- GENERAL & EMERGENCY SURGERY (01-10)
('c0000001-0000-0000-0000-000000000001'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Acute Abdomen', 'Differential diagnosis and management of acute abdominal emergencies', 1, true),
('c0000002-0000-0000-0000-000000000002'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Acute Appendicitis', 'Diagnosis and management of appendicitis', 2, true),
('c0000003-0000-0000-0000-000000000003'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intestinal Obstruction', 'Pathophysiology and management of bowel obstruction', 3, true),
('c0000004-0000-0000-0000-000000000004'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Enterocutaneous Fistulae', 'Management of intestinal fistulae', 4, true),
('c0000005-0000-0000-0000-000000000005'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Jaundice', 'Evaluation and management of obstructive jaundice', 5, true),
('c0000006-0000-0000-0000-000000000006'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgery in Diabetic Patients', 'Perioperative management of diabetic surgical patients', 6, true),
('c0000007-0000-0000-0000-000000000007'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Infections', 'Common infections of surgical importance', 7, true),
('c0000008-0000-0000-0000-000000000008'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Salmonellosis', 'Surgical complications of typhoid fever', 8, true),
('c0000009-0000-0000-0000-000000000009'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Parasitosis', 'Parasitic diseases requiring surgical intervention', 9, true),
('c0000010-0000-0000-0000-000000000010'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Abdominal Tuberculosis', 'Diagnosis and surgical management of abdominal TB', 10, true),
-- TRAUMA & CRITICAL CARE (11-19)
('c0000011-0000-0000-0000-000000000011'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Trauma Management', 'Systematic approach to trauma patient management', 11, true),
('c0000012-0000-0000-0000-000000000012'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'ATLS Principles', 'Basic and Advanced Trauma Life Support', 12, true),
('c0000013-0000-0000-0000-000000000013'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Abdominal Trauma', 'Blunt and penetrating abdominal trauma', 13, true),
('c0000014-0000-0000-0000-000000000014'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Chest Trauma', 'Thoracic trauma and pericardial lesions', 14, true),
('c0000015-0000-0000-0000-000000000015'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Cardiac Tamponade', 'Aetiology and emergency management', 15, true),
('c0000016-0000-0000-0000-000000000016'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Spinal Injuries', 'Principles of spinal cord injury management', 16, true),
('c0000017-0000-0000-0000-000000000017'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Pelvic Fractures', 'Principles of pelvic ring injury management', 17, true),
('c0000018-0000-0000-0000-000000000018'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Compartment Syndrome', 'Recognition and management', 18, true),
('c0000019-0000-0000-0000-000000000019'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Burns Management', 'Assessment and management of burn injuries', 19, true),
-- VASCULAR, HEMATOLOGY (20-23)
('c0000020-0000-0000-0000-000000000020'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Haemostasis in Surgery', 'Principles of surgical hemostasis', 20, true),
('c0000021-0000-0000-0000-000000000021'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Inotropes and Vasopressors', 'Pharmacology and clinical use', 21, true),
('c0000022-0000-0000-0000-000000000022'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Thrombo-embolism', 'DVT and PE in surgical practice', 22, true),
('c0000023-0000-0000-0000-000000000023'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Varicose Veins', 'Management of varicose veins and ulcers', 23, true),
-- NUTRITION (24-26)
('c0000024-0000-0000-0000-000000000024'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Nutrition', 'Nutritional assessment and support', 24, true),
('c0000025-0000-0000-0000-000000000025'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Central Venous Lines', 'CVC insertion and management', 25, true),
('c0000026-0000-0000-0000-000000000026'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Imaging', 'Ultrasound, CT, and MRI basics', 26, true),
-- ORTHOPAEDICS (27-29)
('c0000027-0000-0000-0000-000000000027'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Metabolic Bone Diseases', 'Osteoporosis and bone metabolism', 27, true),
('c0000028-0000-0000-0000-000000000028'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Surgical Arthritis', 'Arthritis of surgical importance', 28, true),
('c0000029-0000-0000-0000-000000000029'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Bone Tumours', 'Classification and management', 29, true),
-- NEUROSURGERY (30-33)
('c0000030-0000-0000-0000-000000000030'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Glasgow Coma Scale', 'GCS assessment and interpretation', 30, true),
('c0000031-0000-0000-0000-000000000031'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Hydrocephalus', 'Surgical management and anomalies', 31, true),
('c0000032-0000-0000-0000-000000000032'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intracranial Suppurations', 'Brain abscess and empyema', 32, true),
('c0000033-0000-0000-0000-000000000033'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'CNS Tumours', 'Brain and spinal cord tumours', 33, true),
-- PLASTIC (34-36)
('c0000034-0000-0000-0000-000000000034'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Suturing Techniques', 'Different suturing methods', 34, true),
('c0000035-0000-0000-0000-000000000035'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Keloids and Scars', 'Management of abnormal scarring', 35, true),
('c0000036-0000-0000-0000-000000000036'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Hand Infections', 'Diagnosis and management', 36, true),
-- ENDOCRINE (37-38)
('c0000037-0000-0000-0000-000000000037'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Breast Diseases', 'Fibroadenoma and other conditions', 37, true),
('c0000038-0000-0000-0000-000000000038'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Benign Thyroid Diseases', 'Goiter and thyroid nodules', 38, true),
-- GI (39-43)
('c0000039-0000-0000-0000-000000000039'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'External Hernias', 'Inguinal, femoral, umbilical hernias', 39, true),
('c0000040-0000-0000-0000-000000000040'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Colorectal Diseases', 'Benign colorectal conditions', 40, true),
('c0000041-0000-0000-0000-000000000041'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Anorectal Diseases', 'Hemorrhoids, fissures, fistulae', 41, true),
('c0000042-0000-0000-0000-000000000042'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Gallstones', 'Cholelithiasis and biliary disease', 42, true),
('c0000043-0000-0000-0000-000000000043'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Dysphagia', 'Swallowing disorders', 43, true),
-- UROLOGY (44-50)
('c0000044-0000-0000-0000-000000000044'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urinary System Tumours', 'Renal, ureteric, bladder cancers', 44, true),
('c0000045-0000-0000-0000-000000000045'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Prostate Cancer', 'Diagnosis and management', 45, true),
('c0000046-0000-0000-0000-000000000046'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'BPH', 'Benign prostatic hyperplasia', 46, true),
('c0000047-0000-0000-0000-000000000047'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'LUTS and IPSS', 'Lower urinary tract symptoms', 47, true),
('c0000048-0000-0000-0000-000000000048'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urethral Injuries', 'Urethral trauma and strictures', 48, true),
('c0000049-0000-0000-0000-000000000049'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Haematuria and GU Trauma', 'Urological trauma', 49, true),
('c0000050-0000-0000-0000-000000000050'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Urolithiasis', 'Kidney stones', 50, true),
-- ANDROLOGY (51-53)
('c0000051-0000-0000-0000-000000000051'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Male Infertility', 'Male factor infertility', 51, true),
('c0000052-0000-0000-0000-000000000052'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Undescended Testis', 'Cryptorchidism', 52, true),
('c0000053-0000-0000-0000-000000000053'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Scrotal Pathology', 'Scrotal swellings and pain', 53, true),
-- PAEDIATRIC (54-55)
('c0000054-0000-0000-0000-000000000054'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Intussusception', 'Pediatric intestinal obstruction', 54, true),
('c0000055-0000-0000-0000-000000000055'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Pediatric Neck Masses', 'Neck masses in children', 55, true),
-- ONCOLOGY (56-58)
('c0000056-0000-0000-0000-000000000056'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Radiotherapy in Surgery', 'Principles and applications', 56, true),
('c0000057-0000-0000-0000-000000000057'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'BRCA Genes', 'Molecular genetics breast cancer', 57, true),
('c0000058-0000-0000-0000-000000000058'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Molecular Surgery', 'Molecular dimensions of surgery', 58, true),
-- CARDIOTHORACIC (59-60)
('c0000059-0000-0000-0000-000000000059'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Open Heart Surgery', 'Cardiac surgery indications', 59, true),
('c0000060-0000-0000-0000-000000000060'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Organ Transplantation', 'Transplant surgery principles', 60, true),
-- TOXICOLOGY (61)
('c0000061-0000-0000-0000-000000000061'::uuid, 'a0000002-0000-0000-0000-000000000002'::uuid, 'Venomous Bites and Stings', 'Snake bites, scorpion stings', 61, true);
