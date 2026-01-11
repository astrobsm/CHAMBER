-- ============================================================================
-- SURGERY 3 CME ARTICLE 41: Small Bowel Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000107-0000-0000-0000-000000000107', 'a0000003-0000-0000-0000-000000000003', 'Small Bowel Surgery', 'Surgical management of small intestinal diseases')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000341-0000-0000-0000-000000000041',
    'c0000107-0000-0000-0000-000000000107',
    'a0000003-0000-0000-0000-000000000003',
    'Small Bowel Surgery: Obstruction and Resection',
    'Mechanical Obstruction, Crohn Disease, and Tumors',
    'This article covers surgical management of small bowel diseases including mechanical obstruction, adhesive small bowel obstruction, Crohn disease complications, small bowel tumors, mesenteric ischemia, and short bowel syndrome.',
    'Department of Surgery, UNTH',
    2.0,
    22,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000341-0001-0000-0000-000000000001', 'd0000341-0000-0000-0000-000000000041', 1,
'The hallmark of complete small bowel obstruction on imaging is:',
'Normal bowel gas pattern', 'Dilated small bowel proximal to transition point with decompressed bowel distally', 'Dilated colon', 'Free air only', NULL,
'B', 'Complete SBO imaging: dilated small bowel (>3cm) proximal to obstruction, collapsed/decompressed bowel distal to transition point. CT findings: small bowel feces sign (particulate matter in dilated bowel), transition point identification, closed loop (two transition points - higher strangulation risk). Incomplete/partial obstruction: some gas/contrast passes distally. X-ray: multiple dilated loops, air-fluid levels (>3 on upright film), paucity of colonic gas. CT preferred for etiology and complication detection.', 'easy'),

('e0000341-0002-0000-0000-000000000002', 'd0000341-0000-0000-0000-000000000041', 2,
'Water-soluble contrast (Gastrografin) challenge in adhesive small bowel obstruction:',
'Is contraindicated', 'Can be diagnostic (predicting resolution if reaches colon by 24 hours) and potentially therapeutic', 'Causes perforation', 'Should never be used', NULL,
'B', 'Gastrografin challenge: water-soluble contrast given via NGT (50-100mL), X-ray at 8-24 hours. Diagnostic: contrast reaching colon by 24 hours predicts resolution with conservative management (high NPV). Potentially therapeutic: hyperosmolar, draws fluid into lumen, may stimulate peristalsis. Safe in partial SBO without signs of strangulation/peritonitis. If no contrast in colon by 24-48 hours: operative intervention indicated. Reduces need for surgery and length of stay when successful. Do not use barium (inspissates if surgery needed).', 'medium'),

('e0000341-0003-0000-0000-000000000003', 'd0000341-0000-0000-0000-000000000041', 3,
'Surgical indications for Crohn disease include:',
'Mild diarrhea', 'Strictures causing obstruction, fistulae, abscess, perforation, and failure of medical therapy', 'All patients at diagnosis', 'Inflammation alone', NULL,
'B', 'Crohn disease surgery indications: (1) Obstruction from fibrostenotic stricture (not responding to steroids for inflammatory component); (2) Complex fistulae (enterovesical, enterovaginal, enterocutaneous); (3) Abscess requiring drainage + resection; (4) Perforation; (5) Hemorrhage; (6) Malignancy; (7) Failure/intolerance of medical therapy; (8) Growth retardation in children. Surgery not curative - recurrence common. Principles: limit resection (bowel-sparing), strictureplasty when possible, avoid emergent surgery if possible.', 'medium'),

('e0000341-0004-0000-0000-000000000004', 'd0000341-0000-0000-0000-000000000041', 4,
'Strictureplasty in Crohn disease is indicated when:',
'There is active inflammation only', 'There are multiple short strictures to preserve bowel length and prevent short bowel syndrome', 'There is abscess at the stricture', 'Active bleeding is present', NULL,
'B', 'Strictureplasty indications: multiple short strictures, recurrent strictures (especially if previous resections), diffuse jejunoileal disease, short bowel risk. Contraindications: active sepsis at stricture site, fistula arising from stricture, dysplasia/cancer, long strictures (>10-20cm), malnutrition. Types: Heineke-Mikulicz (short <7cm), Finney (7-15cm), isoperistaltic side-to-side (long). Preserves absorptive surface. Recurrence rates similar to resection. Can perform at multiple sites in single operation.', 'medium'),

('e0000341-0005-0000-0000-000000000005', 'd0000341-0000-0000-0000-000000000041', 5,
'The most common primary malignant tumor of the small bowel is:',
'Adenocarcinoma', 'Carcinoid (neuroendocrine tumor)', 'Lymphoma', 'GIST', NULL,
'A', 'Small bowel malignancies (uncommon despite length): Adenocarcinoma most common (30-40%), followed by carcinoid/NET (25-30%), lymphoma (20-25%), GIST (10-15%). Adenocarcinoma: duodenum most common site, associated with Crohn, celiac, FAP. Presentation: obstruction, bleeding, perforation, weight loss. Carcinoid: ileum most common site, often multiple, carcinoid syndrome if liver metastases (flushing, diarrhea, right heart disease). Treatment: surgical resection with adequate margins and lymphadenectomy.', 'medium'),

