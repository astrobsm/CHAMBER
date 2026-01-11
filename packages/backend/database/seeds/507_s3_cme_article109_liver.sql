-- ============================================================================
-- SURGERY 3 CME ARTICLE 109: Liver Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000175-0000-0000-0000-000000000175', 'a0000003-0000-0000-0000-000000000003', 'Liver Surgery', 'Surgical management of liver tumors and trauma')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000409-0000-0000-0000-000000000109',
    'c0000175-0000-0000-0000-000000000175',
    'a0000003-0000-0000-0000-000000000003',
    'Liver Surgery: Anatomy, Resection Principles, and Tumor Management',
    'Comprehensive Hepatic Surgical Care',
    'This article covers hepatic surgical anatomy (Couinaud classification), liver resection techniques, management of hepatocellular carcinoma and colorectal liver metastases, benign liver tumors, and hepatic trauma.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'hard'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000409-0001-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 1,
'The Couinaud classification divides the liver into:',
'Two lobes only', 'Eight functionally independent segments based on portal vein and hepatic vein anatomy, allowing for anatomic segmental resection', 'Four quadrants', 'Left and right only',
'B', 'COUINAUD CLASSIFICATION: functional hepatic anatomy for surgery. Divides liver into 8 SEGMENTS (I-VIII) based on PORTAL VEIN branches and HEPATIC VEIN drainage. Each segment is functionally INDEPENDENT (own portal triad, own hepatic vein drainage). Allows ANATOMIC resection along vascular planes. SEGMENTS: I = caudate (unique - drains directly to IVC); II, III = left lateral section; IV = left medial section (IVa, IVb); V, VIII = right anterior section; VI, VII = right posterior section. LEFT liver = II, III, IV (left portal vein). RIGHT liver = V, VI, VII, VIII (right portal vein). Falciform ligament is external landmark but not true plane.', 'medium'),

('e0000409-0002-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 2,
'A right hepatectomy removes:',
'Segments II and III', 'Segments V, VI, VII, and VIII along the principal plane defined by the middle hepatic vein', 'Only segment I', 'The entire liver',
'B', 'RIGHT HEPATECTOMY (Right Hemihepatectomy): major liver resection. REMOVES: segments V, VI, VII, VIII (right liver, approximately 60% of liver volume). PLANE of transection: PRINCIPAL PLANE (Cantlie line) - from gallbladder fossa to IVC, corresponds to MIDDLE HEPATIC VEIN. Divides right and left liver. PROCEDURE: mobilize right liver, divide right hepatic artery, right portal vein, right hepatic duct, right hepatic vein, transect parenchyma. EXTENDED right hepatectomy (right trisectionectomy): also removes segment IV. FUTURE LIVER REMNANT (FLR) must be adequate (>20-30% in healthy liver, >40% if cirrhotic) to avoid post-hepatectomy liver failure.', 'medium'),

('e0000409-0003-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 3,
'Hepatocellular carcinoma (HCC) is best treated surgically when:',
'In all cases regardless of liver function', 'The tumor is resectable and the patient has adequate liver function reserve to tolerate resection, with cirrhosis being a major determinant of candidacy', 'Only in metastatic disease', 'Liver function is irrelevant',
'B', 'HCC SURGICAL MANAGEMENT: potentially curative but depends on tumor AND LIVER factors. IDEAL CANDIDATES: (1) Resectable tumor (single, no major vascular invasion, anatomically feasible). (2) Adequate LIVER FUNCTION reserve - cirrhosis is major determinant. Child-Pugh A may tolerate resection; Child-Pugh B/C: high mortality, consider transplant or locoregional therapy. (3) Adequate future liver remnant. ALTERNATIVES: liver TRANSPLANTATION (best for HCC within Milan criteria in cirrhotics - cures both cancer and cirrhosis), locoregional ablation (RFA, microwave), TACE, systemic therapy. BCLC staging guides treatment by tumor burden, liver function, performance status.', 'medium'),

('e0000409-0004-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 4,
'Colorectal liver metastases (CRLM):',
'Are never resectable', 'Can be resected with curative intent in selected patients, with 5-year survival rates of 40-50% after complete resection', 'Indicate terminal disease always', 'Should only be treated palliatively',
'B', 'COLORECTAL LIVER METASTASES (CRLM): unique among metastases - RESECTION can be curative. CRITERIA for resection (current - more liberal): ability to achieve R0 resection of all disease, adequate future liver remnant (>20-30%), no unresectable extrahepatic disease. Number of metastases no longer absolute contraindication. OUTCOMES: 5-year survival 40-50% after complete resection (vs <10% without surgery). Modern chemotherapy (FOLFOX, FOLFIRI + biologics) may convert initially unresectable to resectable. STAGED resections and portal vein embolization extend resectability. Also consider ablation for small lesions.', 'medium'),

('e0000409-0005-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 5,
'The Pringle maneuver:',
'Controls hepatic vein bleeding', 'Involves clamping the hepatoduodenal ligament to occlude the portal vein and hepatic artery, reducing blood loss during liver parenchymal transection', 'Is never used', 'Clamps the aorta',
'B', 'PRINGLE MANEUVER: vascular control during hepatic surgery. TECHNIQUE: clamp HEPATODUODENAL LIGAMENT (containing portal vein, hepatic artery, common bile duct) with vascular clamp or tourniquet. EFFECT: occludes inflow (portal vein + hepatic artery), reduces BLOOD LOSS during parenchymal transection. Does NOT control hepatic vein backbleeding (retrograde from IVC). ISCHEMIA TIME: intermittent clamping (15 min on, 5 min off) preferred; normal liver tolerates 60-90 min cumulative. Cirrhotic liver less tolerant. Alternative: selective inflow control (ligate vessels to resected segments only). Key maneuver for hemorrhage control and reducing transfusion.', 'medium'),

