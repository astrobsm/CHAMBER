-- ============================================================================
-- SURGERY 3 CME ARTICLE 43: Diverticular Disease
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000109-0000-0000-0000-000000000109', 'a0000003-0000-0000-0000-000000000003', 'Diverticular Disease', 'Diverticulosis and diverticulitis management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000343-0000-0000-0000-000000000043',
    'c0000109-0000-0000-0000-000000000109',
    'a0000003-0000-0000-0000-000000000003',
    'Diverticular Disease: From Diverticulosis to Complications',
    'Acute Diverticulitis, Perforation, and Surgical Management',
    'This article covers the spectrum of diverticular disease from asymptomatic diverticulosis to complicated diverticulitis. Topics include classification, conservative and surgical management, Hinchey classification, Hartmann procedure versus primary anastomosis, and elective sigmoid colectomy indications.',
    'Department of Surgery, UNTH',
    2.0,
    22,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000343-0001-0000-0000-000000000001', 'd0000343-0000-0000-0000-000000000043', 1,
'Diverticula in the colon typically occur:',
'Through the taeniae coli', 'At points of weakness where vasa recta penetrate the circular muscle layer', 'In the rectum', 'Only in the right colon', NULL,
'B', 'Colonic diverticula: false diverticula (mucosa and submucosa herniate through muscular layer). Occur at weak points where vasa recta (mesenteric blood vessels) penetrate circular muscle to supply mucosa. These are between mesenteric and antimesenteric taeniae, NOT through taeniae themselves. Left colon (sigmoid) most common in Western populations due to higher intraluminal pressures. Right-sided diverticula more common in Asian populations. Low-fiber diet, chronic constipation, aging are risk factors.', 'medium'),

('e0000343-0002-0000-0000-000000000002', 'd0000343-0000-0000-0000-000000000043', 2,
'Hinchey classification for perforated diverticulitis Stage III is:',
'Phlegmon only', 'Purulent peritonitis', 'Pericolic abscess', 'Fecal peritonitis', NULL,
'B', 'Hinchey classification (complicated diverticulitis): Stage I - pericolic/mesenteric abscess; Stage II - pelvic, distant, or retroperitoneal abscess; Stage III - purulent (generalized) peritonitis; Stage IV - fecal peritonitis. Management: Stage I - antibiotics, may resolve; Stage II - percutaneous drainage + antibiotics if accessible; Stage III/IV - surgery (Hartmann or primary anastomosis with/without diversion). Modified Hinchey incorporates CT findings. Severity guides operative vs non-operative approach.', 'medium'),

('e0000343-0003-0000-0000-000000000003', 'd0000343-0000-0000-0000-000000000043', 3,
'Uncomplicated acute diverticulitis is currently managed with:',
'Immediate surgery', 'Supportive care with possible observation without antibiotics in mild cases', 'NPO and IV antibiotics always', 'Colonoscopy during acute episode', NULL,
'B', 'Uncomplicated diverticulitis management evolution: Recent evidence (AVOD, DIABOLO trials) shows antibiotics may not be necessary for uncomplicated cases. Current approach: outpatient management for mild cases (low CRP, tolerating PO, no comorbidities), supportive care (liquid diet, pain control), antibiotics selective rather than routine. Hospitalize if: unable to tolerate PO, severe pain, comorbidities, immunocompromise. CT confirms diagnosis and excludes complications. Colonoscopy 6-8 weeks after resolution to exclude malignancy.', 'medium'),

('e0000343-0004-0000-0000-000000000004', 'd0000343-0000-0000-0000-000000000043', 4,
'Hartmann procedure involves:',
'Resection with primary anastomosis', 'Resection of diseased sigmoid, end colostomy, and rectal stump closure', 'No resection', 'Right hemicolectomy', NULL,
'B', 'Hartmann procedure: sigmoid resection, end colostomy (descending colon), closure of rectal stump. Historically standard for perforated diverticulitis. Avoids anastomosis in contaminated field. Disadvantages: second surgery for reversal (morbidity, ~20% never reversed), ostomy-related complications. Alternative: primary anastomosis with diverting loop ileostomy (similar outcomes, easier reversal). Damage control: limited resection, delayed anastomosis in unstable patients. Laparoscopic lavage for Hinchey III (controversial, higher reoperation rate).', 'easy'),

('e0000343-0005-0000-0000-000000000005', 'd0000343-0000-0000-0000-000000000043', 5,
'Elective sigmoid colectomy after diverticulitis is now recommended:',
'After every episode', 'Based on individual risk assessment rather than number of episodes', 'Never indicated', 'Only for young patients', NULL,
'B', 'Elective sigmoid colectomy indications (evolved from "after 2 episodes" rule): Current recommendations are individualized based on: (1) Severity of episodes (complicated vs uncomplicated); (2) Persistent symptoms; (3) Immunocompromised status (higher complication rates, lower threshold); (4) Fistula or stricture; (5) Patient factors and preference. Number of uncomplicated episodes alone is insufficient indication. Young age no longer automatic indication (similar recurrence rates). Quality of life impact important consideration.', 'medium'),

