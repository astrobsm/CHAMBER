-- ============================================================================
-- SURGERY 3 CME ARTICLE 57: Breast Disease Complete Guide
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000123-0000-0000-0000-000000000123', 'a0000003-0000-0000-0000-000000000003', 'Breast Disease Complete Guide', 'Comprehensive breast pathology management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000357-0000-0000-0000-000000000057',
    'c0000123-0000-0000-0000-000000000123',
    'a0000003-0000-0000-0000-000000000003',
    'Breast Disease: Benign to Malignant',
    'Complete Clinical Guide to Breast Pathology',
    'This article covers the spectrum of breast disease including benign conditions (fibroadenoma, cysts, mastitis), breast cancer (invasive ductal, lobular, inflammatory), staging, surgical options (BCS vs mastectomy), sentinel node biopsy, and principles of adjuvant therapy.',
    'Department of Surgery, UNTH',
    3.0,
    30,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000357-0001-0000-0000-000000000001', 'd0000357-0000-0000-0000-000000000057', 1,
'Triple assessment of a breast lump includes:',
'Only mammography', 'Clinical examination, imaging (mammography/ultrasound), and tissue sampling (FNAC or core biopsy)', 'Only biopsy', 'Blood tests only', NULL,
'B', 'Triple assessment: standard approach to breast lump evaluation. Components: (1) Clinical examination: history (age, risk factors, nipple discharge, pain) and physical (mass characteristics, skin/nipple changes, lymph nodes); (2) Imaging: mammography (primary in >40 years), ultrasound (primary in <40, also for cysts), MRI (selected cases); (3) Tissue diagnosis: FNAC (cytology) or core needle biopsy (histology - preferred as provides architecture, receptor status). All three must be concordant. If discordant, further investigation needed.', 'easy'),

('e0000357-0002-0000-0000-000000000002', 'd0000357-0000-0000-0000-000000000057', 2,
'Fibroadenoma:',
'Is malignant', 'Is the most common benign breast tumor in young women, presenting as a well-defined, mobile, rubbery mass ("breast mouse")', 'Always requires excision', 'Is fixed to overlying skin', NULL,
'B', 'Fibroadenoma: most common benign breast tumor. Peak age: 20-35 years (can occur any age). Presentation: well-circumscribed, firm, rubbery, mobile, painless mass ("breast mouse" - moves freely). Ultrasound: well-defined, homogeneous, oval. Management: (1) Small, typical on imaging: observation with follow-up; (2) Growing, large (>3cm), or patient preference: excision; (3) Core biopsy if atypical features. Variants: giant fibroadenoma (>5cm), phyllodes tumor (need to distinguish - recurrence risk). Low malignancy risk, but complex fibroadenoma has slightly elevated risk.', 'easy'),

('e0000357-0003-0000-0000-000000000003', 'd0000357-0000-0000-0000-000000000057', 3,
'Breast cancer screening with mammography is generally recommended to begin at age:',
'25 years', '40-50 years (varies by guidelines), with earlier screening for high-risk individuals', '60 years', 'Only when symptomatic', NULL,
'B', 'Breast cancer screening recommendations (vary by organization): Most guidelines recommend mammography starting age 40-50 years (annual or biennial). USPSTF: biennial age 50-74 (individualized 40-49). ACS: annual starting age 45, can start 40. HIGH RISK (BRCA carriers, strong family history, prior chest radiation): earlier screening, MRI in addition to mammography. Screening aims: detect cancer early, reduce mortality. Harms: false positives, overdiagnosis. Shared decision-making recommended.', 'easy'),

('e0000357-0004-0000-0000-000000000004', 'd0000357-0000-0000-0000-000000000057', 4,
'The most common type of invasive breast cancer is:',
'Invasive lobular carcinoma', 'Invasive ductal carcinoma (70-80% of breast cancers)', 'Inflammatory breast cancer', 'Medullary carcinoma', NULL,
'B', 'Invasive breast cancer types: INVASIVE DUCTAL CARCINOMA (IDC): 70-80%, most common, arises from ductal epithelium, "not otherwise specified" (NOS). INVASIVE LOBULAR CARCINOMA (ILC): 10-15%, arises from lobular epithelium, often multifocal/bilateral, may be occult on mammography (insidious growth pattern), loss of E-cadherin characteristic. SPECIAL TYPES: medullary (better prognosis), mucinous/colloid (better prognosis), tubular (excellent prognosis), inflammatory (aggressive, clinically defined by skin changes). Treatment principles similar across types with some variations.', 'easy'),

('e0000357-0005-0000-0000-000000000005', 'd0000357-0000-0000-0000-000000000057', 5,
'Sentinel lymph node biopsy (SLNB) in breast cancer:',
'Has replaced all axillary surgery', 'Is used to stage the axilla, avoiding complete axillary dissection if sentinel nodes are negative', 'Has high false-negative rate', 'Is never used', NULL,
'B', 'Sentinel lymph node biopsy: identifies first draining lymph node(s) from primary tumor. If sentinel node(s) negative: axilla negative in >95% cases, no further axillary surgery needed (avoid ALND morbidity). If positive: traditionally complete ALND; however, ACOSOG Z0011 changed practice - selected patients with 1-2 positive SLN undergoing BCS + whole breast radiation can omit ALND. Technique: injection of blue dye and/or radiotracer, identify hot/blue nodes. SLNB standard of care for clinically node-negative invasive breast cancer.', 'medium'),

