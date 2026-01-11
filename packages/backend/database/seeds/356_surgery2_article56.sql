-- Article 56: Radiotherapy - Principles and Types
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000056-0000-0000-0000-000000000056'::uuid, 'introduction', 1, 'Introduction to Radiotherapy', 'Radiotherapy uses ionizing radiation to damage DNA in cancer cells, leading to cell death. It is used in approximately 50% of all cancer patients for cure, palliation, or as adjuvant therapy. The goal is to deliver maximum dose to the tumor while minimizing damage to surrounding normal tissues. Radiation works primarily through double-strand DNA breaks, which are lethal to cells. Cancer cells are generally more radiosensitive than normal cells due to rapid division and impaired DNA repair mechanisms. Modern techniques including IMRT, IGRT, and stereotactic radiotherapy have improved precision and outcomes.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 'content', 2, 'Principles and Radiobiology', 'MECHANISM OF ACTION:
Ionizing radiation causes DNA damage:
- Direct action: radiation directly hits DNA
- Indirect action: radiation creates free radicals (from water) that damage DNA
Double-strand DNA breaks are the primary lethal lesion

RADIOBIOLOGY PRINCIPLES (4 Rs):
1. Repair: Normal cells repair sublethal damage better than tumor cells
2. Reassortment: Cells redistribute through cell cycle; G2/M most radiosensitive
3. Repopulation: Tumor cells repopulate between fractions
4. Reoxygenation: Hypoxic cells become oxygenated as tumor shrinks

OXYGEN EFFECT:
Oxygenated cells 2.5-3 times more radiosensitive than hypoxic cells
Oxygen Enhancement Ratio (OER): measure of this effect
Tumors often have hypoxic centers - less radiosensitive
Fractionation allows reoxygenation

CELL CYCLE RADIOSENSITIVITY:
Most sensitive: G2/M phase
Least sensitive: Late S phase
Cells cycling rapidly are more radiosensitive

RADIOSENSITIVITY OF TUMORS:
Highly sensitive: Lymphoma, seminoma, small cell carcinoma, leukemia
Moderately sensitive: Squamous cell carcinoma, adenocarcinoma
Radioresistant: Melanoma, renal cell carcinoma, sarcoma

