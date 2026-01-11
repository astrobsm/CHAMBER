-- ============================================================================
-- SURGERY 3 CME ARTICLE 52: Bowel Obstruction - Complete Guide
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000118-0000-0000-0000-000000000118', 'a0000003-0000-0000-0000-000000000003', 'Bowel Obstruction Complete Guide', 'Comprehensive intestinal obstruction management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000352-0000-0000-0000-000000000052',
    'c0000118-0000-0000-0000-000000000118',
    'a0000003-0000-0000-0000-000000000003',
    'Intestinal Obstruction: Complete Clinical Guide',
    'From Diagnosis to Definitive Management',
    'This article provides comprehensive coverage of small and large bowel obstruction including etiology, pathophysiology, clinical presentation, imaging findings, conservative management, indications for surgery, and recognition of strangulation.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000352-0001-0000-0000-000000000001', 'd0000352-0000-0000-0000-000000000052', 1,
'Cardinal features of intestinal obstruction include:',
'Only diarrhea', 'Colicky abdominal pain, vomiting, distension, and constipation (absolute in complete obstruction)', 'Painless jaundice', 'Hematemesis only', NULL,
'B', 'Four cardinal features of intestinal obstruction: (1) Colicky abdominal pain (intermittent, cramping, coincides with peristaltic waves); (2) Vomiting (early in high/proximal obstruction, late/feculent in distal obstruction); (3) Abdominal distension (more prominent in distal obstruction); (4) Constipation (obstipation = absolute constipation - no flatus or stool in complete obstruction). Bowel sounds: high-pitched, tinkling initially; may become absent later. Presentation varies with level and completeness of obstruction.', 'easy'),

('e0000352-0002-0000-0000-000000000002', 'd0000352-0000-0000-0000-000000000052', 2,
'The most common cause of large bowel obstruction in adults is:',
'Adhesions', 'Colorectal carcinoma', 'Volvulus', 'Incarcerated hernia', NULL,
'B', 'Large bowel obstruction causes in adults: Colorectal carcinoma (60-70%, most common - especially left-sided), Volvulus (10-15% - sigmoid most common), Diverticular stricture (10%), Others (fecal impaction, hernia, pseudo-obstruction). Contrast with small bowel obstruction where adhesions most common. Sigmoid volvulus more common in elderly, institutionalized, chronic constipation. Cecal volvulus in younger patients. Obstructing cancers often left-sided (descending, sigmoid) where lumen narrower and stool more formed.', 'easy'),

('e0000352-0003-0000-0000-000000000003', 'd0000352-0000-0000-0000-000000000052', 3,
'Closed loop obstruction:',
'Is benign and can be observed indefinitely', 'Has both proximal and distal obstruction points, cannot decompress, and has high risk of strangulation/perforation - surgical emergency', 'Only occurs in small bowel', 'Never causes ischemia', NULL,
'B', 'Closed loop obstruction: segment of bowel obstructed at TWO points (e.g., twist, adhesive band). Critical because: (1) Cannot decompress (neither orally nor rectally); (2) Rapidly progressive distension; (3) High risk of vascular compromise and strangulation; (4) Leads to perforation. Examples: complete SBO with competent ileocecal valve (colon becomes closed loop), volvulus (twist creates closed loop), incarcerated hernia. SURGICAL EMERGENCY - requires urgent/emergent operation. CT findings: U or C-shaped loop, mesenteric swirl, whirl sign.', 'medium'),

('e0000352-0004-0000-0000-000000000004', 'd0000352-0000-0000-0000-000000000052', 4,
'Signs suggesting strangulation in bowel obstruction include:',
'Improvement of pain', 'Continuous (non-colicky) pain, fever, tachycardia, peritoneal signs, leukocytosis, and acidosis', 'Only mild discomfort', 'Normal vital signs', NULL,
'B', 'Strangulation indicators: (1) Constant (non-colicky) severe pain - suggests ischemia; (2) Fever; (3) Tachycardia, hypotension; (4) Peritoneal signs (guarding, rigidity, rebound); (5) Leukocytosis with left shift; (6) Metabolic acidosis, elevated lactate (late); (7) Shock. CT findings: mesenteric haziness, bowel wall thickening, decreased enhancement, pneumatosis, portal venous gas. Strangulation = EMERGENCY surgery. Clinical signs unreliable - can be absent until late. Maintain high suspicion in complete obstruction, closed loop, or irreducible hernia.', 'medium'),

('e0000352-0005-0000-0000-000000000005', 'd0000352-0000-0000-0000-000000000052', 5,
'Water-soluble contrast (Gastrografin) challenge in adhesive small bowel obstruction:',
'Is contraindicated in all cases', 'Has therapeutic (osmotic) and diagnostic (predicts resolution vs need for surgery) value if contrast reaches colon within 24 hours', 'Always requires immediate surgery', 'Has no role in management', NULL,
'B', 'Gastrografin (water-soluble contrast) in adhesive SBO: (1) DIAGNOSTIC: if contrast reaches colon within 4-24 hours (usually 24h follow-up film) = high likelihood of resolution with conservative management (98%); if no progress = likely needs surgery; (2) THERAPEUTIC: hyperosmolar nature draws fluid into lumen, reduces bowel wall edema, stimulates motility. Safe in partial SBO. Contraindicated: complete obstruction with concern for strangulation, perforation, peritonitis. Reduces need for surgery, shortens hospital stay. Give 50-100 mL via NG tube.', 'medium'),

