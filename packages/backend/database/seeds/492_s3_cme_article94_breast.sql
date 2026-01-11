-- ============================================================================
-- SURGERY 3 CME ARTICLE 94: Breast Surgery Comprehensive
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000160-0000-0000-0000-000000000160', 'a0000003-0000-0000-0000-000000000003', 'Breast Surgery Comprehensive', 'Comprehensive breast surgery including benign and malignant conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000394-0000-0000-0000-000000000094',
    'c0000160-0000-0000-0000-000000000160',
    'a0000003-0000-0000-0000-000000000003',
    'Breast Surgery: From Benign Disease to Oncologic Management',
    'Evidence-Based Breast Surgical Care',
    'This article covers breast anatomy, benign breast conditions, breast cancer screening, diagnostic workup, surgical options for breast cancer including lumpectomy and mastectomy, sentinel lymph node biopsy, oncoplastic techniques, and breast reconstruction.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000394-0001-0000-0000-000000000001', 'd0000394-0000-0000-0000-000000000094', 1,
'Triple assessment for a breast lump includes:',
'Only mammography', 'Clinical examination, imaging (mammography and/or ultrasound), and tissue sampling (FNA or core biopsy)', 'Blood tests only', 'MRI as first-line',
'B', 'TRIPLE ASSESSMENT: gold standard for breast lump evaluation. COMPONENTS: (1) CLINICAL EXAMINATION - inspection, palpation, axillary nodes; (2) IMAGING - mammography (>35-40 years), ultrasound (young/dense breasts, cyst characterization), MRI (selected cases); (3) TISSUE SAMPLING - fine needle aspiration (FNA) or CORE BIOPSY (preferred - provides histology, receptor status). All three components needed for accurate diagnosis. Concordant benign triple assessment allows conservative management. Any discordant or suspicious finding requires further workup. Core biopsy superior to FNA for solid masses.', 'easy'),

('e0000394-0002-0000-0000-000000000002', 'd0000394-0000-0000-0000-000000000094', 2,
'Fibroadenoma of the breast is:',
'A malignant tumor', 'A benign fibroepithelial tumor, common in young women, usually mobile, rubbery, and well-circumscribed, managed conservatively if typical features present', 'Always requires excision', 'Associated with high cancer risk',
'B', 'FIBROADENOMA: most common benign breast tumor. EPIDEMIOLOGY: peak 20-30 years, may present earlier. FEATURES: MOBILE ("breast mouse"), firm/rubbery, well-circumscribed, painless. IMAGING: ultrasound - well-defined, homogeneous, oval, wider than tall. PATHOLOGY: fibroepithelial tumor with both stromal and epithelial components. MANAGEMENT: if typical features on triple assessment - CONSERVATIVE (observation acceptable). Excision if: growing, atypical features, patient preference, >3-4 cm. PHYLLODES tumor: larger, rapid growth, older age - must differentiate (core biopsy). Slight increased risk only with complex fibroadenoma.', 'easy'),

('e0000394-0003-0000-0000-000000000003', 'd0000394-0000-0000-0000-000000000094', 3,
'Breast-conserving surgery (lumpectomy) with radiation therapy:',
'Has worse survival than mastectomy', 'Is equivalent to mastectomy for survival in appropriately selected patients and requires negative margins and radiation therapy', 'Is contraindicated for all cancers', 'Does not require radiation',
'B', 'BREAST-CONSERVING SURGERY (BCS, lumpectomy, wide local excision): removal of tumor with margin of normal tissue. PLUS RADIATION = equivalent SURVIVAL to mastectomy for appropriate patients. REQUIREMENTS: tumor/breast ratio allows adequate cosmesis, negative MARGINS (no ink on tumor for invasive, 2mm for DCIS), commitment to RADIATION. CONTRAINDICATIONS: multicentric disease, inability to achieve negative margins, prior chest radiation, pregnancy, certain connective tissue diseases, patient preference. ADVANTAGES: breast preservation, less morbidity. Re-excision if margins positive.', 'easy'),

