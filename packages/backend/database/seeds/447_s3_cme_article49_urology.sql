-- ============================================================================
-- SURGERY 3 CME ARTICLE 49: Urological Emergencies
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000115-0000-0000-0000-000000000115', 'a0000003-0000-0000-0000-000000000003', 'Urological Emergencies', 'Acute urological conditions requiring intervention')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000349-0000-0000-0000-000000000049',
    'c0000115-0000-0000-0000-000000000115',
    'a0000003-0000-0000-0000-000000000003',
    'Urological Emergencies: Recognition and Management',
    'Time-Critical Urological Conditions',
    'This article covers urological emergencies including acute urinary retention, ureteric colic, priapism, Fournier gangrene, paraphimosis, renal trauma, and urological manifestations requiring urgent intervention.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000349-0001-0000-0000-000000000001', 'd0000349-0000-0000-0000-000000000049', 1,
'Acute urinary retention management involves:',
'Waiting for spontaneous resolution', 'Immediate bladder decompression with urethral or suprapubic catheter', 'Fluid restriction', 'Diuretics only', NULL,
'B', 'Acute urinary retention: inability to void with painful bladder distension. Causes: BPH (most common in men), urethral stricture, prostate cancer, constipation, medications (anticholinergics, opioids, alpha-agonists), neurological. Management: (1) Immediate catheterization (urethral preferred if no contraindication); (2) Suprapubic catheter if urethral not possible (stricture, trauma, false passage); (3) Decompress slowly in chronic retention to avoid post-obstructive diuresis and bleeding; (4) Treat underlying cause; (5) Trial without catheter after 24-72 hours with alpha-blocker.', 'easy'),

('e0000349-0002-0000-0000-000000000002', 'd0000349-0000-0000-0000-000000000049', 2,
'Ureteric colic from kidney stone:',
'Requires emergency surgery in all cases', 'Presents with severe colicky flank pain radiating to groin, and is managed conservatively unless complicated by infection, obstruction, or intractable symptoms', 'Is always painless', 'Never causes hematuria', NULL,
'B', 'Ureteric colic: typically severe colicky flank pain radiating to groin/testis/labia, nausea/vomiting, microscopic or gross hematuria. Diagnosis: CT KUB (non-contrast). Management: (1) Analgesia (NSAIDs first-line, opioids); (2) Hydration; (3) Medical expulsive therapy (alpha-blockers for distal stones <10mm); (4) Most stones <5mm pass spontaneously. URGENT intervention needed: (1) Infected/obstructed kidney (pyonephrosis) - urosepsis risk; (2) AKI/solitary kidney; (3) Intractable pain/vomiting; (4) Large stone unlikely to pass. Options: ureteral stent, nephrostomy, ureteroscopy, ESWL.', 'easy'),

('e0000349-0003-0000-0000-000000000003', 'd0000349-0000-0000-0000-000000000049', 3,
'Ischemic priapism (low-flow):',
'Can wait for outpatient follow-up', 'Is a urological emergency requiring immediate intervention to prevent permanent erectile dysfunction', 'Is usually caused by trauma', 'Resolves spontaneously always', NULL,
'B', 'Priapism: prolonged erection (>4 hours) unrelated to sexual stimulation. ISCHEMIC (low-flow, veno-occlusive): EMERGENCY - blood trapped in corpora, acidotic, ischemic. Causes: drugs (intracavernosal injections, PDE5 inhibitors, cocaine), sickle cell, idiopathic. Treatment window: <4-6 hours for best outcomes; >24-48 hours = irreversible damage. Management: (1) Aspiration of blood from corpora; (2) Intracavernosal phenylephrine injection; (3) Surgical shunt if medical fails. NON-ISCHEMIC (high-flow, arterial): from trauma, not an emergency, can observe.', 'medium'),

('e0000349-0004-0000-0000-000000000004', 'd0000349-0000-0000-0000-000000000049', 4,
'Fournier gangrene:',
'Is a mild condition', 'Is necrotizing fasciitis of the perineum/genitalia requiring emergency surgical debridement', 'Responds to antibiotics alone', 'Only affects females', NULL,
'B', 'Fournier gangrene: necrotizing fasciitis of perineum and genitalia. SURGICAL EMERGENCY. Risk factors: diabetes (most common), immunosuppression, alcohol, local trauma, urinary/perianal infections. Organisms: polymicrobial (aerobic and anaerobic). Presentation: perineal pain out of proportion, rapid progression, systemic toxicity, crepitus, skin necrosis. Management: (1) Aggressive resuscitation; (2) Broad-spectrum antibiotics; (3) EMERGENCY surgical debridement - must be radical, often requires multiple debridements; (4) Wound management (VAC therapy); (5) Possible diverting colostomy/suprapubic catheter. Mortality: 20-40% even with treatment.', 'medium'),

('e0000349-0005-0000-0000-000000000005', 'd0000349-0000-0000-0000-000000000049', 5,
'Paraphimosis:',
'Is retracted foreskin that cannot be returned to normal position, causing painful glans swelling, and requires urgent reduction', 'Is the same as phimosis', 'Is not an emergency', 'Only occurs in circumcised males', NULL,
'A', 'Paraphimosis: foreskin retracted behind glans cannot be returned to normal position. The tight band causes venous congestion, edema, and if untreated, arterial compromise and necrosis. EMERGENCY. Causes: iatrogenic (not replacing foreskin after catheterization/exam), poor hygiene. Management: (1) Manual reduction - steady pressure to compress edema, then push glans back while pulling foreskin forward; (2) Adjuncts: ice, osmotic agents (sugar, mannitol), puncture of edematous foreskin; (3) Dorsal slit if manual reduction fails; (4) Elective circumcision after resolution.', 'easy'),

