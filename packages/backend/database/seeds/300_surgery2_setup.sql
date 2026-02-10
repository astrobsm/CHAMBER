-- Surgery 2 Category Setup
-- Create category and all CME articles

-- First, create the Surgery 2 category
INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) VALUES
('a0000002-0000-0000-0000-000000000002', 'Surgery 2', 'SURG2', 'surgery_2', 'General & Emergency Surgery, Trauma, Vascular, Orthopaedics, Neurosurgery, and Subspecialties', 8, true)
ON CONFLICT (id) DO UPDATE SET 
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    duration_weeks = EXCLUDED.duration_weeks;

-- Create a rotation for Surgery 2
INSERT INTO rotations (id, category_id, name, start_date, end_date, is_active) VALUES
('c0000002-1111-0000-0000-000000000002', 'a0000002-0000-0000-0000-000000000002',
 'Surgery 2 - January 2026', '2026-01-01', '2026-02-28', true)
ON CONFLICT DO NOTHING;

-- NOTE: Surgery 2 topics and CME articles are handled by 300_surgery2_complete_setup.sql
-- This file only creates the category and rotation.
