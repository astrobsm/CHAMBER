-- Surgery 4 MCQ Question Bank - Batch 36
-- Section G: Neurosurgery - Brain Tumors
-- 40 Questions

-- Topic: Brain Tumors
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000036-0000-0000-0000-000000000036', 'Brain Tumors', 'a0000004-0000-0000-0000-000000000004', 'Primary and metastatic brain tumors, diagnosis and treatment', 36, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The most common brain tumor in adults is:',
 'Glioblastoma', 'Metastatic tumor', 'Meningioma', 'Pituitary adenoma', 'Acoustic neuroma',
 'B', 'Brain metastases: most common overall (~10x more common than primary). Sources: lung, breast, melanoma, renal, colorectal. Among primary tumors, glioblastoma most common malignant, meningioma most common benign.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The most common primary malignant brain tumor in adults is:',
 'Meningioma', 'Glioblastoma (WHO grade 4)', 'Oligodendroglioma', 'Ependymoma', 'Medulloblastoma',
 'B', 'Glioblastoma (GBM): most common primary malignant brain tumor in adults (~50% of gliomas). WHO grade 4. Highly aggressive, median survival ~15 months with treatment. Characteristic necrosis and vascular proliferation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The most common benign brain tumor in adults is:',
 'Glioblastoma', 'Meningioma', 'Astrocytoma', 'Schwannoma', 'Hemangioblastoma',
 'B', 'Meningioma: most common benign brain tumor (~35% of primary CNS tumors). From arachnoid cap cells. More common in women. Most are WHO grade 1. Treatment: surgery +/- radiation if symptomatic/growing.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Common presenting symptoms of brain tumors include:',
 'No symptoms ever', 'Headache seizures focal neurological deficits and cognitive changes', 'Fever and chills', 'Chest pain', 'Abdominal pain',
 'B', 'Brain tumor symptoms: headache (worse morning, with vomiting - raised ICP), seizures (especially low-grade gliomas), focal deficits (motor, sensory, language - depends on location), personality/cognitive changes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The imaging study of choice for brain tumor evaluation is:',
 'CT without contrast', 'MRI with and without gadolinium contrast', 'Skull X-ray', 'PET scan', 'Ultrasound',
 'B', 'Brain MRI: best imaging for brain tumors. T1, T2, FLAIR, post-gadolinium. Shows tumor extent, edema, mass effect, enhancement pattern. CT for emergencies, calcification. PET, MR spectroscopy adjuncts.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Glioblastoma on MRI typically appears as:',
 'Non-enhancing lesion', 'Ring-enhancing lesion with central necrosis and surrounding edema', 'Purely cystic lesion', 'Calcified mass', 'Homogeneously enhancing mass',
 'B', 'GBM imaging: irregular ring enhancement (viable tumor), central necrosis (non-enhancing), surrounding vasogenic edema (T2/FLAIR hyperintense). Crosses corpus callosum ("butterfly glioma"). Often heterogeneous.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The WHO classification of CNS tumors now incorporates:',
 'Only histology', 'Molecular markers (IDH mutation 1p/19q codeletion) in addition to histology', 'Only location', 'Age only', 'Only imaging',
 'B', 'WHO 2021 CNS classification: integrates molecular markers with histology. IDH mutation, 1p/19q codeletion, ATRX, H3K27M define tumor types. Affects prognosis and treatment. Molecular testing essential.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'IDH mutation in gliomas is associated with:',
 'Worse prognosis', 'Better prognosis and younger age at diagnosis', 'No prognostic value', 'Only in elderly', 'Only in metastases',
 'B', 'IDH mutation (IDH1/2): favorable prognostic factor. IDH-mutant gliomas: younger patients, better survival vs IDH-wildtype. GBM, IDH-wildtype is most aggressive. WHO classification distinguishes these.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Oligodendroglioma is characterized by:',
 'IDH wildtype status', 'IDH mutation and 1p/19q codeletion', 'BRAF mutation', 'H3K27M mutation', 'No molecular markers',
 'B', 'Oligodendroglioma: defined by IDH mutation AND 1p/19q codeletion. Better prognosis than astrocytomas. Chemosensitive (PCV). "Fried egg" cells on histology. WHO grade 2 or 3.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Standard treatment for glioblastoma includes:',
 'Surgery alone', 'Maximal safe resection followed by concurrent chemoradiation with temozolomide then adjuvant temozolomide', 'Radiation alone', 'Chemotherapy alone', 'Observation',
 'B', 'GBM treatment (Stupp protocol): maximal safe resection, then concurrent RT + temozolomide (daily), then adjuvant temozolomide (monthly). Tumor-treating fields (Optune) added. MGMT promoter methylation predicts TMZ benefit.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'MGMT promoter methylation in glioblastoma:',
 'Has no significance', 'Predicts better response to temozolomide and improved prognosis', 'Worsens prognosis', 'Indicates metastatic disease', 'Is present in all GBM',
 'B', 'MGMT methylation: silences DNA repair enzyme. Present in ~40% GBM. Predicts TMZ response, better survival. Prognostic and predictive. Testing routine. Unmethylated MGMT: consider clinical trials.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The goal of surgical resection for high-grade gliomas is:',
 'Complete cure', 'Maximal safe resection to reduce tumor burden while preserving function', 'Biopsy only always', 'Hemispheric removal', 'No surgery indicated',
 'B', 'Glioma surgery: maximal safe resection. Extent of resection correlates with survival. Preserve eloquent function (motor, language). Intraoperative mapping, awake craniotomy, navigation. Complete resection rarely possible due to infiltration.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Low-grade gliomas (WHO grade 2):',
 'Never transform to higher grade', 'Often undergo malignant transformation over time', 'Are the same as GBM', 'Require no treatment', 'Only affect elderly',
 'B', 'Low-grade gliomas: slower growing but eventually transform to higher grade. Young adults, often present with seizures. Treatment: surgery +/- RT/chemo (observation for some). IDH-mutant have better prognosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Meningioma arises from:',
 'Astrocytes', 'Arachnoid cap cells', 'Oligodendrocytes', 'Neurons', 'Ependymal cells',
 'B', 'Meningioma: from arachnoid cap cells (meninges). Extra-axial (outside brain parenchyma). Attached to dura. More common in women. Most are benign (WHO grade 1). Risk factors: radiation, NF2.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Meningioma on MRI characteristically shows:',
 'Ring enhancement', 'Homogeneous enhancement with dural tail and possible hyperostosis', 'No enhancement', 'Cystic lesion', 'Intra-axial location',
 'B', 'Meningioma imaging: extra-axial, dural-based, homogeneous enhancement, "dural tail" (adjacent dura enhancement), may have hyperostosis of adjacent bone. Well-circumscribed. CSF cleft between tumor and brain.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Treatment options for meningioma include:',
 'Chemotherapy first-line', 'Observation surgery or radiation depending on size location and symptoms', 'No treatment available', 'Immunotherapy', 'Only biopsy',
 'B', 'Meningioma treatment: observation (small, asymptomatic, elderly), surgery (symptomatic, growing), radiation (SRS for small, post-op for residual/atypical). Chemotherapy limited role. Grade affects management.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Vestibular schwannoma (acoustic neuroma):',
 'Arises from CN VII', 'Is a benign tumor of the vestibular nerve presenting with hearing loss and tinnitus', 'Is malignant', 'Arises from brain parenchyma', 'Never affects hearing',
 'B', 'Vestibular schwannoma: from vestibular portion of CN VIII (not acoustic). Benign. Symptoms: unilateral hearing loss, tinnitus, imbalance. CPA angle mass. Bilateral in NF2. Treatment: observation, surgery, SRS.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Pituitary adenoma:',
 'Is always malignant', 'Is usually benign and may be functional (hormone-secreting) or non-functional', 'Arises from meninges', 'Never causes hormonal problems', 'Is the same as craniopharyngioma',
 'B', 'Pituitary adenoma: benign (rarely carcinoma). Microadenoma <10 mm, macroadenoma >=10 mm. Functional: secrete hormones (prolactinoma most common, then GH, ACTH). Non-functional: mass effect (vision, hypopituitarism).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'A prolactinoma is best treated with:',
 'Surgery first-line', 'Dopamine agonists (cabergoline or bromocriptine)', 'Radiation only', 'Chemotherapy', 'Observation only',
 'B', 'Prolactinoma: medical treatment first-line. Dopamine agonists (cabergoline preferred) normalize prolactin, shrink tumor. Surgery for: medication intolerance, resistance, apoplexy, CSF leak. Excellent medical response.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Transsphenoidal surgery for pituitary adenoma:',
 'Approaches through the frontal lobe', 'Approaches through the nose and sphenoid sinus', 'Is never used', 'Is only for macroadenomas', 'Requires craniotomy always',
 'B', 'Transsphenoidal: through nose/sphenoid sinus to sella. Endoscopic or microscopic. Minimally invasive for most pituitary tumors. Avoids craniotomy. Craniotomy for large tumors with significant extension.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Craniopharyngioma:',
 'Is a malignant tumor', 'Is a benign tumor arising from Rathke pouch remnants often with cystic and calcified components', 'Only affects adults', 'Has no endocrine effects', 'Is the same as pituitary adenoma',
 'B', 'Craniopharyngioma: benign but locally aggressive. From Rathke pouch remnants. Bimodal: children (5-14) and adults (50-74). Suprasellar, cystic, calcified. Causes visual and pituitary dysfunction. Treatment: surgery +/- RT.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'The most common posterior fossa tumor in children is:',
 'Glioblastoma', 'Medulloblastoma', 'Meningioma', 'Schwannoma', 'Hemangioblastoma',
 'B', 'Medulloblastoma: most common malignant brain tumor in children. Posterior fossa (cerebellum, 4th ventricle). WHO grade 4 embryonal tumor. Presents with hydrocephalus, cerebellar signs. CSF dissemination risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Medulloblastoma treatment includes:',
 'Surgery alone', 'Surgical resection followed by craniospinal irradiation and chemotherapy', 'Chemotherapy alone', 'Radiation alone', 'Observation',
 'B', 'Medulloblastoma treatment: maximal safe resection, craniospinal radiation (entire neuraxis due to CSF spread risk), chemotherapy. Molecular subgroups (WNT, SHH, Group 3, Group 4) guide prognosis and therapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Ependymoma:',
 'Only affects adults', 'Arises from ependymal cells lining ventricles and can occur in brain or spinal cord', 'Is always benign', 'Never causes hydrocephalus', 'Is the same as medulloblastoma',
 'B', 'Ependymoma: from ependymal cells (ventricle lining). Posterior fossa (children), spinal cord (adults - myxopapillary). Can cause hydrocephalus. Treatment: surgery, radiation (chemotherapy role limited).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Hemangioblastoma:',
 'Is a malignant tumor', 'Is a benign vascular tumor often in cerebellum associated with von Hippel-Lindau disease', 'Never affects cerebellum', 'Is the same as glioblastoma', 'Only in children',
 'B', 'Hemangioblastoma: benign vascular tumor. Cerebellum (most common site), spinal cord. Sporadic or VHL syndrome (bilateral/multiple, also renal, retinal, pancreatic). Cyst with enhancing mural nodule. Surgery curative.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Von Hippel-Lindau disease is associated with:',
 'Acoustic neuromas', 'Hemangioblastomas of CNS and retina renal cell carcinoma and pheochromocytoma', 'Meningiomas', 'Schwannomas only', 'Glioblastoma',
 'B', 'VHL: autosomal dominant. Hemangioblastomas (CNS, retina), clear cell RCC, pheochromocytoma, pancreatic tumors/cysts, endolymphatic sac tumors. VHL gene (chr 3) tumor suppressor. Screening and surveillance important.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Neurofibromatosis type 2 (NF2) is characterized by:',
 'Cafe-au-lait spots', 'Bilateral vestibular schwannomas and multiple meningiomas', 'Glioblastomas', 'Hemangioblastomas', 'Optic gliomas',
 'B', 'NF2: autosomal dominant. Bilateral vestibular schwannomas (hallmark), meningiomas (multiple), ependymomas, schwannomas of other nerves. NF2/merlin gene (chr 22). Different from NF1 (peripheral neurofibromas, cafe-au-lait).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Treatment options for brain metastases include:',
 'No treatment available', 'Surgery stereotactic radiosurgery whole brain radiation and systemic therapy', 'Chemotherapy only', 'Observation only', 'Immunotherapy never works',
 'B', 'Brain metastases treatment: surgery (single, symptomatic, accessible), SRS (limited number <=4, <3 cm), WBRT (multiple, post-op for cavity), systemic therapy (targeted/immunotherapy with CNS activity). Multimodal often.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Stereotactic radiosurgery (SRS) for brain tumors:',
 'Requires craniotomy', 'Delivers a single high dose of focused radiation without incision', 'Is the same as WBRT', 'Is only for malignant tumors', 'Is chemotherapy',
 'B', 'SRS (Gamma Knife, CyberKnife, LINAC): single fraction, highly focused radiation. For brain mets, vestibular schwannomas, meningiomas, residual tumors. No surgery. Can be fractionated (stereotactic radiotherapy - SRT).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Primary CNS lymphoma (PCNSL):',
 'Is treated with surgery', 'Is treated with high-dose methotrexate-based chemotherapy and possibly radiation', 'Is always HIV-related', 'Is benign', 'Has excellent prognosis',
 'B', 'PCNSL: diffuse large B-cell lymphoma confined to CNS. More common in immunocompromised (HIV, transplant). Surgery only for diagnosis (biopsy). Treatment: high-dose methotrexate +/- RT. Avoid steroids before biopsy if possible.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Germ cell tumors of the CNS:',
 'Only occur in adults', 'Occur primarily in pineal and suprasellar regions in children and young adults', 'Are always benign', 'Never produce tumor markers', 'Are the same as gliomas',
 'B', 'CNS germ cell tumors: pineal region (males), suprasellar (females). Germinoma most common (radiosensitive). Non-germinomatous: teratoma, choriocarcinoma, yolk sac. Markers: AFP, beta-HCG help diagnosis.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Pineal region tumors commonly present with:',
 'Seizures only', 'Parinaud syndrome (upward gaze palsy) and hydrocephalus from aqueductal compression', 'Lower extremity weakness', 'Hearing loss', 'No symptoms',
 'B', 'Pineal tumor presentation: hydrocephalus (aqueduct compression), Parinaud syndrome (upgaze palsy, convergence-retraction nystagmus, light-near dissociation), endocrine disturbance (precocious puberty in HCG-secreting).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Colloid cyst of the third ventricle:',
 'Is a malignant tumor', 'Is a benign cyst that can cause acute hydrocephalus and sudden death due to foramen of Monro obstruction', 'Never causes problems', 'Is treated with radiation', 'Only in posterior fossa',
 'B', 'Colloid cyst: benign, anterior third ventricle. Can obstruct foramen of Monro causing acute obstructive hydrocephalus. Risk of sudden death. Symptoms: positional headache. Treatment: surgical removal (endoscopic or open).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Dexamethasone for brain tumors:',
 'Treats the tumor directly', 'Reduces peritumoral vasogenic edema and associated symptoms', 'Is contraindicated', 'Increases edema', 'Is chemotherapy',
 'B', 'Dexamethasone: reduces vasogenic edema around tumors (stabilizes BBB). Rapid symptom improvement. Does not treat tumor. Side effects with prolonged use. Avoid before PCNSL biopsy if possible (may cause regression).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000036-0000-0000-0000-000000000036', 'a0000004-0000-0000-0000-000000000004',
 'Tumor-treating fields (TTFields/Optune) for glioblastoma:',
 'Is chemotherapy', 'Uses alternating electric fields to disrupt tumor cell division', 'Replaces surgery', 'Is radiation therapy', 'Has no evidence of benefit',
 'B', 'TTFields (Optune): portable device delivers alternating electric fields to disrupt mitosis. Added to maintenance temozolomide for newly diagnosed GBM (EF-14 trial). Improved survival. Requires wearing device >18 hours/day.', 'hard', 'knowledge');
