-- Surgery 4 MCQ Question Bank - Batch 25
-- Section E: Oncology - Gastric Cancer
-- 40 Questions

-- Topic: Gastric Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000025-0000-0000-0000-000000000025', 'Gastric Cancer', 'a0000004-0000-0000-0000-000000000004', 'Gastric cancer epidemiology, diagnosis, staging, and surgical management', 25, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of gastric cancer is:',
 'Lymphoma', 'Adenocarcinoma', 'Gastrointestinal stromal tumor', 'Carcinoid', 'Squamous cell carcinoma',
 'B', 'Adenocarcinoma: 90-95% of gastric cancers. Lymphoma (3-5%), GIST (2%), carcinoid (1%), others rare. Intestinal and diffuse subtypes (Lauren classification).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Helicobacter pylori infection is associated with increased risk of gastric cancer because:',
 'Direct carcinogenic effect only', 'Causes chronic gastritis atrophic gastritis intestinal metaplasia and dysplasia', 'Is a virus', 'Causes acute inflammation only', 'No association exists',
 'B', 'H. pylori: Class I carcinogen. Chronic gastritis leads to atrophic gastritis, intestinal metaplasia, dysplasia, cancer (Correa cascade). Eradication may reduce risk. Associated with intestinal type.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for gastric cancer include all EXCEPT:',
 'H. pylori infection', 'High salt and smoked food intake', 'High fruit and vegetable intake', 'Smoking', 'Previous gastric surgery',
 'C', 'Risk factors: H. pylori, diet (salt, smoked, pickled foods), smoking, family history, blood type A, previous gastrectomy, pernicious anemia. Fruits/vegetables are protective.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'The Lauren classification divides gastric adenocarcinoma into:',
 'Well and poorly differentiated', 'Intestinal and diffuse types', 'Early and late types', 'Proximal and distal', 'Superficial and deep',
 'B', 'Lauren classification: Intestinal type (gland-forming, associated with H. pylori, more common in high-risk areas, better prognosis) and Diffuse type (signet ring cells, younger patients, worse prognosis, linitis plastica).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Hereditary diffuse gastric cancer syndrome is associated with mutation in:',
 'APC gene', 'CDH1 (E-cadherin) gene', 'BRCA1', 'Lynch syndrome genes', 'p53',
 'B', 'HDGC: CDH1 germline mutation. Diffuse gastric cancer, lobular breast cancer. High penetrance. Prophylactic total gastrectomy recommended. Autosomal dominant.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Early gastric cancer is defined as:',
 'Small tumor size', 'Tumor confined to mucosa or submucosa regardless of lymph node status', 'Stage I disease', 'Tumor without symptoms', 'T1N0 only',
 'B', 'Early gastric cancer: confined to mucosa (T1a) or submucosa (T1b), irrespective of node status. Good prognosis. May be treated with endoscopic resection if criteria met.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Symptoms of gastric cancer commonly include:',
 'Acute severe pain', 'Vague epigastric pain weight loss anorexia and early satiety', 'Jaundice always', 'Fever', 'No symptoms ever',
 'B', 'Symptoms: often vague and late. Epigastric discomfort, weight loss, anorexia, early satiety, nausea, dysphagia (proximal). Iron deficiency anemia, GI bleeding. Advanced: palpable mass, ascites.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Virchow node (left supraclavicular lymph node) metastasis in gastric cancer is called:',
 'Irish node', 'Troisier sign', 'Sister Mary Joseph nodule', 'Blumer shelf', 'Krukenberg tumor',
 'B', 'Troisier sign: Virchow node (left supraclavicular). Sister Mary Joseph nodule: umbilical metastasis. Blumer shelf: drop metastasis in pouch of Douglas. Krukenberg tumor: ovarian metastasis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopy in suspected gastric cancer:',
 'Is not useful', 'Allows visualization biopsy and assessment of tumor extent', 'Should be avoided', 'Only for follow-up', 'Replaced by CT scan',
 'B', 'EGD: visualize tumor, obtain biopsies (multiple for higher yield), assess location and extent. Chromoendoscopy and magnification improve detection of early lesions. Essential for diagnosis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'CT scan in gastric cancer staging assesses:',
 'Only local tumor', 'Local extent lymph node involvement and distant metastases', 'Nothing useful', 'Only liver metastases', 'Only bone metastases',
 'B', 'CT: wall thickness, local extension, lymphadenopathy, liver/peritoneal/lung metastases. CT accuracy limited for T and N staging (EUS better for local staging). Standard for distant staging.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopic ultrasound (EUS) in gastric cancer is most useful for:',
 'Detecting distant metastases', 'Determining depth of invasion (T staging) and regional lymph nodes', 'Liver assessment', 'Replacing CT', 'Treatment only',
 'B', 'EUS: best for T staging (wall layer involvement) and regional node assessment. Accuracy 80-90% for T staging. Helps determine if endoscopic resection appropriate for early gastric cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Staging laparoscopy in gastric cancer is performed to:',
 'Replace imaging', 'Detect occult peritoneal or liver metastases not seen on imaging', 'Treat the cancer', 'Only for early cancer', 'Take random biopsies',
 'B', 'Staging laparoscopy: for potentially curable gastric cancer before resection. Detects occult peritoneal disease in 20-30% not seen on CT. Avoids non-therapeutic laparotomy. Peritoneal washings for cytology.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopic mucosal resection (EMR) or endoscopic submucosal dissection (ESD) is appropriate for:',
 'All gastric cancers', 'Selected early gastric cancers meeting specific criteria', 'Advanced cancers only', 'Lymph node positive disease', 'Diffuse type gastric cancer',
 'B', 'EMR/ESD: for early gastric cancer (T1a, differentiated, <2 cm, no ulceration, no LVI for standard criteria). ESD allows en bloc resection of larger lesions. Expanded criteria in experienced centers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'The standard surgical treatment for resectable gastric cancer is:',
 'Wedge resection', 'Gastrectomy with D2 lymphadenectomy', 'Total gastrectomy always', 'Subtotal gastrectomy always', 'Local excision only',
 'B', 'Gastrectomy: subtotal (distal cancers, 5 cm proximal margin) or total (proximal cancers, linitis plastica). D2 lymphadenectomy (perigastric + celiac axis nodes) is standard in experienced centers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'D2 lymphadenectomy involves removal of:',
 'Only perigastric nodes', 'Perigastric nodes (D1) plus nodes along celiac axis vessels', 'Paraaortic nodes', 'Only level 1 nodes', 'No lymph nodes',
 'B', 'D2: D1 (perigastric, stations 1-6) plus nodes along left gastric, common hepatic, celiac, and splenic arteries (stations 7-11). D1: only perigastric. D2 standard in Japan/Korea, increasingly in West.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'The minimum number of lymph nodes recommended for adequate staging in gastric cancer is:',
 '5', '10', '15', '25', '30',
 'C', 'Minimum 15 lymph nodes: adequate staging (AJCC). D2 dissection typically yields >25 nodes. Node ratio (positive/examined) and log odds also have prognostic value.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Reconstruction after total gastrectomy commonly uses:',
 'Billroth I', 'Roux-en-Y esophagojejunostomy', 'Billroth II', 'No reconstruction needed', 'Gastric bypass',
 'B', 'Roux-en-Y: standard after total gastrectomy. Esophagojejunostomy with jejunojejunostomy. Prevents bile reflux. For subtotal gastrectomy: Billroth I, Billroth II, or Roux-en-Y options.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Perioperative chemotherapy (MAGIC regimen or FLOT regimen) in gastric cancer:',
 'Is never used', 'Improves survival compared to surgery alone for resectable locally advanced disease', 'Only given after surgery', 'Replaces surgery', 'Only for metastatic disease',
 'B', 'Perioperative chemo: pre and post-surgery. MAGIC (ECF), FLOT (docetaxel-based, now preferred). Improves R0 resection rates and survival. Standard for cT2+ or node-positive resectable disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'HER2 testing in gastric cancer is important because:',
 'All gastric cancers are HER2 positive', 'HER2-positive cancers may benefit from trastuzumab in metastatic setting', 'It determines surgery type', 'It replaces staging', 'HER2 is never expressed',
 'B', 'HER2: amplified in 15-20% of gastric cancers (higher in intestinal type, GEJ). Trastuzumab added to chemotherapy improves survival in HER2+ metastatic gastric cancer (ToGA trial).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for metastatic gastric cancer in HER2-negative patients typically includes:',
 'Surgery', 'Fluoropyrimidine plus platinum-based chemotherapy', 'Targeted therapy only', 'No treatment available', 'Radiation only',
 'B', 'Metastatic gastric (HER2-): fluoropyrimidine + platinum (FOLFOX, CAPOX, etc.). Adding checkpoint inhibitor (nivolumab) now standard based on CheckMate 649. Ramucirumab for second line.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Linitis plastica refers to:',
 'Ulcerative gastric cancer', 'Diffuse infiltrating gastric cancer causing a rigid leather bottle stomach', 'Early gastric cancer', 'Gastric lymphoma', 'Gastric polyps',
 'B', 'Linitis plastica: diffuse type gastric cancer infiltrating entire stomach wall. Rigid, non-distensible. Poor prognosis. Difficult to detect on EGD (submucosal spread). Total gastrectomy if resectable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Gastric outlet obstruction from distal gastric cancer is managed with:',
 'Observation', 'Endoscopic stenting surgical bypass or resection depending on stage and status', 'Proton pump inhibitors only', 'Chemotherapy first always', 'No treatment needed',
 'B', 'GOO management: stenting (palliative, quick relief), gastrojejunostomy bypass (durable palliation), resection if feasible. Depends on overall status, resectability, goals of care.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Dumping syndrome after gastrectomy occurs due to:',
 'Vitamin deficiency', 'Rapid emptying of hyperosmolar contents into small bowel', 'Bile reflux', 'Infection', 'Anastomotic stricture',
 'B', 'Dumping syndrome: early (within 30 min, vasomotor symptoms from rapid osmotic shift) and late (1-3 hours, hypoglycemia from insulin overshoot). Dietary modification helps (small frequent meals, avoid simple sugars).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Vitamin B12 supplementation is required after total gastrectomy because:',
 'Decreased absorption in small bowel', 'Loss of intrinsic factor production by parietal cells', 'Increased requirement', 'Bacterial overgrowth only', 'Dietary deficiency',
 'B', 'B12 deficiency: intrinsic factor (parietal cells) lost with gastrectomy. B12 cannot be absorbed. Lifelong parenteral B12 supplementation required (monthly injections or high-dose oral).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Gastrointestinal stromal tumor (GIST) of the stomach:',
 'Is adenocarcinoma', 'Arises from interstitial cells of Cajal and is usually KIT or PDGFRA positive', 'Is always benign', 'Requires D2 lymphadenectomy', 'Is treated with chemotherapy first',
 'B', 'GIST: mesenchymal tumor, interstitial cells of Cajal origin. KIT mutation (80%) or PDGFRA. Imatinib for unresectable/metastatic. Surgery for localized (wedge resection adequate, no LND needed). Risk stratification guides adjuvant imatinib.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'GIST risk stratification for malignant behavior is based on:',
 'Patient age', 'Tumor size mitotic rate and location', 'Symptom duration', 'Blood markers', 'Imaging features only',
 'B', 'GIST risk: size (>5 cm higher risk), mitotic rate (>5/50 HPF higher risk), location (gastric better than small bowel). NIH and AFIP criteria. Guides adjuvant imatinib decision.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Gastric lymphoma is most commonly:',
 'Hodgkin lymphoma', 'Diffuse large B-cell lymphoma or MALT lymphoma', 'T-cell lymphoma', 'Burkitt lymphoma', 'Mantle cell lymphoma',
 'B', 'Primary gastric lymphoma: DLBCL most common, followed by MALT lymphoma (mucosa-associated). MALT associated with H. pylori (may regress with eradication). Surgery rarely first-line now.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'MALT lymphoma of stomach associated with H. pylori:',
 'Always requires chemotherapy', 'May regress with H. pylori eradication alone in early stages', 'Requires surgery first', 'Never responds to antibiotics', 'Is always high-grade',
 'B', 'MALT lymphoma: H. pylori eradication can achieve remission in 70-80% of localized, H. pylori-positive cases. Follow with endoscopy. If t(11;18) translocation present, less likely to respond.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Gastric carcinoid tumors:',
 'Are all malignant', 'Include three types with type 1 associated with chronic atrophic gastritis having best prognosis', 'Are adenocarcinomas', 'Always require total gastrectomy', 'Are very common',
 'B', 'Gastric carcinoids: Type 1 (CAG, hypergastrinemia, best prognosis, often endoscopic treatment), Type 2 (MEN1/ZE syndrome), Type 3 (sporadic, worst prognosis, surgery needed). NETs arising from ECL cells.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Ramucirumab in gastric cancer:',
 'Is first-line therapy', 'Is an anti-VEGFR2 antibody used in second-line metastatic disease', 'Is chemotherapy', 'Has no role', 'Is only for HER2-positive',
 'B', 'Ramucirumab: anti-VEGFR2 monoclonal antibody. Approved for second-line metastatic gastric cancer, alone or with paclitaxel. REGARD and RAINBOW trials. Also in combination with FOLFIRI.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'PD-L1 combined positive score (CPS) in gastric cancer:',
 'Is not used', 'Helps determine eligibility for checkpoint inhibitor therapy', 'Determines surgery type', 'Is only for GIST', 'Replaces HER2 testing',
 'B', 'CPS: PD-L1 expression scoring. Higher CPS predicts better response to checkpoint inhibitors. Nivolumab approved for first-line based on CPS. Pembrolizumab also based on CPS in later lines.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Prognosis of gastric cancer is primarily determined by:',
 'Patient age only', 'Stage at diagnosis (depth of invasion and lymph node involvement)', 'Tumor location only', 'Gender', 'Time of year',
 'B', 'Prognosis: stage most important. Early gastric cancer: >90% 5-year survival. Stage IV: <5%. T stage, N stage, M status. Histologic type (diffuse worse), R status, response to neoadjuvant also matter.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Positive peritoneal cytology in gastric cancer:',
 'Has no significance', 'Indicates stage IV disease (M1) with poor prognosis', 'Is always present', 'Means localized disease', 'Requires immediate surgery',
 'B', 'Positive peritoneal cytology: stage IV (M1). Even without visible peritoneal metastases, positive washing indicates poor prognosis. Surgery generally not beneficial. Systemic therapy indicated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Conversion therapy in initially unresectable gastric cancer refers to:',
 'Palliative care', 'Chemotherapy to downstage to allow potentially curative resection', 'Changing chemotherapy regimen', 'Radiation only', 'No surgery ever',
 'B', 'Conversion therapy: systemic therapy for initially unresectable disease to achieve resectability. If good response, surgery may provide benefit. Oligometastatic disease (limited liver/peritoneal) may be considered.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000025-0000-0000-0000-000000000025', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance after curative gastric cancer resection includes:',
 'No follow-up needed', 'History physical exam endoscopy and imaging at intervals', 'Only annual endoscopy', 'CT scan only', 'Blood tests only',
 'B', 'Surveillance: H&P, labs (CBC, chemistries) every 3-6 months for 2 years then annually. CT scan intervals. Upper endoscopy to assess anastomosis and remnant stomach. CEA not as established as in CRC.', 'medium', 'knowledge');
