-- Article 60: Organ Transplantation
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000060-0000-0000-0000-000000000060'::uuid, 'introduction', 1, 'Introduction to Organ Transplantation', 'Organ transplantation is the replacement of a failing organ with a healthy one from a donor. It represents one of the greatest achievements of modern medicine. First successful kidney transplant was performed by Joseph Murray in 1954 between identical twins. Transplantable organs include kidney, liver, heart, lung, pancreas, and small bowel. Success depends on immunological matching, surgical technique, and immunosuppression. Major challenges include organ shortage, rejection, and complications of immunosuppression. Understanding donor types, HLA matching, rejection mechanisms, and immunosuppressive regimens is essential for transplant surgery.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 'content', 2, 'Donor Types and Organ Procurement', 'DONOR TYPES:
Living Donor:
- Related or unrelated
- Kidney most common (one kidney sufficient)
- Liver (left lateral segment or right lobe)
- Lower morbidity organs

Deceased Donor:
Brain Dead Donor (DBD):
- Neurological criteria for death
- Heart beating, organs perfused
- Better organ quality

Donation after Circulatory Death (DCD):
- Cardiac death criteria
- Longer warm ischemia time
- Expanding donor pool

DONOR EVALUATION:
Medical history and cause of death
Infection screening (HIV, HBV, HCV, CMV, EBV)
Malignancy history (active cancer contraindication)
Organ function assessment
HLA typing and crossmatch

BRAIN DEATH CRITERIA:
Irreversible coma with known cause
Absent brainstem reflexes:
- Pupils fixed, dilated
- No corneal reflex
- No vestibulo-ocular reflex
- No gag/cough reflex
- Apnea test positive
Two examinations by different physicians
Confirmatory tests: EEG, cerebral angiography (optional)

