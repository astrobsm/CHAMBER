-- ============================================================================
-- SURGERY 3 CME ARTICLE 106: Diverticular Disease
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000172-0000-0000-0000-000000000172', 'a0000003-0000-0000-0000-000000000003', 'Diverticular Disease', 'Surgical management of diverticulosis and its complications')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000406-0000-0000-0000-000000000106',
    'c0000172-0000-0000-0000-000000000172',
    'a0000003-0000-0000-0000-000000000003',
    'Diverticular Disease: From Diverticulosis to Complicated Diverticulitis',
    'Comprehensive Diverticular Disease Management',
    'This article covers pathophysiology of diverticular disease, classification of diverticulitis (Hinchey), medical and surgical management of acute diverticulitis, elective sigmoid resection indications, and management of diverticular bleeding.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000406-0001-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 1,
'Diverticula of the colon are:',
'True diverticula with all wall layers', 'False (pseudo) diverticula representing herniation of mucosa and submucosa through the muscular wall at points of vascular penetration', 'Always congenital', 'Only found in the right colon',
'B', 'COLONIC DIVERTICULA: FALSE (PSEUDO) diverticula - only MUCOSA and SUBMUCOSA herniate through muscular wall (true diverticula have all layers). LOCATION: points of weakness where VASA RECTA penetrate (blood vessel entry points in circular muscle). Most common location: SIGMOID (high intraluminal pressure, smallest diameter - Laplace law). DIVERTICULOSIS: presence of diverticula without inflammation (common, often asymptomatic - found in 50% of people >60 years in Western countries). Risk factors: low fiber diet, obesity, lack of exercise, aging. Most remain asymptomatic; 10-25% develop complications (diverticulitis, bleeding).', 'easy'),

('e0000406-0002-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 2,
'The Hinchey classification of diverticulitis describes:',
'Types of diverticula', 'Stages of complicated diverticulitis based on presence and location of perforation, abscess, or purulent/fecal peritonitis', 'Bleeding severity', 'Colon length',
'B', 'HINCHEY CLASSIFICATION: stages of COMPLICATED diverticulitis. STAGE I: pericolic or mesenteric ABSCESS (confined). STAGE II: pelvic, intra-abdominal, or retroperitoneal abscess (distant from sigmoid). STAGE III: purulent PERITONITIS (generalized pus without fecal contamination). STAGE IV: FECAL peritonitis (generalized fecal contamination - free perforation). CLINICAL SIGNIFICANCE: guides management. Stages I-II: may respond to antibiotics + percutaneous drainage. Stages III-IV: require emergency SURGERY (peritonitis). Modified Hinchey classification includes additional categories. CT imaging helps stage accurately.', 'easy'),

('e0000406-0003-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 3,
'Initial management of uncomplicated acute diverticulitis includes:',
'Immediate surgery', 'Antibiotics, bowel rest (clear liquids or NPO), pain control, and observation with most cases managed as outpatient', 'Colonoscopy during acute attack', 'High fiber diet immediately',
'B', 'UNCOMPLICATED DIVERTICULITIS MANAGEMENT: (1) ANTIBIOTICS: traditionally given (covering gram-negative and anaerobes), though recent studies suggest may not always be necessary for mild cases. (2) BOWEL REST: clear liquids or NPO initially, advance diet as tolerated. (3) Pain control (avoid NSAIDs). (4) IV fluids if needed. OUTPATIENT management appropriate for mild cases (tolerate PO, no sepsis). ADMISSION: fever, significant leukocytosis, severe pain, unable to tolerate oral, elderly, immunocompromised. CT confirms diagnosis, rules out complications. Most (85%) resolve with medical management. Follow-up colonoscopy 6-8 weeks after resolution (rule out cancer).', 'easy'),

('e0000406-0004-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 4,
'Percutaneous drainage for diverticular abscess:',
'Is never indicated', 'Is appropriate for abscesses larger than 3-4 cm (Hinchey I-II) as a bridge to elective one-stage resection after inflammation resolves', 'Replaces surgery entirely', 'Is only for fecal peritonitis',
'B', 'PERCUTANEOUS DRAINAGE for diverticular abscess: BRIDGE to elective surgery. INDICATION: abscess >3-4 CM in diameter (Hinchey I-II). TECHNIQUE: CT or ultrasound-guided drainage catheter. GOAL: control sepsis, allow inflammation to subside, convert EMERGENCY surgery to ELECTIVE one-stage resection (lower morbidity). Success rate 70-90%. Failure (abscess too small, multiloculated, not accessible): manage with antibiotics alone or surgery. After resolution (4-6 weeks): elective sigmoid colectomy with PRIMARY ANASTOMOSIS (no stoma usually needed). Some may not require subsequent surgery if completely resolved and fit for observation.', 'medium'),

('e0000406-0005-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 5,
'Emergency surgery for perforated diverticulitis (Hinchey III-IV) options include:',
'Primary anastomosis in all cases', 'Hartmann procedure (sigmoid resection, end colostomy, rectal stump) or resection with primary anastomosis and diverting loop ileostomy', 'Appendectomy', 'Drainage alone',
'B', 'EMERGENCY SURGERY for perforated diverticulitis (Hinchey III-IV peritonitis): SIGMOID RESECTION indicated. OPTIONS: (1) HARTMANN PROCEDURE: sigmoid resection, END COLOSTOMY, rectal stump closure (no anastomosis in contaminated field). Traditional standard, safest in unstable/septic patient. (2) PRIMARY ANASTOMOSIS with DIVERTING LOOP ILEOSTOMY: resect sigmoid, create colorectal anastomosis, protect with ileostomy. May have lower overall morbidity (easier reversal, higher reversal rate). Choice based on contamination, patient stability, surgeon experience. Both require second surgery for reversal/stoma closure. Laparoscopic lavage (without resection) studied but controversial.', 'medium'),

