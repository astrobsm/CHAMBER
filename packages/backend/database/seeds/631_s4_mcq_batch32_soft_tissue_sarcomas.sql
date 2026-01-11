-- Surgery 4 MCQ Question Bank - Batch 32
-- Section E: Oncology - Soft Tissue Sarcomas
-- 40 Questions

-- Topic: Soft Tissue Sarcomas
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000032-0000-0000-0000-000000000032', 'Soft Tissue Sarcomas', 'a0000004-0000-0000-0000-000000000004', 'Soft tissue sarcomas diagnosis, staging, and multimodal treatment', 32, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Soft tissue sarcomas arise from:',
 'Epithelial cells', 'Mesenchymal tissues (muscle fat connective tissue)', 'Lymphoid tissue only', 'Neuroendocrine cells', 'Melanocytes',
 'B', 'Soft tissue sarcomas: malignancies of mesenchymal origin. From fat (liposarcoma), muscle (leiomyosarcoma, rhabdomyosarcoma), fibrous tissue (fibrosarcoma), blood vessels (angiosarcoma), etc.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'The most common soft tissue sarcoma in adults is:',
 'Liposarcoma', 'Undifferentiated pleomorphic sarcoma and liposarcoma', 'Rhabdomyosarcoma', 'Ewing sarcoma', 'Synovial sarcoma',
 'B', 'Most common STS in adults: undifferentiated pleomorphic sarcoma (formerly MFH) and liposarcoma among the most frequent. Distribution varies by site. Rhabdomyosarcoma most common in children.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'The most common location for soft tissue sarcomas is:',
 'Head and neck', 'Extremities especially lower extremity', 'Chest wall', 'Abdominal wall', 'Back',
 'B', 'STS location: lower extremity (most common, ~40%), upper extremity (~15%), retroperitoneum (~15%), trunk (~10%), head/neck (~10%). Thigh is single most common site.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for soft tissue sarcomas include:',
 'Smoking primarily', 'Prior radiation exposure genetic syndromes and lymphedema', 'Alcohol', 'Diet', 'Obesity alone',
 'B', 'STS risk factors: prior radiation (latency 10+ years), genetic syndromes (Li-Fraumeni, NF1, retinoblastoma), chronic lymphedema (Stewart-Treves angiosarcoma), chemical exposure (vinyl chloride, herbicides).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Typical presentation of soft tissue sarcoma is:',
 'Rapidly growing painful mass', 'Painless enlarging mass', 'Weight loss only', 'Fever', 'Lymphadenopathy',
 'B', 'STS presentation: usually painless, slowly enlarging mass. Pain in ~30% (nerve involvement, hemorrhage). May be incidental finding. Size often large at diagnosis due to deep location, lack of symptoms.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Initial imaging for suspected soft tissue sarcoma is:',
 'X-ray only', 'MRI with contrast for extremity lesions', 'PET scan first', 'CT only', 'Ultrasound only',
 'B', 'STS imaging: MRI with contrast for extremity/trunk lesions (best soft tissue detail). CT for retroperitoneal/visceral sarcomas. Assess size, compartmental involvement, neurovascular structures.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Biopsy of suspected soft tissue sarcoma should:',
 'Not be performed', 'Be done with needle or incisional technique along the planned surgical incision line', 'Always be excisional', 'Be done at any convenient location', 'Be done after resection',
 'B', 'STS biopsy: core needle (preferred) or incisional biopsy. Along planned surgical incision to allow excision of biopsy tract. Avoid contamination of compartments. Referral to sarcoma center before biopsy ideal.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Excisional biopsy (unplanned excision or "whoops procedure") of sarcoma:',
 'Is always adequate', 'Often has inadequate margins and may require re-excision or wider surgery', 'Is the preferred approach', 'Prevents limb salvage', 'Has no impact on outcome',
 'B', 'Whoops procedure: unplanned excision without preoperative diagnosis. Frequently positive/close margins, tumor contamination. Requires re-excision, wider surgery, may compromise limb salvage. Avoid by proper workup.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Key prognostic factors in soft tissue sarcoma include:',
 'Patient age only', 'Tumor grade size depth and margin status', 'Gender', 'Race', 'Blood type',
 'B', 'STS prognosis: grade (most important), size (>5 cm worse), depth (deep to fascia worse), histologic subtype, margin status (R0 vs R1/R2), location, metastases. AJCC staging incorporates these.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Sarcoma grading (FNCLCC system) is based on:',
 'Size only', 'Differentiation mitotic rate and tumor necrosis', 'Location only', 'Depth only', 'Patient age',
 'B', 'FNCLCC grading: differentiation (1-3), mitotic count (1-3), necrosis (0-2). Total score determines grade 1-3. Grade is major determinant of metastatic risk. Some subtypes have defined grade (e.g., UPS = high grade).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'The primary treatment for localized soft tissue sarcoma is:',
 'Chemotherapy first', 'Wide surgical excision with negative margins', 'Radiation alone', 'Observation', 'Immunotherapy',
 'B', 'STS treatment: wide excision with negative margins (goal 1-2 cm or fascial barrier). Limb-sparing surgery standard for extremity. Radiation often added for high-grade, close margins, deep tumors.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Limb-sparing surgery for extremity sarcoma:',
 'Is never possible', 'Is possible in over 90 percent of cases with equivalent outcomes to amputation', 'Always requires amputation', 'Is only for small tumors', 'Has worse survival than amputation',
 'B', 'Limb salvage: possible in >90% of extremity STS. Randomized trials show equivalent survival to amputation when R0 achieved. Combined with radiation. Amputation reserved for unresectable/recurrent.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Radiation therapy in soft tissue sarcoma:',
 'Is never used', 'Improves local control when combined with surgery especially for high-grade and close margins', 'Replaces surgery', 'Is only palliative', 'Decreases survival',
 'B', 'RT in STS: improves local control (90%+). Pre-op or post-op. Pre-op: smaller field, better limb function, wound complications. Post-op: no delay to surgery, higher dose needed. For high-grade, large, deep tumors.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Neoadjuvant (preoperative) radiation for soft tissue sarcoma compared to adjuvant:',
 'Is never used', 'Has smaller radiation field but higher wound complication rates', 'Has larger radiation field', 'Has no differences', 'Is always preferred',
 'B', 'Pre-op RT: smaller field (treats tumor + margin), lower dose, less late effects (fibrosis, edema), but higher acute wound complications (~35% vs 17%). Post-op: larger field, higher dose, more late effects.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'The role of chemotherapy in soft tissue sarcoma:',
 'Is always required', 'Is considered for high-grade tumors metastatic disease and certain chemosensitive histologies', 'Is never effective', 'Is only for low-grade tumors', 'Replaces surgery',
 'B', 'Chemo in STS: metastatic disease (doxorubicin-based). Neoadjuvant/adjuvant controversial - consider for high-grade, large tumors. Some histologies more sensitive (synovial sarcoma, rhabdomyosarcoma).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'First-line chemotherapy for metastatic soft tissue sarcoma is typically:',
 'Cisplatin', 'Doxorubicin-based regimens (doxorubicin alone or with ifosfamide)', 'Paclitaxel', 'Gemcitabine only', 'Immunotherapy',
 'B', 'Metastatic STS chemo: doxorubicin single agent or doxorubicin + ifosfamide (higher response rate, more toxicity). Alternatives: gemcitabine + docetaxel (leiomyosarcoma), trabectedin, eribulin.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Soft tissue sarcomas typically metastasize to:',
 'Lymph nodes first', 'Lungs (hematogenous spread)', 'Brain', 'Bone', 'Skin',
 'B', 'STS metastases: hematogenous, lung most common site. Liver metastases more common with GI/retroperitoneal sarcomas. Lymph node mets rare (<5%), except certain types (synovial sarcoma, epithelioid sarcoma, clear cell, rhabdomyosarcoma).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Staging workup for soft tissue sarcoma includes:',
 'Physical exam only', 'Local imaging (MRI) and chest CT to assess for pulmonary metastases', 'PET scan only', 'No workup needed', 'Brain MRI always',
 'B', 'STS staging: MRI of primary (or CT for retroperitoneal), chest CT (lung mets). Chest X-ray may be adequate for low-grade. PET useful for some subtypes, assessing treatment response. CT abdomen/pelvis for certain histologies.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Liposarcoma:',
 'Is a benign tumor', 'Is the most common retroperitoneal sarcoma with several subtypes of varying aggressiveness', 'Only occurs in extremities', 'Is always low grade', 'Never recurs',
 'B', 'Liposarcoma: most common retroperitoneal sarcoma. Subtypes: well-differentiated (low grade, locally aggressive), dedifferentiated (high grade), myxoid (chemo-sensitive), pleomorphic (aggressive).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Well-differentiated liposarcoma/atypical lipomatous tumor:',
 'Frequently metastasizes', 'Rarely metastasizes but can locally recur and dedifferentiate', 'Is treated with chemotherapy first', 'Is the same as lipoma', 'Requires amputation',
 'B', 'Well-differentiated liposarcoma: low metastatic potential (<2%). Local recurrence risk. Can dedifferentiate (become high grade) especially in retroperitoneum. Wide excision. Monitor for dedifferentiation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Leiomyosarcoma:',
 'Only occurs in the uterus', 'Arises from smooth muscle and commonly occurs in the uterus retroperitoneum and extremity', 'Is benign', 'Never metastasizes', 'Is treated with radiation only',
 'B', 'Leiomyosarcoma: smooth muscle origin. Sites: uterus, retroperitoneum/mesentery, extremity, vascular (IVC). Variable grade. Treatment: surgery. Relatively chemoresistant; gemcitabine + docetaxel may be used.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Gastrointestinal stromal tumor (GIST) is:',
 'A carcinoma', 'The most common mesenchymal tumor of the GI tract with KIT or PDGFRA mutations', 'Always benign', 'Not a sarcoma', 'Treated with chemotherapy',
 'B', 'GIST: most common GI mesenchymal tumor. Arises from interstitial cells of Cajal (pacemaker cells). Most have KIT (85%) or PDGFRA (10%) mutations. Treatment: surgery, imatinib for advanced/adjuvant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Imatinib in GIST:',
 'Is chemotherapy', 'Is a tyrosine kinase inhibitor targeting KIT and PDGFRA used in advanced disease and as adjuvant', 'Has no role', 'Is only palliative', 'Is immunotherapy',
 'B', 'Imatinib: TKI, first targeted therapy for solid tumor. Adjuvant for high-risk resected GIST (3 years). First-line for metastatic/unresectable. Dramatic responses. Resistance: switch to sunitinib, regorafenib.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Synovial sarcoma:',
 'Arises from synovium', 'Is characterized by SS18-SSX fusion and occurs mostly in young adults near joints', 'Only affects elderly', 'Is benign', 'Does not respond to chemotherapy',
 'B', 'Synovial sarcoma: not from synovium despite name. Young adults, near joints (not in joints). Characteristic SS18-SSX translocation. Relatively chemosensitive (ifosfamide-based). High risk of late metastases.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Rhabdomyosarcoma:',
 'Is most common in elderly', 'Is the most common soft tissue sarcoma in children arising from skeletal muscle', 'Never affects adults', 'Is treated with surgery alone', 'Is benign',
 'B', 'Rhabdomyosarcoma: most common STS in children. Skeletal muscle origin. Subtypes: embryonal (most common), alveolar, pleomorphic (adults). Multimodal treatment: chemo, surgery, RT. Chemo-sensitive.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Angiosarcoma:',
 'Is benign', 'Is an aggressive vascular malignancy associated with radiation lymphedema and vinyl chloride exposure', 'Only affects children', 'Is not related to radiation', 'Has excellent prognosis',
 'B', 'Angiosarcoma: aggressive vascular tumor. Risk factors: radiation (breast, head/neck), chronic lymphedema (Stewart-Treves), vinyl chloride (liver). Poor prognosis. Treatment: surgery if feasible, chemo (taxanes, doxorubicin).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Stewart-Treves syndrome refers to:',
 'Any arm swelling', 'Angiosarcoma arising in setting of chronic lymphedema classically post-mastectomy', 'Benign lymphedema', 'Lipedema', 'Chronic venous insufficiency',
 'B', 'Stewart-Treves: lymphangiosarcoma (angiosarcoma) in chronically lymphedematous limb. Classic: arm after mastectomy with axillary dissection. Also after any cause of chronic lymphedema. Purple-red nodules. Poor prognosis.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Retroperitoneal sarcomas:',
 'Are usually small at diagnosis', 'Are often large at diagnosis with liposarcoma and leiomyosarcoma being most common', 'Are treated with chemotherapy first', 'Have excellent prognosis', 'Never recur',
 'B', 'Retroperitoneal sarcomas: large at diagnosis (often >10-15 cm), late symptoms. Most common: liposarcoma (most frequent), leiomyosarcoma. Treatment: surgery (challenging, multivisceral resection). High local recurrence rates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Desmoid tumors (aggressive fibromatosis):',
 'Are malignant with metastatic potential', 'Are locally aggressive but do not metastasize', 'Are easily treated', 'Always require surgery', 'Have GIST mutations',
 'B', 'Desmoid tumors: locally aggressive, no metastatic potential. Associated with FAP (Gardner syndrome) or sporadic. Treatment: observation (many stabilize), surgery, radiation, medical (NSAIDs, anti-estrogens, sorafenib).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Desmoid tumors are associated with:',
 'Li-Fraumeni syndrome', 'Familial adenomatous polyposis (FAP/Gardner syndrome)', 'Lynch syndrome', 'BRCA mutations', 'VHL syndrome',
 'B', 'Desmoid association: FAP/Gardner syndrome (APC mutation). Intra-abdominal desmoids common in FAP. Sporadic desmoids often have somatic CTNNB1 mutations. May arise at surgical sites.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Undifferentiated pleomorphic sarcoma (formerly malignant fibrous histiocytoma):',
 'Is low grade', 'Is a diagnosis of exclusion after ruling out other specific sarcoma types', 'Has specific genetic markers', 'Is benign', 'Is treated with radiation only',
 'B', 'UPS: diagnosis of exclusion when specific lineage cannot be identified. High grade by definition. Older patients, extremity/retroperitoneum. Treatment: surgery + radiation. Adjuvant chemo considered for high-risk.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Ewing sarcoma:',
 'Only affects adults', 'Is a small round blue cell tumor with EWSR1 translocation primarily affecting children and young adults', 'Is only in soft tissue', 'Is treated with surgery alone', 'Is benign',
 'B', 'Ewing sarcoma: bone or soft tissue. Children/young adults. EWSR1-FLI1 (most common) translocation. Small round blue cells. Multimodal: neoadjuvant chemo, surgery/RT, adjuvant chemo. Chemo-sensitive.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Clear cell sarcoma:',
 'Is the same as clear cell carcinoma', 'Is a melanin-producing soft tissue sarcoma with EWSR1-ATF1 fusion also called melanoma of soft parts', 'Is benign', 'Does not metastasize', 'Only affects elderly',
 'B', 'Clear cell sarcoma: "melanoma of soft parts." EWSR1-ATF1 fusion. Tendons/aponeuroses of young adults. Melanin-producing. Lymph node mets more common than typical STS. Chemoresistant. Surgery primary treatment.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Epithelioid sarcoma:',
 'Is the same as epithelial carcinoma', 'Is a rare sarcoma with INI1 loss that often presents in the distal extremity of young adults', 'Only affects elderly', 'Never metastasizes', 'Is treated with radiation only',
 'B', 'Epithelioid sarcoma: rare, distal extremity (classic) or proximal (more aggressive). Young adults. INI1/SMARCB1 loss. Higher rate of lymph node mets. Sentinel node biopsy considered. Tazemetostat (EZH2 inhibitor) approved.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Kaposi sarcoma:',
 'Is not related to infection', 'Is caused by human herpesvirus 8 and associated with immunosuppression especially HIV/AIDS', 'Is always rapidly fatal', 'Only affects skin', 'Is a carcinoma',
 'B', 'Kaposi sarcoma: HHV-8 (KSHV) associated. Types: classic (elderly Mediterranean), endemic (Africa), iatrogenic (transplant), epidemic (AIDS-related). Vascular tumor. Treatment: antiretroviral therapy (AIDS), local therapy, chemo.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Solitary fibrous tumor:',
 'Is always benign', 'Can be benign or malignant and is characterized by STAT6 nuclear expression', 'Only occurs in lung', 'Is the same as desmoid', 'Has no molecular markers',
 'B', 'Solitary fibrous tumor: NAB2-STAT6 fusion (STAT6 IHC diagnostic). Spectrum from benign to malignant. Pleura, meninges, soft tissue. Size, mitoses, necrosis predict malignant behavior. Surgery primary treatment.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'The 5-year survival rate for localized soft tissue sarcoma after complete resection is approximately:',
 '20-30 percent', '50-70 percent depending on grade and histology', '90 percent', 'Less than 10 percent', '100 percent',
 'B', 'STS survival: localized disease 5-year survival ~65-80% overall. Varies by grade: low-grade >90%, high-grade ~50-60%. Size, depth, margins also impact. Metastatic disease: median survival 12-18 months.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000032-0000-0000-0000-000000000032', 'a0000004-0000-0000-0000-000000000004',
 'Resection of pulmonary metastases from soft tissue sarcoma:',
 'Is never indicated', 'Can be curative in selected patients with limited slow-growing disease', 'Worsens survival', 'Is only palliative', 'Requires chemotherapy first always',
 'B', 'Pulmonary metastasectomy: for STS lung mets in selected patients. Favorable factors: complete resection possible, limited number of mets, long disease-free interval, low grade. 5-year survival 20-40% in selected series.', 'hard', 'knowledge');
