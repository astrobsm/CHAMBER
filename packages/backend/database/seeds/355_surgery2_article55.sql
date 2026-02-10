-- Article 55: Neck Masses in Children
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000055-0000-0000-0000-000000000055'::uuid, 'introduction', 1, 'Introduction to Pediatric Neck Masses', 'Neck masses in children are common and usually benign, unlike in adults where malignancy must be strongly suspected. Approximately 90% of pediatric neck masses are benign. The diagnostic approach considers location (midline vs lateral), consistency, and associated symptoms. Common causes include reactive lymphadenopathy (most common), congenital lesions (thyroglossal duct cyst, branchial cleft anomalies, dermoid cyst), vascular anomalies (hemangioma, lymphatic malformation), and inflammatory conditions (lymphadenitis, abscess). Understanding embryological development helps predict location and manage congenital lesions appropriately. Malignancy, while uncommon, includes lymphoma and thyroid carcinoma.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 'content', 2, 'Classification by Location', 'MIDLINE NECK MASSES:
Thyroglossal duct cyst (most common midline mass)
- Remnant of thyroglossal duct from foramen cecum to thyroid
- Usually presents age 2-10 years
- Midline mass, moves with swallowing AND tongue protrusion
- Treatment: Sistrunk procedure (cyst + central hyoid + tract to foramen cecum)
- Must confirm normal thyroid tissue present

Dermoid cyst
- Submental or suprasternal
- Derived from ectoderm trapped during fusion
- Does NOT move with tongue protrusion
- Treatment: simple excision

Thyroid masses
- Thyroid nodules, goiter
- Move with swallowing only (not tongue protrusion)
- Require thyroid function tests, ultrasound, FNA

Submental lymph nodes
- Usually reactive

LATERAL NECK MASSES:
Branchial cleft anomalies (second most common congenital mass)
- First branchial cleft: near ear, angle of mandible
- Second branchial cleft (most common): anterior to SCM, upper third
- Third/fourth: lower neck, may present as recurrent thyroiditis

Lymphadenopathy (most common pediatric neck mass overall)
- Reactive (viral/bacterial)
- Lymphadenitis with abscess formation

Cystic hygroma (lymphatic malformation)
- Posterior triangle, transilluminates
- Can be massive, may cause airway compromise

