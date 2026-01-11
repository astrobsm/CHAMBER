-- ============================================================================
-- SURGERY 3 CME ARTICLE 42: Abdominal Wall Hernias
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000108-0000-0000-0000-000000000108', 'a0000003-0000-0000-0000-000000000003', 'Abdominal Wall Hernias', 'Hernia types, repair techniques, and complications')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000342-0000-0000-0000-000000000042',
    'c0000108-0000-0000-0000-000000000108',
    'a0000003-0000-0000-0000-000000000003',
    'Abdominal Wall Hernias: Comprehensive Management',
    'Inguinal, Femoral, Ventral, and Incisional Hernias',
    'This article covers the diagnosis and management of abdominal wall hernias including inguinal, femoral, umbilical, epigastric, incisional, and parastomal hernias. Topics include anatomy, repair techniques (open and laparoscopic), mesh options, and complication management.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000342-0001-0000-0000-000000000001', 'd0000342-0000-0000-0000-000000000042', 1,
'An indirect inguinal hernia passes through the internal ring and lies:',
'Medial to the inferior epigastric vessels', 'Lateral to the inferior epigastric vessels, within the spermatic cord', 'Below the inguinal ligament', 'Through the femoral canal', NULL,
'B', 'Indirect inguinal hernia: follows path of testicular descent, enters internal (deep) inguinal ring LATERAL to inferior epigastric vessels, travels through inguinal canal within spermatic cord, may exit through external ring into scrotum. Most common hernia in both sexes (though inguinal hernias overall more common in men). Congenital (patent processus vaginalis) or acquired. Contrast with direct hernia: protrudes through floor (Hesselbach triangle) MEDIAL to inferior epigastric vessels.', 'easy'),

('e0000342-0002-0000-0000-000000000002', 'd0000342-0000-0000-0000-000000000042', 2,
'Femoral hernias have a higher risk of strangulation because:',
'They are larger', 'The femoral canal is narrow and rigid, bounded by the lacunar ligament medially', 'They occur only in children', 'They are always reducible', NULL,
'B', 'Femoral hernia: protrudes through femoral canal below inguinal ligament, medial to femoral vein. High strangulation risk (15-20%) due to: narrow, rigid femoral ring; sharp lacunar ligament (Gimbernat) medially. More common in women (though inguinal still more common than femoral in women). Presentation: groin mass below and lateral to pubic tubercle. Emergency presentation common. Treatment: always surgical repair (high complication rate). McVay (Cooper ligament) repair or mesh plug; laparoscopic repair (TEP/TAPP) also effective.', 'easy'),

('e0000342-0003-0000-0000-000000000003', 'd0000342-0000-0000-0000-000000000042', 3,
'The Lichtenstein tension-free repair uses:',
'Primary tissue closure only', 'Onlay synthetic mesh to reinforce the posterior wall without tension', 'No mesh', 'Only sutures to approximate muscle', NULL,
'B', 'Lichtenstein repair: gold standard open inguinal hernia repair. Technique: onlay mesh placed over posterior wall (floor of inguinal canal), secured to inguinal ligament below, internal oblique above, overlapping pubic tubercle medially. Tension-free (mesh bridges defect rather than pulling tissues together). Reduces recurrence rate to <1% (vs 10-15% for tissue repairs). Mesh should overlap defect by 3-4cm. Low-weight, macroporous mesh preferred. Local anesthesia often feasible.', 'easy'),

('e0000342-0004-0000-0000-000000000004', 'd0000342-0000-0000-0000-000000000042', 4,
'TEP (totally extraperitoneal) and TAPP (transabdominal preperitoneal) repairs differ in that:',
'TEP uses larger incisions', 'TEP stays entirely in preperitoneal space while TAPP enters the peritoneal cavity before dissecting preperitoneally', 'TAPP does not use mesh', 'TEP requires general anesthesia only', NULL,
'B', 'Laparoscopic inguinal hernia approaches: TAPP - enters peritoneal cavity, creates peritoneal flap, dissects preperitoneal space, places mesh, closes peritoneum. TEP - entirely in preperitoneal space (never enters peritoneum), balloon dissection, places mesh. Both: place large mesh covering direct, indirect, and femoral spaces (myopectineal orifice). Advantages over open: bilateral repair through same incisions, less chronic pain, faster recovery. TEP technically more demanding; TAPP easier but requires peritoneal closure.', 'medium'),

('e0000342-0005-0000-0000-000000000005', 'd0000342-0000-0000-0000-000000000042', 5,
'The triangle of doom in laparoscopic hernia repair contains:',
'The bladder', 'External iliac artery and vein, bounded by vas deferens and gonadal vessels', 'The appendix', 'The femoral nerve', NULL,
'B', 'Triangle of doom: dangerous zone in laparoscopic inguinal hernia repair. Boundaries: vas deferens (medial), gonadal vessels (lateral), peritoneal reflection (apex). Contains: external iliac artery and vein. Avoid stapling/tacking in this area - vascular injury risk. Triangle of pain: lateral to gonadal vessels, contains lateral femoral cutaneous nerve and femoral branch of genitofemoral nerve. Avoid fixation lateral to internal ring to prevent chronic pain. Mesh fixation should be above iliopubic tract and medial to internal ring.', 'medium'),

