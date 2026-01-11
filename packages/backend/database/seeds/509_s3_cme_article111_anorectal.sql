-- ============================================================================
-- SURGERY 3 CME ARTICLE 111: Anorectal Disorders
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000177-0000-0000-0000-000000000177', 'a0000003-0000-0000-0000-000000000003', 'Anorectal Disorders', 'Surgical management of common anorectal conditions')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000411-0000-0000-0000-000000000111',
    'c0000177-0000-0000-0000-000000000177',
    'a0000003-0000-0000-0000-000000000003',
    'Anorectal Disorders: Diagnosis and Surgical Treatment',
    'Comprehensive Anorectal Surgical Care',
    'This article covers hemorrhoid classification and management, anal fissure pathophysiology and treatment, anorectal abscess drainage, fistula-in-ano classification and surgery, pilonidal disease, and rectal prolapse.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000411-0001-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 1,
'Internal hemorrhoids are classified based on:',
'Pain severity', 'Degree of prolapse - Grade I (no prolapse), Grade II (prolapse with defecation, spontaneously reduces), Grade III (prolapse requiring manual reduction), Grade IV (permanently prolapsed)', 'Size only', 'Color changes',
'B', 'INTERNAL HEMORRHOID CLASSIFICATION (Goligher): GRADE I: no prolapse, bleeding only, bulge into anal canal. GRADE II: prolapse with straining/defecation, SPONTANEOUSLY REDUCES. GRADE III: prolapse requiring MANUAL REDUCTION. GRADE IV: permanently PROLAPSED, cannot be reduced (may include external component). Treatment by grade: Grade I-II: conservative (fiber, fluids, topical), rubber band ligation (RBL). Grade III: RBL, excisional hemorrhoidectomy. Grade IV: hemorrhoidectomy. Internal hemorrhoids originate ABOVE dentate line (visceral innervation - painless), external below (somatic - painful). Location: left lateral, right anterior, right posterior (3, 7, 11 o clock).', 'easy'),

('e0000411-0002-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 2,
'Anal fissure is most commonly located:',
'Laterally', 'In the posterior midline due to relative ischemia in this location, and is characterized by tearing pain with defecation', 'Anteriorly only', 'At multiple sites',
'B', 'ANAL FISSURE: tear in anoderm distal to dentate line. LOCATION: POSTERIOR MIDLINE (90%), anterior midline (10%, more common in women). Posterior location due to relative ISCHEMIA (poor blood supply - posterior commissure has fewest penetrating arterioles). PATHOPHYSIOLOGY: trauma/hard stool causes tear, internal sphincter SPASM reduces blood flow, impairs healing, creates cycle. PRESENTATION: severe TEARING PAIN with defecation, bright red blood, sentinel pile (chronic). LATERAL fissures: consider Crohn disease, HIV, TB, malignancy. ACUTE: conservative (fiber, sitz baths, stool softeners). CHRONIC (>6 weeks, visible sphincter fibers): topical GTN, diltiazem, or lateral internal sphincterotomy.', 'easy'),

('e0000411-0003-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 3,
'Lateral internal sphincterotomy for chronic anal fissure:',
'Is contraindicated', 'Involves division of the internal anal sphincter to reduce sphincter hypertonia and improve blood flow, with small risk of incontinence', 'Divides external sphincter', 'Excises the fissure',
'B', 'LATERAL INTERNAL SPHINCTEROTOMY (LIS): definitive surgical treatment for chronic anal fissure. TECHNIQUE: divide INTERNAL sphincter (lower portion) at lateral position (away from fissure - better healing, not posterior which already has poor blood supply). Can be done open or closed. RATIONALE: reduces internal sphincter HYPERTONIA (spasm), improves blood flow, allows fissure healing. SUCCESS: 95-98% healing. RISK: minor INCONTINENCE (flatus, occasional soiling) in 5-10% - reason to try medical therapy first. Extent of division: to level of dentate line (not above - preserves continence). Fissurectomy alone (without sphincterotomy) has higher recurrence.', 'medium'),

('e0000411-0004-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 4,
'Anorectal abscess should be treated by:',
'Antibiotics alone', 'Incision and drainage as soon as possible, with abscess location determining surgical approach', 'Observation', 'Warm compresses only',
'B', 'ANORECTAL ABSCESS treatment: INCISION AND DRAINAGE (I&D) - "pus must come out." Antibiotics alone are inadequate; can progress to Fournier gangrene. ABSCESS TYPES by location: PERIANAL (most common) - superficial, drain externally near anal verge. ISCHIORECTAL - drain through skin over fluctuance. INTERSPHINCTERIC - drain into anal canal. SUPRALEVATOR - drain into rectum (transrectal) if source above levators, or through ischiorectal fossa if source below. EXAM UNDER ANESTHESIA (EUA) may be needed if unclear extent. Do NOT attempt to find fistula at time of drainage (risk of creating false tract). ~50% develop fistula-in-ano.', 'easy'),

('e0000411-0005-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 5,
'The Parks classification of fistula-in-ano is based on:',
'Fistula length', 'The relationship of the fistula tract to the external and internal sphincter muscles, categorized as intersphincteric, transsphincteric, suprasphincteric, or extrasphincteric', 'Number of openings only', 'Cause of fistula',
'B', 'PARKS CLASSIFICATION of fistula-in-ano: (1) INTERSPHINCTERIC (45%): tract between internal and external sphincter, internal opening at dentate, external at anal verge. (2) TRANSSPHINCTERIC (30%): crosses through both internal and external sphincter (low or high depending on how much sphincter involved). (3) SUPRASPHINCTERIC (20%): passes over top of external sphincter after traversing intersphincteric space. (4) EXTRASPHINCTERIC (5%): passes completely outside sphincter complex. GOODSALL RULE: posterior external openings usually have curved tract to posterior midline internal opening; anterior openings have direct radial tract. Classification guides treatment approach and incontinence risk.', 'medium'),

