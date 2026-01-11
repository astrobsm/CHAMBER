-- ============================================================================
-- SURGERY 3 CME ARTICLE 35: Skin and Soft Tissue Tumors
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000101-0000-0000-0000-000000000101', 'a0000003-0000-0000-0000-000000000003', 'Skin and Soft Tissue Tumors', 'Surgical management of skin cancers and sarcomas')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000335-0000-0000-0000-000000000035',
    'c0000101-0000-0000-0000-000000000101',
    'a0000003-0000-0000-0000-000000000003',
    'Skin and Soft Tissue Tumors: Surgical Management',
    'Melanoma, Non-melanoma Skin Cancer, and Soft Tissue Sarcomas',
    'This article covers the surgical management of skin malignancies including melanoma, basal cell carcinoma, squamous cell carcinoma, and soft tissue sarcomas. Topics include margins of excision, staging, sentinel lymph node biopsy, and adjuvant therapy indications.',
    'Department of Surgery, UNTH',
    2.5,
    24,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000335-0001-0000-0000-000000000001', 'd0000335-0000-0000-0000-000000000035', 1,
'The recommended surgical margin for melanoma with Breslow thickness of 1.5mm is:',
'0.5cm', '1cm', '2cm', '5cm', NULL,
'C', 'Melanoma surgical margins based on Breslow thickness: In situ - 0.5-1cm; <1mm - 1cm; 1-2mm - 1-2cm (most guidelines recommend 2cm for >1mm); >2mm - 2cm. Wide local excision down to but not including fascia (unless involved). Wider margins (>2cm) have not shown survival benefit. SLNB recommended for melanomas >0.8mm or <0.8mm with ulceration or high mitotic rate. Breslow thickness is most important prognostic factor for localized melanoma.', 'medium'),

('e0000335-0002-0000-0000-000000000002', 'd0000335-0000-0000-0000-000000000035', 2,
'The ABCDE criteria for melanoma diagnosis include:',
'Age, Border, Color, Diagnosis, Extent', 'Asymmetry, Border irregularity, Color variation, Diameter greater than 6mm, Evolution', 'All benign features', 'Arterial supply, Blood flow, Circumference, Density, Elasticity', NULL,
'B', 'ABCDE melanoma warning signs: Asymmetry - one half unlike the other; Border - irregular, scalloped, or poorly defined; Color - varied from one area to another (shades of tan, brown, black, sometimes white, red, blue); Diameter - usually greater than 6mm (size of pencil eraser), though melanomas can be smaller; Evolution - change in size, shape, color, or new symptom (itching, bleeding). Any changing mole warrants evaluation. Ugly duckling sign: mole that looks different from patients other moles.', 'easy'),

('e0000335-0003-0000-0000-000000000003', 'd0000335-0000-0000-0000-000000000035', 3,
'The most common skin malignancy is:',
'Melanoma', 'Basal cell carcinoma (BCC)', 'Squamous cell carcinoma', 'Merkel cell carcinoma', NULL,
'B', 'Basal cell carcinoma: most common skin cancer (~80% of non-melanoma skin cancers), locally invasive, rarely metastasizes (<0.5%). Risk factors: UV exposure, fair skin, prior radiation, immunosuppression. Types: nodular (most common - pearly papule with telangiectasia), superficial, morpheaform (sclerosing - worst prognosis, infiltrative). Treatment: excision (4mm margin for primary), Mohs micrographic surgery (cosmetically sensitive areas, recurrent, high-risk), curettage and electrodesiccation, topical therapy for superficial.', 'easy'),

('e0000335-0004-0000-0000-000000000004', 'd0000335-0000-0000-0000-000000000035', 4,
'Mohs micrographic surgery is indicated for:',
'All skin cancers', 'High-risk non-melanoma skin cancers in cosmetically/functionally sensitive areas', 'Melanoma routinely', 'Only large tumors', NULL,
'B', 'Mohs micrographic surgery: specialized technique with intraoperative margin examination of 100% of peripheral and deep margins. Advantages: highest cure rates (99% for primary BCC), maximum tissue conservation. Indications: (1) High-risk locations - face (periorbital, perinasal, periauricular, lips), digits, genitalia; (2) Recurrent tumors; (3) Aggressive histologic subtypes (morpheaform BCC, poorly differentiated SCC); (4) Large tumors; (5) Perineural involvement. Not standard for melanoma due to difficulty identifying margins on frozen section.', 'medium'),

('e0000335-0005-0000-0000-000000000005', 'd0000335-0000-0000-0000-000000000035', 5,
'Soft tissue sarcomas most commonly arise in:',
'Head and neck', 'Extremities (especially lower extremity)', 'Retroperitoneum', 'Trunk', NULL,
'B', 'Soft tissue sarcoma location: extremities 60% (lower > upper), trunk 20%, retroperitoneum 15%, head/neck 5%. Retroperitoneal sarcomas often large at diagnosis (>10cm), poorer prognosis. Limb-sparing surgery with negative margins is standard (amputation rarely needed). Margins: 1-2cm or fascial plane. Liposarcoma and leiomyosarcoma most common retroperitoneal types. Grading (French system - differentiation, mitoses, necrosis) most important prognostic factor. Staging includes imaging for pulmonary metastases.', 'easy'),

