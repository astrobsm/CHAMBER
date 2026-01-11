-- CME Article 35: Surgical Nutrition - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040035-0000-0000-0000-000000000035', 'c4000031-0000-0000-0000-000000000031', 'a0000004-0000-0000-0000-000000000004', 'Nutritional Support in Surgery', 'Enteral and Parenteral Nutrition', 'Review of nutritional assessment and support in surgical patients covering enteral and parenteral approaches.', 'UNTH Surgery Department', 25, 1.5, 'medium', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040035-0000-0000-0000-000000000035', 'introduction', 1, 'Introduction', 'Malnutrition in surgical patients: 30-50% prevalence. Affects wound healing, immune function, outcomes. Assessment: albumin, prealbumin, weight loss, BMI. If the gut works, use it - enteral preferred over parenteral.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040035-0000-0000-0000-000000000035', 'learning_objectives', 2, 'Learning Objectives', '1. Assess nutritional status\n2. Calculate nutritional needs\n3. Choose enteral vs parenteral\n4. Select enteral access route\n5. Manage TPN complications\n6. Know refeeding syndrome\n7. Plan post-op nutrition');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040035-0000-0000-0000-000000000035', 'content', 3, 'Nutritional Assessment', 'Anthropometric: weight, BMI, arm circumference. Biochemical: albumin (half-life 21 days), prealbumin (2-3 days), transferrin. Significant weight loss: >10% in 6 months. Severely malnourished: albumin <3, weight loss >15%.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040035-0000-0000-0000-000000000035', 'content', 4, 'Enteral Nutrition', 'Route: NG, NJ, gastrostomy, jejunostomy. Formulas: standard, elemental, disease-specific. Start early post-op if possible. Benefits: maintains gut barrier, cheaper, fewer complications. Contraindicated: obstruction, severe ileus, high-output fistula.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040035-0000-0000-0000-000000000035', 'content', 5, 'Parenteral Nutrition', 'TPN: for non-functional GI tract. Central line required for >10% dextrose. Complications: line infection, hyperglycemia, liver dysfunction, refeeding syndrome. Refeeding: hypophosphatemia, hypokalemia, hypomagnesemia in malnourished patients.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040035-0000-0000-0000-000000000035', 'key_points', 6, 'Key Points', 'If gut works, use it. Prealbumin better short-term marker. TPN needs central access. Watch for refeeding syndrome. Early enteral feeding preferred. Hypophosphatemia hallmark of refeeding.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040035-0000-0000-0000-000000000035', 1, 'Preferred route for nutritional support:', 'TPN', 'Peripheral parenteral', 'Enteral', 'IV fluids only', 'None', 'C', 'Enteral nutrition preferred if gut works'),
('d0040035-0000-0000-0000-000000000035', 2, 'Half-life of albumin:', '2-3 days', '7 days', '21 days', '60 days', '1 day', 'C', 'Albumin half-life is approximately 21 days'),
('d0040035-0000-0000-0000-000000000035', 3, 'Hallmark electrolyte abnormality in refeeding:', 'Hypernatremia', 'Hypocalcemia', 'Hypophosphatemia', 'Hyperkalemia', 'Hyponatremia', 'C', 'Hypophosphatemia is hallmark of refeeding'),
('d0040035-0000-0000-0000-000000000035', 4, 'Better short-term nutritional marker:', 'Albumin', 'Prealbumin', 'Globulin', 'Hemoglobin', 'Creatinine', 'B', 'Prealbumin has shorter half-life (2-3 days)'),
('d0040035-0000-0000-0000-000000000035', 5, 'TPN requires central access due to:', 'Cost', 'High dextrose concentration', 'Volume', 'Patient preference', 'Tradition', 'B', 'High dextrose (>10%) requires central access');