('e0000341-0006-0000-0000-000000000006', 'd0000341-0000-0000-0000-000000000041', 6,
'Meckel diverticulum is described by the rule of 2s:',
'Only 2% are symptomatic', '2% of population, 2 feet from ileocecal valve, 2 inches long, 2 types of ectopic tissue, symptomatic by age 2', 'Found in 20% of population', 'Located in duodenum', NULL,
'B', 'Meckel diverticulum (Rule of 2s): 2% of population, 2 feet (60cm) from ileocecal valve, 2 inches (5cm) long, 2% symptomatic, 2 types ectopic tissue (gastric most common, pancreatic), symptoms by age 2 (though can present any age). True diverticulum (all layers). Complications: bleeding (ectopic gastric mucosa causing ulceration), obstruction (intussusception, band), diverticulitis, perforation. Diagnosis: Meckel scan (99mTc-pertechnetate uptake by gastric mucosa), CT. Treatment: resection if symptomatic. Incidental finding: controversy, consider resection in young patients.', 'easy'),

('e0000341-0007-0000-0000-000000000007', 'd0000341-0000-0000-0000-000000000041', 7,
'Short bowel syndrome typically occurs when remaining small bowel is less than:',
'300cm', '200cm, with severity depending on which segments remain and presence of colon', '400cm', '100cm only', NULL,
'B', 'Short bowel syndrome: malabsorption from inadequate functional intestine, typically <200cm remaining small bowel (normal 300-800cm). Severity factors: remaining length, which segments (ileum more critical for B12/bile salts), colon in continuity (fluid/electrolyte salvage), ileocecal valve preservation, underlying disease. Causes: Crohn (most common), mesenteric ischemia, volvulus, trauma, radiation. Management: nutritional support, anti-diarrheals, intestinal adaptation (takes 1-2 years), TPN if needed, GLP-2 analogs (teduglutide), intestinal transplant for TPN failure.', 'hard'),

('e0000341-0008-0000-0000-000000000008', 'd0000341-0000-0000-0000-000000000041', 8,
'Gallstone ileus is characterized by:',
'Stones in the gallbladder only', 'Mechanical small bowel obstruction from large gallstone entering bowel through cholecystoenteric fistula', 'Ileus without mechanical obstruction', 'Only in young patients', NULL,
'B', 'Gallstone ileus: SBO from large gallstone (>2.5cm) impacting in small bowel, usually at ileocecal valve (narrowest segment). Pathophysiology: chronic cholecystitis leads to cholecystoenteric fistula (usually cholecystoduodenal), stone passes into bowel. Rigler triad on imaging: SBO, pneumobilia, ectopic gallstone. Elderly women most common. Treatment: surgery - enterolithotomy (stone removal) via enterotomy proximal to impaction. Cholecystectomy/fistula repair at same surgery controversial (increased morbidity in elderly); may stage if stable.', 'medium'),

('e0000341-0009-0000-0000-000000000009', 'd0000341-0000-0000-0000-000000000041', 9,
'Adult intussusception compared to pediatric:',
'Has the same etiology', 'Is more likely to have a pathologic lead point (tumor, polyp, Meckel diverticulum)', 'Is always treated conservatively', 'Never requires surgery', NULL,
'B', 'Adult intussusception: unlike pediatric (usually idiopathic, reduction often successful), adult cases have pathologic lead point in 70-90%. Lead points: polyps, adenocarcinoma, lymphoma, Meckel diverticulum, lipoma, metastases. Presentation: intermittent colicky pain, vomiting, bloody stools, palpable mass. Diagnosis: CT (target/sausage sign). Treatment: surgery - resection without reduction if malignancy suspected (avoids tumor manipulation/seeding). Small bowel more likely benign; colonic more likely malignant.', 'medium'),

('e0000341-0010-0000-0000-000000000010', 'd0000341-0000-0000-0000-000000000041', 10,
'Assessment of small bowel viability during surgery can be done by:',
'Visual inspection only', 'Color, peristalsis, bleeding from cut edges, Doppler, fluorescein/ICG with UV/IR imaging', 'X-ray', 'Blood tests only', NULL,
'B', 'Bowel viability assessment: (1) Clinical - color (pink vs dusky), peristalsis, mesenteric pulsations, bleeding from cut edges; (2) Doppler - mesenteric arterial signal; (3) Fluorescein + Woods lamp or ICG (indocyanine green) with near-infrared imaging - assesses perfusion; (4) Wrap in warm saline, reassess in 10-20 minutes. Equivocal cases: resect or second-look laparotomy in 24-48 hours. Leave clearly viable bowel, resect clearly dead bowel. Anastomosis only between clearly viable segments. ICG increasingly used with laparoscopy.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 41 (Small Bowel Surgery) with 10 self-assessment questions inserted' as status;