Hemangioma
- Vascular tumor, appears in first weeks of life
- Proliferates then involutes'),
('d2000055-0000-0000-0000-000000000055'::uuid, 'content', 3, 'Common Conditions in Detail', 'THYROGLOSSAL DUCT CYST:
Embryology: Thyroid descends from foramen cecum, thyroglossal duct normally obliterates
Presentation: Midline mass (65% at/below hyoid), may present after URTI
Key sign: Moves up with TONGUE PROTRUSION (unique to TDC)
Complications: Infection, fistula formation, rarely carcinoma (1%)
Diagnosis: Ultrasound to confirm thyroid present
Treatment: Sistrunk procedure (removes cyst, central hyoid body, and tract to foramen cecum)
Recurrence: 5% with Sistrunk vs 50% with simple excision

BRANCHIAL CLEFT ANOMALIES:
Second branchial cleft (95% of all):
- External opening: anterior to SCM, lower third of neck
- Tract passes between internal and external carotid
- Internal opening: tonsillar fossa
- Presents as: cyst (young adult), sinus (child), fistula
- Treatment: complete excision of tract

First branchial cleft:
- Type I: duplication of external auditory canal
- Type II: involves parotid gland, may affect facial nerve
- Associated with external ear anomalies

CYSTIC HYGROMA (Lymphatic Malformation):
Failure of lymphatic system development
Location: posterior triangle (75%), may extend to axilla, mediastinum
Features: soft, compressible, transilluminates brilliantly
May cause airway obstruction if large
Treatment: surgery or sclerotherapy (OK-432, bleomycin)

REACTIVE LYMPHADENOPATHY:
Most common cause of neck mass in children
Usually viral (EBV, CMV) or bacterial
Cervical nodes, bilateral, mobile, soft
Self-limiting, observation appropriate
Red flags for malignancy: supraclavicular, fixed, greater than 3cm, persistent'),
('d2000055-0000-0000-0000-000000000055'::uuid, 'content', 4, 'Evaluation and Management', 'HISTORY:
Duration - acute vs chronic
Associated symptoms - fever, weight loss, night sweats (B symptoms)
Preceding URTI
Growth pattern

PHYSICAL EXAMINATION:
Location - midline vs lateral
Mobility - fixed suggests malignancy
Consistency - firm vs fluctuant
Movement with swallowing/tongue protrusion
Transillumination
Size - greater than 2cm or supraclavicular concerning

INVESTIGATIONS:
Ultrasound - first-line imaging, differentiates solid vs cystic
Thyroid function - for thyroid or midline masses
CXR - for suspected TB or lymphoma
FNAC/Biopsy - if malignancy suspected
CT/MRI - for extent of lesion, surgical planning

RED FLAGS FOR MALIGNANCY:
Supraclavicular location
Fixed to surrounding structures
Hard consistency
Rapid growth
Associated B symptoms
Size greater than 3cm
Persistent greater than 4-6 weeks

MANAGEMENT PRINCIPLES:
Reactive lymphadenopathy: Observation, treat underlying infection
Thyroglossal duct cyst: Sistrunk procedure
Branchial cleft anomaly: Complete surgical excision
Cystic hygroma: Surgery or sclerotherapy
Lymphadenitis/Abscess: Antibiotics, I&D if needed
Suspected malignancy: Biopsy, staging, refer to oncology

MALIGNANT CAUSES:
Lymphoma - Hodgkin and Non-Hodgkin
Thyroid carcinoma - papillary most common
Neuroblastoma - metastatic
Rhabdomyosarcoma'),
('d2000055-0000-0000-0000-000000000055'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Most pediatric neck masses are benign (90%). Most common overall: reactive lymphadenopathy. Most common congenital midline: thyroglossal duct cyst - moves with tongue protrusion. Most common branchial: second cleft. Sistrunk procedure: cyst + central hyoid + tract to foramen cecum. Cystic hygroma: posterior triangle, transilluminates. Red flags: supraclavicular, fixed, greater than 3cm, B symptoms.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 'key_points', 6, 'Key Points Summary', 'Pediatric neck masses usually benign. Location guides diagnosis: midline (thyroglossal, dermoid) vs lateral (branchial, lymph nodes, cystic hygroma). Thyroglossal cyst: moves with tongue protrusion, Sistrunk procedure. Branchial cleft: second most common, anterior to SCM. Cystic hygroma: posterior triangle, transilluminates. Malignancy: lymphoma, thyroid cancer - look for red flags.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000055-0000-0000-0000-000000000055'::uuid, 1, 'Most common cause of neck mass in children is:', 'Thyroglossal duct cyst', 'Branchial cleft cyst', 'Reactive lymphadenopathy', 'Cystic hygroma', 'Lymphoma', 'C', 'Reactive lymphadenopathy (usually viral or bacterial) is the most common cause of neck mass in children.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 2, 'Most common congenital midline neck mass is:', 'Dermoid cyst', 'Thyroglossal duct cyst', 'Thyroid goiter', 'Teratoma', 'Branchial cyst', 'B', 'Thyroglossal duct cyst is the most common congenital midline neck mass in children.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 3, 'Thyroglossal duct cyst characteristically:', 'Moves with swallowing only', 'Moves with tongue protrusion', 'Does not move', 'Is located laterally', 'Transilluminates', 'B', 'Thyroglossal duct cyst moves upward with tongue protrusion (and swallowing). This is unique to thyroglossal duct cyst.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 4, 'The Sistrunk procedure includes removal of:', 'Cyst only', 'Cyst and thyroid gland', 'Cyst, central hyoid body, and tract to foramen cecum', 'Cyst and entire hyoid bone', 'Cyst and surrounding lymph nodes', 'C', 'Sistrunk procedure removes the cyst, the central portion of hyoid bone, and the tract up to the foramen cecum to prevent recurrence.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 5, 'Recurrence rate after simple excision of thyroglossal cyst vs Sistrunk procedure is:', 'Same', '50% vs 5%', '10% vs 1%', '5% vs 50%', '20% vs 20%', 'B', 'Simple excision has 50% recurrence rate, while Sistrunk procedure has only 5% recurrence.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 6, 'Most common branchial cleft anomaly is:', 'First branchial cleft', 'Second branchial cleft', 'Third branchial cleft', 'Fourth branchial cleft', 'Fifth branchial cleft', 'B', 'Second branchial cleft anomalies account for 95% of all branchial cleft anomalies.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 7, 'Second branchial cleft cyst is typically located:', 'Midline', 'Anterior to sternocleidomastoid muscle', 'Posterior triangle', 'Submental region', 'Supraclavicular', 'B', 'Second branchial cleft cyst is located anterior to the SCM muscle, typically in the upper third of the neck.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 8, 'The tract of a second branchial cleft anomaly passes between:', 'Subclavian arteries', 'Internal and external carotid arteries', 'Jugular veins', 'Thyroid lobes', 'Vertebral arteries', 'B', 'The second branchial cleft tract passes between the internal and external carotid arteries to reach the tonsillar fossa.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 9, 'Cystic hygroma is most commonly located in the:', 'Anterior triangle', 'Posterior triangle', 'Midline', 'Submandibular area', 'Supraclavicular fossa', 'B', 'Cystic hygroma (lymphatic malformation) is most commonly located in the posterior triangle of the neck.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 10, 'A cystic hygroma characteristically:', 'Is hard and fixed', 'Transilluminates brilliantly', 'Moves with tongue protrusion', 'Is pulsatile', 'Has cough impulse', 'B', 'Cystic hygroma transilluminates brilliantly due to its lymph-filled cystic nature.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 11, 'Before excision of thyroglossal duct cyst, it is important to:', 'Perform CT scan', 'Confirm presence of normal thyroid tissue', 'Remove all lymph nodes', 'Perform thyroidectomy', 'Wait until puberty', 'B', 'Must confirm normal thyroid tissue is present, as the cyst may contain the only thyroid tissue in rare cases.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 12, 'Dermoid cyst differs from thyroglossal cyst in that it:', 'Is located laterally', 'Does NOT move with tongue protrusion', 'Transilluminates', 'Is always infected', 'Is malignant', 'B', 'Dermoid cyst does NOT move with tongue protrusion, while thyroglossal duct cyst does.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 13, 'Red flag features for malignancy in pediatric neck mass include all EXCEPT:', 'Supraclavicular location', 'Mobile and soft', 'Fixed to surrounding structures', 'Size greater than 3cm', 'B symptoms', 'B', 'Mobile and soft lymph nodes are reassuring. Fixed, hard, supraclavicular, large nodes with B symptoms suggest malignancy.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 14, 'Most common malignancy presenting as neck mass in children is:', 'Thyroid carcinoma', 'Lymphoma', 'Rhabdomyosarcoma', 'Neuroblastoma', 'Squamous cell carcinoma', 'B', 'Lymphoma (Hodgkin and Non-Hodgkin) is the most common malignancy presenting as neck mass in children.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 15, 'Thyroid nodule in a child moves with:', 'Tongue protrusion only', 'Swallowing only', 'Both tongue protrusion and swallowing', 'Neither', 'Coughing', 'B', 'Thyroid nodules move with swallowing only, not with tongue protrusion.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 16, 'Treatment of cystic hygroma includes:', 'Antibiotics only', 'Observation only', 'Surgery or sclerotherapy', 'Radiation', 'Chemotherapy', 'C', 'Treatment options for cystic hygroma include surgical excision or sclerotherapy (OK-432, bleomycin).'),
('d2000055-0000-0000-0000-000000000055'::uuid, 17, 'First branchial cleft anomaly may be associated with:', 'Tonsillar abnormality', 'Facial nerve involvement', 'Thyroid abnormality', 'Carotid artery aneurysm', 'Laryngeal abnormality', 'B', 'First branchial cleft anomalies, especially Type II, involve the parotid gland and may affect the facial nerve.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 18, 'Recurrent suppurative thyroiditis in a child should raise suspicion of:', 'Thyroglossal duct cyst', 'Third or fourth branchial cleft anomaly', 'Thyroid carcinoma', 'Graves disease', 'Hashimoto thyroiditis', 'B', 'Third and fourth branchial cleft anomalies can present as recurrent suppurative thyroiditis or neck abscess.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 19, 'First-line imaging investigation for pediatric neck mass is:', 'CT scan', 'MRI', 'Ultrasound', 'Plain X-ray', 'Nuclear scan', 'C', 'Ultrasound is the first-line imaging investigation - it is non-invasive, readily available, and differentiates solid from cystic.'),
('d2000055-0000-0000-0000-000000000055'::uuid, 20, 'The foramen cecum is located at the:', 'Base of tongue', 'Thyroid isthmus', 'Hyoid bone', 'Cricoid cartilage', 'Larynx', 'A', 'The foramen cecum is at the junction of anterior 2/3 and posterior 1/3 of the tongue - the embryological origin of the thyroid gland.');
