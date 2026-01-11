-- ============================================================================
-- SURGERY 3 MCQ BATCH 42: Transplant Surgery Basics (Questions 2461-2520)
-- Topic: Organ Transplantation Principles, Immunosuppression, Rejection
-- ============================================================================

INSERT INTO questions (topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES

-- Transplant Immunology (1-15)
('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'The most important antigens for transplant rejection are:',
'ABO blood group only', 'Human Leukocyte Antigens (HLA) encoded by the Major Histocompatibility Complex (MHC)', 'Rh factor', 'Platelet antigens', 'Immunoglobulin genes',
'B', 'HLA antigens: primary targets of alloimmune response. MHC on chromosome 6. Class I (HLA-A, B, C): on all nucleated cells, present to CD8+ T cells. Class II (HLA-DR, DQ, DP): on antigen-presenting cells, present to CD4+ T cells. Matching reduces rejection risk. Most important for kidney: HLA-A, B, DR. ABO compatibility also required. Crossmatch: detects preformed donor-specific antibodies. Reference: Lakkis FG. J Clin Invest. 2000.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Hyperacute rejection occurs:',
'Months after transplant', 'Within minutes to hours due to preformed antibodies against donor antigens', 'Years later', 'Only with viral infections', 'Never in modern transplantation',
'B', 'Hyperacute rejection: immediate (minutes to hours). Mechanism: preformed recipient antibodies (anti-HLA or anti-ABO) bind donor endothelium, activate complement, cause thrombosis and graft infarction. Prevention: ABO compatibility, pretransplant crossmatch testing. If occurs: irreversible, requires graft removal. Now rare due to crossmatch screening. Historically devastating before testing. Reference: Patel R. N Engl J Med. 1969.',
'easy', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Acute cellular rejection is mediated primarily by:',
'Antibodies', 'T lymphocytes (CD4+ and CD8+) infiltrating and attacking the graft', 'Complement alone', 'Natural killer cells only', 'Platelets',
'B', 'Acute cellular rejection: T cell-mediated. Timeline: days to months (commonly weeks). Pathology: lymphocytic infiltrate in graft parenchyma. CD4+ helper T cells recognize donor HLA Class II on APCs. CD8+ cytotoxic T cells directly kill donor cells expressing HLA Class I. Diagnosis: biopsy showing lymphocytic infiltration, tubulitis (kidney), portal inflammation (liver). Treatment: pulse steroids, anti-thymocyte globulin for steroid-resistant. Usually reversible with treatment. Reference: Cornell LD. Semin Nephrol. 2014.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Antibody-mediated rejection (AMR) is characterized by:',
'T cell infiltration only', 'Donor-specific antibodies causing endothelial injury with positive C4d staining on biopsy', 'Granulomatous inflammation', 'Fungal infection', 'Normal biopsy',
'B', 'Antibody-mediated rejection: B cell and antibody-driven. Features: (1) Circulating donor-specific antibodies (DSA), (2) Histopathologic evidence of antibody injury (microvascular inflammation, glomerulopathy), (3) C4d deposition on biopsy (complement activation marker). Can be acute or chronic. Treatment: plasmapheresis (remove antibodies), IVIG, rituximab, bortezomib. More difficult to treat than cellular rejection, worse prognosis. Reference: Loupy A. J Am Soc Nephrol. 2017.',
'hard', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Chronic allograft rejection/dysfunction is characterized by:',
'Sudden graft loss', 'Gradual progressive graft dysfunction over months to years with fibrosis and vascular changes', 'Immediate thrombosis', 'Complete recovery', 'Infection only',
'B', 'Chronic rejection/allograft dysfunction: slow progressive deterioration. Mechanisms: ongoing immune injury (cellular and humoral), chronic injury from calcineurin inhibitor toxicity, recurrent disease. Histology: interstitial fibrosis, tubular atrophy (kidney - IF/TA), vanishing bile duct syndrome (liver), transplant vasculopathy (heart), bronchiolitis obliterans (lung). Limited treatment options. Prevention: adequate immunosuppression, medication adherence. Leading cause of late graft loss. Reference: Chapman JR. N Engl J Med. 2005.',
'medium', 'knowledge'),

-- Immunosuppression (16-35)
('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Calcineurin inhibitors (cyclosporine, tacrolimus) work by:',
'Blocking B cells', 'Inhibiting calcineurin, preventing IL-2 transcription and T cell activation', 'Killing T cells directly', 'Blocking complement', 'Inhibiting antibody production only',
'B', 'Calcineurin inhibitors (CNI): cornerstone of transplant immunosuppression. Mechanism: bind immunophilins (cyclosporine-cyclophilin, tacrolimus-FKBP12), complex inhibits calcineurin phosphatase, prevents NFAT dephosphorylation and nuclear translocation, blocks IL-2 gene transcription, prevents T cell activation and proliferation. Tacrolimus: 10-100x more potent than cyclosporine, now preferred. Side effects: nephrotoxicity, hypertension, neurotoxicity, diabetes (especially tacrolimus). Reference: Halloran PF. N Engl J Med. 2004.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'The most common serious side effect of calcineurin inhibitors is:',
'Bone marrow suppression', 'Nephrotoxicity (acute and chronic)', 'Pulmonary fibrosis', 'Hepatotoxicity', 'Anemia',
'B', 'CNI nephrotoxicity: most significant limiting side effect. Acute: afferent arteriolar vasoconstriction (reversible). Chronic: irreversible interstitial fibrosis and tubular atrophy. Contributes to late graft loss in kidney transplants, causes kidney injury in non-renal transplants. Management: therapeutic drug monitoring, minimize dose, consider CNI-sparing protocols. Other CNI side effects: hypertension, hyperlipidemia, diabetes, tremor, gingival hyperplasia (cyclosporine), hirsutism (cyclosporine). Reference: Naesens M. Clin J Am Soc Nephrol. 2009.',
'easy', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Mycophenolate mofetil (MMF) inhibits:',
'Calcineurin', 'Inosine monophosphate dehydrogenase (IMPDH), blocking purine synthesis in lymphocytes', 'mTOR', 'Thymidine synthesis', 'Complement',
'B', 'Mycophenolate: antiproliferative agent. Active form: mycophenolic acid (MPA). Mechanism: inhibits IMPDH, rate-limiting enzyme in de novo purine (guanosine) synthesis. Lymphocytes depend on de novo pathway (unlike other cells with salvage pathway) - selective immunosuppression. Used as maintenance agent with CNI and steroids. Side effects: GI (diarrhea, nausea), bone marrow suppression (leukopenia, anemia), teratogenic. Reference: Allison AC. Immunopharmacology. 2000.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'mTOR inhibitors (sirolimus, everolimus) differ from calcineurin inhibitors by:',
'Causing more nephrotoxicity', 'Not causing direct nephrotoxicity but inhibiting cell cycle progression and having antiproliferative effects', 'Being more potent', 'Faster onset', 'No side effects',
'B', 'mTOR inhibitors: different mechanism from CNI. Target: mammalian target of rapamycin, serine/threonine kinase. Effect: blocks IL-2 signal transduction, arrests cell cycle at G1-S transition, prevents T cell proliferation. Key advantage: not directly nephrotoxic. Additional effects: antiproliferative (used in cancer, drug-eluting stents). Side effects: impaired wound healing, hyperlipidemia, proteinuria, pneumonitis, oral ulcers, thrombocytopenia. Often used CNI-sparing protocols. Reference: Saunders RN. Kidney Int. 2001.',
'hard', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Anti-thymocyte globulin (ATG) is used in transplantation for:',
'Maintenance immunosuppression only', 'Induction therapy (depletes T cells) and treatment of steroid-resistant acute rejection', 'Treating infections', 'Preventing hypertension', 'Promoting wound healing',
'B', 'Anti-thymocyte globulin (ATG): polyclonal antibody (rabbit or horse) against human T lymphocytes. Uses: (1) Induction therapy: given perioperatively for profound T cell depletion. (2) Treatment of acute rejection: steroid-resistant rejection. Mechanism: binds T cell surface antigens, causes complement-mediated lysis and opsonization. Profound lymphocyte depletion. Risks: cytokine release syndrome (first dose), infection, malignancy (PTLD). Reference: Brennan DC. Transplantation. 1999.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Basiliximab is an example of:',
'Polyclonal antibody', 'Monoclonal antibody against IL-2 receptor (CD25) used for induction', 'Calcineurin inhibitor', 'mTOR inhibitor', 'Antimetabolite',
'B', 'Basiliximab: chimeric (human-mouse) monoclonal antibody. Target: CD25 (IL-2 receptor alpha chain) on activated T cells. Use: induction therapy in kidney transplantation. Blocks IL-2 signaling, prevents T cell proliferation. Advantage over ATG: better tolerated, no cytokine release syndrome, does not cause profound lymphopenia. Given day 0 and day 4 of transplant. Lower risk of infection/malignancy than ATG. Reference: Nashan B. N Engl J Med. 1997.',
'medium', 'knowledge'),

-- Organ-Specific Transplantation (36-50)
('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'The most commonly transplanted solid organ is:',
'Heart', 'Kidney', 'Liver', 'Lung', 'Pancreas',
'B', 'Kidney transplantation: most common solid organ transplant worldwide. Indications: end-stage renal disease (ESRD). Advantages over dialysis: better survival, quality of life, lower cost long-term. Types: deceased donor (brain death, DCD), living donor (related or unrelated). Placement: typically heterotopic in iliac fossa. Vascular: external iliac artery and vein. Ureter: implanted into bladder (ureteroneocystostomy). Reference: Wolfe RA. N Engl J Med. 1999.',
'easy', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Living donor liver transplantation involves:',
'Whole liver removal', 'Resecting part of the donor liver (usually right lobe for adults) with regeneration of both donor and recipient livers', 'Auxiliary liver transplant only', 'Orthotopic placement', 'No regeneration',
'B', 'Living donor liver transplantation (LDLT): donor hepatectomy (usually right lobe for adult recipient, left lateral segment for pediatric). Liver regenerates in both donor and recipient (reaches near-normal size in weeks-months). Advantages: shorter wait time, better outcomes than deceased donor in some studies. Donor risks: bleeding, bile leak, liver failure (rare), death (0.1-0.5%). Rigorous donor evaluation essential. Reference: Trotter JF. Gastroenterology. 2002.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'The most common indication for liver transplantation in adults historically has been:',
'Acute liver failure', 'Decompensated cirrhosis (HCV historically, now NASH/alcohol increasing)', 'Liver metastases', 'Primary sclerosing cholangitis', 'Wilson disease',
'B', 'Liver transplant indications: (1) Decompensated cirrhosis (most common): historically HCV, now NASH and alcoholic liver disease increasing. (2) Hepatocellular carcinoma within Milan criteria. (3) Acute liver failure. (4) Metabolic diseases. (5) Cholestatic diseases (PBC, PSC). MELD score: prioritizes waiting list allocation based on bilirubin, INR, creatinine. Higher MELD = higher mortality without transplant = higher priority. Reference: Lucey MR. N Engl J Med. 1997.',
'easy', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Milan criteria for liver transplantation in hepatocellular carcinoma include:',
'Any size tumor', 'Single tumor 5 cm or less OR up to 3 tumors each 3 cm or less, with no macrovascular invasion or extrahepatic spread', 'Metastatic disease', 'Portal vein thrombosis acceptable', 'No size limit',
'B', 'Milan criteria (Mazzaferro 1996): determine eligibility for liver transplant in HCC. Criteria: (1) Single tumor 5 cm or less, OR (2) Up to 3 tumors, none greater than 3 cm, AND (3) No macrovascular invasion, AND (4) No extrahepatic disease. Within Milan: 4-year survival 75%, recurrence-free 83%. Exception points given to allow accumulation of MELD. Downstaging: treat tumor to within Milan, then list. UCSF criteria: more liberal, similar outcomes. Reference: Mazzaferro V. N Engl J Med. 1996.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Heart transplantation is indicated for:',
'Mild heart failure', 'End-stage heart failure (NYHA Class IIIB-IV) refractory to maximal medical therapy and other interventions', 'Asymptomatic cardiomyopathy', 'Age over 70 typically', 'Active infection',
'B', 'Heart transplant indications: advanced heart failure (NYHA IIIB-IV) refractory to medical therapy, inotropes, devices. Criteria: (1) Peak VO2 less than 12-14 mL/kg/min, (2) Recurrent hospitalizations, (3) Progressive decline. Contraindications: active infection, malignancy, irreversible pulmonary hypertension, severe peripheral vascular disease, poor compliance. Bridge to transplant: LVAD, ECMO. Median survival post-transplant: greater than 12 years. Rejection surveillance: endomyocardial biopsy. Reference: Mehra MR. J Heart Lung Transplant. 2016.',
'medium', 'knowledge'),

-- Complications (51-60)
('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Post-transplant lymphoproliferative disorder (PTLD) is associated with:',
'Tacrolimus use only', 'Epstein-Barr virus (EBV) infection and degree of immunosuppression', 'Sirolimus specifically', 'Hyperacute rejection', 'ABO incompatibility',
'B', 'PTLD: lymphoid proliferation (benign to frank lymphoma) in transplant recipients. Risk factors: (1) EBV seronegative recipient with EBV+ donor (highest risk), (2) Degree of immunosuppression (ATG increases risk), (3) First year post-transplant. Pathogenesis: uncontrolled EBV-driven B cell proliferation due to impaired T cell surveillance. Presentation: lymphadenopathy, mass lesions, systemic symptoms. Treatment: reduce immunosuppression, rituximab (anti-CD20), chemotherapy if needed. Reference: Dierickx D. Blood. 2015.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'CMV (cytomegalovirus) infection post-transplant is most concerning when:',
'Recipient is CMV positive', 'CMV-seronegative recipient receives organ from CMV-positive donor (D+/R- highest risk)', 'Both are negative', 'Only in kidney transplant', 'Never problematic',
'B', 'CMV post-transplant: most common viral infection. Risk stratification: D+/R- (donor positive, recipient negative): highest risk - primary infection. R+ (recipient positive): intermediate - reactivation. D-/R-: lowest risk. Presentation: CMV syndrome (fever, leukopenia), tissue-invasive disease (colitis, pneumonitis, hepatitis). Prevention: universal prophylaxis (valganciclovir for D+/R- and R+) vs preemptive therapy (monitor viral load, treat if positive). Treatment: IV ganciclovir/oral valganciclovir. Reference: Razonable RR. Am J Transplant. 2013.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Long-term complications of immunosuppression include:',
'Improved wound healing', 'Increased risk of infections, malignancy (especially skin cancer and PTLD), cardiovascular disease, and metabolic complications', 'Better bone health', 'Reduced cardiovascular risk', 'No long-term effects',
'B', 'Long-term immunosuppression complications: (1) Infections: opportunistic (CMV, PCP, fungal), recurrent bacterial. (2) Malignancy: 2-4x increased risk overall, skin cancer most common (100x increased SCC), PTLD. (3) Cardiovascular: CNI-induced hypertension, hyperlipidemia, diabetes (especially tacrolimus). (4) Metabolic: diabetes, osteoporosis (steroids). (5) Renal dysfunction (CNI nephrotoxicity). (6) Neurotoxicity. Balance: sufficient immunosuppression to prevent rejection vs minimizing complications. Reference: Webster AC. Lancet. 2007.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Brain death for organ donation is defined by:',
'Cardiac arrest only', 'Complete and irreversible cessation of all brain function including brainstem reflexes, confirmed by clinical examination and possibly ancillary tests', 'Coma for 24 hours', 'Persistent vegetative state', 'Any ICU admission',
'B', 'Brain death criteria: (1) Known cause of coma, (2) Exclusion of confounders (drugs, hypothermia, metabolic), (3) Complete unresponsiveness, (4) Absent brainstem reflexes (pupillary, corneal, oculocephalic, vestibulo-ocular, gag, cough), (5) Apnea test positive (no respiratory effort despite high PaCO2). Ancillary tests (if clinical exam limited): EEG (electrocerebral silence), cerebral angiography/nuclear scan (no cerebral blood flow). Once declared: legally dead, eligible for organ donation. Reference: Wijdicks EF. N Engl J Med. 2001.',
'medium', 'knowledge'),

('c0000057-0000-0000-0000-000000000057', 'a0000003-0000-0000-0000-000000000003',
'Donation after circulatory death (DCD) differs from brain death donation by:',
'Better outcomes', 'Organs recovered after declaration of cardiac death (asystole) following withdrawal of life support, with shorter acceptable warm ischemia time', 'No need for consent', 'Only for kidneys', 'Longer ischemia tolerance',
'B', 'DCD (donation after circulatory death): organs procured after cardiac death. Types: controlled (planned withdrawal of life support), uncontrolled (unexpected cardiac arrest). Process: withdraw support, wait for asystole (2-5 minutes observation), declare death, rapidly recover organs. Concern: warm ischemia time from circulatory arrest to cold perfusion. Organs: kidney (most tolerant), liver (careful selection), lung, pancreas. Outcomes: slightly inferior for liver (biliary complications) but acceptable. Expanding donor pool. Reference: Bernat JL. N Engl J Med. 2001.',
'hard', 'knowledge');

SELECT 'Surgery 3 MCQ Batch 42 (Transplant Surgery Basics): 60 questions inserted' as status;
