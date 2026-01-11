-- ============================================================================
-- SURGERY 3 CME ARTICLE 82: Transplant Surgery Fundamentals
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000148-0000-0000-0000-000000000148', 'a0000003-0000-0000-0000-000000000003', 'Transplant Surgery Fundamentals', 'Organ transplantation and immunosuppression')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000382-0000-0000-0000-000000000082',
    'c0000148-0000-0000-0000-000000000148',
    'a0000003-0000-0000-0000-000000000003',
    'Transplant Surgery: Principles and Immunosuppression',
    'From Organ Allocation to Rejection Management',
    'This article covers indications for solid organ transplantation, brain death criteria, organ preservation, immunosuppressive agents (calcineurin inhibitors, antimetabolites, steroids), types of rejection, and post-transplant complications.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000382-0001-0000-0000-000000000001', 'd0000382-0000-0000-0000-000000000082', 1,
'Brain death diagnosis requires:',
'Only absence of brainstem reflexes', 'Irreversible coma, absence of brainstem reflexes, and apnea testing, with exclusion of confounders', 'CT scan showing no brain activity', 'EEG silence only',
'B', 'Brain death criteria: (1) IRREVERSIBLE COMA - known cause, excluded confounders (hypothermia, drugs, metabolic). (2) ABSENT BRAINSTEM REFLEXES - pupillary, corneal, oculocephalic, oculovestibular, gag, cough. (3) APNEA TEST - no respiratory effort despite pCO2 rise >60 mmHg or 20 above baseline. Often requires two examinations by qualified physicians, specified time interval. Confirmatory tests (EEG, cerebral blood flow) may be required in some jurisdictions or when clinical testing incomplete.', 'medium'),

('e0000382-0002-0000-0000-000000000002', 'd0000382-0000-0000-0000-000000000082', 2,
'Calcineurin inhibitors (tacrolimus, cyclosporine) work by:',
'Inhibiting B-cell function', 'Inhibiting T-cell activation by blocking IL-2 production', 'Depleting lymphocytes', 'Blocking IL-6',
'B', 'Calcineurin inhibitors (CNI): TACROLIMUS (FK506), CYCLOSPORINE. Mechanism: bind immunophilins (FKBP for tacrolimus, cyclophilin for cyclosporine), inhibit CALCINEURIN phosphatase, block NFAT activation, reduce IL-2 transcription, inhibit T-CELL activation. Backbone of most immunosuppression regimens. Tacrolimus more potent, now preferred. Toxicities: nephrotoxicity, neurotoxicity, hypertension, diabetes (tacrolimus more diabetogenic), hyperlipidemia. Require therapeutic drug monitoring.', 'medium'),

('e0000382-0003-0000-0000-000000000003', 'd0000382-0000-0000-0000-000000000082', 3,
'Hyperacute rejection occurs:',
'Months to years after transplant', 'Within minutes to hours due to preformed antibodies against donor HLA or ABO antigens', 'Only in kidney transplants', 'Only with living donors',
'B', 'Hyperacute rejection: occurs MINUTES TO HOURS after reperfusion. Cause: PREFORMED ANTIBODIES against donor HLA or ABO antigens. Mechanism: antibody binds endothelium, complement activation, thrombosis, graft loss. Prevention: ABO matching, crossmatch testing (detects preformed HLA antibodies). Now rare due to routine pretransplant testing. Treatment: generally irreversible, requires graft removal. Contrast with acute rejection (days-months, T-cell mediated or antibody-mediated) and chronic rejection (months-years).', 'medium'),

('e0000382-0004-0000-0000-000000000004', 'd0000382-0000-0000-0000-000000000082', 4,
'Acute cellular rejection is primarily mediated by:',
'B cells', 'T lymphocytes recognizing donor MHC antigens', 'Neutrophils', 'Natural killer cells only',
'B', 'Acute cellular rejection (ACR): mediated by T LYMPHOCYTES. Mechanism: recipient T cells recognize donor MHC (HLA) antigens on graft cells, activate, proliferate, infiltrate graft, cause cell-mediated destruction. Timing: days to months post-transplant, most common in first year. Diagnosis: biopsy (lymphocytic infiltration, tubulitis in kidney, myocyte necrosis in heart). Treatment: high-dose steroids (pulse methylprednisolone), antithymocyte globulin (ATG) if steroid-resistant. Usually reversible if treated promptly.', 'medium'),

('e0000382-0005-0000-0000-000000000005', 'd0000382-0000-0000-0000-000000000082', 5,
'Post-transplant lymphoproliferative disorder (PTLD) is associated with:',
'Calcineurin inhibitor toxicity', 'Epstein-Barr virus (EBV) infection in the setting of immunosuppression', 'Aspirin use', 'Organ preservation solutions',
'B', 'PTLD: lymphoid proliferation ranging from polyclonal to aggressive lymphoma. Strongly associated with EBV infection + immunosuppression. Risk factors: EBV-seronegative recipient (especially children), intensity of immunosuppression (higher with ATG, OKT3), early post-transplant period. Presentation: lymphadenopathy, mass lesions, fever, graft dysfunction. Treatment: reduce immunosuppression, rituximab (anti-CD20), chemotherapy for aggressive cases. Monitor EBV viral load in high-risk patients.', 'medium'),

