-- ============================================================================
-- SURGERY 3 SETUP - Category and Topics
-- Creates the Surgery 3 rotation category and all 35 topics
-- ============================================================================

-- Insert Surgery 3 category
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) VALUES
('a0000003-0000-0000-0000-000000000003', 'Surgery 3', 'SURG3', 'surgery_3', 
 'Surgery 3 rotation covering Paediatric Surgery, Urology, Orthopaedics, Cardiothoracic Surgery, Neurosurgery, Plastic Surgery, and related subspecialties', 
 8, true)
ON CONFLICT (code) DO UPDATE SET 
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    duration_weeks = EXCLUDED.duration_weeks;

-- Create a rotation for Surgery 3 (current period)
INSERT INTO rotations (id, category_id, name, start_date, end_date, is_active) VALUES
('c0000003-1111-0000-0000-000000000003', 'a0000003-0000-0000-0000-000000000003', 
 'Surgery 3 - January 2026', '2026-01-01', '2026-02-28', true)
ON CONFLICT DO NOTHING;

-- Insert all 35 Surgery 3 Topics
INSERT INTO topics (id, category_id, name, description, order_index, is_active) VALUES

-- Paediatric Surgery Topics (1-10)
('c0000001-0000-0000-0000-000000000001', 'a0000003-0000-0000-0000-000000000003',
 'Hirschsprung''s Disease: Management',
 'Congenital megacolon - pathophysiology, diagnosis, and surgical management', 1, true),

('c0000002-0000-0000-0000-000000000002', 'a0000003-0000-0000-0000-000000000003',
 'Anterior Abdominal Wall Defects',
 'Omphalocele, gastroschisis, umbilical hernia, and other congenital abdominal wall defects', 2, true),

('c0000003-0000-0000-0000-000000000003', 'a0000003-0000-0000-0000-000000000003',
 'Management of Anorectal Anomalies',
 'Imperforate anus, anorectal malformations, and their surgical correction', 3, true),

('c0000004-0000-0000-0000-000000000004', 'a0000003-0000-0000-0000-000000000003',
 'Childhood Malignancies: Nephroblastoma',
 'Wilms tumor - presentation, staging, and multimodal management', 4, true),

('c0000005-0000-0000-0000-000000000005', 'a0000003-0000-0000-0000-000000000003',
 'Paediatric Obstructive Jaundice',
 'Biliary atresia, choledochal cyst, and other causes of neonatal jaundice', 5, true),

('c0000006-0000-0000-0000-000000000006', 'a0000003-0000-0000-0000-000000000003',
 'Management of Cleft Lip and Palate',
 'Embryology, classification, timing of repair, and surgical techniques', 6, true),

('c0000007-0000-0000-0000-000000000007', 'a0000003-0000-0000-0000-000000000003',
 'Childhood Malignancies: Neuroblastoma',
 'Neural crest tumor - diagnosis, staging, and treatment protocols', 7, true),

('c0000008-0000-0000-0000-000000000008', 'a0000003-0000-0000-0000-000000000003',
 'Childhood Malignancies: Lymphomas',
 'Hodgkin and Non-Hodgkin lymphoma in children', 8, true),

('c0000009-0000-0000-0000-000000000009', 'a0000003-0000-0000-0000-000000000003',
 'Ambiguous Genitalia: Principles of Management',
 'Disorders of sex development - evaluation and management', 9, true),

('c0000010-0000-0000-0000-000000000010', 'a0000003-0000-0000-0000-000000000003',
 'Common Congenital Hand Anomalies',
 'Syndactyly, polydactyly, and other congenital hand deformities', 10, true),

-- Urology Topics (11-16)
('c0000011-0000-0000-0000-000000000011', 'a0000003-0000-0000-0000-000000000003',
 'Urolithiasis',
 'Kidney stones - types, diagnosis, and management including ESWL and surgical options', 11, true),

('c0000012-0000-0000-0000-000000000012', 'a0000003-0000-0000-0000-000000000003',
 'Hypospadias and Epispadias',
 'Congenital penile anomalies - classification and surgical repair', 12, true),

('c0000013-0000-0000-0000-000000000013', 'a0000003-0000-0000-0000-000000000003',
 'Tumors of the Urinary System',
 'Renal cell carcinoma, transitional cell carcinoma, and bladder tumors', 13, true),

('c0000014-0000-0000-0000-000000000014', 'a0000003-0000-0000-0000-000000000003',
 'Posterior Urethral Valve Obstruction and Complications',
 'Congenital urethral obstruction in males - diagnosis and management', 14, true),

('c0000015-0000-0000-0000-000000000015', 'a0000003-0000-0000-0000-000000000003',
 'Testicular Tumors',
 'Germ cell and non-germ cell testicular neoplasms', 15, true),

('c0000016-0000-0000-0000-000000000016', 'a0000003-0000-0000-0000-000000000003',
 'Haematuria: Trauma to Kidney, Ureter, and Bladder',
 'Urological trauma evaluation and management', 16, true),

