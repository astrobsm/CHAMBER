-- CME Article 59: Preoperative Assessment - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040059-0000-0000-0000-000000000059', 'c4000007-0000-0000-0000-000000000007', 'a0000004-0000-0000-0000-000000000004', 'Preoperative Assessment', 'Risk Stratification and Optimization', 'Comprehensive review of preoperative evaluation covering cardiac risk, pulmonary assessment, and patient optimization.', 'UNTH Surgery Department', 30, 2.0, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040059-0000-0000-0000-000000000059', 'introduction', 1, 'Introduction', 'Preoperative assessment: identify risk, optimize conditions, plan anesthesia. Goals: reduce complications, inform consent, ensure safety. ASA physical status classification. History and examination are key.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040059-0000-0000-0000-000000000059', 'learning_objectives', 2, 'Learning Objectives', '1. Use ASA classification\n2. Assess cardiac risk\n3. Evaluate pulmonary risk\n4. Manage anticoagulation\n5. Optimize diabetes\n6. Know nil per os guidelines\n7. Order appropriate investigations');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040059-0000-0000-0000-000000000059', 'content', 3, 'Cardiac Assessment', 'Revised Cardiac Risk Index (RCRI): high-risk surgery, IHD, CHF, CVA, insulin-dependent DM, creatinine >2. Functional capacity: METs. Stress testing if poor functional capacity and high-risk surgery. Beta-blockers if on them.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040059-0000-0000-0000-000000000059', 'content', 4, 'Pulmonary and Other', 'COPD: optimize, stop smoking. OSA: CPAP perioperatively. Renal: avoid nephrotoxins, hydration. Diabetes: glucose control, hold metformin. Anticoagulation: bridging for high-risk, hold for low-risk.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040059-0000-0000-0000-000000000059', 'content', 5, 'Investigations', 'Not routine - based on indication. ECG: >65 years, cardiac disease. CBC: expected blood loss, anemia. Renal function: nephrotoxic drugs, major surgery. CXR: only if symptomatic. NPO: 2 hours clear fluids, 6 hours solids.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040059-0000-0000-0000-000000000059', 'key_points', 6, 'Key Points', 'ASA classification predicts risk. RCRI for cardiac risk. Functional capacity important. Continue beta-blockers. Investigations based on indication. Stop smoking 4-8 weeks before.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040059-0000-0000-0000-000000000059', 1, 'NPO time for clear fluids before surgery:', '1 hour', '2 hours', '4 hours', '6 hours', '8 hours', 'B', 'Clear fluids allowed until 2 hours before'),
('d0040059-0000-0000-0000-000000000059', 2, 'RCRI factor includes:', 'Age >50', 'High-risk surgery', 'Obesity', 'Smoking', 'Gender', 'B', 'High-risk surgery is RCRI factor'),
('d0040059-0000-0000-0000-000000000059', 3, 'Preoperative beta-blockers should be:', 'Stopped', 'Continued', 'Doubled', 'Changed to calcium blocker', 'Given to all', 'B', 'Continue beta-blockers if already taking'),
('d0040059-0000-0000-0000-000000000059', 4, 'Smoking cessation ideally:', '1 day before', '1 week before', '4-8 weeks before', 'Not needed', 'Day of surgery', 'C', 'Stop smoking 4-8 weeks before for benefit'),
('d0040059-0000-0000-0000-000000000059', 5, 'Routine CXR before surgery:', 'All patients', 'Only if symptomatic', 'Age >40', 'Never needed', 'All smokers', 'B', 'CXR only if pulmonary symptoms');
