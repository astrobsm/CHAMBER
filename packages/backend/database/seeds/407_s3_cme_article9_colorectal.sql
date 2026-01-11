-- ============================================================================
-- SURGERY 3 CME ARTICLE 9: Colorectal Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000075-0000-0000-0000-000000000075', 'a0000003-0000-0000-0000-000000000003', 'Colorectal Surgery', 'Colorectal cancer, diverticular disease and anorectal conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000309-0000-0000-0000-000000000009',
    'c0000075-0000-0000-0000-000000000075',
    'a0000003-0000-0000-0000-000000000003',
    'Colorectal Surgery: Cancer, Diverticular Disease and Anorectal Conditions',
    'Diagnosis, Staging and Surgical Management',
    'This comprehensive article covers colorectal cancer screening, staging and surgical treatment, diverticular disease and its complications, hemorrhoids, anal fissure, perianal abscess and fistula-in-ano, and principles of stoma creation and management.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000309-0001-0000-0000-000000000001', 'd0000309-0000-0000-0000-000000000009', 1,
'The adenoma-carcinoma sequence in colorectal cancer is associated with mutations in which tumor suppressor gene?',
'BRCA1', 'APC (Adenomatous Polyposis Coli)', 'RET', 'RB1', NULL,
'B', 'The adenoma-carcinoma sequence (Vogelstein model) describes stepwise genetic changes: APC mutation (earliest, initiates adenoma) → KRAS activation → SMAD4/DCC loss → p53 loss (late, progression to carcinoma). APC is located on chromosome 5q and is mutated in both familial adenomatous polyposis (germline) and most sporadic colorectal cancers (somatic).', 'medium'),

('e0000309-0002-0000-0000-000000000002', 'd0000309-0000-0000-0000-000000000009', 2,
'A 55-year-old presents with iron deficiency anemia and occult blood positive stool. The most appropriate next investigation is:',
'Barium enema', 'Colonoscopy', 'CT abdomen only', 'Trial of iron therapy', NULL,
'B', 'Iron deficiency anemia with occult blood suggests GI blood loss. In patients over 50, right-sided colon cancer must be excluded. Colonoscopy is the investigation of choice as it allows visualization of the entire colon and biopsy of any suspicious lesions. Right-sided cancers often present with anemia (occult blood loss) rather than obstruction. CT colonography is an alternative if colonoscopy is incomplete.', 'easy'),

('e0000309-0003-0000-0000-000000000003', 'd0000309-0000-0000-0000-000000000009', 3,
'The most important prognostic factor in colorectal cancer is:',
'Tumor size', 'Tumor grade', 'TNM stage (particularly lymph node status)', 'Patient age', NULL,
'C', 'TNM staging is the most important prognostic factor. Lymph node involvement (N stage) significantly impacts survival. Stage I (T1-2, N0) has >90% 5-year survival; Stage III (any T, N1-2) drops to 40-70% depending on number of nodes involved; Stage IV (distant metastases) has <15% 5-year survival. At least 12 lymph nodes should be examined for adequate staging.', 'easy'),

('e0000309-0004-0000-0000-000000000004', 'd0000309-0000-0000-0000-000000000009', 4,
'Total mesorectal excision (TME) for rectal cancer:',
'Removes only the primary tumor', 'Removes the rectum with its intact mesorectal envelope along the avascular plane', 'Is only indicated for advanced tumors', 'Has no impact on local recurrence', NULL,
'B', 'TME involves sharp dissection in the avascular plane between the mesorectal fascia and parietal pelvic fascia, removing the rectum with an intact mesorectal envelope. This reduces local recurrence from 30-40% to 5-10%. TME is the standard for mid and low rectal cancers. For upper rectal cancers, tumor-specific mesorectal excision (5cm distal to tumor) is acceptable.', 'medium'),

('e0000309-0005-0000-0000-000000000005', 'd0000309-0000-0000-0000-000000000009', 5,
'Neoadjuvant chemoradiation for rectal cancer is indicated for:',
'All rectal cancers regardless of stage', 'Locally advanced rectal cancer (T3-4 or node positive)', 'Only metastatic disease', 'Only after surgery fails', NULL,
'B', 'Neoadjuvant chemoradiotherapy is standard for locally advanced rectal cancer (cT3-4 or cN+). Benefits include tumor downsizing/downstaging (may allow sphincter preservation), increased R0 resection rate, reduced local recurrence. Complete pathologic response occurs in 15-20%. Early rectal cancers (T1-2 N0) do not require neoadjuvant therapy. Short-course radiation (5 x 5Gy) is an alternative.', 'medium'),

