-- ============================================================================
-- SURGERY 3 CME ARTICLE 97: Appendicitis and Appendectomy
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000163-0000-0000-0000-000000000163', 'a0000003-0000-0000-0000-000000000003', 'Appendicitis and Appendectomy', 'Diagnosis and surgical management of appendicitis')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000397-0000-0000-0000-000000000097',
    'c0000163-0000-0000-0000-000000000163',
    'a0000003-0000-0000-0000-000000000003',
    'Acute Appendicitis: Diagnosis and Surgical Management',
    'Evidence-Based Approach to Appendiceal Disease',
    'This article covers appendiceal anatomy, pathophysiology of appendicitis, clinical scoring systems, imaging, antibiotic therapy, laparoscopic versus open appendectomy, complicated appendicitis management, and interval appendectomy.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000397-0001-0000-0000-000000000001', 'd0000397-0000-0000-0000-000000000097', 1,
'The classic progression of symptoms in acute appendicitis is:',
'Diarrhea followed by fever', 'Periumbilical pain migrating to the right lower quadrant, followed by anorexia, nausea, and vomiting', 'Right lower quadrant pain first', 'Vomiting before any pain',
'B', 'CLASSIC APPENDICITIS PRESENTATION (Murphy sequence): (1) PERIUMBILICAL PAIN (visceral pain, poorly localized, T10 dermatome - early inflammation stretches appendix); (2) ANOREXIA (almost always present - "if patient hungry, reconsider diagnosis"); (3) NAUSEA/VOMITING (after pain onset); (4) MIGRATION of pain to RIGHT LOWER QUADRANT (somatic pain, peritoneal irritation as inflammation reaches serosa). Classic sequence in ~50% of patients. Atypical presentations common: retrocecal (flank pain), pelvic (urinary symptoms), pregnant (higher location).', 'easy'),

('e0000397-0002-0000-0000-000000000002', 'd0000397-0000-0000-0000-000000000097', 2,
'McBurney point is located:',
'At the umbilicus', 'One-third of the distance from the anterior superior iliac spine to the umbilicus, corresponding to the base of the appendix', 'In the left lower quadrant', 'At the pubic symphysis',
'B', 'MCBURNEY POINT: surface landmark for appendix base. LOCATION: one-third of distance from ASIS (anterior superior iliac spine) to UMBILICUS (2/3 from umbilicus). Tenderness at McBurney point classic for appendicitis. OTHER SIGNS: Rovsing (RLQ pain with LLQ palpation - peritoneal irritation), Psoas (RLQ pain with hip extension - retrocecal appendix), Obturator (RLQ pain with internal rotation of flexed hip - pelvic appendix), Blumberg (rebound tenderness). Rectal exam: may have tenderness if pelvic appendix.', 'easy'),

('e0000397-0003-0000-0000-000000000003', 'd0000397-0000-0000-0000-000000000097', 3,
'The Alvarado score for appendicitis includes:',
'Only lab values', 'Clinical symptoms (migration of pain, anorexia, nausea/vomiting), signs (RLQ tenderness, rebound, fever), and labs (leukocytosis, left shift), with higher scores indicating higher probability', 'Only imaging findings', 'Patient age and gender only',
'B', 'ALVARADO SCORE (MANTRELS): predicts appendicitis probability. SYMPTOMS: Migration (1), Anorexia (1), Nausea/vomiting (1). SIGNS: RLQ Tenderness (2), Rebound (1), Elevated temperature (1). LABS: Leukocytosis (2), Shift left (1). Total: 10 points. INTERPRETATION: 0-4 low probability; 5-6 equivocal (observe or image); 7-10 high probability (consider surgery). Other scores: Appendicitis Inflammatory Response (AIR) score. Scores help risk stratify but do not replace clinical judgment. Imaging (CT, US) valuable in equivocal cases.', 'easy'),

('e0000397-0004-0000-0000-000000000004', 'd0000397-0000-0000-0000-000000000097', 4,
'CT imaging in suspected appendicitis:',
'Is never indicated', 'Has sensitivity and specificity greater than 95%, shows an enlarged appendix (greater than 6 mm), periappendiceal stranding, and can identify complications or alternative diagnoses', 'Is only for children', 'Has poor accuracy',
'B', 'CT IN APPENDICITIS: most accurate imaging modality. SENSITIVITY/SPECIFICITY: >95%. FINDINGS: APPENDIX DIAMETER >6 mm (>10mm pathologic), PERIAPPENDICEAL FAT STRANDING (inflammation), appendicolith (30%), wall thickening/enhancement. COMPLICATIONS: abscess, perforation (extraluminal air, fluid), phlegmon. ADVANTAGES: identifies alternative diagnoses, complications, guides management. Preferred in adults, especially equivocal cases. ULTRASOUND: first-line in children, pregnant women, thin patients (avoid radiation). US findings: non-compressible appendix >6mm, aperistaltic, tenderness at probe location (target sign).', 'easy'),

('e0000397-0005-0000-0000-000000000005', 'd0000397-0000-0000-0000-000000000097', 5,
'Laparoscopic appendectomy compared to open appendectomy:',
'Has worse outcomes overall', 'Has advantages including less pain, faster recovery, shorter hospital stay, fewer wound infections, and better visualization, with similar appendiceal stump leak rates', 'Is contraindicated in all patients', 'Takes much longer with no benefits',
'B', 'LAPAROSCOPIC VS OPEN APPENDECTOMY: LAPAROSCOPIC advantages: LESS PAIN, faster RECOVERY, shorter HOSPITAL STAY, fewer WOUND INFECTIONS, better COSMESIS, DIAGNOSTIC capability (visualize other pathology). Similar: appendiceal stump leak, intra-abdominal abscess (possibly slightly higher with laparoscopic in some studies). LAPAROSCOPIC preferred: obese patients (visualization), women (evaluate gynecologic pathology), diagnostic uncertainty. OPEN still acceptable, especially in resource-limited settings, local expertise, complicated cases. Approach depends on patient factors and surgeon experience.', 'easy'),