-- Upper GI and Thoracic Topics (17-21)
('c0000017-0000-0000-0000-000000000017', 'a0000003-0000-0000-0000-000000000003',
 'Management of Dysphagia',
 'Causes of swallowing difficulty and their surgical management', 17, true),

('c0000018-0000-0000-0000-000000000018', 'a0000003-0000-0000-0000-000000000003',
 'Mediastinal Masses',
 'Anterior, middle, and posterior mediastinal tumors', 18, true),

('c0000019-0000-0000-0000-000000000019', 'a0000003-0000-0000-0000-000000000003',
 'Management of Oesophageal Diseases',
 'Oesophageal cancer, perforation, achalasia, and other conditions', 19, true),

('c0000020-0000-0000-0000-000000000020', 'a0000003-0000-0000-0000-000000000003',
 'Malignancies of the Lung and Pleura',
 'Lung cancer, mesothelioma, and pleural tumors', 20, true),

('c0000021-0000-0000-0000-000000000021', 'a0000003-0000-0000-0000-000000000003',
 'Inflammatory Diseases of Lung and Pleura',
 'Empyema, lung abscess, bronchiectasis, and tuberculosis complications', 21, true),

-- Orthopaedic Topics (22-27)
('c0000022-0000-0000-0000-000000000022', 'a0000003-0000-0000-0000-000000000003',
 'Common Metabolic Bone Diseases',
 'Osteoporosis, osteomalacia, Paget''s disease, and hyperparathyroidism', 22, true),

('c0000023-0000-0000-0000-000000000023', 'a0000003-0000-0000-0000-000000000003',
 'Childhood Orthopaedic Disorders',
 'DDH, club foot, Perthes disease, SCFE, and other paediatric conditions', 23, true),

('c0000024-0000-0000-0000-000000000024', 'a0000003-0000-0000-0000-000000000003',
 'Septic Arthritis and Chronic Bone and Joint Infections',
 'Infectious arthritis, chronic osteomyelitis, and prosthetic joint infections', 24, true),

('c0000025-0000-0000-0000-000000000025', 'a0000003-0000-0000-0000-000000000003',
 'Spinal Injuries and Principles of Trauma Care',
 'Cervical, thoracic, and lumbar spine injuries - ATLS principles', 25, true),

('c0000026-0000-0000-0000-000000000026', 'a0000003-0000-0000-0000-000000000003',
 'Acute and Chronic Osteomyelitis',
 'Bone infection - pathophysiology, diagnosis, and management', 26, true),

('c0000027-0000-0000-0000-000000000027', 'a0000003-0000-0000-0000-000000000003',
 'Tuberculosis of the Spine and Other Bones and Joints',
 'Pott''s disease and skeletal tuberculosis', 27, true),

-- Plastic Surgery and Burns (28-31)
('c0000028-0000-0000-0000-000000000028', 'a0000003-0000-0000-0000-000000000003',
 'Hand Injuries and Infections',
 'Tendon injuries, nerve injuries, fractures, and hand infections', 28, true),

('c0000029-0000-0000-0000-000000000029', 'a0000003-0000-0000-0000-000000000003',
 'Burns',
 'Burn assessment, resuscitation, wound care, and reconstruction', 29, true),

('c0000030-0000-0000-0000-000000000030', 'a0000003-0000-0000-0000-000000000003',
 'Chronic Leg Ulcers',
 'Venous, arterial, neuropathic, and mixed ulcers - assessment and management', 30, true),

('c0000031-0000-0000-0000-000000000031', 'a0000003-0000-0000-0000-000000000003',
 'Chronic Lymphoedema',
 'Primary and secondary lymphoedema - diagnosis and treatment', 31, true),

-- Head and Neck (32)
('c0000032-0000-0000-0000-000000000032', 'a0000003-0000-0000-0000-000000000003',
 'Jaw Tumors',
 'Ameloblastoma, odontogenic tumors, and mandibular/maxillary malignancies', 32, true),

-- Vascular Surgery (33)
('c0000033-0000-0000-0000-000000000033', 'a0000003-0000-0000-0000-000000000003',
 'Arterial Injuries, Peripheral Aneurysms, and Acute Limb Ischaemia',
 'Vascular trauma, aneurysms, and limb-threatening ischemia', 33, true),

-- Neurosurgery (34)
('c0000034-0000-0000-0000-000000000034', 'a0000003-0000-0000-0000-000000000003',
 'Principles of Management of Brain and Spinal Cord Tumours',
 'CNS neoplasms - presentation, diagnosis, and treatment options', 34, true),

-- Radiology (35)
('c0000035-0000-0000-0000-000000000035', 'a0000003-0000-0000-0000-000000000003',
 'Medical Imaging in Surgery',
 'X-ray, CT, MRI, ultrasound, and nuclear medicine in surgical practice', 35, true)

ON CONFLICT (id) DO UPDATE SET 
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    is_active = EXCLUDED.is_active;

-- Verify insertion
SELECT 'Surgery 3 Setup Complete' as status, COUNT(*) as topics_created FROM topics WHERE category_id = 'a0000003-0000-0000-0000-000000000003';
