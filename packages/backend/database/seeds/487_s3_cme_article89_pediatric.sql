-- ============================================================================
-- SURGERY 3 CME ARTICLE 89: Pediatric Surgery Overview
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000155-0000-0000-0000-000000000155', 'a0000003-0000-0000-0000-000000000003', 'Pediatric Surgery Overview', 'Common surgical conditions in children')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000389-0000-0000-0000-000000000089',
    'c0000155-0000-0000-0000-000000000155',
    'a0000003-0000-0000-0000-000000000003',
    'Pediatric Surgery: Common Conditions and Principles',
    'Surgical Conditions in Neonates and Children',
    'This article covers pyloric stenosis, intussusception, Hirschsprung disease, anorectal malformations, tracheoesophageal fistula, intestinal atresias, malrotation with volvulus, inguinal hernia in children, and pediatric fluid management.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000389-0001-0000-0000-000000000001', 'd0000389-0000-0000-0000-000000000089', 1,
'Hypertrophic pyloric stenosis classically presents with:',
'Bilious vomiting at birth', 'Non-bilious projectile vomiting at 3-6 weeks of age, palpable olive-shaped mass, and hypochloremic hypokalemic metabolic alkalosis', 'Bloody diarrhea', 'Abdominal distension at birth',
'B', 'HYPERTROPHIC PYLORIC STENOSIS: pyloric muscle hypertrophy causing gastric outlet obstruction. AGE: typically 3-6 weeks (2-8 weeks). PRESENTATION: NON-BILIOUS PROJECTILE VOMITING (obstruction proximal to ampulla), hungry after vomiting, weight loss, dehydration. EXAMINATION: palpable OLIVE-SHAPED MASS in RUQ, visible peristaltic waves. LABS: HYPOCHLOREMIC HYPOKALEMIC METABOLIC ALKALOSIS (loss of HCl). DIAGNOSIS: ultrasound (pyloric muscle >3mm thick, >15mm long). TREATMENT: correct electrolytes first, then PYLOROMYOTOMY (Ramstedt - split muscle, not mucosa).', 'easy'),

('e0000389-0002-0000-0000-000000000002', 'd0000389-0000-0000-0000-000000000089', 2,
'Intussusception in children:',
'Is most common in adults', 'Most commonly occurs at 6-36 months, is ileocolic, presents with colicky pain, currant jelly stools, and sausage-shaped mass, with air or contrast enema as first-line treatment', 'Always requires surgery', 'Never recurs',
'B', 'INTUSSUSCEPTION: bowel telescopes into adjacent segment. PEDIATRIC: most common cause of intestinal obstruction in infants. AGE: 6-36 months (peak 5-9 months). TYPE: most commonly ILEOCOLIC (ileum into cecum/colon). ETIOLOGY: usually idiopathic (lymphoid hyperplasia as lead point), viral illness precursor. PRESENTATION: intermittent COLICKY PAIN (draws up legs), CURRANT JELLY STOOL (blood and mucus - late sign), SAUSAGE-SHAPED MASS (RUQ), Dance sign (empty RLQ). DIAGNOSIS: ultrasound (target sign). TREATMENT: AIR or CONTRAST ENEMA (diagnostic and therapeutic, 80-90% success). Surgery if failed reduction, perforation, peritonitis.', 'easy'),

('e0000389-0003-0000-0000-000000000003', 'd0000389-0000-0000-0000-000000000089', 3,
'Hirschsprung disease is characterized by:',
'Too many ganglion cells', 'Absence of ganglion cells in the distal bowel causing functional obstruction, failure to pass meconium in the first 24-48 hours, and transition zone on contrast enema', 'Normal bowel function', 'Diarrhea from birth',
'B', 'HIRSCHSPRUNG DISEASE (congenital aganglionic megacolon): absence of GANGLION CELLS in myenteric and submucosal plexuses of distal bowel (neural crest migration failure). SEGMENT: always involves RECTUM, extends proximally varying lengths. PRESENTATION: failure to pass MECONIUM within 24-48 hours, abdominal distension, bilious vomiting, enterocolitis (life-threatening). DIAGNOSIS: contrast enema (TRANSITION ZONE - dilated proximal, narrow distal), suction rectal biopsy (absent ganglion cells, hypertrophied nerves). TREATMENT: surgical resection of aganglionic segment with pull-through procedure (Soave, Swenson, Duhamel).', 'easy'),

