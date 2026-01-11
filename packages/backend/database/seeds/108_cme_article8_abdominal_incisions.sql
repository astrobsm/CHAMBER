-- CME Article 8: Abdominal Incisions
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'art00008-0000-0000-0000-000000000008',
    'b0000008-0000-0000-0000-000000000001',
    'a0000001-0000-0000-0000-000000000001',
    'Abdominal Incisions: Surgical Approaches and Techniques',
    'Anatomy, Selection, and Closure Principles',
    'The choice of abdominal incision is a fundamental surgical decision that impacts exposure, closure strength, complications, and cosmesis. This CME article provides comprehensive coverage of abdominal wall anatomy, incision types, selection criteria based on procedure and patient factors, and evidence-based closure techniques. Special emphasis is placed on preventing incisional hernia through proper technique.',
    'UNTH Surgery Department, General Surgery Division',
    45,
    2.0,
    'medium',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'introduction', 'Introduction',
'The abdominal incision is the gateway to abdominal surgery. A well-planned incision provides adequate exposure while minimizing complications such as wound infection, dehiscence, incisional hernia, and nerve damage.

**Historical Context:**
- Transverse incisions promoted by Pfannenstiel (1900) for gynecology
- Midline incision dominant for most of 20th century
- Laparoscopic surgery revolutionized access (1980s-present)
- Modern understanding of fascial mechanics guides closure techniques

**Key Considerations in Incision Selection:**
1. **Exposure**: Adequate access to target organ(s)
2. **Extensibility**: Ability to enlarge if needed
3. **Blood supply**: Preservation of abdominal wall perfusion
4. **Nerve preservation**: Avoiding denervation and muscle weakness
5. **Closure strength**: Minimizing hernia risk
6. **Cosmesis**: Patient satisfaction with scar appearance

**Incisional Hernia Impact:**
- Occurs in 10-23% of laparotomies
- Higher in emergency surgery, obesity, and wound infection
- Significant morbidity, quality of life impact
- Repair costs billions annually

This article will provide the anatomical and technical foundation for optimal incision planning and closure.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Describe the layered anatomy of the anterior abdominal wall and its regional variations

2. Identify the neurovascular supply to the abdominal wall and structures at risk during incision

3. Compare the characteristics, advantages, and disadvantages of major abdominal incisions

4. Select appropriate incisions for specific surgical procedures and clinical scenarios

5. Apply the principles of the linea alba and rectus sheath anatomy to midline incisions

6. Describe proper technique for mass closure of midline laparotomy

7. Calculate appropriate suture-to-wound length ratio and bite technique

8. Identify risk factors for incisional hernia and implement prevention strategies

9. Describe management of abdominal wound complications including dehiscence

10. Discuss the role of prophylactic mesh in high-risk patients', 2);

-- Section 3: Abdominal Wall Anatomy
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'content', 'Abdominal Wall Anatomy',
'## Layers of the Anterior Abdominal Wall

From superficial to deep:

### 1. Skin
- Langer''s lines (relaxed skin tension lines) generally transverse
- Transverse incisions within Langer''s lines heal with finer scars

### 2. Subcutaneous Tissue
**Camper''s Fascia:**
- Superficial fatty layer
- Variable thickness
- Contains superficial vessels

**Scarpa''s Fascia:**
- Deep membranous layer
- Fuses with fascia lata of thigh
- Continuous with Colles'' fascia of perineum

### 3. Muscles and Aponeuroses

**Rectus Abdominis:**
- Paired vertical muscles from xiphoid to pubis
- Enclosed in rectus sheath
- Segmented by tendinous inscriptions (3-4)
- Primary flexor of trunk

**External Oblique:**
- Fibers run inferomedially ("hands in pockets")
- Aponeurosis forms anterior rectus sheath
- Inguinal ligament is inferior border

**Internal Oblique:**
- Fibers run superomedially (perpendicular to external oblique)
- Aponeurosis splits around rectus above arcuate line
- Blends with transversus below arcuate line

**Transversus Abdominis:**
- Deepest muscular layer
- Fibers run transversely
- Aponeurosis contributes to rectus sheath

### 4. Rectus Sheath

**Above Arcuate Line:**
- Anterior: External oblique + anterior leaf of internal oblique
- Posterior: Posterior leaf of internal oblique + transversus abdominis aponeurosis

**Below Arcuate Line (approximately halfway between umbilicus and pubis):**
- All aponeuroses pass anterior to rectus
- Posterior wall is only transversalis fascia

