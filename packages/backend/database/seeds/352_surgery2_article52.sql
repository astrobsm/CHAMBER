-- Article 52: Undescended Testis (Cryptorchidism)
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000052-0000-0000-0000-000000000052'::uuid, 'introduction', 1, 'Introduction to Undescended Testis', 'Undescended testis (cryptorchidism) is the failure of the testis to descend into the scrotum. It is the most common genital abnormality in male newborns, affecting 3% of term and 30% of premature infants. Spontaneous descent may occur in the first 3-6 months due to postnatal testosterone surge. If untreated, it leads to impaired fertility, increased malignancy risk, and psychological issues. Early surgical correction (orchidopexy) is recommended by 6-12 months of age to optimize testicular function and allow cancer surveillance.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 'content', 2, 'Embryology and Classification', 'NORMAL TESTICULAR DESCENT:
Weeks 7-8: Testis forms at urogenital ridge
Transabdominal phase: Testis descends from posterior abdominal wall to internal ring (controlled by mullerian inhibiting substance)
Inguinoscrotal phase (weeks 28-35): Through inguinal canal to scrotum (requires testosterone and gubernaculum)

CLASSIFICATION:
Palpable (80%):
- Inguinal (most common)
- Prescrotal
- Ectopic (outside normal descent path - perineal, femoral, superficial inguinal pouch)

Non-palpable (20%):
- Intra-abdominal (most concerning for malignancy)
- Absent (vanishing testis due to intrauterine torsion)
- Atrophic

RETRACTILE TESTIS:
Fully descended testis that can be retracted by cremasteric reflex
Can be manipulated into scrotum and stays
Normal variant - needs monitoring as some become ascending testis

