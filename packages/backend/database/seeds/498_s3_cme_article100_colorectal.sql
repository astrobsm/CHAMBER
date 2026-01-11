-- ============================================================================
-- SURGERY 3 CME ARTICLE 100: Colorectal Surgery Essentials
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000166-0000-0000-0000-000000000166', 'a0000003-0000-0000-0000-000000000003', 'Colorectal Surgery Essentials', 'Principles of colorectal surgery and cancer management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000400-0000-0000-0000-000000000100',
    'c0000166-0000-0000-0000-000000000166',
    'a0000003-0000-0000-0000-000000000003',
    'Colorectal Surgery: Oncologic and Technical Principles',
    'Comprehensive Colorectal Surgical Management',
    'This article covers colorectal cancer staging, surgical anatomy, oncologic resection principles, anastomotic techniques, stoma creation and management, enhanced recovery protocols, and management of anastomotic leak.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000400-0001-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 1,
'The principles of oncologic colorectal resection include:',
'Minimal resection margins', 'Adequate proximal and distal margins (at least 5 cm for colon cancer), en bloc resection of involved structures, high ligation of the vascular pedicle, and minimum of 12 lymph nodes for adequate staging', 'No lymph node removal', 'Only polypectomy is adequate',
'B', 'ONCOLOGIC COLORECTAL RESECTION PRINCIPLES: (1) Adequate MARGINS: proximal and distal (≥5 cm for colon, ≥1-2 cm for rectal); (2) EN BLOC resection of adjacent involved structures; (3) HIGH LIGATION of primary vascular pedicle (e.g., IMA for left colon/sigmoid); (4) Adequate LYMPHADENECTOMY: minimum 12 LYMPH NODES for accurate staging; (5) No-touch technique and complete mesocolic excision (CME) for colon, total mesorectal excision (TME) for rectum; (6) Negative circumferential margin (especially rectal). These principles improve survival and reduce local recurrence.', 'easy'),

('e0000400-0002-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 2,
'Total mesorectal excision (TME) for rectal cancer involves:',
'Partial removal of mesorectum', 'Sharp dissection in the areolar plane surrounding the mesorectum, removing the rectum with its entire mesentery as an intact package with a negative circumferential resection margin', 'Blunt dissection only', 'No mesorectum removal',
'B', 'TOTAL MESORECTAL EXCISION (TME): gold standard for rectal cancer surgery (Heald). TECHNIQUE: SHARP dissection in the areolar "holy plane" between visceral (mesorectal) and parietal fascia, removing rectum with INTACT mesorectum (mesentery containing lymph nodes, vessels). GOALS: complete intact mesorectum, NEGATIVE CIRCUMFERENTIAL RESECTION MARGIN (CRM - predicts local recurrence), adequate distal margin (≥1-2 cm, 5 cm of mesorectum for proximal tumors). TME reduced local recurrence from 30-40% to <10%. Quality assessed by pathologist (complete, near-complete, incomplete).', 'easy'),

('e0000400-0003-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 3,
'A right hemicolectomy involves removal of:',
'Only the cecum', 'Terminal ileum, cecum, ascending colon, hepatic flexure, and proximal transverse colon with their mesentery, and ileocolic anastomosis', 'Entire colon', 'Only the appendix',
'B', 'RIGHT HEMICOLECTOMY: standard operation for right colon cancer (cecum, ascending, hepatic flexure). RESECTION includes: terminal ILEUM (usually 5-10 cm), CECUM, ASCENDING colon, HEPATIC FLEXURE, proximal TRANSVERSE colon, with associated mesentery (lymph nodes). VESSELS ligated: ileocolic, right colic (if present), right branch of middle colic. RECONSTRUCTION: ILEOCOLIC anastomosis (hand-sewn or stapled, end-to-end or functional end-to-end). Extended right hemicolectomy: includes entire transverse colon for splenic flexure lesions or transverse colon cancers.', 'easy'),

('e0000400-0004-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 4,
'Risk factors for anastomotic leak include:',
'Young healthy patient', 'Emergency surgery, tension on anastomosis, poor blood supply, malnutrition, steroid use, low rectal anastomosis, and male gender', 'Elective surgery', 'Female gender',
'B', 'ANASTOMOTIC LEAK RISK FACTORS: PATIENT: malnutrition, obesity, diabetes, smoking, steroids/immunosuppression, ASA class. OPERATIVE: EMERGENCY surgery, contamination, blood loss, TENSION on anastomosis, poor BLOOD SUPPLY, prolonged operative time. ANATOMIC: LOW (pelvic) anastomosis (rectal surgery leak rate 5-15%), MALE gender (narrow pelvis). Other: neoadjuvant radiation, pre-operative bevacizumab. PROTECTION: diverting stoma for low rectal (reduces clinical impact, not leak rate itself). Leak rate: colon 3-5%, low rectal 10-15%. Detection: fever, tachycardia, pain, peritonitis, sepsis - CT confirms.', 'medium'),

('e0000400-0005-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 5,
'Enhanced Recovery After Surgery (ERAS) protocols for colorectal surgery include:',
'Prolonged fasting and bed rest', 'Minimal fasting, carbohydrate loading, early feeding, early mobilization, multimodal analgesia, and avoidance of routine nasogastric tube and drains', 'Routine NGT and drains', 'Delayed feeding for 7 days',
'B', 'ENHANCED RECOVERY (ERAS) PROTOCOLS: multimodal perioperative care to accelerate recovery. COMPONENTS: PREOPERATIVE: patient education, minimal fasting (clear fluids 2h, solids 6h), carbohydrate drink, no routine bowel prep. INTRAOPERATIVE: minimally invasive surgery when feasible, goal-directed fluid therapy, normothermia. POSTOPERATIVE: EARLY FEEDING (day 0-1), EARLY MOBILIZATION, multimodal analgesia (minimize opioids), avoid routine NG tube and drains, early catheter removal, VTE prophylaxis. OUTCOMES: shorter hospital stay, fewer complications, faster recovery, no increase in readmissions.', 'easy'),

