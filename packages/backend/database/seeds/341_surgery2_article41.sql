-- Article 41: Benign Anorectal Diseases
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000041-0000-0000-0000-000000000041'::uuid, 'introduction', 1, 'Introduction to Benign Anorectal Diseases', 'Benign anorectal conditions are extremely common and include hemorrhoids, anal fissure, anorectal abscess, fistula-in-ano, pilonidal disease, and rectal prolapse. The anal canal has complex anatomy with internal and external sphincters critical for continence. The dentate (pectinate) line is an important landmark dividing the upper and lower anal canal with different epithelium, lymphatic drainage, and innervation. Understanding this anatomy is essential for diagnosis and treatment while preserving continence.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 'content', 2, 'Hemorrhoids and Anal Fissure', 'HEMORRHOIDS: Enlarged anal cushions (vascular tissue normally present). Internal hemorrhoids arise above dentate line - painless bleeding, prolapse. External hemorrhoids below dentate line - painful if thrombosed.

GRADING (Internal): Grade I - bleeding only. Grade II - prolapse with spontaneous reduction. Grade III - prolapse requiring manual reduction. Grade IV - irreducible prolapse.

MANAGEMENT: Conservative (fiber, fluids, sitz baths) for Grade I-II. Rubber band ligation for Grade I-III. Injection sclerotherapy for Grade I-II. Hemorrhoidectomy (Milligan-Morgan open, Ferguson closed) for Grade III-IV. Stapled hemorrhoidopexy (PPH) for circumferential prolapse.

ANAL FISSURE: Tear in anal mucosa, usually posterior midline (90%). Anterior in females (pregnancy). Causes severe pain during and after defecation, fresh bleeding. Associated with internal sphincter spasm.

ACUTE vs CHRONIC: Acute fissures are superficial, fresh. Chronic fissures have sentinel pile, hypertrophied anal papilla, exposed internal sphincter fibers.

