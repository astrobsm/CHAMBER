-- ============================================================================
-- SURGERY 3 CME ARTICLE 76: Skin and Melanoma Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000142-0000-0000-0000-000000000142', 'a0000003-0000-0000-0000-000000000003', 'Skin and Melanoma Surgery', 'Skin cancers and melanoma management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000376-0000-0000-0000-000000000076',
    'c0000142-0000-0000-0000-000000000142',
    'a0000003-0000-0000-0000-000000000003',
    'Skin Cancer Surgery: BCC, SCC, and Melanoma',
    'Diagnosis and Surgical Management',
    'This article covers basal cell carcinoma, squamous cell carcinoma, melanoma (ABCDE criteria, Breslow depth, staging), surgical margins, sentinel lymph node biopsy for melanoma, and adjuvant therapy for advanced melanoma.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000376-0001-0000-0000-000000000001', 'd0000376-0000-0000-0000-000000000076', 1,
'The ABCDE criteria for melanoma evaluation include all EXCEPT:',
'Asymmetry', 'Border irregularity', 'Color variation', 'Diameter greater than 6mm', 'Elasticity', NULL,
'E', 'ABCDE criteria for melanoma: A = ASYMMETRY (one half does not match the other); B = BORDER irregularity (ragged, notched, blurred edges); C = COLOR variation (multiple shades of brown, black, red, white, blue); D = DIAMETER >6 mm (larger than pencil eraser); E = EVOLUTION (changing in size, shape, color, or new symptoms). E is NOT "Elasticity." Additional concerning features: ulceration, bleeding, itching. Any changing mole warrants evaluation.', 'easy'),

('e0000376-0002-0000-0000-000000000002', 'd0000376-0000-0000-0000-000000000076', 2,
'Breslow depth in melanoma:',
'Measures horizontal spread', 'Measures tumor thickness from granular layer to deepest tumor cells, the most important prognostic factor', 'Is less important than Clark level', 'Does not affect staging', NULL,
'B', 'Breslow depth: THICKNESS of melanoma measured from granular layer of epidermis to deepest invasive tumor cell (in mm). MOST IMPORTANT prognostic factor for localized melanoma. Staging: T1 (<=1.0 mm), T2 (1.01-2.0 mm), T3 (2.01-4.0 mm), T4 (>4.0 mm). Thicker tumors = higher risk of metastasis, worse survival. Determines surgical margins and indication for SLNB. Clark level (anatomic level of invasion) is now secondary to Breslow depth.', 'easy'),

('e0000376-0003-0000-0000-000000000003', 'd0000376-0000-0000-0000-000000000076', 3,
'Recommended surgical margins for melanoma with Breslow depth greater than 2 mm are:',
'1 mm', '1 cm', '2 cm', '5 cm', NULL,
'C', 'Melanoma surgical margins based on Breslow depth: Melanoma in situ: 5 mm to 1 cm. <=1.0 mm thickness: 1 cm. 1.01-2.0 mm: 1-2 cm. >2.0 mm: 2 CM. These margins are radial (from tumor edge). Margins based on randomized trials showing equivalent outcomes with narrower margins (2 cm as good as 4-5 cm). Deep margin: down to but not including deep fascia. Functional and cosmetic considerations may modify approach in certain locations (face, digits).', 'easy'),

('e0000376-0004-0000-0000-000000000004', 'd0000376-0000-0000-0000-000000000076', 4,
'Sentinel lymph node biopsy in melanoma is indicated for:',
'All melanomas', 'Melanomas with Breslow depth greater than 0.8 mm (or thinner with high-risk features), clinically node-negative', 'Only if lymph nodes are clinically positive', 'Melanoma in situ', NULL,
'B', 'Sentinel lymph node biopsy (SLNB) in melanoma: STAGING procedure for regional lymph nodes. Indications: Breslow depth >0.8 mm (or >1.0 mm in some guidelines), OR thinner with high-risk features (ulceration, mitoses >1/mm2, lymphovascular invasion). MUST be clinically NODE-NEGATIVE (if nodes palpable, do biopsy/FNA). SLNB provides prognostic information (most important factor for survival in stages I-II). Therapeutic benefit debated. NOT indicated for melanoma in situ (no metastatic potential). Completion lymph node dissection after positive SLNB now selective (MSLT-II, DeCOG).', 'easy'),

('e0000376-0005-0000-0000-000000000005', 'd0000376-0000-0000-0000-000000000076', 5,
'Basal cell carcinoma:',
'Is the most aggressive skin cancer', 'Is the most common skin cancer, locally invasive but rarely metastasizes', 'Commonly metastasizes to lymph nodes', 'Requires wide 2 cm margins', NULL,
'B', 'Basal cell carcinoma (BCC): MOST COMMON skin cancer and most common human malignancy. UV exposure is main risk factor. Features: pearly papule with telangiectasias, rolled borders, central ulceration (rodent ulcer). Behavior: LOCALLY INVASIVE but RARELY METASTASIZES (<0.1%). Subtypes: nodular (most common), superficial, morpheaform/infiltrative (aggressive local behavior). Treatment: surgical excision with 3-5 mm margins (Mohs for high-risk areas - face), curettage/electrodesiccation for superficial, topical therapies, radiation.', 'easy'),