('e0000382-0006-0000-0000-000000000006', 'd0000382-0000-0000-0000-000000000082', 6,
'Cold ischemia time refers to:',
'Time under anesthesia', 'Time from organ cooling at procurement to removal from cold storage for implantation', 'Time in the operating room', 'Time on cardiopulmonary bypass',
'B', 'Cold ischemia time (CIT): time from start of COLD PERFUSION/preservation of organ at procurement to removal from cold storage for implantation (reperfusion). Critical for graft function. Acceptable CIT varies by organ: KIDNEY - up to 24-36 hours (DCD shorter); LIVER - ideally <12 hours; HEART - <4-6 hours; LUNG - <6-8 hours. Longer CIT = higher risk of delayed graft function, primary non-function. Warm ischemia time (reperfusion to completion of anastomoses) also important.', 'medium'),

('e0000382-0007-0000-0000-000000000007', 'd0000382-0000-0000-0000-000000000082', 7,
'Living donor kidney transplant compared to deceased donor:',
'Has worse outcomes', 'Has better graft survival, shorter waiting time, and allows planned surgery', 'Is rarely performed', 'Requires more immunosuppression',
'B', 'Living donor kidney transplant advantages: BETTER GRAFT SURVIVAL (1-year >95%, 5-year ~85%), shorter or no waiting time, planned surgery (not emergency), shorter cold ischemia time, better graft function. Donor evaluation: extensive medical/psychological assessment, imaging of kidney anatomy. Donor risks: operative mortality ~0.03%, long-term risk comparable to general population with proper selection. Ethical considerations: donor autonomy, no coercion, altruistic donation acceptable.', 'easy'),

('e0000382-0008-0000-0000-000000000008', 'd0000382-0000-0000-0000-000000000082', 8,
'Mycophenolate mofetil (MMF) mechanism of action:',
'Calcineurin inhibition', 'Inhibition of inosine monophosphate dehydrogenase (IMPDH), blocking de novo purine synthesis in lymphocytes', 'mTOR inhibition', 'Steroid receptor binding',
'B', 'Mycophenolate mofetil (MMF, CellCept): prodrug converted to mycophenolic acid. Mechanism: inhibits INOSINE MONOPHOSPHATE DEHYDROGENASE (IMPDH), required for de novo purine synthesis. Lymphocytes depend on de novo pathway (unlike other cells that have salvage pathway), so selectively antiproliferative for lymphocytes. Used with CNI + steroids in most regimens. Side effects: GI (diarrhea, nausea), bone marrow suppression (leukopenia), teratogenic. Mycophenolate sodium (Myfortic) - enteric-coated.', 'medium'),

('e0000382-0009-0000-0000-000000000009', 'd0000382-0000-0000-0000-000000000082', 9,
'Chronic allograft nephropathy (chronic rejection) is characterized by:',
'Rapid decline in function', 'Gradual progressive loss of function over months to years with interstitial fibrosis and tubular atrophy', 'Complete reversibility with steroids', 'Only antibody-mediated process',
'B', 'Chronic allograft nephropathy/rejection: leading cause of late graft loss. Pathology: INTERSTITIAL FIBROSIS, TUBULAR ATROPHY (IFTA), chronic transplant glomerulopathy, vascular changes. GRADUAL progressive decline in function. Causes: immunologic (chronic antibody-mediated injury, inadequate immunosuppression) and non-immunologic (CNI toxicity, hypertension, recurrent disease). Largely IRREVERSIBLE. Prevention: adequate immunosuppression, control of risk factors. Limited treatment options once established.', 'medium'),

('e0000382-0010-0000-0000-000000000010', 'd0000382-0000-0000-0000-000000000082', 10,
'The most common opportunistic infection in the first month post-transplant is:',
'CMV', 'Nosocomial bacterial infections related to surgical procedure and hospitalization', 'Pneumocystis jirovecii', 'Aspergillus',
'B', 'Post-transplant infections timeline: FIRST MONTH - NOSOCOMIAL BACTERIAL infections (wound, line, UTI, pneumonia), similar to any postoperative patient; donor-derived infections. 1-6 MONTHS - opportunistic infections (CMV, EBV, PCP, Aspergillus, BK virus) as net immunosuppression peaks. >6 MONTHS - community-acquired infections, late CMV, chronic viral infections. Prophylaxis: PCP (TMP-SMX), CMV (valganciclovir in high-risk), fungal in liver transplant. Adjust prophylaxis based on risk factors.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 82 (Transplant Surgery) with 10 self-assessment questions inserted' as status;
