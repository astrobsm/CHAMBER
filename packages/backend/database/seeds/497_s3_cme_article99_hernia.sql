-- ============================================================================
-- SURGERY 3 CME ARTICLE 99: Hernia Repair Principles
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000165-0000-0000-0000-000000000165', 'a0000003-0000-0000-0000-000000000003', 'Hernia Repair Principles', 'Comprehensive hernia management and repair techniques')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000399-0000-0000-0000-000000000099',
    'c0000165-0000-0000-0000-000000000165',
    'a0000003-0000-0000-0000-000000000003',
    'Hernia Repair: Anatomy, Techniques, and Outcomes',
    'Inguinal, Femoral, Umbilical, and Incisional Hernias',
    'This article covers hernia classification, inguinal canal anatomy, tissue versus mesh repair, open versus laparoscopic approaches, femoral hernia management, umbilical and incisional hernia repair, and management of incarcerated and strangulated hernias.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000399-0001-0000-0000-000000000001', 'd0000399-0000-0000-0000-000000000099', 1,
'An indirect inguinal hernia differs from a direct hernia in that it:',
'Is medial to the inferior epigastric vessels', 'Passes through the deep (internal) inguinal ring lateral to the inferior epigastric vessels and follows the spermatic cord', 'Only occurs in women', 'Never enters the scrotum',
'B', 'INDIRECT INGUINAL HERNIA: most common inguinal hernia type. ANATOMY: hernia sac passes through DEEP (internal) INGUINAL RING, LATERAL to inferior epigastric vessels, follows spermatic cord through inguinal canal, can descend into scrotum. ETIOLOGY: patent processus vaginalis (congenital component). DIRECT HERNIA: protrudes through posterior wall (Hesselbach triangle), MEDIAL to inferior epigastric vessels, rarely enters scrotum. PANTALOON hernia: both direct and indirect components straddling inferior epigastric vessels.', 'easy'),

('e0000399-0002-0000-0000-000000000002', 'd0000399-0000-0000-0000-000000000099', 2,
'The Hesselbach triangle (site of direct inguinal hernia) is bounded by:',
'Cystic duct, hepatic duct, and liver', 'Inferior epigastric vessels laterally, rectus sheath medially, and inguinal ligament inferiorly', 'Psoas muscle and femoral vein', 'Deep ring and superficial ring',
'B', 'HESSELBACH TRIANGLE: area of weakness in posterior inguinal wall where DIRECT inguinal hernias protrude. BOUNDARIES: LATERAL - inferior epigastric vessels; MEDIAL - lateral border of rectus sheath (rectus abdominis muscle); INFERIOR - inguinal (Poupart) ligament. Floor: transversalis fascia. Direct hernias push through this triangle. INDIRECT hernias are lateral to this triangle (through deep ring). During laparoscopic repair (TAPP/TEP), myopectineal orifice (all groin hernia sites) visualized from preperitoneal space.', 'easy'),

('e0000399-0003-0000-0000-000000000003', 'd0000399-0000-0000-0000-000000000099', 3,
'Mesh repair for inguinal hernia compared to tissue repair:',
'Has higher recurrence rates', 'Has significantly lower recurrence rates (less than 5% versus 10-15%) and is the current standard of care for adult inguinal hernia repair', 'Causes more infections always', 'Is contraindicated in elective cases',
'B', 'MESH vs TISSUE REPAIR for inguinal hernia: MESH repair (tension-free): LOWER RECURRENCE rates (<5% vs 10-15% for tissue repair), current STANDARD OF CARE. Examples: Lichtenstein (open mesh), laparoscopic (TAPP, TEP). TISSUE REPAIR (Bassini, Shouldice): higher recurrence, still used in: contaminated fields, strangulated bowel requiring resection, resource-limited settings, patient preference. MESH complications: chronic pain (rare), mesh infection (rare, often can be managed without removal), mesh migration. Lightweight mesh may reduce chronic pain while maintaining strength.', 'easy'),

