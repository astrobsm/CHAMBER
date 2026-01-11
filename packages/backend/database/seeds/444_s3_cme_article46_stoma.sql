-- ============================================================================
-- SURGERY 3 CME ARTICLE 46: Stoma Care and Complications
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000112-0000-0000-0000-000000000112', 'a0000003-0000-0000-0000-000000000003', 'Stoma Care and Complications', 'Ostomy management and troubleshooting')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000346-0000-0000-0000-000000000046',
    'c0000112-0000-0000-0000-000000000112',
    'a0000003-0000-0000-0000-000000000003',
    'Ostomy Management: Construction, Care, and Complications',
    'A Practical Guide to Stoma Care',
    'This article covers stoma types (colostomy, ileostomy, urostomy), construction principles, immediate postoperative care, long-term management, and recognition and treatment of complications including retraction, prolapse, parastomal hernia, and skin breakdown.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000346-0001-0000-0000-000000000001', 'd0000346-0000-0000-0000-000000000046', 1,
'An ileostomy compared to a colostomy has output that is:',
'Formed and infrequent', 'More liquid, continuous, and higher volume requiring attention to fluid and electrolyte balance', 'Identical to colostomy', 'Does not require a bag', NULL,
'B', 'Ileostomy output: liquid to paste-like consistency, continuous flow, 500-1500 mL/day (more early after surgery). Contains digestive enzymes that are caustic to skin. Requires: meticulous skin protection, attention to fluid/electrolyte balance (high-output stoma can cause dehydration, hyponatremia, hypokalemia). Colostomy output: depends on location - ascending/transverse = more liquid; descending/sigmoid = formed stool, intermittent. Ileostomy patients need education about hydration, electrolyte-rich fluids, recognizing dehydration signs.', 'easy'),

('e0000346-0002-0000-0000-000000000002', 'd0000346-0000-0000-0000-000000000046', 2,
'Stoma should ideally be sited:',
'Intraoperatively only after opening abdomen', 'Preoperatively by stoma nurse, through rectus muscle, away from scars/skin folds/bony prominences, visible to patient', 'At any convenient location', 'In the midline incision', NULL,
'B', 'Ideal stoma site selection - preoperative marking by ET nurse. Criteria: (1) Through rectus abdominis muscle (reduces hernia risk); (2) Away from bony prominences (iliac crest, ribs), umbilicus, scars, skin creases, belt line; (3) Within a flat skin surface (3 inch diameter) for appliance adherence; (4) Visible to patient for self-care; (5) Patient tested in sitting, standing, lying positions. Poor siting leads to appliance problems, leakage, peristomal skin issues, and poor quality of life.', 'medium'),

('e0000346-0003-0000-0000-000000000003', 'd0000346-0000-0000-0000-000000000046', 3,
'A healthy stoma should appear:',
'Pale white', 'Pink-red and moist, similar to oral mucosa', 'Dusky blue or black', 'Dry and shriveled', NULL,
'B', 'Normal stoma appearance: pink to beefy red color (like oral/buccal mucosa), moist and shiny, slightly edematous initially (settles over 6-8 weeks). Concerning signs: (1) Dusky, purple, blue, or black = ischemia/necrosis (assess depth - superficial may resolve, deep requires revision); (2) Pale = anemia or low perfusion; (3) Dry = dehydration; (4) Separation from skin (mucocutaneous separation). Early postoperative monitoring essential. Document size, color, output.', 'easy'),

('e0000346-0004-0000-0000-000000000004', 'd0000346-0000-0000-0000-000000000046', 4,
'Parastomal hernia:',
'Is rare after stoma formation', 'Is the most common stoma complication, presenting as a bulge around the stoma, often managed conservatively unless symptomatic', 'Requires immediate emergency surgery', 'Never occurs through rectus muscle', NULL,
'B', 'Parastomal hernia: most common long-term complication (30-50% of colostomies, less common with ileostomies). Risk factors: obesity, malnutrition, steroids, not siting through rectus, making aperture too large. Presentation: bulge around stoma (worse with standing/straining), appliance fitting problems, rarely obstruction/strangulation. Management: (1) Conservative: support belt, appliance modification; (2) Surgery: indicated for obstruction, strangulation, severe symptoms, frequent leakage. Options: local repair, stoma relocation, mesh repair. High recurrence rates.', 'medium'),

('e0000346-0005-0000-0000-000000000005', 'd0000346-0000-0000-0000-000000000046', 5,
'Stoma retraction (sinking below skin level) is problematic because:',
'It looks better aesthetically', 'It prevents proper appliance seal leading to leakage and skin breakdown', 'It is normal', 'It improves output control', NULL,
'B', 'Stoma retraction: stoma at or below skin level. Causes: tension on bowel, obesity, weight gain, ischemia/necrosis, inadequate mobilization at surgery. Problems: (1) Appliance cannot seal around stoma; (2) Effluent leaks under appliance; (3) Peristomal skin breakdown; (4) Frequent appliance changes. Management: convex appliances, stoma paste/rings to fill gaps, belt for extra support. Surgical revision if conservative measures fail. Prevention: adequate mobilization, appropriate aperture size, through rectus muscle.', 'easy'),

