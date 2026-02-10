-- CME Article 6: Sutures and Surgical Instruments
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100006-0000-0000-0000-000000000006',
    'b0000006-0000-0000-0000-000000000006',
    'a0000001-0000-0000-0000-000000000001',
    'Sutures and Surgical Instruments: A Comprehensive Guide',
    'Selection, Handling, and Evidence-Based Application',
    'Mastery of sutures and surgical instruments is fundamental to surgical practice. This CME article provides comprehensive coverage of suture materials, needle types, suturing techniques, and essential surgical instruments. Evidence-based guidance on material selection for different tissues and clinical scenarios is provided, along with practical tips on instrument handling and wound closure optimization.',
    'UNTH Surgery Department, Surgical Education Unit',
    50,
    2.5,
    'medium',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'introduction', 'Introduction',
'The art of surgery relies fundamentally on two elements: the ability to achieve hemostasis and the ability to approximate tissues. Sutures and surgical instruments are the tools that make these objectives possible.

**Historical Perspective:**
- Ancient Egyptians used linen sutures 4,000 years ago
- Catgut sutures introduced by Galen (130-200 AD)
- Lister introduced antiseptic catgut in 1869
- Synthetic absorbable sutures developed in 1970s
- Advances in metallurgy led to modern stainless steel instruments

**Importance of Proper Selection:**
The choice of suture material and needle type directly impacts:
- Tissue holding strength
- Rate of wound healing
- Infection risk
- Cosmetic outcome
- Complication rate

Similarly, familiarity with surgical instruments ensures:
- Efficient operative technique
- Minimal tissue trauma
- Optimal surgical outcomes

This article will provide the knowledge base required for appropriate selection and use of sutures and instruments in clinical practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Classify suture materials by origin, absorbability, and structure

2. Compare tensile strength profiles and tissue reactivity of common suture materials

3. Select appropriate suture materials for different tissue types and clinical scenarios

4. Describe needle anatomy and match needle type to clinical application

5. Apply proper suturing techniques including simple interrupted, continuous, mattress, and subcuticular closures

6. Identify and correctly use common surgical instruments for cutting, grasping, clamping, and retracting

7. Demonstrate knowledge of proper instrument handling and passing techniques

8. Apply principles of knot tying including square knots and surgeon''s knots

9. Calculate appropriate suture size based on tissue and wound characteristics

10. Recognize complications related to sutures and implement prevention strategies', 2);

-- Section 3: Suture Classification
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'content', 'Suture Classification',
'## Classification Systems

### By Origin

**Natural Sutures:**
- **Surgical gut (catgut)**: Derived from sheep or bovine intestinal submucosa
  - Plain gut: Absorbed in 10-14 days
  - Chromic gut: Chromium treatment extends absorption to 21-28 days
  - High tissue reactivity
  - Rarely used in modern practice

- **Silk**: Braided protein from silkworm cocoons
  - Excellent handling characteristics
  - High tissue reactivity
  - Loses tensile strength over time
  - Effectively permanent in tissue

- **Cotton**: Rarely used today
  - High tissue reactivity
  - Loses strength when wet

**Synthetic Sutures:**
- Most modern suture materials are synthetic
- Lower tissue reactivity than natural materials
- More predictable strength retention and absorption profiles
- Examples: Polyglycolic acid, Polydioxanone, Nylon, Polypropylene

### By Absorbability

**Absorbable Sutures:**
Break down in tissue over time through:
- **Hydrolysis**: Synthetic absorbables (more predictable)
- **Proteolytic enzymes**: Natural absorbables (variable, affected by infection)

| Suture | Tensile Strength | Complete Absorption |
|--------|-----------------|---------------------|
| Plain Gut | 10 days | 70 days |
| Chromic Gut | 21 days | 90 days |
| Polyglycolic Acid (Dexon) | 21 days | 60-90 days |
| Polyglactin 910 (Vicryl) | 21 days | 56-70 days |
| Poliglecaprone 25 (Monocryl) | 7-14 days | 90-120 days |
| Polydioxanone (PDS) | 42-56 days | 180-210 days |

**Non-Absorbable Sutures:**
Remain in tissue indefinitely or are removed

