-- Surgery 4 MCQ Question Bank - Batch 29
-- Section E: Oncology - Liver Tumors
-- 40 Questions

-- Topic: Liver Tumors
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000029-0000-0000-0000-000000000029', 'Liver Tumors', 'a0000004-0000-0000-0000-000000000004', 'Hepatocellular carcinoma, cholangiocarcinoma, and other liver tumors', 29, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'The most common primary malignant tumor of the liver is:',
 'Cholangiocarcinoma', 'Hepatocellular carcinoma', 'Hepatoblastoma', 'Angiosarcoma', 'Lymphoma',
 'B', 'Hepatocellular carcinoma (HCC): 75-85% of primary liver cancers. Cholangiocarcinoma: 10-15%. Most liver masses are metastases from other primaries (colorectal, breast, lung).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'The most common underlying condition leading to hepatocellular carcinoma is:',
 'Alcohol alone', 'Cirrhosis from any cause', 'Fatty liver without cirrhosis', 'Primary biliary cholangitis', 'Hemochromatosis alone',
 'B', 'Cirrhosis: present in 80-90% of HCC cases. Causes: HBV, HCV, alcohol, NAFLD/NASH, hemochromatosis. HBV can cause HCC without cirrhosis. Screening in cirrhotic patients recommended.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'HCC surveillance in cirrhotic patients is performed with:',
 'CT scan annually', 'Ultrasound with or without AFP every 6 months', 'MRI monthly', 'Physical exam only', 'No surveillance recommended',
 'B', 'HCC surveillance: ultrasound +/- AFP every 6 months in at-risk patients (cirrhosis, chronic HBV). Early detection improves outcomes. AFP alone not sensitive enough.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'HCC can be diagnosed without biopsy in cirrhotic patients when:',
 'Any mass is seen', 'Classic arterial enhancement and washout pattern is present on multiphasic CT or MRI', 'AFP is elevated', 'Ultrasound shows a mass', 'Patient has symptoms',
 'B', 'LI-RADS criteria: HCC diagnosed non-invasively with characteristic imaging (arterial hyperenhancement, washout in portal venous/delayed phase) in cirrhotic liver. Avoids biopsy risks.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Alpha-fetoprotein (AFP) in HCC:',
 'Is always elevated', 'Is elevated in 50-70 percent but not diagnostic alone', 'Is never elevated', 'Replaces imaging', 'Is specific for HCC',
 'B', 'AFP: elevated in ~50-70% of HCC. Not specific (elevated in germ cell tumors, pregnancy, chronic liver disease). Used with imaging for diagnosis. High levels (>400-500) more suggestive.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'The Barcelona Clinic Liver Cancer (BCLC) staging system for HCC:',
 'Uses only tumor size', 'Incorporates tumor burden liver function and performance status to guide treatment', 'Is not used clinically', 'Only determines surgical candidacy', 'Is the same as TNM',
 'B', 'BCLC: most widely used for HCC. Stages 0, A, B, C, D based on tumor (number, size), Child-Pugh score, PS, portal invasion, metastases. Links stage to treatment recommendation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Curative treatment options for early-stage HCC include:',
 'Chemotherapy only', 'Surgical resection liver transplantation or ablation', 'TACE only', 'Sorafenib', 'Supportive care only',
 'B', 'Curative options: resection (good liver function, no portal hypertension), transplant (within Milan criteria, treats tumor and cirrhosis), ablation (small tumors, non-surgical candidates).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Liver resection for HCC is best performed in patients with:',
 'Any stage HCC', 'Well-preserved liver function (Child-Pugh A) and no significant portal hypertension', 'Decompensated cirrhosis', 'Multiple tumors always', 'Extrahepatic metastases',
 'B', 'Resection candidacy: preserved liver function (Child-Pugh A), adequate future liver remnant, no significant portal hypertension (platelet count, varices), no extrahepatic disease. 5-year survival 50-70%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'The Milan criteria for liver transplantation in HCC are:',
 'Any single tumor', 'Single tumor up to 5 cm or up to 3 tumors each up to 3 cm without vascular invasion or extrahepatic spread', 'Only patients under 50', 'All HCC patients eligible', 'Single tumor only',
 'B', 'Milan criteria: single tumor <=5 cm, or up to 3 tumors each <=3 cm, no macrovascular invasion, no extrahepatic disease. Excellent post-transplant outcomes (>70% 5-year survival).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Ablation techniques for HCC include:',
 'External beam radiation only', 'Radiofrequency ablation microwave ablation and percutaneous ethanol injection', 'Chemotherapy injection', 'Immunotherapy injection', 'Laser only',
 'B', 'Ablation: RFA, microwave (most common, effective for <3 cm tumors), PEI, cryoablation. Image-guided. For early HCC not surgical candidates. May be combined with other therapies.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Transarterial chemoembolization (TACE) for HCC:',
 'Is curative', 'Delivers chemotherapy and embolic material via hepatic artery for intermediate stage HCC', 'Is first-line for early HCC', 'Uses systemic chemotherapy', 'Is only for metastatic disease',
 'B', 'TACE: for intermediate stage HCC (BCLC B). Delivers chemo directly to tumor, embolizes feeding vessels. Palliative, improves survival. Contraindicated with decompensated cirrhosis or portal vein thrombosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Transarterial radioembolization (TARE) with Y-90 microspheres:',
 'Is chemotherapy', 'Delivers radiation internally via hepatic artery', 'Is only for metastases', 'Replaces transplant', 'Is not used for HCC',
 'B', 'Y-90 radioembolization: beta-emitting microspheres delivered via hepatic artery. For intermediate/advanced HCC. May be used for downstaging, bridge to transplant. Different mechanism than TACE.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'First-line systemic therapy for advanced HCC is:',
 'Sorafenib alone', 'Atezolizumab plus bevacizumab', 'FOLFOX', 'Gemcitabine', 'No systemic therapy available',
 'B', 'Atezolizumab + bevacizumab: first-line for advanced HCC based on IMbrave150 (superior to sorafenib). Alternatives: sorafenib, lenvatinib for those who cannot receive immunotherapy. Checkpoint inhibitor combinations.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Sorafenib in HCC is a:',
 'Chemotherapy drug', 'Multi-kinase inhibitor (VEGFR, RAF)', 'Checkpoint inhibitor', 'Hormonal therapy', 'Antibiotic',
 'B', 'Sorafenib: TKI targeting VEGFR, RAF, PDGFR. First systemic drug to show survival benefit in HCC. Now second-line after atezolizumab/bevacizumab in many settings. Side effects: hand-foot, diarrhea, fatigue.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Cholangiocarcinoma arises from:',
 'Hepatocytes', 'Biliary epithelium (bile duct cells)', 'Kupffer cells', 'Hepatic stellate cells', 'Vascular endothelium',
 'B', 'Cholangiocarcinoma: from bile duct epithelium. Intrahepatic (within liver), perihilar (Klatskin tumor), or distal (extrahepatic). Different biology and treatment from HCC.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for cholangiocarcinoma include:',
 'Hepatitis C only', 'Primary sclerosing cholangitis liver flukes choledochal cysts and hepatolithiasis', 'Young age', 'Alcohol only', 'Obesity alone',
 'B', 'CCA risk factors: PSC (highest risk in Western countries), liver flukes (Southeast Asia - Opisthorchis, Clonorchis), choledochal cysts, hepatolithiasis, Caroli disease. Also HBV/HCV, cirrhosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Hilar cholangiocarcinoma (Klatskin tumor) is classified by:',
 'TNM only', 'Bismuth-Corlette classification based on involvement of biliary confluence', 'Size only', 'Number of tumors', 'Patient age',
 'B', 'Bismuth-Corlette: Type I (below confluence), II (at confluence), IIIa (extends to right), IIIb (extends to left), IV (bilateral or multicentric). Determines resectability and surgical approach.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for resectable cholangiocarcinoma is:',
 'Chemotherapy first', 'Surgical resection with adequate margins', 'Radiation only', 'Transplantation always', 'Stenting only',
 'B', 'CCA treatment: surgical resection when feasible. Intrahepatic: hepatectomy. Hilar: hepatectomy + bile duct resection. Distal: pancreaticoduodenectomy. R0 resection critical. Adjuvant therapy recommended.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'First-line chemotherapy for advanced cholangiocarcinoma is:',
 'Sorafenib', 'Gemcitabine plus cisplatin with or without durvalumab', 'FOLFOX alone', '5-FU alone', 'No chemotherapy available',
 'B', 'Advanced CCA: gemcitabine + cisplatin (ABC-02). Adding durvalumab (TOPAZ-1) now standard for first-line. Targeted therapy for FGFR alterations, IDH mutations available.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'FGFR inhibitors (pemigatinib, futibatinib) are used in cholangiocarcinoma for:',
 'All patients', 'Patients with FGFR2 fusions or rearrangements after prior therapy', 'First-line always', 'Only intrahepatic CCA', 'Prevention',
 'B', 'FGFR inhibitors: for CCA with FGFR2 fusions/rearrangements (~10-15% of intrahepatic CCA). After prior therapy. Companion diagnostic testing required.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'IDH1 inhibitors (ivosidenib) in cholangiocarcinoma:',
 'Are for all patients', 'Are for patients with IDH1 mutations after prior therapy', 'Are first-line', 'Are not approved', 'Are for HCC only',
 'B', 'Ivosidenib: for CCA with IDH1 mutations (~10-20% of intrahepatic CCA). Approved after prior therapy (ClarIDHy trial). Oral targeted therapy. Test for IDH1 mutations.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Hepatic hemangioma is:',
 'The most common malignant liver tumor', 'The most common benign liver tumor', 'Always requires treatment', 'A premalignant lesion', 'Seen only in men',
 'B', 'Hemangioma: most common benign liver lesion. Usually incidental finding. Most asymptomatic, no treatment needed. Surgery for very large symptomatic hemangiomas. No malignant potential.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'The classic imaging appearance of hepatic hemangioma is:',
 'Arterial enhancement with washout', 'Peripheral nodular enhancement with centripetal fill-in', 'Hypoenhancing on all phases', 'Calcified mass', 'Cystic mass',
 'B', 'Hemangioma imaging: hyperechoic on US. CT/MRI: peripheral nodular enhancement (arterial phase), progressive centripetal fill-in (portal/delayed). Mirrors blood pool intensity. Characteristic appearance.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Focal nodular hyperplasia (FNH):',
 'Has high malignant potential', 'Is a benign lesion with central scar that usually requires no treatment', 'Always requires resection', 'Is associated with oral contraceptives', 'Only occurs in cirrhotic livers',
 'B', 'FNH: benign hyperplastic lesion. Central scar with radiating fibrous septa. Usually asymptomatic. No malignant potential. No treatment needed. OCP association controversial.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Hepatocellular adenoma:',
 'Is always benign', 'Has risk of hemorrhage and malignant transformation especially in larger tumors', 'Only occurs in men', 'Never requires surgery', 'Is the same as FNH',
 'B', 'Hepatic adenoma: benign but risk of hemorrhage (especially >5 cm) and malignant transformation (especially beta-catenin mutated subtype, males). Associated with OCP. Stop OCP, surgery for >5 cm or high-risk subtype.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Hepatocellular adenoma is associated with:',
 'Hepatitis C', 'Oral contraceptive use and anabolic steroids', 'Cirrhosis', 'Hemochromatosis', 'Primary sclerosing cholangitis',
 'B', 'HCA association: OCP (estrogen), anabolic steroids, glycogen storage disease, obesity. Women of childbearing age predominantly. Stop OCP - may regress. Subtypes have different risks.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Colorectal liver metastases:',
 'Are never resectable', 'Are potentially curable with surgical resection in selected patients', 'Should only be treated with chemotherapy', 'Have better prognosis than primary liver cancer', 'Are treated the same as HCC',
 'B', 'CLM: resection can be curative (40-50% 5-year survival). Selection criteria: resectable with adequate remnant, control of primary, no unresectable extrahepatic disease. Multimodal approach.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Criteria for resectability of colorectal liver metastases include:',
 'Number of lesions only', 'Ability to achieve R0 resection with adequate future liver remnant and no unresectable extrahepatic disease', 'Size less than 2 cm only', 'Single lesion only', 'Age less than 60',
 'B', 'CLM resectability: technically achievable R0 resection, adequate FLR (usually >20-30%), no unresectable extrahepatic disease. Number and size less important than these factors. Multidisciplinary discussion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Portal vein embolization (PVE) before major hepatectomy:',
 'Is never done', 'Induces hypertrophy of the future liver remnant to reduce post-hepatectomy liver failure', 'Treats the tumor directly', 'Is for benign lesions only', 'Replaces surgery',
 'B', 'PVE: embolizes portal vein branches to tumor-bearing liver. Induces compensatory hypertrophy of contralateral FLR over 4-6 weeks. Allows safer major hepatectomy when FLR is marginal.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'ALPPS (Associating Liver Partition and Portal vein ligation for Staged hepatectomy):',
 'Is a single-stage procedure', 'Is a two-stage procedure allowing rapid FLR hypertrophy', 'Is only for benign disease', 'Has no complications', 'Is the standard approach for all liver resections',
 'B', 'ALPPS: two-stage. Stage 1: in situ liver partition + portal vein ligation. Rapid FLR hypertrophy (2-4 weeks). Stage 2: completion hepatectomy. For marginal FLR. Higher morbidity/mortality than PVE approach.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Hepatic resection types include:',
 'Only total hepatectomy', 'Wedge resection segmentectomy sectionectomy and hemihepatectomy', 'Enucleation only', 'Ablation only', 'No standardized nomenclature',
 'B', 'Hepatic resection: Brisbane classification. Non-anatomic (wedge), segmentectomy (single segment), sectionectomy (section), hemihepatectomy (half liver), extended hepatectomy. Based on vascular anatomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Post-hepatectomy liver failure (PHLF):',
 'Never occurs', 'Is a serious complication related to inadequate future liver remnant', 'Is always fatal', 'Only occurs in cirrhotic patients', 'Is treated with more surgery',
 'B', 'PHLF: major complication, high mortality. Related to inadequate FLR, underlying liver disease, surgical factors. Prevention: adequate FLR (volumetry), PVE if needed, preserve liver function.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Neuroendocrine liver metastases (from GI NETs):',
 'Are never resectable', 'May be treated with resection ablation TACE or peptide receptor radionuclide therapy', 'Should only be observed', 'Have no treatment options', 'Are treated like colorectal metastases',
 'B', 'NET liver metastases: often multiple, bilateral. Resection if feasible. Ablation, TACE, PRRT (for somatostatin receptor positive), somatostatin analogs. Generally indolent, long survival even with metastases.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'Hepatoblastoma:',
 'Is the most common adult liver tumor', 'Is the most common primary hepatic malignancy in children', 'Is always benign', 'Does not respond to chemotherapy', 'Has no cure',
 'B', 'Hepatoblastoma: most common liver cancer in children (usually <3 years). AFP elevated. Treatment: neoadjuvant chemo, surgical resection. Excellent outcomes with multimodal therapy. Transplant if unresectable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004',
 'The prognosis of HCC is primarily determined by:',
 'Age only', 'Tumor stage and underlying liver function', 'Gender', 'AFP level alone', 'Blood type',
 'B', 'HCC prognosis: tumor stage (size, number, vascular invasion, metastases) and liver function (Child-Pugh) are key. BCLC incorporates both. Portal invasion and extrahepatic spread are poor prognostic factors.', 'easy', 'knowledge');
