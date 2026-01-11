-- ============================================================================
-- SURGERY 3 CME ARTICLE 33: Anorectal Disorders
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000099-0000-0000-0000-000000000099', 'a0000003-0000-0000-0000-000000000003', 'Anorectal Disorders', 'Hemorrhoids, fissures, fistulas, and abscess management')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000333-0000-0000-0000-000000000033',
    'c0000099-0000-0000-0000-000000000099',
    'a0000003-0000-0000-0000-000000000003',
    'Anorectal Disorders: Diagnosis and Management',
    'Hemorrhoids, Fissures, Fistulas, and Abscesses',
    'This article covers common anorectal conditions including hemorrhoids (classification and treatment), anal fissure, anorectal abscess, fistula-in-ano, pilonidal disease, and rectal prolapse. Understanding anatomy and pathophysiology guides appropriate surgical management.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000333-0001-0000-0000-000000000001', 'd0000333-0000-0000-0000-000000000033', 1,
'Internal hemorrhoids are classified based on:',
'Size alone', 'Degree of prolapse (Goligher classification - grades I to IV)', 'Pain level', 'Bleeding amount', NULL,
'B', 'Goligher classification of internal hemorrhoids: Grade I - bleed, no prolapse; Grade II - prolapse with straining, spontaneously reduce; Grade III - prolapse with straining, require manual reduction; Grade IV - prolapsed and cannot be reduced (may be strangulated). Treatment based on grade: I/II - conservative, rubber band ligation, sclerotherapy; III - RBL, hemorrhoidopexy, excision; IV - excisional hemorrhoidectomy. Internal hemorrhoids above dentate line (visceral innervation - painless); external below (somatic - painful).', 'easy'),

('e0000333-0002-0000-0000-000000000002', 'd0000333-0000-0000-0000-000000000033', 2,
'The most common location for anal fissure is:',
'Lateral position', 'Posterior midline', 'Anterior midline', 'Multiple locations', NULL,
'B', 'Anal fissure location: 90% posterior midline (6 o clock), 10% anterior midline (more common in women), lateral fissures are atypical and suggest underlying disease (Crohn, HIV, TB, syphilis, leukemia). Posterior midline is watershed area with poorest blood supply, also experiences maximum stretch during defecation. Triad of chronic fissure: fissure + sentinel pile (external skin tag) + hypertrophied anal papilla (internal). Internal sphincter spasm perpetuates ischemia and prevents healing.', 'easy'),

('e0000333-0003-0000-0000-000000000003', 'd0000333-0000-0000-0000-000000000033', 3,
'First-line treatment for acute anal fissure includes:',
'Immediate surgery', 'Stool softeners, fiber supplementation, sitz baths, and topical therapy (GTN or diltiazem)', 'Antibiotics only', 'Rubber band ligation', NULL,
'B', 'Acute fissure treatment (heals 50-70%): (1) Stool softeners and fiber (bulk forming laxatives); (2) Adequate fluid intake; (3) Sitz baths; (4) Topical GTN 0.2-0.4% or diltiazem 2% - relaxes internal sphincter, improves blood flow; (5) Lidocaine gel for pain. Chronic fissure (>6-8 weeks, no healing): botulinum toxin injection or lateral internal sphincterotomy (LIS - gold standard, ~95% healing). LIS risk: incontinence (minor usually, ~5-10%). Avoid LIS in patients with prior incontinence, Crohn disease.', 'easy'),

('e0000333-0004-0000-0000-000000000004', 'd0000333-0000-0000-0000-000000000033', 4,
'Goodsall rule for anal fistulas states:',
'All fistulas are straight', 'Posterior external openings curve to posterior midline; anterior openings have straight radial tracts', 'All fistulas require colostomy', 'Internal opening is always at dentate line', NULL,
'B', 'Goodsall rule predicts internal opening location: External opening POSTERIOR to transverse anal line - curved tract to posterior midline internal opening. External opening ANTERIOR to transverse anal line - straight radial tract to nearest part of anal canal. Exception: external openings >3 cm from anal verge often have curved tracts regardless of position. Rule helps locate internal opening during surgery. Accuracy ~50-70%. MRI or endoanal ultrasound for complex fistulas.', 'medium'),

('e0000333-0005-0000-0000-000000000005', 'd0000333-0000-0000-0000-000000000033', 5,
'The Parks classification of fistula-in-ano includes:',
'Superficial only', 'Intersphincteric, trans-sphincteric, suprasphincteric, and extrasphincteric types', 'Internal and external only', 'High and low only', NULL,
'B', 'Parks classification (based on relationship to sphincters): (1) Intersphincteric (45%) - between internal and external sphincter; (2) Trans-sphincteric (30%) - crosses external sphincter into ischiorectal fossa; (3) Suprasphincteric (20%) - loops over puborectalis; (4) Extrasphincteric (5%) - bypasses sphincter complex entirely. Treatment depends on type: simple low fistulas - fistulotomy; complex/high fistulas - seton drainage, advancement flap, LIFT procedure, fibrin glue, plugs. Goal: eradicate fistula while preserving continence.', 'medium'),