('e0000400-0006-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 6,
'An end colostomy (Hartmann procedure) is commonly performed for:',
'Elective cancer surgery always', 'Emergency situations such as perforated diverticulitis or obstructing left-sided cancer when primary anastomosis is unsafe', 'All colorectal surgery', 'Only benign disease',
'B', 'HARTMANN PROCEDURE: resection of diseased segment (usually sigmoid) with END COLOSTOMY and closure of rectal stump (without anastomosis). INDICATIONS: EMERGENCY settings where primary anastomosis unsafe - perforated DIVERTICULITIS, obstructing left colon CANCER, ischemic colon, trauma. Avoids anastomosis in hostile abdomen (contamination, unstable patient, poor blood supply). REVERSAL: can be reversed (Hartmann reversal - restore continuity) electively in 3-6 months; ~50-60% are reversed (some never reversed due to comorbidities). Alternative in some settings: primary anastomosis with diverting loop ileostomy.', 'medium'),

('e0000400-0007-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 7,
'A loop ileostomy is commonly created to:',
'Treat small bowel obstruction', 'Protect a distal anastomosis (especially low rectal) by diverting fecal stream, and is reversed after anastomosis healing is confirmed', 'Replace colostomy always', 'Treat colon cancer directly',
'B', 'LOOP ILEOSTOMY: temporary stoma to PROTECT distal anastomosis. CREATION: loop of ileum brought through abdominal wall, opened, fashioned with proximal (functional) and distal (mucous fistula) limbs. INDICATION: protect LOW RECTAL or coloanal anastomosis (high leak risk), ileal pouch-anal anastomosis (IPAA). RATIONALE: if leak occurs, feces diverted, reduces sepsis, may allow leak to heal without reoperation. REVERSAL: after confirming anastomosis healed (usually 8-12 weeks, water-soluble contrast enema or CT). Loop ileostomy preferred over loop colostomy (easier to manage, easier reversal).', 'medium'),

('e0000400-0008-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 8,
'Management of anastomotic leak after colorectal surgery depends on:',
'Observation in all cases', 'Clinical severity, ranging from antibiotics alone for small contained leaks to percutaneous drainage for abscesses, or reoperation with diversion for diffuse peritonitis', 'Immediate reoperation always', 'No treatment needed',
'B', 'ANASTOMOTIC LEAK MANAGEMENT: depends on severity (ISREC classification). GRADE A (radiologic only, asymptomatic): observation, may resolve. GRADE B (clinical leak requiring intervention but not laparotomy): antibiotics, PERCUTANEOUS DRAINAGE of abscess/collection (IR-guided), bowel rest, TPN. GRADE C (requires laparotomy): REOPERATION - options include takedown of anastomosis with end stoma (safest), washout with proximal DIVERSION (loop ileostomy), or repair with diversion (rarely). Early leaks (<7 days): more likely to require surgery. Endoscopic stenting, NPWT increasingly used for selected leaks.', 'medium'),

('e0000400-0009-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 9,
'Neoadjuvant therapy for locally advanced rectal cancer:',
'Is not beneficial', 'Reduces local recurrence, may achieve tumor downstaging and pathologic complete response, and consists of chemoradiation or total neoadjuvant therapy (TNT)', 'Worsens outcomes', 'Is only given after surgery',
'B', 'NEOADJUVANT THERAPY for locally advanced rectal cancer (T3-4 or N+): CHEMORADIATION (long-course 5-FU or capecitabine + 50.4 Gy over 5-6 weeks) OR short-course radiation (25 Gy in 5 fractions). BENEFITS: DOWNSTAGING (tumor shrinks, nodes may clear), PATHOLOGIC COMPLETE RESPONSE (pCR) in 15-25%, reduced LOCAL RECURRENCE (improves CRM), may allow sphincter preservation. TOTAL NEOADJUVANT THERAPY (TNT): all chemotherapy and radiation before surgery - emerging approach with higher pCR rates. Surgery typically 6-12 weeks after chemoradiation. Watch-and-wait (organ preservation) for clinical complete response under investigation.', 'medium'),

('e0000400-0010-0000-0000-000000000100', 'd0000400-0000-0000-0000-000000000100', 10,
'Stoma complications include:',
'Only cosmetic issues', 'Parastomal hernia, prolapse, retraction, stenosis, skin irritation, and high-output leading to dehydration', 'No significant complications', 'Only occur with ileostomy',
'B', 'STOMA COMPLICATIONS: EARLY: ischemia/necrosis (assess color, may need revision), retraction, mucocutaneous separation, bleeding, obstruction. LATE: PARASTOMAL HERNIA (most common, 30-50%, may need repair with mesh), PROLAPSE (telescoping of bowel through stoma, more common with loop/colostomy), STENOSIS (narrowing, may need dilation or revision), RETRACTION (stoma sinks below skin level). ONGOING: skin IRRITATION (peristomal dermatitis from effluent), high-OUTPUT dehydration (especially ileostomy), electrolyte abnormalities, psychosocial issues. Prevention: proper siting, technique, stoma nurse education.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 100 (Colorectal Surgery Essentials) with 10 self-assessment questions inserted' as status;
