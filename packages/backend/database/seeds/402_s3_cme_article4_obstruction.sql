-- ============================================================================
-- SURGERY 3 CME ARTICLE 4: Intestinal Obstruction
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000070-0000-0000-0000-000000000070', 'a0000003-0000-0000-0000-000000000003', 'Intestinal Obstruction', 'Diagnosis and management of bowel obstruction')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000304-0000-0000-0000-000000000004',
    'c0000070-0000-0000-0000-000000000070',
    'a0000003-0000-0000-0000-000000000003',
    'Intestinal Obstruction: Recognition and Management',
    'Small and Large Bowel Obstruction - A Practical Approach',
    'Intestinal obstruction is a common surgical emergency requiring prompt recognition and treatment. This article covers the etiology (adhesions, hernias, malignancy), pathophysiology, clinical presentation, imaging with CT, and management of both small and large bowel obstruction including indications for surgery.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000304-0001-0000-0000-000000000001', 'd0000304-0000-0000-0000-000000000004', 1,
'What is the most common cause of small bowel obstruction in developed countries?',
'Incarcerated hernia', 'Adhesions from prior abdominal surgery', 'Malignancy', 'Crohn disease', NULL,
'B', 'Adhesions account for 60-75% of small bowel obstructions in developed countries. They form after abdominal surgery, creating bands that can trap or kink bowel. In developing countries, hernias remain the most common cause. Other causes include malignancy, Crohn disease, and intussusception.', 'easy'),

('e0000304-0002-0000-0000-000000000002', 'd0000304-0000-0000-0000-000000000004', 2,
'A patient with small bowel obstruction develops constant (rather than colicky) abdominal pain, fever, and tachycardia. What complication should be suspected?',
'Simple obstruction', 'Strangulation with bowel ischemia', 'Ileus', 'Constipation', NULL,
'B', 'Strangulation (compromised blood supply) should be suspected when colicky pain becomes constant, and systemic signs develop (fever, tachycardia, leukocytosis, peritoneal signs). Strangulation requires emergent surgery as bowel necrosis can occur rapidly. CT findings include thickened bowel wall, mesenteric haziness, and lack of enhancement.', 'medium'),

('e0000304-0003-0000-0000-000000000003', 'd0000304-0000-0000-0000-000000000004', 3,
'On abdominal X-ray, small bowel obstruction typically shows:',
'Air-fluid levels in the colon only', 'Multiple air-fluid levels with dilated small bowel loops (>3cm) and absence of colonic gas', 'Free air under the diaphragm', 'Normal gas pattern', NULL,
'B', 'Small bowel obstruction on X-ray shows dilated small bowel loops (>3cm diameter), multiple air-fluid levels at different heights within the same loop (step-ladder pattern), and paucity of colonic gas. Complete obstruction shows no distal gas. Partial obstruction may have some colonic gas. CT is more sensitive for identifying transition point and cause.', 'easy'),

('e0000304-0004-0000-0000-000000000004', 'd0000304-0000-0000-0000-000000000004', 4,
'What is the most common cause of large bowel obstruction in adults?',
'Adhesions', 'Colorectal carcinoma', 'Volvulus', 'Diverticulitis', NULL,
'B', 'Colorectal carcinoma is the most common cause of large bowel obstruction in adults (60-70%). Left-sided tumors present with obstruction more often than right-sided due to narrower lumen and solid stool. Other causes include volvulus (sigmoid most common), diverticular stricture, and fecal impaction.', 'easy'),

('e0000304-0005-0000-0000-000000000005', 'd0000304-0000-0000-0000-000000000004', 5,
'A patient with large bowel obstruction has a competent ileocecal valve. What is the major concern?',
'Rapid resolution', 'Closed-loop obstruction with risk of cecal perforation', 'Increased diarrhea', 'Spontaneous reduction', NULL,
'B', 'A competent ileocecal valve creates a closed-loop obstruction, preventing proximal decompression. The cecum distends progressively. When cecal diameter exceeds 12cm, perforation risk increases significantly. This is a surgical emergency. Incompetent valve allows retrograde decompression into small bowel, buying more time.', 'medium'),

('e0000304-0006-0000-0000-000000000006', 'd0000304-0000-0000-0000-000000000004', 6,
'Initial management of adhesive small bowel obstruction without signs of strangulation includes:',
'Immediate surgery', 'NPO, nasogastric decompression, IV fluids, and close monitoring', 'Oral contrast only', 'Colonoscopy', NULL,
'B', 'Non-strangulated adhesive SBO is initially managed conservatively: NPO, NG tube decompression, IV fluid resuscitation, electrolyte correction, and close monitoring. Many cases (40-70%) resolve with conservative management. Water-soluble contrast (Gastrografin) can be diagnostic and therapeutic. Surgery is indicated if no improvement in 48-72 hours or if signs of strangulation develop.', 'medium'),

('e0000304-0007-0000-0000-000000000007', 'd0000304-0000-0000-0000-000000000004', 7,
'The coffee-bean sign on abdominal X-ray is characteristic of:',
'Small bowel obstruction', 'Sigmoid volvulus', 'Appendicitis', 'Cholecystitis', NULL,
'B', 'The coffee-bean (or bent inner tube) sign is classic for sigmoid volvulus on X-ray: a dilated, air-filled loop arising from the pelvis extending toward the right upper quadrant, forming an inverted U-shape. The apex points toward the right upper quadrant. Other findings include the northern exposure sign and loss of haustral markings.', 'easy'),

('e0000304-0008-0000-0000-000000000008', 'd0000304-0000-0000-0000-000000000004', 8,
'What is the initial treatment of choice for sigmoid volvulus without signs of peritonitis?',
'Emergent colectomy', 'Flexible sigmoidoscopy for decompression', 'Barium enema', 'Observation only', NULL,
'B', 'Non-gangrenous sigmoid volvulus is initially managed with endoscopic decompression using flexible sigmoidoscopy. Success rate is 70-90%. A rectal tube is placed after decompression. However, recurrence is high (40-60%), so elective sigmoid resection is recommended after successful decompression. Signs of gangrene or peritonitis require emergent surgery without attempting endoscopic decompression.', 'medium'),

('e0000304-0009-0000-0000-000000000009', 'd0000304-0000-0000-0000-000000000004', 9,
'Ogilvie syndrome (acute colonic pseudo-obstruction) is best treated with:',
'Immediate colectomy', 'Neostigmine if conservative measures fail', 'Barium enema', 'Total parenteral nutrition only', NULL,
'B', 'Ogilvie syndrome (pseudo-obstruction without mechanical cause) is managed with: (1) Correction of electrolytes, stopping offending medications, mobilization. (2) If no improvement: neostigmine 2mg IV (80-90% response rate). (3) If neostigmine fails: colonoscopic decompression. Surgery is rarely needed, reserved for perforation. Cecal diameter >12cm requires intervention due to perforation risk.', 'hard'),

('e0000304-0010-0000-0000-000000000010', 'd0000304-0000-0000-0000-000000000004', 10,
'The Rigler triad seen in gallstone ileus includes all EXCEPT:',
'Small bowel obstruction', 'Pneumobilia', 'Ectopic gallstone', 'Free air under diaphragm', NULL,
'D', 'The Rigler triad in gallstone ileus consists of: (1) Small bowel obstruction, (2) Pneumobilia (air in biliary tree from cholecystoduodenal fistula), (3) Ectopic gallstone (usually in terminal ileum). Free air under the diaphragm indicates perforation, not part of this triad. Treatment is enterolithotomy; fistula repair may be done later.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 4 (Intestinal Obstruction) with 10 self-assessment questions inserted' as status;
