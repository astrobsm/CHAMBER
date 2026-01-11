-- ============================================================================
-- SURGERY 3 CME ARTICLE 26: Transplantation Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000092-0000-0000-0000-000000000092', 'a0000003-0000-0000-0000-000000000003', 'Transplantation Surgery', 'Organ transplantation principles and management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000326-0000-0000-0000-000000000026',
    'c0000092-0000-0000-0000-000000000092',
    'a0000003-0000-0000-0000-000000000003',
    'Transplantation Surgery: Principles and Management',
    'Organ Donation, Rejection and Immunosuppression',
    'This article covers organ transplantation fundamentals including donor selection, organ preservation, immunology of rejection, immunosuppressive therapy, post-transplant care, complications, and special considerations for kidney, liver, and heart transplantation.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000326-0001-0000-0000-000000000001', 'd0000326-0000-0000-0000-000000000026', 1,
'Hyperacute rejection occurs:',
'Months to years after transplantation', 'Within minutes to hours due to preformed antibodies against donor antigens', '1-2 weeks after transplantation', 'Only in liver transplants', NULL,
'B', 'Hyperacute rejection: occurs within minutes to hours, caused by preformed recipient antibodies against donor HLA antigens or ABO blood group antigens. Mechanism: antibody-mediated complement activation causing endothelial damage, thrombosis, graft infarction. Prevention: ABO compatibility, negative crossmatch before transplant. Treatment: usually requires graft removal (irreversible). Virtually eliminated by modern crossmatching but remains concern in sensitized patients.', 'medium'),

('e0000326-0002-0000-0000-000000000002', 'd0000326-0000-0000-0000-000000000026', 2,
'The most common type of rejection in solid organ transplants is:',
'Hyperacute rejection', 'Acute cellular rejection, typically occurring days to months post-transplant', 'Chronic rejection', 'Graft-versus-host disease', NULL,
'B', 'Acute rejection (most common): occurs days to months post-transplant. Two types: (1) Acute cellular rejection - T-cell mediated, lymphocytic infiltration of graft; (2) Acute antibody-mediated (humoral) rejection - de novo donor-specific antibodies. Symptoms: fever, graft tenderness (kidney), elevated creatinine, liver enzymes. Diagnosis: biopsy (gold standard). Treatment: high-dose corticosteroids for cellular; plasmapheresis, IVIG, rituximab for antibody-mediated.', 'easy'),

('e0000326-0003-0000-0000-000000000003', 'd0000326-0000-0000-0000-000000000026', 3,
'Brain death criteria include:',
'Absence of brainstem reflexes only', 'Coma, absent brainstem reflexes (pupillary, corneal, oculovestibular, gag), no respiratory effort on apnea test', 'Deep sedation', 'Persistent vegetative state', NULL,
'B', 'Brain death criteria: (1) Coma with known irreversible cause; (2) Absence of all brainstem reflexes: pupils fixed/dilated, no corneal reflex, no oculocephalic reflex (doll eyes), no oculovestibular reflex (cold calorics), no gag/cough reflex; (3) No spontaneous respiration - positive apnea test (no effort despite PaCO2 >60 mmHg); (4) Exclusion of confounders (hypothermia, drugs, metabolic). Confirmatory tests (EEG, cerebral angiography) if clinical exam unreliable.', 'medium'),

('e0000326-0004-0000-0000-000000000004', 'd0000326-0000-0000-0000-000000000026', 4,
'Calcineurin inhibitors (cyclosporine, tacrolimus) primary mechanism of action is:',
'Inhibiting purine synthesis', 'Blocking T-cell activation by inhibiting calcineurin-mediated IL-2 transcription', 'Depleting B cells', 'Blocking costimulatory signals', NULL,
'B', 'Calcineurin inhibitors (CNIs): cyclosporine and tacrolimus (FK506). Mechanism: bind to cyclophilins/FKBP, the complex inhibits calcineurin, prevents dephosphorylation of NFAT, blocks IL-2 gene transcription, prevents T-cell activation and proliferation. Cornerstone of transplant immunosuppression. Side effects: nephrotoxicity (tubular toxicity, chronic vascular changes), hypertension, neurotoxicity (tremor), hyperglycemia (tacrolimus), gingival hyperplasia/hirsutism (cyclosporine).', 'medium'),

