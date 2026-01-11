-- ============================================================================
-- SURGERY 3 CME ARTICLE 14: Pediatric Surgery
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000080-0000-0000-0000-000000000080', 'a0000003-0000-0000-0000-000000000003', 'Pediatric Surgery', 'Congenital and acquired surgical conditions in children')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000314-0000-0000-0000-000000000014',
    'c0000080-0000-0000-0000-000000000080',
    'a0000003-0000-0000-0000-000000000003',
    'Pediatric Surgery: Congenital and Acquired Conditions',
    'Pyloric Stenosis, Intussusception, Inguinal Hernia and Common Congenital Anomalies',
    'This article covers common pediatric surgical conditions including hypertrophic pyloric stenosis, intussusception, inguinal hernia and hydrocele, undescended testis, esophageal atresia, intestinal atresia, anorectal malformations, and biliary atresia.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000314-0001-0000-0000-000000000001', 'd0000314-0000-0000-0000-000000000014', 1,
'Hypertrophic pyloric stenosis classically presents at:',
'Birth', '2-8 weeks of age', '6-12 months of age', 'Over 2 years of age', NULL,
'B', 'Hypertrophic pyloric stenosis presents at 2-8 weeks with progressive projectile non-bilious vomiting (pylorus is proximal to ampulla). More common in firstborn males. Physical exam: visible peristalsis, palpable olive-shaped mass in RUQ. Metabolic derangement: hypochloremic, hypokalemic metabolic alkalosis. Diagnosis: ultrasound (pyloric muscle >3mm thick, >15mm long). Treatment: Ramstedt pyloromyotomy after fluid/electrolyte correction.', 'easy'),

('e0000314-0002-0000-0000-000000000002', 'd0000314-0000-0000-0000-000000000014', 2,
'The classic triad of intussusception in a child includes:',
'Fever, diarrhea, weight loss', 'Colicky abdominal pain, vomiting, and red currant jelly stools', 'Constipation, abdominal distension, fever', 'Jaundice, pale stools, dark urine', NULL,
'B', 'Intussusception triad: colicky intermittent abdominal pain (child draws up legs), vomiting, and red currant jelly stools (blood and mucus - late sign). Peak age 6-18 months. Most common cause of intestinal obstruction in infants. Ileocolic is most common type. Sausage-shaped mass may be palpable. Diagnosis: ultrasound (target/doughnut sign). Treatment: air or contrast enema reduction; surgery if peritonitis or failed reduction.', 'easy'),

('e0000314-0003-0000-0000-000000000003', 'd0000314-0000-0000-0000-000000000014', 3,
'Pediatric inguinal hernias are:',
'Usually direct hernias from muscle weakness', 'Indirect hernias due to patent processus vaginalis', 'Femoral hernias', 'Incisional hernias', NULL,
'B', 'Pediatric inguinal hernias are almost always indirect, caused by patent processus vaginalis (failure of closure after testicular descent). More common in boys (10:1), premature infants, right side. Present as intermittent groin swelling, especially with crying/straining. High risk of incarceration in infancy (up to 30% in first year). All should be repaired surgically (herniotomy, no mesh needed).', 'easy'),

('e0000314-0004-0000-0000-000000000004', 'd0000314-0000-0000-0000-000000000014', 4,
'An undescended testis (cryptorchidism) should be treated by:',
'Age 5 years', '6-12 months of age (orchidopexy)', 'Puberty', 'No treatment needed', NULL,
'B', 'Orchidopexy for undescended testis should be performed by 6-12 months of age. Rationale: reduced fertility (germ cell damage from higher temperature), increased malignancy risk (even after orchidopexy, but allows examination), psychological impact. If testis descends spontaneously, this occurs by 4-6 months. Intra-abdominal testes may require staged Fowler-Stephens procedure. Testis in inguinal canal requires inguinal orchidopexy.', 'medium'),

('e0000314-0005-0000-0000-000000000005', 'd0000314-0000-0000-0000-000000000014', 5,
'A newborn presents with excessive drooling, choking with feeds, and a nasogastric tube coiling in the upper chest on X-ray. The most likely diagnosis is:',
'Pyloric stenosis', 'Esophageal atresia', 'Duodenal atresia', 'Hirschsprung disease', NULL,
'B', 'Esophageal atresia presents at birth with inability to swallow secretions (drooling, choking), failure to pass NGT, respiratory distress with feeds. NGT coils in upper pouch on X-ray. 85% have tracheoesophageal fistula (TEF). Gross classification: Type C (EA with distal TEF) most common (85%). VACTERL association: Vertebral, Anorectal, Cardiac, TEF/EA, Renal, Limb anomalies. Treatment: primary repair when possible.', 'easy'),