### 5. Transversalis Fascia
- Lines deep surface of transversus
- Continuous with endoabdominal fascia
- Forms posterior inguinal wall

### 6. Preperitoneal Fat
- Variable layer
- Contains inferior epigastric vessels

### 7. Peritoneum
- Parietal layer lining abdominal cavity

## Neurovascular Supply

### Arterial Supply
**Superior Epigastric Artery:**
- Terminal branch of internal thoracic
- Enters rectus sheath behind rectus
- Supplies upper abdominal wall

**Inferior Epigastric Artery:**
- Branch of external iliac
- Enters rectus sheath at arcuate line
- Anastomoses with superior epigastric
- Risk during paramedian incisions

**Intercostal and Lumbar Arteries:**
- Supply lateral abdominal wall
- Enter between internal oblique and transversus

### Nerve Supply
**Thoracoabdominal Nerves (T7-T11):**
- Continue as intercostal nerves
- Pass between internal oblique and transversus
- Provide motor and sensory innervation

**Subcostal Nerve (T12):**
- Passes below 12th rib
- Supplies lower abdominal wall

**Iliohypogastric Nerve (L1):**
- Passes through internal oblique
- Sensory to suprapubic region
- At risk in low transverse incisions

**Ilioinguinal Nerve (L1):**
- Emerges through inguinal canal
- Sensory to groin, scrotum/labia', 3);

-- Section 4: Midline Incisions
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'content', 'Midline Incision',
'## Midline (Median) Laparotomy

The most commonly used incision for abdominal surgery.

### Anatomy of the Linea Alba
- Fusion of aponeuroses of lateral abdominal muscles
- Extends from xiphoid to pubic symphysis
- Width varies: 1-2 cm above umbilicus, narrow below
- Relatively avascular
- No motor nerves

### Types

**Upper Midline:**
- Xiphoid to umbilicus
- Access to: Stomach, duodenum, liver, biliary tract, spleen, pancreas

**Lower Midline:**
- Umbilicus to pubis
- Access to: Colon, small bowel, gynecologic organs, bladder

**Full Midline:**
- Xiphoid to pubis
- Complete abdominal access
- Curve around umbilicus (avoid or excise)

### Technique

**Incision:**
1. Skin incision through dermis
2. Divide subcutaneous tissue
3. Identify linea alba (white line)
4. Incise linea alba with scalpel or electrocautery
5. Enter peritoneum carefully (avoid visceral injury)
6. Extend under direct vision

**Umbilicus:**
- Curve around (common)
- Excise (if contaminated or for oncology)
- Never incise through (hernia/infection risk)

### Advantages
- Rapid entry
- Excellent exposure to all quadrants
- Easily extensible
- No muscle or nerve division
- No major vessel division
- Single layer fascial closure

### Disadvantages
- Higher incisional hernia rate (10-20%)
- Crosses Langer''s lines (cosmetically inferior)
- Inferior cosmetic result

### Closure: The Evidence

**Mass Closure:**
- Single layer including all fascial layers (linea alba/rectus sheath)
- Superior to layered closure
- Standard of care

**Suture Material:**
- Slowly absorbable (PDS, Maxon) or non-absorbable (Prolene)
- Evidence slightly favors slowly absorbable (less suture sinus)
- No difference in hernia rates

**Suture Technique:**

**Continuous vs. Interrupted:**
- Continuous running suture preferred
- Equal hernia rates with proper technique
- Faster closure
- Better tension distribution

**Small Bites Technique (STITCH Trial):**
- Bites 5 mm from edge, 5 mm apart (not traditional 1 cm x 1 cm)
- Suture-to-wound length ratio ≥4:1
- Reduced incisional hernia rate (13% to 21%)
- Improved wound healing

**Hughes Rule:**
- Suture length ≥4× wound length
- Ensures adequate tissue incorporation
- Achieved by small bites close together', 4);

-- Section 5: Other Vertical Incisions
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'content', 'Paramedian and Other Vertical Incisions',
'## Paramedian Incision

### Anatomy and Technique
- Vertical incision 2-3 cm lateral to midline
- Through anterior rectus sheath
- Rectus muscle retracted laterally
- Through posterior rectus sheath and peritoneum

### Types

**Classic Paramedian:**
- Rectus sheath opened vertically
- Muscle retracted (not divided)

**Battle Incision:**
- Anterior sheath opened medially
- Rectus retracted laterally
- Posterior sheath/peritoneum opened near medial edge

