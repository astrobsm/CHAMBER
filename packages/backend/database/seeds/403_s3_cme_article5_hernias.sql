-- ============================================================================
-- SURGERY 3 CME ARTICLE 5: Abdominal Wall Hernias
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000071-0000-0000-0000-000000000071', 'a0000003-0000-0000-0000-000000000003', 'Abdominal Wall Hernias', 'Types, diagnosis and surgical repair of hernias')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000305-0000-0000-0000-000000000005',
    'c0000071-0000-0000-0000-000000000071',
    'a0000003-0000-0000-0000-000000000003',
    'Abdominal Wall Hernias: Classification and Surgical Management',
    'Inguinal, Femoral, Umbilical and Incisional Hernias',
    'Hernias are among the most common conditions requiring surgical repair. This article covers anatomy, classification of inguinal hernias (direct vs indirect), femoral hernias, umbilical and incisional hernias, clinical presentation, and surgical approaches including open and laparoscopic techniques.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000305-0001-0000-0000-000000000001', 'd0000305-0000-0000-0000-000000000005', 1,
'The Hesselbach triangle, the site of direct inguinal hernias, is bounded by:',
'Inguinal ligament, internal oblique, external oblique', 'Inguinal ligament inferiorly, rectus abdominis medially, and inferior epigastric vessels laterally', 'Femoral artery, femoral vein, inguinal ligament', 'Cooper ligament, iliopubic tract, internal ring', NULL,
'B', 'Hesselbach triangle boundaries: (1) Inferior - inguinal ligament, (2) Medial - lateral border of rectus abdominis, (3) Lateral - inferior epigastric vessels. Direct hernias protrude through this triangle (medial to inferior epigastric vessels). Indirect hernias exit through the internal ring (lateral to inferior epigastric vessels).', 'medium'),

('e0000305-0002-0000-0000-000000000002', 'd0000305-0000-0000-0000-000000000005', 2,
'An indirect inguinal hernia passes through the internal ring and travels:',
'Directly through the posterior wall of the inguinal canal', 'Along the inguinal canal through the external ring, potentially into the scrotum', 'Below the inguinal ligament', 'Through the femoral canal', NULL,
'B', 'Indirect inguinal hernias follow the path of testicular descent: through the internal ring (lateral to inferior epigastric vessels), along the inguinal canal within the spermatic cord, through the external ring, and potentially into the scrotum. They are congenital (patent processus vaginalis) and more common in younger patients.', 'easy'),

('e0000305-0003-0000-0000-000000000003', 'd0000305-0000-0000-0000-000000000005', 3,
'Which hernia has the highest risk of strangulation?',
'Direct inguinal hernia', 'Femoral hernia', 'Umbilical hernia', 'Incisional hernia', NULL,
'B', 'Femoral hernias have the highest strangulation risk (15-20%) due to their narrow, rigid neck (bounded by inguinal ligament anteriorly, pectineal ligament posteriorly, lacunar ligament medially). They are more common in women but still rare overall. All femoral hernias should be repaired promptly, even if asymptomatic.', 'easy'),

('e0000305-0004-0000-0000-000000000004', 'd0000305-0000-0000-0000-000000000005', 4,
'The femoral canal is located:',
'Above the inguinal ligament', 'Below the inguinal ligament, medial to the femoral vein', 'Within the inguinal canal', 'Posterior to the rectus muscle', NULL,
'B', 'The femoral canal is located below the inguinal ligament in the femoral sheath. Boundaries: anterior (inguinal ligament), posterior (pectineal/Cooper ligament), medial (lacunar ligament), lateral (femoral vein). Mnemonic NAVAL (lateral to medial): Nerve, Artery, Vein, (empty space/Anatomy of femoral canal), Lymphatics.', 'medium'),