| Suture | Structure | Characteristics |
|--------|-----------|-----------------|
| Silk | Braided | Excellent handling, high reactivity |
| Nylon (Ethilon) | Monofilament | Low reactivity, memory |
| Polypropylene (Prolene) | Monofilament | Inert, permanent strength |
| Polyester (Ethibond) | Braided, coated | Strong, minimal stretch |
| Steel | Mono/multifilament | Maximum strength, difficult handling |

### By Structure

**Monofilament:**
- Single strand
- Less tissue drag
- Lower infection risk (no interstices)
- More memory (tendency to return to original shape)
- Requires more throws in knots
- Examples: Nylon, Polypropylene, PDS, Monocryl

**Multifilament/Braided:**
- Multiple strands woven together
- Better handling and knot security
- Higher capillarity (wicks bacteria)
- Higher infection risk in contaminated wounds
- Examples: Silk, Vicryl, Braided nylon (Nurolon)

### By Size

**USP Sizing System:**
- Ranges from 10-0 (smallest) to #7 (largest)
- Most common surgical range: 6-0 to 2-0
- The more "0"s, the finer the suture

| Size | Diameter (mm) | Common Use |
|------|---------------|------------|
| 6-0 | 0.07 | Facial skin, vessels |
| 5-0 | 0.10 | Face, hand, vessels |
| 4-0 | 0.15 | Skin closure, vessels |
| 3-0 | 0.20 | Skin, fascia, bowel |
| 2-0 | 0.30 | Fascia, bowel |
| 0 | 0.35 | Fascia, retention |
| 1 | 0.40 | Deep tissue, retention |
| 2 | 0.50 | Retention sutures |', 3);

-- Section 4: Suture Selection
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'content', 'Suture Selection by Tissue Type',
'## Principles of Selection

**Match suture characteristics to tissue needs:**
- Healing time of tissue
- Strength requirements
- Tissue reactivity tolerance
- Cosmetic requirements
- Infection risk

## Tissue-Specific Recommendations

### Skin
**Superficial closure:**
- Non-absorbable monofilament (Nylon, Polypropylene) 4-0 to 6-0
- Remove before epithelialization of suture tracks (5-7 days face, 10-14 days elsewhere)

**Deep dermal (subcuticular):**
- Absorbable (Vicryl, Monocryl) 3-0 to 5-0
- Supports wound during critical healing period
- Reduces tension on skin closure

**Subcuticular running:**
- Absorbable (Monocryl) 4-0 or 5-0, OR
- Non-absorbable (Prolene) 4-0 or 5-0 (removed later)
- Best cosmetic outcome

### Fascia
- Strong absorbable (PDS, Vicryl) 0 or 2-0
- Long-lasting tensile strength critical
- Fascia heals slowly
- Running or interrupted technique
- Mass closure for abdominal wall

### Muscle
- Generally not sutured (poor holding)
- If needed: Absorbable 2-0 or 3-0
- Minimal sutures to approximate

### Bowel
**GI tract anastomoses:**
- Absorbable (Vicryl, PDS) 3-0 or 4-0
- Single layer usually preferred
- Interrupted or running
- Must invert or evert appropriately by segment

**Stomach:** 3-0 absorbable
**Small bowel:** 3-0 or 4-0 absorbable
**Colon:** 3-0 absorbable (higher tension)

### Blood Vessels
**Large vessels:**
- Polypropylene (Prolene) 3-0 to 6-0
- Non-absorbable, monofilament
- Permanent strength, minimal thrombogenicity
- Running continuous closure

**Small vessels:**
- Prolene 6-0 to 9-0
- Under magnification

### Tendon
- Non-absorbable (Braided polyester, Nylon) 2-0 to 4-0
- Core suture techniques (Kessler, Bunnell)
- May add epitendinous running suture

### Nerve
- Nylon (Ethilon) 8-0 to 10-0
- Microsurgical technique
- Epineural repair

### Cardiovascular
**Cardiac tissue:**
- Pledgeted 2-0 braided polyester (Ethibond)
- Polypropylene for valve sutures

**Vascular grafts:**
- Polypropylene 3-0 to 6-0

### Special Situations

**Contaminated wounds:**
- Monofilament preferred (less bacterial harboring)
- Avoid braided sutures
- Delayed primary closure may be safer

