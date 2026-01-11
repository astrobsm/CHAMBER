-- Surgery 4 MCQ Question Bank - Batch 16
-- Section C: Pediatric Surgery - Congenital Abnormalities
-- 40 Questions

-- Topic: Pediatric Surgery - Congenital Abnormalities
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000016-0000-0000-0000-000000000016', 'Pediatric Congenital Abnormalities', 'a0000004-0000-0000-0000-000000000004', 'Common congenital surgical conditions in children', 16, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Esophageal atresia most commonly presents with:',
 'Hematemesis', 'Drooling choking and cyanosis with first feed', 'Abdominal distension', 'Constipation', 'Jaundice',
 'B', 'Esophageal atresia: inability to pass NG tube, excessive drooling, choking and cyanosis with feeds. Most common type (85%) has proximal pouch with distal tracheoesophageal fistula.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of esophageal atresia is:',
 'Pure atresia without fistula', 'Proximal pouch with distal tracheoesophageal fistula', 'H-type fistula without atresia', 'Proximal fistula with distal pouch', 'Double fistula',
 'B', 'Type C (Gross classification): proximal atresia with distal TEF accounts for 85%. Diagnosed by inability to pass NG tube. Gas in stomach indicates distal fistula present.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'VACTERL association includes all EXCEPT:',
 'Vertebral anomalies', 'Cardiac defects', 'Renal anomalies', 'Hepatic anomalies', 'Limb defects',
 'D', 'VACTERL: Vertebral, Anorectal, Cardiac, TracheoEsophageal, Renal, Limb anomalies. Associated with EA/TEF. Screen for associated anomalies. Hepatic anomalies not included.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Congenital diaphragmatic hernia (CDH) most commonly occurs through:',
 'Esophageal hiatus', 'Foramen of Bochdalek posterolaterally', 'Foramen of Morgagni', 'Central tendon', 'Direct trauma',
 'B', 'Bochdalek hernia (posterolateral) accounts for 80-90% of CDH. Left-sided in 80%. Morgagni hernia (anterior/retrosternal) is much rarer. Usually diagnosed prenatally.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The main cause of mortality in CDH is:',
 'Intestinal obstruction', 'Pulmonary hypoplasia and pulmonary hypertension', 'Cardiac malformation', 'Renal failure', 'Sepsis',
 'B', 'CDH mortality from pulmonary hypoplasia (bilateral, worse on affected side) and persistent pulmonary hypertension. Lung compression in utero prevents normal development.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of CDH after delivery includes:',
 'Bag-mask ventilation', 'Immediate intubation avoiding bag-mask to prevent bowel distension', 'Feeding immediately', 'Observation only', 'Emergency surgery',
 'B', 'CDH: immediate intubation, avoid bag-mask (distends herniated bowel), NG tube decompression, stabilize PPHN. Surgery delayed until stable (usually 24-48+ hours).', 'medium', 'application'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Pyloric stenosis typically presents at age:',
 'Birth', '2-6 weeks', '6 months', '1 year', '2 years',
 'B', 'Pyloric stenosis: presents 2-6 weeks (peak 3-5 weeks). Projectile non-bilious vomiting, hungry after vomiting, visible peristalsis, olive-shaped mass. More common in firstborn males.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The classic metabolic abnormality in pyloric stenosis is:',
 'Metabolic acidosis', 'Hypochloremic hypokalemic metabolic alkalosis', 'Respiratory acidosis', 'Hyperkalemia', 'Metabolic acidosis with normal chloride',
 'B', 'Pyloric stenosis: loss of gastric acid (HCl) causes hypochloremic, hypokalemic metabolic alkalosis. Paradoxical aciduria as kidneys retain H+ to preserve K+. Correct before surgery.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The definitive treatment for pyloric stenosis is:',
 'Medical management with atropine', 'Ramstedt pyloromyotomy', 'Pyloroplasty', 'Gastrojejunostomy', 'Dietary modification',
 'B', 'Ramstedt pyloromyotomy: incision through hypertrophied muscle down to but not through mucosa. After fluid/electrolyte correction. Open or laparoscopic. Excellent outcomes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Intestinal malrotation with midgut volvulus presents with:',
 'Gradual onset constipation', 'Acute bilious vomiting which is a surgical emergency', 'Bloody stool only', 'Fever and diarrhea', 'Gradual abdominal distension',
 'B', 'Bilious vomiting in neonate = malrotation with volvulus until proven otherwise. Surgical emergency - midgut twists around SMA causing ischemia. Rapid diagnosis and surgery critical.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The imaging study of choice for malrotation is:',
 'Plain abdominal X-ray', 'Upper GI contrast study', 'CT scan always', 'MRI', 'Ultrasound only',
 'B', 'Upper GI study shows abnormal position of duodenojejunal junction (normally left of spine at level of pylorus). D-J junction to right of midline is diagnostic. Corkscrew appearance in volvulus.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Ladd procedure for malrotation involves:',
 'Bowel resection always', 'Volvulus reduction division of Ladd bands widening mesentery and appendectomy', 'Gastrostomy', 'Colostomy', 'Ileostomy',
 'B', 'Ladd procedure: counterclockwise volvulus detorsion, division of Ladd bands (duodenum to RUQ), widening mesenteric base, appendectomy (cecum will be in LLQ). Does not correct malrotation but prevents volvulus.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Duodenal atresia is associated with:',
 'Prematurity only', 'Down syndrome in 30 percent of cases', 'No associated anomalies', 'Cystic fibrosis', 'Neural tube defects',
 'B', 'Duodenal atresia: 30% have Down syndrome. Also associated with cardiac, renal, vertebral anomalies. Polyhydramnios common prenatally. Double bubble sign on X-ray.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The classic X-ray finding in duodenal atresia is:',
 'Multiple air-fluid levels', 'Double bubble sign', 'Free air', 'Normal gas pattern', 'Ground glass appearance',
 'B', 'Double bubble sign: distended stomach and proximal duodenum (two bubbles) with no distal gas. Obstruction distal to ampulla (bilious vomiting). Proximal to ampulla = non-bilious.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Jejunoileal atresia is caused by:',
 'Genetic syndrome', 'Intrauterine vascular accident', 'Infection', 'Maternal drug use', 'Neural crest migration failure',
 'B', 'Jejunoileal atresia: intrauterine mesenteric vascular accident (not embryological failure like duodenal atresia). Various types including apple-peel atresia. Not associated with other anomalies typically.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Meconium ileus is highly associated with:',
 'Down syndrome', 'Cystic fibrosis', 'Hirschsprung disease', 'Malrotation', 'Pyloric stenosis',
 'B', 'Meconium ileus: 90%+ have cystic fibrosis. Thick inspissated meconium causes distal ileal obstruction. Sweat chloride test for CF. May respond to gastrografin enema; surgery if complicated.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Hirschsprung disease is caused by:',
 'Hypertrophied muscle', 'Absence of ganglion cells in the distal bowel', 'Vascular malformation', 'Infection', 'Allergy',
 'B', 'Hirschsprung disease: aganglionosis from failure of neural crest cell migration. Aganglionic segment is spastic (no relaxation). Extends proximally from rectum. Length varies.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Hirschsprung disease classically presents with:',
 'Early passage of meconium', 'Failure to pass meconium within 48 hours with abdominal distension', 'Diarrhea from birth', 'Projectile vomiting', 'Jaundice',
 'B', 'Hirschsprung: failure to pass meconium in first 48 hours (90% of normal newborns pass by 24 hours), abdominal distension, bilious vomiting. Risk of enterocolitis is life-threatening complication.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Diagnosis of Hirschsprung disease is confirmed by:',
 'Barium enema alone', 'Rectal suction biopsy showing absent ganglion cells', 'Clinical examination', 'Blood tests', 'Ultrasound',
 'B', 'Rectal biopsy (suction or full-thickness): absent ganglion cells, hypertrophied nerve fibers, positive acetylcholinesterase staining. Barium enema shows transition zone but not diagnostic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Anorectal malformations are classified based on:',
 'Gender only', 'Relationship of rectum to puborectalis muscle and presence of fistula', 'Size of infant', 'Age at presentation', 'Associated anomalies only',
 'B', 'ARM classification: high (above puborectalis - poor prognosis), intermediate, low (below - better prognosis). Also by fistula type: rectoperineal, rectourethral, rectovesical, etc.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Low anorectal malformation in a male typically presents with:',
 'No visible abnormality', 'Perineal fistula with meconium visible at perineum', 'Abdominal mass', 'Urinary symptoms only', 'Normal anus with constipation',
 'B', 'Low ARM: fistula below sphincter complex. In males, perineal or bucket-handle fistula. Meconium may be seen at perineum. Often single-stage repair without colostomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Posterior sagittal anorectoplasty (PSARP) is used for:',
 'Pyloric stenosis', 'Definitive repair of anorectal malformations', 'Hirschsprung disease', 'Intussusception', 'Appendicitis',
 'B', 'PSARP (Pena procedure): definitive repair of ARM. Posterior midline approach, identifies and places rectum within sphincter complex. May be staged with prior colostomy for high lesions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Omphalocele differs from gastroschisis in that:',
 'Omphalocele has no covering', 'Omphalocele has a sac covering is midline and associated with syndromes', 'Gastroschisis is midline', 'No difference exists', 'Omphalocele is always small',
 'B', 'Omphalocele: midline defect at umbilicus, sac covering (unless ruptured), liver may be in sac, associated with trisomies, Beckwith-Wiedemann. Gastroschisis: right of umbilicus, no sac, rarely associated anomalies.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of gastroschisis includes:',
 'Immediate surgery always', 'Bowel protection fluid resuscitation and temperature maintenance', 'Feeding immediately', 'Discharge home', 'Antibiotic cream only',
 'B', 'Gastroschisis initial care: bowel bag/wrap to prevent fluid loss and injury, IV fluids (high losses), temperature control, NG decompression, broad-spectrum antibiotics. Staged or primary closure.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Necrotizing enterocolitis (NEC) most commonly affects:',
 'Term healthy infants', 'Premature infants especially those receiving enteral feeds', 'Infants with pyloric stenosis', 'Only breastfed infants', 'Infants older than 6 months',
 'B', 'NEC primarily affects premature infants. Risk factors: prematurity, formula feeding, hypoxia, sepsis. Presents with feeding intolerance, distension, bloody stools, pneumatosis intestinalis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Pathognomonic radiological finding in NEC is:',
 'Bowel obstruction', 'Pneumatosis intestinalis', 'Free air always', 'Normal gas pattern', 'Double bubble sign',
 'B', 'Pneumatosis intestinalis (intramural air) is pathognomonic for NEC. Portal venous gas indicates severe disease. Free air indicates perforation. Serial X-rays important.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Surgical intervention for NEC is indicated for:',
 'All cases of NEC', 'Perforation fixed loop or clinical deterioration despite medical management', 'Pneumatosis alone', 'Mild feeding intolerance', 'Asymptomatic portal venous gas',
 'B', 'Surgery for NEC: free air (perforation), clinical deterioration on medical therapy, fixed loop on serial X-rays, abdominal wall erythema. Initial medical management: NPO, antibiotics, supportive.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Intussusception most commonly occurs in the pediatric age group of:',
 '0-3 months', '6 months to 3 years', '5-10 years', 'Adolescence', 'Neonatal period',
 'B', 'Intussusception peak age: 6 months to 3 years (peak 6-18 months). Ileocolic most common. Lead point more common in older children. Rotavirus vaccine slightly increases risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Classic presentation of intussusception is:',
 'Constant abdominal pain', 'Intermittent colicky pain currant jelly stool and sausage-shaped mass', 'Projectile vomiting', 'Chronic constipation', 'Fever only',
 'B', 'Classic triad: intermittent colicky pain (drawing up legs), currant jelly stool (blood and mucus - late sign), palpable sausage-shaped mass (RUQ). Complete triad in <50%.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The preferred initial treatment for uncomplicated intussusception is:',
 'Immediate surgery', 'Air or contrast enema reduction', 'Observation only', 'Antibiotics', 'NG decompression only',
 'B', 'Non-operative reduction: pneumatic (air) or hydrostatic (contrast) enema under fluoroscopy or US guidance. Success rate 80-90%. Surgery for failed reduction, perforation, or peritonitis.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Meckel diverticulum is:',
 'Acquired diverticulum', 'True diverticulum from omphalomesenteric duct remnant', 'Pseudodiverticulum', 'Part of Hirschsprung disease', 'Located in jejunum',
 'B', 'Meckel diverticulum: true diverticulum (all layers) from persistent omphalomesenteric (vitelline) duct. Rule of 2s: 2% population, 2 feet from ileocecal valve, 2 inches long, 2 types of ectopic tissue.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'The most common presentation of Meckel diverticulum in children is:',
 'Obstruction', 'Painless rectal bleeding from ectopic gastric mucosa', 'Diverticulitis', 'Perforation', 'Incidental finding',
 'B', 'Children: painless rectal bleeding (ectopic gastric mucosa causes ulceration). Adults: obstruction more common. Meckel scan (Tc-99m pertechnetate) detects gastric mucosa.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Umbilical hernia in infants:',
 'Always requires immediate surgery', 'Usually closes spontaneously by age 4-5 if less than 1.5 cm', 'Never closes', 'Requires urgent repair', 'Is always symptomatic',
 'B', 'Umbilical hernia: most close spontaneously by 4-5 years, especially if <1.5 cm. Surgery if: persists beyond 4-5 years, symptomatic, very large, or incarcerated.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Inguinal hernia in infants is:',
 'Direct hernia', 'Indirect hernia from patent processus vaginalis', 'Femoral hernia', 'Incisional hernia', 'Umbilical hernia',
 'B', 'Pediatric inguinal hernia: virtually all indirect (patent processus vaginalis). More common in males, premature infants, right side. Repair when diagnosed due to incarceration risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Undescended testis (cryptorchidism) should be treated by age:',
 '6 months', '1 year (6-12 months if no descent)', '5 years', 'Puberty', 'No treatment needed',
 'B', 'Orchiopexy recommended by 6-12 months of age if testis has not descended. Early surgery preserves fertility and reduces (but does not eliminate) malignancy risk. Most descend by 3 months.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000016-0000-0000-0000-000000000016', 'a0000004-0000-0000-0000-000000000004',
 'Hypospadias is characterized by:',
 'Dorsal urethral opening', 'Ventral urethral opening with chordee and hooded foreskin', 'Normal urethral position', 'Bilateral undescended testes', 'Bladder exstrophy',
 'B', 'Hypospadias: urethral meatus on ventral (under) surface of penis. Associated with ventral curvature (chordee) and hooded dorsal foreskin. Do NOT circumcise (foreskin used for repair).', 'easy', 'knowledge');
