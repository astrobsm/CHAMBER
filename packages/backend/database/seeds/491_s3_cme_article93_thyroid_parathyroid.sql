-- ============================================================================
-- SURGERY 3 CME ARTICLE 93: Thyroid and Parathyroid Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000159-0000-0000-0000-000000000159', 'a0000003-0000-0000-0000-000000000003', 'Thyroid and Parathyroid Surgery', 'Endocrine neck surgery principles and techniques')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000393-0000-0000-0000-000000000093',
    'c0000159-0000-0000-0000-000000000159',
    'a0000003-0000-0000-0000-000000000003',
    'Thyroid and Parathyroid Surgery: Indications and Techniques',
    'Comprehensive Endocrine Neck Surgery',
    'This article covers thyroid nodule evaluation, indications for thyroidectomy, surgical technique, management of thyroid cancer, hyperparathyroidism workup and surgery, complications including recurrent laryngeal nerve injury and hypocalcemia.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000393-0001-0000-0000-000000000001', 'd0000393-0000-0000-0000-000000000093', 1,
'Indications for fine needle aspiration (FNA) of a thyroid nodule include:',
'All nodules regardless of size', 'Nodules greater than 1 cm with suspicious ultrasound features (hypoechoic, irregular margins, microcalcifications, taller than wide)', 'Only nodules greater than 5 cm', 'FNA is never indicated',
'B', 'THYROID NODULE FNA INDICATIONS (ATA guidelines): Based on SIZE and ULTRASOUND FEATURES. High suspicion pattern (hypoechoic, irregular margins, microcalcifications, taller than wide, extrathyroidal extension): FNA if >=1 cm. Intermediate suspicion (hypoechoic solid without high-risk features): FNA if >=1 cm. Low suspicion (isoechoic/hyperechoic solid, partially cystic): FNA if >=1.5-2 cm. Very low suspicion (spongiform, purely cystic): FNA if >=2 cm or observe. Bethesda system classifies cytology. Size alone not indication - ultrasound features determine risk.', 'easy'),

('e0000393-0002-0000-0000-000000000002', 'd0000393-0000-0000-0000-000000000093', 2,
'The Bethesda System for reporting thyroid cytopathology includes:',
'Two categories only', 'Six categories from non-diagnostic to malignant, each with associated malignancy risk and management recommendations', 'Only benign or malignant', 'No standardized system exists',
'B', 'BETHESDA SYSTEM: standardized thyroid FNA reporting. SIX CATEGORIES: (1) NON-DIAGNOSTIC (malignancy risk 5-10%, repeat FNA); (2) BENIGN (0-3%, clinical follow-up); (3) ATYPIA of undetermined significance/follicular lesion (10-30%, repeat FNA or molecular testing); (4) FOLLICULAR NEOPLASM/suspicious (25-40%, lobectomy); (5) SUSPICIOUS for malignancy (50-75%, lobectomy or total thyroidectomy); (6) MALIGNANT (97-99%, surgery). Molecular testing (Afirma, ThyroSeq) helps with indeterminate categories (3,4). Guides surgical decision-making.', 'easy'),

('e0000393-0003-0000-0000-000000000003', 'd0000393-0000-0000-0000-000000000093', 3,
'During thyroidectomy, the recurrent laryngeal nerve:',
'Can be safely divided', 'Must be identified and preserved, running in the tracheoesophageal groove, with risk of injury causing hoarseness or airway compromise', 'Is not near the thyroid', 'Regenerates quickly if injured',
'B', 'RECURRENT LARYNGEAL NERVE in thyroidectomy: MUST be identified and preserved. COURSE: ascends in TRACHEOESOPHAGEAL GROOVE (variable), enters larynx behind cricothyroid articulation. RIGHT RLN: loops under subclavian, more lateral course; LEFT RLN: loops under aortic arch, more medial. INJURY: UNILATERAL = hoarseness (vocal cord paralysis); BILATERAL = stridor, airway obstruction (may require tracheostomy). PREVENTION: visual identification, meticulous dissection near Berry ligament (high-risk area), intraoperative nerve monitoring (optional). Preoperative laryngoscopy documents cord function.', 'easy'),

