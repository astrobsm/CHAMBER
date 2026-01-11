-- ============================================================================
-- SURGERY 3 CME ARTICLE 77: Anorectal Disorders
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000143-0000-0000-0000-000000000143', 'a0000003-0000-0000-0000-000000000003', 'Anorectal Disorders', 'Hemorrhoids, fissures, fistulas, and abscesses')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000377-0000-0000-0000-000000000077',
    'c0000143-0000-0000-0000-000000000143',
    'a0000003-0000-0000-0000-000000000003',
    'Anorectal Disorders: Hemorrhoids to Fistulas',
    'Diagnosis and Management of Common Anorectal Conditions',
    'This article covers hemorrhoids (internal and external, grading, treatment), anal fissure (acute vs chronic, management), anorectal abscess, fistula-in-ano (Parks classification), pilonidal disease, and rectal prolapse.',
    'Department of Surgery, UNTH',
    2.0,
    20,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000377-0001-0000-0000-000000000001', 'd0000377-0000-0000-0000-000000000077', 1,
'Internal hemorrhoids are graded based on:',
'Size in centimeters', 'Degree of prolapse with Grade III prolapsing and requiring manual reduction', 'Color of the hemorrhoid', 'Patient age',
'B', 'Internal hemorrhoid grading: Grade I - bleeding only, no prolapse; Grade II - prolapse with straining, spontaneously reduce; Grade III - prolapse, require MANUAL REDUCTION; Grade IV - permanently prolapsed, cannot be reduced. Treatment based on grade: I-II conservative/office procedures; III-IV may need surgery.', 'easy'),

('e0000377-0002-0000-0000-000000000002', 'd0000377-0000-0000-0000-000000000077', 2,
'Thrombosed external hemorrhoid treatment:',
'Always requires hemorrhoidectomy', 'If presenting within 72 hours with severe pain, excision of the thrombosed hemorrhoid provides rapid relief', 'Should never be excised', 'Requires colonoscopy first',
'B', 'Thrombosed external hemorrhoid: painful perianal mass. If within 72 HOURS and severe pain: EXCISION (not just incision/drainage - clot recurs) provides rapid relief. After 72 hours: pain usually resolving, conservative management (sitz baths, analgesics). Complete excision of thrombosed hemorrhoid preferred over simple incision.', 'easy'),

('e0000377-0003-0000-0000-000000000003', 'd0000377-0000-0000-0000-000000000077', 3,
'Chronic anal fissure is characterized by:',
'Location in the anterior midline in most patients', 'Sentinel pile, hypertrophied anal papilla, and fibrotic fissure base, typically at posterior midline', 'Spontaneous healing in most cases', 'Painless bleeding',
'B', 'Chronic anal fissure features: visible muscle fibers at base (exposed internal sphincter), SENTINEL PILE (skin tag at distal end), HYPERTROPHIED ANAL PAPILLA (proximal end), induration. Location: POSTERIOR MIDLINE (90% in males, 80% in females). Lateral fissures: consider Crohn, TB, HIV, syphilis. Chronic = persisting >6-8 weeks, failed conservative therapy.', 'easy'),

('e0000377-0004-0000-0000-000000000004', 'd0000377-0000-0000-0000-000000000077', 4,
'First-line medical treatment for chronic anal fissure is:',
'Immediate surgery', 'Topical nitrates or calcium channel blockers to relax internal sphincter', 'Antibiotics', 'High-dose laxatives only',
'B', 'Medical management of chronic fissure: goal is to reduce internal sphincter hypertonia. First-line: TOPICAL agents - GTN (glyceryl trinitrate 0.2-0.4%) or DILTIAZEM 2% - relax sphincter, improve blood flow. Apply 2-3 times daily for 6-8 weeks. Healing rate 50-70%. Also: stool softeners, fiber, sitz baths. Botox injection if topical fails. Surgery (lateral internal sphincterotomy): most effective but risk of incontinence.', 'easy'),

('e0000377-0005-0000-0000-000000000005', 'd0000377-0000-0000-0000-000000000077', 5,
'Perianal abscess management requires:',
'Antibiotics alone', 'Incision and drainage, with antibiotics alone being inadequate', 'MRI before any intervention', 'Delayed treatment after colonoscopy',
'B', 'Perianal abscess: surgical emergency requiring INCISION AND DRAINAGE. Antibiotics ALONE are inadequate - "pus under pressure" must be drained. Antibiotics adjunctive for: cellulitis, immunocompromised, prosthetic valves/devices, diabetes. Types by location: perianal (most common), ischiorectal, intersphincteric, supralevator. ~50% develop fistula-in-ano. Exam under anesthesia if complex or recurrent.', 'easy'),