('e0000376-0006-0000-0000-000000000006', 'd0000376-0000-0000-0000-000000000076', 6,
'Squamous cell carcinoma of the skin compared to BCC:',
'Never metastasizes', 'Has higher metastatic potential especially for high-risk features such as depth, perineural invasion, or immunosuppression', 'Is more common than BCC', 'Does not require treatment', NULL,
'B', 'Squamous cell carcinoma (SCC): second most common skin cancer. UV exposure, immunosuppression (organ transplant patients - 65x risk), chronic wounds, HPV are risk factors. Behavior: MORE metastatic potential than BCC (2-5% overall; higher with high-risk features). HIGH-RISK SCC features: >2 cm size, depth >2 mm or Clark IV+, perineural invasion, immunosuppression, location (ear, lip), poorly differentiated, recurrence after treatment. Treatment: surgical excision with 4-6 mm margins (wider for high-risk), consider SLNB for very high-risk, radiation as adjuvant or primary.', 'easy'),

('e0000376-0007-0000-0000-000000000007', 'd0000376-0000-0000-0000-000000000076', 7,
'Mohs micrographic surgery is preferred for:',
'All melanomas', 'Non-melanoma skin cancers in cosmetically sensitive areas or with aggressive histology, providing complete margin assessment', 'Large melanomas on the trunk', 'Any pigmented lesion', NULL,
'B', 'Mohs micrographic surgery: specialized technique for NON-MELANOMA skin cancer (BCC, SCC). Features: serial excision with immediate complete margin assessment (100% peripheral and deep margins examined), tissue-sparing, highest cure rates (99% for primary BCC). Indications: cosmetically/functionally sensitive areas (face, especially periocular, nasal, auricular, perioral), recurrent tumors, aggressive histology (morpheaform BCC, perineural invasion), large tumors, ill-defined borders. NOT standard for melanoma (different biology, different margin approach).', 'easy'),

('e0000376-0008-0000-0000-000000000008', 'd0000376-0000-0000-0000-000000000076', 8,
'Ulceration in melanoma:',
'Has no prognostic significance', 'Upstages the tumor and indicates worse prognosis', 'Is protective', 'Only occurs in metastatic disease', NULL,
'B', 'Ulceration in melanoma: ADVERSE PROGNOSTIC FEATURE. Presence of ulceration UPSTAGES tumor (moves to next T category): T1a (no ulceration) to T1b (with ulceration), etc. Associated with worse survival at any given tumor thickness. Included in AJCC staging. Mechanism unclear - may reflect aggressive tumor biology, rapid growth outstripping blood supply. Assessed on histopathology. Other adverse features: high mitotic rate, lymphovascular invasion, satellitosis. Ulcerated melanomas may benefit more from adjuvant therapy.', 'easy'),

('e0000376-0009-0000-0000-000000000009', 'd0000376-0000-0000-0000-000000000076', 9,
'Adjuvant therapy for high-risk melanoma includes:',
'No effective adjuvant therapies exist', 'Immune checkpoint inhibitors (anti-PD-1) and BRAF/MEK inhibitors for BRAF-mutant melanoma', 'Chemotherapy with FOLFOX', 'Hormonal therapy', NULL,
'B', 'Adjuvant therapy for high-risk melanoma (stage III, some high-risk stage II): IMMUNE CHECKPOINT INHIBITORS: anti-PD-1 (pembrolizumab, nivolumab) significantly reduce recurrence risk. BRAF-TARGETED THERAPY: dabrafenib + trametinib for BRAF V600-mutant melanoma. These have revolutionized melanoma treatment. BRAF mutation testing essential. High-risk stage IIB/IIC: anti-PD-1 now approved. Cytotoxic chemotherapy: dacarbazine historically used but limited efficacy; checkpoint inhibitors far superior. Interferon: historical use, now largely replaced.', 'medium'),

('e0000376-0010-0000-0000-000000000010', 'd0000376-0000-0000-0000-000000000076', 10,
'The most common melanoma subtype is:',
'Nodular melanoma', 'Superficial spreading melanoma', 'Lentigo maligna melanoma', 'Acral lentiginous melanoma', NULL,
'B', 'Melanoma subtypes: SUPERFICIAL SPREADING melanoma: MOST COMMON (70%), horizontal (radial) growth phase before vertical invasion, irregular borders, color variation. NODULAR melanoma: 15-20%, aggressive, vertical growth from onset, raised, often ulcerated, darker, presents thicker. LENTIGO MALIGNA melanoma: 5-10%, sun-damaged skin of elderly (face), slow-growing. ACRAL LENTIGINOUS melanoma: rare in Caucasians but MOST COMMON type in dark-skinned individuals (African, Asian), palms, soles, subungual. Desmoplastic melanoma: rare, head/neck, neurotropic.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 76 (Skin and Melanoma Surgery) with 10 self-assessment questions inserted' as status;