**Kustner Incision:**
- Similar to Battle, opens sheath laterally
- Rarely used

### Advantages
- Strong closure (muscle falls over suture line)
- Theoretically lower hernia rate (questionable evidence)
- Good lateral exposure

### Disadvantages
- Divides branches of inferior epigastric vessels
- Risk of rectus denervation if nerves injured
- Muscle atrophy if nerves damaged
- More complex closure
- Not easily converted to other incisions
- Generally fallen out of favor

## McBurney (Muscle-Splitting) Incision

### Anatomy and Technique
- Located at McBurney''s point (1/3 distance from ASIS to umbilicus)
- Oblique skin incision
- External oblique split in direction of fibers
- Internal oblique and transversus split (not cut)
- Peritoneum incised

### Indications
- Open appendectomy (historical; now mostly laparoscopic)
- Limited access procedures

### Advantages
- Muscle splitting (no muscle division)
- Strong healing
- Low hernia rate

### Disadvantages
- Limited exposure
- Difficult to extend
- May need conversion if appendix perforated or different diagnosis

## Rocky-Davis (Rockey-Davis) Incision

### Anatomy and Technique
- Transverse variant at McBurney''s point
- Muscle-splitting technique similar to McBurney
- Follows Langer''s lines

### Advantages
- Better cosmesis than McBurney
- Muscle-splitting benefits maintained

## Subcostal Incision (Kocher Incision)

### Anatomy and Technique
- Oblique incision 2-3 cm below and parallel to costal margin
- Extends from midline laterally
- Through rectus, external oblique, internal oblique, transversus
- Right side: Cholecystectomy, biliary surgery (historical)
- Left side: Splenectomy (rare)

### Advantages
- Good exposure for hepatobiliary surgery
- Strong closure
- Can extend to bilateral (Chevron/rooftop)

### Disadvantages
- Divides muscles and nerves (T8-T9)
- Limited to upper abdomen
- Denervation causes muscle bulge (pseudohernia)
- Largely replaced by laparoscopy', 5);

-- Section 6: Transverse Incisions
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'content', 'Transverse Incisions',
'## Transverse Incisions: Overview

Transverse incisions follow the natural lines of skin tension (Langer''s lines) and the direction of muscle fibers.

**General Advantages:**
- Follow Langer''s lines (better cosmesis)
- Parallel to dermatomal nerve distribution
- May have lower hernia rate (controversial)
- Less respiratory impairment (especially in obese)

**General Disadvantages:**
- Limited extensibility (only laterally)
- Cross multiple tissue planes requiring complex closure
- May require muscle division

## Pfannenstiel Incision

### Anatomy and Technique
- Curved transverse incision 2-3 cm above pubic symphysis
- Placed in suprapubic skin crease (excellent cosmesis)
- Anterior rectus sheath incised transversely
- Rectus muscles separated in midline (not divided)
- Posterior sheath/peritoneum opened vertically in midline

### Indications
- Cesarean section
- Gynecologic surgery (hysterectomy, ovarian)
- Open prostatectomy
- Bladder surgery

### Advantages
- Excellent cosmesis (hidden in skin fold, hair line)
- Strong closure
- Low hernia rate
- Less postoperative pain

### Disadvantages
- Limited upper abdominal access
- Extensibility limited
- Risk to iliohypogastric and ilioinguinal nerves

## Maylard Incision

### Anatomy and Technique
- Similar to Pfannenstiel in skin incision
- Rectus muscles transversely DIVIDED
- Inferior epigastric vessels ligated
- Provides wider pelvic access than Pfannenstiel

### Indications
- Radical pelvic surgery requiring wider exposure
- Large pelvic masses

### Advantages
- Wider exposure than Pfannenstiel
- Excellent pelvic access

### Disadvantages
- Muscle division (technically cutting rectus)
- More blood loss
- Ligates inferior epigastrics (may affect flap surgery)

## Transverse Muscle-Cutting Incision

### Anatomy and Technique
- Full transverse incision at level of umbilicus
- All muscles divided transversely
- Provides excellent bilateral access

### Indications
- Aortic aneurysm repair
- Bilateral adrenal surgery
- Some pancreatic procedures

### Advantages
- Excellent exposure
- Follows muscle fiber direction in lateral muscles

### Disadvantages
- Extensive muscle division
- Nerve damage (T10-T11 dermatomes)
- Complex closure

## Chevron (Rooftop) Incision

