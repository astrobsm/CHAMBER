-- Surgery 4 MCQ Question Bank - Batch 17
-- Section D: Urology - Urological Emergencies
-- 40 Questions

-- Topic: Urological Emergencies
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000017-0000-0000-0000-000000000017', 'Urological Emergencies', 'a0000004-0000-0000-0000-000000000004', 'Acute urological conditions requiring urgent management', 17, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Testicular torsion requires intervention within what time frame to maximize testicular salvage:',
 '1 hour', '4-6 hours', '24 hours', '48 hours', '72 hours',
 'B', 'Testicular torsion: 6 hours is critical window. Salvage rate: 90-100% at 6 hours, 50% at 12 hours, 10% at 24 hours. If suspected, immediate surgical exploration - do not wait for imaging.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Classic presentation of testicular torsion includes:',
 'Gradual onset pain with fever', 'Sudden severe pain high-riding testis and absent cremasteric reflex', 'Painless swelling', 'Dysuria and discharge', 'Bilateral symptoms',
 'B', 'Testicular torsion: sudden severe scrotal pain, nausea/vomiting, high-riding horizontal testis, absent cremasteric reflex. No fever initially. Commonly adolescent, may have prior episodes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'The bell clapper deformity predisposes to:',
 'Hydrocele', 'Testicular torsion due to abnormal tunica attachment', 'Varicocele', 'Epididymitis', 'Spermatocele',
 'B', 'Bell clapper: tunica vaginalis attaches high on cord instead of posterior testis. Testis hangs freely like bell clapper, allowing torsion. Often bilateral - reason for bilateral orchiopexy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of testicular torsion is:',
 'Antibiotics', 'Immediate scrotal exploration with detorsion and bilateral orchiopexy', 'Observation', 'Ice and elevation', 'Manual detorsion only',
 'B', 'Testicular torsion: emergency surgery. Detorsion, assess viability, orchiopexy. If non-viable, orchiectomy. BILATERAL orchiopexy because bell clapper often bilateral. Manual detorsion may temporize.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Direction for manual detorsion of testicular torsion is:',
 'Medial to lateral (like opening a book)', 'Lateral to medial', 'Random direction', 'No manual detorsion attempted', 'Clockwise only',
 'A', 'Manual detorsion: open the book - medial to lateral (external rotation). Usually torsion is medial. If pain worsens, try opposite direction. Success indicated by pain relief and testis descent.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Torsion of testicular appendage differs from testicular torsion by:',
 'More severe pain', 'Blue dot sign gradual onset and preserved cremasteric reflex', 'High-riding testis', 'Absent cremasteric reflex', 'Requiring emergent surgery',
 'B', 'Appendix testis torsion: gradual onset, localized superior pole pain, blue dot sign (necrotic appendage visible), cremasteric reflex present, normal testis position. Conservative management.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Fournier gangrene originates from:',
 'Skin infection only', 'Urogenital anorectal or cutaneous source', 'Always idiopathic', 'Trauma only', 'STI only',
 'B', 'Fournier gangrene sources: urogenital (UTI, urethral stricture), anorectal (perianal abscess, fistula), cutaneous (scrotal abscess). Diabetes major risk factor. Polymicrobial.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Management of Fournier gangrene includes:',
 'Antibiotics alone', 'Aggressive surgical debridement broad-spectrum antibiotics and supportive care', 'Observation', 'Wound care only', 'Hyperbaric oxygen alone',
 'B', 'Fournier gangrene: emergency wide surgical debridement (may need multiple), broad-spectrum antibiotics (gram+, gram-, anaerobes), supportive care, possible diverting colostomy. HBO adjunct.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Acute urinary retention is defined as:',
 'Decreased urine output', 'Sudden inability to void with painful bladder distension', 'Chronic incomplete emptying', 'Nocturia only', 'Hematuria',
 'B', 'Acute urinary retention: sudden inability to void despite urge, suprapubic pain and palpable distended bladder. Requires immediate catheterization for relief.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of acute urinary retention in males is:',
 'Urethral stricture', 'Benign prostatic hyperplasia', 'Prostate cancer', 'Urethral stone', 'Phimosis',
 'B', 'BPH is most common cause in older males. Other causes: medications (anticholinergics, opioids), constipation, stricture, neurological, post-surgical, clot retention after hematuria.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Initial management of acute urinary retention is:',
 'Urgent cystoscopy', 'Urethral catheterization', 'Suprapubic aspiration always', 'Fluid restriction', 'Diuretics',
 'B', 'Immediate urethral catheterization for decompression. Suprapubic catheter if urethral catheter cannot be passed. Monitor for post-obstructive diuresis. Treat underlying cause.', 'easy', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Post-obstructive diuresis is significant when output exceeds:',
 '100 mL/hour', '200 mL/hour for several hours', '50 mL/hour', '500 mL/day', 'Any output',
 'B', 'Post-obstructive diuresis: >200 mL/hour for 2+ hours or >3L/24 hours. Monitor electrolytes, replace fluids (0.45% NS) if hypovolemic. Usually physiologic but may be pathologic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Priapism lasting more than 4 hours:',
 'Is normal', 'Requires urgent intervention to prevent permanent damage', 'Will resolve spontaneously', 'Needs only observation', 'Is only psychological',
 'B', 'Ischemic priapism >4-6 hours: urological emergency. Progressive tissue damage, fibrosis if untreated >24-48 hours. Aspiration and phenylephrine injection first line. Shunt if refractory.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Low-flow (ischemic) priapism is characterized by:',
 'Fully rigid painful erection with dark blood on aspiration', 'Partially rigid painless erection', 'Intermittent erections', 'Associated with trauma', 'High-flow state',
 'A', 'Ischemic (low-flow) priapism: venous outflow obstruction, painful, fully rigid, dark blood on aspiration. Causes: sickle cell, medications (papaverine, PDE5-I), idiopathic. Emergency.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'High-flow (non-ischemic) priapism is usually caused by:',
 'Sickle cell disease', 'Perineal or penile trauma causing arteriovenous fistula', 'Medications', 'Leukemia', 'Idiopathic causes',
 'B', 'Non-ischemic (high-flow): arterial fistula from trauma. Partially rigid, painless, bright red blood on aspiration. Not emergency - no ischemia. Embolization if persistent.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for ischemic priapism is:',
 'Observation', 'Corporal aspiration and intracavernosal phenylephrine injection', 'Surgical shunt immediately', 'Oral medications', 'Ice packs',
 'B', 'Ischemic priapism: corporal aspiration with 18-19G needle, followed by intracavernosal phenylephrine (100-200 mcg diluted). Repeat every 5 minutes. Shunt surgery if refractory.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Paraphimosis is:',
 'Inability to retract foreskin', 'Foreskin trapped behind glans causing venous congestion', 'Inflammation of glans', 'Constricting band on shaft', 'Normal variant',
 'B', 'Paraphimosis: retracted foreskin trapped proximal to glans, constricting venous return. Glans becomes edematous, painful. Urological emergency - reduction needed to prevent necrosis.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of paraphimosis involves:',
 'Observation', 'Manual reduction with compression or dorsal slit if unsuccessful', 'Antibiotics only', 'Circumcision emergency', 'Amputation',
 'B', 'Paraphimosis: squeeze edema from glans (5-10 min), then push glans back through foreskin ring. Dorsal slit if manual reduction fails. Elective circumcision to prevent recurrence.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Ureteric colic classically presents with:',
 'Constant dull ache', 'Severe colicky flank pain radiating to groin with hematuria', 'Painless hematuria', 'Suprapubic pressure only', 'Fever and rigors',
 'B', 'Ureteric colic: severe colicky pain from flank to groin, restlessness (cannot find comfortable position), nausea/vomiting, hematuria (85-90%). Most common ages 30-50.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'The preferred imaging for suspected renal colic is:',
 'Plain abdominal X-ray (KUB)', 'Non-contrast CT KUB', 'Ultrasound only', 'IVU', 'MRI',
 'B', 'Non-contrast CT KUB: gold standard. High sensitivity (>95%) and specificity. Shows stone location, size, secondary signs of obstruction. Also identifies alternative diagnoses.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Stones most likely to pass spontaneously are:',
 'Greater than 10 mm', 'Less than 4-5 mm', 'All ureteric stones', 'Staghorn calculi', 'Stones greater than 8 mm',
 'B', 'Spontaneous passage: <4 mm = 80-90% pass, 4-6 mm = 50-60%, >6 mm = <20%. Medical expulsive therapy (alpha-blocker) may help. Location also matters (distal more likely to pass).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Urgent intervention for ureteric stones is required when:',
 'All ureteric stones', 'Infected obstructed system sepsis or single kidney with obstruction', 'Pain only', 'Small distal stone', 'Asymptomatic incidental finding',
 'B', 'Emergent decompression (stent or nephrostomy): infected/septic patient with obstruction, bilateral obstruction, solitary kidney obstruction, refractory pain/vomiting, AKI.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'The most common type of kidney stone is:',
 'Uric acid', 'Calcium oxalate', 'Struvite', 'Cystine', 'Calcium phosphate',
 'B', 'Calcium oxalate: 70-80% of stones. Usually radio-opaque. Risk factors: hypercalciuria, hyperoxaluria, hypocitraturia, low urine volume. Uric acid stones are radiolucent.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Struvite (infection) stones are associated with:',
 'Uric acid metabolism', 'Urease-producing bacteria like Proteus', 'Hypercalcemia', 'Cystinuria', 'Vitamin D excess',
 'B', 'Struvite (magnesium ammonium phosphate): urease-producing bacteria (Proteus, Klebsiella) create alkaline urine. Can form staghorn calculi. Require complete stone removal and infection treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'ESWL (Extracorporeal Shock Wave Lithotripsy) is most effective for:',
 'All kidney stones', 'Renal stones less than 2 cm and upper ureteric stones less than 1 cm', 'Staghorn calculi', 'Lower pole stones greater than 2 cm', 'Cystine stones',
 'B', 'ESWL: best for renal stones <2 cm (especially <1 cm), proximal ureteric stones <1 cm. Less effective for lower pole stones, hard stones (cystine, brushite), obesity, large stones.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Ureteroscopy is preferred over ESWL for:',
 'Small renal pelvis stones', 'Distal ureteric stones and ESWL-resistant stones', 'Very small stones', 'Asymptomatic stones', 'All pediatric patients',
 'B', 'Ureteroscopy: higher stone-free rate for distal ureteric stones, failed ESWL, hard stones, stones requiring stent. Allows direct visualization and laser lithotripsy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'PCNL (Percutaneous Nephrolithotomy) is indicated for:',
 'Small ureteric stones', 'Large renal stones greater than 2 cm or staghorn calculi', 'All first-time stones', 'Asymptomatic small stones', 'Uric acid stones only',
 'B', 'PCNL: stones >2 cm, staghorn calculi, failed ESWL/URS, lower pole stones >1 cm, abnormal anatomy. Percutaneous access to kidney for stone fragmentation and removal.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Penile fracture involves:',
 'Bone fracture', 'Rupture of tunica albuginea during erect state', 'Ligament injury', 'Urethral injury only', 'Skin laceration only',
 'B', 'Penile fracture: rupture of tunica albuginea of erect penis. Classic pop sound, immediate detumescence, pain, eggplant deformity (swelling, deviation, ecchymosis). Urological emergency.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of penile fracture is:',
 'Conservative with splinting', 'Immediate surgical exploration and repair of tunica albuginea', 'Delayed surgery in 2 weeks', 'Observation only', 'Antibiotics and rest',
 'B', 'Penile fracture: urgent surgical repair. Early surgery (<24 hours) has better outcomes (less fibrosis, curvature, ED) than conservative or delayed management. Repair tunica albuginea.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Renal trauma is graded according to:',
 'Size of patient', 'AAST grading system based on injury severity', 'Age of patient', 'Blood pressure', 'Location only',
 'B', 'AAST renal injury scale: Grade I-V. I= contusion/subcapsular hematoma. II= <1cm laceration. III= >1cm no collecting system. IV= involving collecting system or vascular. V= shattered or avulsion.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Most blunt renal injuries are managed:',
 'Surgically', 'Non-operatively with bed rest and monitoring', 'With immediate nephrectomy', 'With immediate angioembolization', 'With dialysis',
 'B', 'Most blunt renal injuries (Grade I-III and selected Grade IV): non-operative management. Bed rest, serial hemoglobin, imaging follow-up. Surgery for hemodynamic instability, expanding hematoma.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Indications for surgical exploration in renal trauma include:',
 'All renal injuries', 'Expanding or pulsatile hematoma hemodynamic instability and renal pedicle injury', 'Grade I injury', 'Minor contusion', 'Stable microscopic hematuria',
 'B', 'Surgical indications: hemodynamic instability from renal injury, expanding/pulsatile hematoma, pedicle avulsion, incomplete staging, persistent bleeding despite embolization.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Epididymo-orchitis typically presents with:',
 'Sudden onset with absent cremasteric reflex', 'Gradual onset with fever dysuria and tender epididymis', 'Painless testicular mass', 'High-riding testis', 'Blue dot sign',
 'B', 'Epididymo-orchitis: gradual onset, fever, dysuria, tender epididymis then testis, positive cremasteric reflex, positive Prehn sign (relief with elevation). Young: STI. Older: UTI/BPH.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of epididymo-orchitis includes:',
 'Surgical exploration', 'Antibiotics scrotal support NSAIDs and rest', 'Orchiectomy', 'Observation only', 'Ice packs only',
 'B', 'Epididymo-orchitis: antibiotics (STI coverage in young, UTI coverage in older), scrotal support/elevation, anti-inflammatories, rest. Surgery only if abscess forms.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Acute pyelonephritis is diagnosed clinically by:',
 'Suprapubic pain alone', 'Fever flank pain and costovertebral angle tenderness with pyuria', 'Painless hematuria', 'Dysuria only', 'Abdominal distension',
 'B', 'Acute pyelonephritis: fever, rigors, flank/CVA pain, nausea/vomiting. Lower tract symptoms may be present. UA: pyuria, bacteriuria. Culture positive. Imaging if complicated.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Complicated UTI requiring imaging includes:',
 'Simple cystitis in young woman', 'Male UTI recurrent UTI or suspected obstruction', 'First UTI in young female', 'Asymptomatic bacteriuria', 'Resolved symptoms',
 'B', 'Imaging indications: male UTI, recurrent infections, suspected obstruction/stones, diabetes, immunocompromised, persistent symptoms despite treatment, unusual organisms.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Emphysematous pyelonephritis is most common in:',
 'Young healthy individuals', 'Diabetic patients', 'Children', 'Pregnant women', 'Athletes',
 'B', 'Emphysematous pyelonephritis: gas-forming infection of kidney. 90% in diabetics. E. coli most common. CT shows gas in renal parenchyma. High mortality. Requires antibiotics +/- drainage or nephrectomy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000017-0000-0000-0000-000000000017', 'a0000004-0000-0000-0000-000000000004',
 'Pyonephrosis differs from pyelonephritis in that:',
 'No fever present', 'Infected hydronephrosis with pus in obstructed collecting system', 'Milder symptoms', 'Self-limiting', 'Antibiotics alone sufficient',
 'B', 'Pyonephrosis: infected obstructed collecting system - pus under pressure. More severe than pyelonephritis. Requires urgent drainage (nephrostomy or stent) in addition to antibiotics.', 'medium', 'knowledge');
