-- Article 53: Scrotal Swellings
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000053-0000-0000-0000-000000000053'::uuid, 'introduction', 1, 'Introduction to Scrotal Swellings', 'Scrotal swellings are common presentations in surgical practice ranging from benign conditions to emergencies requiring immediate intervention. The key clinical distinction is whether the swelling is separate from, or arising from, the testis itself. Testicular swellings are presumed malignant until proven otherwise. Systematic examination using inspection, palpation, transillumination, and cough impulse helps differentiate conditions. Emergency conditions include testicular torsion (requires surgery within 6 hours), incarcerated/strangulated hernia, and Fournier gangrene. Understanding anatomy and clinical features enables accurate diagnosis and appropriate management.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 'content', 2, 'Classification and Anatomy', 'ANATOMICAL CLASSIFICATION:
1. Within the scrotum but separate from testis:
   - Hydrocele
   - Inguinal hernia (inguinoscrotal)
   - Lipoma of cord

2. Arising from testis:
   - Testicular tumors
   - Orchitis
   - Torsion
   - Hematocele
   - Gumma (rare)

3. Arising from epididymis:
   - Epididymitis
   - Epididymal cyst/spermatocele
   - Tuberculosis

4. Arising from cord:
   - Varicocele
   - Encysted hydrocele of cord
   - Lipoma

5. Skin conditions:
   - Sebaceous cyst
   - Fournier gangrene
   - Lymphedema

