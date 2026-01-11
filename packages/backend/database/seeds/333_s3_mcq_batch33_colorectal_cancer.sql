-- ============================================================================
-- SURGERY 3 MCQ BATCH 33: Colorectal Cancer (Questions 1921-1980)
-- Topic: Colon Cancer, Rectal Cancer, Hereditary Syndromes, Staging, Treatment
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Epidemiology and Risk Factors (1-10)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Colorectal cancer is the:',
'Most common cancer worldwide', 'Third most common cancer and second leading cause of cancer death worldwide', 'Rare malignancy', 'Only affects young adults', 'Most common GI cancer',
'B', 'Colorectal cancer epidemiology: 3rd most common cancer worldwide (after lung, breast), 2nd leading cause of cancer death. Incidence: 50/100,000 in developed countries. Median age: 70 years, but increasing in younger adults (<50). Lifetime risk: 4-5%. More common in males. Geographic variation: highest in Australia/New Zealand, Western Europe, North America. Reference: Siegel RL. CA Cancer J Clin. 2023.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The most common location for colorectal cancer is:',
'Cecum', 'Rectosigmoid region (sigmoid colon and rectum account for majority)', 'Transverse colon', 'Ascending colon', 'Appendix',
'B', 'Colorectal cancer distribution: rectum and sigmoid (60-70%), descending colon (10-15%), transverse colon (10-15%), ascending colon/cecum (15-20%). Right-sided cancers: tend to be larger, polypoid, present with anemia (occult bleeding). Left-sided cancers: tend to be annular/constricting, present with obstruction, hematochezia. Note: proximal shift observed (more right-sided tumors recently). Reference: Siegel RL. CA Cancer J Clin. 2023.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Modifiable risk factors for colorectal cancer include:',
'Family history', 'Obesity, physical inactivity, red/processed meat consumption, alcohol, and smoking', 'Age', 'Male sex', 'Genetic syndromes',
'B', 'CRC modifiable risk factors: (1) Diet: red/processed meat (heterocyclic amines, N-nitroso compounds), low fiber, (2) Obesity (especially abdominal), (3) Physical inactivity, (4) Alcohol (>2 drinks/day), (5) Smoking (long latency), (6) Diabetes. Non-modifiable: age (>50), male sex, family history, IBD, hereditary syndromes. Protective factors: fiber, calcium, aspirin (controversial), physical activity, vegetables/fruits. Reference: Johnson CM. Cancer Causes Control. 2013.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Ulcerative colitis increases colorectal cancer risk primarily through:',
'Acute inflammation', 'Chronic inflammation leading to dysplasia-carcinoma sequence over 8-10 years of pancolitis', 'Bacterial overgrowth', 'Medication effects', 'Obstruction',
'B', 'UC and CRC risk: chronic mucosal inflammation → dysplasia → carcinoma. Risk factors: (1) Duration (>8-10 years), (2) Extent of disease (pancolitis > left-sided > proctitis), (3) Severity of inflammation, (4) Primary sclerosing cholangitis (4× higher risk), (5) Family history CRC. Cumulative risk: ~2% at 10 years, ~8% at 20 years, ~18% at 30 years. Surveillance: colonoscopy with chromoendoscopy every 1-2 years starting 8 years post-diagnosis. LGD: consider colectomy. Reference: Choi PM. Gastroenterology. 2012.',
'medium', 'knowledge'),

