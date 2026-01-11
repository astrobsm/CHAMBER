-- ============================================================================
-- SURGERY 3 CME ARTICLE 48: Pediatric Surgical Emergencies
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000114-0000-0000-0000-000000000114', 'a0000003-0000-0000-0000-000000000003', 'Pediatric Surgical Emergencies', 'Common pediatric surgical conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000348-0000-0000-0000-000000000048',
    'c0000114-0000-0000-0000-000000000114',
    'a0000003-0000-0000-0000-000000000003',
    'Pediatric Surgical Emergencies',
    'Recognition and Management of Common Pediatric Conditions',
    'This article covers pediatric surgical emergencies including pyloric stenosis, intussusception, Hirschsprung disease, necrotizing enterocolitis, congenital diaphragmatic hernia, gastroschisis, omphalocele, and common pediatric hernias.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000348-0001-0000-0000-000000000001', 'd0000348-0000-0000-0000-000000000048', 1,
'Pyloric stenosis classically presents with:',
'Bilious vomiting in a 2-day old', 'Non-bilious projectile vomiting in a 3-6 week old with a hungry infant after vomiting', 'Bloody diarrhea', 'Abdominal distension at birth', NULL,
'B', 'Pyloric stenosis: hypertrophy of pyloric muscle causing gastric outlet obstruction. Classic presentation: 3-6 weeks old (range 2-12 weeks), firstborn male, non-bilious projectile vomiting, hungry immediately after vomiting ("hungry vomiter"), palpable "olive" in right upper quadrant (70%), visible gastric peristalsis. Metabolic derangement: hypochloremic, hypokalemic metabolic alkalosis (loss of gastric HCl). Diagnosis: ultrasound (muscle thickness >3mm, length >15mm). Treatment: correct electrolytes first, then pyloromyotomy (Ramstedt).', 'easy'),

('e0000348-0002-0000-0000-000000000002', 'd0000348-0000-0000-0000-000000000048', 2,
'Intussusception in children:',
'Is most common in teenagers', 'Typically occurs at 6-36 months, presents with intermittent colicky pain, currant jelly stool, and sausage-shaped mass, and can often be reduced with air enema', 'Requires immediate surgery in all cases', 'Presents with projectile vomiting', NULL,
'B', 'Intussusception: telescoping of proximal bowel into distal segment. Peak: 6-36 months (5-9 months most common). Lead point usually not found in children (idiopathic, often post-viral/lymphoid hyperplasia). Triad: intermittent colicky abdominal pain (drawing legs up), vomiting, "currant jelly" stool (blood and mucus - late finding). Palpable "sausage-shaped" mass. Target/donut sign on ultrasound. Treatment: (1) Air or hydrostatic enema reduction (80-90% success) if no peritonitis; (2) Surgery if reduction fails, perforation, or peritonitis.', 'easy'),

('e0000348-0003-0000-0000-000000000003', 'd0000348-0000-0000-0000-000000000048', 3,
'Hirschsprung disease results from:',
'Too many ganglion cells', 'Absence of ganglion cells in the distal bowel, leading to functional obstruction', 'Malrotation of the gut', 'Pyloric hypertrophy', NULL,
'B', 'Hirschsprung disease: congenital absence of ganglion cells (Auerbach and Meissner plexuses) in distal bowel due to failed neural crest cell migration. Always involves rectum, extends proximally variable distance. Result: functional obstruction (spastic, non-relaxing segment). Presentation: failure to pass meconium in first 48 hours (90%), abdominal distension, bilious vomiting, enterocolitis (life-threatening). Diagnosis: contrast enema (transition zone), suction rectal biopsy (absent ganglion cells, hypertrophied nerve fibers). Treatment: resection of aganglionic segment, pull-through procedure.', 'medium'),

('e0000348-0004-0000-0000-000000000004', 'd0000348-0000-0000-0000-000000000048', 4,
'Necrotizing enterocolitis (NEC) in neonates:',
'Only affects term infants', 'Primarily affects premature infants, presents with feeding intolerance, abdominal distension, and bloody stools, with pneumatosis intestinalis on X-ray', 'Has no radiological findings', 'Never requires surgery', NULL,
'B', 'Necrotizing enterocolitis: most common GI emergency in neonates, primarily affects premature/low birth weight infants (usually after initiation of feeds). Risk factors: prematurity, formula feeding, intestinal ischemia, infection. Presentation: feeding intolerance, abdominal distension, bloody stools, lethargy, temperature instability. X-ray: pneumatosis intestinalis (pathognomonic - air in bowel wall), portal venous gas, free air (perforation). Management: NPO, NG decompression, broad-spectrum antibiotics, serial exams. Surgery: perforation, failed medical management, clinical deterioration.', 'medium'),

('e0000348-0005-0000-0000-000000000005', 'd0000348-0000-0000-0000-000000000048', 5,
'Congenital diaphragmatic hernia (CDH):',
'Is usually right-sided', 'Most commonly left-sided (Bochdalek), causes pulmonary hypoplasia, and presents with respiratory distress at birth', 'Is always discovered only after birth', 'Has excellent prognosis without treatment', NULL,
'B', 'Congenital diaphragmatic hernia: herniation of abdominal contents into thorax through diaphragmatic defect. Bochdalek (posterolateral): 85-90%, usually left-sided; Morgagni (anterior/parasternal): rare, right-sided. Pathophysiology: pulmonary hypoplasia and pulmonary hypertension. Presentation: respiratory distress at birth, scaphoid abdomen, bowel sounds in chest. Diagnosed prenatally on ultrasound. Management: gentle ventilation (avoid barotrauma), ECMO if severe, delayed surgical repair (after stabilization). Mortality depends on degree of pulmonary hypoplasia.', 'medium'),

