-- ============================================================================
-- SURGERY 3 CME ARTICLE 91: Surgical Audit and Quality Improvement
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000157-0000-0000-0000-000000000157', 'a0000003-0000-0000-0000-000000000003', 'Surgical Audit and Quality Improvement', 'Principles of surgical quality assurance and improvement')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000391-0000-0000-0000-000000000091',
    'c0000157-0000-0000-0000-000000000157',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Audit and Quality Improvement: Evidence-Based Practice',
    'Measuring and Improving Surgical Outcomes',
    'This article covers the audit cycle, morbidity and mortality conferences, surgical site infection surveillance, quality indicators, root cause analysis, patient safety culture, and implementation of quality improvement initiatives.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000391-0001-0000-0000-000000000001', 'd0000391-0000-0000-0000-000000000091', 1,
'The clinical audit cycle includes:',
'A one-time data collection', 'Selecting a topic, setting standards, collecting data, analyzing results, implementing change, and re-auditing to complete the cycle', 'Only comparing with other hospitals', 'No need for standards',
'B', 'CLINICAL AUDIT CYCLE: structured process to improve care. STEPS: (1) SELECT TOPIC (important, measurable, changeable); (2) Set STANDARDS/CRITERIA (evidence-based benchmarks); (3) COLLECT DATA (current practice measurement); (4) ANALYZE and compare to standards; (5) IMPLEMENT CHANGE (if gap identified); (6) RE-AUDIT (close the loop - determine if improvement achieved). KEY: audit is CYCLICAL not linear. Without re-audit, no proof of improvement. Audit differs from research: audit measures against known standards; research establishes new knowledge.', 'easy'),

('e0000391-0002-0000-0000-000000000002', 'd0000391-0000-0000-0000-000000000091', 2,
'Morbidity and Mortality (M&M) conferences:',
'Are designed to blame individuals', 'Are educational forums to review complications and deaths, identify system errors, and improve future care in a non-punitive environment', 'Should not discuss errors', 'Are optional activities',
'B', 'MORBIDITY AND MORTALITY CONFERENCE: regular departmental meeting reviewing complications and deaths. PURPOSE: EDUCATION, system improvement, quality assurance. PRINCIPLES: NON-PUNITIVE (focus on systems not blame), confidential (protected in many jurisdictions), educational, transparent. FORMAT: case presentation, discussion of what happened, identification of contributing factors, lessons learned, action items. Identify SYSTEM ERRORS vs individual errors. Should be part of hospital quality program. Supports culture of learning and continuous improvement. Legal protections vary by jurisdiction.', 'easy'),

('e0000391-0003-0000-0000-000000000003', 'd0000391-0000-0000-0000-000000000091', 3,
'Surgical site infections (SSI) are classified as:',
'Only superficial type exists', 'Superficial incisional (skin and subcutaneous), deep incisional (fascia and muscle), and organ/space (any manipulated anatomy deep to fascia)', 'Based on organism only', 'Not related to surgery',
'B', 'SURGICAL SITE INFECTION classification (CDC/NHSN): (1) SUPERFICIAL INCISIONAL - within 30 days, skin and subcutaneous tissue, purulent drainage or organisms cultured; (2) DEEP INCISIONAL - within 30-90 days depending on procedure, fascia and muscle, dehiscence or abscess; (3) ORGAN/SPACE - involves any manipulated anatomy (e.g., intra-abdominal abscess, empyema). Surveillance definitions standardized for comparison. RISK FACTORS: patient (diabetes, obesity, smoking, immunosuppression), operative (wound class, duration, technique), microbial. Prevention: bundles include antibiotics, glucose control, normothermia, clipping not shaving.', 'easy'),

('e0000391-0004-0000-0000-000000000004', 'd0000391-0000-0000-0000-000000000091', 4,
'Root cause analysis (RCA) is performed:',
'To assign blame', 'To identify underlying system factors contributing to an adverse event and develop preventive strategies', 'After every minor incident', 'Without involving frontline staff',
'B', 'ROOT CAUSE ANALYSIS: systematic process to identify UNDERLYING CAUSES of adverse events. FOCUS: SYSTEM factors, not individual blame. PROCESS: multidisciplinary team, timeline reconstruction, ask "why" repeatedly (5 Whys), identify contributing factors at multiple levels. FACTORS analyzed: human, equipment, environment, organization, policy. OUTPUT: action plan with corrective measures. Triggered by sentinel events (unexpected death, serious harm). Related: FMEA (Failure Mode and Effects Analysis) - proactive risk assessment before harm occurs. Both aim to improve system safety.', 'easy'),

('e0000391-0005-0000-0000-000000000005', 'd0000391-0000-0000-0000-000000000091', 5,
'Quality indicators in surgery include:',
'Only operative time', 'Process measures (antibiotics timing, VTE prophylaxis), outcome measures (mortality, SSI rates), structural measures (staffing ratios), and patient experience', 'Surgeon satisfaction only', 'No measurable parameters',
'B', 'QUALITY INDICATORS - types: (1) STRUCTURE - organizational characteristics (staffing, equipment, facilities); (2) PROCESS - what is done (antibiotic timing, DVT prophylaxis, appropriate surgery); (3) OUTCOME - results (mortality, complications, readmissions, patient-reported outcomes). EXAMPLES: 30-day mortality, SSI rate, unplanned reoperation, length of stay, readmission rate. Also: patient EXPERIENCE measures (satisfaction, communication). Risk-adjustment needed for fair comparison. Indicators should be: measurable, evidence-based, actionable. National programs: NSQIP (ACS), hospital quality reporting.', 'easy'),

