-- CME Article 18: Chest Trauma - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040018-0000-0000-0000-000000000018', 'c4000015-0000-0000-0000-000000000015', 'a0000004-0000-0000-0000-000000000004', 'Chest Trauma: Emergency Management', 'Assessment and Treatment of Thoracic Injuries', 'Review of chest trauma covering pneumothorax, hemothorax, flail chest, cardiac injuries, and indications for thoracotomy.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040018-0000-0000-0000-000000000018', 'introduction', 1, 'Introduction', 'Chest trauma causes 25% of trauma deaths. Blunt (MVA, falls) vs penetrating (stab, GSW). Immediately life-threatening: airway obstruction, tension pneumothorax, open pneumothorax, massive hemothorax, cardiac tamponade, flail chest.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040018-0000-0000-0000-000000000018', 'learning_objectives', 2, 'Learning Objectives', '1. Identify life-threatening chest injuries\n2. Perform needle decompression\n3. Insert chest tube\n4. Recognize cardiac tamponade\n5. Identify indications for thoracotomy\n6. Manage flail chest\n7. Evaluate for aortic injury');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040018-0000-0000-0000-000000000018', 'content', 3, 'Immediate Management', 'Tension pneumothorax: needle decompression 2nd ICS MCL, then chest tube. Open pneumothorax: occlusive dressing on 3 sides, chest tube. Massive hemothorax: chest tube, autotransfusion. Cardiac tamponade: Beck triad, pericardiocentesis/thoracotomy.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040018-0000-0000-0000-000000000018', 'content', 4, 'Thoracotomy Indications', 'Emergent: pulseless electrical activity, >1500mL initial chest tube output, >200mL/hr for 2-4 hours, cardiac arrest. Resuscitative thoracotomy: best outcomes in penetrating cardiac trauma. Open cardiac massage, aortic cross-clamp.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040018-0000-0000-0000-000000000018', 'content', 5, 'Specific Injuries', 'Flail chest: paradoxical motion, pulmonary contusion underneath. Treat contusion not flail (analgesia, ventilator if needed). Aortic injury: deceleration mechanism, widened mediastinum, CTA diagnosis. Tracheobronchial injury: persistent air leak.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040018-0000-0000-0000-000000000018', 'key_points', 6, 'Key Points', 'Tension pneumothorax: clinical diagnosis, immediate decompression. Massive hemothorax >1500mL. Beck triad: hypotension, JVD, muffled heart sounds. Flail chest: treat underlying contusion. Widened mediastinum suggests aortic injury.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040018-0000-0000-0000-000000000018', 1, 'Needle decompression location for tension pneumothorax:', '2nd ICS MCL', '4th ICS MCL', '5th ICS AAL', '2nd ICS AAL', '6th ICS MAL', 'A', 'Needle decompression at 2nd ICS midclavicular line'),
('d0040018-0000-0000-0000-000000000018', 2, 'Massive hemothorax is defined as:', '>500 mL', '>1000 mL', '>1500 mL', '>2000 mL', '>2500 mL', 'C', 'Massive hemothorax = >1500mL'),
('d0040018-0000-0000-0000-000000000018', 3, 'Beck triad includes all EXCEPT:', 'Hypotension', 'JVD', 'Muffled heart sounds', 'Tachycardia', 'All are included', 'D', 'Beck triad: hypotension, JVD, muffled heart sounds'),
('d0040018-0000-0000-0000-000000000018', 4, 'Indication for emergent thoracotomy:', '>500 mL chest tube output', '>1500 mL initial output', '<100 mL output', 'Simple pneumothorax', 'Rib fractures', 'B', '>1500mL initial output indicates need for thoracotomy'),
('d0040018-0000-0000-0000-000000000018', 5, 'Widened mediastinum suggests:', 'Pulmonary contusion', 'Aortic injury', 'Cardiac contusion', 'Esophageal injury', 'Pneumothorax', 'B', 'Widened mediastinum suggests aortic injury');
