-- Article 57: BRCA Genes - Implications in Surgery
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000057-0000-0000-0000-000000000057'::uuid, 'introduction', 1, 'Introduction to BRCA Genes', 'BRCA1 and BRCA2 (BReast CAncer genes) are tumor suppressor genes that play a critical role in DNA double-strand break repair through homologous recombination. Mutations in these genes significantly increase lifetime risk of breast and ovarian cancer. BRCA1 (chromosome 17q21) and BRCA2 (chromosome 13q12.3) mutations are inherited in an autosomal dominant pattern with variable penetrance. Understanding BRCA status has profound implications for cancer prevention, screening, surgical management, and therapeutic options including PARP inhibitors. Genetic counseling and testing are essential components of managing high-risk individuals and their families.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 'content', 2, 'Genetics and Cancer Risks', 'BRCA GENE FUNCTION:
BRCA1 and BRCA2 are tumor suppressor genes
Function in homologous recombination DNA repair
Both copies must be inactivated for cancer (Knudson two-hit hypothesis)
Inherited mutation is first hit, somatic mutation is second hit

INHERITANCE:
Autosomal dominant with incomplete penetrance
50% chance of passing to offspring
Variable expression within families

LIFETIME CANCER RISKS:
BRCA1 Mutation:
- Breast cancer: 55-70% by age 70
- Second primary breast: 40-50%
- Ovarian cancer: 40-45% by age 70
- Also increased: Prostate, pancreatic cancer

BRCA2 Mutation:
- Breast cancer: 45-70% by age 70
- Ovarian cancer: 15-25% by age 70
- Male breast cancer: 6-8% (higher than BRCA1)
- Prostate, pancreatic, melanoma risk increased

COMPARISON:
General population breast cancer risk: 12%
General population ovarian cancer risk: 1.3%
BRCA carriers have 10-fold or greater increased risk