### Anatomy and Technique
- Bilateral subcostal incisions meeting in midline
- Creates "rooftop" or inverted V shape
- Full thickness through muscles

### Indications
- Liver transplantation
- Hepatic resection
- Esophageal surgery (with vertical extension: Mercedes incision)
- Bilateral adrenal surgery
- Gastric surgery requiring wide exposure

### Advantages
- Excellent upper abdominal exposure
- Wide bilateral access
- Retractors can be optimally placed

### Disadvantages
- Extensive muscle and nerve division (T8-T10)
- Significant postoperative pain
- Bilateral denervation (upper abdominal weakness)
- Long incision

## Thoracoabdominal Incision

### Anatomy and Technique
- Oblique incision crossing costal margin
- Extends from posterior chest across abdomen
- Divides diaphragm
- May involve rib resection

### Indications
- Esophageal surgery
- Gastroesophageal junction tumors
- Large liver resections
- Adrenal tumors (historical)
- Trauma with combined chest/abdominal injuries

### Advantages
- Combines thoracic and abdominal exposure
- Excellent visualization of upper GI tract

### Disadvantages
- Highly morbid incision
- Respiratory complications
- Painful
- Diaphragm division', 6);

-- Section 7: Incisional Hernia Prevention
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'content', 'Incisional Hernia Prevention',
'## Risk Factors for Incisional Hernia

### Patient Factors
- Obesity (BMI >30)
- Male sex
- Age >65
- Smoking
- Diabetes mellitus
- Malnutrition (albumin <3.0 g/dL)
- Chronic steroid use
- Connective tissue disorders
- Chronic cough/COPD
- Constipation/straining
- Previous hernia or hernia repair

### Surgical Factors
- Emergency surgery (vs. elective)
- Surgical site infection
- Wound dehiscence
- Prolonged operative time
- Midline incision (vs. transverse)
- Inadequate closure technique
- Use of absorbable suture (debated)

### Disease Factors
- Malignancy
- Peritonitis
- Bowel obstruction
- Aortic aneurysm

## Evidence-Based Prevention Strategies

### Preoperative Optimization
- Smoking cessation (≥4 weeks before surgery)
- Weight optimization
- Glucose control
- Nutritional support if malnourished

### Intraoperative Technique

**Incision Choice:**
- Consider transverse incisions when feasible
- Laparoscopic approach when appropriate
- Minimize incision length

**Closure Technique (STITCH Recommendations):**
1. **Small Bites:**
   - 5 mm from wound edge
   - 5 mm between bites
   - Creates more bites per unit length

2. **Suture-to-Wound Length Ratio ≥4:1:**
   - Mark suture at start
   - Measure wound and suture length
   - Ratio = suture consumed ÷ wound length

3. **Slowly Absorbable Monofilament:**
   - PDS (polydioxanone) or similar
   - Maintains strength through critical healing period

4. **Continuous Running Suture:**
   - Even tension distribution
   - Faster than interrupted

**Avoid:**
- Large bites (traditional 1 cm × 1 cm)
- Mass closure with rapidly absorbable suture
- Excessive tension
- Including fat or peritoneum in closure

### Prophylactic Mesh

**Indications (High-Risk Patients):**
- Obesity (BMI >30)
- Prior incisional hernia
- Aortic aneurysm surgery
- Open ostomy creation

**Placement Options:**
- Onlay: Superficial to anterior fascia
- Sublay (retrorectus): Behind rectus, anterior to posterior sheath
- Preperitoneal: In preperitoneal space

**Evidence:**
- PRIMA Trial: Prophylactic mesh reduced hernia rate (17% to 30% in controls)
- PREVER Trial: Similar findings in bariatric surgery
- Small mesh-related complications

### Postoperative Measures
- Abdominal binder (controversial, patient comfort)
- Avoid heavy lifting (4-6 weeks)
- Treat cough, constipation
- Wound care to prevent infection', 7);

-- Section 8: Wound Complications
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'content', 'Abdominal Wound Complications',
'## Surgical Site Infection (SSI)

### Classification
- **Superficial SSI:** Skin and subcutaneous tissue
- **Deep SSI:** Fascia and muscle
- **Organ/Space SSI:** Deep to fascia (intra-abdominal)

### Risk Factors
- Wound class (clean → dirty)
- Diabetes
- Obesity
- Malnutrition
- Immunosuppression
- Long operative time
- Poor technique