('e0000397-0006-0000-0000-000000000006', 'd0000397-0000-0000-0000-000000000097', 6,
'Perforated appendicitis with abscess may be managed initially with:',
'Immediate surgery always', 'Antibiotics and percutaneous drainage for stable patients with well-formed abscess, followed by interval appendectomy 6-8 weeks later', 'No treatment needed', 'Only observation',
'B', 'PERFORATED APPENDICITIS WITH ABSCESS: options depend on presentation. STABLE patient with WELL-FORMED ABSCESS: CONSERVATIVE initial management - IV ANTIBIOTICS + PERCUTANEOUS DRAINAGE (IR-guided). Then INTERVAL APPENDECTOMY after 6-8 weeks (allows inflammation to subside, easier surgery, fewer complications). UNSTABLE/septic or diffuse peritonitis: immediate surgery (appendectomy or drainage). Evidence: comparable outcomes with conservative approach, some skip interval appendectomy in adults (recurrence ~15-20%). Children: interval appendectomy often recommended. Phlegmon without drainable abscess: antibiotics alone initially.', 'medium'),

('e0000397-0007-0000-0000-000000000007', 'd0000397-0000-0000-0000-000000000097', 7,
'Negative appendectomy rate refers to:',
'Successful removal of appendix', 'The percentage of appendectomies where pathology reveals a normal appendix, historically 15-20% but reduced with increased CT use', 'Mortality rate', 'Infection rate',
'B', 'NEGATIVE APPENDECTOMY: appendix removed but found to be NORMAL on pathology. HISTORICAL rate: 15-20% (considered acceptable given risks of perforation with delayed treatment). CURRENT rate: reduced to 5-10% with increased CT USE and clinical scoring. Higher in: women of reproductive age (gynecologic mimics), children, elderly, atypical presentations. FALSE NEGATIVE (missed appendicitis) more dangerous than false positive (negative appendectomy). Incidental appendectomy performed during laparoscopy for other diagnoses if appendix accessible and no contraindication.', 'easy'),

('e0000397-0008-0000-0000-000000000008', 'd0000397-0000-0000-0000-000000000097', 8,
'Antibiotics-only treatment for uncomplicated appendicitis:',
'Is never appropriate', 'Has been shown in trials to be safe in selected patients with uncomplicated appendicitis, with approximately 30% requiring appendectomy within one year', 'Is the standard of care', 'Has 100% success rate',
'B', 'ANTIBIOTICS-ONLY (non-operative) treatment for uncomplicated appendicitis: studied in multiple trials (APPAC, CODA, etc.). FINDINGS: 70% initially treated successfully with antibiotics; ~30% require APPENDECTOMY within 1 YEAR (some recur, some complications). PATIENT SELECTION: uncomplicated (no appendicolith, no perforation/abscess), informed consent, reliable follow-up. Not recommended if appendicolith present (higher failure rate). SHARED DECISION-MAKING: some patients prefer to avoid surgery, others prefer definitive treatment. Antibiotics-first is an option in selected cases, not standard of care. Surgery remains first-line in most guidelines.', 'medium'),

('e0000397-0009-0000-0000-000000000009', 'd0000397-0000-0000-0000-000000000097', 9,
'Appendicitis in pregnancy requires special consideration because:',
'It never occurs in pregnancy', 'The appendix is displaced superiorly by the enlarging uterus, presentation is atypical, MRI without contrast is preferred for imaging, and delay increases maternal and fetal morbidity', 'Surgery is contraindicated', 'CT scan is first choice',
'B', 'APPENDICITIS IN PREGNANCY: second most common non-obstetric surgical emergency. ANATOMIC CHANGES: appendix DISPLACED SUPERIORLY by gravid uterus (especially 3rd trimester - can be in RUQ). PRESENTATION: atypical, fewer classic signs, nausea/vomiting may be attributed to pregnancy. IMAGING: ULTRASOUND first (often limited visualization), MRI WITHOUT CONTRAST preferred (no radiation). Avoid CT if possible (radiation). DELAY: increases perforation, maternal/fetal MORBIDITY, preterm labor, fetal loss. TREATMENT: appendectomy (laparoscopic safe in experienced hands, all trimesters). Do not delay for pregnancy.', 'medium'),

('e0000397-0010-0000-0000-000000000010', 'd0000397-0000-0000-0000-000000000097', 10,
'Appendiceal tumors found incidentally at appendectomy:',
'Never occur', 'Include carcinoid (most common), adenocarcinoma, and mucinous neoplasms, with management depending on tumor type, size, and margin involvement', 'Always require no further treatment', 'Are always benign',
'B', 'APPENDICEAL TUMORS (found at appendectomy, ~1%): CARCINOID (neuroendocrine tumor): most common appendiceal tumor. <1 cm: appendectomy sufficient; 1-2 cm: individualized (consider right hemicolectomy if high-risk features); >2 cm: right hemicolectomy. ADENOCARCINOMA: right hemicolectomy indicated (lymph node clearance). MUCINOUS NEOPLASMS (LAMN, mucinous adenocarcinoma): risk of pseudomyxoma peritonei; clear margins important, oncologic resection if invasive. GOBLET CELL ADENOCARCINOMA: aggressive, right hemicolectomy. Incidental finding requires careful pathology review and appropriate oncologic management based on tumor type and stage.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 97 (Appendicitis and Appendectomy) with 10 self-assessment questions inserted' as status;