**Immunocompromised patients:**
- Monofilament preferred
- Consider longer-lasting absorbables

**Pediatric patients:**
- Absorbable skin sutures to avoid removal trauma
- Monocryl, Vicryl Rapide', 4);

-- Section 5: Surgical Needles
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'content', 'Surgical Needles',
'## Needle Anatomy

A surgical needle has three parts:

### 1. Eye (Swage)
- **Eyed needles**: Thread is passed through eye; rarely used today
- **Swaged needles**: Suture attached at factory
  - Single armed: Suture attached at one end
  - Double armed: Needle at both ends
  - Control release (pop-off): Needle detaches with tug

### 2. Body (Shaft)
**Shape:**
- **Straight**: Used without needle holder (hand sutured); skin, GI
- **Curved**: Most common; 1/4, 3/8, 1/2, 5/8 circle
  - 1/4 circle: Microsurgery, eye surgery
  - 3/8 circle: Most common; skin, fascia, bowel
  - 1/2 circle: Deep body cavities, pelvis
  - 5/8 circle: Nasal, oral cavities, pelvis
  - J-shape: Laparoscopic

### 3. Point

**Cutting Needles:**
- Triangular cross-section with cutting edges
- For tough tissue: skin, fascia, tendon
- **Conventional cutting**: Cutting edge on inner (concave) curvature - higher risk of cutting out through wound edge
- **Reverse cutting**: Cutting edge on outer (convex) curvature - preferred for skin, less likely to cut through

**Taper (Round) Needles:**
- Conical point, round body
- Separates tissue rather than cutting
- For soft, easily penetrated tissue: bowel, peritoneum, muscle, fascia, vessels
- Less traumatic, smaller hole

**Blunt Needles:**
- Rounded tip
- For friable tissue (liver, kidney)
- Reduced needlestick injury risk
- Used in some fascial closures (blunt tapercut)

**Tapercut (Trocar) Needles:**
- Cutting tip with taper body
- Penetrates tough tissue, then minimizes trauma
- Fascia, some vessel work

## Needle Selection by Tissue

| Tissue | Needle Type | Typical Size |
|--------|-------------|--------------|
| Skin | Reverse cutting | Small |
| Fascia | Reverse cutting, tapercut | Medium |
| Bowel | Taper | Medium-small |
| Peritoneum | Taper | Medium |
| Vessels | Taper | Small-medium |
| Liver, kidney | Blunt | Medium |
| Tendon | Reverse cutting | Medium |

## Needle Holder Matching
- Needle holder should match needle size
- Grasp needle at 1/3 to 1/2 from swaged end
- Never grasp at point or swage', 5);

-- Section 6: Suturing Techniques
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'content', 'Suturing Techniques',
'## Fundamentals

### Principles of Wound Closure
1. Approximate, don''t strangulate
2. Close in layers when appropriate
3. Evert skin edges (heal flat, not depressed)
4. Equal bites, equal depth on both sides
5. Appropriate tension - snug, not tight
6. Eliminate dead space

### Basic Techniques

## 1. Simple Interrupted Sutures
**Most versatile technique**
- Individual sutures, each tied separately
- Each suture independent (one failure doesn''t affect others)
- Needle enters perpendicular to skin surface
- Travel through tissue in arc matching needle curvature
- Exit equidistant from wound edge
- Depth slightly greater than width from edge

**Advantages:**
- Precise approximation
- Individual tension control
- If one suture fails, others hold

**Disadvantages:**
- Time-consuming
- More knots (potential foreign body reaction)

## 2. Simple Continuous (Running) Sutures
- Single strand runs length of wound
- Faster than interrupted
- Even tension distribution
- Watertight closure (vessels, bowel)
- If suture breaks, entire closure may fail

**Locking variation:**
- Each pass locks through previous loop
- Additional hemostasis
- More tissue strangulation risk

## 3. Mattress Sutures

**Vertical Mattress:**
- Enter far from edge, deep
- Cross wound deep
- Exit far from edge, deep
- Re-enter near edge, superficial
- Cross wound superficial
- Exit near edge, superficial, same side as start
- Excellent eversion
- Good for thick skin, high tension

