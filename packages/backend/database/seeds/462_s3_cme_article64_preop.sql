-- ============================================================================
-- SURGERY 3 CME ARTICLE 64: Preoperative Assessment and Optimization
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000130-0000-0000-0000-000000000130', 'a0000003-0000-0000-0000-000000000003', 'Preoperative Assessment and Optimization', 'Preoperative evaluation and preparation')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000364-0000-0000-0000-000000000064',
    'c0000130-0000-0000-0000-000000000130',
    'a0000003-0000-0000-0000-000000000003',
    'Preoperative Assessment: Risk Stratification and Optimization',
    'Preparing Patients for Safe Surgery',
    'This article covers preoperative assessment including cardiac risk evaluation (RCRI), pulmonary risk, ASA classification, medication management, optimization strategies for diabetes, anemia, nutrition, and smoking cessation.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000364-0001-0000-0000-000000000001', 'd0000364-0000-0000-0000-000000000064', 1,
'ASA Physical Status Classification III indicates:',
'A normal healthy patient', 'A patient with severe systemic disease that is not life-threatening', 'A moribund patient not expected to survive 24 hours', 'A patient with mild systemic disease', NULL,
'B', 'ASA Physical Status Classification: I = Normal healthy patient; II = Mild systemic disease (smoker, social alcohol, pregnancy, obesity BMI 30-40, controlled DM/HTN); III = Severe systemic disease (poorly controlled DM/HTN, COPD, morbid obesity, moderate renal dysfunction, stable angina, pacemaker); IV = Severe systemic disease that is a constant threat to life (recent MI, CVA, ongoing cardiac ischemia, severe valve disease, severe renal failure); V = Moribund, not expected to survive without surgery; VI = Brain-dead organ donor. Add "E" for emergency.', 'easy'),

('e0000364-0002-0000-0000-000000000002', 'd0000364-0000-0000-0000-000000000064', 2,
'Revised Cardiac Risk Index (RCRI) components include all EXCEPT:',
'History of ischemic heart disease', 'High-risk surgery', 'Age greater than 50 years', 'Diabetes mellitus requiring insulin', NULL,
'C', 'Revised Cardiac Risk Index (RCRI/Lee Index): 6 independent predictors of perioperative cardiac risk. (1) High-risk surgery (intrathoracic, intra-abdominal, suprainguinal vascular); (2) History of ischemic heart disease; (3) History of heart failure; (4) History of cerebrovascular disease (stroke, TIA); (5) Diabetes mellitus requiring insulin; (6) Preoperative creatinine >2 mg/dL. Score 0 = 0.4% major cardiac events; 1 = 1%; 2 = 2.4%; 3+ = 5.4%. Age alone is not an RCRI component (though age-related comorbidities are captured). Guides need for further cardiac workup.', 'easy'),

('e0000364-0003-0000-0000-000000000003', 'd0000364-0000-0000-0000-000000000064', 3,
'Beta-blockers in the perioperative period:',
'Should be started on day of surgery in all patients', 'Should be continued in patients already on them, but not routinely started just before surgery', 'Should be stopped 1 week before surgery', 'Have no cardiac benefits', NULL,
'B', 'Perioperative beta-blocker management: CONTINUE in patients already taking beta-blockers (abrupt withdrawal associated with rebound tachycardia, cardiac events). DO NOT START de novo just before surgery (POISE trial showed increased mortality from hypotension, stroke when started acutely). If indicated for new initiation: start well in advance (ideally 1 week+), titrate to heart rate control, continue perioperatively. Guidelines: continue chronic beta-blockers; avoid starting within 24 hours of surgery; individualize based on cardiac risk.', 'medium'),

('e0000364-0004-0000-0000-000000000004', 'd0000364-0000-0000-0000-000000000064', 4,
'Preoperative smoking cessation ideally should occur:',
'Only on day of surgery', 'At least 4-8 weeks before elective surgery for maximum benefit', 'Is not beneficial', '24 hours before surgery', NULL,
'B', 'Preoperative smoking cessation: Benefits at any time, but OPTIMAL timing is 4-8 weeks before surgery. Benefits: reduced pulmonary complications (most significant >4 weeks), improved wound healing, reduced SSI, cardiovascular benefits. Brief abstinence (<4 weeks): less benefit for pulmonary complications but still worth pursuing. Interventions: counseling, nicotine replacement therapy (can be used perioperatively), varenicline, bupropion. Smoking within 24 hours of surgery associated with increased pulmonary complications. Continue cessation efforts postoperatively.', 'easy'),

('e0000364-0005-0000-0000-000000000005', 'd0000364-0000-0000-0000-000000000064', 5,
'Antiplatelet therapy (aspirin, clopidogrel) before surgery:',
'Must always be stopped 2 weeks before', 'Depends on indication and surgery type; cardiac stents require careful timing considerations with cardiology consultation', 'Can always be continued', 'Has no effect on bleeding', NULL,
'B', 'Antiplatelet management: individualized decision balancing bleeding vs thrombotic risk. ASPIRIN for primary prevention: usually hold 7 days. ASPIRIN for secondary prevention (CAD, stents): often continue for low-bleeding-risk surgery. CLOPIDOGREL: hold 5-7 days before major surgery. CARDIAC STENTS: critical timing - bare metal stent (minimum 4-6 weeks dual antiplatelet), drug-eluting stent (minimum 6-12 months). Premature discontinuation = stent thrombosis (high mortality). Consult cardiology for stented patients. Neuraxial anesthesia has specific guidelines.', 'medium'),