('e0000309-0006-0000-0000-000000000006', 'd0000309-0000-0000-0000-000000000009', 6,
'Complicated diverticular disease with a sigmoid colon perforation and purulent peritonitis (Hinchey III) is best managed with:',
'Antibiotics alone', 'Percutaneous drainage only', 'Hartmann procedure or primary anastomosis with diverting loop ileostomy', 'Elective sigmoid colectomy in 6 weeks', NULL,
'C', 'Hinchey classification: I (pericolic abscess), II (pelvic abscess), III (purulent peritonitis), IV (fecal peritonitis). Hinchey III-IV require surgery. Options include Hartmann procedure (sigmoid resection with end colostomy) or primary anastomosis with proximal diversion (loop ileostomy). LADIES trial showed primary anastomosis with ileostomy is safe in selected Hinchey III cases with lower stoma reversal complications.', 'medium'),

('e0000309-0007-0000-0000-000000000007', 'd0000309-0000-0000-0000-000000000009', 7,
'The treatment of choice for a chronic anal fissure with visible internal sphincter fibers (sentinel pile present) is:',
'Topical nitroglycerin or diltiazem', 'Immediate hemorrhoidectomy', 'Conservative treatment with fiber only', 'Total sphincterectomy', NULL,
'A', 'Chronic anal fissures (>6 weeks, with sentinel pile, exposed fibers, indurated edges) require sphincter relaxation. First-line: topical nitroglycerin (0.4%) or diltiazem (2%) - reduce sphincter tone and improve blood flow. Second-line: Botulinum toxin injection. Surgical option: Lateral internal sphincterotomy (highest healing rate but small incontinence risk). Most fissures are posterior midline due to poor blood supply.', 'medium'),

('e0000309-0008-0000-0000-000000000008', 'd0000309-0000-0000-0000-000000000009', 8,
'The Parks classification of fistula-in-ano is based on:',
'Etiology of the fistula', 'Relationship of the fistula track to the anal sphincter muscles', 'Size of the external opening', 'Number of external openings', NULL,
'B', 'Parks classification describes fistula track relationship to sphincters: (1) Intersphincteric (most common, 45%) - between internal and external sphincter, (2) Trans-sphincteric (30%) - through both sphincters, (3) Suprasphincteric (20%) - over external sphincter, through levator ani, (4) Extrasphincteric (5%) - outside sphincters entirely. Goodsall rule predicts internal opening location based on external opening position.', 'medium'),

('e0000309-0009-0000-0000-000000000009', 'd0000309-0000-0000-0000-000000000009', 9,
'Third-degree hemorrhoids are characterized by:',
'Internal hemorrhoids that do not prolapse', 'Prolapse with straining but spontaneously reduce', 'Prolapse requiring manual reduction', 'Irreducible prolapse', NULL,
'C', 'Hemorrhoid grading: Grade I - no prolapse, may bleed; Grade II - prolapse with straining, spontaneous reduction; Grade III - prolapse requiring manual reduction; Grade IV - irreducibly prolapsed. Treatment: Grade I-II - conservative (fiber, topical agents) or rubber band ligation; Grade III - banding or hemorrhoidectomy; Grade IV - usually requires hemorrhoidectomy. Thrombosed external hemorrhoids are treated with excision if within 72 hours.', 'easy'),

('e0000309-0010-0000-0000-000000000010', 'd0000309-0000-0000-0000-000000000009', 10,
'A loop colostomy differs from an end colostomy in that:',
'It is always permanent', 'Both limbs of bowel (proximal and distal) open at the surface', 'It cannot be reversed', 'It is created only from sigmoid colon', NULL,
'B', 'A loop colostomy brings a loop of colon to the surface with both proximal (functional) and distal (mucous fistula) limbs opening. It is easier to create and reverse, often used for temporary fecal diversion (protect distal anastomosis). An end colostomy has only the proximal limb at surface (distal bowel is either resected or closed as a Hartmann pouch). Loop stomas can be transverse or sigmoid; end stomas are usually sigmoid.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 9 (Colorectal Surgery) with 10 self-assessment questions inserted' as status;