('e0000349-0006-0000-0000-000000000006', 'd0000349-0000-0000-0000-000000000049', 6,
'Blunt renal trauma grading and management:',
'All grades require immediate nephrectomy', 'Low-grade (I-III) injuries are usually managed non-operatively, while high-grade injuries or hemodynamic instability may require intervention', 'All require angiography', 'Observation is never appropriate', NULL,
'B', 'Renal trauma grading (AAST): Grade I: contusion/subcapsular hematoma; II: <1cm laceration, non-expanding hematoma; III: >1cm laceration not into collecting system; IV: laceration into collecting system or vascular injury; V: shattered kidney or avulsion. Management: (1) Hemodynamically stable Grade I-III: non-operative, bed rest, serial labs, repeat imaging; (2) Hemodynamically stable Grade IV-V: may attempt non-operative with interventional radiology support; (3) Hemodynamically unstable or expanding hematoma: exploration; (4) Goal: renal preservation when possible.', 'medium'),

('e0000349-0007-0000-0000-000000000007', 'd0000349-0000-0000-0000-000000000049', 7,
'Urethral injury should be suspected when:',
'Only with direct penile trauma', 'Blood at the meatus, inability to void, high-riding prostate on rectal exam, or perineal hematoma are present after pelvic trauma', 'Only in females', 'All catheterization attempts should proceed', NULL,
'B', 'Urethral injury signs: (1) Blood at urethral meatus; (2) Inability to void/urinary retention; (3) High-riding or non-palpable prostate on DRE; (4) Perineal/scrotal hematoma (butterfly pattern with Buck fascia rupture). Common with: pelvic fractures (posterior urethra), straddle injuries (anterior urethra). If suspected: DO NOT attempt urethral catheterization (may convert partial to complete disruption). Diagnosis: retrograde urethrogram. Management: suprapubic catheter for drainage. Definitive repair: early (2-3 weeks) or delayed (3 months) urethroplasty.', 'medium'),

('e0000349-0008-0000-0000-000000000008', 'd0000349-0000-0000-0000-000000000049', 8,
'Obstructed infected kidney (pyonephrosis):',
'Can be treated with oral antibiotics', 'Requires emergency drainage (nephrostomy or ureteral stent) in addition to antibiotics to prevent urosepsis', 'Is always treated with nephrectomy', 'Never causes sepsis', NULL,
'B', 'Pyonephrosis: infected, obstructed kidney = EMERGENCY. Obstruction + infection = rapid progression to sepsis. Presentation: fever, flank pain, obstructed kidney on imaging with signs of infection. Stone + UTI symptoms should raise suspicion. Management: (1) Resuscitation, IV antibiotics; (2) URGENT drainage: percutaneous nephrostomy (PCN) or ureteral stent placement (within hours, not days); (3) Definitive stone treatment after infection resolved (usually 4-6 weeks). Antibiotics alone inadequate - infected urine must be drained. Delay in drainage associated with increased mortality.', 'medium'),

('e0000349-0009-0000-0000-000000000009', 'd0000349-0000-0000-0000-000000000049', 9,
'Bladder rupture:',
'Is always extraperitoneal', 'May be extraperitoneal (usually from pelvic fracture, managed with catheter) or intraperitoneal (from blunt trauma to full bladder, requires surgical repair)', 'Never requires surgery', 'Is diagnosed clinically only', NULL,
'B', 'Bladder rupture: two types with different management. EXTRAPERITONEAL (80%): associated with pelvic fractures, bladder wall disrupted but contained in pelvis. Treatment: catheter drainage for 10-14 days, usually heals. INTRAPERITONEAL (20%): from blunt trauma to full bladder (kick, seatbelt, steering wheel), dome rupture into peritoneal cavity. Treatment: requires surgical repair (suture closure, drain, catheter). Diagnosis: CT cystogram or retrograde cystogram. Clues: gross hematuria after pelvic trauma, inability to void, suprapubic tenderness, low urine output with elevated creatinine (reabsorption if intraperitoneal).', 'medium'),

('e0000349-0010-0000-0000-000000000010', 'd0000349-0000-0000-0000-000000000049', 10,
'Penile fracture:',
'Is fracture of the penile bone', 'Is rupture of the tunica albuginea during erection, presenting with sudden pain, pop, rapid detumescence, and eggplant deformity, requiring surgical repair', 'Should be observed only', 'Is diagnosed only with MRI', NULL,
'B', 'Penile fracture: rupture of tunica albuginea (thick fibrous covering of corpora cavernosa) during erection. Mechanism: trauma during intercourse (partner on top most common), masturbation, rolling over in bed. Presentation: sudden snap/pop, immediate pain, rapid detumescence, swelling, ecchymosis ("eggplant deformity"). Diagnosis: clinical (ultrasound or MRI if uncertain). Treatment: SURGICAL REPAIR - incision, evacuation of hematoma, repair of tunical defect. Delay increases risk of erectile dysfunction, Peyronie-like curvature, painful erections. Urethrography if blood at meatus (10-20% have urethral injury).', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 49 (Urological Emergencies) with 10 self-assessment questions inserted' as status;