('e0000406-0006-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 6,
'Elective sigmoid colectomy after diverticulitis:',
'Is required after first episode', 'Should be considered based on individual patient factors including recurrence, persistent symptoms, complicated episodes, and immunocompromised state, rather than number of episodes alone', 'Is never necessary', 'Must include total colectomy',
'B', 'ELECTIVE SIGMOID COLECTOMY after diverticulitis: INDICATIONS (current guidelines - individualized, not episode-based): (1) COMPLICATED diverticulitis (abscess, perforation, stricture, fistula). (2) PERSISTENT symptoms after medical management. (3) IMMUNOCOMPROMISED patients (higher complication/mortality risk). (4) Recurrent episodes significantly affecting quality of life. (5) Inability to exclude malignancy. Previous "rule" of surgery after 2 episodes abandoned - quality of life considerations. SURGERY: elective laparoscopic sigmoid colectomy with PRIMARY ANASTOMOSIS (single stage, no stoma). Proximal margin to soft, compliant colon (not all diverticula need removal). Distal margin to upper rectum.', 'medium'),

('e0000406-0007-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 7,
'Diverticular bleeding:',
'Always requires surgery', 'Is usually from the right colon, typically self-limited, and is managed with colonoscopy for diagnosis and hemostasis, with surgery reserved for massive or refractory bleeding', 'Is always minor', 'Only occurs with diverticulitis',
'B', 'DIVERTICULAR BLEEDING: common cause of lower GI bleeding. LOCATION: paradoxically more common in RIGHT colon (though diverticula more common left). MECHANISM: erosion of vasa recta at diverticulum neck. PRESENTATION: painless, large-volume hematochezia. COURSE: 70-80% SELF-LIMITED (stops spontaneously). MANAGEMENT: resuscitation, COLONOSCOPY (after prep if stable) for diagnosis and therapy (injection, clips, thermal). Angiography with embolization if bleeding localized and colonoscopy fails/not feasible. SURGERY: for massive ongoing bleeding, hemodynamic instability, or rebleeding. Segmental resection if source localized; subtotal colectomy if source unclear and bleeding continues.', 'medium'),

('e0000406-0008-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 8,
'Colovesical fistula from diverticulitis:',
'Is asymptomatic', 'Presents with pneumaturia (air in urine), fecaluria, and recurrent urinary tract infections, and requires surgical resection', 'Never involves the bladder', 'Is treated with antibiotics alone',
'B', 'COLOVESICAL FISTULA: abnormal connection between colon and bladder. CAUSE: most commonly diverticulitis (also colon cancer, Crohn disease, radiation). PATHOPHYSIOLOGY: inflamed sigmoid adherent to bladder dome, perforation/erosion creates fistula. PRESENTATION: PNEUMATURIA (pathognomonic - air in urine), FECALURIA (fecal particles in urine), recurrent URINARY TRACT INFECTIONS (polymicrobial). DIAGNOSIS: CT (air in bladder without catheter, thickened sigmoid-bladder interface), cystoscopy. TREATMENT: SURGICAL - sigmoid resection, fistula takedown, bladder repair (usually primary closure). Usually single-stage with primary anastomosis (bowel prep, tissue planes usually definable). Diverting stoma rarely needed.', 'medium'),

('e0000406-0009-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 9,
'Diverticular stricture causing obstruction:',
'Does not occur', 'Can develop from repeated episodes of inflammation and fibrosis, and requires evaluation to differentiate from malignancy before or during resection', 'Is always malignant', 'Never requires surgery',
'B', 'DIVERTICULAR STRICTURE: chronic complication of recurrent diverticulitis. MECHANISM: repeated INFLAMMATION leads to FIBROSIS, wall thickening, luminal narrowing. PRESENTATION: progressive obstructive symptoms - constipation, narrow stools, bloating, eventually OBSTRUCTION. KEY CONCERN: must differentiate from MALIGNANCY (colon cancer also causes stricture). DIAGNOSIS: CT (long tapered stricture suggests benign, irregular shouldered suggests cancer), colonoscopy with biopsy (may not be passable). TREATMENT: surgical RESECTION - sigmoid colectomy. May be staged if obstructed (proximal diversion first, then resection). Even if pre-op workup suggests benign, final pathology needed to exclude cancer.', 'medium'),

('e0000406-0010-0000-0000-000000000106', 'd0000406-0000-0000-0000-000000000106', 10,
'Diverticulitis in young patients (under 40):',
'Is more benign', 'Was previously thought to be more virulent but recent data suggest similar course to older patients, and surgery should be based on individual factors, not age alone', 'Always requires immediate surgery', 'Does not occur',
'B', 'DIVERTICULITIS IN YOUNG PATIENTS (<40-50 years): HISTORICAL view: thought to be more aggressive/virulent, higher recurrence, recommended earlier surgery. CURRENT EVIDENCE: more recent studies show SIMILAR disease course to older patients, not inherently more aggressive. Management should be based on INDIVIDUAL factors (episode severity, complications, quality of life impact) rather than age alone. Young patients do have more lifetime at risk for recurrence and complications, which factors into shared decision-making. Some have more aggressive phenotype, but age alone should not mandate early surgery. Lifestyle modifications (fiber, weight loss) for prevention.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 106 (Diverticular Disease) with 10 self-assessment questions inserted' as status;
