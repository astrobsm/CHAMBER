-- ============================================================================
-- SURGERY 3 CME ARTICLE 107: Inflammatory Bowel Disease Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000173-0000-0000-0000-000000000173', 'a0000003-0000-0000-0000-000000000003', 'Inflammatory Bowel Disease Surgery', 'Surgical management of Crohn disease and ulcerative colitis')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000407-0000-0000-0000-000000000107',
    'c0000173-0000-0000-0000-000000000173',
    'a0000003-0000-0000-0000-000000000003',
    'Inflammatory Bowel Disease: Surgical Principles and Procedures',
    'Surgical Management of IBD',
    'This article covers indications for surgery in ulcerative colitis and Crohn disease, total proctocolectomy with ileal pouch-anal anastomosis (IPAA), strictureplasty, management of perianal Crohn disease, and postoperative complications.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000407-0001-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 1,
'Indications for surgery in ulcerative colitis include:',
'Mild disease only', 'Failure of medical therapy, dysplasia or cancer, fulminant colitis with toxic megacolon, and massive hemorrhage', 'Isolated small bowel disease', 'Fistulas as first indication',
'B', 'SURGICAL INDICATIONS in ULCERATIVE COLITIS: UC is surgically CURABLE (confined to colon/rectum). ELECTIVE: (1) FAILURE of medical therapy (uncontrolled symptoms despite biologics). (2) DYSPLASIA (high-grade, multifocal low-grade) or CANCER. (3) Medication side effects/intolerance. (4) Growth retardation in children. URGENT/EMERGENT: (5) FULMINANT colitis, TOXIC MEGACOLON (colon dilation >6cm with systemic toxicity). (6) PERFORATION. (7) Massive HEMORRHAGE. Surgery removes all disease (unlike Crohn). Options: total proctocolectomy with IPAA (pouch), total proctocolectomy with permanent ileostomy, or subtotal colectomy (staged approach in emergency).', 'easy'),

('e0000407-0002-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 2,
'The ileal pouch-anal anastomosis (IPAA) procedure:',
'Is preferred for Crohn disease', 'Is the surgery of choice for ulcerative colitis, creating a reservoir from terminal ileum that is anastomosed to the anus to maintain intestinal continuity and avoid permanent stoma', 'Requires permanent ileostomy', 'Is only for cancer',
'B', 'ILEAL POUCH-ANAL ANASTOMOSIS (IPAA): procedure of choice for ULCERATIVE COLITIS. PROCEDURE: total proctocolectomy (remove colon and rectum), create POUCH (reservoir) from terminal ileum (J-pouch most common, also S and W configurations), anastomose pouch to anus (or dentate line). RESULT: maintains INTESTINAL CONTINUITY, avoids permanent stoma. Usually done in 2-3 stages with temporary diverting loop ileostomy to protect pouch anastomosis. Function: 4-6 bowel movements/day typical. NOT for Crohn disease (high failure rate from recurrence in pouch). Complications: pouchitis (30-50%), anastomotic stricture, pouch failure (5-10%).', 'easy'),

('e0000407-0003-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 3,
'Surgery for Crohn disease aims to:',
'Cure the disease', 'Conserve bowel and treat complications while accepting that surgery is not curative and recurrence is expected', 'Remove all affected bowel always', 'Avoid surgery entirely',
'B', 'CROHN DISEASE SURGERY principles: NOT curative (disease recurs). GOALS: (1) CONSERVE BOWEL (avoid short bowel syndrome - lifetime of resections). (2) Treat COMPLICATIONS (stricture, fistula, abscess, perforation, cancer). (3) Minimize morbidity. STRATEGIES: limited resection of diseased segment (not wide margins - recurrence at anastomosis regardless), STRICTUREPLASTY (widen stricture without resection) for suitable strictures, drainage of abscesses. 70-80% of Crohn patients need surgery in lifetime, 50% need reoperation. Optimize medical therapy (biologics) and nutrition pre-operatively. Recurrence rate: 50% endoscopic recurrence at 1 year.', 'medium'),