ASCENDING TESTIS:
Previously descended testis that ascends out of scrotum
May require orchidopexy'),
('d0000052-0000-0000-0000-000000000052'::uuid, 'content', 3, 'Complications and Associations', 'COMPLICATIONS OF UNDESCENDED TESTIS:
1. Infertility:
   - Histological changes begin at 6 months (decreased germ cells)
   - Bilateral UDT: 50-70% infertility
   - Unilateral UDT: 10-20% subfertility
   - Early orchidopexy improves but may not normalize fertility

2. Malignancy:
   - 4-10 times increased risk of testicular cancer
   - Seminoma most common type
   - Risk remains even after orchidopexy
   - Higher risk if: intra-abdominal, bilateral, late correction
   - Orchidopexy allows examination and early detection

3. Torsion:
   - Higher risk due to abnormal attachments

4. Trauma:
   - Inguinal testis vulnerable to pubic bone compression

5. Psychological:
   - Empty scrotum, body image concerns

6. Inguinal Hernia:
   - Associated in up to 90% (processus vaginalis patent)

ASSOCIATIONS:
Prematurity, low birth weight
Hypospadias
Prune belly syndrome
Cerebral palsy
Neural tube defects
Chromosomal abnormalities (Klinefelter)'),
('d0000052-0000-0000-0000-000000000052'::uuid, 'content', 4, 'Management', 'INITIAL EVALUATION:
History - gestational age, birth weight, family history
Examination - systematic palpation from ASIS along inguinal canal to scrotum
Examine in warm room, warm hands
Distinguish from retractile testis (can be brought down and stays)
Bilateral non-palpable - assess for disorder of sex development (DSD)

INVESTIGATIONS:
Palpable testis: No imaging needed
Non-palpable testis:
- Ultrasound - limited sensitivity for intra-abdominal testis
- MRI - better but still limited
- Diagnostic laparoscopy - gold standard for non-palpable testis
Bilateral non-palpable: Karyotype, hormone stimulation test

TIMING OF ORCHIDOPEXY:
Recommended: 6-12 months of age (optimal)
Rationale: Germ cell deterioration begins at 6 months, spontaneous descent unlikely after 6 months
Evidence: Better fertility outcomes with early surgery

SURGICAL OPTIONS:
Palpable testis:
- Standard inguinal orchidopexy (most common)
- Incision at external ring, mobilize cord, fix testis in dartos pouch

Non-palpable testis:
- Diagnostic laparoscopy first
- If viable testis: single-stage or two-stage Fowler-Stephens orchidopexy
- Fowler-Stephens: Divide testicular vessels, rely on deferential and cremasteric vessels
- If atrophic/absent: Remove remnant if present

HORMONAL THERAPY:
hCG or GnRH - limited success (10-20%)
Not recommended as primary treatment
May be used to improve testis position before surgery or confirm hormone responsiveness'),
('d0000052-0000-0000-0000-000000000052'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Undescended testis affects 3% term, 30% preterm infants. Spontaneous descent usually by 6 months. Orchidopexy recommended at 6-12 months. Retractile testis: can bring down and stays - normal variant. Palpable UDT: inguinal orchidopexy. Non-palpable: laparoscopy diagnostic and therapeutic. Malignancy risk 4-10x, remains after orchidopexy but allows surveillance. Bilateral non-palpable: rule out DSD.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 'key_points', 6, 'Key Points Summary', 'Most common genital anomaly. Two phases of descent: transabdominal and inguinoscrotal. Palpable (80%) vs non-palpable (20%). Complications: infertility, malignancy (4-10x), torsion, hernia. Orchidopexy at 6-12 months. Non-palpable: laparoscopy for diagnosis. Fowler-Stephens for high intra-abdominal testis. Seminoma most common cancer type.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000052-0000-0000-0000-000000000052'::uuid, 1, 'Undescended testis affects approximately what percentage of term newborns?', '1%', '3%', '10%', '20%', '30%', 'B', 'Cryptorchidism affects approximately 3% of term and 30% of preterm male newborns.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 2, 'The optimal timing for orchidopexy is:', 'At birth', '6-12 months', '2-3 years', 'At puberty', 'When symptoms occur', 'B', 'Orchidopexy is recommended at 6-12 months to prevent germ cell deterioration that begins at 6 months.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 3, 'The most common location of a palpable undescended testis is:', 'Intra-abdominal', 'Inguinal canal', 'Perineal', 'Femoral', 'Prescrotal', 'B', 'The inguinal canal is the most common location for palpable undescended testis.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 4, 'Risk of testicular malignancy in undescended testis is:', 'Same as normal', '2-3 times increased', '4-10 times increased', '50 times increased', 'No increased risk', 'C', 'Undescended testis carries a 4-10 times increased risk of testicular cancer, most commonly seminoma.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 5, 'Most common type of testicular cancer in cryptorchidism is:', 'Embryonal carcinoma', 'Seminoma', 'Teratoma', 'Choriocarcinoma', 'Yolk sac tumor', 'B', 'Seminoma is the most common testicular cancer type associated with undescended testis.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 6, 'Retractile testis is characterized by:', 'Cannot be brought into scrotum', 'Can be brought to scrotum and stays there', 'Always requires surgery', 'High malignancy risk', 'Associated with inguinal hernia', 'B', 'Retractile testis can be manipulated into the scrotum and stays there - it is a normal variant due to active cremasteric reflex.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 7, 'Investigation of choice for non-palpable undescended testis is:', 'Ultrasound', 'CT scan', 'MRI', 'Diagnostic laparoscopy', 'Hormone levels', 'D', 'Diagnostic laparoscopy is the gold standard for non-palpable testis - allows visualization and therapeutic intervention.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 8, 'Fowler-Stephens orchidopexy involves:', 'Mobilizing testis through groin', 'Division of testicular vessels', 'Hormonal treatment', 'Testicular prosthesis placement', 'Mesh repair', 'B', 'Fowler-Stephens procedure involves dividing testicular vessels and relying on deferential and cremasteric collaterals for blood supply.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 9, 'The inguinoscrotal phase of testicular descent is controlled by:', 'Mullerian inhibiting substance', 'Testosterone and gubernaculum', 'Estrogen', 'FSH', 'Cortisol', 'B', 'The inguinoscrotal phase (weeks 28-35) requires testosterone and the gubernaculum for descent through the inguinal canal.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 10, 'Bilateral non-palpable testes in a newborn require investigation for:', 'Hernia only', 'Disorder of sex development (DSD)', 'Urinary tract infection', 'Prematurity only', 'No investigation needed', 'B', 'Bilateral non-palpable testes require evaluation for DSD with karyotype and hormone levels (may be 46,XX with virilization).'),
('d0000052-0000-0000-0000-000000000052'::uuid, 11, 'Spontaneous testicular descent typically occurs by:', '1 week', '3-6 months', '1 year', '5 years', 'Puberty', 'B', 'Spontaneous descent usually occurs in the first 3-6 months due to postnatal testosterone surge. After this, descent is unlikely.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 12, 'Infertility rate in bilateral undescended testis is approximately:', '10-20%', '30-40%', '50-70%', '90-100%', 'Same as normal', 'C', 'Bilateral undescended testis has a 50-70% rate of infertility. Unilateral has 10-20% subfertility.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 13, 'What is a vanishing testis?', 'Intra-abdominal testis', 'Testis absent due to intrauterine torsion', 'Retractile testis', 'Atrophic testis', 'Ectopic testis', 'B', 'Vanishing testis refers to an absent testis, likely due to prenatal/intrauterine torsion with infarction and resorption.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 14, 'Associated anomaly found in up to 90% of undescended testis:', 'Hypospadias', 'Inguinal hernia', 'Varicocele', 'Hydrocele', 'Epispadias', 'B', 'Inguinal hernia (patent processus vaginalis) is associated with up to 90% of undescended testes.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 15, 'An ectopic testis is located:', 'Along normal descent path', 'Outside normal descent path', 'In the abdomen', 'In the scrotum', 'In the inguinal canal', 'B', 'Ectopic testis is outside the normal path of descent - perineal, femoral, or superficial inguinal pouch.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 16, 'Histological changes in undescended testis begin at:', '1 week', '1 month', '6 months', '2 years', 'Puberty', 'C', 'Histological deterioration (decreased germ cells) begins at 6 months, which is why early orchidopexy is recommended.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 17, 'Hormonal therapy for undescended testis has success rate of:', '10-20%', '50-60%', '80-90%', '95%', 'Not effective', 'A', 'Hormonal therapy (hCG or GnRH) has limited success (10-20%) and is not recommended as primary treatment.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 18, 'The purpose of orchidopexy after failed descent is:', 'To guarantee fertility', 'To eliminate cancer risk', 'To allow surveillance and potentially improve fertility', 'Cosmetic only', 'To prevent hernia', 'C', 'Orchidopexy allows surveillance for malignancy and may improve fertility if done early, but does not eliminate cancer risk.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 19, 'Ascending testis refers to:', 'Testis that never descended', 'Previously descended testis that moves up', 'Intra-abdominal testis', 'Ectopic testis', 'Retractile testis', 'B', 'Ascending testis is a previously normally descended testis that has moved out of the scrotum and may require orchidopexy.'),
('d0000052-0000-0000-0000-000000000052'::uuid, 20, 'Standard surgical approach for palpable inguinal undescended testis is:', 'Laparoscopic orchidopexy', 'Inguinal orchidopexy with dartos pouch fixation', 'Fowler-Stephens procedure', 'Orchiectomy', 'Hormonal treatment only', 'B', 'Standard inguinal orchidopexy with dartos pouch fixation is the treatment for palpable undescended testis.');