CLINICAL EXAMINATION APPROACH:
Can you get above the swelling? No = inguinoscrotal hernia
Is the testis palpable separately? Yes = separate from testis
Does it transilluminate? Yes = hydrocele, cyst
Is there cough impulse? Yes = hernia
Is it painful? Emergency if acute onset'),
('d0000053-0000-0000-0000-000000000053'::uuid, 'content', 3, 'Common Conditions', 'HYDROCELE:
Collection of fluid within tunica vaginalis
Types: Primary (idiopathic), secondary (tumor, infection, trauma)
Primary vaginal hydrocele: most common, elderly men
Congenital: patent processus vaginalis, communicating
Clinical: painless swelling, can get above it, transilluminates, testis not palpable
Treatment: jaboulay procedure (eversion), Lords plication
ALWAYS exclude underlying testicular tumor

INGUINAL HERNIA (Inguinoscrotal):
Cannot get above the swelling
Cough impulse positive
Reducible (usually)
Does not transilluminate
Management: surgical repair

EPIDIDYMAL CYST/SPERMATOCELE:
Located behind and separate from testis
Transilluminates
Spermatocele contains sperm (milky fluid)
Usually requires no treatment unless symptomatic

EPIDIDYMITIS:
Painful swelling of epididymis
Young men: sexually transmitted (Chlamydia, Gonorrhea)
Older men: coliforms from UTI
Prehn sign positive (relief on elevation)
Treatment: antibiotics, scrotal support

VARICOCELE:
Dilated pampiniform plexus, bag of worms
Left side 90% (testicular vein drains to renal vein)
Increases with standing, Valsalva
Treatment: ligation if symptomatic or infertility'),
('d0000053-0000-0000-0000-000000000053'::uuid, 'content', 4, 'Emergencies and Testicular Tumors', 'TESTICULAR TORSION:
Sudden onset severe pain, often during sleep or activity
Bell-clapper deformity predisposes
High-riding testis, absent cremasteric reflex
Surgical emergency - salvage within 6 hours
Treatment: exploration, detorsion, bilateral fixation (orchidopexy)
If non-viable: orchiectomy

FOURNIER GANGRENE:
Necrotizing fasciitis of perineum/scrotum
Risk factors: diabetes, alcoholism, immunosuppression
Rapidly progressive, crepitus, systemic toxicity
Treatment: EMERGENCY - aggressive debridement, broad-spectrum antibiotics, ICU

STRANGULATED HERNIA:
Cannot get above swelling, tender, irreducible
Absent cough impulse (closed ring)
Emergency surgery required

TESTICULAR TUMORS:
Any solid testicular mass = cancer until proven otherwise
Painless firm/hard swelling
Cannot transilluminate
Germ cell tumors 95%: seminoma vs non-seminomatous
Markers: AFP, beta-hCG, LDH
Ultrasound for diagnosis
Treatment: radical inguinal orchiectomy (NOT trans-scrotal biopsy)

ACUTE SCROTAL CONDITIONS (DDx acute scrotum):
Torsion testis
Torsion appendix testis (blue dot sign)
Epididymo-orchitis
Incarcerated hernia
Trauma - hematocele
Idiopathic scrotal edema'),
('d0000053-0000-0000-0000-000000000053'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Can you get above it? No = hernia. Does it transilluminate? Yes = fluid (hydrocele, cyst). Is testis palpable separately? Yes = epididymal origin. Testicular mass = cancer until proven otherwise. Hydrocele: exclude underlying tumor. Torsion: surgical emergency within 6 hours. Fournier gangrene: diabetic emergency, aggressive debridement. Left varicocele 90% (renal vein drainage).'),
('d0000053-0000-0000-0000-000000000053'::uuid, 'key_points', 6, 'Key Points Summary', 'Systematic examination: get above, transillumination, cough impulse, testis separate. Hydrocele: transilluminates, testis not palpable. Hernia: cannot get above, cough impulse. Epididymal cyst: behind testis, transilluminates. Varicocele: bag of worms, left-sided. Torsion: emergency, absent cremasteric reflex, high-riding testis. Testicular tumors: radical inguinal orchiectomy.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000053-0000-0000-0000-000000000053'::uuid, 1, 'A scrotal swelling that you cannot get above likely represents:', 'Hydrocele', 'Epididymal cyst', 'Inguinoscrotal hernia', 'Varicocele', 'Testicular tumor', 'C', 'Inability to get above a scrotal swelling indicates inguinoscrotal hernia as the swelling extends into the inguinal canal.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 2, 'Transillumination is positive in:', 'Testicular tumor', 'Hydrocele', 'Varicocele', 'Hematocele', 'Hernia', 'B', 'Hydrocele (fluid collection) transilluminates. Hematocele (blood) and solid masses do not.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 3, 'Primary vaginal hydrocele is most common in:', 'Newborns', 'Children', 'Young adults', 'Elderly men', 'Adolescents', 'D', 'Primary (idiopathic) vaginal hydrocele is most common in elderly men. Secondary hydrocele occurs at any age.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 4, 'In hydrocele, the testis is:', 'Easily palpable', 'Usually not palpable', 'Hard', 'Tender', 'Absent', 'B', 'In hydrocele, the testis is usually not palpable separately as it is surrounded by fluid.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 5, 'What must be excluded in every case of hydrocele?', 'Hernia', 'Underlying testicular tumor', 'Varicocele', 'Epididymitis', 'Torsion', 'B', 'Underlying testicular tumor must be excluded in every hydrocele case using ultrasound examination.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 6, 'Surgical treatment of hydrocele involves:', 'Radical orchiectomy', 'Jaboulay procedure or Lords plication', 'Herniorrhaphy', 'Varicocelectomy', 'Epididymectomy', 'B', 'Hydrocele repair involves Jaboulay procedure (eversion) or Lords plication of the tunica vaginalis.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 7, 'Epididymal cyst is located:', 'In front of testis', 'Behind and above testis', 'Within the testis', 'In inguinal canal', 'Attached to cord', 'B', 'Epididymal cyst/spermatocele is located behind and above the testis, separate from the testis.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 8, 'Prehn sign positive (pain relief with testicular elevation) suggests:', 'Testicular torsion', 'Epididymitis', 'Testicular tumor', 'Hernia', 'Hydrocele', 'B', 'Positive Prehn sign (pain relief on elevation) suggests epididymitis. Torsion pain is not relieved.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 9, 'Testicular torsion must be surgically corrected within:', '1 hour', '6 hours', '24 hours', '48 hours', '72 hours', 'B', 'Testicular torsion requires correction within 6 hours for optimal salvage. Salvage rate drops significantly after this.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 10, 'The predisposing anatomical abnormality in testicular torsion is:', 'Patent processus vaginalis', 'Bell-clapper deformity', 'Varicocele', 'Cryptorchidism', 'Absent gubernaculum', 'B', 'Bell-clapper deformity (horizontal lie of testis with high attachment of tunica vaginalis) predisposes to torsion.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 11, 'Absent cremasteric reflex is suggestive of:', 'Epididymitis', 'Testicular torsion', 'Hydrocele', 'Varicocele', 'Hernia', 'B', 'Absent cremasteric reflex is a key sign of testicular torsion.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 12, 'Fournier gangrene is:', 'Testicular tumor', 'Necrotizing fasciitis of perineum', 'Epididymal abscess', 'Chronic orchitis', 'Hydrocele with infection', 'B', 'Fournier gangrene is necrotizing fasciitis of the perineum and scrotum requiring emergency debridement.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 13, 'Most important risk factor for Fournier gangrene is:', 'Smoking', 'Diabetes mellitus', 'Hypertension', 'Age', 'Obesity', 'B', 'Diabetes mellitus is the most significant risk factor for Fournier gangrene.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 14, 'Solid testicular mass in a young male should be considered as:', 'Benign until proven otherwise', 'Cancer until proven otherwise', 'Infection', 'Torsion', 'Trauma', 'B', 'Any solid testicular mass should be considered malignant until proven otherwise.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 15, 'Surgical approach for testicular tumor is:', 'Trans-scrotal biopsy', 'Trans-scrotal orchiectomy', 'Radical inguinal orchiectomy', 'Partial orchiectomy', 'Fine needle aspiration', 'C', 'Radical inguinal orchiectomy with early control of cord structures is the standard approach. Trans-scrotal approach risks tumor seeding.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 16, 'Varicocele feels like:', 'Solid mass', 'Cystic swelling', 'Bag of worms', 'Tender nodule', 'Fluctuant mass', 'C', 'Varicocele classically feels like a bag of worms due to dilated pampiniform plexus veins.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 17, 'Blue dot sign on scrotal examination indicates:', 'Testicular tumor', 'Torsion of appendix testis', 'Epididymitis', 'Fournier gangrene', 'Varicocele', 'B', 'Blue dot sign (visible blue discoloration near upper pole) indicates torsion of appendix testis.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 18, 'Communicating hydrocele in infants is due to:', 'Tumor', 'Patent processus vaginalis', 'Trauma', 'Infection', 'Torsion', 'B', 'Communicating hydrocele results from patent processus vaginalis allowing peritoneal fluid to enter tunica vaginalis.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 19, 'Epididymitis in young sexually active men is most commonly caused by:', 'E. coli', 'Chlamydia trachomatis', 'Pseudomonas', 'Tuberculosis', 'Staphylococcus', 'B', 'Chlamydia and Gonorrhea are the most common causes of epididymitis in young sexually active men. E. coli is more common in older men.'),
('d0000053-0000-0000-0000-000000000053'::uuid, 20, 'In testicular torsion surgery, bilateral fixation is performed because:', 'To treat both testes', 'The anatomical abnormality is often bilateral', 'To prevent hernia', 'To improve fertility', 'Standard practice for cosmesis', 'B', 'Bell-clapper deformity predisposing to torsion is often bilateral, so contralateral fixation prevents future torsion.');
