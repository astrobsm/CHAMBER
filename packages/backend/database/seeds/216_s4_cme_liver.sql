-- CME Article 16: Hepatobiliary Surgery - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040016-0000-0000-0000-000000000016', 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004', 'Liver Tumors: Surgical Approach', 'Diagnosis and Management of Benign and Malignant Lesions', 'Review of liver tumors covering imaging, diagnosis, and surgical management of HCC, cholangiocarcinoma, and metastatic disease.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040016-0000-0000-0000-000000000016', 'introduction', 1, 'Introduction', 'Liver tumors: benign (hemangioma, FNH, adenoma) and malignant (HCC, cholangiocarcinoma, metastases). HCC risk factors: cirrhosis, HBV, HCV. Colorectal liver metastases: surgical resection curative in select patients.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040016-0000-0000-0000-000000000016', 'learning_objectives', 2, 'Learning Objectives', '1. Characterize liver lesions by imaging\n2. Diagnose HCC without biopsy\n3. Apply staging systems\n4. Assess resectability\n5. Calculate future liver remnant\n6. Select appropriate treatment\n7. Understand transplant criteria');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040016-0000-0000-0000-000000000016', 'content', 3, 'HCC Diagnosis', 'LI-RADS classification for at-risk patients. Arterial enhancement + washout on CT/MRI diagnostic. AFP elevated in 50-70%. No biopsy needed if imaging typical. Staging: BCLC considers tumor, liver function, performance status.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040016-0000-0000-0000-000000000016', 'content', 4, 'Surgical Options', 'Resection: non-cirrhotic or Child A cirrhosis, adequate FLR (>20% normal, >30-40% cirrhotic). Transplant: Milan criteria (single ≤5cm or ≤3 tumors each ≤3cm). Ablation: small HCC, comorbidities. TACE for unresectable.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040016-0000-0000-0000-000000000016', 'content', 5, 'Colorectal Liver Metastases', 'Resection curative in select patients (5-year survival 40-50%). Criteria: complete resection, adequate FLR, control of primary. Bilobar disease may require staged procedures. Neoadjuvant chemo for borderline resectable.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040016-0000-0000-0000-000000000016', 'key_points', 6, 'Key Points', 'Arterial enhancement + washout diagnostic for HCC. Milan criteria for transplant. FLR >20% normal, >40% cirrhotic. Colorectal liver mets: resection can be curative. BCLC staging guides HCC treatment.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040016-0000-0000-0000-000000000016', 1, 'Most common benign liver tumor:', 'Adenoma', 'FNH', 'Hemangioma', 'Hamartoma', 'Cyst', 'C', 'Hemangioma is most common benign liver tumor'),
('d0040016-0000-0000-0000-000000000016', 2, 'Milan criteria for HCC transplant:', 'Any size single tumor', 'Single ≤5cm or ≤3 tumors each ≤3cm', 'Up to 5 tumors', 'No size limits', 'Extrahepatic disease OK', 'B', 'Milan: single ≤5cm or ≤3 tumors each ≤3cm'),
('d0040016-0000-0000-0000-000000000016', 3, 'Imaging feature diagnostic of HCC:', 'Hypovascularity', 'Arterial enhancement with washout', 'Ring enhancement', 'Delayed enhancement', 'No enhancement', 'B', 'Arterial enhancement with washout is diagnostic'),
('d0040016-0000-0000-0000-000000000016', 4, 'Minimum FLR for resection in cirrhotic liver:', '10%', '20%', '30-40%', '50%', '60%', 'C', 'FLR >30-40% required for cirrhotic liver'),
('d0040016-0000-0000-0000-000000000016', 5, 'Treatment for unresectable HCC:', 'Observation', 'TACE', 'Radiation only', 'Chemotherapy only', 'Resection', 'B', 'TACE for unresectable HCC');