**Horizontal Mattress:**
- Enter one side, cross wound
- Exit far side, travel parallel to wound edge
- Re-enter far side, cross wound
- Exit near start
- Distributes tension
- Good for fascia, tension

**Far-near-near-far:**
- First bite far from edge
- Second bite near edge (opposite side)
- Third bite near edge (same side)
- Fourth bite far from edge (original side)
- Combines eversion and hemostasis

## 4. Subcuticular (Intradermal) Sutures
- Suture runs horizontally within dermis
- Enters dermis from wound edge or through small stab
- Takes horizontal bites of dermis alternating sides
- No suture marks on skin surface
- Best cosmetic result
- Can use absorbable (Monocryl) or non-absorbable (Prolene-with removal)

## 5. Figure-of-Eight
- Creates X pattern
- Good for hemostasis
- Fascia, bleeding vessels

## 6. Purse-String
- Circular running suture
- Tightens like drawstring
- Appendix stump, ostomy take-down

## 7. Retention Sutures
- Large through-and-through sutures
- Full thickness abdominal wall
- Prevent evisceration in high-risk patients
- Use bolsters or bridges to prevent skin necrosis', 6);

-- Section 7: Surgical Instruments
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'content', 'Essential Surgical Instruments',
'## Categories of Instruments

### 1. Cutting Instruments

**Scalpels:**
- #10 blade: General purpose, large curves
- #11 blade: Pointed, stab incisions, abscesses
- #15 blade: Precise, small curves, skin
- #20 blade: Large #10 variant
- #22 blade: Large #15 variant

**Scissors:**
- **Mayo scissors**: Heavy, blunt tips
  - Straight: Cutting sutures
  - Curved: Cutting heavy tissue, fascia
- **Metzenbaum scissors**: Delicate, curved
  - Dissecting, spreading, cutting soft tissue
- **Iris scissors**: Very fine, ophthalmology
- **Bandage/Lister scissors**: Angled, cutting dressings

### 2. Grasping/Holding Instruments

**Forceps (Pickups):**
- **Toothed (Rat-tooth)**: Grip tissue firmly
  - Adson: Fine teeth, skin closure
  - Bonney: Heavy, 1x2 teeth, fascia
  - Ferris-Smith: Multiple teeth
- **Non-toothed (Smooth)**: Gentle, no puncture
  - Plain: Smooth tips
  - DeBakey: Atraumatic vascular
  - Russian: Rounded grip
- **Specialized**:
  - Bayonet: Nasal, neurosurgery
  - Gerald: Microsurgery

**Tissue Holding:**
- **Allis clamp**: Traumatic teeth, good grip
- **Babcock clamp**: Atraumatic, delicate tissue
- **Kocher (Ochsner)**: Heavy teeth, fascia, drains

### 3. Clamping Instruments

**Hemostats:**
- **Mosquito (Halsted)**: Small, fine, delicate vessels
- **Kelly**: Medium, curved or straight
- **Crile**: Similar to Kelly
- **Rochester-Pean**: Large, heavy

**Vascular Clamps:**
- **Bulldog**: Small, temporary occlusion
- **Satinsky**: Partial occlusion, side-biting
- **DeBakey**: Various sizes, atraumatic jaws

**Non-Crushing Clamps:**
- **Doyen**: Bowel clamp
- **Dennis/Stone**: Bowel, atraumatic

### 4. Needle Holders

- **Mayo-Hegar**: General purpose, heavy
- **Olsen-Hegar**: Combined with scissors (diamond insert for cutting)
- **Castroviejo**: Microsurgery, spring-loaded
- **Webster**: Delicate, fine work
- **Ryder**: Medium, vascular

### 5. Retracting Instruments

**Handheld:**
- **Army-Navy (USA)**: Small double-ended
- **Richardson**: Curved, abdominal
- **Deaver**: Deep abdominal
- **Ribbon/Malleable**: Conformable metal strip

**Self-Retaining:**
- **Weitlaner**: Spring, superficial
- **Gelpi**: Spring, muscle
- **Balfour**: Abdominal, with bladder blade
- **Bookwalter**: Ring-based system, major abdominal

**Specialized:**
- **Senn**: Double-ended, rake and flat
- **Rake**: Multiple prong
- **Skin hooks**: Single/double prong