('e0000393-0004-0000-0000-000000000004', 'd0000393-0000-0000-0000-000000000093', 4,
'Hypocalcemia after thyroidectomy occurs due to:',
'Blood loss', 'Inadvertent removal or devascularization of parathyroid glands, causing hypoparathyroidism; managed with calcium and vitamin D supplementation', 'Thyroid hormone deficiency', 'Anesthesia effects',
'B', 'POST-THYROIDECTOMY HYPOCALCEMIA: due to PARATHYROID injury or removal. PARATHYROIDS: 4 glands (2 superior, 2 inferior), located posterior to thyroid, vulnerable during dissection. MECHANISMS: inadvertent removal, devascularization (blood supply disrupted), surgical trauma. PRESENTATION: perioral numbness, tingling (hands, feet), muscle cramps, Chvostek sign, Trousseau sign, severe = tetany, seizures, arrhythmias. MANAGEMENT: oral CALCIUM carbonate, VITAMIN D (calcitriol - active form), IV calcium gluconate if severe. PREVENTION: identify and preserve parathyroids, autotransplant if devascularized. Most cases temporary (resolves weeks to months).', 'easy'),

('e0000393-0005-0000-0000-000000000005', 'd0000393-0000-0000-0000-000000000093', 5,
'Papillary thyroid carcinoma is characterized by:',
'Poor prognosis', 'Excellent prognosis, lymphatic spread, Orphan Annie nuclei on pathology, and association with radiation exposure', 'Only hematogenous spread', 'Requires chemotherapy',
'B', 'PAPILLARY THYROID CARCINOMA: most common thyroid malignancy (80-85%). FEATURES: EXCELLENT PROGNOSIS (>95% 10-year survival), young patients, females > males. PATHOLOGY: "ORPHAN ANNIE" nuclei (clear, ground-glass), nuclear grooves, pseudoinclusions, psammoma bodies. SPREAD: primarily LYMPHATIC (cervical nodes common, does not worsen prognosis in young patients). RISK FACTORS: RADIATION exposure, family history. VARIANTS: classical, follicular variant, tall cell (more aggressive). TREATMENT: thyroidectomy (total for larger tumors), radioactive iodine (selected cases), TSH suppression. Excellent prognosis overall.', 'easy'),

('e0000393-0006-0000-0000-000000000006', 'd0000393-0000-0000-0000-000000000093', 6,
'Medullary thyroid carcinoma:',
'Arises from follicular cells', 'Arises from parafollicular C-cells, secretes calcitonin, can be familial (MEN2), and requires total thyroidectomy with central lymph node dissection', 'Is treated with radioactive iodine', 'Has excellent prognosis like papillary',
'B', 'MEDULLARY THYROID CARCINOMA (MTC): arises from PARAFOLLICULAR C-CELLS. MARKER: CALCITONIN (also CEA) - used for diagnosis and surveillance. GENETICS: 25% FAMILIAL associated with MEN2A, MEN2B, or familial MTC (RET proto-oncogene mutations). Screen all MTC patients for RET mutation. SPORADIC: 75%, unifocal. PRESENTATION: thyroid mass, may have diarrhea (calcitonin effect), flushing. TREATMENT: TOTAL THYROIDECTOMY with CENTRAL LYMPH NODE DISSECTION (high nodal metastasis rate). NO radioactive iodine (C-cells do not take up iodine). Prognosis intermediate. Prophylactic thyroidectomy for RET mutation carriers.', 'medium'),

('e0000393-0007-0000-0000-000000000007', 'd0000393-0000-0000-0000-000000000093', 7,
'Primary hyperparathyroidism is most commonly caused by:',
'Parathyroid carcinoma', 'Single parathyroid adenoma (85%), causing hypercalcemia with elevated or inappropriately normal PTH', 'Four-gland hyperplasia always', 'Vitamin D toxicity',
'B', 'PRIMARY HYPERPARATHYROIDISM: autonomous PTH overproduction. CAUSES: Single ADENOMA (85%), four-gland HYPERPLASIA (10-15%, associated with MEN1, MEN2A), double adenoma (4%), CARCINOMA (1%). BIOCHEMISTRY: HYPERCALCEMIA with elevated or INAPPROPRIATELY NORMAL PTH (should be suppressed in hypercalcemia). Also: hypophosphatemia, elevated urine calcium. PRESENTATION: "stones, bones, groans, moans, psychiatric overtones" (nephrolithiasis, osteoporosis, abdominal pain, muscle weakness, depression). DIAGNOSIS: labs, localization (sestamibi scan, ultrasound, 4D CT). TREATMENT: parathyroidectomy (curative).', 'easy'),

