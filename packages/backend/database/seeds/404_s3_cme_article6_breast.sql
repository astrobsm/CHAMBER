-- ============================================================================
-- SURGERY 3 CME ARTICLE 6: Breast Disease and Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000072-0000-0000-0000-000000000072', 'a0000003-0000-0000-0000-000000000003', 'Breast Disease', 'Benign and malignant breast conditions and surgical management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000306-0000-0000-0000-000000000006',
    'c0000072-0000-0000-0000-000000000072',
    'a0000003-0000-0000-0000-000000000003',
    'Breast Disease: From Benign Conditions to Cancer Management',
    'Evaluation, Diagnosis and Surgical Treatment of Breast Pathology',
    'This article covers the spectrum of breast disease including fibroadenoma, fibrocystic changes, breast cancer screening and diagnosis, staging, surgical options (lumpectomy vs mastectomy), sentinel lymph node biopsy, and principles of multimodality treatment.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000306-0001-0000-0000-000000000001', 'd0000306-0000-0000-0000-000000000006', 1,
'A 20-year-old woman presents with a 2cm painless, mobile, rubbery breast mass. The most likely diagnosis is:',
'Breast cancer', 'Fibroadenoma', 'Phyllodes tumor', 'Breast cyst', NULL,
'B', 'Fibroadenoma is the most common benign breast tumor in women under 30. Characteristics include painless, mobile (breast mouse), rubbery, well-defined mass. They are estrogen-responsive and may enlarge during pregnancy. Ultrasound shows well-circumscribed, hypoechoic mass. Core needle biopsy confirms diagnosis. Management is observation for small lesions or excision if enlarging.', 'easy'),

('e0000306-0002-0000-0000-000000000002', 'd0000306-0000-0000-0000-000000000006', 2,
'The triple assessment for breast lumps includes:',
'Mammography, ultrasound, MRI', 'Clinical examination, imaging, and pathology (cytology/histology)', 'Physical exam, CT scan, biopsy', 'Self-exam, mammogram, surgery', NULL,
'B', 'Triple assessment is the standard approach: (1) Clinical examination - history and physical, (2) Imaging - mammography (women >35) and/or ultrasound (women <35, dense breasts), (3) Pathology - FNAC or core needle biopsy. Concordance among all three increases diagnostic accuracy to >99%. Discordant results require further investigation.', 'easy'),

('e0000306-0003-0000-0000-000000000003', 'd0000306-0000-0000-0000-000000000006', 3,
'Which histologic type accounts for the majority of invasive breast cancers?',
'Invasive lobular carcinoma', 'Invasive ductal carcinoma (no special type)', 'Medullary carcinoma', 'Mucinous carcinoma', NULL,
'B', 'Invasive ductal carcinoma (NST - no special type) accounts for 70-80% of breast cancers. Invasive lobular carcinoma is second (10-15%). Special types (medullary, mucinous, tubular, papillary) each represent <5% and often have better prognosis. Lobular carcinoma is more often bilateral and multifocal, and may present with diffuse thickening rather than discrete mass.', 'easy'),

('e0000306-0004-0000-0000-000000000004', 'd0000306-0000-0000-0000-000000000006', 4,
'A 55-year-old woman has a 1.5cm breast cancer. She desires breast conservation. Which of the following is a CONTRAINDICATION to breast-conserving surgery?',
'Tumor size of 1.5cm', 'Age over 50', 'Multicentric disease in different quadrants', 'Negative sentinel lymph node', NULL,
'C', 'Contraindications to breast-conserving surgery: multicentric disease (cancer in multiple quadrants), inability to achieve negative margins, prior radiation to chest wall, extensive DCIS, inflammatory breast cancer, pregnancy (relative - can operate in 2nd/3rd trimester but cannot radiate). Tumor size is relative (can use neoadjuvant chemo to shrink). Age alone is not a contraindication.', 'medium'),

