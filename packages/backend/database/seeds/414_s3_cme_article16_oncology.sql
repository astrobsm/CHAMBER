-- ============================================================================
-- SURGERY 3 CME ARTICLE 16: Surgical Oncology Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000082-0000-0000-0000-000000000082', 'a0000003-0000-0000-0000-000000000003', 'Surgical Oncology', 'Principles of cancer surgery and tumor biology')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000316-0000-0000-0000-000000000016',
    'c0000082-0000-0000-0000-000000000082',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Oncology: Principles of Cancer Surgery',
    'Tumor Biology, Staging, Margins and Multimodal Therapy',
    'This article covers fundamental principles of surgical oncology including tumor biology and spread, cancer staging systems, surgical margins, sentinel lymph node biopsy, neoadjuvant and adjuvant therapy, palliative surgery, and principles of oncologic emergencies.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000316-0001-0000-0000-000000000001', 'd0000316-0000-0000-0000-000000000016', 1,
'In oncologic surgery, R0 resection means:',
'Residual microscopic disease', 'Complete resection with no residual tumor (negative microscopic margins)', 'Gross residual tumor', 'Radiation therapy completed', NULL,
'B', 'R classification: R0 = no residual tumor (complete resection with negative microscopic margins) - best prognosis; R1 = microscopic residual disease (positive margins); R2 = macroscopic/gross residual tumor. Achieving R0 resection is the primary goal of curative cancer surgery. Margin status is one of the most important prognostic factors in solid tumor surgery.', 'easy'),

('e0000316-0002-0000-0000-000000000002', 'd0000316-0000-0000-0000-000000000016', 2,
'The TNM staging system evaluates:',
'Treatment response, nutritional status, mental status', 'Tumor size/extent (T), lymph Node involvement (N), distant Metastasis (M)', 'Time of diagnosis, number of symptoms, medications', 'Tumor markers only', NULL,
'B', 'TNM staging (AJCC/UICC): T = primary tumor size and local invasion (T1-4); N = regional lymph node involvement (N0-3); M = distant metastasis (M0-1). Combined into stage groups (I-IV) for prognosis and treatment planning. Staging may be clinical (c), pathological (p), after neoadjuvant therapy (y), or at recurrence (r). Staging is tumor-specific (criteria differ by cancer type).', 'easy'),

('e0000316-0003-0000-0000-000000000003', 'd0000316-0000-0000-0000-000000000016', 3,
'Sentinel lymph node biopsy is based on the principle that:',
'Cancer spreads randomly to lymph nodes', 'Cancer first spreads to one or few sentinel nodes before other nodes in the basin', 'All lymph nodes should be removed in every cancer', 'Lymph nodes are never involved in cancer spread', NULL,
'B', 'Sentinel lymph node biopsy identifies the first node(s) receiving lymphatic drainage from a tumor. If negative, further nodes are likely negative, avoiding complete lymphadenectomy and its morbidity (lymphedema). Used in breast cancer, melanoma, and some other cancers. Identified using blue dye, radiotracer, or both. False negative rates are low with proper technique.', 'medium'),

('e0000316-0004-0000-0000-000000000004', 'd0000316-0000-0000-0000-000000000016', 4,
'Neoadjuvant therapy refers to:',
'Treatment given after surgery', 'Treatment given before surgery to shrink tumor or treat micrometastases', 'Supportive care only', 'Treatment given instead of surgery', NULL,
'B', 'Neoadjuvant therapy (chemotherapy, radiation, or both) is given before surgery. Goals: downstage/downsize tumor (improve resectability, enable organ preservation), treat micrometastases early, assess tumor response (in vivo sensitivity testing). Used in locally advanced breast cancer, rectal cancer, esophageal cancer, osteosarcoma, and others. Adjuvant therapy is given after surgery to reduce recurrence.', 'easy'),

('e0000316-0005-0000-0000-000000000005', 'd0000316-0000-0000-0000-000000000016', 5,
'Tumor markers are most useful for:',
'Screening the general population', 'Monitoring response to treatment and detecting recurrence in known cancer patients', 'Definitive diagnosis of cancer', 'Replacing tissue biopsy', NULL,
'B', 'Tumor markers are most useful for monitoring treatment response and detecting recurrence in diagnosed patients. Most lack sensitivity/specificity for population screening (exceptions: AFP in high-risk hepatitis B, PSA with shared decision-making). They do not replace tissue diagnosis. Examples: CEA (colorectal), CA 19-9 (pancreatic), CA 125 (ovarian), AFP (HCC, germ cell), PSA (prostate).', 'medium'),