### 6. Suction

- **Yankauer**: Oral, large tip
- **Poole**: Abdominal, shielded
- **Frazier**: Neurosurgery, fine
- **Gomco**: Pediatric', 7);

-- Section 8: Knot Tying
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'content', 'Knot Tying Principles',
'## Principles of Surgical Knots

### Purpose of Knots
- Secure suture after tissue approximation
- Maintain tension during healing
- Should not slip or unravel

### Fundamentals

**Square Knot:**
- Throws in alternating directions (over-under-over or under-over-under)
- Lies flat
- Minimum 3 throws for most sutures
- Additional throws for slippery sutures (monofilament, coated)

**Granny Knot (Slip Knot):**
- Throws in same direction
- Tends to slip - AVOID
- Common error in beginners

**Surgeon''s Knot:**
- Double throw on first pass (creates friction)
- Subsequent single alternating throws
- Maintains tension while second throw placed
- Useful for wound under tension

### Number of Throws

| Suture Type | Minimum Throws |
|-------------|----------------|
| Braided absorbable (Vicryl) | 3-4 |
| Monofilament absorbable (PDS) | 4-5 |
| Silk | 3 |
| Monofilament nylon | 4-5 |
| Polypropylene (Prolene) | 5-6 |
| Steel | 3 |

**More slippery = more throws**

### Knot Tying Techniques

**Instrument (Square) Tie:**
- Most common surgical technique
- Needle holder or hemostat used
- Right hand controls suture, left hand controls instrument
- Consistent, controlled

**Hand Tie (Two-Hand):**
- Index fingers form loops
- Faster for external sutures
- Good for deep cavities where instruments limited

**One-Hand Tie:**
- Performed with one hand
- Useful in certain positions
- Requires practice

### Common Errors

1. **Crossing hands**: Creates granny knot
2. **Unequal tension**: Loose knot or tissue strangulation
3. **Sawing**: Weakens suture
4. **Inadequate throws**: Knot slippage
5. **Excessive tightness**: Tissue necrosis
6. **Air knots**: Not laying throws flat', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'key_points', 'Key Points',
'1. **Suture Classification**: Natural vs. synthetic; absorbable vs. non-absorbable; monofilament vs. braided; sized 10-0 (finest) to #7 (largest)

2. **Absorbable Sutures**: Plain gut (10 days), Chromic gut (21 days), Vicryl (21 days), Monocryl (7-14 days), PDS (42-56 days) - represents tensile strength retention

3. **Monofilament vs. Braided**: Monofilament = less infection risk, more memory, less knot security; Braided = better handling, higher capillarity, more knots

4. **Tissue-Specific Selection**: Skin = non-absorbable monofilament or absorbable subcuticular; Fascia = strong absorbable (PDS); Bowel = absorbable taper; Vessels = Prolene

5. **Needle Points**: Cutting (skin, tough tissue); Reverse cutting (skin, preferred); Taper (bowel, vessels, peritoneum); Blunt (liver, friable tissue)

6. **Needle Curvature**: 3/8 circle most common; 1/2 circle for deep cavities; straight for hand suturing

7. **Suturing Techniques**: Simple interrupted (versatile, precise); Continuous (fast, watertight); Vertical mattress (eversion); Subcuticular (cosmetic)

8. **Instrument Categories**: Cutting (scalpel, scissors), Grasping (forceps, Allis), Clamping (hemostats), Retraction (Richardson, Balfour)

9. **Knot Security**: Square knot (alternating throws), not granny knot; Monofilament needs more throws (5-6 for Prolene)

10. **Closure Principles**: Approximate don''t strangulate; close in layers; evert skin edges; equal bites both sides', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: "Reverse cutting" needles have the cutting edge on the outer curve, reducing the risk of the suture cutting through the wound edge—preferred for skin closure.

💡 **Pearl 2**: Use the smallest suture that will hold the tissue adequately. Excess suture material increases foreign body reaction and infection risk.

💡 **Pearl 3**: The rule of threes for fascial closure: Bites 1 cm from the edge, 1 cm apart, with 4:1 suture length to wound length ratio.

💡 **Pearl 4**: Monofilament sutures require more throws than braided to achieve knot security because of their slippery surface and memory.