('e0000411-0006-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 6,
'A simple low fistula-in-ano is best treated by:',
'Antibiotics only', 'Fistulotomy (laying open the tract), which heals by secondary intention with low risk of incontinence', 'Ignoring it', 'Colostomy',
'B', 'FISTULOTOMY: treatment for SIMPLE fistulas (intersphincteric, low transsphincteric - involving <30% of sphincter). TECHNIQUE: pass probe through tract, LAY OPEN (cut down onto probe, unroof tract), curettage of granulation tissue, healing by SECONDARY INTENTION. SUCCESS: 90-95% cure. RISK: incontinence minimal if limited sphincter division. COMPLEX fistulas (high transsphincteric, suprasphincteric, anterior in women, Crohn, recurrent): sphincter-sparing procedures - SETON (draining, cutting, or staged), ADVANCEMENT FLAP, LIFT (ligation of intersphincteric fistula tract), fibrin glue, fistula plug. Complex fistulas have higher incontinence risk with fistulotomy.', 'easy'),

('e0000411-0007-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 7,
'Pilonidal disease:',
'Is always congenital', 'Is an acquired condition caused by hair penetrating skin in the natal cleft, presenting as abscess or chronic sinus requiring drainage and often definitive surgery', 'Only affects women', 'Resolves spontaneously always',
'B', 'PILONIDAL DISEASE: ACQUIRED condition (not congenital). PATHOPHYSIOLOGY: loose HAIR penetrates skin in natal cleft (intergluteal), incites foreign body reaction, forms sinus/abscess. Risk factors: hirsute, male, sedentary (sitting trauma), obesity, deep cleft. PRESENTATION: ACUTE abscess (painful, fluctuant) or CHRONIC sinus (drainage, recurrent infections). TREATMENT: ABSCESS - incision and drainage (off midline preferred). CHRONIC: excision with primary closure (off-midline techniques: Karydakis, Limberg flap lower recurrence than midline closure), or excision with healing by secondary intention (lower recurrence but prolonged healing). Recurrence common (10-30%).', 'easy'),

('e0000411-0008-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 8,
'Full-thickness rectal prolapse:',
'Is the same as mucosal prolapse', 'Involves all layers of the rectal wall protruding through the anus, has concentric rings, and requires surgical repair', 'Never requires surgery', 'Only affects children',
'B', 'FULL-THICKNESS RECTAL PROLAPSE (procidentia): all layers of rectal wall (mucosa, muscularis, serosa) protrude through anus. DISTINGUISH from mucosal prolapse (only mucosa, radial folds, usually hemorrhoid-related). APPEARANCE: CONCENTRIC RINGS (full-thickness) vs radial folds (mucosal). Often with fecal incontinence (stretched sphincter). POPULATION: bimodal - young children (usually self-limiting), elderly women (weak pelvic floor). TREATMENT: SURGICAL - abdominal (rectopexy: suture or mesh, with or without sigmoid resection) or perineal (Delorme, Altemeier/perineal proctosigmoidectomy). Abdominal preferred for fit patients (lower recurrence). Perineal for elderly/frail (can be done under regional anesthesia).', 'medium'),

('e0000411-0009-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 9,
'Thrombosed external hemorrhoid:',
'Should always have hemorrhoidectomy', 'Presents as acute painful perianal lump and if within 48-72 hours can be treated with excision of the thrombosed hemorrhoid, otherwise managed conservatively', 'Is painless', 'Requires colonoscopy',
'B', 'THROMBOSED EXTERNAL HEMORRHOID: acute thrombosis in external hemorrhoidal plexus (below dentate line). PRESENTATION: sudden severe perianal PAIN, firm tender bluish lump at anal verge. TREATMENT: timing-dependent. WITHIN 48-72 HOURS (acute): EXCISION of thrombosed hemorrhoid (not just incision and clot evacuation - high recurrence) under local anesthesia. Immediate pain relief. AFTER 72 hours: pain often improving, managed CONSERVATIVELY (sitz baths, analgesics, stool softeners) - resolves over weeks. Incision alone: clot often reforms. Excision: ellipse of skin with underlying clot, heals by secondary intention.', 'easy'),

('e0000411-0010-0000-0000-000000000111', 'd0000411-0000-0000-0000-000000000111', 10,
'Fournier gangrene:',
'Is a minor infection', 'Is a life-threatening necrotizing fasciitis of the perineum and genitalia requiring emergent surgical debridement and broad-spectrum antibiotics', 'Is treated with antibiotics alone', 'Occurs only in women',
'B', 'FOURNIER GANGRENE: necrotizing fasciitis of perineum/scrotum/genitalia. SURGICAL EMERGENCY. CAUSE: polymicrobial (aerobic + anaerobic), often from anorectal, urogenital, or skin source. RISK FACTORS: diabetes (most common), immunocompromised, alcohol, trauma, recent surgery. PRESENTATION: severe pain, systemic toxicity (sepsis), rapidly progressive erythema/necrosis, crepitus, foul discharge. TREATMENT: (1) EMERGENT SURGICAL DEBRIDEMENT - aggressive, may need multiple returns to OR. (2) Broad-spectrum IV ANTIBIOTICS (gram-positive, gram-negative, anaerobes). (3) Resuscitation, ICU care. (4) Possible fecal diversion (colostomy). (5) Wound care, VAC, reconstruction. MORTALITY: 20-40% despite treatment. Early surgery critical.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 111 (Anorectal Disorders) with 10 self-assessment questions inserted' as status;