('e0000364-0006-0000-0000-000000000006', 'd0000364-0000-0000-0000-000000000064', 6,
'Preoperative anemia optimization:',
'Is not important for surgical outcomes', 'Should be investigated and treated before elective surgery as anemia increases transfusion risk and postoperative complications', 'Only matters if hemoglobin is less than 5', 'Requires only blood transfusion', NULL,
'B', 'Preoperative anemia: independent risk factor for morbidity, mortality, and transfusion. Prevalence 25-40% in surgical patients. Approach: (1) Identify anemia early (hemoglobin <12 in women, <13 in men); (2) Investigate cause (iron deficiency most common - check ferritin, iron studies); (3) Treat: iron (oral or IV for severe/malabsorption), B12/folate if deficient, EPO rarely; (4) Delay elective surgery if possible until optimized. IV iron works faster than oral. Patient Blood Management programs reduce transfusion and improve outcomes. Goal: avoid/minimize transfusion.', 'easy'),

('e0000364-0007-0000-0000-000000000007', 'd0000364-0000-0000-0000-000000000064', 7,
'Preoperative fasting guidelines recommend:',
'NPO from midnight regardless of surgery time', 'Clear liquids up to 2 hours before anesthesia, light meal up to 6 hours before', 'Eating normally until induction', 'Fasting for 24 hours', NULL,
'B', 'Modern fasting guidelines (ASA, ERAS): CLEAR LIQUIDS: up to 2 hours before anesthesia (water, juice without pulp, tea, coffee without milk, carbohydrate drinks). LIGHT MEAL (toast, crackers): 6 hours before. FULL MEAL/fatty foods: 8 hours before. Rationale: reduces aspiration risk while avoiding dehydration, hypoglycemia. Carbohydrate loading (maltodextrin drinks) 2-3 hours before surgery: reduces insulin resistance, improves postoperative recovery (ERAS component). "NPO after midnight" is outdated and often unnecessary.', 'easy'),

('e0000364-0008-0000-0000-000000000008', 'd0000364-0000-0000-0000-000000000064', 8,
'Functional capacity assessment using METs (metabolic equivalents):',
'Is irrelevant to surgical risk', 'Helps estimate perioperative cardiac risk; greater than 4 METs (climbing a flight of stairs) indicates adequate functional capacity', 'Is only measured by formal stress testing', 'METs above 10 are needed for low risk', NULL,
'B', 'Functional capacity (METs): 1 MET = resting oxygen consumption. Assessment: Can patient climb 1 flight of stairs, walk up a hill, do heavy housework? = 4+ METs. Surgical risk: patients with <4 METs have higher perioperative cardiac risk. >4 METs: generally proceed with surgery if no active cardiac conditions. <4 METs or unknown: consider further cardiac evaluation based on RCRI and surgery risk. Formal exercise testing not required - clinical assessment sufficient. Important component of preoperative cardiac risk stratification algorithm.', 'easy'),

('e0000364-0009-0000-0000-000000000009', 'd0000364-0000-0000-0000-000000000064', 9,
'Diabetic patients having surgery should:',
'Stop all diabetes medications 1 week before', 'Have optimized glycemic control preoperatively (HbA1c ideally less than 8%), with clear instructions on medication adjustment and glucose monitoring perioperatively', 'Eat normally on day of surgery', 'Take full dose of insulin on morning of surgery', NULL,
'B', 'Perioperative diabetes management: PREOPERATIVE: optimize control (HbA1c <8% ideally, though surgery should not be delayed for very high HbA1c in urgent cases). MEDICATION ADJUSTMENTS: hold metformin (risk of lactic acidosis, restart after confirming renal function), hold SGLT2 inhibitors (DKA risk), reduce long-acting insulin (typically 50-80% of usual dose), hold oral agents morning of surgery. PERIOPERATIVE: monitor glucose, target <180-200 mg/dL, insulin sliding scale or infusion. Resume normal regimen when eating. Specific protocols vary by institution.', 'medium'),

('e0000364-0010-0000-0000-000000000010', 'd0000364-0000-0000-0000-000000000064', 10,
'Routine preoperative testing (labs, ECG, CXR) before low-risk surgery in healthy patients:',
'Is required for all patients', 'Is NOT recommended and should be guided by history, physical exam, and planned procedure', 'Must include all available tests', 'Improves outcomes in all cases', NULL,
'B', 'Preoperative testing: should be selective, not routine. CHOOSING WISELY recommendations: no routine preoperative tests for low-risk surgery in healthy patients. Testing guided by: (1) Patient history and physical exam (e.g., ECG if cardiac history, glucose if diabetic); (2) Procedure type and risk; (3) Potential to change management. Examples: CBC for major surgery with expected blood loss, creatinine if nephrotoxic drugs/contrast, PT/INR if liver disease or on warfarin, pregnancy test in women of childbearing age. Routine testing increases cost, delays, false positives without improving outcomes.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 64 (Preoperative Assessment and Optimization) with 10 self-assessment questions inserted' as status;