('e0000316-0006-0000-0000-000000000006', 'd0000316-0000-0000-0000-000000000016', 6,
'Palliative surgery in cancer aims to:',
'Cure the cancer completely', 'Relieve symptoms and improve quality of life when cure is not possible', 'Only collect tissue for diagnosis', 'Extend survival without considering quality of life', NULL,
'B', 'Palliative surgery relieves symptoms and improves quality of life in incurable cancer. Examples: bypass surgery for obstruction, tumor debulking for pain/bleeding, colostomy for obstruction, biliary stenting/bypass for jaundice, stabilization of pathologic fractures. Must balance benefit against surgical morbidity and limited life expectancy. Multidisciplinary discussion essential.', 'easy'),

('e0000316-0007-0000-0000-000000000007', 'd0000316-0000-0000-0000-000000000016', 7,
'Spinal cord compression from metastatic cancer is best managed with:',
'Observation only', 'High-dose corticosteroids, urgent imaging (MRI), and urgent radiation or surgical decompression', 'Outpatient physiotherapy', 'Analgesics only', NULL,
'B', 'Malignant spinal cord compression is an oncologic emergency. Signs: back pain, weakness, sensory level, bladder/bowel dysfunction. Treatment: immediate high-dose dexamethasone, urgent MRI whole spine, urgent consultation for radiation (most common) or surgery (unstable spine, unknown histology, single level, radioresistant tumor, neurological deterioration during radiation). Earlier treatment = better neurological outcome.', 'medium'),

('e0000316-0008-0000-0000-000000000008', 'd0000316-0000-0000-0000-000000000016', 8,
'Skip metastases refer to:',
'Metastases to non-contiguous lymph node stations bypassing nearby nodes', 'Cancer spreading only locally', 'Tumor cells that skip chemotherapy', 'Metastases that resolve spontaneously', NULL,
'A', 'Skip metastases are spread to non-contiguous lymph node stations, bypassing closer nodes (eg, N2 nodes positive with N1 nodes negative). Occurs in lung cancer, esophageal cancer, and others. This phenomenon makes sentinel node biopsy less reliable in some tumor types and requires adequate lymph node dissection for accurate staging. Understanding lymphatic drainage patterns is crucial.', 'hard'),

('e0000316-0009-0000-0000-000000000009', 'd0000316-0000-0000-0000-000000000016', 9,
'The concept of complete cytoreduction in ovarian cancer surgery means:',
'Removing only the primary tumor', 'Removing all visible tumor to achieve no gross residual disease', 'Avoiding surgery completely', 'Using only chemotherapy', NULL,
'B', 'Cytoreductive surgery in ovarian cancer aims to remove all visible tumor (complete cytoreduction = no residual disease; optimal cytoreduction = residual ≤1cm). Survival correlates with amount of residual disease. May require extensive procedures: total abdominal hysterectomy, bilateral salpingo-oophorectomy, omentectomy, peritoneal stripping, bowel resection, diaphragm stripping. Combined with platinum-based chemotherapy.', 'medium'),

('e0000316-0010-0000-0000-000000000010', 'd0000316-0000-0000-0000-000000000016', 10,
'Which of the following is an oncologic emergency requiring urgent intervention?',
'Stage I colon cancer', 'Superior vena cava syndrome from lung cancer', 'Well-controlled bone metastases', 'Chronic cancer-related fatigue', NULL,
'B', 'Oncologic emergencies requiring urgent treatment: SVC syndrome (airway/venous congestion - steroids, radiation, stenting), spinal cord compression, hypercalcemia of malignancy (fluids, bisphosphonates, calcitonin), tumor lysis syndrome (hydration, rasburicase), neutropenic fever (immediate broad-spectrum antibiotics), cardiac tamponade (pericardiocentesis), obstructing tumors causing complete obstruction.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 16 (Surgical Oncology) with 10 self-assessment questions inserted' as status;
