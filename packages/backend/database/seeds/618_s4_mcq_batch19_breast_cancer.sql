-- Surgery 4 MCQ Question Bank - Batch 19
-- Section E: Oncology - Breast Cancer
-- 40 Questions

-- Topic: Breast Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000019-0000-0000-0000-000000000019', 'Breast Cancer', 'a0000004-0000-0000-0000-000000000004', 'Breast cancer screening, diagnosis, staging, and management', 19, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of invasive breast cancer is:',
 'Lobular carcinoma', 'Invasive ductal carcinoma', 'Inflammatory carcinoma', 'Paget disease', 'Phyllodes tumor',
 'B', 'Invasive ductal carcinoma (now called invasive carcinoma of no special type): 70-80% of breast cancers. Invasive lobular carcinoma: 10-15%. Others: medullary, mucinous, tubular, inflammatory.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'The most significant risk factor for breast cancer is:',
 'Early menarche', 'Increasing age and female sex', 'Nulliparity', 'Obesity', 'Alcohol use',
 'B', 'Female sex and increasing age are greatest risk factors. 80% of breast cancers occur in women >50. Family history, BRCA mutations, prior breast disease, hormonal factors also important.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'BRCA1 and BRCA2 mutations increase lifetime breast cancer risk to approximately:',
 '10-15 percent', '25-30 percent', '45-65 percent', '100 percent', '5 percent',
 'C', 'BRCA1/2 carriers: 45-65% lifetime breast cancer risk (vs 12% general population). Also increased ovarian cancer (BRCA1 especially), male breast cancer (BRCA2). Autosomal dominant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Screening mammography is recommended for average-risk women starting at age:',
 '30', '40', '50', '60', '25',
 'B', 'Most guidelines recommend mammography starting at 40-50 (varies by organization). Biennial or annual depending on guidelines. Earlier if high risk. Continue until life expectancy <10 years.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'The triple assessment for a breast lump includes:',
 'Mammogram CT and biopsy', 'Clinical examination imaging (mammogram or ultrasound) and tissue diagnosis', 'Blood tests ultrasound and MRI', 'Physical exam only', 'Imaging only',
 'B', 'Triple assessment: clinical examination, imaging (mammography >35-40, ultrasound for young/dense breasts), and tissue diagnosis (FNAC or core biopsy). All three should be concordant.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Core needle biopsy is preferred over FNAC for breast lesions because:',
 'Less invasive', 'Provides histological architecture and receptor status', 'No anesthesia needed', 'Faster results', 'Lower cost',
 'B', 'Core biopsy: provides tissue architecture (distinguishes invasive from in situ), allows receptor testing (ER, PR, HER2), grading. FNAC gives only cytology. Core is standard for suspicious lesions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'BI-RADS category 4 on mammography indicates:',
 'Negative study', 'Benign finding', 'Suspicious abnormality requiring biopsy', 'Highly suggestive of malignancy', 'Known cancer',
 'C', 'BI-RADS: 0= incomplete, 1= negative, 2= benign, 3= probably benign (2% risk), 4= suspicious (3-94% risk, biopsy needed), 5= highly suggestive (>95%), 6= known malignancy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Ductal carcinoma in situ (DCIS) is characterized by:',
 'Invasion beyond basement membrane', 'Malignant cells confined within the duct without invasion', 'Lobular involvement', 'Always bilateral', 'Metastatic spread',
 'B', 'DCIS: malignant epithelial cells within ducts, basement membrane intact (no invasion). Pre-invasive. 25-50% progress to invasive cancer if untreated. Treatment prevents progression.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of DCIS typically includes:',
 'Observation only', 'Surgical excision with negative margins plus or minus radiation', 'Chemotherapy', 'Radical mastectomy', 'Hormonal therapy alone',
 'B', 'DCIS treatment: breast-conserving surgery (lumpectomy with clear margins) + radiation, or mastectomy. Endocrine therapy if ER+. No axillary staging (no invasion). No chemo for pure DCIS.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Breast-conserving surgery (lumpectomy) with radiation achieves similar survival to mastectomy when:',
 'Never', 'Adequate negative margins achieved and patient receives radiation', 'Only for DCIS', 'Only in elderly', 'For any size tumor',
 'B', 'BCS + radiation equivalent survival to mastectomy (multiple RCTs). Requirements: adequate margins, candidate for radiation, acceptable cosmesis, single tumor focus. Patient preference matters.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Contraindications to breast-conserving surgery include:',
 'Tumor less than 2 cm', 'Multicentric disease prior chest radiation or inflammatory breast cancer', 'Age over 60', 'ER-positive tumor', 'HER2-negative tumor',
 'B', 'BCS contraindications: multicentric disease, diffuse malignant calcifications, prior chest radiation, inflammatory carcinoma, pregnancy (relative), positive margins despite re-excision.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Sentinel lymph node biopsy is performed to:',
 'Treat lymph node metastases', 'Stage the axilla while avoiding complete axillary dissection if negative', 'Remove all lymph nodes', 'Only after chemotherapy', 'Only for recurrent cancer',
 'B', 'SLNB: identifies first draining nodes from tumor. If negative, full axillary dissection avoided (reduces morbidity). Standard for clinically node-negative early breast cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Axillary lymph node dissection is indicated when:',
 'All breast cancers', 'Positive sentinel nodes (macrometastases) or clinically positive nodes', 'Only for triple-negative cancer', 'Never needed', 'Only for DCIS',
 'B', 'ALND indications: positive SLN (though Z0011 changed practice for 1-2 positive nodes with BCS+radiation), clinically positive nodes confirmed by biopsy, inflammatory cancer. Provides staging and local control.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Lymphedema after breast cancer surgery is minimized by:',
 'Complete axillary dissection', 'Sentinel node biopsy instead of complete dissection when appropriate', 'Avoiding arm movement', 'More extensive surgery', 'Radiation to axilla',
 'B', 'SLNB reduces lymphedema risk significantly vs ALND. ALND lymphedema risk: 15-25%. SLNB: 5-7%. Avoiding unnecessary ALND is major goal. Patient education for prevention important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Estrogen receptor (ER) positivity in breast cancer indicates:',
 'Poor prognosis', 'Sensitivity to hormonal therapy', 'Need for chemotherapy only', 'HER2 positivity', 'Triple-negative status',
 'B', 'ER-positive: responds to endocrine therapy (tamoxifen, aromatase inhibitors). About 75% of breast cancers. Generally better prognosis than ER-negative. Guides adjuvant therapy selection.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'HER2-positive breast cancer is treated with:',
 'Only surgery', 'Targeted therapy with trastuzumab (Herceptin) plus chemotherapy', 'Hormonal therapy only', 'Observation', 'Tamoxifen',
 'B', 'HER2+ (15-20% of breast cancers): aggressive subtype. Trastuzumab revolutionized treatment. Combined with chemotherapy. Pertuzumab added for higher risk. Cardiac monitoring needed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Triple-negative breast cancer is defined as:',
 'ER-positive PR-positive HER2-positive', 'ER-negative PR-negative HER2-negative', 'Low-grade cancer', 'Only affects males', 'BRCA-negative cancer',
 'B', 'Triple-negative: lacks ER, PR, and HER2 expression. 15-20% of breast cancers. More aggressive, higher in young women and BRCA1 carriers. No targeted therapy, treated with chemotherapy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Tamoxifen is used in premenopausal ER-positive breast cancer because:',
 'It is an aromatase inhibitor', 'It is a selective estrogen receptor modulator (SERM)', 'It blocks HER2', 'It is chemotherapy', 'It is always preferred over aromatase inhibitors',
 'B', 'Tamoxifen (SERM): blocks ER in breast tissue. Works in premenopausal women (ovaries produce estrogen). 5-10 years adjuvant therapy. Aromatase inhibitors need postmenopausal status.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Side effects of tamoxifen include:',
 'Osteoporosis', 'Endometrial cancer hot flashes and thromboembolic events', 'Joint stiffness', 'Weight loss', 'Decreased triglycerides',
 'B', 'Tamoxifen side effects: hot flashes, vaginal discharge, endometrial cancer risk (screen with abnormal bleeding), VTE, cataracts. Has beneficial effects on bone and lipids (vs AI).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Aromatase inhibitors are preferred in postmenopausal ER-positive breast cancer because:',
 'Work faster than tamoxifen', 'More effective than tamoxifen and block peripheral estrogen synthesis', 'Fewer side effects', 'Work in premenopausal women', 'No monitoring needed',
 'B', 'AIs (letrozole, anastrozole, exemestane): block aromatase enzyme (peripheral estrogen synthesis). Superior to tamoxifen in postmenopausal women. No endometrial cancer risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Oncotype DX recurrence score helps determine:',
 'Surgical approach', 'Need for adjuvant chemotherapy in ER-positive HER2-negative early breast cancer', 'Radiation dose', 'Hormonal therapy type', 'Mastectomy need',
 'B', 'Oncotype DX: 21-gene assay providing recurrence score. Predicts chemotherapy benefit in ER+/HER2- early breast cancer. Low score: endocrine therapy alone. High score: add chemotherapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Neoadjuvant chemotherapy in breast cancer is used for:',
 'After surgery only', 'Before surgery to downstage tumors and assess response', 'Only for DCIS', 'Replacing surgery', 'Only in metastatic disease',
 'B', 'Neoadjuvant therapy: before surgery. Downstages tumor (may allow BCS instead of mastectomy), assesses in vivo response (pathologic complete response predicts outcome), same survival as adjuvant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Pathologic complete response (pCR) after neoadjuvant therapy indicates:',
 'Poor prognosis', 'Excellent prognosis with no residual invasive cancer', 'Need for more chemotherapy', 'Treatment failure', 'No surgery needed',
 'B', 'pCR: no residual invasive cancer in breast and lymph nodes after neoadjuvant therapy. Strong prognostic indicator, especially for triple-negative and HER2+ cancers. Surgery still performed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Inflammatory breast cancer is characterized by:',
 'Slow growing mass', 'Diffuse erythema edema peau d orange and rapid progression', 'Small localized tumor', 'Always metastatic at presentation', 'Excellent prognosis',
 'B', 'Inflammatory breast cancer: rapid onset, skin erythema, edema (peau d orange), warmth. Tumor emboli in dermal lymphatics. Clinical diagnosis. T4d stage. Worse prognosis. Neoadjuvant chemo then mastectomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Paget disease of the nipple is associated with:',
 'Eczema only', 'Underlying DCIS or invasive carcinoma in most cases', 'Infection', 'Benign condition only', 'Inflammatory breast cancer',
 'B', 'Paget disease: malignant cells in nipple epidermis. >90% have underlying carcinoma (DCIS or invasive). Presents as eczematoid nipple changes. Biopsy any unilateral nipple lesion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Breast cancer during pregnancy is managed with:',
 'Termination always required', 'Surgery can be performed and chemotherapy given after first trimester', 'Delay all treatment until delivery', 'Only hormonal therapy', 'Only radiation',
 'B', 'Pregnancy-associated breast cancer: surgery safe during any trimester. Chemotherapy safe in 2nd/3rd trimester. Radiation contraindicated during pregnancy. Avoid hormonal therapy. Multidisciplinary care.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Male breast cancer accounts for what percentage of all breast cancers:',
 'Less than 1 percent', '5-10 percent', '20 percent', '50 percent', 'Never occurs in males',
 'A', 'Male breast cancer: <1% of all breast cancers. Risk factors: BRCA2, Klinefelter, family history, obesity. Often ER+. Treatment similar to female. Worse stage at diagnosis common.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Prophylactic mastectomy reduces breast cancer risk in BRCA carriers by:',
 '25 percent', '50 percent', '90 percent or more', 'No reduction', '100 percent',
 'C', 'Bilateral prophylactic mastectomy: reduces breast cancer risk by >90% in BRCA carriers. Option for high-risk women. Does not eliminate risk completely. Reconstruction options available.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Breast reconstruction can be performed:',
 'Only at time of mastectomy', 'Immediately or delayed after mastectomy', 'Never with radiation', 'Only after 5 years', 'Only with autologous tissue',
 'B', 'Reconstruction: immediate (at mastectomy) or delayed. Options: implant-based or autologous tissue (TRAM, DIEP, latissimus). Radiation affects timing and outcomes. Patient choice important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'The most common site of breast cancer metastasis is:',
 'Brain', 'Bone', 'Liver', 'Lung', 'Skin',
 'B', 'Bone is most common metastatic site. Followed by lung, liver, brain. ER+ tends to bone. HER2+ and triple-negative more brain/visceral metastases. Bone metastases cause pain, fractures, hypercalcemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'CDK4/6 inhibitors (palbociclib, ribociclib) are used for:',
 'Triple-negative breast cancer', 'ER-positive HER2-negative metastatic breast cancer with hormonal therapy', 'DCIS only', 'HER2-positive cancer', 'Early breast cancer standard treatment',
 'B', 'CDK4/6 inhibitors: for HR+/HER2- metastatic breast cancer. Combined with endocrine therapy. Improved PFS. Now also approved in high-risk early breast cancer (adjuvant). Main side effect: neutropenia.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'PARP inhibitors (olaparib) are beneficial in breast cancer patients with:',
 'Any breast cancer', 'BRCA mutation-associated HER2-negative breast cancer', 'Only ER-positive cancer', 'Only HER2-positive cancer', 'DCIS',
 'B', 'PARP inhibitors: for BRCA-mutated HER2-negative breast cancer. Exploit synthetic lethality. Approved for metastatic and adjuvant settings. Benefit from germline testing.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Locoregional recurrence of breast cancer is most commonly:',
 'In the contralateral breast', 'At the mastectomy scar or chest wall or ipsilateral nodal basins', 'In the liver', 'In the brain', 'In bone',
 'B', 'Locoregional recurrence: chest wall (after mastectomy), ipsilateral breast (after BCS), regional lymph nodes. Risk factors: positive margins, nodal involvement, high grade, no radiation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Follow-up after breast cancer treatment includes:',
 'CT scans every 3 months', 'Clinical exam annual mammography and symptom awareness', 'PET scan annually', 'Tumor markers monthly', 'No follow-up needed after 5 years',
 'B', 'Follow-up: history/physical every 3-6 months initially then annually, annual mammography. Tumor markers and routine imaging not recommended for asymptomatic patients (no survival benefit).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Fibroadenoma is:',
 'Premalignant lesion', 'Benign breast tumor common in young women', 'Always requires excision', 'Associated with high cancer risk', 'Inflammatory condition',
 'B', 'Fibroadenoma: most common benign breast tumor. Young women. Mobile, firm, well-circumscribed. May observe if <3 cm and classic features. Low cancer risk. May involute with menopause.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000019-0000-0000-0000-000000000019', 'a0000004-0000-0000-0000-000000000004',
 'Phyllodes tumor differs from fibroadenoma by:',
 'Smaller size', 'Rapid growth cellular stroma and can be malignant', 'Always benign', 'Not palpable', 'Only in elderly women',
 'B', 'Phyllodes tumor: stromal tumor (not epithelial). Rapid growth, larger size. Can be benign, borderline, or malignant. Requires wide excision (recurs with narrow margins). Very rare metastases for malignant type.', 'medium', 'knowledge');
