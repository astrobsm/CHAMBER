-- ============================================================================
-- SURGERY 3 CME ARTICLE 101: Surgical Oncology Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000167-0000-0000-0000-000000000167', 'a0000003-0000-0000-0000-000000000003', 'Surgical Oncology Principles', 'Fundamental principles of cancer surgery and multimodal therapy')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000401-0000-0000-0000-000000000101',
    'c0000167-0000-0000-0000-000000000167',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Oncology: Fundamental Principles for the Surgeon',
    'Core Concepts in Cancer Surgery',
    'This article covers cancer staging (TNM system), principles of oncologic resection including margin assessment, sentinel lymph node biopsy, multimodal therapy, surgical palliation, cytoreductive surgery with HIPEC, and tumor board decision-making.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000401-0001-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 1,
'The TNM staging system classifies cancer based on:',
'Only tumor size', 'T (primary tumor extent), N (regional lymph node involvement), and M (presence of distant metastasis)', 'Only lymph node status', 'Only metastasis presence',
'B', 'TNM STAGING SYSTEM (AJCC/UICC): standardized cancer staging. T = PRIMARY TUMOR: size and local invasion (T1-T4 depending on depth/extent, T0 = no tumor, Tis = in situ). N = REGIONAL LYMPH NODES: presence and extent of nodal metastases (N0 = no nodes, N1-N3 = increasing nodal burden). M = DISTANT METASTASIS: presence of spread beyond regional nodes (M0 = no distant metastasis, M1 = distant metastasis). Combined into STAGE (I-IV): Stage I = early/localized, Stage IV = metastatic. Staging guides prognosis and treatment decisions. Clinical vs pathologic staging (c vs p prefix).', 'easy'),

('e0000401-0002-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 2,
'A negative surgical margin in oncologic resection means:',
'Any margin is acceptable', 'No cancer cells are present at the inked edge of the resected specimen, indicating complete excision with adequate clearance', 'Tumor is at the edge', 'Margin status is irrelevant',
'B', 'SURGICAL MARGINS: critical for local control. NEGATIVE (R0): no cancer at the inked (cut) edge, adequate CLEARANCE. CLOSE margin: cancer near edge (often <1-2mm, depends on site). POSITIVE (R1): microscopic tumor at the margin. GROSS RESIDUAL (R2): visible tumor left behind. IMPORTANCE: positive margins increase LOCAL RECURRENCE, may require re-excision or adjuvant radiation. Margin requirements vary by cancer type (e.g., 1 cm for melanoma <2mm, 5 cm for colon cancer, 1-2 cm for rectal cancer). Frozen section during surgery can assess margins in real-time.', 'easy'),

('e0000401-0003-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 3,
'Sentinel lymph node biopsy (SLNB) is used to:',
'Remove all lymph nodes', 'Identify and biopsy the first lymph node(s) receiving drainage from the primary tumor to assess nodal status while avoiding complete lymphadenectomy if sentinel nodes are negative', 'Replace imaging', 'Treat advanced cancer only',
'B', 'SENTINEL LYMPH NODE BIOPSY (SLNB): minimally invasive nodal staging. PRINCIPLE: first node(s) receiving lymphatic drainage from tumor (SENTINEL) predicts status of entire nodal basin. TECHNIQUE: inject radiotracer (Tc-99m) and/or blue dye at primary site, identify sentinel node with gamma probe or blue color, remove and examine. If NEGATIVE: no further nodal surgery (avoids morbidity of complete dissection). If POSITIVE: complete lymph node dissection (though some selective for breast/melanoma). INDICATIONS: clinically node-negative melanoma, breast cancer. False negative rate 5-10%; not for clinically positive nodes.', 'easy'),

('e0000401-0004-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 4,
'Neoadjuvant therapy in cancer treatment refers to:',
'Treatment after surgery only', 'Systemic or radiation therapy given before definitive surgery to shrink tumor, assess response, and potentially improve outcomes', 'Avoiding surgery entirely', 'Emergency treatment only',
'B', 'NEOADJUVANT THERAPY: treatment BEFORE definitive surgery. GOALS: tumor DOWNSIZING/DOWNSTAGING (may allow less extensive surgery, e.g., breast conservation), treat MICROMETASTASES early, assess tumor RESPONSE to therapy (prognostic), improve resectability (e.g., borderline resectable pancreatic cancer). TYPES: chemotherapy, chemoradiation, targeted therapy, immunotherapy. EXAMPLES: rectal cancer (chemoradiation), breast cancer (chemotherapy for large tumors), esophageal cancer, locally advanced pancreatic cancer. Pathologic response (especially pathologic complete response, pCR) predicts outcomes. Compare to adjuvant (after surgery) therapy.', 'medium'),

('e0000401-0005-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 5,
'Cytoreductive surgery (CRS) with HIPEC is used for:',
'All cancers equally', 'Peritoneal surface malignancies, involving removal of all visible tumor (peritonectomy) followed by heated intraperitoneal chemotherapy to treat microscopic residual disease', 'Early-stage cancers only', 'Distant metastases only',
'B', 'CYTOREDUCTIVE SURGERY (CRS) WITH HIPEC: treatment for PERITONEAL SURFACE MALIGNANCIES. CRS: removal of all VISIBLE tumor through peritonectomy procedures (stripping peritoneum, omentectomy, organ resection). HIPEC: HEATED INTRAPERITONEAL CHEMOTHERAPY (41-43°C) immediately after cytoreduction to kill MICROSCOPIC residual disease; hyperthermia enhances chemotherapy penetration/cytotoxicity. INDICATIONS: pseudomyxoma peritonei (PMP), peritoneal mesothelioma, colorectal peritoneal metastases, ovarian cancer. Goal: COMPLETE cytoreduction (CC-0/CC-1). Patient selection crucial: good performance status, limited disease burden (Peritoneal Cancer Index). Major morbidity: 30-50%.', 'hard'),

