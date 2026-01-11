-- Surgery 4 MCQ Question Bank - Batch 33
-- Section E: Oncology - Head and Neck Cancer
-- 40 Questions

-- Topic: Head and Neck Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000033-0000-0000-0000-000000000033', 'Head and Neck Cancer', 'a0000004-0000-0000-0000-000000000004', 'Squamous cell carcinoma and other malignancies of the head and neck region', 33, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'The most common histologic type of head and neck cancer is:',
 'Adenocarcinoma', 'Squamous cell carcinoma', 'Lymphoma', 'Melanoma', 'Sarcoma',
 'B', 'SCC: >90% of head and neck cancers. Arises from mucosal epithelium. Other types: salivary gland tumors, lymphoma, melanoma, sarcoma, neuroendocrine. HPV-related oropharyngeal SCC distinct entity.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Major risk factors for head and neck squamous cell carcinoma include:',
 'Obesity', 'Tobacco and alcohol use and HPV infection for oropharyngeal cancer', 'Low-fat diet', 'Exercise', 'Diabetes',
 'B', 'HNSCC risk factors: tobacco (smoking, chewing), alcohol (synergistic with tobacco), HPV (oropharynx - better prognosis), betel nut, poor oral hygiene, Plummer-Vinson syndrome, EBV (nasopharyngeal).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'HPV-positive oropharyngeal cancer compared to HPV-negative:',
 'Has worse prognosis', 'Has better prognosis and occurs in younger patients often without traditional risk factors', 'Is more aggressive', 'Is the same', 'Never has lymph node involvement',
 'B', 'HPV+ oropharyngeal SCC: younger patients, never/light smokers, better prognosis. HPV16 most common. p16 IHC surrogate marker. May have cystic nodal metastases. De-escalation trials ongoing.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Common presenting symptoms of oral cavity cancer include:',
 'Neck mass only', 'Non-healing ulcer leukoplakia erythroplakia and loose teeth', 'Hoarseness', 'Dysphagia only', 'Hearing loss',
 'B', 'Oral cavity cancer symptoms: non-healing ulcer/mass, pain, leukoplakia (white patch), erythroplakia (red patch - higher malignant potential), loose teeth, denture problems, numbness, trismus (late).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Leukoplakia of the oral cavity:',
 'Is always benign', 'Is a premalignant lesion with approximately 5 percent transformation rate', 'Is always cancer', 'Requires no follow-up', 'Is the same as candidiasis',
 'B', 'Leukoplakia: white patch that cannot be rubbed off. Premalignant - ~5% transform to cancer. Biopsy indicated. Erythroplakia (red) has higher malignant potential (~50%). Remove risk factors, close follow-up.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'The most common subsite of oral cavity cancer is:',
 'Hard palate', 'Oral tongue', 'Floor of mouth', 'Buccal mucosa', 'Gingiva',
 'B', 'Oral tongue: most common oral cavity cancer site. Floor of mouth second. Lip (most curable). Treatment: surgery primary for oral cavity, reconstruction often needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for oral cavity squamous cell carcinoma is primarily:',
 'Chemotherapy first', 'Surgical resection with neck dissection for node-positive or high-risk T stage', 'Radiation alone', 'Immunotherapy alone', 'Observation',
 'B', 'Oral cavity SCC: surgery primary treatment. Neck dissection for N+ or T2+ (elective). Adjuvant RT or chemoRT for adverse features (positive margins, perineural invasion, multiple nodes, extracapsular extension).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Oropharyngeal cancer includes tumors of the:',
 'Oral tongue', 'Base of tongue tonsils soft palate and posterior pharyngeal wall', 'Larynx', 'Hypopharynx', 'Nasopharynx',
 'B', 'Oropharynx subsites: base of tongue, palatine tonsils, soft palate, posterior pharyngeal wall. HPV-related SCC primarily affects tonsils and base of tongue. Different treatment approach from oral cavity.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for oropharyngeal squamous cell carcinoma:',
 'Is always surgical', 'Can be definitive chemoradiation or surgery based on extent and HPV status', 'Is radiation only', 'Is chemotherapy only', 'Is observation',
 'B', 'Oropharyngeal SCC: definitive RT or chemoRT (organ preservation) or surgery (TORS for selected). HPV status affects staging and outcomes. Multimodal often needed. De-escalation trials for HPV+.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Transoral robotic surgery (TORS) is used for:',
 'All head and neck cancers', 'Selected oropharyngeal and supraglottic tumors allowing minimally invasive resection', 'Only benign lesions', 'Only thyroid surgery', 'Only skin cancer',
 'B', 'TORS: minimally invasive resection of oropharynx (tonsil, base of tongue), supraglottis, hypopharynx. Advantages: less morbidity, better function, shorter hospital stay. Selected T1-T2 tumors.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Laryngeal cancer most commonly presents with:',
 'Neck mass', 'Hoarseness (glottic tumors)', 'Dysphagia', 'Pain', 'Stridor only',
 'B', 'Laryngeal cancer symptoms: glottic - hoarseness (early symptom, good prognosis). Supraglottic - sore throat, dysphagia, referred otalgia, later hoarseness. Subglottic - stridor, dyspnea. Lymph node mets depend on site.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'The most common subsite of laryngeal cancer is:',
 'Supraglottis', 'Glottis (true vocal cords)', 'Subglottis', 'Epiglottis', 'Arytenoids',
 'B', 'Glottic cancer: most common (~60%). True vocal cords. Presents early with hoarseness. Lower nodal metastasis rate (cords have sparse lymphatics). Supraglottic: higher nodal mets, presents later.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Early glottic cancer (T1-T2) can be treated with:',
 'Total laryngectomy always', 'Radiation therapy or transoral laser microsurgery with excellent voice preservation', 'Chemotherapy alone', 'Observation', 'Immunotherapy',
 'B', 'Early glottic cancer: RT or transoral laser/microsurgery. Excellent cure rates (>90%). Voice preservation priority. Total laryngectomy reserved for advanced/recurrent. Partial laryngectomy options for selected T2-T3.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for advanced laryngeal cancer (T3-T4) includes:',
 'Radiation alone', 'Organ preservation with concurrent chemoradiation or total laryngectomy', 'Chemotherapy alone', 'Observation', 'Tracheostomy only',
 'B', 'Advanced laryngeal cancer: organ preservation (induction chemo + RT or concurrent chemoRT - VA, RTOG 91-11) vs total laryngectomy + post-op RT. Consider larynx function, patient preferences.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Total laryngectomy results in:',
 'Temporary voice loss', 'Permanent separation of airway and digestive tract with a permanent stoma', 'Normal swallowing issues', 'No functional change', 'Temporary tracheostomy',
 'B', 'Total laryngectomy: permanent tracheostoma (airway), loss of normal voice (speech rehabilitation: TEP, esophageal speech, electrolarynx), swallowing preserved, loss of smell (air bypasses nose).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Tracheoesophageal puncture (TEP) with voice prosthesis:',
 'Is not effective', 'Provides the best voice rehabilitation after total laryngectomy', 'Prevents swallowing', 'Is temporary', 'Is contraindicated after laryngectomy',
 'B', 'TEP: creates fistula between trachea and esophagus, one-way valve allows air into pharynx for speech. Best speech quality after TL. Primary (at laryngectomy) or secondary placement. Maintenance required.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Hypopharyngeal cancer:',
 'Has excellent prognosis', 'Often presents at advanced stage with poor prognosis and high rate of nodal metastases', 'Is treated with surgery alone', 'Never spreads', 'Is the same as laryngeal cancer',
 'B', 'Hypopharyngeal SCC: poor prognosis (rich lymphatics, late presentation). Sites: pyriform sinus (most common), posterior pharyngeal wall, postcricoid. Treatment: chemoRT or surgery + reconstruction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Nasopharyngeal carcinoma is associated with:',
 'HPV infection', 'Epstein-Barr virus (EBV) infection', 'Helicobacter pylori', 'Hepatitis B', 'HIV',
 'B', 'Nasopharyngeal carcinoma: EBV-associated. Endemic in Southern China, Southeast Asia. Undifferentiated (WHO type III) most common in endemic areas. Plasma EBV DNA for monitoring. Very radiosensitive.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Treatment for nasopharyngeal carcinoma is:',
 'Primarily surgical', 'Primarily radiation or chemoradiation given sensitivity and inaccessible location', 'Chemotherapy alone', 'Observation', 'Immunotherapy alone',
 'B', 'Nasopharyngeal carcinoma: RT primary for early stage. Concurrent chemoRT (cisplatin) for locally advanced. Highly radiosensitive. Surgery only for persistent/recurrent (endoscopic or open). Adjuvant chemo may be added.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Neck dissection in head and neck cancer:',
 'Is never indicated', 'Removes cervical lymph nodes for staging and treatment with different types based on indication', 'Only removes one node', 'Is only diagnostic', 'Prevents radiation',
 'B', 'Neck dissection types: radical (all 5 levels + SCM, IJV, CN XI), modified radical (levels I-V, preserve >=1 structure), selective (specific levels based on primary site). Therapeutic for N+ or elective for high-risk N0.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Selective neck dissection removes:',
 'All cervical lymph node levels', 'Specific levels based on the primary tumor site lymphatic drainage pattern', 'Only level I', 'Only level V', 'No lymph nodes',
 'B', 'Selective neck dissection: based on primary site. Oral cavity: levels I-III (supraomohyoid). Oropharynx/larynx: levels II-IV (lateral). Preserves non-lymphatic structures. For elective treatment of N0 neck.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'The spinal accessory nerve (CN XI) if sacrificed in radical neck dissection causes:',
 'Hoarseness', 'Shoulder dysfunction with weakness of shoulder abduction', 'Dysphagia', 'Facial paralysis', 'Hearing loss',
 'B', 'CN XI (spinal accessory): innervates trapezius. Sacrifice causes shoulder droop, weakness of shoulder abduction above 90 degrees, chronic pain. Modified radical preserves XI. Physical therapy important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'An unknown primary presenting with cervical lymph node metastasis of SCC:',
 'Should have wide excision only', 'Requires thorough workup including examination under anesthesia panendoscopy and PET-CT', 'Does not need biopsy', 'Is always HPV-related', 'Has no treatment',
 'B', 'Unknown primary: cervical SCC without identified primary. Workup: H&P, FNA of node, CT/MRI, PET-CT, panendoscopy (nasopharyngoscopy, laryngoscopy, esophagoscopy) + tonsillectomy + BOT biopsies. HPV/EBV testing.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Salivary gland tumors most commonly arise in the:',
 'Submandibular gland', 'Parotid gland', 'Sublingual gland', 'Minor salivary glands', 'All equally',
 'B', 'Salivary gland tumors: parotid most common (80%). Rule of 80s: 80% in parotid, 80% of parotid tumors benign, 80% of parotid tumors are pleomorphic adenoma. Smaller gland = higher malignancy rate.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'The most common benign salivary gland tumor is:',
 'Warthin tumor', 'Pleomorphic adenoma', 'Oncocytoma', 'Myoepithelioma', 'Basal cell adenoma',
 'B', 'Pleomorphic adenoma: most common salivary tumor overall. Benign mixed tumor. Parotid most common site. Slow-growing, painless. Risk of malignant transformation if untreated long-term. Complete excision.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Warthin tumor (papillary cystadenoma lymphomatosum):',
 'Is malignant', 'Is the second most common benign parotid tumor often bilateral and associated with smoking', 'Only affects women', 'Requires radiation', 'Is in minor salivary glands',
 'B', 'Warthin tumor: second most common benign parotid tumor. Older men, smokers. Bilateral/multifocal more common than other tumors. Treatment: superficial parotidectomy. Observation may be acceptable.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'The most common malignant salivary gland tumor is:',
 'Adenoid cystic carcinoma', 'Mucoepidermoid carcinoma', 'Acinic cell carcinoma', 'Carcinoma ex pleomorphic adenoma', 'SCC',
 'B', 'Mucoepidermoid carcinoma: most common salivary gland malignancy. Low, intermediate, high grade. Parotid most common. Treatment: surgery +/- RT based on grade and stage.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Adenoid cystic carcinoma is characterized by:',
 'No metastatic potential', 'Perineural invasion with tendency for late lung metastases', 'Rapid response to chemotherapy', 'Excellent prognosis', 'Only local invasion',
 'B', 'Adenoid cystic carcinoma: slow-growing but relentless. Perineural spread characteristic. Late distant metastases (lung) common, may appear 10-20 years later. Surgery + adjuvant RT. Long follow-up needed.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Facial nerve preservation during parotidectomy:',
 'Is not important', 'Is a key surgical goal unless tumor is directly involving the nerve', 'Always requires sacrifice', 'Is impossible', 'Prevents recurrence',
 'B', 'Facial nerve preservation: paramount in parotid surgery. Identify and preserve unless directly invaded by malignancy. Intraoperative monitoring. Sacrifice requires rehabilitation (nerve graft, static procedures).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Frey syndrome after parotidectomy is:',
 'Facial paralysis', 'Gustatory sweating due to aberrant regeneration of parasympathetic fibers', 'Hearing loss', 'First bite syndrome', 'Sialocele',
 'B', 'Frey syndrome: gustatory sweating. Aberrant regeneration of parasympathetic fibers (auriculotemporal nerve) to sweat glands. Sweating during eating. Treatment: antiperspirant, botulinum toxin, barrier flaps during surgery.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Concurrent chemoradiation for head and neck cancer typically uses:',
 'Doxorubicin', 'Cisplatin as the radiosensitizer', 'Imatinib', 'Immunotherapy', 'No chemotherapy',
 'B', 'Concurrent chemoRT: cisplatin (100 mg/m2 q3 weeks x3, or weekly) standard. Radiosensitizer. Improves locoregional control and survival. Increased toxicity (mucositis, dysphagia). Carboplatin alternative if cisplatin contraindicated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Cetuximab in head and neck cancer is:',
 'A checkpoint inhibitor', 'An EGFR inhibitor used with radiation or in recurrent/metastatic disease', 'Chemotherapy', 'A VEGF inhibitor', 'Not approved for HNSCC',
 'B', 'Cetuximab: anti-EGFR monoclonal antibody. With RT for locally advanced (alternative to cisplatin). With platinum + 5-FU for recurrent/metastatic (EXTREME regimen). Skin toxicity correlates with response.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Pembrolizumab for recurrent or metastatic head and neck SCC:',
 'Is never used', 'Is first-line alone for PD-L1 high or with chemotherapy for others', 'Is only second-line', 'Is contraindicated', 'Is chemotherapy',
 'B', 'Pembrolizumab: KEYNOTE-048. First-line R/M HNSCC. Pembrolizumab alone (CPS>=1) or with platinum + 5-FU (all patients). Improved OS. Also second-line. Nivolumab CheckMate-141 second-line.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Common acute toxicities of radiation for head and neck cancer include:',
 'Alopecia only', 'Mucositis dysphagia xerostomia and skin reactions', 'Diarrhea', 'Myelosuppression only', 'No side effects',
 'B', 'RT toxicities: acute - mucositis (pain, odynophagia), dermatitis, dysphagia (may need feeding tube), xerostomia. Late - xerostomia, fibrosis, osteoradionecrosis, hypothyroidism, dental caries, dysphagia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Osteoradionecrosis of the jaw:',
 'Is common and expected', 'Is a late radiation complication requiring dental evaluation before treatment', 'Only affects teeth', 'Is treated with radiation', 'Is not preventable',
 'B', 'Osteoradionecrosis: late complication, exposed necrotic bone. Prevention: dental evaluation and extraction of diseased teeth BEFORE RT, fluoride trays, good oral hygiene. Treatment: hyperbaric oxygen, surgery for severe cases.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Percutaneous endoscopic gastrostomy (PEG) tube in head and neck cancer patients:',
 'Is never needed', 'May be required for nutritional support during intensive chemoradiation', 'Prevents treatment', 'Is only for metastatic disease', 'Is permanent always',
 'B', 'PEG/feeding tube: often needed during chemoRT for HNSCC due to severe mucositis, dysphagia. Prophylactic vs reactive placement debated. Maintains nutrition during treatment. Usually temporary.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000033-0000-0000-0000-000000000033', 'a0000004-0000-0000-0000-000000000004',
 'Field cancerization in head and neck cancer refers to:',
 'Single tumor', 'Widespread mucosal abnormalities due to carcinogen exposure increasing risk of second primary tumors', 'Metastatic spread', 'Radiation field', 'Lymph node involvement',
 'B', 'Field cancerization: entire upper aerodigestive tract exposed to carcinogens. Increased risk of second primary tumors (lung, esophagus, other H&N sites). 2-4% annual risk. Surveillance and smoking cessation critical.', 'medium', 'knowledge');