('e0000399-0004-0000-0000-000000000004', 'd0000399-0000-0000-0000-000000000099', 4,
'Femoral hernias:',
'Are more common than inguinal hernias', 'Are more common in women, have a high incarceration/strangulation rate, and the hernia sac passes through the femoral canal below the inguinal ligament', 'Rarely incarcerate', 'Are always treated conservatively',
'B', 'FEMORAL HERNIA: hernia through FEMORAL CANAL (medial compartment of femoral sheath). ANATOMY: below inguinal ligament, medial to femoral vein. EPIDEMIOLOGY: more common in WOMEN (wider pelvis), but inguinal still more common even in women. CLINICAL SIGNIFICANCE: HIGH INCARCERATION/STRANGULATION rate (narrow, rigid boundaries of femoral ring). PRESENTATION: groin mass below inguinal ligament and lateral to pubic tubercle. TREATMENT: always repair when diagnosed (do not observe due to high complication risk). Approach: inguinal (open), preperitoneal (laparoscopic or open McEvedy), or femoral (Lockwood - rarely used).', 'easy'),

('e0000399-0005-0000-0000-000000000005', 'd0000399-0000-0000-0000-000000000099', 5,
'Laparoscopic inguinal hernia repair (TAPP and TEP) compared to open Lichtenstein:',
'Has much higher recurrence', 'Has similar recurrence rates, may have less chronic pain, faster return to activity, but longer learning curve and requires general anesthesia', 'Is always preferred', 'Cannot repair bilateral hernias',
'B', 'LAPAROSCOPIC vs OPEN INGUINAL HERNIA REPAIR: TAPP (transabdominal preperitoneal) and TEP (totally extraperitoneal) vs open Lichtenstein. RECURRENCE: similar with experienced surgeons. ADVANTAGES of laparoscopic: less CHRONIC PAIN (some studies), faster RETURN TO ACTIVITY, excellent for BILATERAL (same incisions), better visualization of myopectineal orifice. DISADVANTAGES: GENERAL ANESTHESIA required, longer LEARNING CURVE, higher cost, rare but serious complications (bowel injury with TAPP). Open Lichtenstein: can be done under local anesthesia, shorter learning curve. Recurrent hernia after open: consider laparoscopic (virgin preperitoneal space).', 'medium'),

('e0000399-0006-0000-0000-000000000006', 'd0000399-0000-0000-0000-000000000099', 6,
'An incarcerated hernia is:',
'Always gangrenous', 'A hernia that cannot be reduced into the abdominal cavity, which may or may not have compromised blood supply (strangulation)', 'The same as a reducible hernia', 'Only affects inguinal hernias',
'B', 'INCARCERATED HERNIA: hernia contents TRAPPED in hernia sac, cannot be REDUCED back into abdomen. May contain: omentum, small bowel, colon. CONSEQUENCES: potential OBSTRUCTION (bowel trapped), STRANGULATION (blood supply compromised - surgical emergency). STRANGULATED hernia: incarceration + ischemia; signs include severe pain, fever, tachycardia, erythematous skin, peritonitis, sepsis. MANAGEMENT: incarcerated - attempt reduction (taxis) if no strangulation signs, then urgent repair; strangulated - emergent surgery, resect non-viable bowel. Any incarcerated hernia needs repair during same admission.', 'easy'),

('e0000399-0007-0000-0000-000000000007', 'd0000399-0000-0000-0000-000000000099', 7,
'Umbilical hernia in adults:',
'Always closes spontaneously', 'Has a risk of incarceration and strangulation, is associated with obesity, ascites, and pregnancy, and should generally be repaired when symptomatic or with certain risk factors', 'Should never be repaired', 'Is only cosmetic',
'B', 'ADULT UMBILICAL HERNIA: protrusion through umbilical ring. RISK FACTORS: OBESITY, ASCITES (cirrhosis), PREGNANCY, repeated abdominal distension. Unlike pediatric (closes spontaneously by age 5), adult umbilical hernias do NOT close spontaneously. COMPLICATIONS: incarceration, strangulation (narrow neck). TREATMENT: repair when SYMPTOMATIC, incarcerated, or significant. Small hernias: may observe if asymptomatic. REPAIR: open (Mayo, mesh for larger defects) or laparoscopic. Cirrhosis with ascites: high risk, optimize ascites control, consider TIPS, watchful waiting vs repair for complications. Mesh reduces recurrence.', 'easy'),