('e0000401-0006-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 6,
'The role of the tumor board (multidisciplinary team) is to:',
'Delay treatment decisions', 'Bring together specialists (surgery, medical oncology, radiation oncology, radiology, pathology) to discuss complex cases and develop coordinated treatment plans', 'Replace surgeon decision-making', 'Only discuss palliative cases',
'B', 'TUMOR BOARD (MULTIDISCIPLINARY TEAM - MDT): essential for complex cancer care. MEMBERS: surgical oncologist, MEDICAL ONCOLOGIST, RADIATION ONCOLOGIST, RADIOLOGIST, PATHOLOGIST, specialized nurses, others as needed. FUNCTION: review cases collectively, discuss imaging/pathology, determine optimal TREATMENT PLAN considering all modalities. BENEFITS: standardized evidence-based care, expertise from all specialties, coordination of multimodal therapy, improved outcomes (shown in studies). Especially important for: complex/rare cancers, decisions about neoadjuvant therapy, borderline resectable disease, treatment of recurrence. Quality indicator in cancer care.', 'easy'),

('e0000401-0007-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 7,
'Palliative surgery in cancer aims to:',
'Cure advanced disease', 'Relieve symptoms and improve quality of life in patients with incurable cancer, such as bypassing obstruction or controlling bleeding', 'Replace chemotherapy', 'Is never indicated',
'B', 'PALLIATIVE SURGERY: surgery to RELIEVE SYMPTOMS in incurable cancer. NOT intended to cure but to improve QUALITY OF LIFE. INDICATIONS: (1) OBSTRUCTION: bypass (gastrojejunostomy, colostomy) or stent placement; (2) BLEEDING: resection or hemostatic procedures; (3) PERFORATION: source control; (4) PAIN: debulking if tumor causes pain; (5) FUNGATING MASS: hygiene, symptom control. CONSIDERATIONS: patient goals/prognosis, surgical risk vs benefit, expected recovery time vs remaining life, alternatives (endoscopic stent, IR procedures). Decision-making shared with patient and family. Palliative care team involvement important.', 'medium'),

('e0000401-0008-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 8,
'En bloc resection in cancer surgery means:',
'Piecemeal tumor removal', 'Removal of the tumor together with its surrounding envelope and involved adjacent structures in a single specimen without violating tumor planes', 'Multiple separate specimens', 'Debulking only',
'B', 'EN BLOC RESECTION: removal of tumor with surrounding tissues in ONE piece (single specimen). PRINCIPLE: do not violate TUMOR PLANES or enter tumor; remove with "envelope" of normal tissue. If tumor INVADES adjacent structures, resect those structures WITH the tumor (e.g., colon cancer invading abdominal wall - resect wall with colon en bloc). RATIONALE: reduces local recurrence, prevents tumor spillage, ensures complete excision. No-touch technique: minimal handling, ligate vessels early to prevent hematogenous spread. Piecemeal removal (morcellation) in malignancy is oncologically unsound (increases recurrence/spread).', 'medium'),

('e0000401-0009-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 9,
'Adjuvant therapy is indicated when:',
'It replaces surgery', 'There is high risk of recurrence after complete surgical resection, to treat occult micrometastatic disease and reduce recurrence', 'Only for metastatic cancer', 'Never after R0 resection',
'B', 'ADJUVANT THERAPY: treatment AFTER complete (R0) surgical resection to reduce RECURRENCE. TARGETS: occult MICROMETASTATIC disease not visible/resected. INDICATIONS based on: stage (e.g., stage III colon cancer), adverse pathologic features (positive nodes, poor differentiation, lymphovascular invasion), molecular markers. TYPES: chemotherapy (most common), radiation (local control), targeted therapy, endocrine therapy (breast cancer). EXAMPLES: FOLFOX for stage III colon, chemotherapy + trastuzumab for HER2+ breast, radiation for head/neck cancer. Duration typically 3-6 months. Risk-benefit analysis needed (treatment toxicity vs recurrence risk reduction).', 'medium'),

('e0000401-0010-0000-0000-000000000101', 'd0000401-0000-0000-0000-000000000101', 10,
'Factors determining resectability of solid tumors include:',
'Only tumor size', 'Tumor involvement of vital structures, absence of distant metastases, patient fitness for surgery, and ability to achieve complete resection with negative margins', 'Only patient age', 'Symptom severity alone',
'B', 'RESECTABILITY FACTORS: (1) TUMOR factors: involvement of vital structures (major vessels, nerves), local extent, ability to achieve NEGATIVE MARGINS (R0), absence of distant METASTASES (in most solid tumors, some exceptions like colorectal liver metastases). (2) PATIENT factors: performance status, cardiopulmonary reserve, comorbidities, nutritional status, SURGICAL FITNESS. (3) TECHNICAL factors: surgeon expertise, institutional capability. Borderline resectable: neoadjuvant therapy may convert to resectable. Locally advanced unresectable: treat with chemoradiation, reassess. Goals: complete resection, acceptable morbidity/mortality, meaningful survival benefit.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 101 (Surgical Oncology Principles) with 10 self-assessment questions inserted' as status;
