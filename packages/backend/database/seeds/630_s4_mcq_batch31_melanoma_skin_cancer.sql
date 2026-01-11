-- Surgery 4 MCQ Question Bank - Batch 31
-- Section E: Oncology - Melanoma and Skin Cancer
-- 40 Questions

-- Topic: Melanoma and Skin Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000031-0000-0000-0000-000000000031', 'Melanoma and Skin Cancer', 'a0000004-0000-0000-0000-000000000004', 'Melanoma, basal cell carcinoma, and squamous cell carcinoma of the skin', 31, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'The most common skin cancer is:',
 'Melanoma', 'Basal cell carcinoma', 'Squamous cell carcinoma', 'Merkel cell carcinoma', 'Dermatofibrosarcoma protuberans',
 'B', 'BCC: 80% of non-melanoma skin cancers, most common malignancy in humans. Locally invasive, rarely metastasizes. SCC: second most common. Melanoma: most deadly but less common.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'The primary risk factor for skin cancer is:',
 'Age alone', 'Ultraviolet radiation exposure', 'Smoking', 'Diet', 'Obesity',
 'B', 'UV radiation: primary risk factor for all skin cancers. Sunlight, tanning beds. Other factors: fair skin, family history, immunosuppression, HPV (for SCC), prior radiation, arsenic exposure.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Basal cell carcinoma typically presents as:',
 'Rapidly growing painful mass', 'A pearly papule or nodule with telangiectasia often with rolled borders', 'Black macule', 'Scaly patch only', 'Subcutaneous mass',
 'B', 'BCC appearance: pearly/translucent papule or nodule, rolled borders, telangiectasias. May have central ulceration (rodent ulcer). Subtypes: nodular (most common), superficial, morpheaform/sclerosing.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Treatment options for basal cell carcinoma include:',
 'Chemotherapy only', 'Surgical excision Mohs surgery curettage cryotherapy and topical therapies', 'Radiation only', 'Immunotherapy only', 'Observation only',
 'B', 'BCC treatment: surgical excision (standard), Mohs micrographic surgery (high-risk areas, recurrent), curettage and electrodesiccation (low-risk), cryotherapy, topical imiquimod or 5-FU (superficial), radiation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Mohs micrographic surgery is indicated for:',
 'All skin cancers', 'Skin cancers in high-risk locations recurrent tumors or tumors with aggressive histology', 'Only melanoma', 'Only large tumors', 'Only metastatic disease',
 'B', 'Mohs surgery: staged excision with intraoperative margin assessment. For: high-risk areas (face, ears, nose, eyelids), recurrent tumors, aggressive histology, large tumors, ill-defined borders. Tissue-sparing.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Hedgehog pathway inhibitors (vismodegib, sonidegib) are used for:',
 'All BCCs', 'Advanced or metastatic BCC or locally advanced BCC not suitable for surgery or radiation', 'Melanoma only', 'SCC only', 'All skin cancers',
 'B', 'Hedgehog inhibitors: for advanced BCC (locally advanced unresectable or metastatic). BCC often has Hedgehog pathway mutations (PTCH1, SMO). Side effects: muscle spasms, alopecia, dysgeusia.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Cutaneous squamous cell carcinoma typically presents as:',
 'Pearly nodule', 'Scaly keratotic papule plaque or nodule often arising from actinic keratosis', 'Black macule', 'Vesicle', 'Subcutaneous nodule',
 'B', 'SCC appearance: firm, keratotic, scaling papule/plaque/nodule. May ulcerate, have cutaneous horn. Often arises from actinic keratosis (precursor). Sun-exposed areas. Can be tender or painful.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'High-risk features of cutaneous SCC that increase metastatic potential include:',
 'Small size', 'Size over 2 cm depth over 4 mm poor differentiation perineural invasion and immunosuppression', 'Location on trunk', 'Well-differentiated histology', 'Superficial invasion',
 'B', 'High-risk SCC: size >2 cm, thickness >4 mm or Clark level IV+, poor differentiation, perineural/lymphovascular invasion, immunosuppression, lip/ear location, recurrence, arising in scar/radiation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for localized cutaneous SCC is:',
 'Observation', 'Surgical excision with appropriate margins or Mohs surgery for high-risk tumors', 'Chemotherapy', 'Targeted therapy', 'Immunotherapy first-line',
 'B', 'SCC treatment: surgical excision (4-6 mm margins depending on risk). Mohs for high-risk areas/tumors. Radiation alternative. Adjuvant RT for perineural invasion, positive margins. Sentinel node for high-risk considered.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Cemiplimab and pembrolizumab for cutaneous SCC are:',
 'Chemotherapy drugs', 'PD-1 checkpoint inhibitors for advanced or metastatic disease', 'Targeted therapies', 'Hedgehog inhibitors', 'Not approved for SCC',
 'B', 'Cemiplimab and pembrolizumab: PD-1 inhibitors approved for locally advanced or metastatic SCC not amenable to curative surgery or radiation. High response rates. Changed treatment paradigm.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Melanoma arises from:',
 'Basal keratinocytes', 'Melanocytes (pigment-producing cells)', 'Langerhans cells', 'Merkel cells', 'Fibroblasts',
 'B', 'Melanoma: malignancy of melanocytes. Can arise in skin (most common), eye (uveal), mucosa, or meninges. Aggressive with propensity for metastasis. Early detection critical.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for melanoma include:',
 'Dark skin only', 'UV exposure fair skin family history dysplastic nevi and immunosuppression', 'Old age only', 'Male gender only', 'Smoking',
 'B', 'Melanoma risk factors: UV exposure (intermittent intense), fair skin, red/blonde hair, freckling, many nevi, dysplastic nevi, family history, personal history, CDKN2A mutations, immunosuppression.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'The ABCDE criteria for melanoma refer to:',
 'Staging criteria', 'Clinical warning signs: Asymmetry Border irregularity Color variation Diameter over 6 mm and Evolution', 'Histologic features', 'Treatment options', 'Risk categories',
 'B', 'ABCDE: clinical warning signs. A = asymmetry, B = border irregularity, C = color variation (multiple shades), D = diameter >6 mm, E = evolution (changing lesion). Ugly duckling sign also useful.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'The major histologic subtypes of melanoma include:',
 'Only nodular', 'Superficial spreading nodular lentigo maligna and acral lentiginous', 'Only lentigo maligna', 'Only superficial', 'Only desmoplastic',
 'B', 'Melanoma subtypes: superficial spreading (most common, 70%), nodular (worse prognosis, vertical growth), lentigo maligna (sun-damaged skin, elderly), acral lentiginous (palms, soles, subungual - most common in dark skin).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Breslow thickness in melanoma:',
 'Is not prognostic', 'Is the most important prognostic factor measured in millimeters from granular layer to deepest tumor cell', 'Measures horizontal spread', 'Is the same as Clark level', 'Is not included in staging',
 'B', 'Breslow thickness: most important prognostic factor for localized melanoma. Measured in mm from granular layer to deepest invasive cell. Determines T stage and sentinel node biopsy indication.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Ulceration in primary melanoma:',
 'Has no prognostic significance', 'Is associated with worse prognosis and upstages the T classification', 'Improves prognosis', 'Only occurs in thin melanomas', 'Is treated differently',
 'B', 'Ulceration: adverse prognostic factor. Upstages T classification (e.g., T1a to T1b if ulcerated). Determined histologically. Associated with higher metastatic risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Surgical margins for primary melanoma depend on:',
 'Patient preference', 'Breslow thickness with wider margins for thicker tumors', 'Location only', 'Age', 'Histologic subtype',
 'B', 'Excision margins: in situ (0.5-1 cm), <=1 mm thickness (1 cm), 1.01-2 mm (1-2 cm), >2 mm (2 cm). Based on trials showing no benefit of wider margins. Functional/cosmetic considerations may modify.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Sentinel lymph node biopsy in melanoma is indicated for:',
 'All melanomas', 'Melanomas over 0.8 mm or thinner with high-risk features without clinical nodal disease', 'Only metastatic melanoma', 'Only acral melanoma', 'Only nodular melanoma',
 'B', 'SLNB: for T1b (>0.8 mm or any ulceration) and above without clinical nodal disease. Staging procedure, guides adjuvant therapy. Positive SLN: completion lymphadenectomy vs observation + adjuvant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'If sentinel lymph node biopsy is positive in melanoma:',
 'No further treatment needed', 'Options include completion lymph node dissection or observation with adjuvant systemic therapy', 'Chemotherapy only', 'Radiation only', 'Repeat biopsy',
 'B', 'Positive SLNB: historically completion LND, but DeCOG-SLT and MSLT-II showed observation safe for limited SLN involvement. Adjuvant therapy (immunotherapy or targeted) based on stage and nodal burden.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Adjuvant therapy for high-risk resected melanoma includes:',
 'Chemotherapy', 'Checkpoint inhibitors (nivolumab, pembrolizumab) or targeted therapy for BRAF-mutant melanoma', 'Radiation only', 'Interferon only', 'No adjuvant therapy available',
 'B', 'Adjuvant melanoma: pembrolizumab, nivolumab (PD-1 inhibitors). BRAF V600-mutant: dabrafenib + trametinib option. For stage IIB/C and III. Improved RFS. Interferon rarely used now.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'BRAF mutations in melanoma:',
 'Are rare', 'Are found in about 40-50 percent of cutaneous melanomas and are targetable with BRAF/MEK inhibitors', 'Have no treatment', 'Are only in mucosal melanoma', 'Are in all melanomas',
 'B', 'BRAF V600 mutations: 40-50% of cutaneous melanomas. Treated with BRAF inhibitors (vemurafenib, dabrafenib, encorafenib) + MEK inhibitors (trametinib, cobimetinib, binimetinib). High response rates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for metastatic melanoma includes:',
 'Chemotherapy with dacarbazine', 'Checkpoint inhibitor combinations or BRAF/MEK inhibitors for BRAF-mutant tumors', 'Radiation only', 'Interferon', 'Surgery only',
 'B', 'Metastatic melanoma: immunotherapy (ipilimumab + nivolumab best responses, pembrolizumab, nivolumab). BRAF-mutant: BRAF/MEK inhibitors or immunotherapy. Choice depends on disease features, patient factors.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Ipilimumab is a:',
 'BRAF inhibitor', 'CTLA-4 checkpoint inhibitor', 'MEK inhibitor', 'PD-1 inhibitor', 'Chemotherapy drug',
 'B', 'Ipilimumab: anti-CTLA-4 antibody. First checkpoint inhibitor approved for melanoma. Often combined with nivolumab (anti-PD-1) for higher response rates. More immune-related adverse events than PD-1 alone.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Combination nivolumab plus ipilimumab in melanoma:',
 'Is never used', 'Has the highest response rates but also higher toxicity than either agent alone', 'Has lower response than single agents', 'Is only for maintenance', 'Is only adjuvant',
 'B', 'Nivo + ipi: CheckMate-067. Highest ORR (~58%), best long-term survival. Higher irAE rates (55% grade 3-4). Consider for patients who can tolerate toxicity, high tumor burden, brain mets.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Immune-related adverse events from checkpoint inhibitors include:',
 'Alopecia only', 'Colitis hepatitis pneumonitis thyroiditis and skin reactions', 'Nausea only', 'Myelosuppression only', 'No significant side effects',
 'B', 'irAEs: result from immune activation. Any organ: colitis (diarrhea), hepatitis, pneumonitis, dermatitis, thyroiditis, hypophysitis, nephritis, myocarditis. Management: steroids, hold therapy. Early recognition critical.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Melanoma brain metastases:',
 'Never occur', 'Are common and can be treated with surgery stereotactic radiosurgery and immunotherapy', 'Are always untreatable', 'Only occur in stage II', 'Require whole brain radiation always',
 'B', 'Melanoma brain mets: common (up to 40%). Treatment: surgery for solitary/symptomatic, SRS for limited number, immunotherapy (PD-1 inhibitors, combo) active in brain. WBRT less favored due to toxicity.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Uveal melanoma differs from cutaneous melanoma in that:',
 'They are the same', 'It arises in the eye has different driver mutations and metastasizes primarily to the liver', 'It never metastasizes', 'It has BRAF mutations', 'It is treated the same way',
 'B', 'Uveal melanoma: from melanocytes in uvea (iris, ciliary body, choroid). GNAQ/GNA11 mutations (not BRAF). Metastasizes to liver (hepatotropic). Treatment: enucleation, brachytherapy. Tebentafusp for HLA-A*02:01+.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Acral lentiginous melanoma:',
 'Is the most common type overall', 'Occurs on palms soles and nail beds and is the most common type in dark-skinned individuals', 'Is benign', 'Is related to sun exposure', 'Only affects Caucasians',
 'B', 'Acral lentiginous: palms, soles, subungual (nail). Most common type in Black, Asian, Hispanic populations. Not related to UV exposure. Often diagnosed late. Look for: nail streak (Hutchinson sign).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Hutchinson sign in subungual melanoma refers to:',
 'Pain on pressure', 'Extension of pigment to the proximal or lateral nail fold', 'Onycholysis', 'Nail thickening', 'Splinter hemorrhage',
 'B', 'Hutchinson sign: pigmentation extending from nail bed to surrounding nail fold skin. Highly suggestive of subungual melanoma. Warrants biopsy. Distinguish from benign melanonychia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Merkel cell carcinoma:',
 'Is the same as melanoma', 'Is a rare aggressive neuroendocrine skin cancer associated with Merkel cell polyomavirus', 'Is benign', 'Is treated with observation', 'Never metastasizes',
 'B', 'Merkel cell carcinoma: rare, aggressive. Associated with MCC polyomavirus (MCPyV) and UV exposure. Often elderly, immunosuppressed. Treatment: wide excision, SLNB, adjuvant RT. Checkpoint inhibitors for advanced.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Dermatofibrosarcoma protuberans (DFSP):',
 'Is a melanocytic tumor', 'Is a rare dermal sarcoma with characteristic COL1A1-PDGFB fusion treated with wide excision', 'Is highly metastatic', 'Is treated with chemotherapy first', 'Is the same as dermatofibroma',
 'B', 'DFSP: rare fibrohistiocytic tumor. Low metastatic potential but locally aggressive. COL1A1-PDGFB fusion. Treatment: Mohs or wide excision. Imatinib (PDGF inhibitor) for unresectable/metastatic.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Field cancerization in skin cancer refers to:',
 'A single tumor', 'Widespread areas of sun-damaged skin with multiple precancerous and cancerous lesions', 'Metastatic spread', 'Deep invasion', 'Lymph node involvement',
 'B', 'Field cancerization: chronic UV damage creates field of genetically altered cells. Multiple actinic keratoses, SCC, BCC in same area. Field treatment: topical 5-FU, imiquimod, PDT. Surveillance important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Actinic keratosis is:',
 'A melanoma precursor', 'A precursor to squamous cell carcinoma', 'Benign with no malignant potential', 'A type of melanoma', 'A viral infection',
 'B', 'Actinic keratosis: precancerous lesion from cumulative UV exposure. Scaly, rough patches on sun-exposed skin. 5-10% progress to SCC. Treatment: cryotherapy, topical therapies, PDT, curettage.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'The most common site of melanoma in men is:',
 'Head and neck', 'Back', 'Lower extremity', 'Palms', 'Face',
 'B', 'Melanoma location by sex: Men - back (most common), women - lower extremity (most common). Head/neck, trunk also common in both. Reflects sun exposure patterns.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'The most common site of melanoma in women is:',
 'Back', 'Lower extremity', 'Trunk', 'Upper extremity', 'Face',
 'B', 'Women: lower extremities most common site for melanoma. Related to sun exposure patterns (legs exposed in skirts/dresses). Men: back most common. Important for full skin examination.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Amelanotic melanoma:',
 'Is more common than pigmented', 'Is melanoma lacking melanin pigment that can be difficult to diagnose clinically', 'Is always benign', 'Only occurs in dark-skinned individuals', 'Has better prognosis',
 'B', 'Amelanotic melanoma: lacks pigment, appears pink/red/skin-colored. Can be missed or misdiagnosed. High index of suspicion for non-healing pink lesions. Same management as pigmented melanoma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Lentigo maligna melanoma typically occurs:',
 'On the trunk', 'On chronically sun-damaged skin of elderly patients often on the face', 'On acral surfaces', 'In children', 'On mucous membranes',
 'B', 'Lentigo maligna: in situ melanoma on chronically sun-damaged skin (head/neck in elderly). Lentigo maligna melanoma: invasive form. Large, irregular tan/brown macule. Treatment: surgical excision, may need wide margins.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004',
 'Follow-up after treatment of melanoma includes:',
 'No follow-up needed', 'Regular skin examination history and physical with imaging based on stage and risk', 'CT scans weekly', 'Only blood work', 'Biopsy every visit',
 'B', 'Melanoma follow-up: skin exams (full body), lymph node exam, review of systems. Frequency based on stage. Imaging (CT, PET) for stage IIB+ or symptomatic. Lifelong surveillance for new primaries. Education on self-exam.', 'medium', 'knowledge');
