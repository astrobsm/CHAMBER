-- CME Article 117: Acute Abdomen and Emergency Laparotomy
-- Surgery 3 Rotation

-- Create topic for this article
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES (
  'c0000182-0000-0000-0000-000000000182',
  'Acute Abdomen and Emergency Laparotomy',
  'a0000003-0000-0000-0000-000000000003',
  'Evaluation and management of acute surgical abdomen',
  182,
  true
) ON CONFLICT (id) DO NOTHING;

-- Create CME article
INSERT INTO cme_articles (
  id, topic_id, category_id, title, subtitle, abstract, authors,
  cme_credits, estimated_reading_minutes, difficulty_level,
  version, is_published, publish_date, keywords, cover_image_url
)
VALUES (
  'd0000417-0000-0000-0000-000000000117',
  'c0000182-0000-0000-0000-000000000182',
  'a0000003-0000-0000-0000-000000000003',
  'Acute Abdomen: Clinical Assessment and Emergency Surgical Management',
  'Rapid evaluation and decision-making in abdominal emergencies',
  'The acute abdomen represents one of the most common and challenging presentations in surgical practice. Accurate clinical assessment combined with judicious use of imaging is essential for appropriate triage and management. This article reviews the pathophysiology, clinical presentation, and diagnostic approach to common causes of acute abdomen including appendicitis, perforated viscus, bowel obstruction, and mesenteric ischemia. We discuss the decision-making process for emergency laparotomy, damage control surgery principles, and perioperative optimization strategies.',
  'Department of Emergency Surgery',
  1.0,
  30,
  'medium',
  1,
  true,
  CURRENT_DATE,
  ARRAY['acute abdomen', 'peritonitis', 'laparotomy', 'emergency surgery', 'damage control'],
  NULL
) ON CONFLICT (id) DO NOTHING;

-- Self-assessment questions for Article 117
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES
('e1170001-0000-0000-0000-000000000001', 'd0000417-0000-0000-0000-000000000117', 1,
 'Which clinical finding is most specific for peritonitis?',
 'Abdominal distension', 'Rebound tenderness with guarding', 'Hyperactive bowel sounds', 'Shifting dullness',
 'B', 'Rebound tenderness (Blumberg sign) with involuntary guarding is the most specific finding for peritoneal irritation and peritonitis, indicating the need for urgent surgical evaluation.', 'medium'),
('e1170002-0000-0000-0000-000000000002', 'd0000417-0000-0000-0000-000000000117', 2,
 'Free air under the diaphragm on upright chest X-ray suggests:',
 'Small bowel obstruction', 'Perforated hollow viscus', 'Pancreatitis', 'Mesenteric ischemia',
 'B', 'Pneumoperitoneum (free air under diaphragm) indicates perforation of a hollow viscus, most commonly gastroduodenal perforation. This is a surgical emergency requiring laparotomy.', 'easy'),
('e1170003-0000-0000-0000-000000000003', 'd0000417-0000-0000-0000-000000000117', 3,
 'The most common cause of small bowel obstruction in developed countries is:',
 'Hernias', 'Adhesions from previous surgery', 'Malignancy', 'Intussusception',
 'B', 'Adhesions from previous abdominal surgery account for 60-75% of small bowel obstructions in developed countries. Hernias are the leading cause in regions where surgery is less common.', 'medium'),
('e1170004-0000-0000-0000-000000000004', 'd0000417-0000-0000-0000-000000000117', 4,
 'Which laboratory finding suggests bowel strangulation in intestinal obstruction?',
 'Normal white cell count', 'Metabolic acidosis with elevated lactate', 'Low serum amylase', 'Hypokalemia alone',
 'B', 'Metabolic acidosis with elevated lactate suggests bowel ischemia/strangulation in the setting of obstruction. This indicates urgent need for surgical intervention.', 'medium'),
('e1170005-0000-0000-0000-000000000005', 'd0000417-0000-0000-0000-000000000117', 5,
 'Damage control surgery principles include all EXCEPT:',
 'Abbreviated surgical procedure', 'Temporary abdominal closure', 'Definitive anastomosis during index operation', 'ICU resuscitation before definitive repair',
 'C', 'Damage control surgery involves abbreviated procedures with hemorrhage and contamination control, temporary closure, ICU resuscitation, then planned return for definitive repair. Primary anastomosis is avoided.', 'medium'),
('e1170006-0000-0000-0000-000000000006', 'd0000417-0000-0000-0000-000000000117', 6,
 'The Lethal Triad in trauma and emergency surgery consists of:',
 'Hypertension, tachycardia, fever', 'Hypothermia, acidosis, coagulopathy', 'Hypotension, anemia, hypoxia', 'Infection, SIRS, organ failure',
 'B', 'The lethal triad of hypothermia, acidosis, and coagulopathy creates a vicious cycle that increases mortality. Damage control surgery aims to interrupt this cycle through abbreviated procedures.', 'medium'),
('e1170007-0000-0000-0000-000000000007', 'd0000417-0000-0000-0000-000000000117', 7,
 'Which imaging modality is most sensitive for detecting acute mesenteric ischemia?',
 'Plain abdominal X-ray', 'Abdominal ultrasound', 'CT angiography', 'MRI of abdomen',
 'C', 'CT angiography is the imaging modality of choice for suspected mesenteric ischemia, with sensitivity >90%. It can identify vascular occlusion and bowel wall changes indicating ischemia.', 'medium'),
('e1170008-0000-0000-0000-000000000008', 'd0000417-0000-0000-0000-000000000117', 8,
 'In a patient with generalized peritonitis and hemodynamic instability, the initial priority is:',
 'Immediate laparotomy', 'CT scan of abdomen', 'Fluid resuscitation and hemodynamic stabilization', 'Broad-spectrum antibiotics only',
 'C', 'While peritonitis requires surgery, hemodynamically unstable patients need initial resuscitation (fluids, antibiotics, vasopressors if needed) to optimize for surgery. Delayed resuscitation increases mortality.', 'medium'),
('e1170009-0000-0000-0000-000000000009', 'd0000417-0000-0000-0000-000000000117', 9,
 'McBurney point tenderness is classically associated with:',
 'Cholecystitis', 'Appendicitis', 'Diverticulitis', 'Pancreatitis',
 'B', 'McBurney point (one-third the distance from ASIS to umbilicus) tenderness is a classic finding in acute appendicitis, though appendiceal position can vary.', 'easy'),
('e1170010-0000-0000-0000-000000000010', 'd0000417-0000-0000-0000-000000000117', 10,
 'Which condition is NOT typically managed with emergency laparotomy?',
 'Perforated duodenal ulcer', 'Uncomplicated acute pancreatitis', 'Sigmoid volvulus with ischemia', 'Ruptured abdominal aortic aneurysm',
 'B', 'Uncomplicated acute pancreatitis is managed conservatively with NPO, IV fluids, and analgesia. Surgery is reserved for infected necrosis or complications. The other conditions require emergency surgery.', 'medium')
ON CONFLICT (id) DO NOTHING;