('e0000377-0006-0000-0000-000000000006', 'd0000377-0000-0000-0000-000000000077', 6,
'Parks classification of fistula-in-ano categorizes based on:',
'Length of the fistula', 'Relationship of the tract to the anal sphincter complex', 'Patient symptoms', 'Cause of the fistula',
'B', 'Parks classification of fistula-in-ano: based on relationship to SPHINCTER. INTERSPHINCTERIC (70%): between internal and external sphincter. TRANSSPHINCTERIC (25%): crosses through external sphincter. SUPRASPHINCTERIC (5%): above external sphincter, loops over puborectalis. EXTRASPHINCTERIC (1%): outside sphincter complex (usually iatrogenic or Crohn). Classification guides surgical approach and continence risk.', 'easy'),

('e0000377-0007-0000-0000-000000000007', 'd0000377-0000-0000-0000-000000000077', 7,
'Goodsall rule for fistula-in-ano states:',
'All fistulas are straight', 'External openings posterior to transverse anal line track to posterior midline internal opening; anterior openings track radially', 'Internal opening is always at 6 o clock', 'Fistulas never have multiple tracts',
'B', 'Goodsall rule: predicts internal opening location. Draw transverse line through anus: POSTERIOR external openings (behind line) - curved tract to POSTERIOR MIDLINE internal opening. ANTERIOR external openings (in front of line) - RADIAL straight tract to corresponding internal opening. Rule less reliable for anterior openings >3 cm from anal verge. Helps plan surgical approach and identify internal opening.', 'easy'),

('e0000377-0008-0000-0000-000000000008', 'd0000377-0000-0000-0000-000000000077', 8,
'Pilonidal disease:',
'Is congenital', 'Is acquired, caused by hair penetration in the natal cleft, commonly affecting young hairy males', 'Only affects females', 'Never recurs after treatment',
'B', 'Pilonidal disease: ACQUIRED (not congenital) condition caused by HAIR PENETRATION into natal cleft skin. Risk factors: male, young adults (15-30), hairy, obesity, sedentary occupation, prolonged sitting. Presentation: abscess (acute), chronic sinus with discharge. Treatment: abscess - I&D; chronic - surgical excision (various techniques: primary closure, flaps, open healing). Recurrence common (10-40%). Prevention: hair removal, hygiene.', 'easy'),

('e0000377-0009-0000-0000-000000000009', 'd0000377-0000-0000-0000-000000000077', 9,
'Rectal prolapse (procidentia) differs from prolapsed hemorrhoids by:',
'Having radial mucosal folds', 'Having concentric circular mucosal folds and involving all layers of the rectal wall', 'Being always painful', 'Never requiring surgery',
'B', 'Rectal prolapse (procidentia) vs hemorrhoids: PROLAPSE - CONCENTRIC circular folds, full-thickness rectal wall, palpable sulcus between anal canal and prolapsed rectum. HEMORRHOIDS - RADIAL folds, mucosa/submucosa only, no sulcus. Full-thickness prolapse: all rectal layers prolapse through anus. Mucosal prolapse: only mucosa. Treatment: surgery - abdominal (rectopexy) or perineal (Delorme, Altemeier) approaches based on patient fitness.', 'easy'),

('e0000377-0010-0000-0000-000000000010', 'd0000377-0000-0000-0000-000000000077', 10,
'Lateral internal sphincterotomy for anal fissure:',
'Has high incontinence risk', 'Is highly effective (95% healing) with low incontinence risk when properly performed', 'Should be performed at the posterior midline', 'Is first-line treatment',
'B', 'Lateral internal sphincterotomy (LIS): DEFINITIVE treatment for chronic anal fissure refractory to medical therapy. Technique: divide internal sphincter in LATERAL position (away from fissure), partial thickness (lower 1/3 to 1/2). Success rate: >95% healing. Incontinence risk: 1-8% (minor, usually flatus) with proper technique. Gold standard but reserved for failed medical management due to small continence risk. More effective than Botox.', 'easy')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 77 (Anorectal Disorders) with 10 self-assessment questions inserted' as status;