('e0000333-0006-0000-0000-000000000006', 'd0000333-0000-0000-0000-000000000033', 6,
'Treatment of perianal abscess is:',
'Antibiotics alone', 'Incision and drainage as primary treatment', 'Observation', 'Delayed drainage after imaging', NULL,
'B', 'Perianal abscess: surgical emergency requiring incision and drainage. Antibiotics alone are inadequate. Types by location: perianal (most common), ischiorectal, intersphincteric, supralevator. Presentation: perianal pain, swelling, fever. Fluctuance may be absent in deep abscesses. Treatment: I&D under anesthesia if complex/deep, bedside for simple superficial abscess. Leave wound open for drainage. Look for fistula (crypto-glandular origin). ~30-50% develop fistula-in-ano. Antibiotics only adjunctive for cellulitis, immunocompromised, prosthetic valves.', 'easy'),

('e0000333-0007-0000-0000-000000000007', 'd0000333-0000-0000-0000-000000000033', 7,
'Fournier gangrene is:',
'A benign condition', 'Necrotizing fasciitis of the perineum and genitalia requiring urgent surgical debridement', 'Treated with antibiotics alone', 'A type of hemorrhoid', NULL,
'B', 'Fournier gangrene: life-threatening necrotizing fasciitis of perineum/genitalia. Polymicrobial (aerobic + anaerobic). Risk factors: diabetes, immunosuppression, obesity, recent surgery/trauma. Presentation: perineal pain out of proportion to findings, fever, tachycardia, crepitus, skin necrosis. Rapidly progressive! Mortality: 20-40%. Treatment: (1) Aggressive resuscitation; (2) Broad-spectrum antibiotics; (3) EMERGENCY wide surgical debridement (often multiple returns to OR); (4) Wound care, VAC therapy; (5) May need fecal diversion. Time to surgery correlates with survival.', 'medium'),

('e0000333-0008-0000-0000-000000000008', 'd0000333-0000-0000-0000-000000000033', 8,
'Pilonidal disease treatment for acute abscess versus chronic sinus differs in that:',
'Both require wide excision', 'Acute abscess requires incision and drainage off midline; chronic sinus may need excision or other procedures', 'Antibiotics cure both', 'No surgical treatment needed', NULL,
'B', 'Pilonidal disease management: Acute abscess - incision and drainage (OFF midline to avoid midline wound healing problems), usually in clinic/ED. Chronic/recurrent disease options: (1) Conservative - shaving, hygiene; (2) Pit picking (Gips procedure); (3) Wide excision with primary closure (off midline - Karydakis, Bascom cleft lift); (4) Excision with healing by secondary intention; (5) Excision with flap closure. Off-midline wounds heal better than midline. Recurrence rates vary with technique (5-30%).', 'medium'),

('e0000333-0009-0000-0000-000000000009', 'd0000333-0000-0000-0000-000000000033', 9,
'Thrombosed external hemorrhoid presenting within 72 hours is best treated with:',
'Conservative management only', 'Excision of the thrombosed hemorrhoid (not just incision)', 'Rubber band ligation', 'Internal sphincterotomy', NULL,
'B', 'Thrombosed external hemorrhoid: acutely painful perianal lump, often after straining. If <72 hours: excision (not just incision) under local anesthesia provides immediate relief and prevents recurrence (incision alone leads to re-thrombosis and skin tags). If >72 hours: pain usually improving, conservative treatment (sitz baths, analgesics, stool softeners) as excision at this stage causes more pain than benefit. Elliptical excision of overlying skin and clot. Wound left open. Strangulated hemorrhoids different entity - may need urgent hemorrhoidectomy.', 'medium'),

('e0000333-0010-0000-0000-000000000010', 'd0000333-0000-0000-0000-000000000033', 10,
'Rectal prolapse (procidentia) in adults is treated with:',
'Rubber band ligation', 'Surgery - either abdominal (rectopexy) or perineal (Delorme, Altemeier) approach based on patient fitness', 'Dietary modification alone', 'Observation', NULL,
'B', 'Rectal prolapse treatment: Surgery is definitive. Approach selection based on patient fitness and surgeon preference. Abdominal approaches (lower recurrence but higher morbidity): ventral mesh rectopexy (laparoscopic), suture rectopexy, resection rectopexy. Perineal approaches (for elderly/high-risk): Delorme (mucosal sleeve resection with muscular plication), Altemeier (perineal proctosigmoidectomy). Recurrence: perineal 10-30% vs abdominal 5-10%. Functional outcomes (continence, constipation) important consideration. Conservative measures temporary only.', 'hard')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 33 (Anorectal Disorders) with 10 self-assessment questions inserted' as status;
