-- ============================================================================
-- SURGERY 3 CME ARTICLE 61: Surgical Oncology Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000127-0000-0000-0000-000000000127', 'a0000003-0000-0000-0000-000000000003', 'Surgical Oncology Principles', 'Core oncological surgery concepts')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000361-0000-0000-0000-000000000061',
    'c0000127-0000-0000-0000-000000000127',
    'a0000003-0000-0000-0000-000000000003',
    'Principles of Surgical Oncology',
    'Fundamentals of Cancer Surgery',
    'This article covers fundamental surgical oncology principles including tumor staging (TNM), margin status, lymphadenectomy, multimodal therapy, palliative surgery, and the role of surgery in the continuum of cancer care.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000361-0001-0000-0000-000000000001', 'd0000361-0000-0000-0000-000000000061', 1,
'TNM staging system evaluates:',
'Only tumor size', 'Tumor extent (T), nodal involvement (N), and distant metastasis (M)', 'Only histological grade', 'Only symptoms', NULL,
'B', 'TNM staging: universal cancer staging system (AJCC/UICC). T = Tumor: size and local extent (Tis=in situ, T1-T4 increasing size/invasion). N = Nodes: regional lymph node involvement (N0=none, N1-N3 increasing nodal burden). M = Metastasis: distant spread (M0=none, M1=present). Combined to give overall Stage (I-IV). Purpose: prognostication, treatment planning, standardized communication, research. Clinical staging (cTNM): based on clinical/imaging evaluation. Pathological staging (pTNM): based on surgical specimen. Staging guides treatment and predicts outcome.', 'easy'),

('e0000361-0002-0000-0000-000000000002', 'd0000361-0000-0000-0000-000000000061', 2,
'R0 resection means:',
'Residual tumor visible', 'Microscopically negative margins with no residual tumor', 'Incomplete resection', 'Palliative surgery only', NULL,
'B', 'Surgical margin status: R0 = no residual tumor (microscopically negative margins) - goal of curative resection. R1 = microscopic residual tumor at margin (positive margin). R2 = macroscopic residual tumor (visible tumor left behind). R0 resection is the goal of curative-intent cancer surgery. R1 and R2 associated with higher local recurrence and worse prognosis. Margin adequacy varies by tumor type (e.g., breast: "no ink on tumor"; sarcoma: wide margins needed). Re-excision may be needed for positive margins.', 'easy'),

('e0000361-0003-0000-0000-000000000003', 'd0000361-0000-0000-0000-000000000061', 3,
'Neoadjuvant therapy refers to:',
'Therapy after surgery', 'Therapy before surgery to shrink tumor, improve resectability, or treat micrometastases', 'Therapy instead of surgery', 'Only hormonal therapy', NULL,
'B', 'Neoadjuvant therapy: treatment given BEFORE definitive surgery. Goals: (1) Downstage/shrink tumor for better resectability; (2) Convert unresectable to resectable; (3) Enable organ preservation (e.g., sphincter-sparing in rectal cancer); (4) Treat micrometastatic disease early; (5) Assess tumor response (pathologic response is prognostic). Examples: neoadjuvant chemoradiation for rectal cancer, neoadjuvant chemotherapy for breast cancer. Adjuvant = after surgery. Neoadjuvant increasingly used in GI, breast, other cancers.', 'easy'),

('e0000361-0004-0000-0000-000000000004', 'd0000361-0000-0000-0000-000000000061', 4,
'Sentinel lymph node biopsy:',
'Removes all regional lymph nodes', 'Identifies and examines the first draining lymph node(s) to determine nodal status with less morbidity than complete lymphadenectomy', 'Is obsolete', 'Is only used in melanoma', NULL,
'B', 'Sentinel lymph node biopsy (SLNB): technique to identify first draining lymph node(s) from primary tumor. Principle: if sentinel node negative, remaining nodes are likely negative, avoiding complete lymphadenectomy and its morbidity. Technique: inject blue dye and/or radiotracer at primary tumor site, identify sentinel node(s) intraoperatively. Applications: melanoma, breast cancer, and expanding to other cancers. Benefits: accurate staging, reduced lymphedema, less morbidity. If positive: may proceed to complete lymphadenectomy (or not, depending on disease - e.g., ACOSOG Z0011 in breast).', 'easy'),

('e0000361-0005-0000-0000-000000000005', 'd0000361-0000-0000-0000-000000000061', 5,
'Curative vs palliative surgery in cancer:',
'Are identical', 'Curative aims for complete tumor removal and potential cure; palliative aims to relieve symptoms without curative intent', 'Palliative surgery is never indicated', 'Curative surgery is only for Stage I', NULL,
'B', 'Curative surgery: goal is complete tumor removal (R0 resection) with potential for cure. Requires: localized disease amenable to complete resection, patient fit for major surgery. Palliative surgery: goal is symptom relief, quality of life improvement, not cure. Indications: obstruction (bypass, stoma), bleeding (resection, embolization), pain, fungating tumor. Examples: gastrojejunostomy for gastric outlet obstruction, colostomy for obstructing colorectal cancer. Even in metastatic disease, palliative surgery can significantly improve quality of life.', 'easy'),

