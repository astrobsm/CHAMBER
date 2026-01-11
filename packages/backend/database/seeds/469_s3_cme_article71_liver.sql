-- ============================================================================
-- SURGERY 3 CME ARTICLE 71: Liver and Hepatobiliary Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000137-0000-0000-0000-000000000137', 'a0000003-0000-0000-0000-000000000003', 'Liver and Hepatobiliary Surgery', 'Hepatic anatomy, tumors, and liver resection')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000371-0000-0000-0000-000000000071',
    'c0000137-0000-0000-0000-000000000137',
    'a0000003-0000-0000-0000-000000000003',
    'Liver Surgery: Anatomy, Tumors, and Resection',
    'From Benign Lesions to Metastasectomy',
    'This article covers Couinaud segmental liver anatomy, benign liver tumors (hemangioma, FNH, adenoma), hepatocellular carcinoma staging and treatment, colorectal liver metastases, liver resection terminology, and postoperative liver failure.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000371-0001-0000-0000-000000000001', 'd0000371-0000-0000-0000-000000000071', 1,
'Couinaud classification divides the liver into how many segments?',
'4 segments', '6 segments', '8 segments based on portal vein and hepatic vein distribution', '10 segments', NULL,
'C', 'Couinaud classification: liver divided into 8 SEGMENTS based on portal vein branches (define segments) and hepatic vein courses (define planes between sectors). Segment I (caudate) is unique - drains directly to IVC. Right liver: segments V-VIII (V, VIII anterior; VI, VII posterior). Left liver: segments II-IV (II, III lateral; IVa, IVb medial). Portal pedicles at center of segments; hepatic veins at periphery (between segments). Allows anatomic resections, better prediction of remaining liver function.', 'easy'),

('e0000371-0002-0000-0000-000000000002', 'd0000371-0000-0000-0000-000000000071', 2,
'The most common benign liver tumor is:',
'Hepatic adenoma', 'Focal nodular hyperplasia', 'Cavernous hemangioma', 'Hepatocellular carcinoma', NULL,
'C', 'Benign liver tumors: HEMANGIOMA is MOST COMMON benign liver tumor (affects 5-7% population). Cavernous type. Usually asymptomatic, incidental finding. Imaging: peripheral nodular enhancement with centripetal fill-in. Management: observation (most); surgery only if symptomatic, enlarging, or uncertain diagnosis. FOCAL NODULAR HYPERPLASIA (FNH): second most common, central scar on imaging, no malignant potential, usually observe. HEPATIC ADENOMA: associated with OCP use, risk of hemorrhage and malignant transformation, may need resection.', 'easy'),

('e0000371-0003-0000-0000-000000000003', 'd0000371-0000-0000-0000-000000000071', 3,
'Hepatic adenoma is associated with:',
'Cirrhosis and hepatitis B', 'Oral contraceptive use, with risks of hemorrhage and malignant transformation', 'Male gender predominantly', 'No treatment ever needed', NULL,
'B', 'Hepatic adenoma: benign tumor strongly associated with ORAL CONTRACEPTIVE use (also anabolic steroids, glycogen storage disease). Predominantly affects young women. Risks: HEMORRHAGE (spontaneous rupture, especially >5 cm, during pregnancy), MALIGNANT TRANSFORMATION to HCC (beta-catenin mutated subtype highest risk, 4-9% overall). Management: STOP OCPs; tumors <5 cm may regress - observe; tumors >5 cm or symptomatic - resect. All adenomas in males - resect (higher malignancy risk). Consider resection for beta-catenin mutated subtype.', 'easy'),

('e0000371-0004-0000-0000-000000000004', 'd0000371-0000-0000-0000-000000000071', 4,
'Barcelona Clinic Liver Cancer (BCLC) staging for hepatocellular carcinoma incorporates:',
'Only tumor size', 'Tumor burden, liver function (Child-Pugh), and performance status, guiding treatment selection', 'Only the number of tumors', 'Histologic grade only', NULL,
'B', 'BCLC staging for HCC: comprehensive system incorporating TUMOR BURDEN (size, number, vascular invasion, extrahepatic spread), LIVER FUNCTION (Child-Pugh score), and PERFORMANCE STATUS (ECOG). Stages guide treatment: Stage 0 (very early): single <2cm, Child A, PS 0 - resection/ablation/transplant. Stage A (early): single or up to 3 <3cm - curative intent. Stage B (intermediate): multinodular, preserved function - TACE. Stage C (advanced): portal invasion/extrahepatic, PS 1-2 - sorafenib/lenvatinib. Stage D (terminal): Child C, PS 3-4 - best supportive care.', 'medium'),

('e0000371-0005-0000-0000-000000000005', 'd0000371-0000-0000-0000-000000000071', 5,
'Milan criteria for liver transplantation in HCC require:',
'Any size tumor is acceptable', 'Single tumor 5 cm or less, OR up to 3 tumors each 3 cm or less, with no vascular invasion or extrahepatic spread', 'Tumors in both lobes', 'Metastatic disease', NULL,
'B', 'MILAN CRITERIA for liver transplant in HCC: single tumor <=5 cm OR up to 3 tumors, each <=3 cm; NO macrovascular invasion; NO extrahepatic disease. Patients meeting criteria: 5-year survival 70-75%, recurrence rate <15%. Exceeding criteria: poor outcomes historically (though expanded criteria exist - UCSF, up-to-seven). Bridging therapy (TACE, ablation) while awaiting transplant. Downstaging protocols may bring some patients within criteria. Transplant treats both tumor AND underlying cirrhosis - superior for small HCC in cirrhosis.', 'medium'),