('e0000389-0004-0000-0000-000000000004', 'd0000389-0000-0000-0000-000000000089', 4,
'The most common type of tracheoesophageal fistula (TEF) is:',
'H-type fistula without atresia', 'Esophageal atresia with distal tracheoesophageal fistula (type C, approximately 85% of cases)', 'Pure esophageal atresia', 'Double fistula',
'B', 'TRACHEOESOPHAGEAL FISTULA classification (Gross): TYPE A (8%): pure esophageal atresia, no fistula; TYPE B (1%): EA with proximal TEF; TYPE C (85%): EA with DISTAL TEF (most common - blind proximal pouch, distal esophagus connects to trachea); TYPE D (2%): EA with proximal and distal TEF; TYPE E (4%): H-type fistula, no atresia (presents later with recurrent pneumonia). PRESENTATION: polyhydramnios, drooling, choking with feeds, cannot pass NG tube (coils in pouch). ASSOCIATED: VACTERL anomalies. TREATMENT: surgical repair - divide fistula, primary esophageal anastomosis.', 'medium'),

('e0000389-0005-0000-0000-000000000005', 'd0000389-0000-0000-0000-000000000089', 5,
'Midgut malrotation with volvulus:',
'Is never an emergency', 'Is a surgical emergency presenting with bilious vomiting, requires upper GI series showing abnormal DJ junction position, with Ladd procedure as definitive treatment', 'Only occurs in adults', 'Resolves spontaneously',
'B', 'MALROTATION WITH VOLVULUS: abnormal intestinal rotation during development leads to narrow mesenteric base. VOLVULUS: midgut twists around SMA causing ischemia - SURGICAL EMERGENCY. PRESENTATION: BILIOUS VOMITING in neonate/infant (until proven otherwise = malrotation), abdominal distension, bloody stools (late - ischemia), shock. DIAGNOSIS: UPPER GI series - abnormal position of DJ junction (normally left of spine at level of pylorus), corkscrew appearance if volvulus. TREATMENT: emergent LADD PROCEDURE - detorse bowel, divide Ladd bands, widen mesenteric base, appendectomy (cecum in abnormal position).', 'medium'),

('e0000389-0006-0000-0000-000000000006', 'd0000389-0000-0000-0000-000000000089', 6,
'Inguinal hernia in children:',
'Should be watched until adulthood', 'Is an indirect hernia due to patent processus vaginalis, has incarceration risk highest in infancy, and requires surgical repair when diagnosed', 'Is usually direct type', 'Never incarcerates',
'B', 'PEDIATRIC INGUINAL HERNIA: virtually all are INDIRECT (patent processus vaginalis). INCARCERATION risk highest in INFANTS (<1 year), especially premature infants - early repair recommended. PRESENTATION: intermittent inguinal bulge with crying/straining, reducible (unless incarcerated). INCARCERATED hernia: tender, non-reducible, bowel obstruction, strangulation risk. TREATMENT: SURGICAL REPAIR when diagnosed (high ligation of hernia sac). Contralateral exploration controversial (laparoscopic allows evaluation). Incarcerated: attempt reduction if viable (<12 hours), then semi-urgent repair; if strangulation suspected - emergent surgery.', 'easy'),

