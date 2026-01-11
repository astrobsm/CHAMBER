-- ============================================================================
-- SURGERY 3 CME ARTICLE 96: Intestinal Obstruction
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000162-0000-0000-0000-000000000162', 'a0000003-0000-0000-0000-000000000003', 'Intestinal Obstruction', 'Diagnosis and management of bowel obstruction')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000396-0000-0000-0000-000000000096',
    'c0000162-0000-0000-0000-000000000162',
    'a0000003-0000-0000-0000-000000000003',
    'Intestinal Obstruction: From Diagnosis to Management',
    'Small and Large Bowel Obstruction',
    'This article covers causes of small and large bowel obstruction, clinical presentation, radiographic findings, conservative management, indications for surgery, and management of specific conditions including adhesive obstruction, hernias, and volvulus.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000396-0001-0000-0000-000000000001', 'd0000396-0000-0000-0000-000000000096', 1,
'The most common cause of small bowel obstruction in developed countries is:',
'Hernia', 'Adhesions from previous surgery, accounting for approximately 60-75% of small bowel obstructions', 'Crohn disease', 'Malignancy',
'B', 'SMALL BOWEL OBSTRUCTION (SBO) causes: ADHESIONS (60-75% in developed countries, from previous surgery), HERNIAS (15-25%, most common worldwide), MALIGNANCY, Crohn disease, gallstone ileus, intussusception. Adhesive SBO: more common after lower abdominal/pelvic surgery, appendectomy, colorectal, gynecologic. HERNIA: most common cause worldwide (especially where surgery less common). In patients without prior surgery: consider hernia (including internal), malignancy. Virgin abdomen + SBO: search carefully for hernias (inguinal, femoral, umbilical, internal).', 'easy'),

('e0000396-0002-0000-0000-000000000002', 'd0000396-0000-0000-0000-000000000096', 2,
'Classic clinical features of small bowel obstruction include:',
'Painless distension only', 'Colicky abdominal pain, vomiting (early if proximal), distension, and obstipation (absolute constipation)', 'Diarrhea and incontinence', 'Hematemesis only',
'B', 'SBO CLINICAL FEATURES: (1) COLICKY ABDOMINAL PAIN (intermittent, cramping, periumbilical); (2) VOMITING (early and bilious if proximal, later if distal, may become feculent); (3) ABDOMINAL DISTENSION (more prominent with distal obstruction); (4) OBSTIPATION (no passage of flatus or stool - indicates complete obstruction). Bowel sounds: initially hyperactive (high-pitched, tinkling), later hypoactive. May pass some stool/flatus initially (emptying distal bowel). STRANGULATION signs: constant pain, fever, tachycardia, tenderness, peritonitis.', 'easy'),

('e0000396-0003-0000-0000-000000000003', 'd0000396-0000-0000-0000-000000000096', 3,
'Radiographic findings in small bowel obstruction include:',
'Normal X-ray always', 'Dilated small bowel loops (greater than 3 cm), air-fluid levels on upright film, and decompressed colon', 'Only colonic distension', 'Free air under diaphragm',
'B', 'SBO IMAGING: PLAIN X-RAY: dilated small bowel (>3 cm diameter), multiple AIR-FLUID LEVELS at different heights (stepladder pattern) on upright film, decompressed COLON, string of beads sign (small air bubbles). CT SCAN (with IV contrast preferred): confirms obstruction, identifies TRANSITION POINT (where dilated meets decompressed), determines CAUSE (adhesion, hernia, mass), detects STRANGULATION signs (bowel wall thickening, mesenteric haziness, reduced enhancement, ascites). CT is imaging of choice in most cases. Small bowel feces sign: particulate matter proximal to obstruction.', 'easy'),

