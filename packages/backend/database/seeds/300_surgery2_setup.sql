-- Surgery 2 Category Setup
-- Create category and all CME articles

-- First, create the Surgery 2 category
INSERT INTO categories (name, description, icon, color, is_active) VALUES
('Surgery 2', 'General & Emergency Surgery, Trauma, Vascular, Orthopaedics, Neurosurgery, and Subspecialties', '🏥', '#DC2626', true)
ON CONFLICT (name) DO NOTHING;

-- Get the category ID for Surgery 2
DO $$
DECLARE
    surgery2_cat_id UUID;
BEGIN
    SELECT id INTO surgery2_cat_id FROM categories WHERE name = 'Surgery 2';
    
    -- Create all CME articles for Surgery 2
    -- GENERAL & EMERGENCY SURGERY
    INSERT INTO cme_articles (category_id, title, description, author, estimated_read_time, difficulty_level, is_published) VALUES
    (surgery2_cat_id, 'Acute Abdomen: Differential Diagnosis and Management', 'Comprehensive guide to evaluating and managing acute abdominal emergencies', 'UNTH Surgery Department', 35, 'intermediate', true),
    (surgery2_cat_id, 'Acute Appendicitis: Diagnosis and Management', 'Clinical approach to appendicitis from presentation to surgical management', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Intestinal Obstruction', 'Understanding the pathophysiology, diagnosis, and management of bowel obstruction', 'UNTH Surgery Department', 35, 'intermediate', true),
    (surgery2_cat_id, 'Enterocutaneous Fistulae', 'Management principles for intestinal fistulae', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Surgical Jaundice', 'Evaluation and management of obstructive jaundice', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Surgery in the Diabetic Patient', 'Perioperative management of diabetic surgical patients', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Common Infections of Surgical Importance', 'Surgical infections: prevention, diagnosis, and treatment', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Surgical Management of Salmonellosis', 'Surgical complications and management of typhoid fever', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Surgical Parasitosis', 'Parasitic diseases requiring surgical intervention', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Surgical Management of Abdominal Tuberculosis', 'Abdominal TB: diagnosis and surgical management', 'UNTH Surgery Department', 30, 'advanced', true),
    
    -- TRAUMA & CRITICAL CARE
    (surgery2_cat_id, 'Management of Trauma Patients: Principles and Practice', 'Systematic approach to trauma patient management', 'UNTH Surgery Department', 40, 'intermediate', true),
    (surgery2_cat_id, 'Basic and Advanced Trauma Life Support (ATLS)', 'ATLS principles and protocols', 'UNTH Surgery Department', 45, 'intermediate', true),
    (surgery2_cat_id, 'Abdominal Trauma: Pathophysiology and Management', 'Blunt and penetrating abdominal trauma management', 'UNTH Surgery Department', 35, 'intermediate', true),
    (surgery2_cat_id, 'Chest Trauma and Pericardial Lesions', 'Thoracic trauma assessment and management', 'UNTH Surgery Department', 35, 'intermediate', true),
    (surgery2_cat_id, 'Cardiac Tamponade: Aetiology and Management', 'Recognition and emergency management of cardiac tamponade', 'UNTH Surgery Department', 25, 'advanced', true),
    (surgery2_cat_id, 'Spinal Injuries: Principles of Management', 'Spinal cord injury assessment and management', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Pelvic Fractures: Principles of Management', 'Management of pelvic ring injuries', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Compartment Syndrome', 'Recognition and management of compartment syndrome', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Burns: Assessment and Management', 'Comprehensive burn care from initial assessment to rehabilitation', 'UNTH Surgery Department', 40, 'intermediate', true),
    
    -- VASCULAR, HEMATOLOGY & PHYSIOLOGY
    (surgery2_cat_id, 'Haemostasis in Surgery', 'Principles of surgical hemostasis and coagulation', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Inotropes and Vasopressors', 'Pharmacology and clinical use of cardiovascular drugs', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Thrombo-embolism in Surgical Practice', 'DVT and PE: prevention and management', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Management of Varicose Veins and Ulcers', 'Chronic venous insufficiency and varicose vein treatment', 'UNTH Surgery Department', 30, 'intermediate', true),
    
    -- NUTRITION, SUPPORTIVE CARE & PROCEDURES
    (surgery2_cat_id, 'Nutrition in Surgery', 'Nutritional assessment and support in surgical patients', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Central Venous Lines', 'Insertion, management, and complications of CVCs', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Basic Imaging in Surgery', 'Ultrasound, CT Scan, and MRI interpretation for surgeons', 'UNTH Surgery Department', 35, 'intermediate', true),
    
    -- ORTHOPAEDICS & MUSCULOSKELETAL
    (surgery2_cat_id, 'Common Metabolic Bone Diseases', 'Osteoporosis, Paget disease, and metabolic bone disorders', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Arthritis of Surgical Importance', 'Surgical management of arthritis conditions', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Bone Tumours', 'Classification, diagnosis, and management of bone tumors', 'UNTH Surgery Department', 35, 'advanced', true),
    
    -- NEUROSURGERY
    (surgery2_cat_id, 'Glasgow Coma Scale (GCS)', 'Assessment and interpretation of GCS', 'UNTH Surgery Department', 20, 'beginner', true),
    (surgery2_cat_id, 'Hydrocephalus and Neurological Anomalies', 'Surgical management of hydrocephalus and congenital anomalies', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Management of Intracranial Suppurations', 'Brain abscess and empyema management', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Brain and Spinal Cord Tumours', 'Principles of neuro-oncology surgery', 'UNTH Surgery Department', 35, 'advanced', true),
    
    -- PLASTIC, RECONSTRUCTIVE & SKIN
    (surgery2_cat_id, 'Suturing Techniques and Timing of Suture Removal', 'Different suturing methods and wound closure', 'UNTH Surgery Department', 25, 'beginner', true),
    (surgery2_cat_id, 'Keloids and Hypertrophic Scars', 'Prevention and management of abnormal scarring', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Hand Infections', 'Diagnosis and management of hand infections', 'UNTH Surgery Department', 25, 'intermediate', true),
    
    -- ENDOCRINE & BREAST
    (surgery2_cat_id, 'Benign Diseases of the Breast', 'Fibroadenoma, fibrocystic disease, and other benign conditions', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Benign Diseases of the Thyroid', 'Goiter, thyroiditis, and benign thyroid nodules', 'UNTH Surgery Department', 30, 'intermediate', true),
    
    -- GASTROINTESTINAL & HEPATOBILIARY
    (surgery2_cat_id, 'External Hernias: Diagnosis and Management', 'Inguinal, femoral, umbilical, and incisional hernias', 'UNTH Surgery Department', 35, 'intermediate', true),
    (surgery2_cat_id, 'Benign Diseases of the Colorectum', 'Diverticular disease, polyps, and other colorectal conditions', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Benign Diseases of the Anus', 'Hemorrhoids, fissures, fistulae, and abscesses', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Gallstones and Diseases of the Gall Bladder', 'Cholelithiasis, cholecystitis, and biliary disease', 'UNTH Surgery Department', 35, 'intermediate', true),
    (surgery2_cat_id, 'Management of Dysphagia', 'Evaluation and treatment of swallowing disorders', 'UNTH Surgery Department', 30, 'intermediate', true),
    
    -- UROLOGY
    (surgery2_cat_id, 'Tumours of the Urinary System', 'Renal, ureteric, and bladder malignancies', 'UNTH Surgery Department', 35, 'advanced', true),
    (surgery2_cat_id, 'Cancer of the Prostate', 'Prostate cancer diagnosis and management', 'UNTH Surgery Department', 35, 'advanced', true),
    (surgery2_cat_id, 'Benign Prostatic Hyperplasia (BPH)', 'BPH evaluation and treatment options', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'LUTS and International Prostate Symptom Score', 'Lower urinary tract symptoms assessment', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Urethral Injuries and Strictures', 'Urethral trauma and stricture management', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Haematuria and Urinary Tract Trauma', 'Evaluation of hematuria and genitourinary trauma', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Urolithiasis', 'Kidney stones: diagnosis and management', 'UNTH Surgery Department', 30, 'intermediate', true),
    
    -- ANDROLOGY & MALE REPRODUCTIVE
    (surgery2_cat_id, 'Male Factor Infertility', 'Evaluation and treatment of male infertility', 'UNTH Surgery Department', 30, 'intermediate', true),
    (surgery2_cat_id, 'Undescended Testis', 'Cryptorchidism management', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Scrotal Swellings and Pain', 'Differential diagnosis of scrotal pathology', 'UNTH Surgery Department', 30, 'intermediate', true),
    
    -- PAEDIATRIC SURGERY
    (surgery2_cat_id, 'Intussusception in Children', 'Pediatric intestinal obstruction management', 'UNTH Surgery Department', 25, 'intermediate', true),
    (surgery2_cat_id, 'Neck Masses in Children and Young Adults', 'Differential diagnosis of pediatric neck masses', 'UNTH Surgery Department', 25, 'intermediate', true),
    
    -- ONCOLOGY & ADVANCED
    (surgery2_cat_id, 'Principles of Radiotherapy in Surgery', 'Role of radiation therapy in surgical oncology', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'BRCA1/BRCA2 Genes in Breast Cancer', 'Molecular genetics in breast cancer management', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Molecular Dimensions of Surgical Practice', 'Molecular biology applications in surgery', 'UNTH Surgery Department', 30, 'advanced', true),
    
    -- CARDIOTHORACIC & TRANSPLANT
    (surgery2_cat_id, 'Indications for Open Heart Surgery', 'Cardiac surgery indications and principles', 'UNTH Surgery Department', 30, 'advanced', true),
    (surgery2_cat_id, 'Principles of Organ Transplantation', 'Transplant surgery fundamentals', 'UNTH Surgery Department', 35, 'advanced', true),
    
    -- TOXICOLOGY & ENVENOMATION
    (surgery2_cat_id, 'Management of Venomous Stings and Bites', 'Snake bites, scorpion stings, and envenomation management', 'UNTH Surgery Department', 35, 'intermediate', true);
END $$;
