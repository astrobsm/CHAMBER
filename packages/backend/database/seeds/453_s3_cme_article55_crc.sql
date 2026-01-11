-- ============================================================================
-- SURGERY 3 CME ARTICLE 55: Colorectal Cancer - Complete Guide
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000121-0000-0000-0000-000000000121', 'a0000003-0000-0000-0000-000000000003', 'Colorectal Cancer Complete Guide', 'Comprehensive CRC management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000355-0000-0000-0000-000000000055',
    'c0000121-0000-0000-0000-000000000121',
    'a0000003-0000-0000-0000-000000000003',
    'Colorectal Cancer: From Screening to Treatment',
    'Comprehensive Oncological Management',
    'This article covers colorectal cancer including epidemiology, risk factors, hereditary syndromes, screening guidelines, staging, surgical principles (including lymph node harvest and margins), adjuvant therapy, and surveillance.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000355-0001-0000-0000-000000000001', 'd0000355-0000-0000-0000-000000000055', 1,
'The adenoma-carcinoma sequence:',
'Suggests CRC arises de novo', 'Describes the progression from normal mucosa to adenomatous polyp to carcinoma through accumulated genetic mutations', 'Applies only to hereditary CRC', 'Takes days to complete', NULL,
'B', 'Adenoma-carcinoma sequence: model for sporadic CRC development (70-80% of CRC). Normal epithelium → aberrant crypt foci → adenomatous polyp → carcinoma. Genetic mutations accumulate: APC gene (early - adenoma formation), KRAS (intermediate), p53/DCC (late - carcinoma). Takes 10-15 years on average. Basis for CRC screening - detect and remove adenomas before malignant transformation. Alternative pathway: serrated neoplasia pathway (BRAF mutation, CpG island methylation). Lynch syndrome: different pathway (mismatch repair gene mutations).', 'medium'),

('e0000355-0002-0000-0000-000000000002', 'd0000355-0000-0000-0000-000000000055', 2,
'Familial adenomatous polyposis (FAP):',
'Is an autosomal recessive condition', 'Is autosomal dominant, caused by APC gene mutation, with hundreds of polyps and near 100% CRC risk without prophylactic surgery', 'Has no genetic basis', 'Requires no surveillance', NULL,
'B', 'Familial adenomatous polyposis (FAP): autosomal dominant, APC gene mutation (chromosome 5q). Hundreds to thousands of colorectal adenomatous polyps, typically appearing in teens. Without surgery: 100% CRC risk by age 40-50. Management: prophylactic proctocolectomy (total colectomy with IPAA or end ileostomy). Screening: annual sigmoidoscopy from age 10-12 until colectomy. Extracolonic manifestations: duodenal/periampullary adenomas (second most common cancer cause), desmoid tumors, osteomas, CHRPE. Variants: Gardner syndrome (FAP + extracolonic features), Turcot syndrome (FAP + CNS tumors).', 'medium'),

('e0000355-0003-0000-0000-000000000003', 'd0000355-0000-0000-0000-000000000055', 3,
'Lynch syndrome (HNPCC) is characterized by:',
'Thousands of polyps', 'Mismatch repair gene mutations, right-sided CRC predominance, and increased risk of extracolonic cancers especially endometrial', 'APC gene mutation', 'No cancer risk', NULL,
'B', 'Lynch syndrome (HNPCC): autosomal dominant, mismatch repair gene mutations (MLH1, MSH2, MSH6, PMS2). Features: earlier CRC onset (40s), right-sided predominance, synchronous/metachronous CRC, few polyps (unlike FAP). Lifetime CRC risk: 50-80%. Extracolonic cancers: endometrial (40-60% risk), ovarian, gastric, urinary tract, small bowel, brain, skin. Amsterdam criteria: clinical screening criteria. Diagnosis: microsatellite instability (MSI-H), immunohistochemistry, germline testing. Surveillance: colonoscopy every 1-2 years from age 20-25.', 'medium'),

('e0000355-0004-0000-0000-000000000004', 'd0000355-0000-0000-0000-000000000055', 4,
'Minimum lymph node harvest for adequate staging in colorectal cancer resection is:',
'5 nodes', '12 lymph nodes', '1 node', '30 nodes', NULL,
'B', 'Lymph node harvest in CRC: minimum 12 lymph nodes recommended for adequate staging. Reasons: (1) Accurate N staging (node positive = stage III, requires adjuvant chemotherapy); (2) Quality measure for surgical oncology; (3) Prognostic - more nodes examined associated with better outcomes (stage migration effect, more thorough surgery). If <12 nodes: may be due to poor pathologic examination, neoadjuvant therapy (kills nodes), patient factors. Low node count in node-negative patient may underestimate stage. High ligation of feeding vessel ensures adequate lymphatic harvest.', 'easy'),

('e0000355-0005-0000-0000-000000000005', 'd0000355-0000-0000-0000-000000000055', 5,
'Right hemicolectomy for cecal cancer includes removal of:',
'Only the cecum', 'Cecum, ascending colon, hepatic flexure, with ileocolic, right colic, and right branch of middle colic vessels', 'Entire colon', 'Only the terminal ileum', NULL,
'B', 'Right hemicolectomy for cecal/ascending colon cancer: removes cecum, ascending colon, hepatic flexure, proximal transverse colon. Vessels ligated at origin: ileocolic artery (always), right colic artery (if present, variable), right branch of middle colic artery. Anastomosis: ileocolic (usually hand-sewn or stapled side-to-side). Extended right hemicolectomy: for hepatic flexure or transverse colon cancer, includes middle colic artery. Oncologic principles: high ligation of feeding vessel for adequate lymphadenectomy, 5cm proximal and distal margins.', 'medium'),