('e0000389-0007-0000-0000-000000000007', 'd0000389-0000-0000-0000-000000000089', 7,
'Bilious vomiting in a neonate is:',
'Normal finding', 'A surgical emergency until proven otherwise, indicating possible intestinal obstruction distal to the ampulla of Vater', 'Caused by overfeeding', 'Self-limiting condition',
'B', 'BILIOUS VOMITING IN NEONATE: GREEN/YELLOW vomit indicates bile-stained (obstruction DISTAL to ampulla of Vater). SURGICAL EMERGENCY until proven otherwise. DIFFERENTIAL: malrotation with volvulus (most dangerous - can lose entire midgut), duodenal atresia, jejunoileal atresia, meconium ileus, Hirschsprung disease, incarcerated hernia. WORKUP: NGT, IV fluids, NPO, abdominal X-ray, upper GI series (evaluate malrotation), contrast enema (lower obstruction). Non-bilious vomiting (obstruction proximal to ampulla): pyloric stenosis, esophageal atresia, GERD.', 'easy'),

('e0000389-0008-0000-0000-000000000008', 'd0000389-0000-0000-0000-000000000089', 8,
'Duodenal atresia classically shows:',
'Air throughout the bowel', 'Double bubble sign on X-ray (air in stomach and proximal duodenum), polyhydramnios, and association with Down syndrome', 'Normal bowel gas pattern', 'Free air in abdomen',
'B', 'DUODENAL ATRESIA: complete obstruction of duodenum (intrinsic - failure of recanalization). PRESENTATION: bilious vomiting (obstruction usually distal to ampulla), abdominal distension limited to epigastrium, polyhydramnios (cannot swallow amniotic fluid). X-RAY: DOUBLE BUBBLE SIGN (gastric and duodenal gas, no distal gas if complete atresia). ASSOCIATIONS: DOWN SYNDROME (30%), cardiac anomalies, annular pancreas, malrotation. TREATMENT: duodenoduodenostomy (diamond anastomosis) after resuscitation. Contrast enema to rule out additional atresias or malrotation. Good prognosis after repair.', 'easy'),

('e0000389-0009-0000-0000-000000000009', 'd0000389-0000-0000-0000-000000000089', 9,
'Necrotizing enterocolitis (NEC) in premature infants:',
'Is treated with antibiotics alone', 'Presents with feeding intolerance, abdominal distension, bloody stools, and pneumatosis intestinalis on X-ray; surgery indicated for perforation or clinical deterioration', 'Only occurs in term infants', 'Does not require monitoring',
'B', 'NECROTIZING ENTEROCOLITIS: intestinal necrosis in premature infants. RISK FACTORS: prematurity (main), formula feeding, hypoxia, ischemia. PRESENTATION: feeding intolerance, abdominal distension, bloody stools, temperature instability, lethargy, sepsis. X-RAY: PNEUMATOSIS INTESTINALIS (air in bowel wall - pathognomonic), portal venous gas, pneumoperitoneum (perforation). MANAGEMENT: NPO, NGT decompression, IV antibiotics, serial exams/X-rays. SURGICAL INDICATIONS: pneumoperitoneum (free perforation), clinical deterioration, fixed dilated loop, abdominal wall erythema. Surgery: resection of necrotic bowel, stoma.', 'medium'),

('e0000389-0010-0000-0000-000000000010', 'd0000389-0000-0000-0000-000000000089', 10,
'Maintenance fluid requirements in children are calculated using:',
'Adult formulas regardless of weight', 'The 4-2-1 rule: 4 mL/kg/hr for first 10 kg, 2 mL/kg/hr for next 10 kg, and 1 mL/kg/hr for each kg above 20', 'No fluids are needed', 'Same rate for all children',
'B', 'PEDIATRIC MAINTENANCE FLUIDS - 4-2-1 RULE (Holliday-Segar): HOURLY rate: 4 mL/kg/hr for first 10 kg, + 2 mL/kg/hr for 11-20 kg, + 1 mL/kg/hr for each kg >20. EXAMPLE: 25 kg child = (4x10) + (2x10) + (1x5) = 40+20+5 = 65 mL/hr. DAILY: 100 mL/kg for first 10 kg, 50 mL/kg for 11-20 kg, 20 mL/kg for >20 kg. FLUID type: isotonic crystalloid (NS or LR) preferred to prevent hyponatremia. Neonates have higher body water percentage, immature renal function - careful monitoring needed.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 89 (Pediatric Surgery Overview) with 10 self-assessment questions inserted' as status;