('e0000396-0004-0000-0000-000000000004', 'd0000396-0000-0000-0000-000000000096', 4,
'Indications for urgent surgery in small bowel obstruction include:',
'All cases of SBO', 'Complete obstruction, signs of strangulation (peritonitis, fever, tachycardia), closed-loop obstruction, and failure of conservative management', 'Partial obstruction always', 'No indications for surgery exist',
'B', 'SURGICAL INDICATIONS in SBO: URGENT/EMERGENT: (1) PERITONITIS (strangulation, perforation); (2) IRREDUCIBLE/STRANGULATED HERNIA; (3) CLOSED-LOOP obstruction (risk of rapid ischemia); (4) CT signs of strangulation (no enhancement, mesenteric haziness, ascites). DELAYED/ELECTIVE: failure of CONSERVATIVE MANAGEMENT (no improvement in 48-72 hours, some use Gastrografin trial). Complete obstruction has higher failure rate of conservative treatment. Conservative management: NPO, NG tube decompression, IV fluids, electrolyte correction. ~70-80% adhesive SBO resolve conservatively.', 'easy'),

('e0000396-0005-0000-0000-000000000005', 'd0000396-0000-0000-0000-000000000096', 5,
'Large bowel obstruction differs from small bowel obstruction in that:',
'It has the same causes and presentation', 'It is most commonly caused by colorectal cancer, presents with more distension, less vomiting, and requires ruling out competent ileocecal valve (risk of cecal perforation)', 'LBO is always treated conservatively', 'Vomiting is more prominent in LBO',
'B', 'LARGE BOWEL OBSTRUCTION: CAUSES: COLORECTAL CANCER (60%), DIVERTICULITIS (stenosis), VOLVULUS (sigmoid, cecal), hernia (less common). PRESENTATION: more DISTENSION, less/late VOMITING (distal obstruction), gradual onset. COMPETENT ILEOCECAL VALVE: creates CLOSED-LOOP obstruction - colon distends, cannot decompress into ileum, CECAL PERFORATION risk (when cecum >12 cm - imminent rupture). IMAGING: CT (identifies cause, location). X-RAY: dilated colon (>6 cm, cecum >9 cm dangerous). May need contrast enema to differentiate obstruction from pseudo-obstruction. Treatment often surgical or endoscopic stenting.', 'medium'),

('e0000396-0006-0000-0000-000000000006', 'd0000396-0000-0000-0000-000000000096', 6,
'Sigmoid volvulus:',
'Is most common in young patients', 'Is twisting of the sigmoid colon around its mesentery, seen in elderly/institutionalized patients with chronic constipation, and can often be treated with endoscopic decompression', 'Requires immediate surgery always', 'Never recurs after treatment',
'B', 'SIGMOID VOLVULUS: torsion of sigmoid colon around its mesenteric axis. EPIDEMIOLOGY: ELDERLY, institutionalized, psychiatric patients, chronic constipation, high-fiber diet, Chagas disease (endemic areas). IMAGING: X-ray - "coffee bean" or "bent inner tube" sign (distended loop pointing to RUQ). CT confirms. TREATMENT: if no gangrene/peritonitis - ENDOSCOPIC DECOMPRESSION (sigmoidoscopy with rectal tube, >70-90% success); followed by semi-elective SIGMOID COLECTOMY (high RECURRENCE without surgery, 40-60%). If gangrenous/perforated: emergent surgery (resection, often with Hartmann procedure).', 'medium'),

('e0000396-0007-0000-0000-000000000007', 'd0000396-0000-0000-0000-000000000096', 7,
'A Gastrografin (water-soluble contrast) challenge in adhesive small bowel obstruction:',
'Is contraindicated', 'Has both diagnostic and therapeutic value, with contrast reaching the colon within 24 hours predicting resolution, and may accelerate resolution', 'Is only for large bowel', 'Worsens obstruction',
'B', 'GASTROGRAFIN CHALLENGE in adhesive SBO: water-soluble CONTRAST given orally or via NG tube (60-100 mL). DIAGNOSTIC: contrast reaching COLON within 4-24 hours predicts resolution (high sensitivity/specificity, negative predictive value >95%). THERAPEUTIC: hyperosmolar contrast draws fluid into lumen, may promote resolution (reduces need for surgery, shortens hospital stay in some studies). TIMING: after 24-48 hours of conservative treatment if no resolution. NOT for: complete obstruction with strangulation signs, closed-loop, irreducible hernia. Part of structured conservative management protocols.', 'medium'),

