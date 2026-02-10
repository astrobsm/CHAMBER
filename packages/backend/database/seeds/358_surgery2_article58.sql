-- Article 58: Molecular Surgery and Targeted Therapy
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000058-0000-0000-0000-000000000058'::uuid, 'introduction', 1, 'Introduction to Molecular Surgery', 'Molecular surgery represents the paradigm shift from anatomical to biological surgery, where treatment decisions are guided by molecular and genetic characteristics of tumors rather than just location and stage. Targeted therapies exploit specific molecular vulnerabilities in cancer cells, offering precision treatment with potentially fewer side effects than traditional chemotherapy. Key concepts include oncogene addiction, synthetic lethality, and biomarker-driven therapy. Understanding molecular pathways, receptor biology, and genetic mutations is now essential for modern surgical oncology. This approach enables personalized cancer treatment and influences surgical decision-making.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 'content', 2, 'Key Molecular Concepts', 'ONCOGENES AND TUMOR SUPPRESSORS:
Oncogenes: Promote cell growth when activated
- HER2, EGFR, KRAS, BRAF, c-MYC
- Gain of function mutations
- Only one copy needs mutation

Tumor Suppressor Genes: Inhibit growth when functional
- TP53, RB1, BRCA1/2, APC, PTEN
- Loss of function mutations
- Both copies must be inactivated (two-hit hypothesis)

RECEPTOR TYROSINE KINASES:
Transmembrane receptors activated by growth factors
Activate downstream signaling pathways
Examples: EGFR, HER2, VEGFR, PDGFR, c-KIT
Target for many cancer drugs

KEY SIGNALING PATHWAYS:
RAS-RAF-MEK-ERK pathway: Cell proliferation
PI3K-AKT-mTOR pathway: Cell survival, metabolism
JAK-STAT pathway: Cytokine signaling