('e0000352-0006-0000-0000-000000000006', 'd0000352-0000-0000-0000-000000000052', 6,
'Sigmoid volvulus management in a stable patient without peritonitis:',
'Immediate surgery required', 'Endoscopic decompression (rigid or flexible sigmoidoscopy) first, followed by elective sigmoid resection to prevent recurrence', 'Observation only', 'Colonoscopy with biopsy only', NULL,
'B', 'Sigmoid volvulus management: STABLE without peritonitis: (1) Rigid or flexible sigmoidoscopy for decompression (70-80% success) - scope passed to point of twist, air and stool evacuated, rectal tube left in place; (2) Followed by elective sigmoid resection (prevents recurrence - 40-60% recurrence without resection). UNSTABLE/peritonitis/non-viable bowel/failed decompression: emergent surgery (sigmoid resection, usually Hartmann procedure). Rectal tube after decompression: left 24-48 hours, prevents re-twisting, allows bowel prep for elective surgery.', 'medium'),

('e0000352-0007-0000-0000-000000000007', 'd0000352-0000-0000-0000-000000000052', 7,
'Coffee bean sign on abdominal X-ray is characteristic of:',
'Appendicitis', 'Sigmoid volvulus', 'Small bowel obstruction', 'Gallstone ileus', NULL,
'B', 'Coffee bean sign: classic X-ray finding in sigmoid volvulus. Massively dilated sigmoid loop arising from pelvis, extending toward right upper quadrant, resembles coffee bean or bent inner tube. Other terms: inverted U sign, omega loop sign. Loss of haustral markings in dilated segment. Cecal volvulus: comma-shaped, points to LUQ. Other classic X-ray findings: small bowel obstruction (multiple dilated loops, valvulae conniventes = laddering/step-ladder pattern), large bowel obstruction (dilated colon with haustrae), Rigler sign (double wall sign - free air), pneumatosis (air in bowel wall).', 'easy'),

('e0000352-0008-0000-0000-000000000008', 'd0000352-0000-0000-0000-000000000052', 8,
'Gallstone ileus:',
'Is caused by a stone in the common bile duct', 'Results from a large gallstone eroding into the duodenum (cholecystoduodenal fistula) and impacting at the terminal ileum', 'Only occurs in young patients', 'Never shows air in the biliary tree', NULL,
'B', 'Gallstone ileus: mechanical SBO from gallstone (usually >2.5cm) that eroded through gallbladder into GI tract (usually duodenum - cholecystoduodenal fistula). Stone impacts at narrowest point (terminal ileum, 60%; ileocecal valve; rarely jejunum or duodenum - Bouveret syndrome at gastric outlet). Rigler triad on imaging: (1) Small bowel obstruction; (2) Pneumobilia (air in biliary tree); (3) Ectopic gallstone. Treatment: enterotomy and stone extraction. Fistula/cholecystectomy: may be addressed simultaneously or deferred (controversy).', 'medium'),

('e0000352-0009-0000-0000-000000000009', 'd0000352-0000-0000-0000-000000000052', 9,
'Pseudo-obstruction (Ogilvie syndrome):',
'Requires immediate surgery', 'Is massive colonic dilation without mechanical obstruction, often in hospitalized/critically ill patients, managed with decompression if cecum greater than 12cm', 'Only affects small bowel', 'Has no risk of perforation', NULL,
'B', 'Ogilvie syndrome (acute colonic pseudo-obstruction): massive colonic dilation without mechanical cause. Typically in hospitalized, bedridden, critically ill patients, post-operative, electrolyte abnormalities, medications (opioids, anticholinergics). Risk: cecal perforation (especially if cecum >12cm or dilation >6 days). Management: (1) Correct electrolytes, stop offending medications, mobilize; (2) Neostigmine (if no bradycardia/asthma - enhances colonic motility, 80% response); (3) Colonoscopic decompression if neostigmine fails; (4) Surgery (cecostomy) if above fails or perforation.', 'medium'),

('e0000352-0010-0000-0000-000000000010', 'd0000352-0000-0000-0000-000000000052', 10,
'In complete large bowel obstruction with a competent ileocecal valve:',
'The small bowel will decompress the colon', 'The colon becomes a closed loop with high risk of cecal perforation (cecum ruptures first due to Law of Laplace)', 'There is no urgency for intervention', 'The obstruction will always resolve spontaneously', NULL,
'B', 'Competent ileocecal valve in LBO: creates CLOSED LOOP obstruction of colon. Cannot decompress into small bowel. Cecum at highest risk of perforation (Law of Laplace: wall tension = pressure x radius; cecum has largest diameter). Perforation risk increases with cecum diameter >12cm and duration >6 days. In contrast, incompetent ileocecal valve allows colonic contents to reflux into small bowel - presents with earlier symptoms, less risk of cecal perforation. Complete LBO with competent valve = surgical emergency requiring urgent decompression.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 52 (Bowel Obstruction Complete Guide) with 10 self-assessment questions inserted' as status;