('e0000407-0004-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 4,
'Strictureplasty in Crohn disease:',
'Is contraindicated', 'Widens a strictured segment without resection, preserving bowel length, and is appropriate for short fibrotic strictures without active inflammation, fistula, or cancer', 'Removes the strictured segment', 'Is only for ulcerative colitis',
'B', 'STRICTUREPLASTY: bowel-preserving operation for Crohn STRICTURES. PRINCIPLE: widen narrowed segment without resection, preserve intestinal length. TYPES: (1) Heineke-Mikulicz (short strictures <10cm): longitudinal incision, transverse closure. (2) Finney (longer strictures 10-25cm): side-to-side isoperistaltic anastomosis. (3) Michelassi/side-to-side (very long strictures). INDICATIONS: SHORT, FIBROTIC (not actively inflamed) strictures, multiple strictures, patients with prior extensive resection. CONTRAINDICATIONS: active inflammation, fistula, abscess, phlegmon, suspected CANCER, perforation. Recurrence/complications rare at strictureplasty site.', 'medium'),

('e0000407-0005-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 5,
'Toxic megacolon:',
'Is a benign condition', 'Is a life-threatening complication of severe colitis characterized by colonic dilation greater than 6cm with systemic toxicity, requiring urgent surgery if no improvement with medical therapy', 'Never occurs in IBD', 'Is treated only with antibiotics',
'B', 'TOXIC MEGACOLON: severe, life-threatening complication. DEFINITION: colonic DILATION >6 CM (usually transverse colon on X-ray) plus SYSTEMIC TOXICITY (fever, tachycardia, leukocytosis, anemia). CAUSES: severe ulcerative colitis (most common), Crohn colitis, C. difficile, CMV colitis. PATHOPHYSIOLOGY: transmural inflammation, neuromuscular dysfunction, loss of tone. RISKS: PERFORATION (high mortality), sepsis. MANAGEMENT: resuscitation, NPO, NG decompression, IV steroids (if not already failing), antibiotics, close monitoring. SURGERY if: no improvement in 24-48 hours, worsening, perforation, massive hemorrhage. OPERATION: subtotal colectomy, end ileostomy (staged approach, pouch later).', 'medium'),

('e0000407-0006-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 6,
'Perianal Crohn disease management includes:',
'Immediate proctectomy', 'Examination under anesthesia with drainage of abscesses, seton placement for complex fistulas, and medical therapy with biologics for maintenance', 'Ignoring perianal disease', 'Fistulotomy for all fistulas',
'B', 'PERIANAL CROHN DISEASE: common (30-50% of Crohn patients), complex management. ASSESSMENT: examination under anesthesia (EUA), MRI pelvis. PRINCIPLES: (1) DRAIN abscesses. (2) SETON placement for complex fistulas (allows drainage, prevents recurrent abscess, preserves sphincter). (3) MEDICAL therapy - BIOLOGICS (anti-TNF: infliximab) mainstay for healing. (4) Definitive fistula surgery (advancement flap, LIFT procedure, fistula plug) only after inflammation controlled. Avoid aggressive surgery (risk of poor healing, incontinence, non-healing wounds). Simple fistulas in quiescent disease: may consider fistulotomy. Severe refractory: fecal diversion, proctectomy as last resort.', 'medium'),

('e0000407-0007-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 7,
'Pouchitis after IPAA:',
'Never occurs', 'Is inflammation of the ileal pouch occurring in 30-50% of patients, presenting with increased stool frequency, urgency, and bleeding, and is usually treated with antibiotics', 'Requires immediate pouch removal', 'Is only caused by infection',
'B', 'POUCHITIS: most common complication after IPAA. INCIDENCE: 30-50% at least one episode. CAUSE: not fully understood - ? bacterial overgrowth, ? immune-mediated (more common in UC with extraintestinal manifestations). PRESENTATION: increased stool FREQUENCY, URGENCY, incontinence, bloody stool, abdominal pain, fever. DIAGNOSIS: endoscopy (inflammation, ulceration of pouch) + histology (rule out other causes - CMV, C. diff). TREATMENT: ANTIBIOTICS (ciprofloxacin, metronidazole) - usually effective. Chronic/refractory pouchitis: may need long-term antibiotics, probiotics, or biologics. Differentiate from CUFF-ITIS (inflammation of retained rectal cuff - treat with 5-ASA suppositories). Reconsider diagnosis (? Crohn) if refractory.', 'medium'),