('e0000396-0008-0000-0000-000000000008', 'd0000396-0000-0000-0000-000000000096', 8,
'Gallstone ileus presents with:',
'Right upper quadrant pain only', 'Small bowel obstruction in elderly patients with pneumobilia on imaging, caused by a large gallstone eroding from the gallbladder into the duodenum and impacting distally', 'Biliary colic only', 'Large bowel obstruction',
'B', 'GALLSTONE ILEUS: SBO from GALLSTONE erosion through biliary-enteric fistula (cholecystoduodenal most common). TRIAD (Rigler): SBO + PNEUMOBILIA (air in biliary tree) + ectopic gallstone (often calcified, in RLQ at ileocecal valve). EPIDEMIOLOGY: elderly women with cholelithiasis. STONE SIZE: large stones (>2.5 cm) cause obstruction. LOCATION: usually terminal ileum (narrowest). TREATMENT: enterolithotomy (remove stone from bowel), cholecystectomy + fistula repair in same or staged procedure (one-stage if patient stable, two-stage often chosen due to frailty). 3-5% of all SBO cases.', 'medium'),

('e0000396-0009-0000-0000-000000000009', 'd0000396-0000-0000-0000-000000000096', 9,
'Acute colonic pseudo-obstruction (Ogilvie syndrome):',
'Is mechanical obstruction', 'Is massive colonic dilation without mechanical obstruction, occurs in hospitalized/post-surgical patients, and is treated with neostigmine if conservative measures fail', 'Requires immediate surgery', 'Only affects the sigmoid',
'B', 'OGILVIE SYNDROME (acute colonic pseudo-obstruction): massive COLONIC DILATION without mechanical obstruction. CAUSE: autonomic dysfunction, imbalanced sympathetic/parasympathetic. ASSOCIATIONS: hospitalized patients, post-operative (especially orthopedic, cardiac), trauma, sepsis, electrolyte abnormalities, medications (opioids, anticholinergics). IMAGING: dilated colon (especially cecum/ascending), NO transition point (differentiates from mechanical). TREATMENT: (1) CONSERVATIVE - treat underlying cause, stop offending meds, correct electrolytes, NG/rectal tube; (2) NEOSTIGMINE (2 mg IV, requires monitoring - bradycardia risk, give atropine at bedside); (3) Colonoscopic decompression; (4) Surgery if cecum >12 cm and no response (cecostomy or colectomy).', 'medium'),

('e0000396-0010-0000-0000-000000000010', 'd0000396-0000-0000-0000-000000000096', 10,
'Closed-loop obstruction is dangerous because:',
'It resolves spontaneously', 'Both ends of a bowel segment are obstructed, preventing decompression and causing rapid ischemia, necrosis, and perforation', 'It only affects the colon', 'It is easy to treat conservatively',
'B', 'CLOSED-LOOP OBSTRUCTION: segment of bowel obstructed at BOTH ENDS, unable to decompress. MECHANISM: volvulus, adhesive band trapping loop, incarcerated hernia, complete LBO with competent ileocecal valve. DANGER: no decompression possible, continues to secrete fluid and distend, rapid increase in intraluminal pressure, mesenteric vessel compression, ISCHEMIA, NECROSIS, PERFORATION. TIME CRITICAL: can progress to gangrene in hours. CT signs: U or C-shaped dilated loop, tightly stretched mesentery converging to a point, ischemia signs. TREATMENT: EMERGENT SURGERY (cannot wait for conservative trial).', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 96 (Intestinal Obstruction) with 10 self-assessment questions inserted' as status;
