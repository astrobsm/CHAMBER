-- ============================================================================
-- SURGERY 3 CME ARTICLE 25: Minimally Invasive Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000091-0000-0000-0000-000000000091', 'a0000003-0000-0000-0000-000000000003', 'Minimally Invasive Surgery', 'Laparoscopic and endoscopic surgical principles')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000325-0000-0000-0000-000000000025',
    'c0000091-0000-0000-0000-000000000091',
    'a0000003-0000-0000-0000-000000000003',
    'Minimally Invasive Surgery: Principles and Complications',
    'Laparoscopic Technique, Physiology and Safety',
    'This article covers the principles of laparoscopic surgery, pneumoperitoneum physiology, patient selection, port placement, instrumentation, common laparoscopic procedures, complications specific to MIS, and conversion to open surgery.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000325-0001-0000-0000-000000000001', 'd0000325-0000-0000-0000-000000000025', 1,
'The physiological effects of carbon dioxide pneumoperitoneum include:',
'Increased venous return and decreased airway pressure', 'Decreased venous return, increased airway pressure, hypercapnia, and reduced cardiac output', 'No physiological changes', 'Improved renal blood flow', NULL,
'B', 'CO2 pneumoperitoneum effects: (1) Cardiovascular - increased intra-abdominal pressure (IAP) decreases venous return and cardiac output, increases SVR; (2) Respiratory - cephalad diaphragm displacement decreases FRC, increases airway pressures; (3) CO2 absorption causes hypercapnia and respiratory acidosis; (4) Decreased renal and splanchnic blood flow with high IAP. Compensatory mechanisms usually adequate in healthy patients; caution in cardiac/pulmonary disease.', 'medium'),

('e0000325-0002-0000-0000-000000000002', 'd0000325-0000-0000-0000-000000000025', 2,
'The standard insufflation pressure for laparoscopic surgery is:',
'5-8 mmHg', '12-15 mmHg', '25-30 mmHg', '40 mmHg', NULL,
'B', 'Standard insufflation pressure: 12-15 mmHg provides adequate working space while minimizing physiological effects. Lower pressures (8-10 mmHg) may be used in patients with cardiac/pulmonary compromise. Higher pressures increase complications (decreased venous return, respiratory compromise, gas embolism risk). Pressure should be monitored continuously. Excessive pressure can cause subcutaneous emphysema, pneumothorax, or pneumomediastinum.', 'easy'),

('e0000325-0003-0000-0000-000000000003', 'd0000325-0000-0000-0000-000000000025', 3,
'The Veress needle technique for establishing pneumoperitoneum:',
'Always uses an open technique', 'Is a closed technique where the needle is inserted blindly into the peritoneal cavity', 'Requires general anesthesia only after insertion', 'Uses a 15mm trocar', NULL,
'B', 'Veress needle is a closed (blind) technique: small spring-loaded needle inserted through abdominal wall, typically at umbilicus. Safety checks: aspiration (no blood/bowel contents), saline drop test, initial low pressure with adequate flow. Open (Hasson) technique: direct visualization via small incision. Open technique has lower risk of visceral/vascular injury and is preferred in patients with previous surgery, adhesions, or distended bowel. Optical trocar is another option.', 'easy'),

('e0000325-0004-0000-0000-000000000004', 'd0000325-0000-0000-0000-000000000025', 4,
'Advantages of laparoscopic surgery compared to open surgery include:',
'Longer hospital stay', 'Reduced postoperative pain, shorter hospital stay, faster recovery, smaller incisions', 'Higher wound infection rates', 'More intraoperative blood loss', NULL,
'B', 'Laparoscopic advantages: smaller incisions (less wound pain, better cosmesis), reduced postoperative pain and analgesic requirements, shorter hospital stay, faster return to normal activities and work, reduced wound complications (infections, hernias), less adhesion formation, equivalent or better oncologic outcomes for many cancers. Disadvantages: longer learning curve, specialized equipment, certain conditions difficult to address.', 'easy'),

('e0000325-0005-0000-0000-000000000005', 'd0000325-0000-0000-0000-000000000025', 5,
'Trocar site hernias are more common with:',
'5mm ports', 'Ports 10mm or larger, especially at umbilicus or midline', '3mm ports', 'Lateral port sites', NULL,
'B', 'Trocar site hernia risk factors: port size ≥10mm, umbilical/midline location, fascial defect not closed, obesity, advanced age, prolonged procedure, infection, increased intra-abdominal pressure (cough, constipation). Prevention: close fascia for all ports ≥10mm (some advocate ≥12mm only), use port-site closure devices for obese patients. Presents weeks to years later as bulge or incarceration. Repair similar to other incisional hernias.', 'medium'),

