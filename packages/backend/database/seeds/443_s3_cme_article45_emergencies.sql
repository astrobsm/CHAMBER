-- ============================================================================
-- SURGERY 3 CME ARTICLE 45: Surgical Emergencies Summary
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000111-0000-0000-0000-000000000111', 'a0000003-0000-0000-0000-000000000003', 'Surgical Emergencies Summary', 'Overview of key surgical emergencies')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000345-0000-0000-0000-000000000045',
    'c0000111-0000-0000-0000-000000000111',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Emergencies: Recognition and Management',
    'Time-Critical Conditions Requiring Urgent Intervention',
    'This article provides an overview of surgical emergencies requiring rapid recognition and intervention including ruptured AAA, acute limb ischemia, necrotizing fasciitis, testicular torsion, compartment syndrome, and other conditions where delays significantly impact outcomes.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000345-0001-0000-0000-000000000001', 'd0000345-0000-0000-0000-000000000045', 1,
'Ruptured abdominal aortic aneurysm classically presents with:',
'Isolated hypertension', 'Abdominal/back pain, hypotension, and pulsatile abdominal mass', 'Painless jaundice', 'Isolated hematuria', NULL,
'B', 'Ruptured AAA classic triad: (1) Sudden severe abdominal or back pain (tearing, radiating to flank); (2) Hypotension/shock; (3) Pulsatile abdominal mass. Only 25-50% have all three. May present with syncope, groin/testicular pain. Contained (retroperitoneal) rupture may be temporarily stable. Free (intraperitoneal) rupture: rapid exsanguination. If suspected and unstable: OR immediately (no CT). If stable: CT confirms diagnosis. Treatment: open repair or EVAR (if anatomically suitable, hemodynamically stable). Mortality: 50-80% overall; <5% for elective repair.', 'easy'),

('e0000345-0002-0000-0000-000000000002', 'd0000345-0000-0000-0000-000000000045', 2,
'Acute limb ischemia - the 6 Ps - include:',
'Only pain and pallor', 'Pain, pallor, pulselessness, paresthesia, paralysis, and poikilothermia (perishing cold)', 'Petechiae, pruritus, and papules', 'Only paralysis', NULL,
'B', 'Acute limb ischemia 6 Ps: Pain (rest pain, severe), Pallor (white, waxy appearance), Pulselessness (absent distal pulses), Paresthesia (numbness, early sign of nerve ischemia), Paralysis (inability to move digits - late, ominous sign), Poikilothermia (cold, takes temperature of environment). Motor deficit (paralysis) and sensory deficit (anesthesia) indicate threatened limb - urgent revascularization needed. Irreversible changes in 6 hours (muscle necrosis). Rutherford classification guides management. Treatment: anticoagulation, surgical embolectomy/bypass, or catheter-directed thrombolysis.', 'easy'),

('e0000345-0003-0000-0000-000000000003', 'd0000345-0000-0000-0000-000000000045', 3,
'Necrotizing fasciitis differs from cellulitis by:',
'Being more superficial', 'Rapid progression, pain out of proportion to findings, crepitus, skin changes (bullae, necrosis), and systemic toxicity', 'Responding to oral antibiotics', 'Having clear borders', NULL,
'B', 'Necrotizing fasciitis red flags: (1) Pain out of proportion to visible findings; (2) Rapid progression despite antibiotics; (3) Systemic toxicity (fever, tachycardia, hypotension, altered mental status); (4) Skin changes beyond cellulitis: dusky discoloration, bullae, skin necrosis, crepitus (subcutaneous gas); (5) Wooden-hard induration. LRINEC score aids diagnosis. CT: gas tracking along fascial planes. Treatment: IMMEDIATE surgical debridement (source control), broad-spectrum antibiotics, resuscitation. "When in doubt, cut it out." Delay increases mortality.', 'medium'),

('e0000345-0004-0000-0000-000000000004', 'd0000345-0000-0000-0000-000000000045', 4,
'Testicular torsion:',
'Can wait for elective assessment', 'Is a surgical emergency with the best salvage rates if detorsion occurs within 6 hours', 'Only affects adults', 'Presents with painless swelling', NULL,
'B', 'Testicular torsion: twisting of spermatic cord, compromising testicular blood supply. Peak: neonatal and adolescent. Presentation: sudden severe testicular pain, nausea/vomiting, high-riding testis, absent cremasteric reflex, abnormal lie (horizontal). Salvage rates: <6 hours = 90-100%; 12-24 hours = 20-50%; >24 hours = 0%. If clinical suspicion high: OR immediately (do not delay for imaging). Ultrasound if diagnosis uncertain (absent/reduced blood flow). Surgery: detorsion, assess viability, orchiopexy (bilateral). Contralateral fixation prevents future torsion.', 'easy'),

('e0000345-0005-0000-0000-000000000005', 'd0000345-0000-0000-0000-000000000045', 5,
'Acute compartment syndrome diagnosis is primarily:',
'Based on X-ray findings', 'Clinical, based on the 6 Ps and high index of suspicion, with compartment pressure measurement if uncertain', 'Made only with MRI', 'Based on blood tests', NULL,
'B', 'Compartment syndrome diagnosis: primarily CLINICAL. Signs: Pain (especially on passive stretch - earliest and most sensitive), Pain out of proportion, Pressure (tense compartment on palpation), Paresthesia, Paralysis (late), Pulselessness (very late - not reliable). Pressure measurement: absolute >30 mmHg or delta pressure (diastolic BP - compartment pressure) <30 mmHg indicates compartment syndrome. Clinical diagnosis should not wait for pressure measurement. Treatment: immediate fasciotomy of all affected compartments. Common settings: tibial fracture, crush injury, reperfusion.', 'medium'),

