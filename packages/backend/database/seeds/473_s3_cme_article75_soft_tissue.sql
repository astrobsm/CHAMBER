-- ============================================================================
-- SURGERY 3 CME ARTICLE 75: Soft Tissue Tumors
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000141-0000-0000-0000-000000000141', 'a0000003-0000-0000-0000-000000000003', 'Soft Tissue Tumors', 'Soft tissue sarcomas and benign tumors')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000375-0000-0000-0000-000000000075',
    'c0000141-0000-0000-0000-000000000141',
    'a0000003-0000-0000-0000-000000000003',
    'Soft Tissue Tumors: From Lipoma to Sarcoma',
    'Diagnosis and Management',
    'This article covers common benign soft tissue tumors (lipoma, dermatofibroma), soft tissue sarcoma presentation, imaging, biopsy principles, staging, surgical management (wide local excision), limb salvage, and adjuvant therapy.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000375-0001-0000-0000-000000000001', 'd0000375-0000-0000-0000-000000000075', 1,
'Clinical features concerning for soft tissue sarcoma include:',
'Small, superficial, soft, mobile mass', 'Deep location, size greater than 5 cm, firm, rapid growth, and fixation to adjacent structures', 'Painful masses only', 'All lipomas are sarcomas', NULL,
'B', 'Red flags for soft tissue sarcoma: SIZE >5 cm, DEEP to fascia (intramuscular, retroperitoneal), FIRM consistency, RAPID GROWTH, FIXED to deep structures or bone, RECURRENCE after previous excision. Pain is variable (not reliable discriminator). Contrast with benign: small, superficial, soft, mobile. Any concerning mass requires imaging and often biopsy before excision. The "rule": treat any deep, growing, or >5 cm soft tissue mass as potential sarcoma until proven otherwise.', 'easy'),

('e0000375-0002-0000-0000-000000000002', 'd0000375-0000-0000-0000-000000000075', 2,
'The preferred imaging modality for soft tissue mass evaluation is:',
'Plain X-ray only', 'MRI with contrast providing excellent soft tissue characterization', 'Ultrasound only', 'PET scan as first-line', NULL,
'B', 'Soft tissue mass imaging: MRI is modality of choice. Advantages: excellent soft tissue contrast, demonstrates tumor extent, relationship to neurovascular structures, compartments, bone. Contrast helps characterize vascularity, necrosis. CT: useful for retroperitoneal tumors, lung metastasis staging, calcifications. Ultrasound: initial assessment, distinguish cystic vs solid. Plain X-ray: calcifications, bone involvement. PET/CT: staging high-grade sarcomas, recurrence surveillance. MRI essential for surgical planning in suspected sarcoma.', 'easy'),

('e0000375-0003-0000-0000-000000000003', 'd0000375-0000-0000-0000-000000000075', 3,
'Biopsy of a suspected soft tissue sarcoma:',
'Should be excisional for all sizes', 'Should be planned carefully with the biopsy tract placed to be excisable with definitive surgery, core needle biopsy preferred', 'Is not necessary before surgery', 'Should always be incisional', NULL,
'B', 'Sarcoma biopsy principles: (1) CORE NEEDLE BIOPSY preferred (adequate tissue for histology, immunohistochemistry, molecular studies; less contamination than incisional). (2) BIOPSY TRACT must be EXCISABLE with definitive surgery - placed in line with planned incision, avoid contaminating multiple compartments. (3) Performed at or in consultation with treating sarcoma center. (4) Incisional biopsy if core inadequate. (5) Avoid excisional biopsy unless mass is small and superficial. Poorly planned biopsy can compromise limb salvage surgery.', 'medium'),

('e0000375-0004-0000-0000-000000000004', 'd0000375-0000-0000-0000-000000000075', 4,
'Wide local excision for soft tissue sarcoma aims to achieve:',
'Marginal excision through the tumor pseudocapsule', 'Negative margins with a cuff of normal tissue around the tumor (typically 1-2 cm or intact fascial plane)', 'Complete limb amputation always', 'Debulking only', NULL,
'B', 'Wide local excision for STS: goal is R0 (microscopically negative) MARGINS. Technique: excise tumor with surrounding cuff of normal tissue (1-2 cm or intact fascial plane as natural barrier). Avoid violation of tumor pseudocapsule. Negative margins: most important prognostic factor for local recurrence. If margins positive: re-excision or radiation. Limb salvage: possible in >90% with wide excision + radiation. Amputation reserved for locally advanced tumors not amenable to limb-sparing surgery or for palliation.', 'easy'),

('e0000375-0005-0000-0000-000000000005', 'd0000375-0000-0000-0000-000000000075', 5,
'The most common site of metastasis for soft tissue sarcomas is:',
'Lymph nodes', 'Lungs via hematogenous spread', 'Brain', 'Bone marrow', NULL,
'B', 'STS metastasis: primarily HEMATOGENOUS to LUNGS (most common site, 80%+). Lymph node metastases are RARE (unlike carcinomas) - exceptions: synovial sarcoma, rhabdomyosarcoma, epithelioid sarcoma, clear cell sarcoma. Therefore: routine lymph node dissection not indicated. Staging: chest CT for lung metastases. Resection of isolated pulmonary metastases (metastasectomy) may be curative in selected patients. Other metastatic sites: bone, liver (especially liposarcoma), soft tissue.', 'easy'),

