-- CME Article 115: Perioperative Cardiac Risk Assessment
-- Surgery 3 Rotation

-- Create topic for this article
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES (
  'c0000180-0000-0000-0000-000000000180',
  'Perioperative Cardiac Risk Assessment',
  'a0000003-0000-0000-0000-000000000003',
  'Comprehensive evaluation of cardiac risk in surgical patients',
  180,
  true
) ON CONFLICT (id) DO NOTHING;

-- Create CME article
INSERT INTO cme_articles (
  id, topic_id, category_id, title, subtitle, abstract, authors,
  cme_credits, estimated_reading_minutes, difficulty_level,
  version, is_published, publish_date, keywords, cover_image_url
)
VALUES (
  'd0000415-0000-0000-0000-000000000115',
  'c0000180-0000-0000-0000-000000000180',
  'a0000003-0000-0000-0000-000000000003',
  'Perioperative Cardiac Risk Assessment: Evidence-Based Strategies',
  'Optimizing cardiac outcomes in noncardiac surgery',
  'Perioperative cardiac complications are a leading cause of morbidity and mortality in noncardiac surgery. This article reviews current evidence-based approaches to preoperative cardiac evaluation, including the Revised Cardiac Risk Index, functional capacity assessment, and appropriate use of cardiac testing. We discuss management of patients with coronary artery disease, valvular heart disease, and arrhythmias. The role of perioperative beta-blockade, statin therapy, and antiplatelet management is examined in light of recent clinical trials.',
  'Department of Surgery and Cardiology',
  1.0,
  30,
  'medium',
  1,
  true,
  CURRENT_DATE,
  ARRAY['cardiac risk', 'RCRI', 'perioperative', 'beta blockers', 'METs'],
  NULL
) ON CONFLICT (id) DO NOTHING;

-- Self-assessment questions for Article 115
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES
('e1150001-0000-0000-0000-000000000001', 'd0000415-0000-0000-0000-000000000115', 1,
 'Which of the following is NOT a component of the Revised Cardiac Risk Index (RCRI)?',
 'History of ischemic heart disease', 'History of heart failure', 'Chronic obstructive pulmonary disease', 'Diabetes mellitus requiring insulin',
 'C', 'RCRI includes: ischemic heart disease, heart failure, cerebrovascular disease, diabetes requiring insulin, chronic kidney disease (creatinine >2), and high-risk surgery. COPD is not a component.', 'medium'),
('e1150002-0000-0000-0000-000000000002', 'd0000415-0000-0000-0000-000000000115', 2,
 'A patient with 3 RCRI risk factors has what estimated risk of major cardiac events?',
 'Less than 1%', '1-2%', '5-10%', 'Greater than 10%',
 'D', 'RCRI scoring: 0 factors = 0.4%, 1 factor = 0.9%, 2 factors = 6.6%, ≥3 factors = 11%. Three or more factors indicate >10% risk of major cardiac events.', 'medium'),
('e1150003-0000-0000-0000-000000000003', 'd0000415-0000-0000-0000-000000000115', 3,
 'What functional capacity threshold typically allows proceeding to surgery without further cardiac testing?',
 '2 METs', '4 METs', '6 METs', '10 METs',
 'B', '4 METs is the threshold. Patients who can perform activities equivalent to 4 METs (climbing one flight of stairs, walking on level ground at 4 mph) generally have adequate functional capacity for surgery.', 'medium'),
('e1150004-0000-0000-0000-000000000004', 'd0000415-0000-0000-0000-000000000115', 4,
 'According to current guidelines, which patient should undergo preoperative stress testing?',
 'All patients over 65 years', 'Patients with poor functional capacity and elevated risk', 'All diabetic patients', 'All patients undergoing abdominal surgery',
 'B', 'Preoperative stress testing is recommended for patients with elevated risk (≥1% MACE) AND poor or unknown functional capacity (<4 METs) if it will change management.', 'medium'),
('e1150005-0000-0000-0000-000000000005', 'd0000415-0000-0000-0000-000000000115', 5,
 'What is the recommended timing for initiating beta-blockers preoperatively?',
 'Day of surgery', 'At least 2-7 days before surgery', '1 month before surgery', 'Beta-blockers should not be started preoperatively',
 'B', 'If beta-blockers are indicated, they should be started at least 2-7 days (preferably weeks) before surgery to allow titration. Starting on the day of surgery is associated with increased stroke risk.', 'medium'),
('e1150006-0000-0000-0000-000000000006', 'd0000415-0000-0000-0000-000000000115', 6,
 'A patient on dual antiplatelet therapy after drug-eluting stent placement 3 months ago needs elective surgery. What is appropriate management?',
 'Stop both aspirin and clopidogrel 7 days before', 'Continue aspirin, stop clopidogrel', 'Delay surgery until 12 months after stent placement', 'Continue both medications through surgery',
 'C', 'Drug-eluting stents require at least 12 months of dual antiplatelet therapy. Elective surgery should be delayed. If surgery is urgent, continue aspirin and bridge with short-acting antiplatelet agents.', 'hard'),
('e1150007-0000-0000-0000-000000000007', 'd0000415-0000-0000-0000-000000000115', 7,
 'Which cardiac condition requires the most careful preoperative evaluation before noncardiac surgery?',
 'Mild mitral regurgitation', 'First-degree AV block', 'Severe aortic stenosis', 'Atrial fibrillation with controlled rate',
 'C', 'Severe aortic stenosis is a high-risk condition associated with significant perioperative cardiac morbidity. It may require intervention before elective noncardiac surgery.', 'medium'),
('e1150008-0000-0000-0000-000000000008', 'd0000415-0000-0000-0000-000000000115', 8,
 'Perioperative statin therapy in patients undergoing vascular surgery is associated with:',
 'Increased liver toxicity', 'Reduced cardiac events', 'Higher bleeding risk', 'No significant benefit',
 'B', 'Statins have pleiotropic effects including plaque stabilization and anti-inflammatory properties. They are associated with reduced perioperative cardiac events, especially in vascular surgery.', 'medium'),
('e1150009-0000-0000-0000-000000000009', 'd0000415-0000-0000-0000-000000000115', 9,
 'What is the most common cause of perioperative myocardial infarction?',
 'Coronary artery spasm', 'Plaque rupture with thrombosis', 'Supply-demand mismatch', 'Air embolism',
 'C', 'Type 2 MI from supply-demand mismatch (tachycardia, hypotension, anemia, hypoxia) is the most common cause of perioperative MI, accounting for most perioperative cardiac events.', 'medium'),
('e1150010-0000-0000-0000-000000000010', 'd0000415-0000-0000-0000-000000000115', 10,
 'Patients taking chronic beta-blockers should:',
 'Stop medication 24 hours before surgery', 'Continue medication perioperatively', 'Switch to calcium channel blockers', 'Reduce dose by 50% on surgery day',
 'B', 'Chronic beta-blocker therapy should be continued perioperatively. Abrupt discontinuation can lead to rebound tachycardia and increased cardiac events.', 'easy')
ON CONFLICT (id) DO NOTHING;