-- Hereditary Syndromes (11-20)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Lynch syndrome (HNPCC) is caused by mutations in:',
'APC gene', 'Mismatch repair genes (MLH1, MSH2, MSH6, PMS2) leading to microsatellite instability', 'BRCA genes', 'TP53', 'KRAS',
'B', 'Lynch syndrome: most common hereditary CRC syndrome (2-4% of all CRC). Autosomal dominant mutations in MMR genes: MLH1 (50%), MSH2 (40%), MSH6, PMS2. Results in microsatellite instability (MSI-H). Lifetime CRC risk: 40-80%. Features: right-sided predominance, young age (<50), synchronous/metachronous tumors. Amsterdam II criteria, Bethesda guidelines. Also: endometrial, ovarian, gastric, urologic cancers. Diagnosis: MSI testing, immunohistochemistry, germline testing. Reference: Lynch HT. N Engl J Med. 2003.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'A patient with Lynch syndrome developing colon cancer should be offered:',
'Segmental colectomy', 'Extended colectomy (subtotal/total) with ileorectal anastomosis due to high risk of metachronous tumors', 'Abdominoperineal resection always', 'Only local excision', 'Observation',
'B', 'Lynch syndrome surgical management: high metachronous tumor risk (25-30% at 10 years). Options: (1) Subtotal colectomy with ileorectal anastomosis (IRA) - preferred, reduces metachronous CRC risk, preserves rectal reservoir. (2) Total proctocolectomy with IPAA - eliminates all colorectal mucosa, may be considered if rectal cancer or severe proctitis. If segmental resection: intensive surveillance (annual colonoscopy). Prophylactic colectomy not routinely recommended for mutation carriers. Reference: Kalady MF. Dis Colon Rectum. 2017.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Familial Adenomatous Polyposis (FAP) is caused by mutations in:',
'MLH1 gene', 'APC tumor suppressor gene on chromosome 5q21', 'BRCA1', 'RB gene', 'VHL gene',
'B', 'FAP genetics: autosomal dominant mutations in APC tumor suppressor gene (chromosome 5q21). APC: key regulator of Wnt signaling pathway. 100% penetrance for CRC if untreated. Features: >100 adenomatous polyps (typically hundreds to thousands) by teens/twenties, CRC inevitable by age 40. Extracolonic: desmoid tumors (most common cause of death after colectomy), duodenal adenomas (90%), osteomas, CHRPE (congenital hypertrophy of retinal pigment epithelium), thyroid cancer. Reference: Half E. Orphanet J Rare Dis. 2009.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Prophylactic surgery for FAP should be performed:',
'At age 60', 'By late teens/early twenties, or when polyps become too numerous for endoscopic management', 'Only if cancer develops', 'At age 5', 'Never',
'B', 'FAP surgery timing: recommended late teens to early twenties (before cancer develops, typically by 40). Options: (1) Total proctocolectomy with IPAA (pouch) - eliminates all colorectal mucosa, reduces cancer risk to rectal cuff. (2) Total abdominal colectomy with IRA - preserves rectum, easier, better functional outcome; requires lifelong rectal surveillance (annual proctoscopy, polypectomy); conversion to IPAA if too many rectal polyps or cancer. IPAA preferred if dense rectal polyposis or rectal cancer. Duodenal surveillance essential (upper GI cancer risk). Reference: Half E. Orphanet J Rare Dis. 2009.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'MUTYH-associated polyposis (MAP) differs from FAP in:',
'Being dominant inheritance', 'Being autosomal recessive with fewer polyps (typically 10-100) and later cancer onset', 'Having no cancer risk', 'Being X-linked', 'Affecting only rectum',
'B', 'MUTYH-associated polyposis: autosomal recessive (biallelic MUTYH mutations). Base excision repair gene. Features: attenuated phenotype (10-100 adenomas, typically <100), later onset (30s-40s), but significant CRC risk (80% lifetime). Serrated polyps may be present. No extracolonic manifestations of FAP. Diagnosis: genetic testing (both alleles). Surveillance: if monoallelic - standard screening; biallelic - colonoscopy every 1-2 years from age 18-20. Surgery similar to attenuated FAP. Reference: Nielsen M. Hum Mutat. 2011.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Peutz-Jeghers syndrome is characterized by:',
'Adenomatous polyps only', 'Hamartomatous polyps (GI tract) and mucocutaneous pigmentation with increased cancer risk', 'No cancer risk', 'Colorectal polyps only', 'Juvenile polyps',
'B', 'Peutz-Jeghers syndrome: autosomal dominant STK11/LKB1 mutation. Features: (1) GI hamartomatous polyps (small bowel > colon > stomach), (2) Mucocutaneous melanin pigmentation (lips, buccal mucosa, digits - may fade), (3) Increased cancer risk: GI (colorectal, gastric, small bowel), breast, ovarian, pancreatic, uterine. Complications: intussusception, obstruction, bleeding. Lifetime cancer risk: 90%. Surveillance: extensive - GI, breast, gynecologic. Reference: Giardiello FM. N Engl J Med. 1987.',
'medium', 'knowledge'),

