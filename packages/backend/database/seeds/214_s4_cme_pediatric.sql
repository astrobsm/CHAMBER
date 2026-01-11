-- CME Article 14: Pediatric Congenital Anomalies - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040014-0000-0000-0000-000000000014', 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004', 'Pediatric Surgical Emergencies', 'Congenital Anomalies and Neonatal Surgery', 'Review of common congenital surgical conditions including pyloric stenosis, intussusception, Hirschsprung disease, and esophageal atresia.', 'UNTH Surgery Department', 35, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040014-0000-0000-0000-000000000014', 'introduction', 1, 'Introduction', 'Pediatric surgical emergencies require prompt recognition. Key conditions: pyloric stenosis (3-6 weeks), intussusception (6-36 months), Hirschsprung (failure to pass meconium), esophageal atresia (polyhydramnios, drooling newborn).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040014-0000-0000-0000-000000000014', 'learning_objectives', 2, 'Learning Objectives', '1. Recognize pyloric stenosis presentation\n2. Diagnose intussusception\n3. Identify Hirschsprung disease\n4. Manage esophageal atresia\n5. Apply appropriate imaging\n6. Initiate resuscitation\n7. Determine surgical timing');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040014-0000-0000-0000-000000000014', 'content', 3, 'Pyloric Stenosis', 'Age 3-6 weeks, males 4:1. Nonbilious projectile vomiting, olive mass RUQ, hypochloremic hypokalemic metabolic alkalosis. Ultrasound: pyloric muscle >3mm thick, >15mm long. Treatment: correct electrolytes first, then pyloromyotomy (Ramstedt).');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040014-0000-0000-0000-000000000014', 'content', 4, 'Intussusception', 'Peak 6-36 months. Colicky abdominal pain, vomiting, currant jelly stools, sausage-shaped mass. Lead point in older children. Ultrasound: target sign. Treatment: air/contrast enema reduction if no peritonitis. Surgery if reduction fails or perforation.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040014-0000-0000-0000-000000000014', 'content', 5, 'Hirschsprung Disease', 'Failure to pass meconium within 48 hours. Aganglionosis from distal rectum extending proximally. Transition zone on contrast enema. Rectal biopsy: absent ganglion cells, hypertrophied nerve fibers. Treatment: pull-through procedure.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040014-0000-0000-0000-000000000014', 'key_points', 6, 'Key Points', 'Pyloric stenosis: projectile vomiting, olive mass, alkalosis. Intussusception: target sign, air enema reduction. Hirschsprung: delayed meconium, rectal biopsy diagnostic. Esophageal atresia: unable to pass NG tube.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040014-0000-0000-0000-000000000014', 1, 'Electrolyte abnormality in pyloric stenosis:', 'Hyperkalemic metabolic acidosis', 'Hypochloremic hypokalemic metabolic alkalosis', 'Hypernatremic metabolic acidosis', 'Hyponatremic metabolic alkalosis', 'Respiratory acidosis', 'B', 'Pyloric stenosis causes hypochloremic hypokalemic metabolic alkalosis'),
('d0040014-0000-0000-0000-000000000014', 2, 'Target sign on ultrasound suggests:', 'Pyloric stenosis', 'Intussusception', 'Appendicitis', 'Volvulus', 'Meckel diverticulum', 'B', 'Target sign is classic for intussusception'),
('d0040014-0000-0000-0000-000000000014', 3, 'Initial treatment for uncomplicated intussusception:', 'Surgery', 'Observation', 'Air/contrast enema reduction', 'IV antibiotics', 'NG decompression only', 'C', 'Air or contrast enema reduction is initial treatment'),
('d0040014-0000-0000-0000-000000000014', 4, 'Diagnostic test for Hirschsprung disease:', 'Ultrasound', 'CT scan', 'Rectal biopsy', 'Barium swallow', 'Colonoscopy', 'C', 'Rectal biopsy showing absent ganglion cells is diagnostic'),
('d0040014-0000-0000-0000-000000000014', 5, 'Pyloric muscle thickness diagnostic of pyloric stenosis:', '>2 mm', '>3 mm', '>4 mm', '>5 mm', '>6 mm', 'B', 'Pyloric muscle >3mm thick is diagnostic');
