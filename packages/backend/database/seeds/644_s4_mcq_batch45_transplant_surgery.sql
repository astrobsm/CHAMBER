-- Surgery 4 MCQ Question Bank - Batch 45
-- Section H: Special Topics - Transplant Surgery Principles
-- 40 Questions

-- Topic: Transplant Surgery Principles
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000045-0000-0000-0000-000000000045', 'Transplant Surgery Principles', 'a0000004-0000-0000-0000-000000000004', 'Organ transplantation principles, immunosuppression, and rejection', 45, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Organ transplantation is defined as:',
 'Blood transfusion', 'Transfer of cells tissues or organs from donor to recipient', 'Bone marrow aspiration', 'Skin grafting only', 'Artificial organ implantation',
 'B', 'Transplantation: transfer of cells, tissues, or organs between individuals (allograft) or within same individual (autograft). Solid organ transplants include kidney, liver, heart, lung, pancreas, intestine.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'An allograft refers to:',
 'Transplant from same individual', 'Transplant from genetically different individual of same species', 'Transplant from different species', 'Artificial organ', 'Transplant between identical twins',
 'B', 'Graft terminology: autograft (same individual), isograft/syngeneic (identical twin), allograft (same species, different individual), xenograft (different species). Allografts most common, require immunosuppression.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Xenograft refers to:',
 'Same species transplant', 'Transplant from a different species', 'Identical twin transplant', 'Self-transplant', 'Synthetic organ',
 'B', 'Xenograft: cross-species transplantation (e.g., pig to human). Emerging field. Major barriers: hyperacute rejection (natural antibodies), chronic rejection, zoonotic infection. Gene-edited pigs being developed.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'The major histocompatibility complex (MHC) in humans is called:',
 'Rh system', 'Human leukocyte antigen (HLA) system', 'ABO system', 'Kell system', 'Lewis system',
 'B', 'HLA system: human MHC on chromosome 6. Class I (HLA-A, B, C) on all nucleated cells. Class II (HLA-DR, DQ, DP) on antigen-presenting cells. Critical for transplant matching and rejection.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'HLA matching is most important for:',
 'Liver transplant', 'Kidney transplant', 'Heart transplant', 'Lung transplant', 'Same importance for all',
 'B', 'HLA matching: most critical for kidney transplant (affects long-term survival). Less impact on liver (immunologically privileged), heart, lung (ischemia time limits matching). Zero mismatch kidneys have best outcomes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'ABO blood type compatibility in solid organ transplantation:',
 'Is not important', 'Is essential to avoid hyperacute rejection', 'Only matters for kidney', 'Can always be crossed', 'Is same as HLA matching',
 'B', 'ABO compatibility: essential for most transplants (natural anti-A, anti-B antibodies cause hyperacute rejection). ABO-incompatible transplants possible with desensitization protocols. O universal donor, AB universal recipient.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'A positive crossmatch before transplantation indicates:',
 'Good compatibility', 'Recipient has preformed antibodies against donor HLA increasing rejection risk', 'ABO compatibility', 'Safe to proceed', 'No antibodies present',
 'B', 'Crossmatch: recipient serum tested against donor lymphocytes. Positive = preformed donor-specific antibodies (DSA). Traditionally contraindication to transplant (hyperacute rejection). Desensitization protocols allow some positive crossmatch transplants.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Panel reactive antibody (PRA) measures:',
 'Organ function', 'Percentage of population against which recipient has preformed HLA antibodies', 'Blood type', 'HLA matching', 'Kidney function',
 'B', 'PRA (cPRA - calculated): percentage of donor pool against which recipient is sensitized. High PRA = difficulty finding compatible donor, longer wait. Causes of sensitization: pregnancy, transfusion, prior transplant.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Hyperacute rejection occurs:',
 'Months after transplant', 'Within minutes to hours due to preformed antibodies', 'After years', 'Only in kidney transplant', 'Only with immunosuppression',
 'B', 'Hyperacute rejection: minutes to hours post-transplant. Preformed antibodies (ABO, anti-HLA) activate complement, cause thrombosis. Irreversible, graft loss. Prevention: proper crossmatch, ABO compatibility. No treatment.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Acute cellular rejection is primarily mediated by:',
 'Antibodies', 'T lymphocytes', 'Natural killer cells only', 'Complement only', 'Neutrophils only',
 'B', 'Acute cellular rejection: T-cell mediated. CD4+ and CD8+ T cells infiltrate graft, recognize foreign HLA. Days to weeks post-transplant. Diagnosis: biopsy. Treatment: increased immunosuppression (steroids, thymoglobulin).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Acute antibody-mediated rejection is characterized by:',
 'T-cell infiltration only', 'Donor-specific antibodies and complement activation with C4d deposition', 'No antibodies', 'Only chronic changes', 'Hyperplasia',
 'B', 'Antibody-mediated rejection (AMR): donor-specific antibodies bind graft endothelium, activate complement. C4d staining in peritubular capillaries (kidney). Treatment: plasmapheresis, IVIG, rituximab, bortezomib.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Chronic rejection:',
 'Occurs immediately', 'Develops over months to years with progressive graft fibrosis and dysfunction', 'Is easily treated', 'Is same as acute rejection', 'Has no pathological changes',
 'B', 'Chronic rejection (chronic allograft dysfunction): progressive, months to years. Arteriopathy, fibrosis, functional decline. Multifactorial (immunological and non-immunological). Limited treatment options. Major cause of late graft loss.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Induction immunosuppression refers to:',
 'Chronic therapy', 'Intensive therapy at time of transplant to prevent early rejection', 'No immunosuppression', 'Stopping immunosuppression', 'Only for rejection treatment',
 'B', 'Induction therapy: intensive immunosuppression at transplant. Agents: IL-2 receptor antagonists (basiliximab), T-cell depleting (thymoglobulin, alemtuzumab). Reduces early acute rejection. Tailored to immunological risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Maintenance immunosuppression typically includes:',
 'Single agent only', 'Combination of calcineurin inhibitor antiproliferative and corticosteroid', 'No medications needed', 'Only antibiotics', 'Only for first month',
 'B', 'Maintenance immunosuppression: triple therapy classic. CNI (tacrolimus, cyclosporine), antiproliferative (mycophenolate, azathioprine), corticosteroid (often tapered/stopped). Balances rejection prevention and toxicity.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Calcineurin inhibitors used in transplantation include:',
 'Prednisone', 'Tacrolimus and cyclosporine', 'Mycophenolate', 'Sirolimus', 'Azathioprine',
 'B', 'CNIs: tacrolimus (FK506) and cyclosporine (CsA). Block calcineurin, inhibit T-cell activation and IL-2 production. Cornerstone of immunosuppression. Tacrolimus now preferred (better outcomes). Nephrotoxicity major side effect.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'The mechanism of action of tacrolimus is:',
 'Inhibits B cells', 'Binds FKBP12 and inhibits calcineurin blocking T-cell activation', 'Inhibits mTOR', 'Depletes T cells', 'Blocks IL-2 receptor',
 'B', 'Tacrolimus mechanism: binds FKBP12 (immunophilin), complex inhibits calcineurin phosphatase, prevents NFAT dephosphorylation, blocks IL-2 transcription and T-cell activation. 10-100x more potent than cyclosporine.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Major side effects of calcineurin inhibitors include:',
 'No side effects', 'Nephrotoxicity neurotoxicity hypertension and diabetes', 'Only GI effects', 'Only infection', 'Bone marrow suppression only',
 'B', 'CNI toxicity: nephrotoxicity (acute and chronic - major issue), neurotoxicity (tremor, seizures), hypertension, new-onset diabetes (tacrolimus > cyclosporine), hyperlipidemia, hyperkalemia, hypomagnesemia, gingival hyperplasia (cyclosporine).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Mycophenolate mofetil acts by:',
 'Inhibiting calcineurin', 'Inhibiting inosine monophosphate dehydrogenase blocking purine synthesis', 'Blocking IL-2 receptor', 'Depleting T cells', 'Inhibiting mTOR',
 'B', 'Mycophenolate (MMF, MPA): prodrug converted to mycophenolic acid. Inhibits IMPDH, blocks de novo purine synthesis. Lymphocytes dependent on this pathway. Side effects: GI (diarrhea), bone marrow suppression.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'mTOR inhibitors used in transplantation include:',
 'Tacrolimus', 'Sirolimus and everolimus', 'Cyclosporine', 'Mycophenolate', 'Prednisone',
 'B', 'mTOR inhibitors: sirolimus (rapamycin), everolimus. Block mTOR, inhibit T-cell proliferation. Not nephrotoxic (used in CNI minimization). Anti-tumor effects. Side effects: hyperlipidemia, wound healing issues, proteinuria, cytopenias.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Basiliximab is:',
 'Calcineurin inhibitor', 'Monoclonal antibody against IL-2 receptor for induction therapy', 'mTOR inhibitor', 'Antiproliferative', 'Corticosteroid',
 'B', 'Basiliximab: chimeric anti-CD25 (IL-2 receptor alpha chain) monoclonal antibody. Blocks IL-2 signaling on activated T cells. Induction agent. Well tolerated. For low-to-moderate immunological risk patients.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Anti-thymocyte globulin (ATG) is:',
 'Monoclonal antibody', 'Polyclonal T-cell depleting antibody used for induction or rejection treatment', 'CNI', 'mTOR inhibitor', 'IL-2 receptor antagonist',
 'B', 'ATG (thymoglobulin): polyclonal antibody (rabbit or horse) against T-cells. Depletes circulating T-cells. Potent immunosuppression. Used for induction in high-risk, treatment of steroid-resistant rejection. Side effects: infusion reactions, cytopenias, infection risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Corticosteroids in transplantation work by:',
 'Specific T-cell depletion', 'Broad anti-inflammatory and immunosuppressive effects blocking cytokine production', 'Only IL-2 blockade', 'No immunosuppression', 'Increasing antibodies',
 'B', 'Corticosteroids: broad immunosuppression. Inhibit NF-kB, reduce cytokine production, lymphocyte apoptosis, reduce APC function. Used in induction, maintenance (often tapered), rejection treatment. Many metabolic side effects.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Risk of malignancy in transplant recipients:',
 'Is decreased', 'Is increased 2-4 fold especially for virus-associated cancers and skin cancer', 'Is unchanged', 'Only for solid tumors', 'Is not a concern',
 'B', 'Post-transplant malignancy: 2-4x increased risk. Virus-associated: PTLD (EBV), Kaposi sarcoma (HHV8), cervical/anal (HPV), liver (HBV/HCV). Skin cancer very common (100x SCC risk). Immunosuppression + impaired surveillance.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Post-transplant lymphoproliferative disorder (PTLD) is associated with:',
 'Bacterial infection', 'Epstein-Barr virus infection', 'Fungal infection', 'No infection', 'HIV',
 'B', 'PTLD: spectrum from polyclonal proliferation to aggressive lymphoma. EBV-driven in most cases. Risk: EBV-naive recipient, intense immunosuppression, pediatric. Treatment: reduce immunosuppression, rituximab, chemotherapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'CMV infection in transplant recipients:',
 'Is rare', 'Is common and can cause direct organ effects and indirect immunomodulation', 'Is always asymptomatic', 'Cannot be prevented', 'Only affects liver',
 'B', 'CMV: most common viral infection post-transplant. Direct effects: syndrome, tissue-invasive disease (GI, pneumonitis, hepatitis). Indirect: increased rejection, opportunistic infections. Prevention: prophylaxis or preemptive monitoring.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly transplanted solid organ is the:',
 'Heart', 'Kidney', 'Liver', 'Lung', 'Pancreas',
 'B', 'Kidney transplant: most common solid organ (~20,000/year US). For ESRD. Improves survival vs dialysis, quality of life. Living and deceased donors. Placed in iliac fossa heterotopically.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Living donor kidney transplant compared to deceased donor:',
 'Has worse outcomes', 'Has better outcomes with longer graft survival', 'Has same outcomes', 'Is contraindicated', 'Has higher rejection',
 'B', 'Living donor kidney transplant: better outcomes (shorter cold ischemia, planned surgery, optimal donor selection). 15-20 year graft survival vs 10-12 for deceased. Kidney paired exchange expands options for incompatible pairs.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Delayed graft function after kidney transplant refers to:',
 'Immediate function', 'Need for dialysis in the first week due to acute tubular necrosis', 'Rejection', 'Hyperacute rejection', 'Chronic rejection',
 'B', 'DGF: need for dialysis within first week post-transplant. Usually ischemia-reperfusion injury (ATN). More common in deceased donor, DCD, prolonged cold ischemia. May affect long-term outcomes. Usually resolves.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Liver transplant is indicated for:',
 'Only hepatitis C', 'End-stage liver disease acute liver failure and certain liver tumors', 'Only cirrhosis', 'All liver diseases', 'Only metabolic disease',
 'B', 'Liver transplant indications: cirrhosis (any etiology - NASH, alcohol, viral, autoimmune, metabolic), acute liver failure, HCC (within Milan criteria), cholestatic diseases, metabolic (Wilson, alpha-1-antitrypsin). MELD score for allocation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'The MELD score is used to:',
 'Predict rejection', 'Prioritize liver allocation based on disease severity and mortality risk', 'Match HLA', 'Measure kidney function', 'Assess heart function',
 'B', 'MELD (Model for End-stage Liver Disease): predicts 90-day mortality in liver disease. Components: bilirubin, creatinine, INR, sodium. Higher score = higher priority on waitlist. Exception points for HCC, other conditions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Living donor liver transplantation involves:',
 'Whole liver donation', 'Donating a portion of liver which regenerates in both donor and recipient', 'Artificial liver', 'Only pediatric use', 'Splitting deceased donor liver',
 'B', 'Living donor liver transplant: right lobe (adults) or left lateral segment (pediatrics) donated. Liver regenerates in both. Donor risk 0.1-0.5% mortality. Expands donor pool. Requires careful donor evaluation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Heart transplant is indicated for:',
 'Coronary artery disease only', 'End-stage heart failure refractory to medical therapy', 'All cardiomyopathies', 'Mild heart failure', 'Angina only',
 'B', 'Heart transplant indications: end-stage heart failure (ischemic or non-ischemic cardiomyopathy), refractory to optimal medical therapy/devices. Must exclude active infection, severe PVD, advanced age (generally <70), malignancy, psychosocial issues.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Orthotopic heart transplantation means:',
 'Additional heart implanted', 'Native heart removed and donor heart placed in same position', 'Heart placed in abdomen', 'No surgery involved', 'Temporary placement',
 'B', 'Orthotopic: organ placed in normal anatomic position (heart replaces heart, liver replaces liver). Heterotopic: different position (kidney placed in iliac fossa, not in renal fossa).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Cardiac allograft vasculopathy is:',
 'Acute rejection', 'A form of chronic rejection with diffuse coronary artery disease', 'Infection', 'Pericarditis', 'Heart failure',
 'B', 'Cardiac allograft vasculopathy (CAV): chronic rejection, accelerated transplant coronary artery disease. Diffuse, concentric intimal hyperplasia. Leading cause of late death. Monitoring: surveillance angiography or IVUS. Treatment: retransplant.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Lung transplant is indicated for:',
 'Mild asthma', 'End-stage lung disease such as COPD pulmonary fibrosis and cystic fibrosis', 'Acute bronchitis', 'Lung cancer stage 4', 'Pneumonia',
 'B', 'Lung transplant indications: COPD/emphysema (most common), IPF/pulmonary fibrosis (worst prognosis), cystic fibrosis, pulmonary hypertension, bronchiectasis. Single or bilateral lung. LAS (Lung Allocation Score) for prioritization.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Bronchiolitis obliterans syndrome after lung transplant is:',
 'Acute rejection', 'A form of chronic rejection with progressive airflow obstruction', 'Infection', 'Drug toxicity', 'Pulmonary embolism',
 'B', 'BOS: chronic lung allograft dysfunction, progressive small airway obstruction. FEV1 decline. Leading cause of late morbidity/mortality. Risk factors: acute rejection, reflux, infection. Treatment limited - retransplant may be needed.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Pancreas transplantation is primarily performed for:',
 'Pancreatic cancer', 'Type 1 diabetes often combined with kidney transplant', 'Type 2 diabetes always', 'Pancreatitis', 'Exocrine deficiency only',
 'B', 'Pancreas transplant: for type 1 diabetes. Simultaneous pancreas-kidney (SPK) most common, pancreas after kidney (PAK), pancreas transplant alone (PTA). Eliminates insulin dependence. SPK survival ~85% at 5 years.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Donation after circulatory death (DCD) differs from donation after brain death in that:',
 'They are identical', 'Organs are procured after cessation of cardiac function rather than brain death', 'Only DCD uses living donors', 'DCD is not used', 'DCD has longer ischemia time',
 'B', 'DCD: organs recovered after circulatory death (no heartbeat for 2-5 min, no chance of autoresuscitation). Expands donor pool. Higher DGF in kidney. Controlled (withdrawal of support) vs uncontrolled DCD.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Brain death criteria include:',
 'Coma only', 'Coma absence of brainstem reflexes and apnea confirmed by testing', 'Cardiac arrest', 'Flat EEG only', 'Absence of pulse',
 'B', 'Brain death determination: coma (known cause), absent brainstem reflexes (pupils, corneal, oculocephalic, oculovestibular, gag, cough), apnea test positive (no respiratory effort with CO2 stimulus). Confirmatory tests if needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000045-0000-0000-0000-000000000045', 'a0000004-0000-0000-0000-000000000004',
 'Cold ischemia time refers to:',
 'Time in body', 'Time from organ cooling to reperfusion in recipient', 'Time on bypass', 'Time in dialysis', 'Time on waiting list',
 'B', 'Cold ischemia time: organ preservation (cold, preservation solution) from procurement to reperfusion. Kidney tolerates longest (24-36 hours), heart/lung shortest (4-6 hours). Prolonged CIT increases DGF, affects outcomes.', 'medium', 'knowledge');