BIOMARKERS IN ONCOLOGY:
Predictive biomarkers: Predict response to specific therapy
- HER2+ predicts response to trastuzumab
- EGFR mutation predicts response to TKIs
Prognostic biomarkers: Predict outcome regardless of treatment
- Ki-67, tumor grade
Companion diagnostics: Tests paired with specific drugs'),
('d2000058-0000-0000-0000-000000000058'::uuid, 'content', 3, 'Targeted Therapies', 'MONOCLONAL ANTIBODIES (suffix: -mab):
Trastuzumab (Herceptin):
- Targets HER2 receptor
- HER2+ breast cancer, gastric cancer
- Cardiotoxicity risk

Cetuximab, Panitumumab:
- Target EGFR
- Colorectal cancer (KRAS wild-type only)
- KRAS mutation predicts resistance

Bevacizumab (Avastin):
- Targets VEGF (angiogenesis inhibitor)
- Colorectal, lung, ovarian, brain cancers
- Bleeding, wound healing complications - important for surgeons

Rituximab:
- Targets CD20 on B-cells
- Lymphoma, leukemia

SMALL MOLECULE INHIBITORS (suffix: -ib):
Tyrosine Kinase Inhibitors (TKIs):
Imatinib (Gleevec):
- BCR-ABL in CML
- c-KIT in GIST - revolutionized treatment
- First successful targeted therapy

EGFR TKIs:
- Erlotinib, Gefitinib, Osimertinib
- EGFR-mutant lung cancer (exon 19 deletion, L858R)

BRAF Inhibitors:
- Vemurafenib, Dabrafenib
- BRAF V600E mutant melanoma

ALK Inhibitors:
- Crizotinib, Alectinib
- ALK-rearranged lung cancer

mTOR Inhibitors:
- Everolimus
- Renal cell carcinoma, breast cancer

PARP Inhibitors:
- Olaparib, Niraparib
- BRCA-mutant breast and ovarian cancer
- Synthetic lethality'),
('d2000058-0000-0000-0000-000000000058'::uuid, 'content', 4, 'Surgical Implications and Applications', 'IMPLICATIONS FOR SURGICAL ONCOLOGY:
Neoadjuvant Targeted Therapy:
- May downstage tumors allowing resection
- Example: Imatinib for unresectable GIST

Timing of Surgery:
- Bevacizumab: Hold 4-6 weeks before/after surgery (wound healing)
- Some TKIs: Stop 1-2 weeks pre-operatively

Intraoperative Considerations:
- Bleeding risk with anti-angiogenic agents
- Surgical emergencies may occur during treatment

SPECIFIC DISEASE APPLICATIONS:
GIST (Gastrointestinal Stromal Tumor):
- c-KIT mutation in 80-85%
- Imatinib revolutionized treatment
- Neoadjuvant for borderline resectable
- Adjuvant for high-risk tumors

Colorectal Cancer:
- KRAS/NRAS testing mandatory before anti-EGFR therapy
- Only wild-type responds to cetuximab/panitumumab
- MSI-H tumors respond to immunotherapy

Breast Cancer:
- HER2 testing on all tumors
- ER/PR status for hormone therapy
- Oncotype DX for chemotherapy decisions

Lung Cancer:
- EGFR, ALK, ROS1, BRAF, KRAS testing
- Guides first-line systemic therapy

Melanoma:
- BRAF testing for V600 mutations
- BRAF/MEK inhibitor combinations

PRECISION MEDICINE:
Next-generation sequencing (NGS)
Tumor profiling panels
Liquid biopsy - ctDNA
Treatment based on molecular profile
Basket trials - treat mutation, not site'),
('d2000058-0000-0000-0000-000000000058'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Oncogenes: gain of function. Tumor suppressors: loss of function (two-hit). HER2+: trastuzumab. KRAS wild-type: anti-EGFR therapy. BRAF V600E: vemurafenib. BRCA+: PARP inhibitors. Imatinib for GIST (c-KIT+). Bevacizumab: hold 4-6 weeks around surgery. KRAS/NRAS testing mandatory in CRC before anti-EGFR. Monoclonal antibodies (-mab), small molecules (-ib).'),
('d2000058-0000-0000-0000-000000000058'::uuid, 'key_points', 6, 'Key Points Summary', 'Targeted therapy based on molecular characteristics. Monoclonal antibodies target surface receptors. TKIs block intracellular signaling. HER2, EGFR, VEGFR, c-KIT common targets. GIST: imatinib for c-KIT mutation. CRC: KRAS wild-type for anti-EGFR. Bevacizumab affects wound healing. Companion diagnostics guide therapy. Precision medicine: treat based on mutation.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000058-0000-0000-0000-000000000058'::uuid, 1, 'Oncogenes differ from tumor suppressor genes in that:', 'Both copies must be mutated', 'Only one copy needs gain-of-function mutation', 'They inhibit cell growth', 'They cannot be targeted', 'They are only found in germline', 'B', 'Oncogenes require only one gain-of-function mutation, while tumor suppressors require loss of both copies.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 2, 'Trastuzumab (Herceptin) targets:', 'EGFR', 'HER2', 'VEGF', 'c-KIT', 'CD20', 'B', 'Trastuzumab is a monoclonal antibody targeting HER2 receptor in breast and gastric cancer.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 3, 'Which targeted therapy revolutionized GIST treatment?', 'Trastuzumab', 'Bevacizumab', 'Imatinib', 'Rituximab', 'Erlotinib', 'C', 'Imatinib targets c-KIT and revolutionized GIST treatment, converting a chemoresistant tumor to a treatable disease.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 4, 'KRAS mutation in colorectal cancer predicts:', 'Response to anti-EGFR therapy', 'Resistance to anti-EGFR therapy', 'Response to bevacizumab', 'Improved prognosis', 'No clinical significance', 'B', 'KRAS mutation predicts resistance to anti-EGFR therapy (cetuximab, panitumumab). Only KRAS wild-type tumors respond.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 5, 'Bevacizumab should be held before surgery for:', '1 week', '2 weeks', '4-6 weeks', '3 months', 'No need to hold', 'C', 'Bevacizumab (anti-VEGF) should be held 4-6 weeks before and after surgery due to wound healing complications.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 6, 'BRAF V600E mutation is commonly found in:', 'Breast cancer', 'Colorectal cancer only', 'Melanoma', 'Prostate cancer', 'Lung adenocarcinoma only', 'C', 'BRAF V600E mutation is common in melanoma (50%) and is targeted by vemurafenib and dabrafenib.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 7, 'PARP inhibitors are particularly effective in:', 'All breast cancers', 'BRCA-mutated cancers', 'HER2-positive cancers', 'KRAS-mutated cancers', 'MSI-high cancers', 'B', 'PARP inhibitors exploit synthetic lethality in BRCA-mutated cancers deficient in homologous recombination.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 8, 'Suffix -mab in drug names indicates:', 'Small molecule inhibitor', 'Monoclonal antibody', 'Chemotherapy agent', 'Hormone therapy', 'Immunomodulator', 'B', 'The suffix -mab indicates monoclonal antibody (trastuzumab, bevacizumab, rituximab).'),
('d2000058-0000-0000-0000-000000000058'::uuid, 9, 'c-KIT mutation is found in what percentage of GIST?', '10-20%', '40-50%', '80-85%', '95-100%', 'Not found in GIST', 'C', 'c-KIT mutations are found in 80-85% of GIST, making it the defining molecular feature.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 10, 'EGFR TKIs (erlotinib, gefitinib) are indicated for:', 'All lung cancers', 'EGFR-mutant lung adenocarcinoma', 'Small cell lung cancer', 'Squamous cell lung cancer', 'Colorectal cancer', 'B', 'EGFR TKIs are indicated for EGFR-mutant (exon 19 deletion, L858R) lung adenocarcinoma.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 11, 'Rituximab targets:', 'HER2', 'VEGF', 'CD20', 'EGFR', 'c-KIT', 'C', 'Rituximab is a monoclonal antibody targeting CD20 on B-cells, used in lymphoma and leukemia.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 12, 'A predictive biomarker is one that:', 'Predicts prognosis regardless of treatment', 'Predicts response to specific therapy', 'Detects cancer presence', 'Monitors disease recurrence', 'Screens for cancer', 'B', 'Predictive biomarkers predict response to specific therapy (e.g., HER2 predicts trastuzumab response).'),
('d2000058-0000-0000-0000-000000000058'::uuid, 13, 'Synthetic lethality is the principle behind:', 'Hormone therapy', 'PARP inhibitors in BRCA-mutant cancers', 'Anti-VEGF therapy', 'HER2 targeting', 'EGFR inhibition', 'B', 'Synthetic lethality occurs when PARP inhibition combined with BRCA mutation (already deficient in homologous recombination) leads to cell death.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 14, 'Cardiotoxicity is a major side effect of:', 'Imatinib', 'Trastuzumab', 'Bevacizumab', 'Cetuximab', 'Erlotinib', 'B', 'Trastuzumab has significant cardiotoxicity risk, requiring cardiac monitoring during treatment.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 15, 'MSI-H (microsatellite instability-high) tumors respond well to:', 'Anti-EGFR therapy', 'Immunotherapy (checkpoint inhibitors)', 'BRAF inhibitors', 'PARP inhibitors', 'Anti-angiogenic therapy', 'B', 'MSI-H tumors have high mutation burden and respond well to immunotherapy (checkpoint inhibitors).'),
('d2000058-0000-0000-0000-000000000058'::uuid, 16, 'Which pathway is targeted by mTOR inhibitors like everolimus?', 'RAS-RAF-MEK-ERK', 'PI3K-AKT-mTOR', 'JAK-STAT', 'Wnt-beta catenin', 'Notch pathway', 'B', 'Everolimus inhibits mTOR in the PI3K-AKT-mTOR pathway, used in RCC and breast cancer.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 17, 'ALK-rearranged lung cancer is treated with:', 'EGFR TKIs', 'ALK inhibitors like crizotinib', 'BRAF inhibitors', 'PARP inhibitors', 'Standard chemotherapy only', 'B', 'ALK-rearranged lung cancer responds to ALK inhibitors (crizotinib, alectinib).'),
('d2000058-0000-0000-0000-000000000058'::uuid, 18, 'Neoadjuvant imatinib in GIST is used for:', 'All GIST tumors', 'Borderline resectable or unresectable tumors', 'Post-operative only', 'Recurrent disease only', 'Wild-type GIST', 'B', 'Neoadjuvant imatinib is used to downstage borderline resectable or unresectable GIST tumors.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 19, 'Liquid biopsy for ctDNA is used for:', 'Surgical planning', 'Monitoring treatment response and detecting mutations', 'Radiation planning', 'Chemotherapy dosing', 'Symptom control', 'B', 'Liquid biopsy detects circulating tumor DNA (ctDNA) for monitoring treatment response and detecting resistance mutations.'),
('d2000058-0000-0000-0000-000000000058'::uuid, 20, 'The suffix -ib in drug names indicates:', 'Monoclonal antibody', 'Small molecule inhibitor', 'Chemotherapy', 'Hormone analog', 'Vaccine', 'B', 'The suffix -ib indicates small molecule inhibitor (imatinib, erlotinib, vemurafenib).');