('e0000306-0005-0000-0000-000000000005', 'd0000306-0000-0000-0000-000000000006', 5,
'Sentinel lymph node biopsy (SLNB) is used to:',
'Remove all axillary lymph nodes', 'Identify the first node(s) draining the breast for staging', 'Replace imaging in axillary assessment', 'Treat lymphedema', NULL,
'B', 'SLNB identifies the first lymph node(s) receiving drainage from the tumor (sentinel nodes). Blue dye and/or radioactive tracer are injected around the tumor or in the subareolar plexus. The sentinel node(s) are removed and examined. If negative, axillary dissection is avoided, reducing morbidity (lymphedema, arm pain). ACOSOG Z0011 showed that even with 1-2 positive sentinel nodes, axillary dissection may be omitted in certain patients.', 'medium'),

('e0000306-0006-0000-0000-000000000006', 'd0000306-0000-0000-0000-000000000006', 6,
'Which receptor status indicates that a breast cancer may respond to hormonal therapy?',
'HER2 positive', 'Estrogen receptor (ER) positive', 'Triple negative', 'BRCA1 mutated', NULL,
'B', 'ER-positive and/or PR-positive tumors are hormone receptor positive and respond to hormonal therapy. Options include tamoxifen (premenopausal - selective estrogen receptor modulator) and aromatase inhibitors (postmenopausal - anastrozole, letrozole, exemestane). HER2-positive tumors respond to targeted therapy (trastuzumab). Triple negative (ER-, PR-, HER2-) has worst prognosis and relies on chemotherapy.', 'easy'),

('e0000306-0007-0000-0000-000000000007', 'd0000306-0000-0000-0000-000000000006', 7,
'The most common site of metastasis for breast cancer is:',
'Liver', 'Bone', 'Brain', 'Lung', NULL,
'B', 'Bone is the most common site of breast cancer metastasis (occurs in 70% of metastatic cases). Common sites include spine, pelvis, ribs, and long bones. Other metastatic sites: lung, liver, brain. Breast cancer is the most common cause of malignant hypercalcemia (through osteolytic metastases and PTHrP production). Bone metastases cause pain, pathologic fractures, and cord compression.', 'easy'),

('e0000306-0008-0000-0000-000000000008', 'd0000306-0000-0000-0000-000000000006', 8,
'Paget disease of the nipple is characterized by:',
'Benign eczematous changes only', 'Underlying in-situ or invasive carcinoma in most cases', 'Bacterial infection of nipple', 'Autoimmune dermatitis', NULL,
'B', 'Paget disease of the nipple presents as eczematoid changes of the nipple-areola (erythema, crusting, ulceration, bloody discharge). It is associated with underlying DCIS or invasive carcinoma in >90% of cases. Paget cells (large, clear cells with prominent nucleoli) are seen in epidermis. Do not treat as eczema without biopsy. Mastectomy or central lumpectomy with assessment of underlying tissue is required.', 'medium'),

('e0000306-0009-0000-0000-000000000009', 'd0000306-0000-0000-0000-000000000006', 9,
'Inflammatory breast cancer is characterized by all EXCEPT:',
'Peau d''orange appearance', 'Erythema involving more than one-third of the breast', 'Excellent prognosis with surgery alone', 'Dermal lymphatic invasion', NULL,
'C', 'Inflammatory breast cancer (T4d) has the worst prognosis among breast cancers. It presents with rapid onset of erythema, warmth, peau d''orange (dermal edema from lymphatic obstruction), and often without distinct mass. Caused by tumor emboli in dermal lymphatics. Surgery alone is contraindicated (high local recurrence). Treatment is neoadjuvant chemotherapy followed by mastectomy and radiation.', 'medium'),

('e0000306-0010-0000-0000-000000000010', 'd0000306-0000-0000-0000-000000000006', 10,
'BRCA1 and BRCA2 gene mutations are associated with:',
'Lower risk of breast cancer', 'Hereditary breast and ovarian cancer syndrome', 'Only male breast cancer', 'Benign breast disease only', NULL,
'B', 'BRCA1/2 are tumor suppressor genes involved in DNA repair. Mutations dramatically increase lifetime breast cancer risk (55-70% for BRCA1, 45-70% for BRCA2) and ovarian cancer risk (40-45% for BRCA1, 10-20% for BRCA2). BRCA2 also increases male breast cancer and prostate cancer risk. Carriers may consider risk-reducing mastectomy, oophorectomy, or enhanced surveillance (MRI + mammogram).', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 6 (Breast Disease) with 10 self-assessment questions inserted' as status;