('e0000348-0006-0000-0000-000000000006', 'd0000348-0000-0000-0000-000000000048', 6,
'Gastroschisis differs from omphalocele in that:',
'Both are identical', 'Gastroschisis has no covering membrane, defect is right of umbilicus, and has low association with other anomalies', 'Gastroschisis is more associated with chromosomal abnormalities', 'Omphalocele has no membrane', NULL,
'B', 'Gastroschisis vs Omphalocele: GASTROSCHISIS: (1) Defect right of umbilicus; (2) No covering membrane; (3) Bowel exposed, edematous, matted; (4) Low association with other anomalies; (5) Often in young mothers; (6) Normal umbilical cord. OMPHALOCELE: (1) Central defect through umbilical ring; (2) Covered by membrane (peritoneum, amnion); (3) May contain liver; (4) High association with other anomalies (cardiac, chromosomal - trisomy 13, 18, 21, Beckwith-Wiedemann); (5) Umbilical cord inserts onto sac. Treatment: gastroschisis - primary or staged closure; omphalocele - depends on size, may paint and allow epithelialization.', 'medium'),

('e0000348-0007-0000-0000-000000000007', 'd0000348-0000-0000-0000-000000000048', 7,
'Malrotation with midgut volvulus:',
'Presents gradually over months', 'Is a surgical emergency presenting with bilious vomiting in a neonate, requiring immediate exploration', 'Causes only mild symptoms', 'Never occurs in the first year', NULL,
'B', 'Malrotation with midgut volvulus: SURGICAL EMERGENCY. Malrotation: incomplete rotation/fixation of gut during development. Volvulus: midgut twists around SMA, causing ischemia. Presentation: bilious vomiting in first month of life (75% present in first month), abdominal distension, bloody stools (late - bowel necrosis). Upper GI: duodenal obstruction, corkscrew/spiral appearance. Management: IMMEDIATE surgery - Ladd procedure (detorsion, lysis of Ladd bands, broadening of mesenteric base, appendectomy, return bowel in non-rotation). Delay = necrosis = short gut syndrome or death.', 'easy'),

('e0000348-0008-0000-0000-000000000008', 'd0000348-0000-0000-0000-000000000048', 8,
'Pediatric inguinal hernia:',
'Should be observed only', 'Is an indirect hernia due to patent processus vaginalis and should be repaired due to high risk of incarceration', 'Is usually direct', 'Resolves spontaneously', NULL,
'B', 'Pediatric inguinal hernia: virtually all are INDIRECT (patent processus vaginalis). More common in males, premature infants. Presentation: groin bulge with crying/straining. Risk of incarceration: higher in infants (especially <1 year), up to 30%. Incarcerated hernia: irreducible, tender, may become strangulated. Management: elective herniorrhaphy (high ligation of sac only, no mesh). Incarcerated: attempt reduction if not strangulated, then repair. Strangulated: emergency surgery. Unlike umbilical hernia, inguinal hernia will NOT resolve spontaneously.', 'easy'),

('e0000348-0009-0000-0000-000000000009', 'd0000348-0000-0000-0000-000000000048', 9,
'Esophageal atresia (EA):',
'Is usually isolated without fistula', 'Most commonly presents with tracheoesophageal fistula (TEF), polyhydramnios, excessive drooling, and inability to pass NG tube', 'Is diagnosed only at surgery', 'Has no associated anomalies', NULL,
'B', 'Esophageal atresia: congenital discontinuity of esophagus. Most common (85%): EA with distal TEF (Type C/Gross C). Presentation: polyhydramnios (prenatal - no swallowing amniotic fluid), excessive drooling, choking/coughing with first feed, inability to pass NG tube (coils in proximal pouch on X-ray). Associated anomalies: VACTERL (Vertebral, Anorectal, Cardiac, TEF/EA, Renal, Limb). Diagnosis: NG tube fails to pass, CXR shows coiled tube. Management: upright position, suction pouch, antibiotics, surgery (primary anastomosis vs staged repair depending on gap).', 'medium'),

('e0000348-0010-0000-0000-000000000010', 'd0000348-0000-0000-0000-000000000048', 10,
'Bilious vomiting in a neonate should be considered:',
'Normal and observed', 'A surgical emergency until proven otherwise, as it may indicate obstruction or malrotation with volvulus', 'Treated with feeding changes only', 'Ignored unless associated with fever', NULL,
'B', 'Bilious vomiting in a neonate: SURGICAL EMERGENCY until proven otherwise. Bile = obstruction distal to ampulla of Vater. Differential includes: malrotation with volvulus (most dangerous - must rule out first), duodenal atresia, jejunal/ileal atresia, meconium ileus, Hirschsprung disease, incarcerated hernia. Workup: abdominal X-ray (dilated loops, double-bubble in duodenal atresia), upper GI (gold standard for malrotation). Never delay evaluation of bilious vomiting in a neonate - malrotation with volvulus can cause massive bowel necrosis within hours.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 48 (Pediatric Surgical Emergencies) with 10 self-assessment questions inserted' as status;