('e0000394-0004-0000-0000-000000000004', 'd0000394-0000-0000-0000-000000000094', 4,
'Sentinel lymph node biopsy (SLNB) in breast cancer:',
'Requires complete axillary dissection always', 'Identifies the first draining lymph node(s) using dye and/or radiotracer, and if negative, avoids the morbidity of axillary lymph node dissection', 'Is not accurate for staging', 'Is only done after chemotherapy',
'B', 'SENTINEL LYMPH NODE BIOPSY: identifies first draining node(s) from tumor. TECHNIQUE: inject BLUE DYE (isosulfan, methylene blue) and/or RADIOTRACER (technetium-99m sulfur colloid) around tumor or subareolar; identify sentinel node(s) visually (blue) and/or with gamma probe. RATIONALE: if sentinel node NEGATIVE, axillary dissection unnecessary (avoids lymphedema, nerve injury). If POSITIVE: historically axillary dissection, but ACOSOG Z0011 showed some patients with limited SLN involvement can avoid ALND. ACCURACY: >95% when properly performed. Standard of care for clinically node-negative invasive breast cancer.', 'easy'),

('e0000394-0005-0000-0000-000000000005', 'd0000394-0000-0000-0000-000000000094', 5,
'Inflammatory breast cancer is characterized by:',
'Slow growth and excellent prognosis', 'Rapid onset erythema and edema (peau d orange) of the breast, often without a discrete mass, with dermal lymphatic invasion and poor prognosis requiring multimodal treatment', 'Only surgical treatment', 'Benign inflammatory condition',
'B', 'INFLAMMATORY BREAST CANCER: aggressive clinical presentation. FEATURES: rapid onset (weeks), ERYTHEMA (>1/3 of breast), EDEMA, PEAU D ORANGE (skin thickening like orange peel - due to dermal lymphatic obstruction), warmth, often no discrete mass. PATHOLOGY: dermal LYMPHATIC INVASION by tumor. TNM: T4d staging. PROGNOSIS: poor compared to other breast cancers. TREATMENT: MULTIMODAL - neoadjuvant CHEMOTHERAPY first (not surgery), then mastectomy (if response), then radiation. BCS contraindicated. Often HER2+ or triple negative. Must differentiate from breast abscess/mastitis (biopsy if not improving with antibiotics).', 'medium'),

('e0000394-0006-0000-0000-000000000006', 'd0000394-0000-0000-0000-000000000094', 6,
'Ductal carcinoma in situ (DCIS) is:',
'Invasive cancer requiring chemotherapy', 'A non-invasive proliferation of malignant cells within the ductal system with no invasion through basement membrane, treated with surgery with or without radiation', 'Benign and requires no treatment', 'Always bilateral',
'B', 'DUCTAL CARCINOMA IN SITU (DCIS): malignant cells confined within ductal basement membrane (NON-INVASIVE, Stage 0). PRESENTATION: often mammographic microcalcifications (screening detected). RISK: progression to invasive cancer if untreated (estimated 30-50% over time). TREATMENT: BCS + radiation OR mastectomy. Margins: 2mm recommended. RADIATION reduces local recurrence. Tamoxifen/endocrine therapy if ER-positive reduces ipsilateral and contralateral risk. No axillary staging for pure DCIS (no SLN unless mastectomy or large/high-grade DCIS where upgrade possible). Excellent prognosis.', 'easy'),