('e0000345-0006-0000-0000-000000000006', 'd0000345-0000-0000-0000-000000000045', 6,
'Toxic megacolon is defined as:',
'Any colonic dilation', 'Colonic dilation greater than 6cm with signs of systemic toxicity in the setting of colitis', 'Megacolon without toxicity', 'Only in Crohn disease', NULL,
'B', 'Toxic megacolon: severe acute colitis with colonic dilation (>6cm transverse colon or >9cm cecum) plus systemic toxicity (fever >38.5C, tachycardia >120, leukocytosis or leukopenia, anemia, dehydration, altered mental status, hypotension). Causes: ulcerative colitis (most common), Crohn, C. difficile, ischemic colitis, infectious colitis. Management: bowel rest, NG decompression, IV fluids, broad-spectrum antibiotics, steroids (if UC), avoid opioids/anticholinergics. Surgery (subtotal colectomy): if perforation, peritonitis, massive hemorrhage, or no improvement in 24-72 hours.', 'medium'),

('e0000345-0007-0000-0000-000000000007', 'd0000345-0000-0000-0000-000000000045', 7,
'Boerhaave syndrome (spontaneous esophageal perforation) requires:',
'Observation only', 'Urgent surgical repair if diagnosed early, or drainage and possible esophageal diversion if delayed/septic', 'Endoscopy only', 'No treatment', NULL,
'B', 'Boerhaave syndrome management: (1) Resuscitation, broad-spectrum antibiotics, NPO; (2) Early presentation (<24 hours), contained: primary repair + tissue reinforcement (muscle flap, fundoplication); (3) Late presentation or extensive contamination: drainage (thoracostomy), esophageal diversion (cervical esophagostomy, gastrostomy), possible esophagectomy later; (4) Endoscopic stenting: selected stable patients with contained leaks. Mortality: 20-40% even with treatment; approaches 100% if untreated. Delay in diagnosis is major mortality factor.', 'hard'),

('e0000345-0008-0000-0000-000000000008', 'd0000345-0000-0000-0000-000000000045', 8,
'Acute mesenteric ischemia mortality is high because:',
'It is easily diagnosed', 'Diagnosis is often delayed due to non-specific early symptoms, and bowel infarction progresses rapidly', 'Treatment is always successful', 'It only affects young patients', NULL,
'B', 'Acute mesenteric ischemia mortality: 60-80%. Why so high? (1) Non-specific early symptoms - "pain out of proportion" often missed; (2) Rapid progression from ischemia to infarction (6-12 hours); (3) Delay in seeking care; (4) Elderly patients with comorbidities. By the time peritonitis develops, extensive necrosis has occurred. Keys to improved outcomes: high index of suspicion (AF, recent MI, vasculopathy, hypercoagulable state), early CT angiography, early revascularization (surgical or endovascular), damage control surgery, second-look laparotomy.', 'medium'),

('e0000345-0009-0000-0000-000000000009', 'd0000345-0000-0000-0000-000000000045', 9,
'Damage control surgery principles include:',
'Complete definitive repair at first operation', 'Abbreviated initial surgery to control hemorrhage and contamination, resuscitation in ICU, then planned re-exploration', 'Avoiding reoperation', 'Only for minor injuries', NULL,
'B', 'Damage control surgery: abbreviated initial operation for severely injured/physiologically compromised patients. Principles: (1) Truncated surgery - control hemorrhage (packing, shunts, ligation), control contamination (resection without anastomosis, staple/tie bowel ends); (2) Temporary abdominal closure; (3) ICU resuscitation - correct lethal triad (hypothermia, acidosis, coagulopathy), warm, correct coagulopathy; (4) Planned re-exploration in 24-48 hours when physiology improved. Allows survival of patients who would die during prolonged definitive operation. Also applies to vascular and orthopedic surgery.', 'medium'),

('e0000345-0010-0000-0000-000000000010', 'd0000345-0000-0000-0000-000000000045', 10,
'Surgical airway (cricothyroidotomy) is indicated when:',
'As first-line for all intubations', 'Cannot intubate and cannot oxygenate - failed airway after exhausting other options', 'For elective surgery', 'Before attempting bag-mask ventilation', NULL,
'B', 'Surgical airway indications: Cannot Intubate, Cannot Oxygenate (CICO) - failed airway after attempts at: bag-mask ventilation, supraglottic airway (LMA), intubation (direct or video laryngoscopy). Also indicated: severe maxillofacial trauma, upper airway obstruction (edema, foreign body, tumor), when other methods impossible. Cricothyroidotomy: incision through cricothyroid membrane, faster than formal tracheostomy in emergency. Contraindicated in children <10-12 years (use needle cricothyroidotomy). Scalpel-bougie-tube technique preferred. Converts to formal tracheostomy after stabilization.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 45 (Surgical Emergencies Summary) with 10 self-assessment questions inserted' as status;