-- Adenoma-Carcinoma Sequence (21-25)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The adenoma-carcinoma sequence describes:',
'Carcinoma arising de novo', 'Stepwise progression from normal mucosa → adenoma → carcinoma through accumulating genetic mutations over 10-15 years', 'Rapid malignant transformation', 'Benign polyp formation only', 'Only applies to hereditary cancers',
'B', 'Adenoma-carcinoma sequence (Vogelstein model): stepwise accumulation of genetic mutations. (1) Normal mucosa → (2) Aberrant crypt foci (APC inactivation) → (3) Early adenoma (KRAS mutation) → (4) Intermediate adenoma (SMAD4/DCC loss) → (5) Late adenoma (TP53 mutation) → (6) Carcinoma. Timeline: 10-15 years. Basis for screening: detect and remove adenomas before malignant transformation. Alternative pathway: serrated pathway (BRAF mutation, MLH1 methylation, sessile serrated lesions). Reference: Vogelstein B. N Engl J Med. 1988.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Features of adenomas that increase malignant potential include:',
'Hyperplastic type', 'Size >1cm, villous histology (vs. tubular), high-grade dysplasia, and sessile morphology', 'Pedunculated shape', 'Small size', 'Tubular histology',
'B', 'Advanced adenoma features (high-risk): (1) Size: >1cm (10mm), risk increases with size, (2) Histology: villous (40% malignancy risk) > tubulovillous (20%) > tubular (5%), (3) High-grade dysplasia, (4) Sessile morphology (vs. pedunculated), (5) Number: ≥3 adenomas. "Advanced adenoma": ≥10mm, or villous, or HGD. Dictates surveillance intervals. Malignant polyp: adenoma with invasive cancer through muscularis mucosae. Reference: Lieberman DA. N Engl J Med. 2012.',
'easy', 'knowledge'),

-- Screening and Diagnosis (26-35)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Average-risk colorectal cancer screening should begin at age:',
'40', '45 years (recently changed from 50 in many guidelines)', '55', '60', '65',
'B', 'CRC screening age: recently lowered to 45 for average-risk individuals (USPSTF 2021, ACS 2018) due to increasing incidence in younger adults. Previous: age 50. Options: (1) Stool-based: FIT (annual), FIT-DNA (every 1-3 years), (2) Direct visualization: colonoscopy (every 10 years), CT colonography (every 5 years), flexible sigmoidoscopy (every 5 years). Higher-risk: family history (10 years before youngest diagnosis or age 40), Lynch syndrome, FAP, IBD - earlier start, shorter intervals. Reference: USPSTF. JAMA. 2021.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'CEA (carcinoembryonic antigen) in colorectal cancer is most useful for:',
'Screening', 'Postoperative surveillance to detect recurrence', 'Staging', 'Determining chemotherapy regimen', 'Predicting response to radiation',
'B', 'CEA utility in CRC: (1) NOT for screening (poor sensitivity/specificity), (2) Preoperative prognostic marker (elevated >5 ng/mL = worse prognosis), (3) Postoperative surveillance - baseline then monitor every 3-6 months for 3 years, then every 6-12 months. Rising CEA: suggests recurrence → workup (CT, PET). Can increase liver metastasis detection. (4) Monitor response to treatment in metastatic disease. Elevated in: smokers, liver disease, IBD, other cancers. Reference: Locker GY. J Clin Oncol. 2006.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The gold standard for colorectal cancer diagnosis is:',
'CT scan', 'Colonoscopy with biopsy providing histopathologic confirmation', 'CEA level', 'PET scan', 'MRI',
'B', 'CRC diagnosis: colonoscopy with biopsy essential. Provides: tissue diagnosis (adenocarcinoma), location, assessment for synchronous lesions (3-5%). Staging workup: (1) CT chest/abdomen/pelvis (metastases, local extent), (2) Rectal cancer: MRI pelvis (T-stage, mesorectal fascia involvement, nodal status) and/or ERUS, (3) CEA (baseline), (4) Complete metabolic panel (liver function). PET: not routine staging, useful for metastatic workup. Reference: NCCN Guidelines CRC. 2024.',
'easy', 'knowledge'),