('e0000393-0008-0000-0000-000000000008', 'd0000393-0000-0000-0000-000000000093', 8,
'Parathyroidectomy is indicated for hyperparathyroidism when:',
'All patients require surgery', 'Symptomatic disease, or asymptomatic with calcium greater than 1 mg/dL above normal, creatinine clearance less than 60, T-score less than minus 2.5, age less than 50, or nephrolithiasis', 'Never indicated', 'Only if PTH is extremely high',
'B', 'PARATHYROIDECTOMY INDICATIONS (asymptomatic primary hyperparathyroidism - 4th Workshop Guidelines): (1) Serum calcium >1 mg/dL above upper normal; (2) CrCl <60 mL/min; (3) T-score <-2.5 at any site, vertebral fracture; (4) Age <50 years; (5) Nephrolithiasis or nephrocalcinosis. SYMPTOMATIC patients: always surgical candidates. Also consider if unable to undergo surveillance or patient preference. SURGERY: focused (minimally invasive with preoperative localization, intraoperative PTH monitoring) or bilateral exploration. Cure rate >95% in experienced hands.', 'medium'),

('e0000393-0009-0000-0000-000000000009', 'd0000393-0000-0000-0000-000000000093', 9,
'Intraoperative parathyroid hormone (PTH) monitoring:',
'Is not useful', 'Confirms successful adenoma removal with a greater than 50% drop in PTH levels within 10 minutes, allowing focused parathyroidectomy', 'Is only for cancer', 'Replaces preoperative localization',
'B', 'INTRAOPERATIVE PTH (ioPTH) MONITORING: used during parathyroidectomy. PTH HALF-LIFE: 3-5 minutes. MIAMI CRITERIA: PTH drop >50% from highest pre-incision or pre-excision level at 10 minutes post-excision predicts cure. ALLOWS: FOCUSED (minimally invasive) parathyroidectomy - remove localized adenoma, confirm cure with ioPTH, avoid bilateral exploration. If PTH does not drop adequately: search for additional abnormal glands (multigland disease, missed adenoma). Does NOT replace preoperative localization (sestamibi, ultrasound, 4D CT) but COMPLEMENTS it. Improves success rates.', 'medium'),

('e0000393-0010-0000-0000-000000000010', 'd0000393-0000-0000-0000-000000000093', 10,
'Thyroid storm is a surgical emergency that:',
'Can be ignored', 'Is a life-threatening thyrotoxic crisis that may occur after thyroid surgery or in untreated hyperthyroidism, requiring beta-blockers, thionamides, iodine, and steroids', 'Only occurs in hypothyroidism', 'Is treated with more thyroid hormone',
'B', 'THYROID STORM: life-threatening severe THYROTOXICOSIS. TRIGGERS: surgery (including thyroid surgery), infection, trauma, iodine load in uncontrolled hyperthyroidism. FEATURES: high fever, tachycardia/arrhythmias, altered mental status, GI symptoms, heart failure. DIAGNOSIS: clinical (Burch-Wartofsky score). TREATMENT: (1) BETA-BLOCKERS (propranolol - also blocks T4 to T3 conversion); (2) THIONAMIDES (PTU preferred - blocks synthesis and conversion); (3) IODINE (SSKI or Lugol - after thionamides, blocks release); (4) STEROIDS (blocks conversion, supports adrenals); (5) Cooling, supportive care. PREVENTION: ensure euthyroid before elective thyroid surgery.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 93 (Thyroid and Parathyroid Surgery) with 10 self-assessment questions inserted' as status;