('e0000305-0005-0000-0000-000000000005', 'd0000305-0000-0000-0000-000000000005', 5,
'A patient with an inguinal hernia develops sudden severe pain, nausea, vomiting, and the hernia is now tender, firm, and irreducible. What is the diagnosis?',
'Incarcerated hernia', 'Strangulated hernia', 'Reducible hernia', 'Sliding hernia', NULL,
'B', 'Strangulation involves incarceration (irreducible) plus compromised blood supply. Signs include severe pain, tenderness, firmness, skin changes (erythema), and systemic symptoms (nausea, vomiting, fever, tachycardia). This is a surgical emergency requiring immediate operation. Incarcerated hernias without strangulation signs may allow attempted reduction.', 'easy'),

('e0000305-0006-0000-0000-000000000006', 'd0000305-0000-0000-0000-000000000005', 6,
'During open inguinal hernia repair using the Lichtenstein technique, what is placed to reinforce the posterior wall?',
'Primary suture repair only', 'Synthetic mesh', 'Biologic graft', 'Muscle flap', NULL,
'B', 'The Lichtenstein tension-free repair uses synthetic mesh (usually polypropylene) to reinforce the posterior wall of the inguinal canal. The mesh is sutured to the inguinal ligament, pubic tubercle, and conjoint tendon. Mesh repair has significantly lower recurrence rates (1-2%) compared to tissue repairs (10-15%).', 'easy'),

('e0000305-0007-0000-0000-000000000007', 'd0000305-0000-0000-0000-000000000005', 7,
'Laparoscopic hernia repair approaches include TEP and TAPP. What does TEP stand for?',
'Transabdominal Extraperitoneal Procedure', 'Totally Extraperitoneal Approach', 'Total Endoscopic Peritoneal', 'Trans-External Peritoneal', NULL,
'B', 'TEP (Totally Extraperitoneal) repair accesses the preperitoneal space without entering the peritoneal cavity. TAPP (Transabdominal Preperitoneal) enters the abdomen, then dissects the preperitoneal space. Both place mesh in the preperitoneal space, covering the myopectineal orifice. TEP has no risk of intra-abdominal organ injury; TAPP allows visualization of both sides.', 'medium'),

('e0000305-0008-0000-0000-000000000008', 'd0000305-0000-0000-0000-000000000005', 8,
'Which nerve is at greatest risk of injury during open inguinal hernia repair, potentially causing chronic groin pain?',
'Femoral nerve', 'Ilioinguinal nerve', 'Lateral femoral cutaneous nerve', 'Obturator nerve', NULL,
'B', 'The ilioinguinal nerve runs in the inguinal canal and is at risk during open repair. Injury causes numbness over the inguinal region and medial thigh/scrotum. Other nerves at risk include iliohypogastric and genital branch of genitofemoral. Chronic pain after hernia repair (inguinodynia) affects 10-12% of patients; nerve entrapment is a major cause.', 'medium'),

('e0000305-0009-0000-0000-000000000009', 'd0000305-0000-0000-0000-000000000005', 9,
'An umbilical hernia in an adult is best managed by:',
'Observation in all cases', 'Surgical repair with mesh for defects larger than 1-2cm', 'Truss application', 'Spontaneous closure expected', NULL,
'B', 'Adult umbilical hernias do not resolve spontaneously (unlike congenital umbilical hernias in children <4 years). Repair is recommended due to incarceration risk. Small defects (<1-2cm) may be repaired primarily (Mayo technique). Larger defects benefit from mesh reinforcement to reduce recurrence. Risk factors include obesity, pregnancy, ascites.', 'medium'),

('e0000305-0010-0000-0000-000000000010', 'd0000305-0000-0000-0000-000000000005', 10,
'The triangle of doom in laparoscopic hernia repair contains:',
'Ilioinguinal nerve only', 'External iliac vessels (artery and vein)', 'Bladder', 'Spermatic cord structures', NULL,
'B', 'The triangle of doom is bounded by the vas deferens medially and gonadal vessels laterally. It contains the external iliac artery and vein. Staples, tacks, or dissection in this area can cause major vascular injury. The triangle of pain (lateral to gonadal vessels) contains the lateral femoral cutaneous and femoral nerves.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 5 (Abdominal Wall Hernias) with 10 self-assessment questions inserted' as status;