('e0000343-0006-0000-0000-000000000006', 'd0000343-0000-0000-0000-000000000043', 6,
'Colovesical fistula from diverticulitis classically presents with:',
'Hematuria only', 'Pneumaturia (air in urine) and fecaluria', 'No urinary symptoms', 'Vaginal discharge', NULL,
'B', 'Colovesical fistula: abnormal communication between colon (usually sigmoid) and bladder. Classic presentation: pneumaturia (passage of air during urination - pathognomonic), fecaluria (debris in urine), recurrent UTIs (polymicrobial, including anaerobes). More common in men (uterus provides barrier in women). Causes: diverticulitis (most common), colorectal cancer, Crohn disease. Diagnosis: CT (air in bladder, thickened adjacent structures), cystoscopy, barium enema. Treatment: surgical resection of diseased colon, bladder repair (often heals spontaneously after fistula takedown).', 'easy'),

('e0000343-0007-0000-0000-000000000007', 'd0000343-0000-0000-0000-000000000043', 7,
'The most common cause of massive lower GI bleeding in the elderly is:',
'Hemorrhoids', 'Diverticulosis', 'Colorectal cancer', 'Angiodysplasia', NULL,
'B', 'Diverticular bleeding: most common cause of massive lower GI bleeding. Occurs from arterial erosion at dome of diverticulum. Characteristically painless, sudden onset, bright red or maroon blood per rectum. 70-80% stops spontaneously; 25-30% rebleeds. Diagnosis: colonoscopy (after prep), CT angiography, tagged RBC scan, angiography. Treatment: endoscopic therapy if source identified, angiographic embolization, surgery (segmental resection if localized; subtotal colectomy if source unidentified with ongoing bleeding).', 'easy'),

('e0000343-0008-0000-0000-000000000008', 'd0000343-0000-0000-0000-000000000043', 8,
'In elective sigmoid colectomy for diverticular disease, the distal margin should be:',
'At the sigmoid-descending junction', 'At the upper rectum where taeniae coalesce, with all thickened sigmoid removed', 'At the hepatic flexure', 'Anywhere convenient', NULL,
'B', 'Sigmoid colectomy margins for diverticular disease: Distal margin: upper rectum (where taeniae coalesce into continuous longitudinal muscle layer) - not just sigmoid. Leaving diseased sigmoid increases recurrence. Proximal margin: soft, compliant bowel (usually descending colon). Do not need to resect ALL diverticula - only diseased hypertrophied segment. Splenic flexure mobilization usually needed for tension-free anastomosis. Recurrence after adequate resection: 5-10%. High-tie of IMA not necessary (ligate just beyond last branch used).', 'medium'),

('e0000343-0009-0000-0000-000000000009', 'd0000343-0000-0000-0000-000000000043', 9,
'Percutaneous drainage of diverticular abscess:',
'Should never be attempted', 'Is appropriate for abscesses greater than 3-4 cm that are accessible, allowing resolution and potential single-stage elective surgery', 'Replaces the need for surgery', 'Increases mortality', NULL,
'B', 'Percutaneous drainage for diverticular abscess: indicated for abscesses >3-4cm that are accessible (Hinchey II). Success rate: 70-90% with antibiotics. Benefits: (1) Controls sepsis without emergency surgery; (2) Allows inflammation to resolve; (3) May permit single-stage elective laparoscopic resection with primary anastomosis (lower morbidity than emergency Hartmann). Small abscesses (<3cm): often resolve with antibiotics alone. Failed drainage or peritonitis: surgery required. Some patients never require surgery after successful drainage.', 'medium'),

('e0000343-0010-0000-0000-000000000010', 'd0000343-0000-0000-0000-000000000043', 10,
'Right-sided diverticulitis compared to left-sided:',
'Is more common in Western populations', 'Is more common in Asian populations, often mimics appendicitis, and has lower perforation rates', 'Always requires surgery', 'Has identical management', NULL,
'B', 'Right-sided diverticulitis: more common in Asian populations (up to 75% in some series vs <25% in West). May be true diverticula (congenital). Presentation mimics appendicitis (RLQ pain, fever). Lower complication rate than left-sided, lower perforation/abscess rates. Management: often conservative (antibiotics, supportive care). Surgery if complicated or uncertain diagnosis. May be discovered incidentally at appendectomy (can perform diverticulectomy or right colectomy depending on findings). Recurrence rate lower than left-sided disease.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 43 (Diverticular Disease) with 10 self-assessment questions inserted' as status;
