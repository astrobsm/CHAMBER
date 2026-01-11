-- ============================================================================
-- SURGERY 1 QUESTION BANK SETUP
-- Based on WHO Guidelines and International Medical Standards
-- ============================================================================

-- Insert Surgery 1 Category
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks)
VALUES (
    'a0000001-0000-0000-0000-000000000001',
    'Surgery 1',
    'SURG1',
    'surgery_1',
    'Basic surgical principles and procedures for medical students',
    6
) ON CONFLICT (id) DO NOTHING;

-- Insert Topics for Surgery 1
INSERT INTO topics (id, category_id, name, description, order_index) VALUES
('b0000001-0000-0000-0000-000000000001', 'a0000001-0000-0000-0000-000000000001', 
 'Definition of Terms in Surgery', 
 'Fistula, sinus, ulcer, suffixes and prefixes in surgical terminology', 1),

('b0000002-0000-0000-0000-000000000002', 'a0000001-0000-0000-0000-000000000001', 
 'TPR Chart and Pyrexia Patterns', 
 'Intermittent pyrexia, swinging pyrexia, remittent pyrexia and temperature monitoring', 2),

('b0000003-0000-0000-0000-000000000003', 'a0000001-0000-0000-0000-000000000001', 
 'Shock', 
 'Types, pathophysiology, diagnosis and management of shock', 3),

('b0000004-0000-0000-0000-000000000004', 'a0000001-0000-0000-0000-000000000001', 
 'Fluid and Electrolytes in Surgery', 
 'Types of intravenous fluids, electrolyte imbalances and management', 4),

('b0000005-0000-0000-0000-000000000005', 'a0000001-0000-0000-0000-000000000001', 
 'Sutures and Surgical Needles', 
 'Types, sizing, materials and clinical applications', 5),

('b0000006-0000-0000-0000-000000000006', 'a0000001-0000-0000-0000-000000000001', 
 'Mensuration and Gauges in Medical Practice', 
 'Cannulae, needles, tubes, catheters - sizing and selection', 6),

('b0000007-0000-0000-0000-000000000007', 'a0000001-0000-0000-0000-000000000001', 
 'Blood and Blood Products in Surgery', 
 'Transfusion medicine, blood components and indications', 7),

('b0000008-0000-0000-0000-000000000008', 'a0000001-0000-0000-0000-000000000001', 
 'Blood Conservation Techniques', 
 'Cell salvage, acute normovolemic hemodilution, pharmacological agents', 8),

('b0000009-0000-0000-0000-000000000009', 'a0000001-0000-0000-0000-000000000001', 
 'Principles of Fracture Management', 
 'Classification, healing, reduction and fixation techniques', 9),

('b0000010-0000-0000-0000-000000000010', 'a0000001-0000-0000-0000-000000000001', 
 'Surgical Wounds and Antibiotic Prophylaxis', 
 'Wound classification, contamination levels and antibiotic principles', 10),

('b0000011-0000-0000-0000-000000000011', 'a0000001-0000-0000-0000-000000000001', 
 'Abdominal Wound Incisions', 
 'Types of incisions, anatomical considerations and closure techniques', 11),

('b0000012-0000-0000-0000-000000000012', 'a0000001-0000-0000-0000-000000000001', 
 'Nasogastric Intubation', 
 'Indications, technique, complications and management', 12),

('b0000013-0000-0000-0000-000000000013', 'a0000001-0000-0000-0000-000000000001', 
 'Cardiopulmonary Resuscitation (CPR)', 
 'Basic and advanced life support according to international guidelines', 13),

('b0000014-0000-0000-0000-000000000014', 'a0000001-0000-0000-0000-000000000001', 
 'Leg Ulcers', 
 'Examination, types, etiology and management', 14),

('b0000015-0000-0000-0000-000000000015', 'a0000001-0000-0000-0000-000000000001', 
 'Intraoperative Monitoring', 
 'Patient monitoring during surgery including blood loss estimation', 15),

('b0000016-0000-0000-0000-000000000016', 'a0000001-0000-0000-0000-000000000001', 
 'Urethral Catheterization', 
 'Technique, indications, contraindications and complications', 16)

ON CONFLICT (id) DO UPDATE SET 
  name = EXCLUDED.name,
  description = EXCLUDED.description;