('e0000326-0005-0000-0000-000000000005', 'd0000326-0000-0000-0000-000000000026', 5,
'The maximum cold ischemia time for kidney transplantation is approximately:',
'2-4 hours', '24-36 hours', '72 hours', '1 week', NULL,
'B', 'Cold ischemia times (maximum acceptable): Kidney 24-36 hours (longest), Liver 12-18 hours, Pancreas 12-24 hours, Heart 4-6 hours, Lung 6-8 hours. Kidney tolerance allows more time for matching and logistics. Prolonged cold ischemia increases delayed graft function (DGF). Preservation solutions (University of Wisconsin, HTK, Celsior) provide hypothermic protection. Warm ischemia (normothermic) far more damaging - minutes for heart, <30 min for kidney.', 'easy'),

('e0000326-0006-0000-0000-000000000006', 'd0000326-0000-0000-0000-000000000026', 6,
'Chronic allograft nephropathy is characterized by:',
'Reversible acute rejection', 'Progressive deterioration of graft function with interstitial fibrosis and tubular atrophy (IF/TA)', 'Hyperacute response', 'Complete recovery with steroids', NULL,
'B', 'Chronic allograft injury (formerly chronic rejection): progressive, irreversible deterioration of graft function over months to years. Pathology: interstitial fibrosis and tubular atrophy (IF/TA), vascular intimal thickening. Causes: immunologic (chronic rejection) and non-immunologic (CNI toxicity, recurrent disease, hypertension, BK virus). Prevention: adequate immunosuppression, BP control, minimize CNI exposure. No effective treatment once established; leads to graft loss.', 'medium'),

('e0000326-0007-0000-0000-000000000007', 'd0000326-0000-0000-0000-000000000026', 7,
'Post-transplant lymphoproliferative disorder (PTLD) is most commonly associated with:',
'Cytomegalovirus', 'Epstein-Barr virus (EBV) infection', 'BK polyomavirus', 'Herpes simplex virus', NULL,
'B', 'PTLD: lymphoid or plasmacytic proliferation in transplant recipients, ranging from benign to malignant lymphoma. Strongly associated with EBV (70-90% cases) - EBV-driven B-cell proliferation in setting of T-cell suppression. Risk factors: EBV-naive recipients, intense immunosuppression, pediatric patients. Treatment: reduce immunosuppression (first step), rituximab (anti-CD20), chemotherapy for aggressive disease. Mortality significant; early detection crucial.', 'medium'),

('e0000326-0008-0000-0000-000000000008', 'd0000326-0000-0000-0000-000000000026', 8,
'Living donor kidney transplantation compared to deceased donor:',
'Has worse outcomes', 'Offers superior graft and patient survival, shorter wait time, and planned surgery', 'Is no longer performed', 'Has identical outcomes', NULL,
'B', 'Living donor kidney transplant advantages: superior graft survival (>90% at 5 years vs ~85% deceased), shorter/no waiting time, planned surgery (optimized recipient status), shorter cold ischemia, avoidance of brain death-related organ injury. Living donor evaluation: extensive medical/psychological screening, assessment of surgical risk. Donor risks: perioperative mortality (~0.03%), long-term risk of ESRD (small increase), nephrectomy complications. Donor outcomes generally excellent.', 'easy'),

('e0000326-0009-0000-0000-000000000009', 'd0000326-0000-0000-0000-000000000026', 9,
'The MELD score for liver allocation is based on:',
'Age, albumin, and ascites', 'Bilirubin, INR, and creatinine', 'Encephalopathy grade and ascites', 'Child-Pugh classification only', NULL,
'B', 'MELD (Model for End-stage Liver Disease): objective score for liver transplant allocation. Components: serum bilirubin, INR, creatinine (3-month mortality prediction). Range: 6-40+. Higher MELD = sicker patient = higher priority. Advantages over Child-Pugh: objective (no ascites/encephalopathy subjectivity), validated mortality predictor. MELD-Na adds sodium (hyponatremia indicates worse prognosis). Exception points given for conditions not reflected in MELD (HCC, hepatopulmonary syndrome).', 'medium'),

('e0000326-0010-0000-0000-000000000010', 'd0000326-0000-0000-0000-000000000026', 10,
'Opportunistic infections following transplantation follow a predictable timeline. CMV infection most commonly occurs:',
'Within the first week', '1-6 months post-transplant', 'After 1 year', 'Before transplantation', NULL,
'B', 'Post-transplant infection timeline: (1) First month - nosocomial/surgical site infections, donor-derived; (2) 1-6 months - opportunistic infections (CMV peak, PCP, fungal) due to maximal immunosuppression; (3) >6 months - community-acquired, late viral (BK, EBV/PTLD). CMV prophylaxis (valganciclovir) typically for 3-6 months in high-risk patients. CMV disease: fever, leukopenia, hepatitis, colitis, pneumonitis. Treatment: IV ganciclovir or oral valganciclovir.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 26 (Transplantation Surgery) with 10 self-assessment questions inserted' as status;