### Prevention
- Antibiotic prophylaxis (within 60 min of incision)
- Normothermia
- Glycemic control
- Chlorhexidine skin prep
- Subcuticular closure (no skin staples if possible)

### Management
- Open and drain infected wound
- Wound culture
- Local wound care (wet-to-dry or NPWT)
- Antibiotics if cellulitis present
- Delayed primary closure or secondary intention

## Seroma

### Definition
- Collection of serous fluid in wound space

### Prevention
- Minimize dead space
- Consider closed-suction drain in large wounds
- Pressure dressing (limited evidence)

### Management
- Small: Observation (often resorb)
- Large/symptomatic: Aspiration (may need repeated)
- Persistent: Drain placement, sclerotherapy, or excision

## Hematoma

### Causes
- Inadequate hemostasis
- Coagulopathy
- Anticoagulation

### Prevention
- Meticulous hemostasis
- Correct coagulopathy
- Drain in high-risk cases

### Management
- Small: Observation
- Large/expanding: Operative exploration, evacuation, hemostasis

## Wound Dehiscence

### Definition
- Disruption of surgical wound
- Superficial: Skin and subcutaneous separation
- Fascial: Deep separation (risk of evisceration)

### Timing
- Usually postoperative days 5-8
- "Pink fluid" or "salmon-colored" drainage as warning sign (serosanguinous)

### Risk Factors
- Technical error (inadequate closure)
- Wound infection
- Increased intra-abdominal pressure (cough, straining)
- Poor nutrition
- Steroid use
- Emergency surgery

### Types

**Superficial Dehiscence:**
- Skin opens, fascia intact
- Manage with wound care, healing by secondary intention
- No emergency

**Fascial Dehiscence:**
- Fascia disrupted
- May see bowel/omentum at wound (evisceration)
- SURGICAL EMERGENCY

**Evisceration:**
- Abdominal contents protrude through wound
- Cover with saline-moistened sterile gauze
- Urgent return to OR

### Management

**Covered Dehiscence (fascia open, no evisceration):**
- May attempt bedside management in stable patient
- Consider operative exploration
- NPWT to temporize

**Evisceration:**
1. Call for help
2. Do not push contents back in
3. Cover with saline-moistened sterile dressings
4. IV fluids, NPO
5. Antibiotics
6. Emergency return to OR
7. Washout, fascial closure ± mesh ± temporary abdominal closure

### Closure After Dehiscence
- Interrupted far-far-near-near (Smead-Jones) sutures
- Retention sutures with bolsters
- Consider mesh reinforcement', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'key_points', 'Key Points',
'1. **Linea Alba Anatomy**: Fusion of lateral abdominal muscle aponeuroses; avascular and nerveless; widest above umbilicus (1-2 cm)

2. **Arcuate Line**: Below this line (halfway between umbilicus and pubis), all aponeuroses pass anterior to rectus; posterior wall is only transversalis fascia

3. **Midline Advantages**: Rapid entry, excellent exposure, easily extensible, no muscle/nerve division, single-layer closure. Disadvantage: Higher hernia rate (10-20%)

4. **Transverse Incision Advantages**: Follow Langer''s lines (better cosmesis), parallel to nerve distribution, possibly lower hernia rate, less respiratory impairment

5. **Pfannenstiel Technique**: Transverse skin incision, transverse anterior rectus sheath, midline separation of rectus, vertical peritoneal entry. Excellent cosmesis.

6. **STITCH Trial Closure**: Small bites (5mm from edge, 5mm apart), SL:WL ratio ≥4:1, slowly absorbable monofilament, continuous running suture. Reduces incisional hernia.

7. **Suture Selection**: Slowly absorbable monofilament (PDS) or non-absorbable; continuous running mass closure preferred

8. **Incisional Hernia Risk Factors**: Obesity, emergency surgery, wound infection, midline incision, inadequate closure technique

9. **Dehiscence Warning Sign**: Serosanguinous ("salmon-colored") wound drainage around POD 5-8. Evisceration is surgical emergency.

10. **Prophylactic Mesh**: Consider in high-risk patients (obesity, prior hernia, AAA repair); reduces hernia rate with acceptable complication profile', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: Never incise through the umbilicus—it''s a natural weak point and source of contamination. Curve around it or excise it if necessary.

💡 **Pearl 2**: The "pink fluid" or serosanguinous drainage from an abdominal wound around postoperative day 5-8 is a herald sign of fascial dehiscence until proven otherwise.

