-- CME Article 19: Esophageal Cancer - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040019-0000-0000-0000-000000000019', 'c4000026-0000-0000-0000-000000000026', 'a0000004-0000-0000-0000-000000000004', 'Esophageal Cancer: Surgical Management', 'Diagnosis, Staging, and Esophagectomy', 'Review of esophageal cancer covering types, staging, neoadjuvant therapy, and surgical approaches.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040019-0000-0000-0000-000000000019', 'introduction', 1, 'Introduction', 'Esophageal cancer: squamous cell (upper/middle, smoking/alcohol) and adenocarcinoma (lower, GERD/Barrett). Rising incidence of adenocarcinoma. Poor prognosis (5-year survival 20%). Dysphagia to solids is hallmark symptom.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040019-0000-0000-0000-000000000019', 'learning_objectives', 2, 'Learning Objectives', '1. Differentiate histologic types\n2. Understand Barrett esophagus\n3. Stage esophageal cancer\n4. Select surgical approach\n5. Implement neoadjuvant therapy\n6. Manage anastomotic complications\n7. Assess nutritional needs');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040019-0000-0000-0000-000000000019', 'content', 3, 'Staging', 'EGD with biopsy for diagnosis. EUS for T/N staging (best for local disease). PET-CT for M staging. Bronchoscopy if proximal tumor (airway invasion). Staging determines resectability and need for neoadjuvant therapy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040019-0000-0000-0000-000000000019', 'content', 4, 'Treatment', 'T1a: endoscopic resection. T1b-T4a N0-N+: neoadjuvant chemoRT (CROSS protocol) then esophagectomy. Approaches: transhiatal, Ivor Lewis (right thoracotomy), McKeown (3-field). Gastric conduit most common. Minimally invasive options.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040019-0000-0000-0000-000000000019', 'content', 5, 'Complications', 'Anastomotic leak (10-15%): most serious complication. Pulmonary complications common. Recurrent laryngeal nerve injury (hoarseness). Chyle leak. Conduit necrosis rare but devastating. Nutritional support essential.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040019-0000-0000-0000-000000000019', 'key_points', 6, 'Key Points', 'Adenocarcinoma rising (GERD/Barrett). Dysphagia hallmark symptom. EUS for T/N staging. Neoadjuvant chemoRT standard for T2+. Anastomotic leak most serious complication.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040019-0000-0000-0000-000000000019', 1, 'Risk factor for esophageal adenocarcinoma:', 'Smoking', 'Alcohol', 'Barrett esophagus', 'Achalasia', 'HPV', 'C', 'Barrett esophagus is major risk factor for adenocarcinoma'),
('d0040019-0000-0000-0000-000000000019', 2, 'Best modality for local T staging:', 'CT', 'PET', 'EUS', 'MRI', 'X-ray', 'C', 'EUS is best for local T staging'),
('d0040019-0000-0000-0000-000000000019', 3, 'Standard neoadjuvant protocol:', 'Chemotherapy alone', 'Radiation alone', 'Chemoradiation (CROSS)', 'Surgery first', 'Immunotherapy', 'C', 'CROSS protocol (chemoRT) is standard neoadjuvant'),
('d0040019-0000-0000-0000-000000000019', 4, 'Most serious complication after esophagectomy:', 'Pneumonia', 'Anastomotic leak', 'DVT', 'Wound infection', 'Atelectasis', 'B', 'Anastomotic leak is most serious complication'),
('d0040019-0000-0000-0000-000000000019', 5, 'Most common conduit for esophageal reconstruction:', 'Jejunum', 'Colon', 'Stomach', 'Small bowel', 'Skin tube', 'C', 'Gastric conduit is most common');