('e0000342-0006-0000-0000-000000000006', 'd0000342-0000-0000-0000-000000000042', 6,
'Incisional hernia risk factors include:',
'Laparoscopic surgery only', 'Wound infection, obesity, malnutrition, diabetes, immunosuppression, and technical factors', 'Young age', 'Transverse incisions', NULL,
'B', 'Incisional hernia risk factors: Patient: obesity, malnutrition, smoking, diabetes, immunosuppression, connective tissue disorders, chronic cough, ascites. Wound: infection (strongest risk factor), dehiscence, seroma/hematoma. Technical: midline incision (higher risk than transverse), mass closure with small bites recently favored, suture type (slowly absorbing preferred), suture-to-wound length ratio <4:1. Incidence: 10-20% after laparotomy. Prevention: optimize nutrition, glycemic control, infection prevention, meticulous technique.', 'medium'),

('e0000342-0007-0000-0000-000000000007', 'd0000342-0000-0000-0000-000000000042', 7,
'Component separation technique for complex ventral hernias:',
'Is never used with mesh', 'Releases the external oblique aponeurosis to gain medial advancement and allow fascial closure', 'Removes abdominal muscles', 'Only works for small hernias', NULL,
'B', 'Component separation (Ramirez technique): release external oblique aponeurosis 1-2cm lateral to rectus sheath, allows rectus complex to advance medially (up to 10cm at umbilicus). Used for large ventral/incisional hernias where primary closure not possible. Anterior CS: external oblique release. Posterior CS (TAR - transversus abdominis release): releases transversus abdominis from posterior rectus sheath, allows retromuscular mesh placement. Usually combined with mesh (sublay preferred). Endoscopic approaches reduce wound complications.', 'hard'),

('e0000342-0008-0000-0000-000000000008', 'd0000342-0000-0000-0000-000000000042', 8,
'Mesh position in ventral hernia repair - the sublay (retromuscular) position:',
'Is placed on top of the fascia', 'Is placed between the rectus muscle and posterior rectus sheath, with lower recurrence and infection rates', 'Is intraperitoneal', 'Requires no fixation', NULL,
'B', 'Mesh positions in ventral hernia repair: Onlay - superficial to anterior fascia (easy but higher infection/recurrence), Inlay - bridging defect (no fascial closure, not recommended), Sublay/retromuscular - behind rectus muscle, anterior to posterior sheath (best outcomes, Rives-Stoppa technique), Underlay/intraperitoneal - behind peritoneum (requires barrier-coated mesh to prevent adhesions). Sublay advantages: posterior sheath protects mesh from bowel, good tissue incorporation, low recurrence (~5%), allows fascia-to-fascia closure.', 'medium'),

('e0000342-0009-0000-0000-000000000009', 'd0000342-0000-0000-0000-000000000042', 9,
'Strangulated hernia management requires:',
'Elective scheduling', 'Emergency surgery with resection of non-viable bowel and careful assessment of hernia contents', 'Observation only', 'Antibiotics without surgery', NULL,
'B', 'Strangulated hernia: hernia contents (usually bowel) have compromised blood supply - surgical emergency. Presentation: irreducible, tender hernia, signs of bowel obstruction, systemic illness. Management: (1) Resuscitation; (2) Do NOT attempt forceful reduction (may push non-viable bowel into abdomen); (3) Emergency surgery; (4) Assess bowel viability after hernia reduction; (5) Resect non-viable bowel; (6) Primary repair or mesh (use caution if contaminated field - biological mesh or staged repair). Mesh in clean-contaminated field increasingly accepted.', 'easy'),

('e0000342-0010-0000-0000-000000000010', 'd0000342-0000-0000-0000-000000000042', 10,
'Umbilical hernia in adults:',
'Should always be observed', 'Should be repaired when symptomatic, enlarging, or in patients with ascites to prevent complications', 'Is congenital only', 'Never strangulates', NULL,
'B', 'Adult umbilical hernia: acquired weakness of umbilical ring. Risk factors: obesity, pregnancy, ascites (important - high complication rate if not repaired, but requires ascites control first). Small hernias (<1-2cm) with narrow neck have higher incarceration risk. Repair: symptomatic, enlarging, complications, ascites (after optimization). Technique: primary repair for small defects; mesh (open or laparoscopic) for larger defects (>2cm) or recurrence. In cirrhotic patients: optimize before surgery, control ascites, may need TIPS.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 42 (Abdominal Wall Hernias) with 10 self-assessment questions inserted' as status;
