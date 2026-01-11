-- ============================================================================
-- SURGERY 3 CME ARTICLE 90: Geriatric Surgery Considerations
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000156-0000-0000-0000-000000000156', 'a0000003-0000-0000-0000-000000000003', 'Geriatric Surgery Considerations', 'Special considerations for surgery in elderly patients')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000390-0000-0000-0000-000000000090',
    'c0000156-0000-0000-0000-000000000156',
    'a0000003-0000-0000-0000-000000000003',
    'Geriatric Surgery: Optimizing Outcomes in Elderly Patients',
    'Perioperative Care in the Aging Population',
    'This article covers physiological changes of aging, frailty assessment, preoperative optimization, polypharmacy considerations, delirium prevention and management, postoperative complications in elderly, and shared decision-making in geriatric surgery.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000390-0001-0000-0000-000000000001', 'd0000390-0000-0000-0000-000000000090', 1,
'Frailty in surgical patients:',
'Has no impact on outcomes', 'Is associated with increased complications, longer hospital stay, and mortality; it is a state of decreased physiologic reserve and can be assessed using validated tools', 'Only affects patients over 90', 'Is defined solely by age',
'B', 'FRAILTY: syndrome of decreased physiologic RESERVE and increased VULNERABILITY to stressors. NOT synonymous with age or comorbidity. IMPACT: increased surgical complications, longer ICU/hospital stay, discharge to facility, mortality. ASSESSMENT TOOLS: Fried frailty phenotype (weight loss, weakness, exhaustion, slow gait, low activity), Clinical Frailty Scale (1-9), modified frailty index. COMPONENTS often assessed: grip strength, gait speed, nutrition, cognition, function. PREHABILITATION may improve outcomes in frail patients. Frailty status important for risk stratification and shared decision-making.', 'easy'),

('e0000390-0002-0000-0000-000000000002', 'd0000390-0000-0000-0000-000000000090', 2,
'Cardiovascular changes with aging include:',
'Increased heart rate variability', 'Decreased cardiac output, increased systemic vascular resistance, stiffened vessels, and reduced response to beta-adrenergic stimulation', 'Improved cardiac reserve', 'More flexible arteries',
'B', 'CARDIOVASCULAR AGING: (1) Decreased CARDIAC OUTPUT (reduced contractility, decreased maximal HR); (2) Increased SYSTEMIC VASCULAR RESISTANCE; (3) STIFFENED vessels (decreased compliance, systolic hypertension, widened pulse pressure); (4) Reduced BETA-ADRENERGIC responsiveness (limited HR increase to stress); (5) Diastolic dysfunction; (6) Decreased cardiac reserve. IMPLICATIONS: less tolerance for hypovolemia or fluid overload, slower HR response to hemorrhage, more dependent on preload, increased afterload sensitivity. Careful fluid management essential. Beta-blocker continuation perioperatively important.', 'medium'),

('e0000390-0003-0000-0000-000000000003', 'd0000390-0000-0000-0000-000000000090', 3,
'Postoperative delirium in elderly patients:',
'Is harmless and self-limiting', 'Is associated with increased mortality, longer stay, and functional decline; prevention strategies include orientation, sleep hygiene, early mobilization, and avoiding deliriogenic medications', 'Only occurs after cardiac surgery', 'Cannot be prevented',
'B', 'POSTOPERATIVE DELIRIUM: acute confusional state, common in elderly (15-50% post-surgery). CONSEQUENCES: increased mortality, prolonged hospitalization, functional decline, institutionalization, dementia risk. RISK FACTORS: age, baseline cognitive impairment, sensory deficits, polypharmacy, pain, infection, surgery type. PREVENTION (HELP program): REORIENTATION (clocks, calendars, familiar items), early MOBILIZATION, sleep HYGIENE, avoid DELIRIOGENIC medications (anticholinergics, benzodiazepines, meperidine), correct sensory deficits (glasses, hearing aids), maintain hydration/nutrition. TREATMENT: identify/treat underlying cause, antipsychotics if needed.', 'easy'),

('e0000390-0004-0000-0000-000000000004', 'd0000390-0000-0000-0000-000000000090', 4,
'Polypharmacy in geriatric surgical patients:',
'Is always beneficial', 'Increases risk of drug interactions, adverse events, and should prompt medication reconciliation and review using tools like Beers Criteria', 'Has no impact on surgery', 'Should not be addressed',
'B', 'POLYPHARMACY (often >5 medications): common in elderly. RISKS: drug-drug interactions, adverse drug events, falls, confusion, poor adherence, increased costs. PERIOPERATIVE concerns: anticoagulant/antiplatelet management, drug interactions with anesthetics, cardiovascular medications. APPROACH: thorough MEDICATION RECONCILIATION, review using BEERS CRITERIA (potentially inappropriate medications in elderly), STOPP/START criteria. Consider: which medications can be held? Essential medications to continue? Dose adjustments for renal/hepatic function? Deprescribing when appropriate. Pharmacist involvement valuable.', 'easy'),

('e0000390-0005-0000-0000-000000000005', 'd0000390-0000-0000-0000-000000000090', 5,
'Renal function changes with aging include:',
'Improved creatinine clearance', 'Decreased GFR despite normal serum creatinine (due to reduced muscle mass), requiring dose adjustment of renally excreted medications', 'No change in kidney function', 'Increased drug clearance',
'B', 'RENAL AGING: (1) Decreased GLOMERULAR FILTRATION RATE (approximately 1mL/min/year after age 30); (2) Decreased renal blood flow; (3) Reduced concentrating ability; (4) Decreased ability to handle sodium/water loads. IMPORTANT: serum creatinine may be NORMAL despite reduced GFR (elderly have less muscle mass producing creatinine). Use estimated GFR (CKD-EPI equation includes age). IMPLICATIONS: dose adjustment for RENALLY EXCRETED drugs (antibiotics, anticoagulants, opioids), increased dehydration risk, contrast nephropathy risk. Avoid nephrotoxic agents when possible.', 'medium'),