('e0000314-0006-0000-0000-000000000006', 'd0000314-0000-0000-0000-000000000014', 6,
'The "double bubble" sign on abdominal X-ray in a neonate is characteristic of:',
'Jejunal atresia', 'Duodenal atresia or stenosis', 'Pyloric stenosis', 'Malrotation', NULL,
'B', 'Double bubble sign (two gas-filled structures: stomach and dilated proximal duodenum) indicates duodenal obstruction - most commonly duodenal atresia. Associated with Down syndrome (30%), annular pancreas, malrotation. Bilious vomiting in first 24-48 hours. No distal bowel gas in complete atresia; some gas if stenosis or malrotation. Treatment: duodenoduodenostomy. Contrast study if gas distally (rule out malrotation).', 'easy'),

('e0000314-0007-0000-0000-000000000007', 'd0000314-0000-0000-0000-000000000014', 7,
'Biliary atresia presents with:',
'Bloody diarrhea', 'Persistent conjugated hyperbilirubinemia, pale stools, dark urine, hepatomegaly', 'Projectile vomiting', 'Failure to pass meconium', NULL,
'B', 'Biliary atresia is obliteration of extrahepatic bile ducts, presenting with neonatal cholestasis (conjugated/direct hyperbilirubinemia), pale acholic stools, dark urine, hepatomegaly. Must differentiate from neonatal hepatitis. Diagnosis: HIDA scan (no excretion), liver biopsy, intraoperative cholangiogram. Treatment: Kasai portoenterostomy (before 60 days for best results). Many progress to cirrhosis requiring liver transplant.', 'medium'),

('e0000314-0008-0000-0000-000000000008', 'd0000314-0000-0000-0000-000000000014', 8,
'Malrotation with midgut volvulus is a surgical emergency because:',
'It causes constipation', 'The entire midgut blood supply (SMA) may be compromised leading to bowel necrosis', 'It is associated with Down syndrome', 'It always resolves spontaneously', NULL,
'B', 'Malrotation results from incomplete rotation of midgut during development, creating a narrow mesenteric base that predisposes to volvulus (twisting). Volvulus occludes the SMA, causing ischemia of entire midgut (D4 to transverse colon). Presents with bilious vomiting in neonate - assume malrotation until proven otherwise. Upper GI series shows corkscrew/bird beak appearance. Emergency Ladd procedure is required.', 'medium'),

('e0000314-0009-0000-0000-000000000009', 'd0000314-0000-0000-0000-000000000014', 9,
'Anorectal malformations in males are classified based on:',
'Birth weight', 'Position of rectum relative to puborectalis muscle (levator ani)', 'Presence of meconium', 'Associated cardiac anomalies', NULL,
'B', 'Anorectal malformations are classified by relationship of rectum to levator ani/puborectalis muscle: (1) High/supralevator - rectum above puborectalis, usually with fistula to bladder/urethra (males) or vagina (females), requires colostomy then PSARP; (2) Low/translevator - rectum passes through muscle, perineal fistula, can do primary repair. Wingspread/Krickenbeck classifications are used. VACTERL workup essential.', 'hard'),

('e0000314-0010-0000-0000-000000000010', 'd0000314-0000-0000-0000-000000000014', 10,
'Meckel diverticulum is:',
'Located in the colon', 'A true diverticulum containing all bowel wall layers, located in the ileum', 'Always symptomatic', 'A duplication cyst', NULL,
'B', 'Meckel diverticulum is the most common congenital GI anomaly (2% of population). Rule of 2s: 2% of population, 2 feet from ileocecal valve, 2 inches long, 2 types of ectopic tissue (gastric most common, pancreatic), symptomatic in first 2 years. Complications: bleeding (gastric mucosa causing ulceration), obstruction, Meckel diverticulitis. Diagnosis: Meckel scan (Tc-99m pertechnetate for gastric mucosa). Treatment: resection if symptomatic.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 14 (Pediatric Surgery) with 10 self-assessment questions inserted' as status;
