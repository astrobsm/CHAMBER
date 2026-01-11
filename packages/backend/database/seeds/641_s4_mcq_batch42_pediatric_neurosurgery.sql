-- Surgery 4 MCQ Question Bank - Batch 42
-- Section G: Neurosurgery - Pediatric Neurosurgery
-- 40 Questions

-- Topic: Pediatric Neurosurgery
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000042-0000-0000-0000-000000000042', 'Pediatric Neurosurgery', 'a0000004-0000-0000-0000-000000000004', 'Congenital CNS malformations, pediatric brain tumors, and neural tube defects', 42, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Neural tube closure normally occurs during which week of gestation:',
 'Week 1-2', 'Week 3-4', 'Week 8-10', 'Week 16-20', 'Week 30-32',
 'B', 'Neural tube closure: weeks 3-4 of gestation. Anterior neuropore closes day 25, posterior neuropore day 27. Failure leads to neural tube defects. Folic acid supplementation before/during pregnancy reduces risk by 70%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Spina bifida occulta is:',
 'Open spinal defect', 'Closed defect with vertebral arch abnormality but intact skin and spinal cord', 'Most severe form', 'Always symptomatic', 'Myelomeningocele',
 'B', 'Spina bifida occulta: mildest form. Vertebral arch incomplete but skin intact, no neural tissue exposure. Often incidental. May have skin markers (tuft of hair, dimple, lipoma). Usually asymptomatic, no treatment needed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Meningocele differs from myelomeningocele in that:',
 'They are identical', 'Meningocele contains only meninges and CSF while myelomeningocele includes neural tissue', 'Meningocele is more severe', 'Myelomeningocele has only skin involved', 'No difference',
 'B', 'Meningocele: meninges and CSF herniate through defect, neural tissue remains in canal. Better prognosis. Myelomeningocele: neural tissue (spinal cord, nerve roots) in the sac. More severe, neurological deficits.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Myelomeningocele is most commonly located in the:',
 'Cervical region', 'Thoracic region', 'Lumbar and lumbosacral region', 'Sacral only', 'Cranial region',
 'C', 'Myelomeningocele location: lumbosacral most common (70-80%). Level determines neurological deficits. Higher lesions = more severe paralysis, worse prognosis. Thoracic and cervical less common.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Myelomeningocele is commonly associated with:',
 'Normal brain', 'Chiari II malformation and hydrocephalus', 'Dandy-Walker only', 'No CNS associations', 'Agenesis of corpus callosum only',
 'B', 'Myelomeningocele associations: Chiari II malformation (virtually all), hydrocephalus (80-90% need shunt), tethered cord, syringomyelia. Also: orthopedic deformities, bladder/bowel dysfunction.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Management of myelomeningocele at birth includes:',
 'Delayed repair after months', 'Early surgical closure within 24-48 hours to prevent infection', 'No surgery needed', 'Radiation therapy', 'Chemotherapy',
 'B', 'Myelomeningocele neonatal management: protect lesion (moist sterile dressing), prophylactic antibiotics, surgical closure within 24-48 hours (reduce infection, CSF leak, preserve neural function). Fetal surgery now an option.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'The MOMS trial demonstrated that fetal surgery for myelomeningocele:',
 'Has no benefit', 'Reduces need for shunting and improves motor outcomes compared to postnatal repair', 'Is contraindicated', 'Increases mortality', 'Has no effect on Chiari',
 'B', 'MOMS trial: fetal myelomeningocele repair (before 26 weeks) reduced shunt rate (40% vs 82%), improved motor function, reversed hindbrain herniation. Trade-off: increased preterm delivery, uterine complications. Performed at specialized centers.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Chiari I malformation is defined as:',
 'Hindbrain herniation with myelomeningocele', 'Cerebellar tonsils herniated at least 5mm below foramen magnum', 'Brain tumor', 'Hydrocephalus', 'Normal variant',
 'B', 'Chiari I: cerebellar tonsillar herniation >5mm below foramen magnum. Acquired or developmental. Symptoms: headache (Valsalva-related), neck pain, syringomyelia (50-70%). Not associated with myelomeningocele (that''s Chiari II).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Chiari II malformation includes:',
 'Cerebellar tonsil herniation only', 'Hindbrain herniation with myelomeningocele and small posterior fossa', 'Normal cerebellum', 'No spinal defect', 'Only in adults',
 'B', 'Chiari II (Arnold-Chiari): hindbrain herniation with myelomeningocele. Small posterior fossa, caudal displacement of brainstem and 4th ventricle, beaked tectum, elongated 4th ventricle. Virtually all myelomeningocele patients.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Surgical treatment for symptomatic Chiari I malformation is:',
 'VP shunt', 'Posterior fossa decompression with duraplasty', 'Chemotherapy', 'Radiation', 'No treatment available',
 'B', 'Chiari I surgery: suboccipital craniectomy, C1 laminectomy, duraplasty (expand dural sac). Decompresses craniocervical junction. For symptomatic patients (headaches, syringomyelia, progressive deficits). Syrinx often improves.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Syringomyelia is:',
 'Brain tumor', 'Fluid-filled cavity within the spinal cord', 'Disc herniation', 'Spinal stenosis', 'Nerve tumor',
 'B', 'Syringomyelia: CSF-filled cavity in spinal cord parenchyma. Often associated with Chiari I. Symptoms: cape-like sensory loss, weakness, pain. Expands over time. Treatment: address underlying cause (Chiari decompression).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Encephalocele is:',
 'Herniation of spinal contents', 'Herniation of brain or meninges through skull defect', 'Normal variant', 'Brain tumor', 'Hydrocephalus',
 'B', 'Encephalocele: meninges and/or brain herniate through skull defect. Occipital most common in Western countries, frontoethmoidal in Southeast Asia. Treatment: surgical repair. Associated anomalies common.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Craniosynostosis is:',
 'Open skull sutures', 'Premature fusion of one or more cranial sutures', 'Normal development', 'Brain atrophy', 'Hydrocephalus',
 'B', 'Craniosynostosis: premature suture fusion. Restricts skull growth perpendicular to fused suture, compensatory growth parallel. Causes abnormal head shape. May increase ICP if multiple sutures. Syndromic vs nonsyndromic forms.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Sagittal synostosis results in:',
 'Brachycephaly', 'Scaphocephaly or dolichocephaly with long narrow skull', 'Trigonocephaly', 'Plagiocephaly', 'Normal head',
 'B', 'Sagittal synostosis: most common single suture (40-55%). Results in scaphocephaly/dolichocephaly: long, narrow skull (boat-shaped). Compensatory growth anteroposteriorly. Prominent forehead and occiput, palpable ridge.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Coronal synostosis results in:',
 'Long narrow skull', 'Brachycephaly if bilateral or plagiocephaly if unilateral', 'Trigonocephaly', 'Kleeblattschadel', 'Normal head',
 'B', 'Coronal synostosis: unilateral = anterior plagiocephaly (forehead flattening, harlequin eye deformity). Bilateral = brachycephaly (short wide skull). Second most common. May be syndromic (Apert, Crouzon).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Metopic synostosis results in:',
 'Scaphocephaly', 'Trigonocephaly with triangular forehead', 'Brachycephaly', 'Turricephaly', 'No head shape change',
 'B', 'Metopic synostosis: fusion of midline frontal suture. Results in trigonocephaly: triangular forehead, keel-shaped, hypotelorism. Metopic ridge palpable. Third most common. Incidence increasing.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of craniosynostosis includes:',
 'Medication only', 'Surgical reconstruction with open or endoscopic techniques', 'No treatment needed', 'Radiation', 'Chemotherapy',
 'B', 'Craniosynostosis treatment: surgical. Open cranial vault remodeling (traditional) or endoscopic strip craniectomy with helmet therapy (early age). Timing: 3-6 months for endoscopic, 6-12 months for open. Goals: cosmesis, prevent ICP.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Positional plagiocephaly differs from craniosynostosis in that:',
 'They are identical', 'Sutures are open and deformity is molding from external pressure', 'Sutures are fused', 'Requires surgery', 'Is more severe',
 'B', 'Positional (deformational) plagiocephaly: open sutures, external molding (supine sleeping). Parallelogram shape (ear displaced forward). Craniosynostosis: closed suture, trapezoidal shape. Positional: repositioning, helmet. Surgery not needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'The most common brain tumor location in children is:',
 'Frontal lobe', 'Posterior fossa', 'Temporal lobe', 'Parietal lobe', 'Spinal cord',
 'B', 'Pediatric brain tumors: posterior fossa most common location (unlike adults where supratentorial predominates). Common: medulloblastoma, pilocytic astrocytoma, ependymoma, brainstem glioma.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Medulloblastoma is:',
 'Benign tumor', 'Highly malignant embryonal tumor of cerebellum that spreads via CSF', 'Tumor in adults only', 'Supratentorial tumor', 'Non-spreading tumor',
 'B', 'Medulloblastoma: malignant embryonal tumor, cerebellum (vermis). Peak 5-7 years. CSF dissemination (drop metastases) common. Treatment: maximal resection, craniospinal radiation (older children), chemotherapy. Molecular subtypes important.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Pilocytic astrocytoma is:',
 'Highly malignant', 'Benign slow-growing tumor often in cerebellum with excellent prognosis', 'Always supratentorial', 'Cannot be cured', 'Found only in adults',
 'B', 'Pilocytic astrocytoma: WHO grade I, benign. Common in children. Locations: cerebellum (most common), optic pathway, brainstem. Cystic with mural nodule. GTR curative. BRAF alterations common. 10-year survival >95%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Ependymoma in children most commonly arises from:',
 'Cerebral cortex', 'Fourth ventricle', 'Lateral ventricle', 'Spinal cord', 'Pituitary',
 'B', 'Pediatric ependymoma: 4th ventricle most common site. Arises from ependymal lining. Extends through foramina. Treatment: maximal safe resection critical, radiation. Molecular classification (supratentorial-RELA fusion, posterior fossa).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Diffuse intrinsic pontine glioma (DIPG) is:',
 'Benign tumor', 'Highly malignant brainstem tumor with very poor prognosis', 'Easily resectable', 'Found only in adults', 'Curable with chemotherapy',
 'B', 'DIPG: highly malignant diffuse brainstem glioma. Peak 6-7 years. Symptoms: cranial nerve palsies, ataxia, long tract signs. Unresectable (infiltrative). Radiation provides temporary improvement. Median survival 9-12 months. H3K27M mutation.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Optic pathway gliomas are associated with:',
 'No syndromes', 'Neurofibromatosis type 1', 'Tuberous sclerosis', 'Down syndrome', 'Marfan syndrome',
 'B', 'Optic pathway glioma: associated with NF1 (15-20% of NF1 patients). Usually pilocytic astrocytoma. May be asymptomatic, found on screening. Treatment: observation (many indolent), chemotherapy if progressive, rarely surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Craniopharyngioma arises from:',
 'Meninges', 'Remnants of Rathke pouch near pituitary and hypothalamus', 'Glial cells', 'Neurons', 'Blood vessels',
 'B', 'Craniopharyngioma: benign but locally aggressive. From Rathke pouch remnants (squamous epithelium). Sellar/suprasellar. Bimodal: children (5-15) and adults (45-60). Calcifications, cysts. Visual and endocrine deficits. Challenging surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Clinical presentation of craniopharyngioma includes:',
 'Only headache', 'Visual field defects growth failure diabetes insipidus and headache', 'Motor weakness', 'Hearing loss', 'Seizures only',
 'B', 'Craniopharyngioma presentation: visual loss (chiasm compression, bitemporal hemianopia), endocrine dysfunction (growth failure, delayed puberty, hypothyroidism, DI), headache (hydrocephalus), obesity. Insidious onset.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Tethered cord syndrome presents with:',
 'Upper extremity weakness', 'Back pain lower extremity weakness and bladder dysfunction often during growth spurts', 'Normal development', 'Headache', 'Visual changes',
 'B', 'Tethered cord: abnormal attachment restricts cord movement. Symptoms during growth. Back pain, progressive leg weakness, gait changes, foot deformities, scoliosis, bowel/bladder dysfunction. Low-lying conus on MRI. Treatment: surgical untethering.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Lipomyelomeningocele is:',
 'Open spinal defect', 'Skin-covered lipomatous mass associated with tethered cord', 'Brain tumor', 'Vascular malformation', 'Normal variant',
 'B', 'Lipomyelomeningocele: closed spinal dysraphism. Lipoma (fatty mass) attached to spinal cord, herniates through defect. Skin-covered. Causes tethered cord. Treatment: surgical detethering if symptomatic or progressive.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Dermoid and epidermoid cysts in children:',
 'Are malignant', 'Are benign cystic lesions from embryonic epithelial rests', 'Never cause symptoms', 'Require chemotherapy', 'Are vascular',
 'B', 'Dermoid/epidermoid cysts: congenital inclusion cysts. Dermoid: contains skin appendages. Epidermoid: keratinized epithelium only. Locations: posterior fossa, suprasellar, intraspinal. Symptoms from mass effect. Surgical excision.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Split cord malformation (diastematomyelia) involves:',
 'Normal spinal cord', 'Sagittal division of the spinal cord by a bony or fibrous septum', 'Lateral cord displacement', 'Cord swelling', 'Cord atrophy',
 'B', 'Diastematomyelia: spinal cord split sagittally by septum (bony/fibrous). Two hemicords, may reunite distally. Associated tethered cord. Type I: two dural tubes, bony spur. Type II: single dural tube, fibrous septum.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Arachnoid cysts in children:',
 'Are solid tumors', 'Are CSF-filled cysts within arachnoid membrane often incidental', 'Always require surgery', 'Are malignant', 'Never cause symptoms',
 'B', 'Arachnoid cysts: congenital, CSF-filled, within arachnoid layer. Common: middle fossa, posterior fossa. Often incidental (discovered for other reasons). Symptomatic if large (headache, seizures, focal deficits). Surgery if symptomatic.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Growing skull fracture in children:',
 'Is fracture with callus', 'Is leptomeningeal cyst from dural tear with progressive fracture widening', 'Heals faster than adults', 'Only in adults', 'Is contraindication to surgery',
 'B', 'Growing skull fracture: unique to children (<3 years, thin skull). Dural tear allows arachnoid herniation. Pulsatile CSF widens fracture. Presents with scalp swelling, enlarging defect. Treatment: surgery (repair dura, cranioplasty).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Non-accidental trauma (child abuse) brain injuries include:',
 'Only skull fractures', 'Subdural hematomas retinal hemorrhages and diffuse axonal injury', 'Only bruising', 'No brain involvement', 'Epidural hematoma only',
 'B', 'Abusive head trauma (shaken baby syndrome): subdural hematomas (often bilateral, different ages), retinal hemorrhages, diffuse axonal injury, brain swelling. High morbidity/mortality. Recognition and reporting critical.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Vein of Galen malformation is:',
 'Arterial aneurysm', 'High-flow arteriovenous malformation with dilation of vein of Galen presenting in infancy', 'Venous thrombosis', 'Normal variant', 'Found only in adults',
 'B', 'Vein of Galen malformation: high-flow AV shunt, dilated median prosencephalic vein (embryonic precursor to vein of Galen). Neonates: high-output heart failure. Older children: hydrocephalus, developmental delay. Treatment: endovascular embolization.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Subgaleal hematoma in newborns:',
 'Is benign', 'Is a potentially life-threatening hemorrhage between galea and periosteum', 'Is same as caput succedaneum', 'Never requires treatment', 'Is limited by sutures',
 'B', 'Subgaleal hematoma: bleeding between galea aponeurotica and periosteum. Can accumulate large blood volume (potential space extends over entire calvarium). Life-threatening in neonates. Causes: instrumented delivery, coagulopathy. Monitor closely.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Cephalohematoma differs from subgaleal hematoma in that:',
 'They are identical', 'Cephalohematoma is subperiosteal and limited by suture lines', 'Cephalohematoma is more serious', 'Cephalohematoma crosses sutures', 'Cephalohematoma requires surgery',
 'B', 'Cephalohematoma: subperiosteal hemorrhage, limited by suture lines (periosteum attached at sutures). Usually benign, resorbs. Subgaleal: above periosteum, crosses sutures, potentially large, dangerous. Caput: edematous scalp, crosses sutures, benign.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Intraventricular hemorrhage in premature neonates:',
 'Is rare', 'Originates from germinal matrix and is graded by severity', 'Only occurs in term infants', 'Requires immediate surgery', 'Has no complications',
 'B', 'Neonatal IVH: from fragile germinal matrix (subependymal). Premature <32 weeks at highest risk. Grading: I (germinal matrix only), II (IVH without dilation), III (IVH with dilation), IV (parenchymal involvement). May cause post-hemorrhagic hydrocephalus.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000042-0000-0000-0000-000000000042', 'a0000004-0000-0000-0000-000000000004',
 'Post-hemorrhagic hydrocephalus in premature infants is managed with:',
 'Immediate VP shunt', 'Serial LPs or ventricular reservoir taps temporizing before definitive shunt', 'No intervention', 'Medication only', 'ETV always',
 'B', 'Post-hemorrhagic hydrocephalus management: often delayed shunting due to bloody CSF, protein content. Temporizing: serial LPs, ventriculosubgaleal shunt, ventricular reservoir (Ommaya). VP shunt when CSF clears and weight adequate.', 'hard', 'knowledge');
