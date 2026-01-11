-- ============================================================================
-- SURGERY 3 CME ARTICLE 51: Appendicitis - Complete Guide
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000117-0000-0000-0000-000000000117', 'a0000003-0000-0000-0000-000000000003', 'Appendicitis Complete Guide', 'Comprehensive appendicitis management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000351-0000-0000-0000-000000000051',
    'c0000117-0000-0000-0000-000000000117',
    'a0000003-0000-0000-0000-000000000003',
    'Acute Appendicitis: From Diagnosis to Management',
    'A Complete Clinical Guide',
    'This article provides comprehensive coverage of acute appendicitis including pathophysiology, clinical presentation, diagnostic scoring systems, imaging, management approaches (operative vs non-operative), and complications including appendiceal mass and perforation.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000351-0001-0000-0000-000000000001', 'd0000351-0000-0000-0000-000000000051', 1,
'The classic sequence of symptoms in appendicitis is:',
'RLQ pain then nausea then anorexia', 'Periumbilical pain migrating to RLQ, followed by anorexia and nausea/vomiting', 'Vomiting first then pain', 'Diarrhea first then pain', NULL,
'B', 'Classic appendicitis sequence (Murphy sequence): (1) Periumbilical/epigastric pain (visceral, from appendiceal distension); (2) Anorexia (almost always present - absence should question diagnosis); (3) Nausea +/- vomiting (usually after pain onset); (4) Pain migrates to RLQ (localized somatic pain from peritoneal inflammation). This sequence seen in ~50-60% of cases. Vomiting before pain suggests gastroenteritis. Atypical presentations common in elderly, children, pregnant women, immunocompromised.', 'easy'),

('e0000351-0002-0000-0000-000000000002', 'd0000351-0000-0000-0000-000000000051', 2,
'McBurney point is located:',
'At the umbilicus', 'One-third of the distance from the ASIS to the umbilicus', 'In the left lower quadrant', 'At the xiphoid process', NULL,
'B', 'McBurney point: surface landmark for appendix base, located 1/3 of distance from right anterior superior iliac spine (ASIS) to umbilicus. Maximum tenderness at McBurney point suggests appendicitis. Other signs: Rovsing sign (RLQ pain with LLQ palpation), Psoas sign (RLQ pain with right hip extension - retrocecal appendix), Obturator sign (RLQ pain with internal rotation of flexed right hip - pelvic appendix), Blumberg sign (rebound tenderness). Classic presentation with these signs is straightforward diagnosis.', 'easy'),

('e0000351-0003-0000-0000-000000000003', 'd0000351-0000-0000-0000-000000000051', 3,
'Alvarado score components include:',
'Only WBC count', 'Migration of pain, anorexia, nausea/vomiting, RLQ tenderness, rebound, fever, leukocytosis, and left shift', 'Only clinical symptoms without labs', 'CT findings only', NULL,
'B', 'Alvarado (MANTRELS) score: Migration of pain to RLQ (1), Anorexia (1), Nausea/vomiting (1), Tenderness in RLQ (2), Rebound tenderness (1), Elevated temperature >37.3C (1), Leukocytosis >10,000 (2), Shift to left/neutrophilia >75% (1). Total: 10 points. Score 1-4: appendicitis unlikely; 5-6: possible, needs imaging; 7-8: probable, surgery; 9-10: definite appendicitis. Used to stratify patients and guide need for imaging. Other scores: AIR, RIPASA.', 'easy'),

('e0000351-0004-0000-0000-000000000004', 'd0000351-0000-0000-0000-000000000051', 4,
'CT findings in acute appendicitis include:',
'Normal appendix appearance', 'Dilated appendix greater than 6mm, wall thickening, periappendiceal fat stranding, and possible appendicolith', 'Only free fluid', 'Pneumoperitoneum in all cases', NULL,
'B', 'CT findings in appendicitis: (1) Dilated appendix >6mm outer diameter; (2) Appendiceal wall thickening >2mm and enhancement; (3) Periappendiceal fat stranding (inflammation); (4) Appendicolith/fecalith (30% - associated with perforation); (5) Periappendiceal fluid or abscess (complicated appendicitis); (6) Loss of normal appendiceal lumen. Sensitivity 94-98%, specificity 95-97%. CT most useful in atypical presentations, older patients, women of childbearing age. Ultrasound first-line in children and pregnant women.', 'easy'),

('e0000351-0005-0000-0000-000000000005', 'd0000351-0000-0000-0000-000000000051', 5,
'Non-operative management of uncomplicated appendicitis:',
'Is never appropriate', 'May be considered in selected cases with antibiotics, with successful resolution in about 70% but recurrence risk of 20-40%', 'Is always successful', 'Requires no follow-up', NULL,
'B', 'Antibiotics-first for uncomplicated appendicitis: multiple RCTs show 70-75% initial success, but 20-40% recurrence at 1-5 years. Currently reserved for: (1) Patient preference after informed consent; (2) Patients with prohibitive surgical risk; (3) Resource-limited settings; (4) Remote locations (marine, military). Requirements: confirmed uncomplicated appendicitis (no appendicolith, abscess, perforation), reliable follow-up. Appendectomy remains standard of care due to recurrence risk, but antibiotics are reasonable alternative in selected cases.', 'medium'),