RADIOSENSITIVITY OF NORMAL TISSUES:
Highly sensitive: Bone marrow, gonads, lymphoid tissue, GI epithelium
Moderately sensitive: Liver, kidney, lung
Radioresistant: Muscle, bone, nerve'),
('d0000056-0000-0000-0000-000000000056'::uuid, 'content', 3, 'Types of Radiotherapy', 'EXTERNAL BEAM RADIOTHERAPY (EBRT):
Radiation delivered from outside the body

Types by beam:
1. Photons (X-rays, gamma rays) - most common
   - Skin sparing (maximum dose below surface)
   - Megavoltage: Linear accelerator (LINAC)
   
2. Electrons - superficial tumors
   - Limited penetration
   - Skin cancers, chest wall

3. Protons/Heavy ions
   - Bragg peak: deposits maximum energy at specific depth
   - Minimal exit dose
   - Pediatric tumors, base of skull, prostate

MODERN TECHNIQUES:
3D Conformal RT (3DCRT):
- CT-based planning
- Multiple beams shaped to tumor volume

Intensity Modulated RT (IMRT):
- Variable intensity across beam
- Better conformity, spares normal tissue
- Used for head and neck, prostate

Image Guided RT (IGRT):
- Imaging before each fraction
- Accounts for tumor/organ motion

Stereotactic Radiosurgery (SRS):
- Single high-dose fraction
- Brain metastases, small lesions
- Gamma Knife, CyberKnife

Stereotactic Body RT (SBRT):
- Few high-dose fractions (3-5)
- Lung, liver, spine tumors

BRACHYTHERAPY:
Radioactive source placed in/near tumor
Higher dose to tumor, rapid fall-off
Types:
- Intracavitary: cervix, endometrium
- Interstitial: prostate (seeds), breast
- Surface: eye plaques

Dose rates:
- LDR (Low Dose Rate): traditional
- HDR (High Dose Rate): outpatient, short treatment time'),
('d0000056-0000-0000-0000-000000000056'::uuid, 'content', 4, 'Clinical Applications and Side Effects', 'CLINICAL INDICATIONS:
Definitive/Curative:
- Larynx, cervix, prostate (organ preservation)
- Head and neck cancers
- Lymphoma, seminoma

Adjuvant (post-operative):
- Breast (after lumpectomy)
- Rectal cancer
- High-risk prostate

Neoadjuvant (pre-operative):
- Rectal cancer (downstaging)
- Locally advanced cancers

Palliative:
- Bone metastases (pain relief)
- Brain metastases
- Superior vena cava obstruction
- Bleeding tumors

FRACTIONATION:
Conventional: 1.8-2 Gy per fraction, 5 days/week
Hyperfractionation: smaller doses, more fractions
Hypofractionation: larger doses, fewer fractions (SBRT)

SIDE EFFECTS:
Acute (during/shortly after treatment):
- Skin: erythema, desquamation
- Mucositis (head and neck)
- Nausea, diarrhea (abdominal RT)
- Fatigue
- Bone marrow suppression

Late (months to years):
- Fibrosis
- Lymphedema
- Secondary malignancy
- Organ-specific: strictures, fistulas
- Radiation necrosis (brain)

TISSUE TOLERANCE:
Spinal cord: 45-50 Gy
Brain: 60 Gy
Lung: 20 Gy (whole lung)
Kidney: 23 Gy
Liver: 30 Gy (whole liver)'),
('d0000056-0000-0000-0000-000000000056'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', '4 Rs of radiobiology: Repair, Reassortment, Repopulation, Reoxygenation. Oxygen enhances radiosensitivity (OER 2.5-3). G2/M phase most radiosensitive. Lymphoma/seminoma highly radiosensitive. Melanoma/RCC radioresistant. IMRT: intensity modulation for better conformity. SBRT: high-dose few fractions for small tumors. Brachytherapy: source in/near tumor. Palliative RT: bone mets, SVC obstruction, bleeding.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 'key_points', 6, 'Key Points Summary', 'Radiation causes DNA double-strand breaks. 4 Rs: Repair, Reassortment, Repopulation, Reoxygenation. Oxygenated cells more sensitive. External beam: LINAC, IMRT, SBRT. Brachytherapy: intracavitary, interstitial. Protons: Bragg peak advantage. Acute effects: skin, mucosa. Late effects: fibrosis, secondary cancer. Spinal cord tolerance: 45-50 Gy.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000056-0000-0000-0000-000000000056'::uuid, 1, 'Primary mechanism of radiation-induced cell death is:', 'Protein denaturation', 'Double-strand DNA breaks', 'Lipid peroxidation', 'Mitochondrial damage', 'Cell membrane rupture', 'B', 'Double-strand DNA breaks are the primary lethal lesion from ionizing radiation.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 2, 'The 4 Rs of radiobiology include all EXCEPT:', 'Repair', 'Reassortment', 'Resistance', 'Repopulation', 'Reoxygenation', 'C', 'The 4 Rs are Repair, Reassortment, Repopulation, and Reoxygenation. Resistance is not one of them.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 3, 'Most radiosensitive phase of cell cycle is:', 'G0', 'G1', 'S phase', 'G2/M', 'All phases equally', 'D', 'G2/M phase is the most radiosensitive. Late S phase is most resistant.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 4, 'Oxygen Enhancement Ratio (OER) indicates that oxygenated cells are:', 'Less radiosensitive', '2.5-3 times more radiosensitive', 'Equally radiosensitive', '10 times more radiosensitive', 'Not affected by radiation', 'B', 'OER of 2.5-3 means oxygenated cells are 2.5-3 times more radiosensitive than hypoxic cells.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 5, 'Which tumor is most radiosensitive?', 'Melanoma', 'Seminoma', 'Renal cell carcinoma', 'Osteosarcoma', 'Liposarcoma', 'B', 'Seminoma is highly radiosensitive. Melanoma and RCC are relatively radioresistant.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 6, 'Which tumor is most radioresistant?', 'Lymphoma', 'Small cell carcinoma', 'Melanoma', 'Seminoma', 'Leukemia', 'C', 'Melanoma is classically considered radioresistant along with RCC and sarcomas.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 7, 'Most radiosensitive normal tissue is:', 'Muscle', 'Bone', 'Bone marrow', 'Nerve', 'Cartilage', 'C', 'Bone marrow, gonads, lymphoid tissue, and GI epithelium are highly radiosensitive.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 8, 'IMRT stands for:', 'Intermittent Modulated Radiation Therapy', 'Intensity Modulated Radiation Therapy', 'Image Monitored Radiation Therapy', 'Internal Maximum Radiation Treatment', 'Interstitial Modulated RT', 'B', 'IMRT is Intensity Modulated Radiation Therapy - allows variable intensity across the beam for better tumor conformity.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 9, 'The advantage of proton therapy over photon therapy is:', 'Cheaper cost', 'Bragg peak - maximum dose at specific depth', 'Higher tissue penetration', 'No planning needed', 'Universal availability', 'B', 'Protons have a Bragg peak, depositing maximum energy at a specific depth with minimal exit dose.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 10, 'Stereotactic radiosurgery (SRS) is typically used for:', 'Large abdominal tumors', 'Brain metastases and small lesions', 'Whole body irradiation', 'Palliative treatment only', 'Blood cancers', 'B', 'SRS delivers high-dose single fraction treatment for brain metastases and small, well-defined lesions.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 11, 'Brachytherapy involves:', 'External radiation from machine', 'Radioactive source placed in or near tumor', 'Whole body irradiation', 'Chemotherapy combined with radiation', 'Proton beam therapy', 'B', 'Brachytherapy places radioactive sources directly in or near the tumor (intracavitary or interstitial).'),
('d0000056-0000-0000-0000-000000000056'::uuid, 12, 'Intracavitary brachytherapy is commonly used for:', 'Brain tumors', 'Cervical cancer', 'Lung cancer', 'Bone metastases', 'Melanoma', 'B', 'Intracavitary brachytherapy is standard treatment for cervical and endometrial cancer.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 13, 'Conventional fractionation typically uses:', '5-10 Gy per fraction', '1.8-2 Gy per fraction', '20 Gy per fraction', '0.5 Gy per fraction', 'Single dose', 'B', 'Conventional fractionation uses 1.8-2 Gy per fraction, 5 days per week.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 14, 'SBRT (Stereotactic Body Radiotherapy) is characterized by:', 'Multiple small fractions over weeks', 'Few high-dose fractions (3-5)', 'Single dose to whole body', 'Low-dose continuous treatment', 'Brachytherapy technique', 'B', 'SBRT uses few (3-5) high-dose fractions for small tumors in lung, liver, and spine.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 15, 'Palliative radiotherapy is commonly used for:', 'Bone metastases causing pain', 'Curative intent only', 'Post-operative adjuvant only', 'Radiosensitive tumors only', 'Young patients only', 'A', 'Palliative RT is commonly used for painful bone metastases, brain metastases, and SVC obstruction.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 16, 'Spinal cord radiation tolerance is approximately:', '20 Gy', '30 Gy', '45-50 Gy', '70 Gy', '100 Gy', 'C', 'Spinal cord tolerance is 45-50 Gy. Exceeding this causes radiation myelopathy.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 17, 'Acute side effects of radiation include all EXCEPT:', 'Skin erythema', 'Mucositis', 'Fatigue', 'Fibrosis', 'Nausea', 'D', 'Fibrosis is a LATE side effect. Acute effects include skin changes, mucositis, fatigue, and nausea.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 18, 'Late side effect of radiation is:', 'Mucositis', 'Skin erythema', 'Secondary malignancy', 'Acute diarrhea', 'Bone marrow suppression', 'C', 'Secondary malignancy is a late effect occurring years after treatment. Also fibrosis, necrosis, strictures.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 19, 'Adjuvant radiotherapy after breast-conserving surgery is given to:', 'Prevent local recurrence', 'Treat metastatic disease', 'Replace chemotherapy', 'Avoid hormone therapy', 'Reduce breast size', 'A', 'Adjuvant RT after lumpectomy reduces local recurrence and improves survival in breast cancer.'),
('d0000056-0000-0000-0000-000000000056'::uuid, 20, 'Neoadjuvant radiotherapy in rectal cancer is used for:', 'Post-operative adjuvant only', 'Downstaging before surgery', 'Palliation only', 'Metastatic disease', 'Emergency treatment', 'B', 'Neoadjuvant (pre-operative) RT in rectal cancer is used for downstaging and improving resectability.');