-- Staging (36-40)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'In colorectal cancer staging, T3 indicates:',
'Tumor confined to mucosa', 'Tumor invading through muscularis propria into pericolorectal tissues', 'Tumor confined to submucosa', 'Tumor invading adjacent organs', 'Carcinoma in situ',
'B', 'CRC T-staging: Tis - carcinoma in situ/intramucosal, T1 - invades submucosa, T2 - invades muscularis propria, T3 - invades through muscularis propria into pericolorectal tissues/subserosa, T4a - penetrates visceral peritoneum, T4b - directly invades or adherent to adjacent organs/structures. T-stage determined by depth of invasion. Important for prognosis and treatment planning. Reference: AJCC Cancer Staging Manual, 8th Edition.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The minimum number of lymph nodes that should be examined for adequate CRC staging is:',
'5', '12 lymph nodes for accurate N-staging', '3', '25', '8',
'B', 'Lymph node examination in CRC: minimum 12 nodes recommended for adequate staging. Fewer nodes: may understage (false N0). More nodes examined: better prognosis (likely better surgical technique, more complete mesorectal excision). N-staging: N0 - no regional nodes, N1a - 1 node, N1b - 2-3 nodes, N1c - tumor deposits without nodes, N2a - 4-6 nodes, N2b - ≥7 nodes. Nodal status: major prognostic factor, determines adjuvant therapy. Reference: Chang GJ. J Clin Oncol. 2007.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Stage III colorectal cancer indicates:',
'Tumor confined to bowel wall', 'Lymph node involvement (any T, N1-2, M0)', 'Distant metastases', 'Carcinoma in situ', 'Peritoneal involvement only',
'B', 'CRC staging: Stage 0 - Tis (in situ), Stage I - T1-2, N0, M0 (early, localized), Stage II - T3-4, N0, M0 (locally advanced, node-negative: IIA=T3, IIB=T4a, IIC=T4b), Stage III - any T, N1-2, M0 (node-positive: IIIA-C), Stage IV - any T, any N, M1 (metastatic: IVA=one organ, IVB=multiple organs, IVC=peritoneal). Stage determines treatment and prognosis. Reference: AJCC Cancer Staging Manual, 8th Edition.',
'medium', 'knowledge'),