TREATMENT: Acute - conservative (fiber, sitz baths, stool softeners). Chronic - chemical sphincterotomy (GTN, diltiazem ointment, botulinum toxin) or lateral internal sphincterotomy (LIS) - gold standard with over 95% healing rate. Off-midline fissure suggests underlying disease (Crohn, TB, syphilis, HIV, cancer).'),
('d0000041-0000-0000-0000-000000000041'::uuid, 'content', 3, 'Anorectal Abscess and Fistula', 'ANORECTAL ABSCESS: Originates from infected anal glands (cryptoglandular theory). Types based on anatomic location: perianal (most common, 60%), ischiorectal, intersphincteric, supralevator.

PRESENTATION: Perianal pain, swelling, fever. Perianal abscess visible. Ischiorectal causes diffuse gluteal swelling. Intersphincteric causes severe rectal pain.

MANAGEMENT: Incision and drainage - pus under pressure. Do not wait for fluctuance. Primary fistulotomy if simple fistula identified. Antibiotics only as adjunct, not primary treatment. Horseshoe abscess requires counter-drainage.

FISTULA-IN-ANO: Abnormal communication between anal canal and perianal skin. Most follow anorectal abscess. Goodsall rule: posterior external opening - curved tract to posterior midline; anterior external opening - radial tract to nearest crypt.

PARKS CLASSIFICATION: Intersphincteric (most common, 70%), transsphincteric, suprasphincteric, extrasphincteric.

SURGICAL OPTIONS: Fistulotomy (laying open) for simple low fistulas. Fistulectomy for complex. Seton (cutting or draining) for high fistulas. LIFT procedure (ligation of intersphincteric fistula tract). Advancement flap for complex or recurrent. VAAFT (video-assisted anal fistula treatment).'),
('d0000041-0000-0000-0000-000000000041'::uuid, 'content', 4, 'Pilonidal Disease and Rectal Prolapse', 'PILONIDAL SINUS: Chronic inflammatory condition in natal cleft. More common in males, hirsute individuals. Hair penetrates skin creating foreign body reaction and sinus tract.

PRESENTATION: Acute abscess or chronic discharging sinus with midline pits. Recurrence common.

MANAGEMENT: Acute abscess - incision and drainage. Chronic - options include wide excision with primary closure, excision with healing by secondary intention, Karydakis flap (off-midline closure), Bascom procedure, Limberg flap. Off-midline closures have lower recurrence rates.

RECTAL PROLAPSE: Full-thickness protrusion of rectum through anus. Mucosal prolapse vs complete (full-thickness) prolapse. More common in elderly women. Associated with chronic straining, pelvic floor weakness.

TYPES: Partial (mucosal only) - radial folds. Complete (full-thickness) - concentric folds, all layers including muscle.

TREATMENT: Perineal procedures (elderly, high-risk): Delorme (mucosal sleeve resection) or Altemeier (perineal rectosigmoidectomy). Abdominal procedures: rectopexy (suture or mesh), with or without sigmoid resection. Laparoscopic approaches preferred for fit patients.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Posterior midline fissure is classic location - off-midline suggests secondary cause. Lateral internal sphincterotomy has over 95% healing rate for chronic fissure. Never delay drainage of anorectal abscess. Goodsall rule predicts fistula tract direction. Most fistulas are intersphincteric. Concentric folds indicate full-thickness prolapse. Off-midline closure for pilonidal has lower recurrence.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 'key_points', 6, 'Key Points Summary', 'Internal hemorrhoids are painless; external thrombosed hemorrhoids are painful. Grade III-IV hemorrhoids need hemorrhoidectomy. Chronic anal fissure has triad: fissure, sentinel pile, hypertrophied papilla. LIS is gold standard for chronic fissure. Anorectal abscesses arise from infected anal glands. Parks classification for fistula: intersphincteric most common. Full-thickness rectal prolapse has concentric folds.');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000041-0000-0000-0000-000000000041'::uuid, 1, 'Most common position for anal fissure is:', 'Anterior midline', 'Posterior midline', 'Lateral', 'Right lateral', 'Left lateral', 'B', 'About 90% of anal fissures occur in the posterior midline.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 2, 'Grade III internal hemorrhoids are characterized by:', 'Bleeding only', 'Prolapse with spontaneous reduction', 'Prolapse requiring manual reduction', 'Irreducible prolapse', 'Thrombosis', 'C', 'Grade III hemorrhoids prolapse during defecation and require manual reduction.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 3, 'Gold standard surgical treatment for chronic anal fissure is:', 'Hemorrhoidectomy', 'Lateral internal sphincterotomy', 'Fistulotomy', 'Lord dilation', 'Botulinum toxin injection', 'B', 'Lateral internal sphincterotomy (LIS) has over 95% healing rate for chronic anal fissure.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 4, 'The sentinel pile in chronic anal fissure is:', 'A hemorrhoid', 'Skin tag at distal end of fissure', 'Anal cancer', 'Polyp', 'Abscess', 'B', 'The sentinel pile is a skin tag at the distal (external) end of a chronic anal fissure.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 5, 'Most common type of anorectal abscess is:', 'Ischiorectal', 'Intersphincteric', 'Perianal', 'Supralevator', 'Horseshoe', 'C', 'Perianal abscess accounts for about 60% of anorectal abscesses.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 6, 'Cryptoglandular theory explains the origin of:', 'Hemorrhoids', 'Anal fissure', 'Anorectal abscess and fistula', 'Pilonidal sinus', 'Rectal prolapse', 'C', 'The cryptoglandular theory explains that anorectal abscesses originate from infected anal glands.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 7, 'According to Goodsall rule, a posterior external opening suggests:', 'Radial tract to nearest crypt', 'Curved tract to posterior midline', 'Supralevator extension', 'Multiple tracts', 'No internal opening', 'B', 'Goodsall rule: posterior external openings have curved tracts to the posterior midline internal opening.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 8, 'Most common type of fistula-in-ano by Parks classification is:', 'Transsphincteric', 'Intersphincteric', 'Suprasphincteric', 'Extrasphincteric', 'Superficial', 'B', 'Intersphincteric fistulas are most common, accounting for about 70% of anal fistulas.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 9, 'Pilonidal sinus is most common in:', 'Elderly females', 'Young hirsute males', 'Children', 'Pregnant women', 'Elderly males', 'B', 'Pilonidal disease is more common in young, hirsute males, typically ages 15-30.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 10, 'Off-midline closure techniques for pilonidal sinus include:', 'Milligan-Morgan', 'Karydakis flap', 'Lord dilation', 'Delorme procedure', 'Altemeier procedure', 'B', 'Karydakis flap moves the wound off midline, reducing recurrence rates.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 11, 'Full-thickness rectal prolapse shows:', 'Radial mucosal folds', 'Concentric circular folds', 'Hemorrhoidal tissue only', 'Single fold', 'No visible folds', 'B', 'Full-thickness prolapse shows concentric circular folds as all layers of bowel wall protrude.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 12, 'Delorme procedure for rectal prolapse involves:', 'Abdominal rectopexy', 'Perineal mucosal sleeve resection', 'Sigmoid resection', 'Proctectomy', 'Colostomy formation', 'B', 'Delorme is a perineal procedure involving mucosal sleeve resection with plication of muscle wall.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 13, 'Internal hemorrhoids arise:', 'Below the dentate line', 'Above the dentate line', 'At the anal verge', 'In the sigmoid colon', 'In the rectum', 'B', 'Internal hemorrhoids arise from internal hemorrhoidal plexus above the dentate line.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 14, 'A seton is used in treating:', 'Hemorrhoids', 'Anal fissure', 'Complex anal fistula', 'Rectal prolapse', 'Pilonidal sinus', 'C', 'Setons (cutting or draining) are used for high or complex anal fistulas to preserve sphincter function.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 15, 'Off-midline anal fissure should raise suspicion of:', 'Normal variation', 'Crohn disease or other secondary cause', 'Hemorrhoids', 'Cancer', 'Prolapse', 'B', 'Off-midline fissures suggest secondary causes: Crohn disease, TB, syphilis, HIV, or anal cancer.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 16, 'Chemical sphincterotomy agents include all EXCEPT:', 'GTN (glyceryl trinitrate)', 'Diltiazem', 'Botulinum toxin', 'Lignocaine', 'All are used for chemical sphincterotomy', 'D', 'Lignocaine is a local anesthetic, not a sphincter relaxant. GTN, diltiazem, and botox relax sphincter.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 17, 'Rubber band ligation is appropriate for:', 'External hemorrhoids', 'Grade I-III internal hemorrhoids', 'Thrombosed hemorrhoids', 'Anal fissure', 'Fistula', 'B', 'Rubber band ligation is suitable for Grade I-III internal hemorrhoids above the dentate line.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 18, 'LIFT procedure is used for:', 'Hemorrhoids', 'Anal fissure', 'Intersphincteric fistula', 'Rectal prolapse', 'Pilonidal sinus', 'C', 'LIFT (Ligation of Intersphincteric Fistula Tract) is sphincter-sparing surgery for anal fistula.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 19, 'Altemeier procedure involves:', 'Abdominal rectopexy', 'Perineal rectosigmoidectomy', 'Mucosal sleeve resection', 'Mesh placement', 'Sphincteroplasty', 'B', 'Altemeier (perineal proctosigmoidectomy) is full-thickness perineal resection for rectal prolapse.'),
('d0000041-0000-0000-0000-000000000041'::uuid, 20, 'Thrombosed external hemorrhoid management in first 72 hours is:', 'Observation only', 'Rubber band ligation', 'Excision under local anesthesia', 'Injection sclerotherapy', 'Sitz baths only', 'C', 'Thrombosed external hemorrhoid within 72 hours can be excised under local anesthesia for pain relief.');