('e0000351-0006-0000-0000-000000000006', 'd0000351-0000-0000-0000-000000000051', 6,
'Appendiceal mass (phlegmon):',
'Requires immediate surgery in all cases', 'In stable patients can be managed with antibiotics and interval appendectomy, or immediate surgery if peritonitis/sepsis', 'Should never be operated on', 'Always contains an abscess', NULL,
'B', 'Appendiceal mass/phlegmon: inflammatory mass around appendix, usually presenting >5 days from symptom onset. Management controversy: (1) STABLE patient without peritonitis: conservative management with antibiotics +/- percutaneous drainage if abscess >4-5cm, followed by interval appendectomy at 6-8 weeks; (2) Unstable/peritonitis: surgery (may need right hemicolectomy if cecum involved). Interval appendectomy: to prevent recurrence (10-20%), exclude malignancy (especially if >40 years). Some advocate no interval appendectomy if initial CT showed no abscess and follow-up imaging normal.', 'medium'),

('e0000351-0007-0000-0000-000000000007', 'd0000351-0000-0000-0000-000000000051', 7,
'Appendicitis in pregnancy:',
'Never occurs', 'Is the most common non-obstetric surgical emergency, with appendix location displaced superiorly by gravid uterus', 'Always requires C-section with appendectomy', 'Is always diagnosed with CT', NULL,
'B', 'Appendicitis in pregnancy: most common non-obstetric surgical emergency (1 in 1500 pregnancies). Challenges: (1) Appendix displaced upward and laterally by gravid uterus (RUQ by third trimester); (2) Normal physiological changes mimic appendicitis (WBC elevated, nausea common); (3) Reluctance to operate. Diagnosis: ultrasound first (may be limited), MRI (safe, sensitive). Treatment: appendectomy (laparoscopic safe in all trimesters). Delay increases perforation risk (higher in pregnancy due to delayed diagnosis), which increases fetal loss (3-5% uncomplicated vs 20-35% perforated).', 'medium'),

('e0000351-0008-0000-0000-000000000008', 'd0000351-0000-0000-0000-000000000051', 8,
'Retrocecal appendix:',
'Is a rare anatomical variant', 'Is the most common position (65%), and may present with less pronounced abdominal findings due to posterior location', 'Is always easy to diagnose clinically', 'Never causes peritonitis', NULL,
'B', 'Appendix positions: Retrocecal (65% - most common), pelvic (30%), preileal (1%), postileal (0.5%), subhepatic (rare). Retrocecal appendix: may have less prominent anterior abdominal signs, psoas sign positive (pain with hip extension), may present with flank or back pain. Pelvic appendix: may cause suprapubic pain, diarrhea (irritating rectum), obturator sign positive, may mimic PID. Subhepatic: may present as cholecystitis (especially in pregnancy with displaced cecum). Anatomical variation contributes to atypical presentations.', 'easy'),

('e0000351-0009-0000-0000-000000000009', 'd0000351-0000-0000-0000-000000000051', 9,
'Perforation in appendicitis is associated with:',
'Improved outcomes', 'Increased morbidity, especially in extremes of age, presence of appendicolith, and delay in presentation/surgery', 'Only better prognosis', 'No change in management', NULL,
'B', 'Perforation risk factors: extremes of age (children <5 years: 50-85% perforation; elderly: often delayed diagnosis), appendicolith (associated with perforation), delay in presentation (>24-36 hours), immunocompromised. Consequences of perforation: localized/diffuse peritonitis, abscess formation, increased SSI (wound infection), increased length of stay, higher morbidity, rare mortality. Management: surgery (may need drainage for abscess first if large), broad-spectrum antibiotics, possible open approach if diffuse peritonitis.', 'easy'),

('e0000351-0010-0000-0000-000000000010', 'd0000351-0000-0000-0000-000000000051', 10,
'Following appendectomy, histology reveals carcinoid tumor of the appendix less than 1cm. Management is:',
'Right hemicolectomy', 'Appendectomy alone is curative for carcinoid less than 1cm without high-risk features', 'Chemotherapy', 'Radiation therapy', NULL,
'B', 'Appendiceal carcinoid (neuroendocrine tumor): most common appendiceal neoplasm. Management based on size and features: (1) <1cm, no high-risk features: appendectomy alone (curative, <2% metastasis rate); (2) 1-2cm: appendectomy if low-grade, no mesoappendiceal invasion, no lymphovascular invasion; consider right hemicolectomy if high-risk features; (3) >2cm: right hemicolectomy (higher metastasis risk). High-risk features: positive margin, mesoappendiceal invasion >3mm, lymphovascular invasion, high grade. 5-year survival excellent (>90%) for localized disease.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 51 (Appendicitis Complete Guide) with 10 self-assessment questions inserted' as status;