ORGAN PRESERVATION:
Cold storage: Organs flushed with preservation solution
University of Wisconsin (UW) solution most common
Cold ischemia time limits:
- Kidney: 24-36 hours
- Liver: 12-18 hours
- Heart: 4-6 hours
- Lung: 6-8 hours
Machine perfusion: Emerging technology, extends preservation'),
('d2000060-0000-0000-0000-000000000060'::uuid, 'content', 3, 'Immunology and Rejection', 'TRANSPLANT IMMUNOLOGY:
Human Leukocyte Antigens (HLA):
- Class I: HLA-A, B, C (all nucleated cells)
- Class II: HLA-DR, DQ, DP (antigen-presenting cells)
- Matching reduces rejection risk

ABO Blood Group:
- Must be compatible (same as transfusion)
- ABO-incompatible transplant possible with special protocols

Crossmatch:
- Detects preformed donor-specific antibodies
- Positive crossmatch: contraindication to transplant

Panel Reactive Antibodies (PRA):
- Measures antibody sensitization
- High PRA: difficulty finding compatible donor

TYPES OF REJECTION:
Hyperacute Rejection:
- Minutes to hours
- Preformed antibodies (ABO incompatibility, positive crossmatch)
- Immediate graft loss
- Prevented by crossmatching

Acute Rejection:
- Days to weeks (most common in first 6 months)
- T-cell mediated (cellular) or antibody mediated (humoral)
- Treatable with increased immunosuppression
- May be reversible

Chronic Rejection:
- Months to years
- Gradual graft dysfunction
- Antibody-mediated mechanisms
- Fibrosis and arteriopathy
- Difficult to treat, leads to graft loss'),
('d2000060-0000-0000-0000-000000000060'::uuid, 'content', 4, 'Immunosuppression and Complications', 'IMMUNOSUPPRESSION REGIMENS:
Induction (at transplant):
- Deplete or modulate T-cells
- Basiliximab (anti-CD25/IL-2 receptor)
- Thymoglobulin (anti-thymocyte globulin)
- Alemtuzumab (anti-CD52)

Maintenance:
Triple therapy most common:
1. Calcineurin inhibitors: Tacrolimus (primary), Cyclosporine
   - Inhibit T-cell activation
   - Nephrotoxic

2. Antimetabolites: Mycophenolate mofetil (MMF), Azathioprine
   - Inhibit lymphocyte proliferation

3. Corticosteroids: Prednisone
   - Broad anti-inflammatory
   - Multiple side effects

Alternative agents:
- mTOR inhibitors: Sirolimus, Everolimus
- Belatacept: Costimulation blocker

COMPLICATIONS OF IMMUNOSUPPRESSION:
Infections:
- Opportunistic infections (CMV, PCP, fungal)
- CMV prophylaxis with valganciclovir
- PCP prophylaxis with TMP-SMX

Malignancy:
- Post-transplant lymphoproliferative disorder (PTLD)
- Skin cancers (SCC most common)
- Related to EBV, immunosuppression level

Drug-specific toxicities:
- Calcineurin inhibitors: Nephrotoxicity, neurotoxicity, diabetes
- Steroids: Diabetes, osteoporosis, hypertension
- MMF: GI side effects, bone marrow suppression

KIDNEY TRANSPLANT:
Most common solid organ transplant
Placed in iliac fossa (heterotopic)
Renal artery to external iliac artery
Ureter to bladder (ureteroneocystostomy)

LIVER TRANSPLANT:
Orthotopic (native liver removed)
Indications: Cirrhosis, acute liver failure, HCC
MELD score for allocation'),
('d2000060-0000-0000-0000-000000000060'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'First successful kidney transplant: 1954 by Murray. Brain death: absent brainstem reflexes, apnea test. Cold ischemia: kidney 24-36h, heart 4-6h. ABO compatibility required. Positive crossmatch = contraindication. Hyperacute: preformed antibodies, immediate loss. Acute: T-cell or antibody mediated, treatable. Chronic: gradual fibrosis, difficult to treat. Triple therapy: CNI + antimetabolite + steroid. Watch for CMV, PTLD.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 'key_points', 6, 'Key Points Summary', 'Donors: living or deceased (DBD, DCD). Brain death: irreversible coma, absent brainstem reflexes. Preservation: UW solution, cold storage. HLA matching reduces rejection. Rejection types: hyperacute, acute, chronic. Immunosuppression: induction + maintenance. Triple therapy: tacrolimus, MMF, prednisone. Complications: infection, malignancy, drug toxicity. Kidney in iliac fossa, liver orthotopic.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000060-0000-0000-0000-000000000060'::uuid, 1, 'First successful kidney transplant was performed by:', 'Thomas Starzl', 'Joseph Murray', 'Christiaan Barnard', 'Norman Shumway', 'Roy Calne', 'B', 'Joseph Murray performed the first successful kidney transplant in 1954 between identical twins.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 2, 'Maximum cold ischemia time for heart is:', '24-36 hours', '12-18 hours', '4-6 hours', '48 hours', '1 hour', 'C', 'Heart has the shortest cold ischemia tolerance of 4-6 hours.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 3, 'Brain death is characterized by:', 'Persistent vegetative state', 'Irreversible coma with absent brainstem reflexes', 'Cardiac arrest', 'Minimal brain activity', 'Locked-in syndrome', 'B', 'Brain death requires irreversible coma with known cause and absent brainstem reflexes including apnea.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 4, 'Most commonly used organ preservation solution is:', 'Normal saline', 'Ringer lactate', 'University of Wisconsin (UW) solution', 'Dextrose solution', 'Albumin', 'C', 'University of Wisconsin (UW) solution is the most commonly used preservation solution for solid organs.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 5, 'Hyperacute rejection occurs due to:', 'T-cell activation', 'Preformed donor-specific antibodies', 'Chronic inflammation', 'Delayed immune response', 'Infection', 'B', 'Hyperacute rejection is caused by preformed antibodies (ABO incompatibility or positive crossmatch) causing immediate graft loss.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 6, 'Positive crossmatch before transplant indicates:', 'Good compatibility', 'Presence of preformed donor-specific antibodies', 'HLA matching', 'Negative reaction', 'Need for less immunosuppression', 'B', 'Positive crossmatch indicates preformed donor-specific antibodies and is a contraindication to transplant.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 7, 'Acute rejection most commonly occurs:', 'Within minutes', 'Within first 6 months', 'After 5 years', 'Never', 'Only with living donors', 'B', 'Acute rejection most commonly occurs in the first 6 months after transplant and is usually treatable.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 8, 'Calcineurin inhibitors include:', 'Mycophenolate and azathioprine', 'Tacrolimus and cyclosporine', 'Sirolimus and everolimus', 'Prednisone and methylprednisolone', 'Basiliximab and thymoglobulin', 'B', 'Tacrolimus and cyclosporine are calcineurin inhibitors, the backbone of maintenance immunosuppression.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 9, 'Major side effect of calcineurin inhibitors is:', 'Bone marrow suppression', 'Nephrotoxicity', 'GI ulceration', 'Pulmonary fibrosis', 'Hepatotoxicity', 'B', 'Nephrotoxicity is the major side effect of calcineurin inhibitors (tacrolimus, cyclosporine).'),
('d2000060-0000-0000-0000-000000000060'::uuid, 10, 'Standard maintenance immunosuppression includes all EXCEPT:', 'Calcineurin inhibitor', 'Antimetabolite', 'Corticosteroid', 'Chemotherapy', 'All above are included', 'D', 'Standard triple therapy is CNI + antimetabolite + steroid. Chemotherapy is not part of maintenance immunosuppression.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 11, 'Post-transplant lymphoproliferative disorder (PTLD) is associated with:', 'CMV infection', 'EBV infection', 'HIV infection', 'HCV infection', 'Bacterial infection', 'B', 'PTLD is associated with EBV infection and level of immunosuppression.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 12, 'Most common skin cancer in transplant recipients is:', 'Melanoma', 'Basal cell carcinoma', 'Squamous cell carcinoma', 'Merkel cell carcinoma', 'Kaposi sarcoma', 'C', 'Squamous cell carcinoma is the most common skin cancer in transplant recipients (unlike general population where BCC is more common).'),
('d2000060-0000-0000-0000-000000000060'::uuid, 13, 'Transplanted kidney is placed in:', 'Native kidney bed', 'Iliac fossa (heterotopic)', 'Retroperitoneum', 'Mediastinum', 'Pelvis', 'B', 'Transplanted kidney is placed heterotopically in the iliac fossa with anastomosis to iliac vessels.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 14, 'Liver transplant is:', 'Heterotopic', 'Orthotopic (native liver removed)', 'Auxiliary', 'Partial only', 'Never whole organ', 'B', 'Liver transplant is orthotopic - the native liver is removed and replaced in the same location.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 15, 'CMV prophylaxis post-transplant is with:', 'Acyclovir', 'Valganciclovir', 'TMP-SMX', 'Fluconazole', 'Nystatin', 'B', 'Valganciclovir is used for CMV prophylaxis in transplant recipients.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 16, 'PCP (Pneumocystis) prophylaxis post-transplant is with:', 'Valganciclovir', 'Fluconazole', 'TMP-SMX', 'Acyclovir', 'Isoniazid', 'C', 'TMP-SMX (trimethoprim-sulfamethoxazole) is used for PCP prophylaxis.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 17, 'HLA Class I antigens are expressed on:', 'Only B-cells', 'Only antigen-presenting cells', 'All nucleated cells', 'Only T-cells', 'Red blood cells only', 'C', 'HLA Class I (A, B, C) antigens are expressed on all nucleated cells.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 18, 'Panel Reactive Antibody (PRA) measures:', 'HLA matching', 'ABO compatibility', 'Degree of antibody sensitization', 'Organ function', 'Drug levels', 'C', 'PRA measures the percentage of the population against which the recipient has preformed antibodies.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 19, 'Chronic rejection is characterized by:', 'Rapid onset', 'Immediate graft loss', 'Gradual fibrosis and arteriopathy', 'Easy reversal', 'Absence of antibodies', 'C', 'Chronic rejection develops over months to years with gradual fibrosis and arteriopathy, leading to graft loss.'),
('d2000060-0000-0000-0000-000000000060'::uuid, 20, 'MELD score is used for allocation of:', 'Kidney', 'Heart', 'Liver', 'Lung', 'Pancreas', 'C', 'MELD (Model for End-Stage Liver Disease) score is used for liver transplant allocation based on bilirubin, INR, and creatinine.');
