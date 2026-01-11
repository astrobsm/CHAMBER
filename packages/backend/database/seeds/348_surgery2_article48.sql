-- Article 48: Urethral Injuries
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000048-0000-0000-0000-000000000048'::uuid, 'introduction', 1, 'Introduction to Urethral Injuries', 'Urethral injuries are classified by location as anterior (bulbar, penile) or posterior (prostatic, membranous). They most commonly occur in males due to the longer urethra. Posterior urethral injuries are typically associated with pelvic fractures, while anterior urethral injuries result from straddle injuries, instrumentation, or direct trauma. Prompt recognition and appropriate management are essential to preserve urinary and sexual function. The classic triad of blood at the urethral meatus, inability to void, and palpable bladder should prompt investigation before catheterization.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 'content', 2, 'Anatomy and Classification', 'URETHRAL ANATOMY (Male):
Posterior urethra (above urogenital diaphragm): Prostatic urethra (through prostate), membranous urethra (through urogenital diaphragm - shortest, least distensible).
Anterior urethra (below urogenital diaphragm): Bulbar urethra (within bulb of penis), penile (pendulous) urethra, fossa navicularis, external meatus.

POSTERIOR URETHRAL INJURY: Usually associated with pelvic fractures (5-10% of pelvic fractures). Shearing forces at prostatomembranous junction. Often accompanied by bladder injury. Puboprostatic ligaments disrupted causing prostate to displace superiorly.

ANTERIOR URETHRAL INJURY: Straddle injury (bulbar urethra - fall onto bar or saddle), direct trauma, penetrating injury, iatrogenic (catheterization, instrumentation, surgery).

