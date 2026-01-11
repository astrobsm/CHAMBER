-- Surgery 4 MCQ Question Bank - Batch 26
-- Section E: Oncology - Esophageal Cancer
-- 40 Questions

-- Topic: Esophageal Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000026-0000-0000-0000-000000000026', 'Esophageal Cancer', 'a0000004-0000-0000-0000-000000000004', 'Esophageal cancer epidemiology, diagnosis, staging, and treatment', 26, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The two main histologic types of esophageal cancer are:',
 'Adenocarcinoma and lymphoma', 'Squamous cell carcinoma and adenocarcinoma', 'Carcinoid and GIST', 'Small cell and large cell', 'Melanoma and sarcoma',
 'B', 'SCC and adenocarcinoma: >95% of esophageal cancers. SCC: upper/middle esophagus, associated with smoking/alcohol. Adenocarcinoma: lower esophagus/GEJ, associated with GERD/Barrett.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for esophageal squamous cell carcinoma include:',
 'GERD and obesity', 'Smoking alcohol hot beverages and nitrosamines', 'Barrett esophagus', 'H. pylori infection', 'High socioeconomic status',
 'B', 'SCC risk factors: tobacco (strongest), alcohol (synergistic with smoking), very hot beverages, caustic injury, achalasia, Plummer-Vinson syndrome, prior head/neck cancer, nitrosamines.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Barrett esophagus is a risk factor for:',
 'Esophageal squamous cell carcinoma', 'Esophageal adenocarcinoma', 'Gastric cancer', 'Small bowel cancer', 'No cancer risk',
 'B', 'Barrett esophagus: intestinal metaplasia of distal esophagus from chronic GERD. Precursor to adenocarcinoma. Annual cancer risk ~0.5%. Surveillance endoscopy recommended. Dysplasia increases risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The most common symptom of esophageal cancer is:',
 'Chest pain', 'Progressive dysphagia initially for solids then liquids', 'Hematemesis', 'Heartburn', 'Hoarseness',
 'B', 'Progressive dysphagia: most common presenting symptom. Solids before liquids (mechanical obstruction). Weight loss common. Odynophagia, regurgitation. >60% of lumen must be obstructed for symptoms.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Esophageal cancer staging workup includes:',
 'Endoscopy only', 'Upper endoscopy with biopsy EUS CT PET and bronchoscopy for proximal tumors', 'MRI only', 'Blood tests only', 'Barium swallow only',
 'B', 'Staging: EGD with biopsy (diagnosis, location), EUS (T and N staging), CT chest/abdomen (metastases), PET-CT (distant metastases, nodes), bronchoscopy for upper/middle tumors (airway invasion).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Endoscopic ultrasound (EUS) in esophageal cancer is most useful for:',
 'Detecting liver metastases', 'Assessing depth of tumor invasion and regional lymph nodes', 'Replacing CT', 'Treatment', 'Screening',
 'B', 'EUS: best for T and N staging. Determines wall layer involvement, detects regional lymph nodes (FNA possible). Accuracy 80-90% for T staging. Critical for treatment planning.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'PET-CT in esophageal cancer staging:',
 'Is not useful', 'Detects distant metastases and occult nodal disease changing management in 15-20 percent', 'Replaces EUS', 'Only for surveillance', 'Only for SCC',
 'B', 'PET-CT: detects distant metastases (M staging), occult nodal disease. Changes management in 15-20% by detecting unresectable disease. Standard staging for potentially curable esophageal cancer.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The location of adenocarcinoma in the esophagus is typically:',
 'Upper esophagus', 'Middle esophagus', 'Lower esophagus and gastroesophageal junction', 'Throughout esophagus equally', 'Cervical esophagus',
 'C', 'Adenocarcinoma: distal esophagus and GEJ. Arises from Barrett metaplasia. Increasing incidence in Western countries. SCC more common in upper/middle esophagus and globally.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Early esophageal cancer confined to mucosa can be treated with:',
 'Chemotherapy only', 'Endoscopic mucosal resection or endoscopic submucosal dissection', 'Radiation only', 'Total esophagectomy always', 'Observation',
 'B', 'T1a (mucosal) without high-risk features: endoscopic resection (EMR/ESD) may be curative. Avoids esophagectomy morbidity. T1b (submucosal) or high-risk features: surgery recommended.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Neoadjuvant chemoradiation for locally advanced esophageal cancer:',
 'Decreases survival', 'Improves survival compared to surgery alone for T3/T4 or node-positive disease', 'Is only for SCC', 'Is never used', 'Only for metastatic',
 'B', 'Neoadjuvant chemoRT (CROSS regimen for adenocarcinoma): improves survival vs surgery alone. For cT3/T4 or node-positive. Complete pathologic response in 20-30%. Standard for locally advanced.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The CROSS trial regimen for neoadjuvant treatment of esophageal cancer includes:',
 'Chemotherapy alone', 'Carboplatin and paclitaxel with concurrent radiation', 'FOLFOX', 'Surgery first', 'Radiation alone',
 'B', 'CROSS regimen: weekly carboplatin/paclitaxel with concurrent radiation (41.4 Gy), followed by surgery. Landmark trial showing survival benefit for neoadjuvant chemoRT.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Esophagectomy surgical approaches include:',
 'Only open transthoracic', 'Transthoracic (Ivor Lewis McKeown) or transhiatal approaches', 'Only laparoscopic', 'Only robotic', 'Endoscopic only',
 'B', 'Approaches: Ivor Lewis (laparotomy + right thoracotomy, intrathoracic anastomosis), McKeown (three-incision, cervical anastomosis), transhiatal (no thoracotomy, cervical anastomosis). Minimally invasive options.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Ivor Lewis esophagectomy involves:',
 'Only abdominal incision', 'Laparotomy followed by right thoracotomy with intrathoracic anastomosis', 'Cervical anastomosis', 'Transhiatal approach', 'Left thoracotomy',
 'B', 'Ivor Lewis: two-stage. Abdominal phase (gastric mobilization, pyloroplasty), thoracic phase (esophageal resection, intrathoracic esophagogastric anastomosis). Good for mid/lower esophageal tumors.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'McKeown (three-incision) esophagectomy includes anastomosis in the:',
 'Chest', 'Neck (cervical anastomosis)', 'Abdomen', 'No anastomosis', 'Anywhere in esophagus',
 'B', 'McKeown: right thoracotomy, laparotomy, left neck incision. Cervical anastomosis. Advantage: leak in neck easier to manage. Used for upper/middle esophageal tumors. Three-hole or three-field.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Transhiatal esophagectomy avoids:',
 'Abdominal surgery', 'Thoracotomy by blunt dissection through hiatus', 'Neck incision', 'General anesthesia', 'All incisions',
 'B', 'Transhiatal: abdominal and cervical incisions, no thoracotomy. Blunt esophageal dissection through hiatus. Cervical anastomosis. May reduce pulmonary complications. Limited lymph node harvest.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly used conduit for esophageal reconstruction is:',
 'Jejunum', 'Stomach (gastric pull-up)', 'Colon', 'Skin tube', 'Synthetic graft',
 'B', 'Gastric conduit: most common (good blood supply, adequate length, single anastomosis). Alternatives: colon interposition (when stomach not available), jejunum (for short segments).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Anastomotic leak after esophagectomy:',
 'Is rare and benign', 'Is a serious complication occurring in 10-20 percent with significant morbidity', 'Never occurs', 'Is always fatal', 'Only occurs with cervical anastomosis',
 'B', 'Anastomotic leak: major complication, 10-20%. Higher with cervical anastomosis (easier to manage) vs intrathoracic (worse consequences - mediastinitis). Management: drainage, stenting, reoperation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Chyle leak after esophagectomy occurs due to injury to:',
 'Blood vessels', 'Thoracic duct', 'Lymph nodes only', 'Nerve plexus', 'Trachea',
 'B', 'Chylothorax: thoracic duct injury. Presents with milky chest tube output after oral intake resumed. Conservative management (NPO, TPN, octreotide) or surgical/interventional ligation if persistent.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Recurrent laryngeal nerve injury during esophagectomy causes:',
 'Dysphagia', 'Hoarseness and aspiration risk', 'Arm weakness', 'Facial numbness', 'Hearing loss',
 'B', 'RLN injury: vocal cord paralysis, hoarseness, aspiration risk. More common with cervical anastomosis and extensive lymph node dissection. May be temporary or permanent.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Definitive chemoradiation (without surgery) is an option for:',
 'All esophageal cancers', 'Esophageal SCC especially cervical and unresectable tumors or patients unfit for surgery', 'Adenocarcinoma only', 'Only for metastatic disease', 'Never an option',
 'B', 'Definitive chemoRT: SCC (similar outcomes to surgery for some), cervical esophageal cancer, unresectable locally advanced, medically unfit for surgery. Some achieve complete response.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Cervical esophageal cancer is often treated with:',
 'Surgery first', 'Definitive chemoradiation due to complex surgical anatomy and morbidity', 'Observation', 'Chemotherapy alone', 'No treatment',
 'B', 'Cervical esophageal cancer: definitive chemoRT often preferred. Surgery requires laryngopharyngectomy with significant morbidity. Organ preservation possible with good response to chemoRT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Palliation of malignant dysphagia can be achieved with:',
 'Chemotherapy alone', 'Esophageal stenting radiation or laser ablation', 'Surgery always', 'No palliation possible', 'Antibiotics',
 'B', 'Palliation of dysphagia: self-expanding metal stents (SEMS, quick relief), brachytherapy, external beam radiation, laser/APC ablation, chemotherapy. Goal: improve oral intake and quality of life.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'First-line chemotherapy for metastatic esophageal adenocarcinoma typically includes:',
 'Single agent 5-FU', 'Fluoropyrimidine plus platinum with or without trastuzumab (if HER2+)', 'Targeted therapy only', 'No treatment available', 'Radiation only',
 'B', 'Metastatic esophageal adenocarcinoma: similar to gastric cancer. Fluoropyrimidine + platinum. Add trastuzumab if HER2+. Checkpoint inhibitors now incorporated (nivolumab based on CheckMate 648/649).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Checkpoint inhibitors in esophageal cancer are indicated for:',
 'All patients', 'Advanced or metastatic esophageal cancer especially with PD-L1 expression', 'Early stage only', 'Only after surgery', 'Never indicated',
 'B', 'Checkpoint inhibitors: nivolumab, pembrolizumab approved for esophageal cancer. First-line and subsequent lines depending on histology and PD-L1. Also adjuvant nivolumab after neoadjuvant chemoRT (CheckMate 577).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Adjuvant nivolumab after neoadjuvant chemoradiation and surgery for esophageal cancer:',
 'Has no benefit', 'Improves disease-free survival in patients with residual pathologic disease', 'Is only for SCC', 'Replaces surgery', 'Is not approved',
 'B', 'CheckMate 577: adjuvant nivolumab for 1 year after neoadjuvant chemoRT and R0 resection with residual pathologic disease. Improved DFS. Now standard of care for eligible patients.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Tracheoesophageal fistula in esophageal cancer:',
 'Is benign', 'Is a serious complication with aspiration requiring covered stenting or surgery', 'Only occurs post-surgery', 'Is easily treated', 'Never occurs',
 'B', 'TE fistula: tumor erosion into trachea. Aspiration pneumonia, sepsis. Covered stent (esophageal, sometimes tracheal too), may need surgical bypass or diversion. Poor prognosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Siewert classification is used for:',
 'All esophageal cancers', 'Gastroesophageal junction adenocarcinomas based on tumor epicenter location', 'Only SCC', 'Staging', 'Lymph node assessment',
 'B', 'Siewert classification: GEJ tumors. Type I (1-5 cm above GEJ, distal esophageal), Type II (1 cm above to 2 cm below GEJ, true cardia), Type III (2-5 cm below GEJ, subcardial gastric). Guides surgical approach.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Siewert Type I GEJ tumors are best treated with:',
 'Total gastrectomy', 'Esophagectomy with gastric conduit', 'Distal gastrectomy only', 'Endoscopic resection always', 'No surgery',
 'B', 'Siewert I: behave like esophageal cancer. Esophagectomy preferred. Siewert II: either approach. Siewert III: extended total gastrectomy (behave like gastric cancer). Approach guides lymphadenectomy extent.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Nutritional support during esophageal cancer treatment:',
 'Is not important', 'Is essential due to high risk of malnutrition and may require feeding tube', 'Only after surgery', 'Only for metastatic patients', 'Decreases survival',
 'B', 'Nutritional support: critical. Many patients malnourished at diagnosis. Feeding jejunostomy often placed during surgery. May need enteral feeding during chemoRT. Impacts treatment tolerance and outcomes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The 5-year survival rate for localized esophageal cancer treated with curative intent is approximately:',
 '5 percent', '20 percent', '40-50 percent', '80 percent', '95 percent',
 'C', '5-year survival: localized ~45%, regional ~25%, distant ~5%. Overall ~20%. Stage at diagnosis is key. Multimodal therapy has improved outcomes for locally advanced disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance after esophagectomy for esophageal cancer includes:',
 'No follow-up', 'Regular clinic visits imaging (CT) and symptom monitoring', 'Only endoscopy', 'Only blood tests', 'PET annually',
 'B', 'Surveillance: H&P every 3-6 months for 2 years, then annually. CT chest/abdomen. Endoscopy if symptoms or to evaluate anastomosis. Address nutritional issues. Detect recurrence early if possible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Barrett esophagus with high-grade dysplasia should be:',
 'Observed only', 'Treated with endoscopic eradication therapy (ablation or resection)', 'Ignored', 'Only biopsied annually', 'Treated with PPI only',
 'B', 'High-grade dysplasia: high cancer risk. Endoscopic treatment: EMR/ESD for visible lesions, radiofrequency ablation (RFA) for flat dysplasia. Esophagectomy for extensive disease or failed endoscopic therapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'Radiofrequency ablation (RFA) for Barrett esophagus is used to:',
 'Treat invasive cancer', 'Eradicate dysplastic Barrett epithelium and reduce cancer risk', 'Replace surveillance', 'Only for long-segment Barrett', 'Treat strictures',
 'B', 'RFA: for dysplastic Barrett esophagus. Ablates metaplastic epithelium, allows neosquamous regeneration. Reduces cancer risk. Combined with EMR for visible lesions. Requires ongoing surveillance.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004',
 'The esophagus lacks serosa which means:',
 'Better barrier to spread', 'Earlier transmural invasion and spread to adjacent structures', 'Improved outcomes', 'No impact on prognosis', 'Better response to chemotherapy',
 'B', 'No serosa: tumor can spread transmurally earlier. Easier local invasion (airway, aorta, pericardium). Contributes to earlier T3 stage at presentation and higher rate of R1 resection.', 'medium', 'knowledge');