('e0000399-0008-0000-0000-000000000008', 'd0000399-0000-0000-0000-000000000099', 8,
'Incisional hernia prevention includes:',
'Using rapidly absorbable sutures', 'Mass closure technique with slowly absorbable or non-absorbable sutures using a 4:1 suture-to-wound-length ratio, small bites, and risk factor optimization', 'No specific technique matters', 'Closing only skin',
'B', 'INCISIONAL HERNIA PREVENTION: CLOSURE TECHNIQUE: MASS closure (includes fascia/aponeurosis), SLOWLY ABSORBABLE or non-absorbable monofilament suture (e.g., PDS, nylon). SUTURE:WOUND LENGTH RATIO: 4:1 (suture length should be 4x incision length). SMALL BITES technique (5-8mm from edge, 5mm apart) - reduces hernia vs large bites. RISK FACTOR optimization: treat obesity, smoking cessation, optimize nutrition, glycemic control, avoid wound infection. Prophylactic mesh in high-risk patients (obesity, aneurysm repair, stoma closure) under investigation. Incisional hernia rate: 10-20% after laparotomy.', 'medium'),

('e0000399-0009-0000-0000-000000000009', 'd0000399-0000-0000-0000-000000000099', 9,
'Component separation technique for abdominal wall reconstruction:',
'Only closes small defects', 'Allows mobilization of abdominal wall muscles to close large ventral hernias by releasing the external oblique aponeurosis (anterior) or transversus abdominis (posterior/TAR)', 'Does not use mesh', 'Is purely cosmetic',
'B', 'COMPONENT SEPARATION: technique for large ventral/incisional hernias where primary closure is not possible. ANTERIOR COMPONENT SEPARATION (Ramirez): release EXTERNAL OBLIQUE aponeurosis lateral to rectus sheath, allows 3-5cm medial advancement per side. POSTERIOR COMPONENT SEPARATION (TAR - transversus abdominis release): release TRANSVERSUS ABDOMINIS muscle, creates large retromuscular/preperitoneal space for mesh, up to 10cm advancement. MESH typically used in combination (sublay/retromuscular position preferred). Allows closure of defects up to 20cm. Open or minimally invasive (eTEP-TAR). High success rates for complex abdominal wall reconstruction.', 'hard'),

('e0000399-0010-0000-0000-000000000010', 'd0000399-0000-0000-0000-000000000099', 10,
'Mesh placement positions in ventral hernia repair include:',
'Only subcutaneous', 'Onlay (above fascia), inlay (bridging defect), sublay/retromuscular (below fascia, above peritoneum), and underlay/intraperitoneal (below peritoneum)', 'Position does not affect outcomes', 'Only preperitoneal',
'B', 'MESH POSITIONS in ventral hernia repair: (1) ONLAY: above anterior fascia, subcutaneous. Easy but higher recurrence, wound complications; (2) INLAY: bridging defect (no fascial closure). Poor outcomes, avoid; (3) SUBLAY/RETROMUSCULAR: between posterior rectus sheath and rectus muscle. Good outcomes, protected from bowel, preferred by many; (4) UNDERLAY/INTRAPERITONEAL: below peritoneum in contact with bowel (requires barrier mesh). Used in laparoscopic repair (IPOM). HIERARCHY for outcomes: sublay/retromuscular > underlay > onlay. Retromuscular (Rives-Stoppa) position often preferred in open repair - mesh incorporated, low recurrence.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 99 (Hernia Repair Principles) with 10 self-assessment questions inserted' as status;