💡 **Pearl 5**: Mayo scissors are for heavy tissue (fascia) and cutting sutures. Metzenbaum scissors are for dissecting and cutting delicate tissue. Never reverse their roles.

💡 **Pearl 6**: When selecting between similar absorbable sutures, consider that synthetic sutures (Vicryl, PDS) have more predictable absorption profiles than gut, especially in infected or contaminated wounds.

💡 **Pearl 7**: A properly placed Babcock clamp is atraumatic; an Allis clamp always leaves marks. Know which tissues can tolerate which.

💡 **Pearl 8**: For skin closure, enter and exit perpendicular to the skin surface and travel through tissue in an arc matching the needle''s curvature—this ensures proper eversion.

💡 **Pearl 9**: Keep 3-4 mm tail on skin sutures for easy identification and removal. Cut deep sutures short (3 mm) to minimize foreign body.

💡 **Pearl 10**: Never use silk in vascular surgery—it is thrombogenic and causes inflammatory reaction. Polypropylene is the standard.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100006-0000-0000-0000-000000000006', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100006-0000-0000-0000-000000000006', 1, 'Hochberg J, Meyer KM, Marion MD. Suture choice and other methods of skin closure. Surg Clin North Am. 2009;89(3):627-641.', '10.1016/j.suc.2009.03.001', '19465201', NULL),
('a1100006-0000-0000-0000-000000000006', 2, 'Moy RL, Waldman B, Hein DW. A review of sutures and suturing techniques. J Dermatol Surg Oncol. 1992;18(9):785-795.', '10.1111/j.1524-4725.1992.tb03046.x', '1512311', NULL),
('a1100006-0000-0000-0000-000000000006', 3, 'Van Winkle W Jr, Hastings JC. Considerations in the choice of suture material for various tissues. Surg Gynecol Obstet. 1972;135(1):113-126.', NULL, '4557019', NULL),
('a1100006-0000-0000-0000-000000000006', 4, 'Israelsson LA, Millbourn D. Closing midline abdominal incisions. Langenbecks Arch Surg. 2012;397(8):1201-1207.', '10.1007/s00423-012-1019-4', '23143146', NULL),
('a1100006-0000-0000-0000-000000000006', 5, 'Trimbos JB, et al. A randomised clinical trial comparing two different knot techniques in midline laparotomy closure. Br J Surg. 2013;100(13):1721-1727.', '10.1002/bjs.9306', '24227362', NULL),
('a1100006-0000-0000-0000-000000000006', 6, 'Dennis C, et al. Suture materials: conventional and advanced technologies. J Biomater Appl. 2016;31(1):21-44.', '10.1177/0885328216655659', '27334139', NULL),
('a1100006-0000-0000-0000-000000000006', 7, 'Ethicon Wound Closure Manual. Ethicon, Inc., 2004.', NULL, NULL, NULL),
('a1100006-0000-0000-0000-000000000006', 8, 'Parell GJ, Becker GD. Comparison of absorbable with nonabsorbable sutures in closure of facial skin wounds. Arch Facial Plast Surg. 2003;5(6):488-490.', '10.1001/archfaci.5.6.488', '14623685', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 1,
'Which suture material has the longest tensile strength retention?',
'Plain gut',
'Chromic gut',
'Polyglactin 910 (Vicryl)',
'Polydioxanone (PDS)',
'Poliglecaprone (Monocryl)',
'D',
'Polydioxanone (PDS) maintains tensile strength for 42-56 days, the longest of common absorbable sutures. Monocryl loses strength by 7-14 days, Vicryl and Chromic gut by 21 days, and Plain gut by 10 days. PDS is ideal for slowly healing tissues like fascia.', '{1,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 2,
'For a contaminated abdominal wound that requires delayed primary closure, which suture structure is preferred and why?',
'Braided suture because it has better knot security',
'Monofilament suture because it has lower capillarity and bacterial harboring',
'Natural suture because it is more biocompatible',
'Any suture with coating',
'Silk because of its handling properties',
'B',
'Monofilament sutures are preferred in contaminated wounds because they lack the interstices present in braided sutures where bacteria can harbor and multiply (wicking/capillarity). Braided sutures increase infection risk in contaminated wounds.', '{1,6}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 3,
'Which needle type is most appropriate for bowel anastomosis?',
'Cutting needle',
'Reverse cutting needle',
'Taper (round body) needle',
'Blunt needle',
'Spatula needle',
'C',
'Taper needles with a round body and conical point are used for bowel anastomosis. They separate (rather than cut) the tissue fibers, creating a smaller hole that seals around the suture. This minimizes leakage at anastomotic sites. Cutting needles would create larger holes.', '{2,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 4,
'A reverse cutting needle differs from a conventional cutting needle in that:',
'It has a round body instead of triangular',
'The cutting edge is on the outer (convex) curve',
'It is used only for cardiovascular surgery',
'It cannot penetrate skin',
'It is always straight',
'B',
'A reverse cutting needle has the cutting edge on the outer (convex) curve rather than the inner (concave) curve. This reduces the risk of the suture cutting through the wound edge, as the flat surface faces the wound edge. It is the preferred cutting needle for skin closure.', '{2,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 5,
'What is the recommended suture for vascular anastomosis?',
'Chromic gut',
'Vicryl',
'Polypropylene (Prolene)',
'Silk',
'Nylon',
'C',
'Polypropylene (Prolene) is the standard suture for vascular anastomosis. It is monofilament (reduces thrombogenicity), non-absorbable (maintains permanent strength), and relatively inert. Silk is contraindicated in vascular surgery due to its thrombogenic and inflammatory properties.', '{1,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 6,
'Which suturing technique provides the best skin edge eversion?',
'Simple continuous',
'Simple interrupted',
'Vertical mattress',
'Running subcuticular',
'Horizontal mattress',
'C',
'Vertical mattress sutures provide excellent skin edge eversion by taking a deep far bite followed by a superficial near bite. The configuration lifts and everts the wound edges. This is particularly useful in thick skin or when tension threatens to invert edges.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 7,
'How many throws are typically required for knot security with Polypropylene (Prolene) suture?',
'2-3 throws',
'3-4 throws',
'5-6 throws',
'8-10 throws',
'Only 1 throw with surgeon''s knot',
'C',
'Polypropylene is a smooth, slippery monofilament with significant memory, requiring 5-6 throws to achieve adequate knot security. The slippery surface reduces friction, making knots prone to slippage with fewer throws. Braided sutures like Vicryl require only 3-4 throws.', '{5,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 8,
'Which instrument is most appropriate for grasping bowel during anastomosis?',
'Allis clamp',
'Kocher clamp',
'Babcock clamp',
'Kelly clamp',
'Towel clip',
'C',
'Babcock clamps are atraumatic with smooth, rounded jaws that grasp tissue without crushing or puncturing. They are ideal for delicate structures like bowel, fallopian tubes, and ureters. Allis clamps have teeth and are traumatic; Kocher clamps are heavy with teeth for fascia.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 9,
'Metzenbaum scissors are best suited for:',
'Cutting fascia',
'Cutting sutures',
'Dissecting and cutting delicate soft tissue',
'Cutting skin',
'Cutting bone',
'C',
'Metzenbaum scissors are delicate curved scissors designed for dissecting and cutting soft tissue. They have thin blades optimized for precision dissection. Mayo scissors are heavier and used for cutting fascia and sutures. Using Metzenbaum for heavy tissue damages the instrument.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 10,
'A granny knot (slip knot) is formed when:',
'Throws are placed in alternating directions',
'The first throw is doubled',
'Throws are placed in the same direction',
'Too many throws are used',
'Monofilament suture is used',
'C',
'A granny knot forms when consecutive throws are placed in the same direction (both over-over or both under-under) rather than alternating. This creates an unstable knot that tends to slip or unravel. A square knot, with alternating throws, lies flat and is secure.', '{5,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 11,
'Which scalpel blade is best for making a stab incision for drain placement?',
'#10 blade',
'#11 blade',
'#15 blade',
'#20 blade',
'#22 blade',
'B',
'The #11 blade has a pointed triangular shape, making it ideal for stab incisions such as drain placement, incising abscesses, and creating port sites. The #10 blade is curved for general incisions, and the #15 blade is a smaller curved blade for precise incisions.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 12,
'What is the recommended suture-to-wound length ratio for abdominal fascia closure?',
'1:1',
'2:1',
'4:1',
'6:1',
'10:1',
'C',
'A 4:1 suture length to wound length ratio is recommended for abdominal fascial closure to ensure adequate tissue incorporation. This can be achieved with bites 1 cm from the edge placed 1 cm apart. This ratio correlates with reduced incisional hernia rates.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 13,
'For deep abdominal retraction, which retractor would be most appropriate?',
'Army-Navy retractor',
'Weitlaner retractor',
'Deaver retractor',
'Senn retractor',
'Skin hooks',
'C',
'Deaver retractors are large, curved handheld retractors designed for deep abdominal exposure. Army-Navy retractors are small and used for superficial work. Weitlaner is self-retaining for superficial tissue. Senn retractors are small double-ended retractors for superficial use.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 14,
'Which needle curve is most commonly used for general surgical applications?',
'1/4 circle',
'3/8 circle',
'1/2 circle',
'5/8 circle',
'Straight',
'B',
'The 3/8 circle needle is the most commonly used curvature for general surgical applications including skin, fascia, and bowel. It allows for adequate tissue bite with a natural wrist rotation. The 1/2 circle is preferred for deep body cavities.', '{2,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 15,
'What is the advantage of a surgeon''s knot (double first throw)?',
'It creates a more secure final knot',
'It maintains tension while the second throw is placed',
'It requires fewer total throws',
'It is less traumatic to tissue',
'It uses less suture material',
'B',
'The surgeon''s knot uses a double throw on the first pass, creating more friction than a single throw. This helps maintain tension on the tissue approximation while the second throw is placed, particularly useful when closing wounds under tension.', '{5,7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 16,
'Which forceps type should be used when closing skin to minimize tissue trauma?',
'Russian forceps',
'Bonney (1x2 teeth) forceps',
'Adson (fine teeth) forceps',
'DeBakey forceps',
'Plain (smooth) forceps',
'C',
'Adson forceps have fine teeth (typically 1x2) that provide secure grip on skin edges with minimal trauma. They are the standard for skin closure. Bonney forceps are heavier with larger teeth for fascia. DeBakey forceps are atraumatic but smooth and may not grip skin adequately.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 17,
'For optimal cosmetic outcome in facial skin closure, which suture material and technique is preferred?',
'2-0 Silk, simple interrupted',
'5-0 or 6-0 Nylon, simple interrupted, early removal',
'3-0 Vicryl, continuous',
'3-0 Prolene, mattress sutures',
'2-0 Chromic gut, buried',
'B',
'Fine (5-0 or 6-0) nylon sutures with simple interrupted technique and early removal (5-7 days for face) produces optimal cosmetic results. The fine suture minimizes scarring, monofilament structure reduces suture track marks, and early removal prevents permanent marks.', '{1,8}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 18,
'What is the appropriate action if there is any question about suture sterility during a procedure?',
'Use it if the package appears intact',
'Discard and use a new suture',
'Soak in antiseptic solution and use',
'Ask the circulator to verify',
'Use it only for deep sutures, not skin',
'B',
'If there is any question about the sterility of a suture or any surgical supply, it should be discarded and replaced with new sterile material. There is no reliable way to re-sterilize sutures, and using potentially contaminated material increases infection risk.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 19,
'A purse-string suture is commonly used for:',
'Skin closure',
'Fascial closure',
'Appendix stump closure',
'Nerve repair',
'Tendon repair',
'C',
'A purse-string suture creates a circular running stitch that, when tightened, closes like a drawstring. Common uses include appendix stump closure, securing ostomy appliances, and inverting structures. It is not used for linear closures like skin or fascia.', '{7}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100006-0000-0000-0000-000000000006', 20,
'Which suture material maintains its strength essentially permanently and is effectively non-absorbable despite being classified as natural?',
'Plain gut',
'Chromic gut',
'Silk',
'Cotton',
'Catgut',
'C',
'Silk, despite being natural, is effectively permanent in tissue. While it gradually loses tensile strength over years and technically can be encapsulated or degrade very slowly, it is classified and used as a non-absorbable suture for practical purposes.', '{1,3}');