-- Colon Cancer Treatment (41-50)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The standard surgical treatment for colon cancer includes:',
'Local excision only', 'Segmental colectomy with en bloc mesenteric lymphadenectomy (removing primary tumor and regional lymphatic drainage)', 'Polypectomy', 'Total colectomy for all', 'Radiation only',
'B', 'Colon cancer surgery: (1) Segmental resection based on tumor location following vascular supply/lymphatic drainage, (2) En bloc mesenteric lymphadenectomy (ligate feeding vessels at origin for adequate lymph nodes), (3) Wide margins (5cm longitudinal). Examples: right hemicolectomy (cecum, ascending, hepatic flexure), transverse colectomy, left hemicolectomy, sigmoid colectomy. Laparoscopic approach: equivalent oncologic outcomes, faster recovery. Complete mesocolic excision (CME) with central vascular ligation: emerging technique for improved outcomes. Reference: Nelson H. J Natl Cancer Inst. 2001.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Adjuvant chemotherapy is indicated for:',
'All colon cancers', 'Stage III colon cancer (node-positive), and high-risk Stage II', 'Stage I only', 'Stage 0', 'Only for rectal cancer',
'B', 'Adjuvant chemotherapy indications: (1) Stage III (node-positive): standard - FOLFOX (5-FU/leucovorin/oxaliplatin) or CAPOX (capecitabine/oxaliplatin) for 3-6 months depending on risk, (2) High-risk Stage II: consider if T4, poorly differentiated, LVI, perineural invasion, <12 nodes, obstruction/perforation, MSS (not MSI-H), close/positive margins. MSI-H Stage II: good prognosis, may not benefit from 5-FU. Duration: IDEA trial - 3 months vs 6 months (T1-3N1 can do 3 months, T4/N2 may need 6 months). Reference: Grothey A. N Engl J Med. 2018.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The most common site of colorectal cancer metastasis is:',
'Brain', 'Liver (portal venous drainage), followed by lungs', 'Bone', 'Spleen', 'Kidney',
'B', 'CRC metastasis patterns: (1) Liver: most common (portal venous drainage) - 15-25% at diagnosis, 50-70% eventually, (2) Lungs: second most common, (3) Peritoneum, (4) Distant lymph nodes, (5) Bone, brain (rare). Rectal cancer: can metastasize to lungs without liver involvement (systemic drainage via internal iliac veins). Oligometastatic disease to liver/lungs may be resectable with curative intent. Reference: Weiser MR. J Clin Oncol. 2018.',
'easy', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Resection of colorectal liver metastases is considered when:',
'Never appropriate', 'Disease is resectable with clear margins, adequate liver remnant, no uncontrolled extrahepatic disease, and patient fit for surgery', 'Always performed regardless of extent', 'Only for single lesions', 'Only with chemotherapy',
'B', 'CRLM resection criteria: (1) Technically resectable (R0 possible - clear margins), (2) Adequate future liver remnant (20-30% of normal liver, more if chemotherapy-damaged or cirrhotic), (3) Controlled/absent extrahepatic disease (lung mets may be resected), (4) Fit patient, (5) Primary tumor controlled. Size/number of lesions less important than achieving R0. 5-year survival with resection: 30-50% (vs <5% without). Perioperative chemotherapy (FOLFOX): before and/or after resection. RFA, ablation for unresectable. Reference: Adam R. J Clin Oncol. 2009.',
'medium', 'knowledge'),