('e0000361-0006-0000-0000-000000000006', 'd0000361-0000-0000-0000-000000000061', 6,
'Multidisciplinary tumor board:',
'Is optional and rarely helpful', 'Is essential for cancer care, bringing together surgeons, oncologists, radiologists, pathologists, and others to plan optimal treatment', 'Only involves surgeons', 'Is only for rare cancers', NULL,
'B', 'Multidisciplinary tumor board (MDT): cornerstone of modern cancer care. Participants: surgeons, medical oncologists, radiation oncologists, radiologists, pathologists, specialized nurses, others as needed. Purpose: (1) Review imaging and pathology; (2) Confirm diagnosis and staging; (3) Discuss treatment options; (4) Develop individualized treatment plan; (5) Ensure guideline-concordant care. Benefits: improved staging accuracy, appropriate treatment sequencing, reduced errors, better outcomes. All cancer patients should be discussed at MDT, especially complex cases.', 'easy'),

('e0000361-0007-0000-0000-000000000007', 'd0000361-0000-0000-0000-000000000061', 7,
'Surgical debulking or cytoreduction:',
'Is appropriate for all cancers', 'Is the strategy of removing maximum tumor volume even if complete resection not possible, used in specific cancers like ovarian cancer', 'Has no role in modern oncology', 'Is only palliative', NULL,
'B', 'Cytoreductive surgery (CRS): removing maximum tumor bulk. Used when complete resection not possible but reducing tumor volume improves outcomes. Classic example: advanced ovarian cancer - optimal debulking (<1cm residual disease) associated with improved survival. Combined with chemotherapy. Also used: HIPEC for peritoneal carcinomatosis (CRS + heated intraperitoneal chemotherapy). Not appropriate for all cancers - in most solid tumors, incomplete resection offers no benefit over chemotherapy alone. Patient selection and surgical expertise critical.', 'medium'),

('e0000361-0008-0000-0000-000000000008', 'd0000361-0000-0000-0000-000000000061', 8,
'En bloc resection in cancer surgery means:',
'Removing tumor in pieces', 'Removing the tumor with surrounding tissue and involved structures in one piece without violating tumor', 'Minimal resection', 'Only removing the visible mass', NULL,
'B', 'En bloc resection: removal of tumor with surrounding tissue in one continuous specimen, without cutting into or violating the tumor (prevents tumor spillage, incomplete excision). Includes: primary tumor + margin of normal tissue + involved adjacent structures if needed. Important for local control, prevents implantation of tumor cells. Examples: Whipple procedure (pancreatic head, duodenum, bile duct en bloc), radical nephrectomy with adrenalectomy for large renal cancer. "No-touch" technique minimizes tumor manipulation.', 'easy'),

('e0000361-0009-0000-0000-000000000009', 'd0000361-0000-0000-0000-000000000061', 9,
'Surgical resection of limited liver metastases from colorectal cancer:',
'Is never curative', 'Can be curative in selected patients, with 5-year survival rates of 40-50%', 'Should never be performed', 'Is only palliative', NULL,
'B', 'Liver metastasectomy for colorectal cancer: oligometastatic disease (limited metastases) to liver can be resected with curative intent. Criteria: complete resection possible (R0), adequate liver remnant, controlled primary, fit patient. 5-year survival: 40-50% (vs <5% without surgery). Approaches: resection, ablation (RFA, MWA), or combination. Systemic chemotherapy often given (neoadjuvant or adjuvant). Also applies to lung metastasectomy in selected patients. Paradigm shift: metastatic CRC not always incurable if oligometastatic and resectable.', 'medium'),

('e0000361-0010-0000-0000-000000000010', 'd0000361-0000-0000-0000-000000000061', 10,
'Pathological complete response (pCR) after neoadjuvant therapy:',
'Has no significance', 'Indicates no residual invasive tumor in the surgical specimen and is associated with improved prognosis', 'Is a poor prognostic sign', 'Means surgery is not needed', NULL,
'B', 'Pathological complete response (pCR): no residual invasive tumor in surgical specimen after neoadjuvant therapy (ypT0N0). Significance: (1) Demonstrates tumor sensitivity to therapy; (2) Associated with improved disease-free and overall survival; (3) Prognostic marker. Rates vary by cancer type and biology (e.g., higher in HER2+ and triple-negative breast cancer). pCR is goal of neoadjuvant therapy but not always achieved. In some cancers (rectal), near-complete response may allow "watch and wait" approach avoiding surgery (controversial, selected cases only).', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 61 (Surgical Oncology Principles) with 10 self-assessment questions inserted' as status;