CLASSIFICATION (Unified system):
Type 1: Posterior urethra stretched but intact
Type 2: Tear of prostatomembranous urethra above urogenital diaphragm
Type 3: Tear of membranous urethra with extension through urogenital diaphragm (partial or complete)
Type 4: Bladder neck injury extending to urethra
Type 5: Partial or complete anterior urethral injury'),
('d0000048-0000-0000-0000-000000000048'::uuid, 'content', 3, 'Clinical Features and Diagnosis', 'SIGNS OF URETHRAL INJURY:
Blood at urethral meatus - cardinal sign
Inability to void or urinary retention
High-riding or impalpable prostate on DRE (posterior injury)
Perineal or scrotal hematoma (butterfly hematoma in anterior injury)
Suprapubic tenderness with palpable bladder

IMPORTANT: Do NOT attempt urethral catheterization if urethral injury suspected. May convert partial to complete tear.

INVESTIGATION: Retrograde urethrography (RUG) is the gold standard. Contrast injected into urethral meatus under fluoroscopy. Shows extravasation pattern indicating injury site and severity.

STRADDLE INJURY (Anterior): Compression of bulbar urethra against pubic symphysis. Buck fascia intact - hematoma confined to penis. Buck fascia torn - extravasation follows Colles fascia (scrotum, perineum, anterior abdominal wall under Scarpa fascia but NOT thighs).

PELVIC FRACTURE URETHRAL INJURY (Posterior): Associated with high-energy trauma. Look for associated injuries: bladder rupture, pelvic hemorrhage, rectal injury.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 'content', 4, 'Management', 'IMMEDIATE MANAGEMENT:
Resuscitate - ATLS principles for pelvic trauma
Do NOT catheterize if urethral injury suspected
If partial injury confirmed on RUG - gentle catheter attempt by experienced urologist
If complete injury - suprapubic catheter placement

POSTERIOR URETHRAL INJURY MANAGEMENT:
Suprapubic catheterization initially
Primary realignment (endoscopic or open) - controversial, may reduce stricture length
Delayed urethroplasty (3-6 months) - preferred approach, allows inflammation to settle

ANTERIOR URETHRAL INJURY MANAGEMENT:
Partial tear - urethral catheter or suprapubic catheter
Complete tear - suprapubic catheter, delayed repair
Urethroplasty techniques: end-to-end anastomosis (short strictures less than 2cm), buccal mucosal graft (longer strictures), penile skin flap

COMPLICATIONS:
Stricture formation (most common - 50% or more)
Erectile dysfunction (due to associated nerve injury)
Incontinence (posterior injuries affecting sphincter mechanism)
Fistula
Recurrent UTI

FEMALE URETHRAL INJURY: Rare due to short mobile urethra. Usually pelvic fracture associated. May involve bladder neck. Primary repair when possible.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Blood at meatus - do not catheterize until RUG performed. Straddle injury affects bulbar urethra. Pelvic fracture injury affects membranous urethra. High-riding prostate indicates posterior injury. Delayed repair preferred for complete posterior injuries. Stricture is the most common complication.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 'key_points', 6, 'Key Points Summary', 'Posterior injuries: prostatic and membranous urethra, pelvic fracture. Anterior injuries: bulbar, penile, straddle injury. Classic triad: blood at meatus, inability to void, palpable bladder. RUG is diagnostic gold standard. Do not catheterize before imaging. Suprapubic catheter for complete injuries. Delayed urethroplasty preferred for posterior injuries.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000048-0000-0000-0000-000000000048'::uuid, 1, 'The posterior urethra consists of:', 'Penile and bulbar portions', 'Prostatic and membranous portions', 'Fossa navicularis and meatus', 'Bulbar and membranous portions', 'All urethral portions', 'B', 'Posterior urethra includes prostatic and membranous urethra, above the urogenital diaphragm.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 2, 'Straddle injury typically affects:', 'Prostatic urethra', 'Membranous urethra', 'Bulbar urethra', 'Penile urethra', 'Fossa navicularis', 'C', 'Straddle injury compresses the bulbar urethra against the inferior pubic ramus.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 3, 'Pelvic fracture urethral injury typically affects:', 'Bulbar urethra', 'Penile urethra', 'Membranous urethra', 'Fossa navicularis', 'All parts equally', 'C', 'Pelvic fracture injuries affect the membranous urethra at the prostatomembranous junction.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 4, 'Cardinal sign of urethral injury is:', 'Hematuria', 'Blood at urethral meatus', 'Fever', 'Dysuria', 'Suprapubic pain', 'B', 'Blood at the urethral meatus is the cardinal sign suggesting urethral injury.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 5, 'When urethral injury is suspected, the first action should be:', 'Attempt catheterization', 'Perform cystoscopy', 'Perform retrograde urethrography', 'Administer antibiotics', 'Place suprapubic catheter immediately', 'C', 'Retrograde urethrography (RUG) should be performed before any attempt at catheterization.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 6, 'High-riding prostate on DRE suggests:', 'Anterior urethral injury', 'Posterior urethral disruption', 'BPH', 'Prostate cancer', 'Bladder injury only', 'B', 'High-riding or impalpable prostate indicates posterior urethral disruption with prostatic displacement.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 7, 'Butterfly perineal hematoma is seen in:', 'Posterior urethral injury', 'Anterior urethral injury with Buck fascia disruption', 'Bladder rupture', 'Penile fracture', 'Testicular torsion', 'B', 'Butterfly hematoma occurs when urine and blood extravasate deep to Colles fascia after anterior injury.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 8, 'Gold standard investigation for urethral injury is:', 'CT cystogram', 'Ultrasound', 'Retrograde urethrography', 'MRI', 'Cystoscopy', 'C', 'Retrograde urethrography (RUG) is the gold standard to diagnose and classify urethral injuries.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 9, 'Management of complete posterior urethral injury is:', 'Immediate primary repair', 'Suprapubic catheter and delayed repair', 'Urethral catheter', 'Conservative only', 'Cystoscopy', 'B', 'Complete posterior injuries are best managed with suprapubic drainage and delayed urethroplasty (3-6 months).'),
('d0000048-0000-0000-0000-000000000048'::uuid, 10, 'Most common complication of urethral injury is:', 'Impotence', 'Stricture formation', 'Incontinence', 'Fistula', 'Recurrent UTI', 'B', 'Urethral stricture is the most common complication, occurring in 50% or more of injuries.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 11, 'Buck fascia limits spread of extravasated urine to:', 'Penis only', 'Scrotum only', 'Thighs', 'Abdomen', 'Penis, with potential spread beyond if disrupted', 'E', 'Intact Buck fascia confines extravasation to the penis. If disrupted, spread follows Colles fascia.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 12, 'Urine extravasation in anterior urethral injury with disrupted Buck fascia follows:', 'Deep perineal pouch', 'Colles fascia to scrotum, perineum, anterior abdominal wall', 'Into thigh', 'Retroperitoneum', 'Peritoneal cavity', 'B', 'When Buck fascia is disrupted, extravasation follows Colles fascia but does NOT extend to thighs (attached to inguinal ligament).'),
('d0000048-0000-0000-0000-000000000048'::uuid, 13, 'Percentage of pelvic fractures associated with urethral injury is approximately:', '1-2%', '5-10%', '25-30%', '50%', '75%', 'B', 'Approximately 5-10% of pelvic fractures are associated with urethral injury.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 14, 'Primary realignment for posterior urethral injury may:', 'Always cause stricture', 'Reduce stricture length but increase ED risk', 'Be the only option', 'Always be performed', 'Eliminate need for follow-up', 'B', 'Primary realignment is controversial - may reduce stricture length but has not been shown to reduce stricture rate or improve ED.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 15, 'For anterior urethral stricture greater than 2cm, treatment is:', 'End-to-end anastomosis', 'Buccal mucosal graft urethroplasty', 'Dilation only', 'Internal urethrotomy only', 'Suprapubic catheter only', 'B', 'Strictures greater than 2cm usually require substitution urethroplasty with buccal mucosa or skin flap.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 16, 'The membranous urethra is:', 'Longest part of urethra', 'Shortest and least distensible part', 'Most mobile part', 'Within the prostate', 'Part of anterior urethra', 'B', 'The membranous urethra (through urogenital diaphragm) is the shortest and least distensible segment.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 17, 'Attempting catheterization in complete urethral rupture may:', 'Help diagnosis', 'Convert partial to complete tear', 'Be therapeutic', 'Be without risk', 'Aid in drainage', 'B', 'Catheterization attempt may worsen partial injuries and create false passages - avoid until RUG performed.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 18, 'Female urethral injury is rare because:', 'Different blood supply', 'Urethra is short and mobile', 'Protected by bony pelvis', 'Larger diameter', 'Different fascial attachments', 'B', 'The female urethra is short (4cm) and mobile, making it less vulnerable to pelvic fracture injuries.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 19, 'Delayed urethroplasty for posterior urethral injury is performed after:', '1-2 weeks', '3-6 months', '1 year', '2 years', 'Immediately', 'B', 'Delayed repair at 3-6 months allows inflammation and hematoma to resolve, making surgery easier and outcomes better.'),
('d0000048-0000-0000-0000-000000000048'::uuid, 20, 'Erectile dysfunction following pelvic fracture urethral injury is due to:', 'Urethral stricture', 'Injury to cavernosal nerves and vessels', 'Catheter placement', 'Antibiotics', 'Psychological factors only', 'B', 'ED results from injury to the cavernosal nerves and internal pudendal vessels during the pelvic trauma.');