('e0000390-0006-0000-0000-000000000006', 'd0000390-0000-0000-0000-000000000090', 6,
'Nutritional assessment in elderly surgical patients should include:',
'Weight only', 'Albumin levels, weight loss history, BMI, and functional measures; malnutrition is associated with poor wound healing, infections, and increased mortality', 'No assessment needed', 'Calorie counting alone',
'B', 'NUTRITIONAL ASSESSMENT in elderly: MARKERS: albumin (<3.5 g/dL concerning), prealbumin (more acute changes), weight loss (>10% in 6 months or >5% in 1 month), BMI (<18.5 underweight, but muscle loss may occur with normal BMI). SCREENING tools: MNA (Mini Nutritional Assessment), MUST, NRS-2002. CONSEQUENCES of malnutrition: poor WOUND HEALING, INFECTIONS, pressure ulcers, prolonged ventilation, increased mortality. MANAGEMENT: preoperative nutritional optimization if time allows (prehabilitation), early postoperative feeding, oral supplements, consider enteral nutrition if inadequate oral intake.', 'easy'),

('e0000390-0007-0000-0000-000000000007', 'd0000390-0000-0000-0000-000000000090', 7,
'Pulmonary changes with aging affect surgical care because:',
'Lung function improves with age', 'Decreased FEV1, vital capacity, and chest wall compliance increase risk of atelectasis and pneumonia; incentive spirometry and early mobilization are important', 'Elderly never get pneumonia', 'No respiratory changes occur',
'B', 'PULMONARY AGING: (1) Decreased FEV1 and VITAL CAPACITY; (2) Decreased chest wall COMPLIANCE (stiffening); (3) Increased closing volume (airway collapse); (4) Decreased cough reflex; (5) Decreased mucociliary clearance; (6) Reduced respiratory muscle strength. IMPLICATIONS: increased risk of ATELECTASIS and PNEUMONIA. PREVENTION: incentive SPIROMETRY, early MOBILIZATION, adequate pain control (allows deep breathing), head of bed elevation, DVT prophylaxis (PE risk), avoid over-sedation (respiratory depression). Consider pulmonary optimization preoperatively for high-risk patients.', 'medium'),

('e0000390-0008-0000-0000-000000000008', 'd0000390-0000-0000-0000-000000000090', 8,
'Goals of care discussions in geriatric surgery:',
'Are unnecessary', 'Should address patient preferences, life expectancy, expected outcomes, quality of life implications, and may include palliative options as part of shared decision-making', 'Are only for terminal patients', 'Should be avoided',
'B', 'GOALS OF CARE/SHARED DECISION-MAKING: essential in geriatric surgery. COMPONENTS: (1) Understand patient VALUES and PREFERENCES; (2) Discuss realistic OUTCOMES (success rates, complications, recovery); (3) Consider LIFE EXPECTANCY and comorbidities; (4) Discuss QUALITY OF LIFE implications; (5) Include PALLIATIVE/non-operative options when appropriate; (6) Involve FAMILY/caregivers (with patient consent). Document advance directives. Not about withholding treatment but matching treatment to patient goals. Avoid paternalism and ageism. High-risk surgery in elderly requires honest discussion of risk-benefit.', 'easy'),

('e0000390-0009-0000-0000-000000000009', 'd0000390-0000-0000-0000-000000000090', 9,
'Pain management in elderly surgical patients should consider:',
'Standard adult doses of all medications', 'Reduced opioid doses due to altered pharmacokinetics, multimodal analgesia, avoidance of certain NSAIDs and meperidine, and regular assessment', 'No pain medication needed', 'Maximum doses for faster relief',
'B', 'PAIN MANAGEMENT IN ELDERLY: PHARMACOKINETIC changes: decreased renal/hepatic clearance, increased volume of distribution for lipophilic drugs, decreased protein binding. OPIOIDS: start low, go slow (25-50% dose reduction), avoid long-acting formulations initially, avoid MEPERIDINE (neurotoxic metabolite). NSAIDs: caution with renal function, GI bleeding, cardiovascular risk. MULTIMODAL ANALGESIA: regional techniques, acetaminophen, gabapentinoids reduce opioid requirements. Regular ASSESSMENT (elderly may underreport pain). Untreated pain increases delirium, delays mobilization. Balance adequate analgesia with avoiding oversedation.', 'medium'),

('e0000390-0010-0000-0000-000000000010', 'd0000390-0000-0000-0000-000000000090', 10,
'Prehabilitation for elderly surgical patients involves:',
'No intervention before surgery', 'Preoperative optimization through exercise, nutrition, and psychological preparation to improve functional capacity and surgical outcomes', 'Surgery without delay regardless of status', 'Only medication changes',
'B', 'PREHABILITATION: structured preoperative optimization program. COMPONENTS: (1) EXERCISE - aerobic and strength training to improve functional capacity, inspiratory muscle training; (2) NUTRITION - protein supplementation, correct deficiencies, immunonutrition; (3) PSYCHOLOGICAL - anxiety reduction, expectation management, coping strategies; (4) Medical optimization - anemia correction, glycemic control, smoking cessation. DURATION: typically 2-4 weeks before elective surgery. EVIDENCE: improved functional capacity, reduced complications, shorter hospital stay, faster recovery. Most benefit in frail patients undergoing major surgery. Requires multidisciplinary team.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 90 (Geriatric Surgery Considerations) with 10 self-assessment questions inserted' as status;