('e0000335-0006-0000-0000-000000000006', 'd0000335-0000-0000-0000-000000000035', 6,
'In soft tissue sarcoma surgery, the goal is:',
'Debulking regardless of margins', 'Wide local excision with negative margins, avoiding amputation when possible', 'Amputation as first-line treatment', 'Observation only', NULL,
'B', 'Soft tissue sarcoma surgery: wide local excision with at least 1-2cm margins or fascial plane. Limb-sparing surgery with adjuvant radiation achieves comparable outcomes to amputation with better function. Amputation reserved for: inability to achieve negative margins, unresectable vascular involvement, severe functional compromise. Unplanned excision ("whoops" procedure) - if sarcoma excised as presumed benign mass, requires re-excision (residual tumor found in 30-40%). Neoadjuvant therapy for large/borderline resectable tumors.', 'medium'),

('e0000335-0007-0000-0000-000000000007', 'd0000335-0000-0000-0000-000000000035', 7,
'Cutaneous squamous cell carcinoma (SCC) risk factors and high-risk features include:',
'Only sun exposure', 'Chronic wounds, immunosuppression, perineural invasion, size greater than 2cm, and poorly differentiated histology', 'Only genetic factors', 'Young age', NULL,
'B', 'SCC risk factors: UV exposure, chronic wounds/scars (Marjolin ulcer), immunosuppression (organ transplant - 65-250x risk), HPV, arsenic, radiation. High-risk features increasing metastasis/recurrence: size >2cm, depth >4mm, perineural/lymphovascular invasion, poorly differentiated, location (ear, lip, scar), recurrence, immunosuppression. Treatment: excision with 4-6mm margins (or Mohs), consider adjuvant radiation for high-risk features. Nodal metastasis rate: 2-5% overall, higher with risk factors.', 'medium'),

('e0000335-0008-0000-0000-000000000008', 'd0000335-0000-0000-0000-000000000035', 8,
'The most important prognostic factor for primary cutaneous melanoma is:',
'Location', 'Breslow thickness (depth of invasion)', 'Patient age', 'Color of the lesion', NULL,
'B', 'Breslow thickness: measured from granular layer of epidermis to deepest invasive melanoma cell. Most important prognostic factor for localized melanoma. Staging: T1 <1mm, T2 1-2mm, T3 2-4mm, T4 >4mm. Ulceration and mitotic rate also prognostic. Clark level (anatomic depth - epidermis to subcutaneous) less important, though still used for thin melanomas. Other adverse features: lymphovascular invasion, regression, satellites, positive nodes. 10-year survival: <1mm ~92%, >4mm ~50%.', 'easy'),

('e0000335-0009-0000-0000-000000000009', 'd0000335-0000-0000-0000-000000000035', 9,
'Merkel cell carcinoma is:',
'A benign lesion', 'An aggressive neuroendocrine skin cancer with high recurrence and metastasis rates', 'The same as BCC', 'A type of melanoma', NULL,
'B', 'Merkel cell carcinoma: rare, aggressive neuroendocrine skin tumor. Associated with Merkel cell polyomavirus (80%) and UV exposure. Clinical: rapidly growing, painless, violaceous nodule, commonly head/neck of elderly. Immunocompromised at higher risk. High local recurrence, regional and distant metastasis rates. Staging: SLNB recommended. Treatment: wide excision (1-2cm margins), adjuvant radiation often recommended, immunotherapy (anti-PD-1/PD-L1) for advanced disease. 5-year survival: localized 55%, regional 35%, distant 15%.', 'hard'),

('e0000335-0010-0000-0000-000000000010', 'd0000335-0000-0000-0000-000000000035', 10,
'GIST (gastrointestinal stromal tumor) treatment differs from other sarcomas because:',
'It is always benign', 'It responds to imatinib (tyrosine kinase inhibitor) targeting KIT/PDGFRA mutations', 'It never requires surgery', 'It is best treated with chemotherapy', NULL,
'B', 'GIST: most common mesenchymal tumor of GI tract, arises from interstitial cells of Cajal. Driven by activating mutations in KIT (80-85%) or PDGFRA (5-10%). Imatinib (Gleevec) revolutionized treatment - first targeted therapy for solid tumor. Surgery: complete resection with negative margins (lymphadenectomy not needed). Adjuvant imatinib for high-risk GIST (size, mitotic rate, location, rupture). Neoadjuvant imatinib for initially unresectable. Unlike other sarcomas, conventional chemotherapy ineffective.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 35 (Skin and Soft Tissue Tumors) with 10 self-assessment questions inserted' as status;
