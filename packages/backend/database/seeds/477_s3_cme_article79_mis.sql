-- ============================================================================
-- SURGERY 3 CME ARTICLE 79: Minimally Invasive Surgery Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000145-0000-0000-0000-000000000145', 'a0000003-0000-0000-0000-000000000003', 'Minimally Invasive Surgery Principles', 'Laparoscopic and robotic surgery fundamentals')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000379-0000-0000-0000-000000000079',
    'c0000145-0000-0000-0000-000000000145',
    'a0000003-0000-0000-0000-000000000003',
    'Minimally Invasive Surgery: Laparoscopic and Robotic Principles',
    'Access, Physiology, and Complications',
    'This article covers laparoscopic access techniques (Veress, open Hasson), pneumoperitoneum physiology, patient positioning, port placement, energy devices, common complications (trocar injury, gas embolism), and introduction to robotic surgery.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000379-0001-0000-0000-000000000001', 'd0000379-0000-0000-0000-000000000079', 1,
'Standard intra-abdominal pressure for pneumoperitoneum during laparoscopy is:',
'5 mmHg', '12-15 mmHg', '25-30 mmHg', '40 mmHg',
'B', 'Pneumoperitoneum pressure: standard 12-15 mmHg. Provides adequate working space while minimizing physiologic effects. Higher pressures (>15): increased CO2 absorption, cardiovascular effects, decreased venous return, respiratory compromise. Lower pressures (<12): may reduce postoperative pain but less visualization. Pressure monitoring essential. AquaDissection/gasless laparoscopy alternatives in specific situations.', 'easy'),

('e0000379-0002-0000-0000-000000000002', 'd0000379-0000-0000-0000-000000000079', 2,
'Physiological effects of pneumoperitoneum include:',
'Increased venous return', 'Decreased venous return, increased systemic vascular resistance, and hypercarbia from CO2 absorption', 'Decreased blood pressure', 'Respiratory alkalosis',
'B', 'Pneumoperitoneum physiology: CARDIOVASCULAR - decreased venous return (IVC compression), increased SVR, initial increased then decreased cardiac output, increased BP. RESPIRATORY - elevated diaphragm, decreased compliance, atelectasis, hypercarbia from CO2 ABSORPTION (compensate with increased minute ventilation). RENAL - decreased renal blood flow, oliguria. NEUROLOGIC - increased ICP. These effects guide patient selection and anesthetic management. Caution in cardiac/pulmonary disease.', 'medium'),

('e0000379-0003-0000-0000-000000000003', 'd0000379-0000-0000-0000-000000000079', 3,
'Open (Hasson) technique for laparoscopic access:',
'Has higher rate of major vascular injury than Veress', 'Involves direct cut-down and visualization of peritoneal entry, preferred in patients with previous surgery', 'Is faster than Veress technique', 'Cannot be used at the umbilicus',
'B', 'Hasson (open) technique: CUT-DOWN through layers under direct vision, blunt trocar placed, fascial sutures for seal. Advantages: direct visualization of entry, theoretically lower major vascular injury, preferred with PREVIOUS SURGERY/adhesions. Veress (closed): blind needle insertion, insufflation, then trocar. Veress faster but blind entry. Both techniques have complications; open may have more minor injuries but fewer catastrophic ones. Choice based on surgeon preference and patient factors.', 'easy'),

('e0000379-0004-0000-0000-000000000004', 'd0000379-0000-0000-0000-000000000079', 4,
'Gas embolism during laparoscopy:',
'Is not possible with CO2', 'Is rare but potentially fatal, presenting with hypotension, mill wheel murmur, and sudden cardiovascular collapse', 'Only occurs with air insufflation', 'Has no treatment',
'B', 'CO2 gas embolism: rare but life-threatening complication. Occurs with direct insufflation into vessel or CO2 entry through open vein. Signs: sudden hypotension, hypoxia, MILL WHEEL MURMUR (churning), elevated ETCO2 then sudden drop, cardiovascular collapse. TREATMENT: stop insufflation, release pneumoperitoneum, left lateral decubitus + Trendelenburg (trap gas in right atrium), 100% O2, CPR if needed, consider aspiration via central line. CO2 more soluble than air, so somewhat better tolerated.', 'medium'),

('e0000379-0005-0000-0000-000000000005', 'd0000379-0000-0000-0000-000000000079', 5,
'Trocar-related bowel injury:',
'Never occurs with open technique', 'May have delayed presentation and requires high index of suspicion; unexplained postoperative fever or pain warrants investigation', 'Is always immediately recognized', 'Does not require surgical repair',
'B', 'Trocar bowel injury: can occur with any access technique. IMMEDIATELY RECOGNIZED: repair at time of surgery. DELAYED RECOGNITION: bowel injury may not be apparent intraoperatively, presents postoperatively with fever, pain, peritonitis, sepsis. HIGH INDEX OF SUSPICION crucial - unexplained postoperative deterioration should prompt CT/exploration. Delayed diagnosis = high morbidity/mortality. Prevention: proper technique, visualization of trocar entry, inspect bowel at end of case.', 'medium'),

