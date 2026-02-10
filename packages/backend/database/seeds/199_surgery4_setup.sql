-- ============================================================================
-- SURGERY 4 SETUP - Category and Rotation
-- Creates the Surgery 4 rotation category
-- Topics are created within individual S4 MCQ batch files (600-649)
-- ============================================================================

-- Insert Surgery 4 category
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) VALUES
('a0000004-0000-0000-0000-000000000004', 'Surgery 4', 'SURG4', 'surgery_4', 
 'Advanced Surgery: Vascular Surgery, Cardiothoracic Surgery, Surgical Oncology, Burns & Trauma, Neurosurgery, Urology, Transplant Surgery, and Comprehensive Surgical Review', 
 8, true)
ON CONFLICT (id) DO UPDATE SET 
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    duration_weeks = EXCLUDED.duration_weeks;

-- Also handle code conflict
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) VALUES
('a0000004-0000-0000-0000-000000000004', 'Surgery 4', 'SURG4', 'surgery_4', 
 'Advanced Surgery: Vascular Surgery, Cardiothoracic Surgery, Surgical Oncology, Burns & Trauma, Neurosurgery, Urology, Transplant Surgery, and Comprehensive Surgical Review', 
 8, true)
ON CONFLICT (code) DO UPDATE SET 
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    duration_weeks = EXCLUDED.duration_weeks;

-- Create a rotation for Surgery 4 (current period)
INSERT INTO rotations (id, category_id, name, start_date, end_date, is_active) VALUES
('c0000004-1111-0000-0000-000000000004', 'a0000004-0000-0000-0000-000000000004', 
 'Surgery 4 - January 2026', '2026-01-01', '2026-02-28', true)
ON CONFLICT DO NOTHING;