('e0000325-0006-0000-0000-000000000006', 'd0000325-0000-0000-0000-000000000025', 6,
'The critical view of safety (CVS) in laparoscopic cholecystectomy requires:',
'Complete removal of all fat from the hepatoduodenal ligament', 'Clearing the hepatocystic triangle, seeing only two structures entering the gallbladder, seeing the lower third of cystic plate', 'Routine intraoperative cholangiography', 'Complete dissection of the common bile duct', NULL,
'B', 'Critical View of Safety (Strasberg): (1) Hepatocystic triangle cleared of fat and fibrous tissue, (2) Only two structures (cystic duct and cystic artery) seen entering the gallbladder, (3) Lower third of gallbladder separated from liver (cystic plate visible). Achieving CVS before clipping/cutting reduces bile duct injury (currently ~0.5%). If CVS cannot be achieved, consider alternatives: subtotal cholecystectomy, bailout cholecystostomy, or conversion.', 'medium'),

('e0000325-0007-0000-0000-000000000007', 'd0000325-0000-0000-0000-000000000025', 7,
'Conversion from laparoscopic to open surgery:',
'Is a sign of failure', 'Is a sound surgical judgment when patient safety requires it, not a complication', 'Should never be done', 'Only occurs in emergency surgery', NULL,
'B', 'Conversion to open surgery is a demonstration of good surgical judgment when laparoscopic approach is unsafe or inadequate - it is NOT a complication or failure. Indications: unclear anatomy, uncontrolled bleeding, bowel injury not manageable laparoscopically, adhesions preventing safe dissection, unexpected findings. Preoperative counseling should include conversion possibility. Low threshold for conversion in training.', 'easy'),

('e0000325-0008-0000-0000-000000000008', 'd0000325-0000-0000-0000-000000000025', 8,
'Gas embolism during laparoscopy is recognized by:',
'Gradual hypertension', 'Sudden cardiovascular collapse, mill-wheel murmur, decreased ETCO2 then increased, hypotension', 'Improved oxygen saturation', 'Increased urine output', NULL,
'B', 'CO2 gas embolism (rare but serious): sudden cardiovascular collapse, hypotension, arrhythmias, mill-wheel murmur (pathognomonic), initial decrease then increase in ETCO2 (as circulation fails), cyanosis. Occurs from direct vessel insufflation (Veress into vessel) or high-pressure insufflation. Treatment: stop insufflation, deflate abdomen, left lateral decubitus and Trendelenburg (Durant maneuver), 100% O2, CPR if needed, aspiration via central line.', 'hard'),

('e0000325-0009-0000-0000-000000000009', 'd0000325-0000-0000-0000-000000000025', 9,
'Relative contraindications to laparoscopic surgery include:',
'Mild obesity', 'Severe cardiopulmonary disease, uncorrected coagulopathy, significant bowel distension', 'Previous appendectomy', 'Age over 40', NULL,
'B', 'Relative contraindications: severe cardiac disease (cannot tolerate pneumoperitoneum effects), severe COPD (hypercapnia risk), uncorrected coagulopathy, significant bowel distension (limited working space, increased injury risk), generalized peritonitis, large abdominal mass, suspected extensive adhesions. Absolute contraindications are few - most are relative and require individualized assessment. Previous surgery is not contraindication but may require open access.', 'medium'),

('e0000325-0010-0000-0000-000000000010', 'd0000325-0000-0000-0000-000000000025', 10,
'Electrosurgical injuries during laparoscopy can occur from:',
'Only direct contact with active electrode', 'Direct coupling, capacitive coupling, insulation failure, and stray current', 'Use of cold scissors', 'Manual dissection', NULL,
'B', 'Electrosurgical injury mechanisms: (1) Direct coupling - active electrode contacts another instrument which transmits energy to tissue; (2) Capacitive coupling - current transferred through intact insulation to nearby conductive material; (3) Insulation failure - current escapes through damaged insulation; (4) Direct thermal injury from active electrode. Prevention: inspect insulation, use lowest effective power, use bipolar when possible, avoid metal-to-metal contact, activate only when tip is visible.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 25 (Minimally Invasive Surgery) with 10 self-assessment questions inserted' as status;