('e0000409-0006-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 6,
'Portal vein embolization (PVE) before major hepatectomy:',
'Is contraindicated', 'Is used to induce hypertrophy of the future liver remnant when it is inadequate, reducing the risk of post-hepatectomy liver failure', 'Shrinks the tumor', 'Is only for trauma',
'B', 'PORTAL VEIN EMBOLIZATION (PVE): preoperative intervention to increase FUTURE LIVER REMNANT (FLR). INDICATION: planned major hepatectomy where FLR is inadequate (<20-30% in normal liver, <40% in compromised liver). TECHNIQUE: percutaneous embolization of portal vein branches supplying segments to be resected. EFFECT: atrophy of embolized segments, compensatory HYPERTROPHY of FLR (typically 10-40% increase in 4-6 weeks). Allows safe resection that would otherwise cause post-hepatectomy liver failure. ALPPS (Associating Liver Partition and Portal vein ligation for Staged hepatectomy): alternative for rapid hypertrophy. Confirm hypertrophy with volumetry before proceeding.', 'medium'),

('e0000409-0007-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 7,
'Hepatic adenoma:',
'Is always malignant', 'Is a benign tumor associated with oral contraceptive use that has a risk of hemorrhage and malignant transformation, and is often resected when larger than 5 cm', 'Never requires treatment', 'Is most common in men',
'B', 'HEPATIC ADENOMA: benign liver tumor. ASSOCIATIONS: ORAL CONTRACEPTIVES (estrogen), anabolic steroids, glycogen storage disease. DEMOGRAPHICS: young women (OCP use). RISKS: HEMORRHAGE (can rupture, causing hemoperitoneum), malignant TRANSFORMATION to HCC (especially in men, large tumors, beta-catenin mutated subtype). MANAGEMENT: stop OCPs (may regress). RESECTION indicated for: size >5 CM, symptomatic, hemorrhage, suspected malignancy, male patient. Subtype classification (HNF1-alpha, inflammatory, beta-catenin, unclassified) helps guide management. Beta-catenin positive: highest malignancy risk - resect regardless of size. Surveillance for smaller lesions.', 'medium'),

('e0000409-0008-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 8,
'Focal nodular hyperplasia (FNH):',
'Is premalignant', 'Is a benign hyperplastic lesion with no malignant potential that can be managed conservatively in most cases, with characteristic central scar on imaging', 'Always requires resection', 'Is caused by hepatitis',
'B', 'FOCAL NODULAR HYPERPLASIA (FNH): benign liver lesion. PATHOLOGY: hyperplastic response to vascular malformation, not true neoplasm. NO malignant potential. IMAGING: CENTRAL SCAR (classically enhances on delayed phase), spoke-wheel arterial pattern. Often incidental finding. DEMOGRAPHICS: young women, but unlike adenoma, not caused by OCPs. MANAGEMENT: CONSERVATIVE (no treatment) if imaging is characteristic and asymptomatic. No need for routine surveillance. SURGERY only if: symptomatic (pain from large lesion), diagnostic uncertainty (cannot exclude adenoma or malignancy). Differentiate from adenoma (which has hemorrhage and malignancy risk).', 'easy'),

('e0000409-0009-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 9,
'Non-operative management of blunt hepatic trauma:',
'Is never appropriate', 'Is successful in most hemodynamically stable patients and involves observation, serial exams, hemoglobin monitoring, and angioembolization when indicated', 'Requires all patients to have surgery', 'Is only for minor injuries',
'B', 'NON-OPERATIVE MANAGEMENT (NOM) of blunt hepatic trauma: current standard for HEMODYNAMICALLY STABLE patients. SUCCESS: 85-90% regardless of injury grade. REQUIREMENTS: hemodynamic STABILITY (or response to resuscitation), no other indication for laparotomy, ability to monitor closely (serial exams, hemoglobin). ANGIOEMBOLIZATION: adjunct for active extravasation (contrast blush on CT), pseudoaneurysm. Reduces need for surgery in high-grade injuries. FAILURE: hemodynamic instability, transfusion requirement, peritonitis. High-grade injuries (IV-V): higher failure rate but NOM still attempted if stable. Surgery: packing (damage control), anatomic resection rarely needed.', 'medium'),

('e0000409-0010-0000-0000-000000000109', 'd0000409-0000-0000-0000-000000000109', 10,
'Post-hepatectomy liver failure:',
'Is not a concern', 'Occurs when the liver remnant is insufficient, presenting with jaundice, coagulopathy, encephalopathy, and ascites, and is prevented by ensuring adequate future liver remnant', 'Is treated with more surgery', 'Only occurs in cirrhotic patients',
'B', 'POST-HEPATECTOMY LIVER FAILURE (PHLF): most serious complication of major hepatic resection. CAUSE: insufficient FUTURE LIVER REMNANT (FLR) volume or function. RISK FACTORS: extensive resection, cirrhosis, steatosis, chemotherapy-induced liver injury, preoperative liver dysfunction. PRESENTATION: JAUNDICE (rising bilirubin), COAGULOPATHY (prolonged INR), ENCEPHALOPATHY, ascites - typically peaks POD 5. DEFINITION (ISGLS): elevated INR and bilirubin on or after POD 5. MORTALITY: high (up to 50% in severe cases). PREVENTION: ensure adequate FLR (volumetry), use PVE if needed, optimize liver function preoperatively. TREATMENT: supportive (nutrition, lactulose, fresh frozen plasma). Liver transplant rarely feasible.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 109 (Liver Surgery) with 10 self-assessment questions inserted' as status;