('e0000391-0006-0000-0000-000000000006', 'd0000391-0000-0000-0000-000000000091', 6,
'The Swiss Cheese model of error describes:',
'Perfect systems with no holes', 'Multiple layers of defense with holes (weaknesses); accidents occur when holes align allowing hazards to reach patients', 'Only individual errors', 'Errors that cannot be prevented',
'B', 'SWISS CHEESE MODEL (James Reason): illustrates how system failures lead to adverse events. CONCEPT: multiple LAYERS OF DEFENSE (slices of cheese) exist; each has HOLES (weaknesses, failures). Single layer failure rarely causes harm. ACCIDENT occurs when HOLES ALIGN across multiple layers, allowing hazard to reach patient. Holes caused by: active failures (human errors), latent conditions (system weaknesses). PREVENTION: create more layers, reduce holes, prevent alignment. Emphasizes SYSTEM approach over blame. Supports: redundancy, checklists, standardization, safety culture.', 'easy'),

('e0000391-0007-0000-0000-000000000007', 'd0000391-0000-0000-0000-000000000091', 7,
'The WHO Surgical Safety Checklist:',
'Is optional for routine cases', 'Includes three phases (Sign In before anesthesia, Time Out before incision, Sign Out before leaving OR) and has been shown to reduce mortality and complications', 'Is only for complex surgeries', 'Does not require team participation',
'B', 'WHO SURGICAL SAFETY CHECKLIST: structured communication tool. THREE PHASES: (1) SIGN IN (before anesthesia) - patient identity, procedure, consent, site marked, anesthesia safety check, allergies, airway/aspiration risk, blood loss anticipation; (2) TIME OUT (before incision) - team introductions, confirm patient/site/procedure, antibiotic prophylaxis, anticipated critical events, imaging displayed; (3) SIGN OUT (before leaving OR) - procedure recorded, counts correct, specimens labeled, equipment issues, recovery concerns. EVIDENCE: original study showed 36% reduction in complications, 47% reduction in mortality. Requires TEAM participation.', 'easy'),

('e0000391-0008-0000-0000-000000000008', 'd0000391-0000-0000-0000-000000000091', 8,
'A culture of safety in surgery involves:',
'Punishing all errors', 'Encouraging error reporting without punishment, learning from near-misses, transparency, teamwork, and leadership commitment to safety', 'Hiding mistakes', 'Individual responsibility only',
'B', 'SAFETY CULTURE: shared values, beliefs, behaviors regarding safety. COMPONENTS: (1) NON-PUNITIVE error reporting (just culture - fair accountability); (2) LEARNING from errors and NEAR-MISSES; (3) TRANSPARENCY and open communication; (4) TEAMWORK and flat hierarchy for safety concerns; (5) LEADERSHIP commitment; (6) Continuous IMPROVEMENT orientation. MEASUREMENT: safety culture surveys (AHRQ). High-reliability organizations (aviation, nuclear) as models. BARRIERS: blame culture, hierarchy, time pressure, complacency. "Speaking up" encouraged at all levels. Near-miss reporting valuable - more frequent than adverse events, same learning.', 'easy'),

('e0000391-0009-0000-0000-000000000009', 'd0000391-0000-0000-0000-000000000091', 9,
'The Plan-Do-Study-Act (PDSA) cycle is used for:',
'Planning budgets only', 'Rapid iterative quality improvement testing changes on a small scale, studying results, and adapting before wider implementation', 'Research publication', 'One-time large changes',
'B', 'PDSA CYCLE (Deming cycle): quality improvement methodology for testing changes. PLAN: identify change to test, predict outcome, plan data collection. DO: implement change on SMALL SCALE. STUDY: analyze data, compare to prediction, summarize learning. ACT: adopt (if successful), adapt (if partially successful), abandon (if failed), then repeat cycle. KEY FEATURES: rapid cycles, small tests of change, iterative learning, builds evidence before spread. Multiple PDSA cycles build confidence. Part of Model for Improvement (What are we trying to accomplish? How will we know change is improvement? What changes can we make?).', 'easy'),

('e0000391-0010-0000-0000-000000000010', 'd0000391-0000-0000-0000-000000000091', 10,
'Never events in surgery include:',
'Common acceptable complications', 'Wrong site surgery, retained foreign objects, wrong patient surgery - serious preventable events that should never occur with proper safety protocols', 'Minor wound infections', 'Expected bleeding',
'B', 'NEVER EVENTS: serious, largely preventable patient safety incidents that should not occur if proper preventive measures are in place. SURGICAL never events: WRONG SITE/side surgery, WRONG PATIENT surgery, WRONG PROCEDURE, RETAINED FOREIGN OBJECT (instrument, sponge), patient death intraoperatively from anesthesia error. PREVENTION: site marking, time-out, surgical count protocols, patient identification verification. RESPONSE: immediate disclosure, RCA, reporting, action plan. Some jurisdictions mandate reporting. Also called "serious reportable events." List maintained by National Quality Forum and others.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 91 (Surgical Audit and Quality) with 10 self-assessment questions inserted' as status;
