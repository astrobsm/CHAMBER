-- CME Article 116: Surgical Nutrition and Metabolic Support
-- Surgery 3 Rotation

-- Create topic for this article
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES (
  'c0000181-0000-0000-0000-000000000181',
  'Surgical Nutrition and Metabolic Support',
  'a0000003-0000-0000-0000-000000000003',
  'Nutritional assessment and support in surgical patients',
  181,
  true
) ON CONFLICT (id) DO NOTHING;

-- Create CME article
INSERT INTO cme_articles (
  id, topic_id, category_id, title, subtitle, abstract, authors,
  cme_credits, estimated_reading_minutes, difficulty_level,
  version, is_published, publish_date, keywords, cover_image_url
)
VALUES (
  'd0000416-0000-0000-0000-000000000116',
  'c0000181-0000-0000-0000-000000000181',
  'a0000003-0000-0000-0000-000000000003',
  'Surgical Nutrition: Assessment, Support, and Metabolic Optimization',
  'Evidence-based nutritional interventions for surgical patients',
  'Malnutrition affects up to 50% of hospitalized surgical patients and is associated with increased complications, prolonged hospital stay, and higher mortality. This article provides a comprehensive review of nutritional screening tools, metabolic response to surgical stress, and evidence-based nutritional support strategies. We discuss the hierarchy of enteral versus parenteral nutrition, immunonutrition, and enhanced recovery protocols. Special considerations for critically ill surgical patients and prevention of refeeding syndrome are addressed.',
  'Department of Surgery and Clinical Nutrition',
  1.0,
  30,
  'medium',
  1,
  true,
  CURRENT_DATE,
  ARRAY['nutrition', 'TPN', 'enteral feeding', 'malnutrition', 'metabolic stress'],
  NULL
) ON CONFLICT (id) DO NOTHING;

-- Self-assessment questions for Article 116
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES
('e1160001-0000-0000-0000-000000000001', 'd0000416-0000-0000-0000-000000000116', 1,
 'Which nutritional screening tool is most commonly used in hospitalized patients?',
 'Body mass index alone', 'Nutritional Risk Screening 2002 (NRS-2002)', 'Mid-arm circumference', 'Food intake diary',
 'B', 'NRS-2002 is a validated screening tool that assesses nutritional status and disease severity. It is recommended by ESPEN for hospitalized patients and can be performed quickly at bedside.', 'medium'),
('e1160002-0000-0000-0000-000000000002', 'd0000416-0000-0000-0000-000000000116', 2,
 'A serum albumin of 2.5 g/dL in a surgical patient indicates:',
 'Normal nutritional status', 'Mild malnutrition only', 'Increased surgical risk', 'Need for immediate surgery',
 'C', 'Serum albumin <3.5 g/dL is associated with increased surgical complications and mortality. However, albumin is also an acute phase reactant and may decrease with inflammation independent of nutrition.', 'medium'),
('e1160003-0000-0000-0000-000000000003', 'd0000416-0000-0000-0000-000000000116', 3,
 'The metabolic response to major surgery includes all EXCEPT:',
 'Increased protein catabolism', 'Insulin resistance', 'Decreased energy expenditure', 'Elevated cortisol levels',
 'C', 'Surgical stress causes hypermetabolism with increased energy expenditure (10-30% above basal), protein catabolism, insulin resistance, and elevated counter-regulatory hormones including cortisol.', 'medium'),
('e1160004-0000-0000-0000-000000000004', 'd0000416-0000-0000-0000-000000000116', 4,
 'When is parenteral nutrition preferred over enteral nutrition?',
 'Whenever oral intake is insufficient', 'When gut is nonfunctional or inaccessible', 'In all ICU patients', 'For convenience of administration',
 'B', 'Enteral nutrition is preferred when the gut is functional. Parenteral nutrition is indicated when the GI tract is inaccessible, nonfunctional, or when enteral feeding is contraindicated or insufficient.', 'medium'),
('e1160005-0000-0000-0000-000000000005', 'd0000416-0000-0000-0000-000000000116', 5,
 'Early enteral nutrition in postoperative patients should ideally begin:',
 'After return of bowel sounds', 'Within 24-48 hours of surgery', 'Only after first bowel movement', '7 days postoperatively',
 'B', 'Early enteral nutrition (within 24-48 hours) is associated with reduced infectious complications and shorter hospital stay. Waiting for bowel sounds or flatus is no longer recommended.', 'medium'),
('e1160006-0000-0000-0000-000000000006', 'd0000416-0000-0000-0000-000000000116', 6,
 'Refeeding syndrome is characterized by which electrolyte abnormality?',
 'Hyperkalemia', 'Hypophosphatemia', 'Hypermagnesemia', 'Hypercalcemia',
 'B', 'Refeeding syndrome causes hypophosphatemia as glucose administration stimulates insulin release, driving phosphate, potassium, and magnesium intracellularly. This can cause cardiac arrhythmias and respiratory failure.', 'medium'),
('e1160007-0000-0000-0000-000000000007', 'd0000416-0000-0000-0000-000000000116', 7,
 'What is the recommended protein intake for critically ill surgical patients?',
 '0.5-0.8 g/kg/day', '0.8-1.0 g/kg/day', '1.2-2.0 g/kg/day', '3.0-4.0 g/kg/day',
 'C', 'Critically ill patients require higher protein intake (1.2-2.0 g/kg/day) to support healing and minimize muscle wasting. Standard recommendations of 0.8 g/kg/day are insufficient for surgical stress.', 'medium'),
('e1160008-0000-0000-0000-000000000008', 'd0000416-0000-0000-0000-000000000116', 8,
 'Immunonutrition formulas typically contain all EXCEPT:',
 'Arginine', 'Omega-3 fatty acids', 'Nucleotides', 'Saturated fats',
 'D', 'Immunonutrition formulas contain arginine, omega-3 fatty acids, glutamine, and nucleotides to support immune function and wound healing. Saturated fats are not a component of immunonutrition.', 'medium'),
('e1160009-0000-0000-0000-000000000009', 'd0000416-0000-0000-0000-000000000116', 9,
 'A patient on total parenteral nutrition for 3 weeks should be monitored for:',
 'Vitamin B12 deficiency', 'Liver dysfunction', 'Vitamin D toxicity', 'Iron overload',
 'B', 'Long-term TPN is associated with hepatic steatosis and cholestasis (TPN-associated liver disease), biliary complications, and essential fatty acid deficiency. Regular liver function monitoring is essential.', 'medium'),
('e1160010-0000-0000-0000-000000000010', 'd0000416-0000-0000-0000-000000000116', 10,
 'Preoperative carbohydrate loading in ERAS protocols involves:',
 'High-fat meal the night before', 'Clear carbohydrate drink 2-3 hours before surgery', 'Intravenous dextrose during surgery', '24-hour fasting with glucose infusion',
 'B', 'Preoperative carbohydrate loading (clear carbohydrate drink 2-3 hours before surgery) reduces insulin resistance, preserves muscle mass, and improves postoperative recovery. It is a key component of ERAS protocols.', 'easy')
ON CONFLICT (id) DO NOTHING;