('e0000371-0006-0000-0000-000000000006', 'd0000371-0000-0000-0000-000000000071', 6,
'Right hepatectomy removes which Couinaud segments?',
'Segments II and III', 'Segments V, VI, VII, and VIII', 'Segment IV only', 'All 8 segments', NULL,
'B', 'Liver resection terminology: RIGHT HEPATECTOMY (right hemihepatectomy): segments V, VI, VII, VIII (approximately 60% liver volume). LEFT HEPATECTOMY: segments II, III, IV (approximately 40%). LEFT LATERAL SECTIONECTOMY: segments II, III only. EXTENDED RIGHT HEPATECTOMY (right trisectionectomy): adds segment IV to right hepatectomy (V-VIII + IV). EXTENDED LEFT HEPATECTOMY: adds V, VIII. Segment I (caudate) may be included as needed. Terminology standardized by Brisbane 2000 classification. Adequate future liver remnant (FLR >20-30% normal liver) essential.', 'medium'),

('e0000371-0007-0000-0000-000000000007', 'd0000371-0000-0000-0000-000000000071', 7,
'Colorectal liver metastases:',
'Are never resectable', 'Are potentially curable with surgical resection achieving 5-year survival of 40-50% in selected patients', 'Should only be treated with chemotherapy', 'Indicate Stage II colorectal cancer', NULL,
'B', 'Colorectal liver metastases (CRLM): liver is most common metastatic site for CRC. Paradigm shift: CURATIVE RESECTION POSSIBLE. 5-year survival after R0 resection: 40-50%. Criteria for resection: technically resectable with adequate FLR, controlled primary tumor, no unresectable extrahepatic disease, medically fit. Number of metastases less important than ability to achieve complete resection. Multimodal approach: neoadjuvant/adjuvant chemotherapy, portal vein embolization (to grow FLR), two-stage hepatectomy, ALPPS procedure for marginal FLR.', 'easy'),

('e0000371-0008-0000-0000-000000000008', 'd0000371-0000-0000-0000-000000000071', 8,
'Portal vein embolization (PVE) before major hepatectomy:',
'Is used to treat portal hypertension', 'Induces hypertrophy of the future liver remnant to reduce risk of post-hepatectomy liver failure', 'Shrinks the tumor', 'Is contraindicated before surgery', NULL,
'B', 'Portal vein embolization (PVE): preoperative procedure to INDUCE HYPERTROPHY of future liver remnant (FLR). Indication: planned major hepatectomy with marginal FLR (<20-30% for normal liver, <30-40% for diseased liver). Mechanism: embolize portal branches to segments being resected - redirects portal flow to FLR, stimulating regeneration. Wait 4-6 weeks for hypertrophy (typically 10-30% increase). Assess with volumetry before and after. Reduces post-hepatectomy liver failure (PHLF). ALPPS: alternative when faster hypertrophy needed.', 'medium'),

('e0000371-0009-0000-0000-000000000009', 'd0000371-0000-0000-0000-000000000071', 9,
'Pringle maneuver during liver surgery involves:',
'Clamping the hepatic veins', 'Clamping the hepatoduodenal ligament (portal vein and hepatic artery) to control inflow and reduce bleeding', 'Ligating the IVC', 'Removing the gallbladder', NULL,
'B', 'PRINGLE MANEUVER: occlusion of hepatoduodenal ligament (portal triad) containing portal vein and hepatic artery. Purpose: controls hepatic INFLOW, reduces bleeding during liver parenchymal transection. Technique: apply vascular clamp or manual compression at hepatoduodenal ligament. Intermittent clamping (15-20 min cycles with 5 min reperfusion) reduces ischemia-reperfusion injury. Tolerates 60-90 minutes total ischemic time in healthy liver. Does not control hepatic vein back-bleeding. Ischemic preconditioning may be protective.', 'easy'),

('e0000371-0010-0000-0000-000000000010', 'd0000371-0000-0000-0000-000000000071', 10,
'Post-hepatectomy liver failure is characterized by:',
'Only elevated bilirubin', 'Impaired synthetic and excretory function (increased bilirubin, prolonged INR) on or after postoperative day 5', 'Immediate postoperative hypoglycemia only', 'Is never fatal', NULL,
'B', 'Post-hepatectomy liver failure (PHLF): International Study Group of Liver Surgery definition: impaired SYNTHETIC (prolonged INR) and EXCRETORY (increased bilirubin) function on or after POD 5. Grading: A (no change in management), B (requires intervention but not ICU), C (ICU-level care, organ support). Risk factors: small FLR, cirrhosis, steatosis, cholestasis, excessive blood loss, prolonged surgery. Prevention: adequate FLR (volumetry), PVE if needed, careful patient selection, minimize blood loss. Mortality in severe PHLF: 50%+.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 71 (Liver Surgery) with 10 self-assessment questions inserted' as status;