('e0000346-0006-0000-0000-000000000006', 'd0000346-0000-0000-0000-000000000046', 6,
'High-output stoma (ileostomy) is defined as greater than:',
'100 mL/day', '1500-2000 mL/day, requiring intervention to prevent dehydration', '500 mL/day', 'Any output', NULL,
'B', 'High-output stoma: typically defined as >1500-2000 mL/day. Causes: short bowel, early postoperative, infections (C. difficile), partial obstruction, medications (prokinetics, magnesium-containing). Consequences: dehydration, electrolyte disturbance (hyponatremia, hypokalemia, hypomagnesemia), acute kidney injury. Management: (1) IV fluids, electrolyte replacement; (2) Anti-motility agents (loperamide, codeine); (3) Anti-secretory agents (omeprazole, octreotide); (4) Dietary modification (avoid hyperosmolar fluids, sip fluids, oral rehydration solution); (5) Treat underlying cause.', 'medium'),

('e0000346-0007-0000-0000-000000000007', 'd0000346-0000-0000-0000-000000000046', 7,
'Peristomal skin problems are most commonly caused by:',
'Stoma itself', 'Contact with effluent (chemical/enzymatic irritation) due to poorly fitting appliance', 'Too frequent appliance changes', 'Using barrier products', NULL,
'B', 'Peristomal skin breakdown - most common cause: effluent leakage/contact (enzymatic and chemical irritation, especially ileostomy output). Other causes: mechanical trauma (too frequent appliance changes, aggressive cleaning), allergic reaction (rare, to appliance/products), infection (candida, bacterial), pyoderma gangrenosum (especially with IBD). Management: (1) Proper appliance fit (stoma measured, appropriate aperture); (2) Skin barriers (powders, barrier wipes, paste/rings); (3) Allow skin to heal (may need wound care products); (4) Stoma nurse consultation.', 'easy'),

('e0000346-0008-0000-0000-000000000008', 'd0000346-0000-0000-0000-000000000046', 8,
'Loop ileostomy differs from end ileostomy in that:',
'They are identical', 'Loop has two lumens (afferent functional, efferent defunctionalized) and is typically easier to reverse', 'Loop is permanent', 'End is always temporary', NULL,
'B', 'Loop ileostomy: segment of ileum brought to surface, opened on antimesenteric border, creating two lumens visible at stoma site - (1) Afferent/proximal limb (functional, produces output); (2) Efferent/distal limb (defunctionalized, leads to colon). Purpose: temporary fecal diversion (protect distal anastomosis - e.g., after low anterior resection). Advantages: easier to reverse, preserved blood supply. End ileostomy: single lumen, ileum divided, may be permanent (after proctocolectomy) or temporary (after subtotal colectomy). Different surgical considerations for reversal.', 'medium'),

('e0000346-0009-0000-0000-000000000009', 'd0000346-0000-0000-0000-000000000046', 9,
'Stoma prolapse:',
'Is length of stoma appropriate for function', 'Is telescoping of bowel through the stoma, more common with loop stomas, and may require surgical intervention if causing complications', 'Is the same as retraction', 'Never requires surgery', NULL,
'B', 'Stoma prolapse: telescoping/intussusception of bowel through stoma, resulting in elongated stoma. More common with: loop stomas (especially transverse loop colostomy), increased abdominal pressure, large fascial aperture. Complications: cosmetic issues, appliance problems, edema, ischemia (rare), incarceration. Management: (1) If reducible and not ischemic: manual reduction, cold application to reduce edema, sugar application; (2) Modify appliance; (3) Surgery: indicated for recurrent prolapse, incarceration, ischemia, significantly symptomatic.', 'medium'),

('e0000346-0010-0000-0000-000000000010', 'd0000346-0000-0000-0000-000000000046', 10,
'Closure of a loop ileostomy should be considered:',
'Immediately after the initial operation', 'Typically 8-12 weeks after initial surgery, after confirming anastomotic integrity', 'Never', 'Without any imaging', NULL,
'B', 'Loop ileostomy closure timing: typically 8-12 weeks after initial surgery (minimum 6-8 weeks). Before closure: (1) Confirm anastomotic healing - water-soluble contrast enema or flexible sigmoidoscopy; (2) Patient recovered from original surgery; (3) If adjuvant chemotherapy planned, may close after completion. Technique: local approach (circumferential incision around stoma), mobilize bowel, close enterotomy (hand-sewn or stapled), return bowel. Complications: anastomotic leak, obstruction, wound infection, incisional hernia.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 46 (Stoma Care and Complications) with 10 self-assessment questions inserted' as status;