💡 **Pearl 3**: The small bites technique (5mm x 5mm, 4:1 ratio) is evidence-based and reduces incisional hernia. This is more bites per centimeter than traditional technique.

💡 **Pearl 4**: Below the arcuate line, there is no posterior rectus sheath—only transversalis fascia. Be aware of this when operating in the lower abdomen.

💡 **Pearl 5**: In an emergency where midline laparotomy proves inadequate, you can extend in any direction. The midline is the most versatile emergency incision.

💡 **Pearl 6**: The Pfannenstiel incision divides the anterior rectus sheath transversely but enters the peritoneum vertically through the midline. This hybrid approach provides strength and cosmesis.

💡 **Pearl 7**: Subcostal (Kocher) incisions denervate segments of rectus muscle (T8-T9), leading to atrophy and bulging. This is not a true hernia but can be distressing to patients.

💡 **Pearl 8**: For evisceration: Cover exposed bowel with saline-moistened gauze. Never push it back in at the bedside—return to OR for formal washout and closure.

💡 **Pearl 9**: Prophylactic mesh placement at primary surgery is more effective than repairing an incisional hernia later. Consider mesh in high-risk patients.

💡 **Pearl 10**: When closing, approximate fascia—don''t strangulate it. Tissue necrosis from overtight sutures causes more dehiscence than loose closure.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, order_index) VALUES
('art00008-0000-0000-0000-000000000008', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('art00008-0000-0000-0000-000000000008', 1, 'Deerenberg TC, et al. Small bites versus large bites for closure of abdominal midline incisions (STITCH): a double-blind, multicentre, randomised controlled trial. Lancet. 2015;386(10000):1254-1260.', '10.1016/S0140-6736(15)60459-7', '26188742', NULL),
('art00008-0000-0000-0000-000000000008', 2, 'Muysoms FE, et al. European Hernia Society guidelines on the closure of abdominal wall incisions. Hernia. 2015;19(1):1-24.', '10.1007/s10029-014-1342-5', '25618025', NULL),
('art00008-0000-0000-0000-000000000008', 3, 'Diener MK, et al. Elective midline laparotomy closure: the INLINE systematic review and meta-analysis. Ann Surg. 2010;251(5):843-856.', '10.1097/SLA.0b013e3181d973e4', '20395846', NULL),
('art00008-0000-0000-0000-000000000008', 4, 'Israelsson LA, Millbourn D. Prevention of incisional hernias: how to close a midline incision. Surg Clin North Am. 2013;93(5):1027-1040.', '10.1016/j.suc.2013.06.009', '24035074', NULL),
('art00008-0000-0000-0000-000000000008', 5, 'Jairam AP, et al. Prevention of incisional hernia with prophylactic onlay and sublay mesh reinforcement versus primary suture only in midline laparotomies (PRIMA): 2-year follow-up. Lancet. 2017;390(10094):567-576.', '10.1016/S0140-6736(17)31332-6', '28641875', NULL),
('art00008-0000-0000-0000-000000000008', 6, 'Fischer JP, et al. A systematic review of suture techniques and suture material for abdominal wall closure. Hernia. 2021;25(3):539-559.', '10.1007/s10029-020-02218-9', '32504227', NULL),
('art00008-0000-0000-0000-000000000008', 7, 'Bickenbach KA, et al. Up and down or side to side? A systematic review and meta-analysis examining the impact of incision on outcomes after abdominal surgery. Am J Surg. 2013;206(3):400-409.', '10.1016/j.amjsurg.2012.11.008', '23570739', NULL),
('art00008-0000-0000-0000-000000000008', 8, 'Williams NR, et al. Incisional hernia: risk factors, prevention, and management. World J Gastrointest Surg. 2020;12(1):1-10.', '10.4240/wjgs.v12.i1.1', '31998437', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 1,
'The linea alba is formed by:',
'The fusion of the aponeuroses of the external oblique, internal oblique, and transversus abdominis muscles',
'The rectus abdominis muscle alone',
'Only the external oblique aponeurosis',
'The transversalis fascia',
'The peritoneum',
'A',
'The linea alba is a fibrous structure formed by the fusion of the aponeuroses of the three lateral abdominal muscles: external oblique, internal oblique, and transversus abdominis. It extends from the xiphoid process to the pubic symphysis.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 2,
'Below the arcuate line, the posterior rectus sheath is composed of:',
'All three lateral muscle aponeuroses',
'Only the transversus abdominis aponeurosis',
'Only the transversalis fascia',
'The internal oblique and transversus aponeuroses',
'The peritoneum only',
'C',
'Below the arcuate line (approximately halfway between the umbilicus and pubic symphysis), all three aponeuroses pass anterior to the rectus muscle. The posterior wall of the rectus sheath is formed only by the transversalis fascia at this level.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 3,
'According to the STITCH trial, what is the recommended suture technique for midline laparotomy closure?',
'Large bites (1 cm from edge, 1 cm apart)',
'Small bites (5 mm from edge, 5 mm apart) with SL:WL ratio ≥4:1',
'Interrupted figure-of-eight sutures',
'Two-layer closure with running and interrupted sutures',
'Horizontal mattress sutures',
'B',
'The STITCH trial demonstrated that small bites (5 mm from wound edge, 5 mm apart) with a suture-to-wound length ratio of at least 4:1 significantly reduced incisional hernia rates compared to traditional large bite technique.',
'1');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 4,
'Which abdominal incision provides the best exposure for emergency laparotomy with unknown intra-abdominal pathology?',
'Pfannenstiel incision',
'Right subcostal (Kocher) incision',
'McBurney incision',
'Midline laparotomy',
'Right paramedian incision',
'D',
'The midline laparotomy provides the most versatile access for emergency surgery. It offers rapid entry, excellent exposure to all abdominal quadrants, and can be easily extended superiorly or inferiorly as needed.',
'2,7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 5,
'The Pfannenstiel incision involves:',
'Transverse division of the rectus muscles',
'Transverse incision of anterior rectus sheath with midline separation of rectus muscles',
'Vertical incision through the linea alba',
'Oblique muscle-splitting technique',
'Ligation of the inferior epigastric arteries',
'B',
'The Pfannenstiel incision involves a curved transverse skin incision above the pubis, transverse division of the anterior rectus sheath, separation (not division) of the rectus muscles in the midline, and vertical entry through the peritoneum.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 6,
'A patient develops serosanguinous wound drainage on postoperative day 6 after midline laparotomy. What should be suspected?',
'Normal healing',
'Superficial surgical site infection',
'Fascial dehiscence',
'Seroma formation',
'Allergic reaction to sutures',
'C',
'Serosanguinous ("salmon-colored" or "pink") drainage from an abdominal wound around postoperative days 5-8 is a classic warning sign of impending fascial dehiscence. The wound should be carefully examined and urgent intervention may be needed.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 7,
'Which nerve is at greatest risk during a low transverse (Pfannenstiel) incision?',
'Subcostal nerve (T12)',
'Intercostal nerves (T10-T11)',
'Iliohypogastric nerve (L1)',
'Femoral nerve',
'Obturator nerve',
'C',
'The iliohypogastric nerve (from L1) passes through the abdominal wall in the region of low transverse incisions and provides sensory innervation to the suprapubic area. It is at risk of injury during Pfannenstiel and other low transverse incisions.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 8,
'Which incision is most commonly used for open cholecystectomy?',
'Midline laparotomy',
'Right subcostal (Kocher) incision',
'Pfannenstiel incision',
'McBurney incision',
'Left paramedian incision',
'B',
'The right subcostal (Kocher) incision was the classic approach for open cholecystectomy, providing excellent exposure to the right upper quadrant and biliary structures. It has largely been replaced by laparoscopic surgery.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 9,
'The incidence of incisional hernia after midline laparotomy is approximately:',
'1-2%',
'5-7%',
'10-20%',
'30-40%',
'50%',
'C',
'Incisional hernia occurs in approximately 10-20% of patients after midline laparotomy. Risk is higher in emergency surgery, with wound infection, in obese patients, and with inadequate closure technique.',
'3,4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 10,
'What is the recommended minimum suture-to-wound length ratio for midline abdominal closure?',
'1:1',
'2:1',
'4:1',
'6:1',
'10:1',
'C',
'A minimum suture-to-wound length ratio of 4:1 is recommended for midline abdominal closure. This ensures adequate tissue incorporation without excessive tension and is associated with reduced incisional hernia rates.',
'1,4');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 11,
'The immediate management of abdominal wound evisceration includes:',
'Pushing the bowel back into the abdomen at bedside',
'Covering with saline-moistened sterile gauze and emergency return to OR',
'Application of an abdominal binder',
'Administration of oral antibiotics',
'Observation for 24 hours',
'B',
'Evisceration is a surgical emergency. The exposed bowel should be covered with saline-moistened sterile gauze (never push back in at bedside), IV fluids and antibiotics started, and the patient taken urgently to the operating room for washout and closure.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 12,
'According to the PRIMA trial, prophylactic mesh placement at primary midline laparotomy:',
'Increases surgical site infection rates significantly',
'Reduces incisional hernia rates in high-risk patients',
'Is contraindicated in all patients',
'Shows no benefit compared to suture alone',
'Should only be placed in the onlay position',
'B',
'The PRIMA trial demonstrated that prophylactic mesh reinforcement at the time of primary midline laparotomy reduced incisional hernia rates in high-risk patients from ~30% to ~17%, with an acceptable complication profile.',
'5');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 13,
'A transverse incision follows which anatomic feature?',
'Blood vessels of the abdominal wall',
'Dermatomal nerve distribution',
'Lymphatic channels',
'The direction of the intestines',
'Peritoneal reflections',
'B',
'Transverse incisions follow the dermatomal distribution of segmental nerves (T7-L1), which run in a roughly transverse direction around the abdominal wall. They also follow Langer''s lines (relaxed skin tension lines), resulting in better cosmesis.',
'7');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 14,
'The McBurney point is located:',
'At the umbilicus',
'1/3 of the distance from the ASIS to the umbilicus',
'Midway between the xiphoid and umbilicus',
'2 cm above the pubic symphysis',
'Below the right costal margin',
'B',
'McBurney''s point is located at 1/3 of the distance from the anterior superior iliac spine (ASIS) to the umbilicus on the right side. It marks the surface landmark for the base of the appendix and is the location for the McBurney incision.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 15,
'Which blood vessel is at risk during a right paramedian incision and Maylard incision?',
'Superior mesenteric artery',
'Inferior epigastric artery',
'Femoral artery',
'Internal iliac artery',
'Aorta',
'B',
'The inferior epigastric artery, a branch of the external iliac artery, runs within the rectus sheath and is at risk during paramedian incisions (where it must be retracted or ligated) and Maylard incisions (where it is deliberately ligated during rectus transection).',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 16,
'Mass closure of a midline laparotomy includes suturing:',
'Only the peritoneum',
'Peritoneum and posterior rectus sheath separately',
'All layers including the linea alba as a single layer',
'Skin, subcutaneous tissue, and fascia together',
'Each layer individually (peritoneum, fascia, subcutaneous, skin)',
'C',
'Mass closure involves taking all fascial layers of the abdominal wall (the linea alba, which includes the combined aponeuroses) as a single layer, excluding peritoneum and fat. This is stronger than layered closure and is the standard of care.',
'3');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 17,
'Which suture material is currently recommended for midline laparotomy closure?',
'Rapidly absorbable suture (chromic gut)',
'Braided non-absorbable suture (silk)',
'Slowly absorbable monofilament (PDS) or non-absorbable monofilament',
'Staples',
'Any available suture',
'C',
'Current evidence supports slowly absorbable monofilament sutures (such as PDS or Maxon) or non-absorbable monofilament (such as nylon or polypropylene) for fascial closure. Slowly absorbable may be slightly preferred to reduce chronic suture-related complications.',
'2,6');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 18,
'A Chevron (rooftop) incision is used primarily for:',
'Appendectomy',
'Cesarean section',
'Liver transplantation and major hepatobiliary surgery',
'Inguinal hernia repair',
'Pilonidal cyst excision',
'C',
'The Chevron (rooftop) incision provides excellent exposure of the upper abdomen and is used for liver transplantation, major hepatic resections, esophageal surgery, and other procedures requiring wide bilateral upper abdominal access.',
'2');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 19,
'What percentage of incisional hernias occur within the first year after surgery?',
'Less than 10%',
'About 30%',
'About 50-60%',
'About 75-80%',
'100%',
'C',
'Approximately 50-60% of incisional hernias develop within the first year after surgery, with the majority becoming clinically apparent within 3 years. However, hernias can develop many years later, emphasizing the importance of proper closure technique.',
'8');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('art00008-0000-0000-0000-000000000008', 20,
'Which patient factor most significantly increases the risk of incisional hernia?',
'Female sex',
'Young age',
'Obesity (BMI >30)',
'Left-sided incision',
'Elective surgery',
'C',
'Obesity (BMI >30) is one of the most significant patient-related risk factors for incisional hernia. Other important risk factors include emergency surgery, wound infection, smoking, diabetes, malnutrition, and chronic steroid use.',
'4,8');