('e0000394-0007-0000-0000-000000000007', 'd0000394-0000-0000-0000-000000000094', 7,
'Hormone receptor status (ER/PR) and HER2 testing in breast cancer:',
'Are not clinically useful', 'Are essential for treatment planning, with ER-positive tumors benefiting from endocrine therapy and HER2-positive tumors benefiting from trastuzumab', 'Only affect prognosis not treatment', 'Are only tested in metastatic disease',
'B', 'BIOMARKER TESTING in breast cancer: essential for treatment. ESTROGEN RECEPTOR (ER) and PROGESTERONE RECEPTOR (PR): if positive, ENDOCRINE THERAPY indicated (tamoxifen, aromatase inhibitors). HER2: if positive (overexpressed or amplified), TRASTUZUMAB (Herceptin) and other HER2-targeted agents significantly improve outcomes. SUBTYPES: Luminal A (ER+, HER2-, low Ki-67), Luminal B (ER+, HER2- or +, high Ki-67), HER2-enriched (ER-, HER2+), Triple negative (ER-, PR-, HER2-). Triple negative: chemotherapy only, more aggressive. Testing required on all invasive cancers (and increasingly DCIS).', 'easy'),

('e0000394-0008-0000-0000-000000000008', 'd0000394-0000-0000-0000-000000000094', 8,
'Neoadjuvant chemotherapy for breast cancer:',
'Is never used', 'Is given before surgery to downstage tumors, allow breast conservation, assess in vivo tumor response, and treat micrometastatic disease', 'Worsens survival', 'Is only for metastatic disease',
'B', 'NEOADJUVANT (PREOPERATIVE) CHEMOTHERAPY: systemic treatment BEFORE surgery. ADVANTAGES: (1) DOWNSTAGE tumor (convert mastectomy to BCS, allow surgery for locally advanced); (2) IN VIVO assessment of tumor response; (3) Treat MICROMETASTATIC disease early; (4) Time for genetic testing/surgical planning. PATHOLOGIC COMPLETE RESPONSE (pCR): no residual invasive disease - associated with improved survival, especially in HER2+ and triple negative. Same survival as adjuvant in trials. INDICATIONS: locally advanced, inflammatory, HER2+/triple negative (high response rates), large tumor/small breast.', 'medium'),

('e0000394-0009-0000-0000-000000000009', 'd0000394-0000-0000-0000-000000000094', 9,
'Breast reconstruction options after mastectomy include:',
'No reconstruction is possible', 'Implant-based reconstruction or autologous tissue (DIEP, TRAM, latissimus dorsi flaps), performed immediately or delayed', 'Only implants allowed', 'Reconstruction impairs cancer surveillance',
'B', 'BREAST RECONSTRUCTION: options after mastectomy. IMPLANT-BASED: tissue expander then implant, or direct-to-implant. Simpler, shorter surgery, but may need revision, capsular contracture risk. AUTOLOGOUS TISSUE: uses patient own tissue - TRAM flap (rectus abdominis), DIEP flap (deep inferior epigastric perforator - muscle-sparing), latissimus dorsi flap (often with implant). More complex surgery, natural feel, ages with patient. TIMING: IMMEDIATE (at mastectomy) or DELAYED (after treatment). Oncologically safe. Nipple reconstruction/tattooing can complete reconstruction. All mastectomy patients should be offered reconstruction discussion.', 'medium'),

('e0000394-0010-0000-0000-000000000010', 'd0000394-0000-0000-0000-000000000094', 10,
'Male breast cancer:',
'Does not exist', 'Is rare (less than 1% of all breast cancers), often presents at later stage, is typically hormone receptor positive, and is treated similarly to female breast cancer', 'Is always triple negative', 'Has excellent prognosis due to small breast size',
'B', 'MALE BREAST CANCER: <1% of all breast cancers, <1% of male cancers. RISK FACTORS: BRCA2 mutation (highest), Klinefelter syndrome, family history, obesity, liver disease, radiation exposure. PRESENTATION: often LATER STAGE (less awareness, close proximity to chest wall). PATHOLOGY: >90% ER-POSITIVE. TREATMENT: similar to female - mastectomy (breast conservation rare due to breast size), SLNB, systemic therapy based on stage/receptors. Tamoxifen is endocrine therapy of choice (not aromatase inhibitors alone). BRCA testing recommended. Prognosis stage-for-stage similar to female breast cancer.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 94 (Breast Surgery Comprehensive) with 10 self-assessment questions inserted' as status;