('e0000407-0008-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 8,
'The surgical approach for emergency colectomy in fulminant colitis is:',
'Total proctocolectomy with IPAA', 'Subtotal colectomy with end ileostomy, leaving the rectum for future completion proctectomy and possible pouch', 'Right hemicolectomy only', 'Appendectomy',
'B', 'EMERGENCY COLECTOMY for fulminant colitis: SUBTOTAL COLECTOMY with END ILEOSTOMY. PROCEDURE: remove colon (cecum to sigmoid), leave RECTUM (as Hartmann stump or mucous fistula). Do NOT do proctectomy or IPAA in emergency setting (sick patient, on steroids, high morbidity). RATIONALE: (1) treats acute emergency safely, (2) allows patient to recover, (3) preserves options for future (completion proctectomy + IPAA if UC confirmed, or rectal preservation if Crohn). Second stage (elective): completion proctectomy + pouch construction. May be done as 2-stage (colectomy, then proctectomy/pouch) or 3-stage (colectomy, pouch with diverting ileostomy, ileostomy closure).', 'medium'),

('e0000407-0009-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 9,
'Colorectal cancer risk in inflammatory bowel disease:',
'Is not increased', 'Is increased, particularly with long disease duration, extensive colitis, and primary sclerosing cholangitis, necessitating surveillance colonoscopy', 'Is only in Crohn disease', 'Decreases with disease duration',
'B', 'COLORECTAL CANCER RISK in IBD: INCREASED above general population. RISK FACTORS: (1) DURATION of disease (risk increases after 8-10 years). (2) EXTENT of disease (pancolitis > left-sided > proctitis). (3) Primary sclerosing cholangitis (PSC) - highest risk. (4) Family history of CRC. (5) Severity of inflammation. SURVEILLANCE: colonoscopy with multiple biopsies beginning 8-10 years after diagnosis, every 1-3 years depending on risk factors. Chromoendoscopy improves dysplasia detection. Finding dysplasia: colectomy recommended (especially high-grade, multifocal). Cancer biology: more often multifocal, may arise from flat dysplasia (not always polyp).', 'easy'),

('e0000407-0010-0000-0000-000000000107', 'd0000407-0000-0000-0000-000000000107', 10,
'Short bowel syndrome after extensive resection for Crohn disease:',
'Is easily managed', 'Results from loss of absorptive capacity when less than 200cm of small bowel remains, requiring nutritional support, and is prevented by bowel-sparing surgery', 'Only occurs after one resection', 'Is not related to surgery',
'B', 'SHORT BOWEL SYNDROME (SBS): inadequate absorptive capacity. DEFINITION: <200cm small bowel remaining (with colon) or <100cm (without colon). CONSEQUENCES: malabsorption (nutrients, fluids, electrolytes), dehydration, malnutrition, micronutrient deficiencies (B12, fat-soluble vitamins, zinc). MANAGEMENT: TPN dependency (temporary or permanent), small frequent meals, antidiarrheals, fluid/electrolyte replacement, intestinal adaptation (compensatory hypertrophy). GLP-2 analogues (teduglutide) may reduce TPN needs. PREVENTION in Crohn: BOWEL-SPARING surgery (limited resection, strictureplasty), avoid repeated aggressive resections. Intestinal transplant for TPN-refractory or failing access.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 107 (Inflammatory Bowel Disease Surgery) with 10 self-assessment questions inserted' as status;
