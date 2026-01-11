-- ============================================================================
-- CME ARTICLE 1: Hirschsprung's Disease - Management
-- Surgery 3 - Paediatric Surgery
-- ============================================================================

-- Delete existing if any
DELETE FROM article_self_assessments WHERE article_id = 'd0000301-0000-0000-0000-000000000001';
DELETE FROM article_sections WHERE article_id = 'd0000301-0000-0000-0000-000000000001';
DELETE FROM cme_articles WHERE id = 'd0000301-0000-0000-0000-000000000001';

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'd0000301-0000-0000-0000-000000000001',
    'c0000001-0000-0000-0000-000000000001',
    'a0000003-0000-0000-0000-000000000003',
    'Hirschsprung''s Disease: Comprehensive Management Guide',
    'From Diagnosis to Definitive Surgery - A Clinical Approach',
    'Hirschsprung''s disease (HD) is a congenital disorder characterized by the absence of ganglion cells in the distal bowel, resulting in functional obstruction. This article provides a comprehensive review of the embryology, pathophysiology, clinical presentation, diagnostic workup, and surgical management of HD.',
    'UNTH Paediatric Surgery Department',
    40, 2.0, 'medium', 1, true
);

-- Article Sections
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES

('d0000301-0000-0000-0000-000000000001', 'introduction', 'Introduction',
'Hirschsprung''s disease (HD), also known as congenital aganglionic megacolon, is a developmental disorder of the enteric nervous system characterized by the absence of ganglion cells in the myenteric (Auerbach''s) and submucosal (Meissner''s) plexuses of the distal intestine.

**Key Points:**
- Incidence: 1 in 5,000 live births
- Male to female ratio: 4:1
- 80% cases are rectosigmoid (short-segment)
- 15-20% involve longer segments
- Total colonic aganglionosis: 3-8%

**Historical Perspective:**
Harald Hirschsprung first described the condition in 1886, noting two infants who died with massive colonic distension.', 1),

('d0000301-0000-0000-0000-000000000001', 'content', 'Embryology and Pathophysiology',
'## Neural Crest Cell Migration

Enteric ganglion cells are derived from the neural crest. Migration occurs craniocaudally:
- Begins at week 5 of gestation
- Reaches the midgut by week 7
- Completes at the rectum by week 12

**Failure of Migration:**
In HD, neural crest cells fail to complete migration to the distal bowel.

## Genetic Basis

**RET Proto-oncogene:**
- Most significant gene (chromosome 10q11.2)
- Mutations found in 50% of familial cases
- 15-20% of sporadic cases

**Other genes:** EDNRB, EDN3, SOX10, PHOX2B, GDNF

## Pathophysiology

The aganglionic segment:
- Cannot relax (no inhibitory neurons)
- Remains tonically contracted
- Creates functional obstruction
- Proximal bowel becomes dilated (megacolon)

**Internal Anal Sphincter:** Fails to relax with rectal distension (absent RAIR).', 2),

('d0000301-0000-0000-0000-000000000001', 'content', 'Clinical Presentation',
'## Neonatal Presentation (90% of cases)

**Classic Triad:**
1. Delayed passage of meconium (>48 hours)
2. Abdominal distension
3. Bilious vomiting

**Physical Examination:**
- Abdominal distension
- Palpable loops of bowel
- Empty rectum on digital examination
- Explosive passage of stool after exam ("squirt sign")

## Hirschsprung-Associated Enterocolitis (HAEC)

**Most Serious Complication - Can be Fatal**

Clinical Features:
- Fever
- Abdominal distension
- Explosive diarrhea
- Lethargy, sepsis

Risk factors: Down syndrome, delayed diagnosis, long-segment disease', 3),

('d0000301-0000-0000-0000-000000000001', 'content', 'Diagnostic Workup',
'## 1. Plain Abdominal Radiograph
- Multiple dilated loops of bowel
- Absence of rectal gas
- Air-fluid levels

## 2. Contrast Enema (Gold Standard for Initial Diagnosis)
- Transition zone (cone-shaped)
- Rectosigmoid index <1
- Delayed contrast evacuation

## 3. Anorectal Manometry
- Absence of rectoanal inhibitory reflex (RAIR)
- Sensitivity: 85-95%

## 4. Rectal Biopsy - Definitive Diagnosis

**Suction Rectal Biopsy:**
- Office procedure, no anesthesia
- Minimum 2cm above dentate line

**Histological Findings:**
- Absence of ganglion cells
- Hypertrophied nerve trunks
- Increased acetylcholinesterase (AChE) staining', 4),

('d0000301-0000-0000-0000-000000000001', 'content', 'Surgical Management',
'## Preoperative Management
1. Rectal washouts (10-20 mL/kg saline, 2-3x daily)
2. Nutritional optimization
3. Treatment of enterocolitis if present

## Surgical Options

### 1. Swenson Procedure (1948)
- Full-thickness resection of aganglionic bowel
- End-to-end anastomosis 1-2 cm above dentate line
- Risk: Damage to pelvic nerves

### 2. Duhamel Procedure (1956)
- Retrorectal pull-through
- Side-to-side anastomosis
- Complication: Spur syndrome

### 3. Soave Procedure (1963)
- Endorectal pull-through
- Submucosal dissection, ganglionic bowel through muscular cuff

### 4. Transanal Endorectal Pull-Through (TERPT)
- Modern approach, entirely transanal
- Preferred for short-segment disease', 5),

('d0000301-0000-0000-0000-000000000001', 'key_points', 'Key Points',
'1. HD results from failure of neural crest cell migration
2. Classic triad: Delayed meconium, distension, bilious vomiting
3. Rectosigmoid involvement most common (80%)
4. Rectal biopsy is definitive diagnosis
5. RET proto-oncogene is most common genetic cause
6. HAEC is most serious complication
7. TERPT preferred for short-segment disease
8. Long-term continence rates >90%
9. Associated with Down syndrome in 10%
10. Migration reaches rectum by week 12 of gestation', 6);

-- Self-Assessment Questions (10 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES

('d0000301-0000-0000-0000-000000000001', 1,
'What is the most common location of aganglionosis in Hirschsprung''s disease?',
'Total colon', 'Rectosigmoid', 'Small intestine', 'Ascending colon',
'B', 'Rectosigmoid (short-segment) disease accounts for approximately 80% of Hirschsprung''s disease cases. Neural crest cells migrate craniocaudally, with the rectum being the last area colonized.'),

('d0000301-0000-0000-0000-000000000001', 2,
'Which investigation provides definitive diagnosis of Hirschsprung''s disease?',
'Plain abdominal X-ray', 'Contrast enema', 'Rectal biopsy', 'Anorectal manometry',
'C', 'Rectal biopsy demonstrates absent ganglion cells in the myenteric and submucosal plexuses. Suction rectal biopsy is preferred as it can be done without anesthesia.'),

('d0000301-0000-0000-0000-000000000001', 3,
'Which gene mutation is most commonly associated with Hirschsprung''s disease?',
'EDNRB', 'RET proto-oncogene', 'SOX10', 'PHOX2B',
'B', 'RET proto-oncogene mutations (chromosome 10q11.2) are found in 50% of familial cases and 15-20% of sporadic cases. RET encodes a tyrosine kinase receptor essential for enteric nervous system development.'),

('d0000301-0000-0000-0000-000000000001', 4,
'What is the "squirt sign" in Hirschsprung''s disease?',
'Explosive passage of stool after rectal examination', 'Bloody diarrhea after feeding', 'Projectile vomiting', 'Visible peristalsis',
'A', 'The "squirt sign" refers to explosive passage of stool and gas following digital rectal examination. The examining finger temporarily dilates the contracted aganglionic segment, allowing decompression.'),

('d0000301-0000-0000-0000-000000000001', 5,
'Which surgical procedure involves a retrorectal pull-through with side-to-side anastomosis?',
'Swenson procedure', 'Duhamel procedure', 'Soave procedure', 'TERPT',
'B', 'The Duhamel procedure (1956) involves bringing ganglionic bowel behind the aganglionic rectum with side-to-side anastomosis. Potential complication is "spur syndrome."'),

('d0000301-0000-0000-0000-000000000001', 6,
'What is the most common serious complication of Hirschsprung''s disease?',
'Anastomotic leak', 'Hirschsprung-associated enterocolitis', 'Fecal incontinence', 'Intestinal perforation',
'B', 'HAEC occurs in up to 30% of patients and can be life-threatening. Features include fever, abdominal distension, and explosive diarrhea. Can occur before or after surgery.'),

('d0000301-0000-0000-0000-000000000001', 7,
'Which finding on contrast enema suggests Hirschsprung''s disease?',
'Rectosigmoid index greater than 1', 'Dilated rectum', 'Transition zone with rectosigmoid index less than 1', 'Apple-core lesion',
'C', 'A transition zone with rectosigmoid index <1 is characteristic. Normally the rectum is wider than the sigmoid. In HD, the aganglionic rectum is narrow.'),

('d0000301-0000-0000-0000-000000000001', 8,
'What is absent on anorectal manometry in Hirschsprung''s disease?',
'External anal sphincter reflex', 'Rectoanal inhibitory reflex', 'Cough reflex', 'Sampling reflex',
'B', 'The rectoanal inhibitory reflex (RAIR) is absent. Normally, rectal distension causes relaxation of internal anal sphincter. Sensitivity is 85-95%.'),

('d0000301-0000-0000-0000-000000000001', 9,
'Which syndrome is most commonly associated with Hirschsprung''s disease?',
'Turner syndrome', 'Down syndrome', 'Marfan syndrome', 'Klinefelter syndrome',
'B', 'Down syndrome is associated with HD in approximately 10% of cases. These children are at increased risk of developing enterocolitis.'),

('d0000301-0000-0000-0000-000000000001', 10,
'At what gestational week does neural crest cell migration reach the rectum?',
'Week 5', 'Week 7', 'Week 12', 'Week 16',
'C', 'Neural crest cells begin migration at week 5, reach midgut by week 7, and complete their journey to the rectum by week 12. The rectum is most commonly affected as it is colonized last.');

SELECT 'CME Article 1: Hirschsprung Disease - Completed' as status;