('e0000379-0006-0000-0000-000000000006', 'd0000379-0000-0000-0000-000000000079', 6,
'Advantages of laparoscopic surgery compared to open surgery include:',
'Larger incisions for better visualization', 'Less postoperative pain, shorter hospital stay, faster recovery, and fewer wound complications', 'Higher incidence of adhesions', 'No difference in outcomes',
'B', 'Laparoscopic advantages: LESS PAIN (smaller incisions), SHORTER HOSPITAL STAY, FASTER RECOVERY (return to work, activities), fewer WOUND COMPLICATIONS (infection, hernia, dehiscence), improved COSMESIS, REDUCED ADHESION formation, less blood loss in many procedures. Disadvantages: 2D visualization, loss of tactile feedback, learning curve, equipment cost. Not appropriate for all situations. Benefits must be weighed against specific risks in each case.', 'easy'),

('e0000379-0007-0000-0000-000000000007', 'd0000379-0000-0000-0000-000000000079', 7,
'Port site hernia:',
'Only occurs with 5mm ports', 'Is more common with larger trocar sites (10-12mm) and requires fascial closure at these sites', 'Never contains bowel', 'Is not a complication of laparoscopy',
'B', 'Port site hernia: complication where bowel/omentum herniates through trocar site. More common with LARGER PORTS (10-12 mm), especially umbilical and when fascia expanded for specimen extraction. Prevention: close fascia for ports >=10 mm. 5 mm ports usually do not require fascial closure. May present early (incarceration, obstruction) or late (reducible bulge). Richter hernia (partial bowel wall) particularly dangerous. Inspect ports at end of case; close fascia under direct vision.', 'easy'),

('e0000379-0008-0000-0000-000000000008', 'd0000379-0000-0000-0000-000000000079', 8,
'Critical View of Safety (CVS) in laparoscopic cholecystectomy:',
'Is optional', 'Requires clearing the hepatocystic triangle, seeing only two structures entering the gallbladder, and seeing the liver bed - to prevent bile duct injury', 'Involves cholangiography always', 'Means proceeding without identifying structures',
'B', 'Critical View of Safety (CVS): technique to prevent bile duct injury in cholecystectomy. THREE CRITERIA: (1) Hepatocystic triangle cleared of fat and fibrous tissue; (2) Only TWO STRUCTURES seen entering gallbladder (cystic duct and cystic artery); (3) Lower third of CYSTIC PLATE (liver bed) visible. Structures identified by their attachment to gallbladder, not by anatomy alone. If CVS cannot be achieved safely: bail-out options (subtotal cholecystectomy, conversion). Most BDIs occur when CVS not obtained.', 'medium'),

('e0000379-0009-0000-0000-000000000009', 'd0000379-0000-0000-0000-000000000079', 9,
'Robotic surgery compared to conventional laparoscopy offers:',
'Larger incisions', 'Enhanced 3D visualization, wristed instruments with improved dexterity, and tremor filtration', 'Lower cost', 'Faster operating times in all cases',
'B', 'Robotic surgery advantages: 3D HIGH-DEFINITION visualization, WRISTED INSTRUMENTS (7 degrees of freedom vs 4 in laparoscopy), TREMOR FILTRATION, improved ergonomics for surgeon, motion scaling. Disadvantages: COST (capital, maintenance, disposables), increased setup time, loss of tactile feedback, requires specific training, larger footprint. Best suited for complex procedures requiring precise dissection in confined spaces (prostatectomy, complex hysterectomy, some colorectal). Evidence for superiority over laparoscopy still evolving.', 'medium'),

('e0000379-0010-0000-0000-000000000010', 'd0000379-0000-0000-0000-000000000079', 10,
'Contraindications to laparoscopic surgery include:',
'Prior abdominal surgery', 'Hemodynamic instability with inability to tolerate pneumoperitoneum, and certain cases may warrant open approach', 'All obese patients', 'Patient preference for laparoscopy',
'B', 'Laparoscopic contraindications: ABSOLUTE - hemodynamic instability (cannot tolerate pneumoperitoneum effects), severe cardiopulmonary disease precluding pneumoperitoneum/positioning, uncorrected coagulopathy. RELATIVE - previous surgery (adhesions), large tumors, obesity (can often still proceed with modifications), pregnancy (second trimester relatively safe), bowel distension. Many former contraindications now relative with experience. Decision based on individual patient factors, surgeon experience, available resources.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 79 (Minimally Invasive Surgery) with 10 self-assessment questions inserted' as status;