('e0000357-0006-0000-0000-000000000006', 'd0000357-0000-0000-0000-000000000057', 6,
'Breast-conserving surgery (lumpectomy) with radiation has equivalent survival to mastectomy when:',
'Never true', 'Margins are clear and adjuvant radiation is given for early-stage breast cancer', 'Only for DCIS', 'Only in elderly', NULL,
'B', 'Breast-conserving surgery (BCS) + radiation = equivalent survival to mastectomy for early-stage breast cancer (NSABP B-06, multiple trials). Requirements for BCS: (1) Tumor size amenable to adequate cosmetic result; (2) Ability to achieve negative margins (no ink on tumor); (3) Candidate for adjuvant radiation. Contraindications: multicentric disease, diffuse microcalcifications, prior breast radiation, pregnancy, inability to receive radiation, large tumor-to-breast ratio. Patient preference always considered. Mastectomy may be needed for local control but does not improve survival in appropriate BCS candidates.', 'medium'),

('e0000357-0007-0000-0000-000000000007', 'd0000357-0000-0000-0000-000000000057', 7,
'Triple-negative breast cancer:',
'Has excellent prognosis', 'Is ER/PR/HER2 negative, more aggressive, and lacks targeted therapy options (treated with chemotherapy)', 'Is treated with tamoxifen', 'Is treated with trastuzumab', NULL,
'B', 'Triple-negative breast cancer (TNBC): lacks expression of ER, PR, and HER2. Represents 15-20% of breast cancers. Characteristics: more aggressive, higher grade, higher proliferation, peaks in younger women, more common in BRCA1 carriers and African American women. Prognosis: poorer than hormone receptor-positive cancers. Treatment: chemotherapy (neoadjuvant often used), no targeted therapy available (no tamoxifen, no trastuzumab). Emerging options: PARP inhibitors for BRCA-associated TNBC, immunotherapy (pembrolizumab + chemo for PD-L1 positive).', 'medium'),

('e0000357-0008-0000-0000-000000000008', 'd0000357-0000-0000-0000-000000000057', 8,
'Inflammatory breast cancer:',
'Is a slow-growing tumor', 'Is aggressive, presents with skin erythema and peau d oraange without a dominant mass, and is treated with neoadjuvant chemotherapy before surgery', 'Is always benign', 'Requires only observation', NULL,
'B', 'Inflammatory breast cancer (IBC): aggressive, accounts for 1-5% of breast cancers. Clinical presentation: rapid onset of breast erythema (>1/3 of breast), edema, peau d orange (skin thickening), warmth - may mimic infection. Often no discrete mass. Pathophysiology: dermal lymphatic invasion by tumor. Diagnosis: skin punch biopsy showing dermal lymphatic tumor emboli. Staging: minimum T4d, usually Stage IIIB/IIIC or IV. Treatment: MULTIMODAL - neoadjuvant chemotherapy (must respond before surgery) → mastectomy → radiation. BCS contraindicated. Prognosis poorer than non-inflammatory cancer.', 'medium'),

('e0000357-0009-0000-0000-000000000009', 'd0000357-0000-0000-0000-000000000057', 9,
'Tamoxifen is indicated for:',
'All breast cancers regardless of receptor status', 'ER-positive breast cancer as adjuvant therapy, reducing recurrence and mortality', 'Triple-negative breast cancer only', 'HER2-positive cancers only', NULL,
'B', 'Tamoxifen: selective estrogen receptor modulator (SERM). Indication: ER-positive breast cancer. Mechanism: blocks estrogen at breast tissue (anti-estrogen effect). Benefits: reduces recurrence by 40-50%, reduces mortality, reduces contralateral breast cancer. Duration: 5-10 years (extended therapy beneficial in high-risk). Side effects: hot flashes, VTE (DVT/PE), endometrial cancer (small risk), cataracts. Premenopausal women: tamoxifen preferred. Postmenopausal: aromatase inhibitors (anastrozole, letrozole) may be preferred (superior efficacy, different side effect profile).', 'easy'),

('e0000357-0010-0000-0000-000000000010', 'd0000357-0000-0000-0000-000000000057', 10,
'Trastuzumab (Herceptin) is used for:',
'ER-positive cancers', 'HER2-positive breast cancers, significantly improving outcomes in this subset', 'All breast cancers', 'Prevention only', NULL,
'B', 'Trastuzumab (Herceptin): monoclonal antibody targeting HER2 receptor. Indication: HER2-positive breast cancer (HER2 overexpression or amplification on IHC/FISH). HER2-positive represents ~15-20% of breast cancers, historically aggressive. Trastuzumab: dramatically improves DFS and OS in HER2-positive disease. Given: adjuvant (with chemotherapy for 1 year), neoadjuvant, metastatic setting. Side effects: cardiotoxicity (LV dysfunction - monitor LVEF), infusion reactions. Other HER2-targeted agents: pertuzumab, T-DM1, lapatinib, neratinib. Always test HER2 status in invasive breast cancer.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 57 (Breast Disease Complete Guide) with 10 self-assessment questions inserted' as status;