('e0000355-0006-0000-0000-000000000006', 'd0000355-0000-0000-0000-000000000055', 6,
'Total mesorectal excision (TME) for rectal cancer:',
'Is optional', 'Is the standard surgical technique involving complete removal of the mesorectum with its intact fascia to reduce local recurrence', 'Removes only the mucosa', 'Has no impact on outcomes', NULL,
'B', 'Total mesorectal excision (TME): standard technique for rectal cancer. Principles: (1) Sharp dissection in the avascular plane between mesorectal fascia (fascia propria) and presacral fascia; (2) Complete intact mesorectum envelope containing all lymphatics; (3) Circumferential resection margin (CRM) >1mm is negative. Benefits: reduced local recurrence (30% → 5-10%), improved survival. For upper rectal cancer: tumor-specific mesorectal excision (5cm distal mesorectal margin). Autonomic nerve preservation reduces urinary/sexual dysfunction.', 'medium'),

('e0000355-0007-0000-0000-000000000007', 'd0000355-0000-0000-0000-000000000055', 7,
'Neoadjuvant chemoradiation for rectal cancer:',
'Is never used', 'Is standard for locally advanced rectal cancer (T3/T4 or node-positive) to downstage, improve resectability, and reduce local recurrence', 'Is used only after surgery', 'Increases recurrence', NULL,
'B', 'Neoadjuvant chemoradiation for rectal cancer: indicated for locally advanced (T3/T4 and/or N+) mid-low rectal cancer. Benefits: (1) Tumor downstaging (up to 20% complete pathologic response); (2) Improved resectability; (3) Possible sphincter preservation in low tumors; (4) Reduced local recurrence. Regimen: long-course (45-50 Gy over 5 weeks + 5-FU based chemotherapy) or short-course RT (25 Gy in 5 fractions). Surgery: 6-12 weeks after completing neoadjuvant therapy. TNT (total neoadjuvant therapy): all chemo + RT before surgery (emerging approach).', 'medium'),

('e0000355-0008-0000-0000-000000000008', 'd0000355-0000-0000-0000-000000000055', 8,
'CEA (carcinoembryonic antigen) in colorectal cancer:',
'Is highly specific for CRC', 'Is useful for monitoring treatment response and recurrence surveillance but lacks sensitivity for screening', 'Should be used for primary screening', 'Has no role in CRC management', NULL,
'B', 'CEA in colorectal cancer: tumor marker, not useful for screening (low sensitivity, not specific - elevated in smokers, other cancers, benign conditions). Uses: (1) Baseline preoperative level (prognostic - high CEA = worse prognosis); (2) Postoperative surveillance for recurrence (rising CEA may precede clinical recurrence by months); (3) Monitoring response to chemotherapy. Follow-up: CEA every 3-6 months for 3 years, then every 6 months for 2 years. Rising CEA prompts imaging workup. Does not replace colonoscopy for surveillance.', 'easy'),

('e0000355-0009-0000-0000-000000000009', 'd0000355-0000-0000-0000-000000000055', 9,
'Adjuvant chemotherapy for colon cancer is indicated for:',
'All stages', 'Stage III (node-positive) and high-risk stage II disease', 'Stage I only', 'Never indicated', NULL,
'B', 'Adjuvant chemotherapy for colon cancer: STAGE III (N+): standard of care, reduces recurrence/mortality. Regimens: FOLFOX (5-FU, leucovorin, oxaliplatin) or CAPOX for 3-6 months. STAGE II: most do not benefit; consider for high-risk features (T4, perforation, obstruction, inadequate lymph node sampling, poorly differentiated, lymphovascular invasion, perineural invasion, MSS). STAGE I: no adjuvant chemotherapy (surgery curative). STAGE IV: palliative systemic therapy (may be curative with oligometastatic disease + resection). Duration: 3 months may be adequate for low-risk Stage III (IDEA trial).', 'medium'),

('e0000355-0010-0000-0000-000000000010', 'd0000355-0000-0000-0000-000000000055', 10,
'Surveillance colonoscopy after curative CRC resection:',
'Is not needed', 'Is performed at 1 year post-surgery, then every 3-5 years if no adenomas or cancer found', 'Should be done monthly', 'Only once in lifetime', NULL,
'B', 'Post-CRC resection surveillance colonoscopy: (1) Perioperative colonoscopy to clear synchronous lesions (if not done preoperatively due to obstruction, complete within 3-6 months); (2) 1 year after surgery (or 1 year after perioperative colonoscopy if needed); (3) If normal: repeat in 3 years; (4) If still normal: repeat every 5 years. Additional surveillance: CEA every 3-6 months for 3-5 years, CT chest/abdomen/pelvis annually for 3-5 years. Goals: detect metachronous cancers (2-5%), metachronous adenomas, and treatable recurrence.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 55 (Colorectal Cancer Complete Guide) with 10 self-assessment questions inserted' as status;