FOUNDER MUTATIONS:
Ashkenazi Jewish population: 3 specific mutations in 1/40
Icelandic, Polish, Dutch populations have founder mutations
Testing often starts with founder mutations in relevant populations'),
('d2000057-0000-0000-0000-000000000057'::uuid, 'content', 3, 'Genetic Testing and Counseling', 'INDICATIONS FOR BRCA TESTING:
Personal history:
- Breast cancer less than 50 years
- Triple-negative breast cancer less than 60 years
- Two primary breast cancers
- Breast and ovarian cancer
- Male breast cancer
- Pancreatic cancer with family history

Family history:
- Known BRCA mutation in family
- Multiple breast cancers
- Breast and ovarian cancer in family
- Ashkenazi Jewish ancestry with breast/ovarian cancer

GENETIC COUNSELING:
Pre-test counseling essential:
- Implications of positive/negative results
- Impact on family members
- Psychological considerations
- Insurance implications

Post-test counseling:
- Interpretation of results
- Risk reduction options
- Surveillance recommendations
- Cascade testing of relatives

TESTING PROCESS:
Blood or saliva sample
Full gene sequencing for BRCA1 and BRCA2
Results: Positive, negative, or variant of uncertain significance (VUS)

VARIANTS OF UNCERTAIN SIGNIFICANCE (VUS):
Genetic changes with unknown clinical significance
Cannot guide management decisions
May be reclassified over time
Follow general population guidelines until clarified'),
('d2000057-0000-0000-0000-000000000057'::uuid, 'content', 4, 'Surgical and Medical Management', 'RISK-REDUCING SURGERY:
Bilateral Risk-Reducing Mastectomy (BRRM):
- Reduces breast cancer risk by 90-95%
- Option for unaffected carriers or after first breast cancer
- Consideration: immediate reconstruction
- Does not eliminate 100% risk (chest wall residual)

Bilateral Salpingo-Oophorectomy (RRSO):
- Recommended by age 35-40 (BRCA1) or 40-45 (BRCA2)
- Reduces ovarian cancer risk by 80-90%
- Also reduces breast cancer risk by 50% if done premenopausally
- Induces surgical menopause

SURGICAL DECISIONS FOR BREAST CANCER:
BRCA-positive breast cancer patient options:
- Lumpectomy with radiation (increased ipsilateral recurrence risk)
- Unilateral mastectomy
- Bilateral mastectomy (contralateral prophylactic)
- Contralateral breast cancer risk: 20-40% over lifetime

Factors in decision:
- Age at diagnosis
- Family history
- Personal preference
- Life expectancy

SURVEILLANCE (if declining surgery):
Breast:
- Clinical exam every 6 months
- Annual mammogram from age 30
- Annual breast MRI from age 25
- Alternating imaging every 6 months

Ovarian (limited benefit):
- Transvaginal ultrasound
- CA-125 every 6 months
- Not proven to reduce mortality

MEDICAL THERAPY:
PARP Inhibitors (Olaparib, Talazoparib):
- Exploit DNA repair deficiency in BRCA-mutated cancers
- Synthetic lethality concept
- Approved for BRCA+ breast and ovarian cancer

Chemoprevention:
- Tamoxifen reduces breast cancer risk by 50%
- Oral contraceptives reduce ovarian cancer risk'),
('d2000057-0000-0000-0000-000000000057'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'BRCA1 on chromosome 17, BRCA2 on chromosome 13. Autosomal dominant inheritance. BRCA1: higher ovarian cancer risk (40-45%). BRCA2: higher male breast cancer risk. BRCA+ breast cancer: consider bilateral mastectomy due to 20-40% contralateral risk. RRSO recommended 35-45 depending on gene. PARP inhibitors exploit synthetic lethality in BRCA-mutated cancers. Ashkenazi Jewish: 1 in 40 carry BRCA mutation.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 'key_points', 6, 'Key Points Summary', 'BRCA genes: tumor suppressors for DNA repair. BRCA1 breast risk 55-70%, ovarian 40-45%. BRCA2 breast risk 45-70%, ovarian 15-25%. Testing indicated: early breast cancer, family history, Ashkenazi ancestry. Risk-reducing mastectomy: 90-95% risk reduction. RRSO: 80-90% ovarian risk reduction. PARP inhibitors for BRCA+ cancers. Genetic counseling essential.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000057-0000-0000-0000-000000000057'::uuid, 1, 'BRCA1 gene is located on chromosome:', '13', '17', '21', '11', '22', 'B', 'BRCA1 is located on chromosome 17q21. BRCA2 is on chromosome 13q12.3.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 2, 'BRCA genes function in:', 'Cell cycle regulation only', 'Homologous recombination DNA repair', 'Protein synthesis', 'RNA transcription only', 'Lipid metabolism', 'B', 'BRCA1 and BRCA2 are tumor suppressor genes involved in homologous recombination DNA repair.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 3, 'BRCA mutations are inherited in what pattern?', 'Autosomal recessive', 'Autosomal dominant', 'X-linked recessive', 'X-linked dominant', 'Mitochondrial', 'B', 'BRCA mutations are inherited in an autosomal dominant pattern with variable penetrance.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 4, 'Lifetime breast cancer risk in BRCA1 mutation carrier is approximately:', '10-15%', '25-35%', '55-70%', '90-100%', 'Same as population', 'C', 'BRCA1 carriers have 55-70% lifetime risk of breast cancer by age 70, compared to 12% population risk.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 5, 'Ovarian cancer risk is higher in which mutation?', 'BRCA1', 'BRCA2', 'Equal in both', 'Neither increases risk', 'Only in homozygotes', 'A', 'BRCA1 has higher ovarian cancer risk (40-45%) compared to BRCA2 (15-25%).'),
('d2000057-0000-0000-0000-000000000057'::uuid, 6, 'Male breast cancer risk is more increased in:', 'BRCA1', 'BRCA2', 'Equal in both', 'Neither', 'General population only', 'B', 'BRCA2 carriers have 6-8% risk of male breast cancer, higher than BRCA1.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 7, 'Founder mutations in BRCA genes are particularly common in:', 'African population', 'Ashkenazi Jewish population', 'Chinese population', 'Australian population', 'Indian population', 'B', 'Ashkenazi Jewish population has 3 specific BRCA founder mutations in 1 in 40 individuals.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 8, 'Risk-reducing bilateral mastectomy decreases breast cancer risk by:', '25-30%', '50-60%', '70-80%', '90-95%', '100%', 'D', 'Bilateral risk-reducing mastectomy decreases breast cancer risk by 90-95%.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 9, 'Risk-reducing salpingo-oophorectomy is recommended at age:', '20-25 years', '35-45 years depending on gene', '50-55 years', '60 years', 'At menopause', 'B', 'RRSO is recommended by age 35-40 for BRCA1 and 40-45 for BRCA2 carriers.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 10, 'RRSO reduces ovarian cancer risk by approximately:', '10-20%', '40-50%', '60-70%', '80-90%', '100%', 'D', 'Risk-reducing salpingo-oophorectomy reduces ovarian cancer risk by 80-90%.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 11, 'PARP inhibitors work by:', 'Direct DNA damage', 'Synthetic lethality in DNA repair-deficient cells', 'Hormone blockade', 'Angiogenesis inhibition', 'Immune stimulation', 'B', 'PARP inhibitors exploit synthetic lethality - when PARP is inhibited in cells already deficient in homologous recombination (BRCA-), cell death occurs.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 12, 'Contralateral breast cancer risk in BRCA-positive breast cancer patient is:', '5-10%', '20-40%', '60-70%', '80-90%', 'Negligible', 'B', 'BRCA+ breast cancer patients have 20-40% lifetime risk of contralateral breast cancer.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 13, 'Which is NOT an indication for BRCA testing?', 'Breast cancer at age 45', 'Male breast cancer', 'Triple-negative breast cancer at 55', 'Ashkenazi ancestry with breast cancer', 'Breast cancer at age 70 with no family history', 'E', 'Breast cancer at age 70 with no family history is not a standard indication. Young age, male breast cancer, triple-negative, and Ashkenazi ancestry are indications.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 14, 'Variant of uncertain significance (VUS) in BRCA testing means:', 'Definitely pathogenic', 'Definitely benign', 'Unknown clinical significance', 'Testing error', 'Need repeat testing immediately', 'C', 'VUS indicates a genetic variant with unknown clinical significance. Cannot guide management until reclassified.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 15, 'Pre-menopausal RRSO also reduces breast cancer risk by:', '10%', '50%', '80%', '100%', 'Does not affect breast', 'B', 'Pre-menopausal RRSO reduces breast cancer risk by approximately 50% due to estrogen deprivation.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 16, 'Breast MRI screening for BRCA carriers should start at age:', '18', '25', '40', '50', '30', 'B', 'Annual breast MRI should begin at age 25 in BRCA carriers, with mammogram added from age 30.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 17, 'Which cancer risk is increased in BRCA2 but not as much in BRCA1?', 'Ovarian', 'Breast', 'Male breast cancer', 'Endometrial', 'Cervical', 'C', 'Male breast cancer risk is significantly higher in BRCA2 (6-8%) compared to BRCA1.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 18, 'Tamoxifen in BRCA carriers can reduce breast cancer risk by:', '10%', '25%', '50%', '75%', '90%', 'C', 'Tamoxifen chemoprevention reduces breast cancer risk by approximately 50% in high-risk individuals.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 19, 'Which is true about BRCA-positive ovarian cancer?', 'Never responds to PARP inhibitors', 'Better response to platinum-based chemotherapy', 'Always requires radical surgery', 'Worse prognosis than sporadic', 'Cannot be prevented', 'B', 'BRCA+ ovarian cancers have better response to platinum-based chemotherapy and PARP inhibitors.'),
('d2000057-0000-0000-0000-000000000057'::uuid, 20, 'Cascade testing refers to:', 'Testing multiple genes at once', 'Genetic testing of at-risk family members', 'Sequential chemotherapy', 'Multiple surgeries', 'Repeated imaging', 'B', 'Cascade testing is the process of genetic testing family members of a known BRCA mutation carrier.');