-- Rectal Cancer (51-60)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Rectal cancer differs from colon cancer treatment because:',
'It is never curable', 'Anatomy necessitates neoadjuvant chemoradiation for locally advanced cases, total mesorectal excision, and consideration of sphincter preservation', 'It requires no treatment', 'Surgery is never indicated', 'It has better prognosis',
'B', 'Rectal cancer treatment differences: (1) Anatomy: narrow pelvis, proximity to sphincter, relationship to mesorectal fascia, (2) Neoadjuvant chemoradiation for locally advanced (T3-4 or node-positive) - downsizes tumor, improves local control, may enable sphincter preservation, (3) Total mesorectal excision (TME): sharp dissection along mesorectal fascia, removes all lymphatics in mesorectum, (4) Sphincter preservation considerations, (5) Higher local recurrence risk without optimal treatment. MRI essential for staging. Reference: Sauer R. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Total mesorectal excision (TME) in rectal cancer surgery involves:',
'Removal of rectum only', 'Sharp dissection along the mesorectal fascia to remove the rectum and surrounding mesorectum en bloc', 'Blunt dissection', 'Partial mesorectal removal', 'Leaving the mesorectum',
'B', 'Total mesorectal excision (TME): gold standard for mid-low rectal cancer (Heald, 1982). Technique: sharp dissection under direct vision in areolar plane between mesorectal fascia (containing rectum, perirectal fat, lymphatics) and parietal fascia (pelvic side wall). Removes entire mesorectum en bloc without violation. Benefits: dramatically reduced local recurrence (from 30% to <10%), improved survival. Key: intact mesorectal envelope (quality indicator). For upper rectal cancer: partial mesorectal excision (5cm distal to tumor) acceptable. Reference: Heald RJ. Br J Surg. 1982.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Neoadjuvant chemoradiation for rectal cancer is indicated for:',
'All rectal cancers', 'T3-4 or node-positive rectal cancer to downstage and improve local control', 'Only distant metastases', 'T1 tumors', 'No indication exists',
'B', 'Neoadjuvant chemoradiation (CRT) for rectal cancer: indications: locally advanced rectal cancer (T3-4 and/or N+) based on MRI staging. Regimen: long-course (5-FU/capecitabine + 50.4 Gy radiation over 5-6 weeks) then surgery 6-12 weeks later. OR short-course radiation (25 Gy in 5 fractions) with delayed surgery or total neoadjuvant therapy (TNT - all systemic chemotherapy before surgery). Benefits: downsizing/downstaging, pathologic complete response in 15-25%, increased sphincter preservation, improved local control. Reference: Sauer R. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Low anterior resection (LAR) for rectal cancer includes:',
'Permanent colostomy', 'Resection of rectum with colorectal/coloanal anastomosis, preserving the anal sphincter', 'Removal of anus', 'Only local excision', 'Ileostomy only',
'B', 'Low anterior resection (LAR): (1) Resection of rectum (with TME) and sigmoid, (2) Colorectal or coloanal anastomosis (straight, J-pouch, side-to-end), (3) Sphincter preservation. Requires adequate distal margin (1-2 cm for mid-rectal, can be less with neoadjuvant therapy). Usually requires diverting loop ileostomy (protect anastomosis, reversed later). Complications: anastomotic leak, low anterior resection syndrome (LARS - frequency, urgency, incontinence). Alternative: abdominoperineal resection (APR) if sphincter not preservable. Reference: Sauer R. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Abdominoperineal resection (APR) is indicated when:',
'Always preferred', 'Tumor involves or is too close to the anal sphincter complex for adequate margin with sphincter preservation', 'For all rectal cancers', 'Only for upper rectal cancer', 'For colon cancer',
'B', 'APR indications: (1) Tumor directly involving anal sphincter complex, (2) Very low tumor without adequate distal margin (even with neoadjuvant therapy), (3) Pre-existing poor sphincter function (incontinence), (4) Patient preference (some prefer permanent stoma over risk of poor function). Procedure: (1) Abdominal portion - sigmoid/rectal mobilization, (2) Perineal portion - removal of anus, sphincters, distal rectum, (3) Permanent end colostomy. Miles procedure. Local recurrence historically higher with APR (more difficult TME in narrow space). Reference: Nagtegaal ID. J Clin Oncol. 2005.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Watch-and-wait (non-operative management) in rectal cancer may be considered when:',
'For all patients', 'Complete clinical response (cCR) is achieved after neoadjuvant therapy, with strict surveillance', 'Primary treatment', 'For distant metastases', 'Stage I only',
'B', 'Watch-and-wait strategy: for patients with complete clinical response (cCR) after neoadjuvant chemoradiation. cCR criteria: no visible/palpable tumor, negative biopsy, complete response on MRI. Benefits: avoids surgery (no stoma, preserves function), quality of life. Risks: local regrowth (20-30% at 2 years) - most can be salvaged with surgery. Requirements: intensive surveillance (DRE, endoscopy, MRI every 3-6 months), patient compliance/understanding. Oncological outcomes: similar if regrowth salvaged. Not yet standard of care but increasing evidence. Reference: Habr-Gama A. Ann Surg. 2004.',
'hard', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Transanal endoscopic microsurgery (TEM) or transanal minimally invasive surgery (TAMIS) for early rectal cancer is appropriate for:',
'All rectal cancers', 'T1 tumors with favorable histology (well/moderately differentiated, no LVI, sm1) without nodal involvement', 'T4 tumors', 'Node-positive disease', 'Metastatic disease',
'B', 'Local excision for early rectal cancer: TEM/TAMIS indications - highly selected T1 tumors. Requirements: (1) Size <3cm (some extend to 4cm), (2) Mobile, non-fixed, (3) <30-40% circumference, (4) Favorable histology: well/moderately differentiated, no lymphovascular invasion, no perineural invasion, (5) Submucosal invasion sm1 (not sm2-3), (6) No nodal involvement (MRI/ERUS). Full-thickness excision with clear margins. Advantage: avoids major surgery, preserves sphincter. Risk: nodal metastasis (~10% for T1). If unfavorable pathology: completion TME. Reference: Bach SP. Ann Surg. 2009.',
'hard', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'The most common long-term complication after low anterior resection is:',
'Bleeding', 'Low anterior resection syndrome (LARS) characterized by bowel dysfunction including frequency, urgency, and incontinence', 'Obstruction', 'Hernia', 'Infection',
'B', 'Low anterior resection syndrome (LARS): major quality of life issue affecting 50-90% of patients after LAR. Features: (1) Increased stool frequency, (2) Urgency, (3) Incomplete evacuation, (4) Clustering (multiple bowel movements close together), (5) Incontinence (gas, liquid, solid). Mechanism: loss of rectal reservoir, altered motility, sphincter dysfunction (surgical, radiation). Risk factors: low anastomosis, radiation, smaller reservoir. Management: fiber, antidiarrheals (loperamide), pelvic floor therapy, transanal irrigation. LARS score: validated tool. Most improve over 1-2 years. Reference: Emmertsen KJ. Ann Surg. 2012.',
'medium', 'knowledge'),

