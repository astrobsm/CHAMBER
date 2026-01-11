-- CME Article 118: Surgical Oncology Principles - Breast Cancer
-- Surgery 3 Rotation

-- Create topic for this article
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES (
  'c0000183-0000-0000-0000-000000000183',
  'Surgical Management of Breast Cancer',
  'a0000003-0000-0000-0000-000000000003',
  'Comprehensive approach to breast cancer surgery',
  183,
  true
) ON CONFLICT (id) DO NOTHING;

-- Create CME article
INSERT INTO cme_articles (
  id, topic_id, category_id, title, subtitle, abstract, authors,
  cme_credits, estimated_reading_minutes, difficulty_level,
  version, is_published, publish_date, keywords, cover_image_url
)
VALUES (
  'd0000418-0000-0000-0000-000000000118',
  'c0000183-0000-0000-0000-000000000183',
  'a0000003-0000-0000-0000-000000000003',
  'Surgical Management of Breast Cancer: Current Evidence and Practice',
  'From diagnosis to surgical treatment planning',
  'Breast cancer is the most common cancer in women worldwide. Surgical management has evolved significantly, with breast conservation therapy now standard for appropriate candidates. This article reviews the diagnostic workup, staging, and surgical options for breast cancer including lumpectomy, mastectomy, and oncoplastic techniques. We discuss axillary management including sentinel lymph node biopsy and its role in clinical decision-making. The integration of neoadjuvant therapy and implications for surgical planning are addressed, along with reconstruction options and timing.',
  'Department of Surgical Oncology - Breast Service',
  1.0,
  30,
  'medium',
  1,
  true,
  CURRENT_DATE,
  ARRAY['breast cancer', 'mastectomy', 'lumpectomy', 'sentinel node', 'oncoplastic'],
  NULL
) ON CONFLICT (id) DO NOTHING;

-- Self-assessment questions for Article 118
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES
('e1180001-0000-0000-0000-000000000001', 'd0000418-0000-0000-0000-000000000118', 1,
 'Which imaging modality is the gold standard for breast cancer screening?',
 'Breast ultrasound', 'Mammography', 'Breast MRI', 'PET-CT scan',
 'B', 'Mammography remains the gold standard screening tool with proven mortality reduction. Ultrasound is adjunctive for dense breasts, MRI for high-risk patients, and PET for staging metastatic disease.', 'easy'),
('e1180002-0000-0000-0000-000000000002', 'd0000418-0000-0000-0000-000000000118', 2,
 'Breast conservation therapy (lumpectomy with radiation) is contraindicated in:',
 'Unifocal tumor 2 cm in size', 'Patient with prior chest wall radiation', 'Tumor in upper outer quadrant', 'Clinically negative axilla',
 'B', 'Prior chest wall/breast radiation is a contraindication to BCT as additional radiation cannot be safely delivered. Other contraindications include multicentric disease, inability to achieve clear margins, and pregnancy.', 'medium'),
('e1180003-0000-0000-0000-000000000003', 'd0000418-0000-0000-0000-000000000118', 3,
 'The recommended minimum margin for invasive breast cancer after lumpectomy is:',
 '1 mm', 'No tumor on ink', '5 mm', '1 cm',
 'B', 'Current guidelines recommend "no tumor on ink" as adequate margin for invasive cancer. Wider margins do not improve local recurrence rates when combined with whole breast irradiation.', 'medium'),
('e1180004-0000-0000-0000-000000000004', 'd0000418-0000-0000-0000-000000000118', 4,
 'Sentinel lymph node biopsy is indicated for:',
 'All patients with breast cancer', 'Clinically node-negative invasive breast cancer', 'All patients undergoing mastectomy', 'Only patients with tumors greater than 2 cm',
 'B', 'SLNB is indicated for clinically node-negative invasive breast cancer. It spares patients from axillary dissection if nodes are negative, reducing morbidity from lymphedema.', 'medium'),
('e1180005-0000-0000-0000-000000000005', 'd0000418-0000-0000-0000-000000000118', 5,
 'According to ACOSOG Z0011 trial, axillary lymph node dissection can be omitted in patients with:',
 'Any positive sentinel nodes', '1-2 positive SLNs, BCT planned, no extracapsular extension', 'Macrometastases in sentinel nodes', 'Inflammatory breast cancer',
 'B', 'Z0011 showed that patients with 1-2 positive SLNs undergoing BCT with whole breast radiation and systemic therapy have equivalent outcomes without ALND, sparing them from increased morbidity.', 'hard'),
('e1180006-0000-0000-0000-000000000006', 'd0000418-0000-0000-0000-000000000118', 6,
 'Triple-negative breast cancer is characterized by:',
 'ER+, PR+, HER2+', 'ER-, PR-, HER2-', 'ER+, PR-, HER2+', 'ER-, PR+, HER2-',
 'B', 'Triple-negative breast cancer lacks estrogen receptor, progesterone receptor, and HER2 overexpression. It tends to be more aggressive and does not respond to hormonal or HER2-targeted therapy.', 'medium'),
('e1180007-0000-0000-0000-000000000007', 'd0000418-0000-0000-0000-000000000118', 7,
 'Neoadjuvant chemotherapy in breast cancer is used to:',
 'Avoid surgery completely', 'Downstage tumor to allow breast conservation', 'Treat only inflammatory breast cancer', 'Replace adjuvant therapy',
 'B', 'Neoadjuvant chemotherapy can downstage tumors to enable breast conservation, treat micrometastatic disease, and assess tumor response. Pathologic complete response is a favorable prognostic indicator.', 'medium'),
('e1180008-0000-0000-0000-000000000008', 'd0000418-0000-0000-0000-000000000118', 8,
 'Prophylactic mastectomy is most strongly indicated in patients with:',
 'Family history of breast cancer', 'Dense breast tissue', 'BRCA1 or BRCA2 mutation', 'Previous benign breast biopsy',
 'C', 'BRCA1/2 mutation carriers have up to 85% lifetime risk of breast cancer. Prophylactic bilateral mastectomy reduces this risk by approximately 90% and is a valid option after counseling.', 'medium'),
('e1180009-0000-0000-0000-000000000009', 'd0000418-0000-0000-0000-000000000118', 9,
 'Which type of breast reconstruction can be performed immediately after mastectomy?',
 'Only autologous tissue reconstruction', 'Only implant-based reconstruction', 'Both autologous and implant-based', 'Reconstruction must always be delayed',
 'C', 'Both implant-based and autologous tissue reconstruction can be performed immediately or delayed. Immediate reconstruction is associated with better cosmetic and psychological outcomes when oncologically safe.', 'medium'),
('e1180010-0000-0000-0000-000000000010', 'd0000418-0000-0000-0000-000000000118', 10,
 'Lymphedema after axillary surgery can be reduced by:',
 'Avoiding all upper extremity exercise', 'Sentinel lymph node biopsy instead of full dissection', 'Bilateral axillary dissection', 'Avoiding adjuvant radiation',
 'B', 'SLNB significantly reduces lymphedema risk compared to ALND (5% vs 20-30%). Other preventive measures include avoiding blood pressure measurements and venipuncture on the affected arm.', 'medium')
ON CONFLICT (id) DO NOTHING;
