-- Surgery 4 MCQ Question Bank - Batch 22
-- Section E: Oncology - Renal Tumors
-- 40 Questions

-- Topic: Renal Tumors
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000022-0000-0000-0000-000000000022', 'Renal Tumors', 'a0000004-0000-0000-0000-000000000004', 'Renal cell carcinoma and other kidney tumors - epidemiology, diagnosis, and management', 22, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The most common malignant tumor of the kidney in adults is:',
 'Transitional cell carcinoma', 'Renal cell carcinoma', 'Wilms tumor', 'Lymphoma', 'Sarcoma',
 'B', 'Renal cell carcinoma: 85-90% of kidney malignancies in adults. Clear cell type is most common subtype (70-80%). Risk factors: smoking, obesity, hypertension, VHL disease.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The most common subtype of renal cell carcinoma is:',
 'Papillary', 'Chromophobe', 'Clear cell carcinoma', 'Collecting duct', 'Medullary carcinoma',
 'C', 'Clear cell RCC: 70-80% of RCCs. Arises from proximal tubule. Characterized by clear cytoplasm (lipid and glycogen). Associated with VHL gene alterations on chromosome 3p.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The classic triad of renal cell carcinoma (hematuria flank pain palpable mass):',
 'Is present in most patients', 'Is present in only 10-15 percent of cases and indicates advanced disease', 'Is present in all cases', 'Indicates early disease', 'Never occurs',
 'B', 'Classic triad: hematuria, flank pain, palpable mass - rare (6-10%), indicates advanced disease. Most RCCs now detected incidentally on imaging. Called internist tumor due to paraneoplastic syndromes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Renal cell carcinoma is associated with which paraneoplastic syndrome:',
 'Syndrome of inappropriate ADH', 'Hypercalcemia secondary to PTHrP production', 'Hyponatremia', 'Hypocalcemia', 'None',
 'B', 'RCC paraneoplastic syndromes: hypercalcemia (PTHrP), erythrocytosis (EPO), hypertension (renin), Stauffer syndrome (hepatic dysfunction without metastases). Also fever, weight loss.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Stauffer syndrome is:',
 'Hepatic metastases', 'Non-metastatic hepatic dysfunction associated with RCC that reverses after nephrectomy', 'Liver failure from chemotherapy', 'Paraneoplastic hypercalcemia', 'Bone metastases',
 'B', 'Stauffer syndrome: elevated LFTs, hepatomegaly without liver metastases. Resolves after nephrectomy. Unknown mechanism. If persists after nephrectomy, suggests metastatic disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'von Hippel-Lindau disease is associated with:',
 'Single kidney cyst', 'Bilateral and multifocal clear cell RCC hemangioblastomas and pheochromocytomas', 'Papillary RCC only', 'Wilms tumor', 'Transitional cell carcinoma',
 'B', 'VHL disease: autosomal dominant. Bilateral/multifocal clear cell RCC (70% lifetime risk), cerebellar/spinal hemangioblastomas, retinal angiomas, pheochromocytoma, pancreatic cysts/tumors.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The imaging modality of choice for characterizing renal masses is:',
 'Plain X-ray', 'CT scan with and without contrast', 'MRI only', 'Ultrasound only', 'PET scan',
 'B', 'CT with and without contrast: standard for renal mass characterization. Enhancement >15-20 HU suggests malignancy. MRI for contrast allergy or indeterminate lesions. Ultrasound for cyst vs solid.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'A Bosniak classification II-F renal cyst:',
 'Is definitely benign', 'Requires follow-up imaging due to moderately complex features', 'Requires immediate surgery', 'Is definitely malignant', 'Is a simple cyst',
 'B', 'Bosniak IIF: minimally complex cyst requiring follow-up (5% malignancy risk). I = simple (no follow-up). II = benign. III = indeterminate (surgery or biopsy). IV = malignant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Small renal masses (less than 4 cm) can be managed with:',
 'Radical nephrectomy only', 'Partial nephrectomy active surveillance or ablation depending on patient factors', 'Chemotherapy', 'Radiation only', 'Observation only',
 'B', 'Small renal masses: partial nephrectomy preferred (nephron sparing). Ablation (cryotherapy, RFA) for high-risk surgical candidates. Active surveillance for elderly/comorbid patients. 20-30% are benign.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The advantage of partial nephrectomy over radical nephrectomy is:',
 'Higher cure rates', 'Preservation of renal function reducing cardiovascular morbidity and mortality', 'Shorter surgery', 'Always possible', 'No advantage exists',
 'B', 'Partial nephrectomy: preserves nephrons, reduces CKD risk. Oncologic outcomes equivalent for appropriate tumors. Lower cardiovascular mortality long-term. Standard for T1a, often T1b when feasible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Radical nephrectomy includes removal of:',
 'Kidney only', 'Kidney with perinephric fat and Gerota fascia plus or minus ipsilateral adrenal', 'Both kidneys', 'Kidney and bladder', 'Kidney and ureter only',
 'B', 'Radical nephrectomy: kidney, Gerota fascia, perinephric fat. Adrenal spared unless upper pole tumor, large tumor, or abnormal imaging. Regional lymphadenectomy for staging. Ureter divided at appropriate level.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Renal cell carcinoma characteristically spreads to which vein:',
 'Portal vein', 'Renal vein and may extend into inferior vena cava', 'Hepatic vein', 'Superior mesenteric vein', 'Femoral vein',
 'B', 'RCC venous extension: renal vein thrombus in 4-10%, IVC thrombus in 4-10%. Can extend to right atrium. Tumor thrombus (not bland clot). Surgical resection still possible and potentially curative.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'IVC tumor thrombus in RCC is classified by:',
 'Tumor size', 'Level of thrombus extension (renal vein infraheaptic suprahepatic supradiaphragmatic)', 'Patient age', 'Tumor grade', 'PSA level',
 'B', 'IVC thrombus levels: I (renal vein), II (infrahepatic IVC), III (intrahepatic/retrohepatic), IV (supradiaphragmatic/atrial). Higher levels require more complex surgery, potentially cardiopulmonary bypass.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The most common sites of metastasis from renal cell carcinoma are:',
 'Brain only', 'Lung bone liver and brain', 'Skin only', 'Lymph nodes only', 'Prostate',
 'B', 'RCC metastasis sites: lung (50-60% most common), bone (30-40%), liver, brain. Also adrenal, contralateral kidney. RCC known for unusual metastatic patterns (skin, thyroid, pancreas).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Cytoreductive nephrectomy in metastatic RCC refers to:',
 'Removing all metastases', 'Removing the primary tumor in the presence of metastases before systemic therapy', 'Dialysis preparation', 'Transplant nephrectomy', 'Removing benign tumors',
 'B', 'Cytoreductive nephrectomy: removing primary tumor in metastatic setting. Historically done before immunotherapy. Role with targeted therapy being reassessed (CARMENA trial). May benefit selected patients.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'First-line systemic therapy for metastatic clear cell RCC often includes:',
 'Chemotherapy', 'Combination of immune checkpoint inhibitors plus or minus tyrosine kinase inhibitors', 'Hormonal therapy', 'Radiation only', 'Interferon alone',
 'B', 'First-line mRCC (clear cell): immune checkpoint combinations (ipilimumab/nivolumab, pembrolizumab/axitinib, etc.) or TKI monotherapy (sunitinib, pazopanib). RCC is immunogenic tumor.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'VEGF-targeted tyrosine kinase inhibitors (sunitinib, pazopanib) work by:',
 'Stimulating immunity', 'Blocking angiogenesis through VEGF receptor inhibition', 'Direct cytotoxic effect', 'Hormonal blockade', 'DNA damage',
 'B', 'TKIs: block VEGF receptors (angiogenesis inhibitors). Clear cell RCC is highly vascular (VHL pathway leads to VEGF overexpression). Side effects: hypertension, hand-foot syndrome, diarrhea, fatigue.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'mTOR inhibitors (temsirolimus, everolimus) are used in RCC for:',
 'All patients first-line', 'Poor-risk metastatic RCC and after failure of first-line therapy', 'Localized disease', 'Prevention', 'Adjuvant therapy standard',
 'B', 'mTOR inhibitors: target mTOR pathway (downstream of VHL-HIF). Temsirolimus for poor-risk metastatic. Everolimus after TKI failure. Less commonly used now with immunotherapy combinations available.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Papillary renal cell carcinoma:',
 'Is the most common type', 'Is second most common with type 1 having better prognosis than type 2', 'Is always benign', 'Only occurs in children', 'Is associated with VHL',
 'B', 'Papillary RCC: 10-15% of RCCs. Type 1 (smaller, better prognosis) and Type 2 (larger, worse prognosis). Associated with MET mutations (hereditary papillary RCC), not VHL.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Chromophobe renal cell carcinoma:',
 'Has the worst prognosis', 'Has better prognosis than clear cell with low metastatic potential', 'Is most common type', 'Only occurs bilaterally', 'Is treated with chemotherapy',
 'B', 'Chromophobe RCC: 5% of RCCs. Arises from intercalated cells. Better prognosis than clear cell. Low metastatic rate. Associated with Birt-Hogg-Dube syndrome (skin lesions, lung cysts, RCC).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Oncocytoma is:',
 'Malignant tumor requiring nephrectomy', 'Benign tumor that can be observed or treated with nephron-sparing approach', 'Pre-malignant condition', 'Only found in children', 'Same as chromophobe RCC',
 'B', 'Oncocytoma: benign renal tumor. Cannot always distinguish from chromophobe RCC on imaging or even biopsy. When diagnosed, no treatment needed. If uncertain, excision for definitive diagnosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Angiomyolipoma (AML) is:',
 'Malignant tumor', 'Benign tumor composed of blood vessels smooth muscle and fat', 'Transitional cell carcinoma', 'Only found in men', 'Pre-malignant condition',
 'B', 'AML: benign mesenchymal tumor. Fat content visible on CT (diagnostic). Associated with tuberous sclerosis (bilateral, multiple). Risk of hemorrhage if >4 cm. Treatment: observation, embolization, or nephron-sparing surgery.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The main risk of large angiomyolipomas is:',
 'Malignant transformation', 'Spontaneous hemorrhage (Wunderlich syndrome)', 'Renal failure', 'Metastasis', 'Infection',
 'B', 'Large AML (>4 cm): increased hemorrhage risk. Wunderlich syndrome = spontaneous perirenal hemorrhage. Prophylactic embolization or nephron-sparing surgery for large/symptomatic lesions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Tuberous sclerosis complex is associated with:',
 'Clear cell RCC', 'Bilateral angiomyolipomas', 'Papillary RCC', 'Oncocytoma only', 'No renal lesions',
 'B', 'TSC: autosomal dominant. Renal AMLs (often bilateral, multiple), brain tubers, facial angiofibromas, cardiac rhabdomyomas. TSC1/2 gene mutations. mTOR inhibitors (everolimus) can shrink AMLs.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Renal biopsy for small renal masses:',
 'Is always required', 'May be useful when diagnosis will change management or for ablation planning', 'Is contraindicated', 'Is only for cystic lesions', 'Causes tumor seeding always',
 'B', 'Renal mass biopsy: increasingly used. Indications: may change management, confirm diagnosis before ablation, suspected metastasis/lymphoma, surveillance candidates. Tumor seeding very rare.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Active surveillance for small renal masses is appropriate when:',
 'Never appropriate', 'Patients are elderly or have significant comorbidities limiting life expectancy', 'Tumor is larger than 7 cm', 'Always preferred', 'Only for young patients',
 'B', 'Active surveillance: for elderly, comorbid patients with limited life expectancy. Small renal masses grow slowly (~2-3 mm/year). Delayed intervention feasible if progression. 20-30% are benign anyway.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Thermal ablation (cryotherapy or radiofrequency) for renal tumors:',
 'Is preferred over surgery', 'Is an option for T1a tumors in patients at high surgical risk', 'Has better outcomes than surgery', 'Only for metastatic disease', 'Is experimental only',
 'B', 'Ablation: for T1a (<4 cm), high surgical risk patients. Cryotherapy or RFA. Slightly higher recurrence than surgery. Requires follow-up imaging. Preserves renal function.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Adjuvant therapy after nephrectomy for high-risk localized RCC:',
 'Is always chemotherapy', 'May include pembrolizumab based on recent trials showing improved DFS', 'Is radiation therapy', 'Is never indicated', 'Is hormonal therapy',
 'B', 'Adjuvant pembrolizumab: approved for high-risk localized RCC after nephrectomy (KEYNOTE-564). First adjuvant therapy to show DFS benefit. TKIs in adjuvant setting showed mixed results.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Metastasectomy in RCC:',
 'Is never indicated', 'May be beneficial for solitary metastasis or oligometastatic disease', 'Is standard for all metastatic patients', 'Worsens survival', 'Only for brain metastases',
 'B', 'Metastasectomy: may benefit selected patients with solitary or oligometastatic disease, especially after long disease-free interval. Complete resection correlates with better outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The IMDC (International mRCC Database Consortium) prognostic criteria for metastatic RCC include:',
 'Tumor size only', 'Karnofsky performance status hemoglobin calcium neutrophils platelets and time to treatment', 'PSA level', 'Biopsy grade only', 'Age only',
 'B', 'IMDC criteria (6 factors): KPS <80%, <1 year from diagnosis to treatment, hemoglobin < LLN, corrected calcium > ULN, neutrophils > ULN, platelets > ULN. Favorable (0), intermediate (1-2), poor (3+).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Non-clear cell RCC (papillary, chromophobe) systemic therapy:',
 'Uses same regimens as clear cell', 'Has less established evidence with cabozantinib or immunotherapy being used', 'Is always chemotherapy', 'Is hormonal therapy', 'Is never needed',
 'B', 'Non-clear cell RCC: limited trial data (most trials excluded them). Options: TKIs (cabozantinib, sunitinib), immunotherapy. Less evidence than clear cell. Temsirolimus had benefit in poor-risk.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Collecting duct and medullary RCC:',
 'Have excellent prognosis', 'Are rare aggressive tumors with poor prognosis often presenting with metastases', 'Are benign', 'Respond well to TKIs', 'Only occur in elderly',
 'B', 'Collecting duct carcinoma: rare, aggressive. Medullary RCC: associated with sickle cell trait, young patients, very aggressive. Both have poor prognosis, limited response to systemic therapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Hereditary leiomyomatosis and renal cell cancer (HLRCC) syndrome is associated with:',
 'Clear cell RCC', 'Aggressive papillary type 2 RCC with fumarate hydratase mutations', 'Benign tumors only', 'Chromophobe RCC', 'Wilms tumor',
 'B', 'HLRCC: fumarate hydratase gene mutation. Skin and uterine leiomyomas, aggressive papillary type 2 RCC. Often metastatic at presentation. Avoid surveillance approach due to aggressiveness.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'The T stage in RCC is primarily determined by:',
 'Histologic grade', 'Tumor size and extent of local invasion', 'Lymph node involvement', 'Presence of metastases', 'Patient symptoms',
 'B', 'RCC T staging: T1a (<4 cm), T1b (4-7 cm), T2a (7-10 cm), T2b (>10 cm) all confined to kidney. T3 = renal vein/IVC/perinephric invasion. T4 = beyond Gerota fascia. Size and extension key factors.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Fuhrman nuclear grade in RCC:',
 'Grades tumors 1-4 based on nuclear size shape and nucleolar prominence', 'Is not used anymore', 'Only applies to papillary RCC', 'Measures tumor size', 'Determines metastatic potential only',
 'A', 'Fuhrman grade (now WHO/ISUP grade): based on nucleolar prominence. Grade 1-4. Higher grade = worse prognosis. Important prognostic factor. ISUP grade now preferred for clear cell and papillary.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000022-0000-0000-0000-000000000022', 'a0000004-0000-0000-0000-000000000004',
 'Sarcomatoid differentiation in RCC indicates:',
 'Better prognosis', 'Poor prognosis with aggressive behavior', 'Benign behavior', 'No impact on outcome', 'Need for hormonal therapy',
 'B', 'Sarcomatoid differentiation: dedifferentiated component in any RCC subtype. Poor prognosis. Aggressive behavior, often locally advanced or metastatic. Consider combination immunotherapy.', 'medium', 'knowledge');