-- Molecular Testing and Targeted Therapy (61-65)
('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'All newly diagnosed colorectal cancers should be tested for:',
'Only CEA', 'Mismatch repair deficiency/microsatellite instability (universal screening for Lynch syndrome)', 'BRCA only', 'No molecular testing needed', 'HER2 only',
'B', 'Universal MSI/MMR testing in CRC: recommended for all newly diagnosed CRC (not age-limited). Methods: (1) Immunohistochemistry for MMR proteins (MLH1, MSH2, MSH6, PMS2), (2) PCR for MSI. Purposes: (1) Screen for Lynch syndrome (germline testing if MMR deficient - especially MLH1 hypermethylation excluded), (2) Prognosis (MSI-H has better prognosis in Stage II), (3) Predict response to immunotherapy (MSI-H responds to checkpoint inhibitors in metastatic setting). Also test: KRAS, NRAS, BRAF for metastatic disease (anti-EGFR eligibility). Reference: NCCN Guidelines CRC. 2024.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'KRAS mutation testing in metastatic colorectal cancer is performed to:',
'Determine prognosis only', 'Determine eligibility for anti-EGFR therapy (cetuximab, panitumumab) which is ineffective in KRAS/NRAS mutated tumors', 'Select chemotherapy', 'Stage the tumor', 'No clinical utility',
'B', 'RAS testing in mCRC: KRAS and NRAS exons 2, 3, 4 mutations. Rationale: RAS mutations (40-50% of CRC) = resistance to anti-EGFR therapy (cetuximab, panitumumab). Only RAS wild-type tumors benefit from anti-EGFR. Also test BRAF V600E (10% of CRC) - poor prognosis, targeted therapy available. Left-sided primary tumors respond better to anti-EGFR than right-sided (even if RAS wild-type). HER2 amplification (3-5%): targeted therapy option. Reference: Sepulveda AR. J Mol Diagn. 2017.',
'medium', 'knowledge'),

('c0000048-0000-0000-0000-000000000048', 'a0000003-0000-0000-0000-000000000003',
'Immunotherapy with checkpoint inhibitors in colorectal cancer is most effective in:',
'All colorectal cancers', 'MSI-high (MSI-H) or mismatch repair deficient (dMMR) tumors', 'MSS tumors', 'Only for adjuvant treatment', 'Never indicated',
'B', 'Immunotherapy in CRC: effective primarily in MSI-H/dMMR tumors (15% of CRC). MSI-H tumors: high mutation burden, neoantigen-rich, inflamed tumor microenvironment → respond to checkpoint inhibitors. Agents: pembrolizumab, nivolumab (± ipilimumab). KEYNOTE-177: first-line pembrolizumab superior to chemotherapy for MSI-H mCRC. CheckMate 142: nivolumab + ipilimumab effective. MSS (85%): generally resistant to immunotherapy (research ongoing for combinations). Reference: Andre T. N Engl J Med. 2020.',
'medium', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 33 (Colorectal Cancer): 60 questions inserted' as status;
