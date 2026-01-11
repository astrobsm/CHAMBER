-- Surgery 4 MCQ Question Bank - Batch 3
-- Section A: Vascular & Cardiothoracic Surgery - Lymphedema
-- 40 Questions

-- Topic: Lymphedema
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000003-0000-0000-0000-000000000003', 'Lymphedema', 'a0000004-0000-0000-0000-000000000004', 'Primary and secondary lymphedema - pathophysiology and management', 3, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of lymphedema worldwide is:',
 'Post-surgical', 'Filariasis', 'Primary lymphedema', 'Malignancy', 'Radiation therapy',
 'B', 'Globally, filariasis (Wuchereria bancrofti) is the most common cause of lymphedema, affecting over 120 million people. In developed countries, cancer treatment is the leading cause.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Milroy disease is characterized by:',
 'Lymphedema appearing at puberty', 'Congenital lymphedema with autosomal dominant inheritance', 'Secondary lymphedema', 'Lymphedema after age 35', 'Lymphedema with recurrent cellulitis only',
 'B', 'Milroy disease is congenital primary lymphedema with autosomal dominant inheritance, caused by mutations in VEGFR-3. It presents at birth or within first two years.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Lymphedema praecox presents at which age?',
 'At birth', 'Puberty to age 35', 'After age 35', 'After age 50', 'Any age equally',
 'B', 'Lymphedema praecox (Meige disease) is primary lymphedema presenting between puberty and age 35. It is the most common form of primary lymphedema, more common in females.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Lymphedema tarda refers to primary lymphedema presenting after age:',
 '20', '25', '35', '50', '65',
 'C', 'Lymphedema tarda is primary lymphedema with onset after age 35. It is the least common form of primary lymphedema and may be associated with occult malignancy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The Stemmer sign is positive when:',
 'Skin can be pinched over the dorsum of the toes', 'Skin cannot be pinched over the dorsum of the toes', 'Pitting edema is present', 'Pain is elicited on palpation', 'Lymph nodes are palpable',
 'B', 'Positive Stemmer sign is inability to pinch a fold of skin at the base of the second toe due to thickened fibrotic tissue. It is pathognomonic for lymphedema.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Which investigation is gold standard for imaging the lymphatic system?',
 'CT scan', 'MRI', 'Lymphoscintigraphy', 'Ultrasound', 'Venography',
 'C', 'Lymphoscintigraphy using radioactive tracer (Tc-99m) is the gold standard for lymphatic imaging. It shows lymphatic flow, node uptake, and can differentiate primary from secondary causes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Which characteristic differentiates lymphedema from venous edema?',
 'Bilateral involvement', 'Pitting nature', 'Dorsal foot and toe involvement', 'Response to elevation', 'Association with ulcers',
 'C', 'Lymphedema characteristically affects the dorsum of foot and toes (squared-off toes), unlike venous edema which spares the toes. Lymphedema also has positive Stemmer sign.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Stage 2 lymphedema according to ISL classification is characterized by:',
 'Pitting edema that reduces with elevation', 'Non-pitting edema with tissue fibrosis', 'Lymphostatic elephantiasis', 'Reversible edema', 'No visible swelling',
 'B', 'ISL Stage 2 lymphedema shows non-pitting edema due to tissue fibrosis. Stage 1 is pitting and reversible; Stage 3 is elephantiasis with severe fibrosis and skin changes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The most common organism causing cellulitis in lymphedematous limbs is:',
 'Staphylococcus aureus', 'Beta-hemolytic streptococcus', 'Pseudomonas aeruginosa', 'Escherichia coli', 'Enterococcus species',
 'B', 'Beta-hemolytic streptococcus (especially Group A) is the most common cause of cellulitis in lymphedema. The altered lymphatic drainage predisposes to recurrent infections.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Complete decongestive therapy (CDT) for lymphedema includes all EXCEPT:',
 'Manual lymphatic drainage', 'Compression bandaging', 'Diuretic therapy', 'Skin care', 'Exercise',
 'C', 'CDT includes manual lymphatic drainage, compression (bandaging then garments), exercise, and skin care. Diuretics are not effective and not recommended for lymphedema.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Manual lymphatic drainage (MLD) should NOT be performed in:',
 'Stage 1 lymphedema', 'Primary lymphedema', 'Active cellulitis', 'Post-mastectomy lymphedema', 'Lymphedema praecox',
 'C', 'MLD is contraindicated during acute cellulitis (may spread infection), active malignancy in treatment area, DVT, cardiac failure, and renal failure. Treatment resumes after infection resolves.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Pneumatic compression therapy for lymphedema works by:',
 'Replacing manual lymphatic drainage completely', 'Sequentially compressing the limb to move fluid proximally', 'Applying constant pressure', 'Heating the tissues', 'Vibratory massage',
 'B', 'Intermittent pneumatic compression uses sequential inflation of chambers to massage fluid proximally. It supplements but does not replace manual lymphatic drainage.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The risk of developing lymphangiosarcoma in chronic lymphedema is:',
 'Very common within 5 years', 'Rare but well-documented (Stewart-Treves syndrome)', 'Non-existent', 'Only in primary lymphedema', 'Only after radiation',
 'B', 'Stewart-Treves syndrome is lymphangiosarcoma arising in chronic lymphedema. It is rare (0.5% lifetime risk) but aggressive, typically occurring after 10+ years of lymphedema.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Which surgical procedure creates new lymphatic connections?',
 'Debulking surgery', 'Lymphovenous anastomosis', 'Charles procedure', 'Liposuction', 'Excisional surgery',
 'B', 'Lymphovenous anastomosis (LVA) creates direct connections between lymphatic vessels and venules using supermicrosurgery. It is most effective in early-stage lymphedema.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The Charles procedure for lymphedema involves:',
 'Lymph node transfer', 'Excision of skin and subcutaneous tissue with skin grafting', 'Liposuction only', 'Lymphovenous bypass', 'Benzopyrone therapy',
 'B', 'Charles procedure is radical excision of skin and subcutaneous tissue down to deep fascia, followed by split-thickness skin grafting. It is used for severe, refractory elephantiasis.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Vascularized lymph node transfer (VLNT) involves:',
 'Artificial lymph nodes', 'Transplanting lymph nodes with blood supply to affected area', 'Removing affected lymph nodes', 'Radiation of lymph nodes', 'Chemotherapy for nodes',
 'B', 'VLNT transfers lymph nodes (often from groin or submental area) with their blood supply to the affected limb. The transferred nodes can restore lymphatic drainage.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Liposuction for lymphedema is most effective when:',
 'There is pitting edema', 'There is non-pitting edema with fat deposition', 'Lymphatic function is normal', 'Early in the disease course', 'Compression is not used afterward',
 'B', 'Liposuction is effective for non-pitting lymphedema with fat hypertrophy. It removes adipose tissue but requires lifelong compression garment use afterward.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Diethylcarbamazine (DEC) is used in lymphedema caused by:',
 'Post-mastectomy', 'Filariasis', 'Primary lymphedema', 'Radiation', 'Malignancy',
 'B', 'DEC is an antifilarial drug used to treat filarial lymphedema. It kills microfilariae and some adult worms, but cannot reverse established elephantiasis.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Elephantiasis nostras verrucosa refers to:',
 'Filarial infection', 'Chronic non-filarial lymphedema with warty skin changes', 'Acute lymphangitis', 'Primary lymphedema', 'Venous insufficiency',
 'B', 'Elephantiasis nostras verrucosa is end-stage non-filarial (nostras) lymphedema with massive swelling and papillomatous (warty) skin changes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Which factor most increases risk of lymphedema after breast cancer treatment?',
 'Lumpectomy alone', 'Sentinel node biopsy alone', 'Axillary lymph node dissection with radiation', 'Chemotherapy alone', 'Tamoxifen therapy',
 'C', 'Combined axillary lymph node dissection and axillary radiation confers highest risk (20-40%). ALND alone = 15-25%, SLNB alone = 5-7%, radiation alone = 5-10%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Sentinel lymph node biopsy compared to axillary dissection:',
 'Has equal lymphedema risk', 'Has significantly lower lymphedema risk', 'Has higher lymphedema risk', 'Is not used in breast cancer', 'Cannot detect metastases',
 'B', 'SLNB has significantly lower lymphedema risk (5-7%) compared to ALND (15-25%). SLNB is standard of care for clinically node-negative breast cancer.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Prophylactic antibiotics for recurrent cellulitis in lymphedema should be:',
 'Never used', 'Used only during acute episodes', 'Considered for patients with frequent recurrences', 'Used for all lymphedema patients', 'Given intravenously only',
 'C', 'Prophylactic antibiotics (typically penicillin V) are recommended for patients with 2 or more cellulitis episodes per year. This reduces recurrence rates significantly.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The preferred antibiotic for cellulitis prophylaxis in lymphedema is:',
 'Flucloxacillin', 'Phenoxymethylpenicillin (Penicillin V)', 'Ciprofloxacin', 'Metronidazole', 'Vancomycin',
 'B', 'Phenoxymethylpenicillin (Penicillin V) 250-500mg daily/BD is first-line prophylaxis due to streptococcal etiology. Erythromycin is alternative for penicillin allergy.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Indocyanine green (ICG) lymphography is used to:',
 'Treat lymphedema', 'Visualize superficial lymphatic vessels in real-time', 'Kill bacteria', 'Measure limb volume', 'Replace lymphoscintigraphy completely',
 'B', 'ICG lymphography uses near-infrared fluorescence to visualize superficial lymphatics in real-time. It is useful for surgical planning and monitoring treatment response.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Which skin condition is common in chronic lymphedema?',
 'Psoriasis', 'Hyperkeratosis and papillomatosis', 'Vitiligo', 'Eczema only', 'Urticaria',
 'B', 'Chronic lymphedema causes hyperkeratosis, papillomatosis (warty growths), lymphorrhea (lymph leakage), and predisposition to fungal infections and cellulitis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Yellow nail syndrome includes all EXCEPT:',
 'Yellow discolored nails', 'Lymphedema', 'Pleural effusions', 'Hyperthyroidism', 'Bronchiectasis',
 'D', 'Yellow nail syndrome triad: yellow/thickened nails, lymphedema (often bilateral lower limb), and respiratory manifestations (pleural effusions, bronchiectasis). Hyperthyroidism is not a feature.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Compression garment pressure for lower limb lymphedema maintenance is typically:',
 'Class 1 (14-17 mmHg)', 'Class 2 (18-24 mmHg)', 'Class 3 (25-35 mmHg)', 'Class 4 (>40 mmHg)', 'No compression needed',
 'C', 'Class 3 compression (25-35 mmHg or 30-40 mmHg) is typically required for lower limb lymphedema maintenance. Higher compression may be needed for more severe cases.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Exercise in lymphedema:',
 'Should be avoided completely', 'Is beneficial when combined with compression', 'Worsens the condition', 'Should only be passive', 'Is only for upper limb lymphedema',
 'B', 'Exercise with compression is beneficial in lymphedema. It promotes lymphatic flow through muscle pump action. Gradual progression is important; strenuous exercise should be avoided initially.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Lymphorrhea (lymph leakage) is best managed by:',
 'Leaving it open to air', 'Compression and absorbent dressings', 'Surgical excision', 'Antibiotics only', 'Observation only',
 'B', 'Lymphorrhea is managed with compression, absorbent dressings, skin care, and elevation. If infected, antibiotics are added. It often indicates severe lymphedema.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Genital lymphedema is most commonly caused by:',
 'Primary lymphedema', 'Pelvic surgery or radiation', 'Trauma', 'Congenital abnormalities', 'Inflammatory bowel disease',
 'B', 'Genital lymphedema is most commonly secondary to pelvic surgery (especially inguinal node dissection), radiation, or filariasis. Management includes compression and sometimes surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'What is chylous reflux?',
 'Lymphedema of the arm', 'Backflow of intestinal lymph into abnormal locations', 'Venous insufficiency', 'Normal lymph circulation', 'Arterial aneurysm',
 'B', 'Chylous reflux occurs when intestinal lymph (chyle) refluxes into abnormal locations (skin, genitals, peritoneum) due to obstruction or dysplasia of the thoracic duct or cisterna chyli.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Chylothorax is best managed initially by:',
 'Immediate surgery', 'Conservative measures including low-fat diet and chest drainage', 'Observation only', 'Radiation therapy', 'Chemotherapy',
 'B', 'Chylothorax is initially managed conservatively: chest drainage, NPO or low-fat/MCT diet, octreotide, and TPN if needed. Surgery is reserved for high output or failure of conservative management.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Medium-chain triglycerides (MCT) are used in chylothorax because:',
 'They are absorbed into blood directly without lymphatics', 'They increase lymph production', 'They are better tasting', 'They heal lymphatic vessels', 'They prevent infection',
 'A', 'MCTs are absorbed directly into portal blood, bypassing lymphatic system, thus reducing chyle production. Long-chain fatty acids are absorbed via lacteals and lymphatics.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The thoracic duct drains into:',
 'Right subclavian vein', 'Junction of left internal jugular and subclavian veins', 'Superior vena cava directly', 'Azygos vein', 'Inferior vena cava',
 'B', 'The thoracic duct drains into the venous system at the junction of the left internal jugular and left subclavian veins (left venous angle).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Lymphatic filariasis is transmitted by:',
 'Contaminated water', 'Mosquito bites', 'Direct contact', 'Soil contamination', 'Airborne droplets',
 'B', 'Wuchereria bancrofti and Brugia species causing lymphatic filariasis are transmitted by mosquito bites (Culex, Aedes, Anopheles species depending on region).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'For breast cancer-related lymphedema, which measurement difference indicates clinically significant lymphedema?',
 '1 cm difference', '2 cm difference or 10% volume increase', '0.5 cm difference', '5 cm difference', 'Any measurable difference',
 'B', 'A circumference difference of 2 cm or more, or volume difference of 10% or more (often measured by perometry), is considered clinically significant lymphedema.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'Bioimpedance spectroscopy in lymphedema measures:',
 'Lymph node size', 'Extracellular fluid accumulation', 'Blood flow', 'Muscle mass', 'Bone density',
 'B', 'Bioimpedance spectroscopy measures extracellular fluid (ECF) by passing electrical current through tissue. Increased ECF indicates early lymphedema before clinical swelling.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000003-0000-0000-0000-000000000003', 'a0000004-0000-0000-0000-000000000004',
 'The single most important preventive measure for lymphedema in at-risk patients is:',
 'Prophylactic antibiotics', 'Avoiding blood pressure and venipuncture in affected limb', 'Skin care and infection prevention', 'Elevation only', 'Immediate compression',
 'C', 'Meticulous skin care and infection prevention is the most important preventive measure. Cellulitis episodes worsen lymphatic damage and increase lymphedema severity.', 'medium', 'application');