('e0000375-0006-0000-0000-000000000006', 'd0000375-0000-0000-0000-000000000075', 6,
'Lipoma is characterized by:',
'Deep location and rapid growth', 'Soft, mobile, subcutaneous fatty mass with characteristic signal on MRI (follows fat on all sequences)', 'Hard, fixed mass', 'Frequent malignant transformation', NULL,
'B', 'Lipoma: most common benign soft tissue tumor. Features: SOFT, MOBILE, SUBCUTANEOUS, painless, slow-growing. MRI: follows FAT signal on all sequences (high T1, low on fat-suppressed sequences), thin capsule, no enhancement. Treatment: observation if asymptomatic; excision if symptomatic, enlarging, or diagnostic uncertainty. Malignant transformation: does NOT occur (lipoma does not become liposarcoma - they arise separately). Atypical lipomatous tumor (well-differentiated liposarcoma): deeper, larger, MDM2 amplification - different entity.', 'easy'),

('e0000375-0007-0000-0000-000000000007', 'd0000375-0000-0000-0000-000000000075', 7,
'GIST (gastrointestinal stromal tumor) is:',
'A carcinoma of the GI tract', 'A sarcoma arising from interstitial cells of Cajal, treated with surgery and imatinib (KIT/PDGFRA inhibitor) for high-risk or metastatic disease', 'A benign polyp', 'Only found in the colon', NULL,
'B', 'GIST: most common mesenchymal tumor of GI tract. Origin: interstitial cells of Cajal (GI pacemaker cells). Molecular: KIT (CD117) or PDGFRA mutations (>85%). Location: stomach (60%), small bowel (30%), colon/rectum, esophagus. Treatment: SURGICAL RESECTION for localized disease (no lymphadenectomy needed); IMATINIB (tyrosine kinase inhibitor) for high-risk adjuvant therapy, unresectable, or metastatic disease. Risk stratification: size, mitotic rate, location. CD117 positive on immunohistochemistry. Recurrence to liver common in high-risk.', 'medium'),

('e0000375-0008-0000-0000-000000000008', 'd0000375-0000-0000-0000-000000000075', 8,
'Adjuvant radiation therapy for soft tissue sarcoma:',
'Is never used', 'Improves local control when combined with surgery, especially for high-grade, deep, or close/positive margins', 'Replaces surgery completely', 'Is only used for benign tumors', NULL,
'B', 'Radiation therapy in STS: ADJUVANT RT improves LOCAL CONTROL (reduces local recurrence from ~30% to <10% when combined with surgery). Indications: high-grade tumors, deep location, size >5 cm, close or positive margins. Timing: preoperative (smaller field, lower dose, but higher wound complications) or postoperative (larger field, higher dose, but allows margin assessment). Does not clearly improve overall survival (metastasis determines survival). Used with limb salvage to permit less radical surgery while maintaining local control.', 'medium'),

('e0000375-0009-0000-0000-000000000009', 'd0000375-0000-0000-0000-000000000075', 9,
'The most common histologic subtype of soft tissue sarcoma in adults is:',
'Rhabdomyosarcoma', 'Undifferentiated pleomorphic sarcoma (formerly MFH) and liposarcoma', 'Osteosarcoma', 'Ewing sarcoma', NULL,
'B', 'STS histologic subtypes in adults: UNDIFFERENTIATED PLEOMORPHIC SARCOMA (UPS, formerly malignant fibrous histiocytoma/MFH) and LIPOSARCOMA are most common (20-25% each). Others: leiomyosarcoma, synovial sarcoma, MPNST. Location varies by type: liposarcoma common in retroperitoneum, leiomyosarcoma in uterus and retroperitoneum. Pediatric: rhabdomyosarcoma most common. Osteosarcoma and Ewing sarcoma are bone sarcomas (different category). Histologic type and grade are important prognostic factors.', 'medium'),

('e0000375-0010-0000-0000-000000000010', 'd0000375-0000-0000-0000-000000000075', 10,
'Retroperitoneal sarcoma:',
'Is easily diagnosed early', 'Often presents late with large size due to lack of symptoms, with liposarcoma and leiomyosarcoma being most common types', 'Has better prognosis than extremity sarcoma', 'Never recurs locally', NULL,
'B', 'Retroperitoneal sarcoma (RPS): 15% of all STS. Presentation: often LATE with LARGE tumors (>15-20 cm common) due to retroperitoneal space allowing growth before symptoms (abdominal mass, pain, early satiety). Most common types: LIPOSARCOMA (most common) and LEIOMYOSARCOMA. Treatment: COMPLETE SURGICAL RESECTION with involved organs if needed - only chance for cure. Radiation: role controversial, under investigation. LOCAL RECURRENCE: major problem (40-80% recur locally), main cause of death (unlike extremity STS where metastases dominate).', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 75 (Soft Tissue Tumors) with 10 self-assessment questions inserted' as status;
