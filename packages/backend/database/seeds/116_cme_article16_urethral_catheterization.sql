-- CME Article 16: Urethral Catheterization
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100016-0000-0000-0000-000000000016',
    'b0000016-0000-0000-0000-000000000016',
    'a0000001-0000-0000-0000-000000000001',
    'Urethral Catheterization in Surgical Practice',
    'Techniques, Indications, and Prevention of Catheter-Associated Complications',
    'Urethral catheterization is one of the most commonly performed invasive procedures in healthcare. While often considered routine, improper technique can lead to significant morbidity including urethral trauma, catheter-associated urinary tract infections (CAUTI), and patient discomfort. This CME article provides comprehensive coverage of urethral catheterization including indications, contraindications, equipment selection, insertion techniques for male and female patients, troubleshooting difficulties, and evidence-based strategies for CAUTI prevention. Mastery of this essential skill improves patient outcomes and reduces healthcare-associated complications.',
    'UNTH Urology Department, Infection Control Unit',
    45,
    2.5,
    'easy',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'introduction', 'Introduction',
'Urethral catheterization involves the insertion of a catheter through the urethra into the bladder for drainage of urine. This fundamental procedure is performed millions of times annually worldwide and is essential in surgical, critical care, and acute medical settings.

**Historical Perspective:**
The history of catheterization dates back to ancient times, with early catheters made from reeds and metal tubes. The modern Foley catheter, invented by Frederick Foley in 1929, revolutionized urinary drainage with its retention balloon mechanism.

**Scope of Practice:**
Urethral catheterization is performed by:
- Nurses (most common for routine catheterization)
- Physicians (particularly for difficult catheterizations)
- Trained healthcare assistants (in some settings)

**Clinical Importance:**
While catheterization provides essential urinary drainage, it carries significant risks:
- Catheter-associated UTI (most common HAI)
- Urethral trauma and stricture
- Patient discomfort and embarrassment
- Prolonged hospital stay

**Prevention of Complications:**
Evidence-based catheter care bundles have been shown to reduce CAUTI rates by 50% or more. Key elements include:
- Appropriate indications
- Aseptic insertion technique
- Proper catheter selection
- Daily assessment of need
- Prompt removal when no longer indicated

This article provides the knowledge foundation for safe, effective urethral catheterization.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. List appropriate indications for urethral catheterization in surgical and non-surgical patients

2. Identify absolute and relative contraindications to urethral catheterization

3. Select appropriate catheter type and size based on clinical indication

4. Describe the proper aseptic technique for urethral catheterization in male and female patients

5. Recognize and manage complications of catheterization including difficult insertion

6. Implement evidence-based strategies to prevent catheter-associated urinary tract infections (CAUTI)

7. Describe the technique for suprapubic catheterization and its indications

8. Explain proper catheter care and maintenance protocols

9. Apply criteria for appropriate catheter removal and trial without catheter

10. Document catheterization procedures completely and accurately', 2);

-- Section 3: Indications and Contraindications
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'content', 'Indications and Contraindications',
'## Indications for Urethral Catheterization

### Absolute Indications
1. **Acute urinary retention** - inability to void with palpable/distended bladder
2. **Obstructive uropathy** - relief of obstruction causing hydronephrosis
3. **Neurogenic bladder** with urinary retention
4. **Critically ill patients** requiring accurate urine output monitoring
5. **Perioperative care** for certain surgeries (urologic, gynecologic, prolonged procedures)
6. **Bladder irrigation** for gross hematuria or post-TURP care

### Relative Indications
1. **Major surgery** with expected prolonged operative time (>3 hours)
2. **Fluid resuscitation** when accurate output monitoring needed
3. **Immobilized patients** with incontinence causing skin breakdown
4. **End-of-life care** for comfort
5. **Selected incontinence management** when other methods failed

### Inappropriate Indications (Avoid)
- Convenience of healthcare staff
- Routine postoperative care when not clinically indicated
- Nursing home placement
- Extended travel (e.g., ambulance transport)
- Substitute for toileting assistance

## Contraindications

### Absolute Contraindications
1. **Urethral trauma** - blood at meatus, perineal hematoma, high-riding prostate
2. **Known urethral disruption**
3. **Recent urethral surgery** (without surgeon approval)

### Relative Contraindications
1. **Urethral stricture** - may require smaller catheter or urological input
2. **Acute prostatitis** - increased risk of bacteremia
3. **Active urethral infection**
4. **Known difficult catheterization** - anticipate need for expertise/equipment

## Special Considerations

### Trauma Patients
In trauma, suspect urethral injury if:
- Blood at urethral meatus
- Perineal or scrotal hematoma
- High-riding or non-palpable prostate on rectal exam
- Pelvic fracture (especially pubic rami)

**Management:**
- Do NOT attempt urethral catheterization
- Urgent urological consultation
- Retrograde urethrogram before catheterization
- Suprapubic catheter may be needed

### Patients with Difficult Catheterization History
- Review previous documentation
- Consider coudé-tip catheter
- Have larger and smaller sizes available
- Early urological consultation for repeated failure', 3);

-- Section 4: Catheter Types and Selection
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'content', 'Catheter Types and Selection',
'## Catheter Types

### By Duration of Use

**Intermittent (In-and-Out) Catheters:**
- Single use, removed after bladder emptied
- No balloon
- Used for: residual volume measurement, specimen collection, intermittent self-catheterization
- Example: Nelaton catheter

**Indwelling (Foley) Catheters:**
- Retained in bladder via inflated balloon
- For continuous drainage
- 10-mL balloon (standard) or 30-mL balloon (for traction/hemostasis)
- Duration: Days to weeks

**Suprapubic Catheters:**
- Inserted through abdominal wall into bladder
- Used when urethral access not possible/appropriate
- Long-term option in some patients

### By Material

| Material | Duration | Features | Use |
|----------|----------|----------|-----|
| Latex | Short-term (<14 days) | Economical, flexible | Perioperative |
| Silicone | Long-term | Biocompatible, larger lumen | >14 days use |
| PTFE-coated | Medium-term | Reduces friction | 2-4 weeks |
| Hydrogel-coated | Long-term | Reduced encrustation | Long-term, allergy |
| Silver-coated | Any | Antimicrobial | CAUTI reduction |

**Latex Allergy:** Use silicone or hydrogel-coated catheters

### By Configuration

**Standard Foley:**
- Most common
- 2-way: One lumen for drainage, one for balloon inflation
- 3-way: Additional lumen for irrigation (hematuria, post-TURP)

**Coudé-Tip Catheter:**
- Curved tip (15-degree bend)
- For enlarged prostate or urethral obstruction
- Insert with tip pointing toward 12 o''clock position

**Council Catheter:**
- Hole at tip for guidewire
- For difficult catheterizations over a wire

## Catheter Sizing

### French (Fr) or Charrière (Ch) Scale
The French scale measures external circumference in millimeters:
$$\text{Diameter (mm)} = \frac{\text{French size}}{3}$$

Example: 18 Fr catheter = 6 mm diameter

### Size Selection

| Patient | Recommended Size | Notes |
|---------|-----------------|-------|
| Adult female | 12-14 Fr | Smaller sizes often adequate |
| Adult male | 14-16 Fr | 16 Fr for debris/hematuria |
| Elderly male | 16-18 Fr | May need larger for prostatic obstruction |
| Gross hematuria | 18-22 Fr (3-way) | For irrigation and clot drainage |
| Pediatric | 6-10 Fr | Age-appropriate selection |

**Principle:** Use the smallest size that provides adequate drainage to minimize urethral trauma.

### Balloon Size
- **Standard (10 mL):** Routine catheterization
- **Large (30 mL):** Post-TURP for hemostasis, traction (rarely indicated)

**Always inflate with sterile water, not saline** (saline can crystallize, preventing deflation).

## Drainage Systems

### Closed System
- Pre-connected catheter and drainage bag
- Maintains sterility
- Standard for indwelling catheters
- Do NOT disconnect unnecessarily

### Open System
- For intermittent catheterization
- Drain into container and remove catheter

### Leg Bags
- For ambulatory patients
- Smaller capacity (350-750 mL)
- Connect to larger bag at night

### Catheter Valves
- Allow bladder to fill and empty intermittently
- May maintain bladder tone
- Selected patients only', 4);

-- Section 5: Insertion Technique - Male
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'content', 'Male Urethral Catheterization Technique',
'## Preparation

### Equipment
- Sterile catheterization pack (drape, swabs, receiver)
- Appropriate catheter (14-16 Fr for most adults)
- Sterile lubricating gel (lidocaine gel preferred)
- Sterile water for balloon inflation (NOT saline)
- Syringe (10 mL for standard balloon)
- Drainage bag (pre-connected closed system preferred)
- Sterile gloves (2 pairs)
- Antiseptic solution

### Patient Preparation
1. Explain procedure, obtain consent
2. Ensure privacy
3. Position patient supine with legs extended
4. Adequate lighting
5. Consider analgesia if anxious

## Step-by-Step Technique

### 1. Hand Hygiene and Setup
- Perform hand hygiene
- Open sterile pack using aseptic technique
- Prepare equipment without contaminating

### 2. Initial Draping
- Put on first pair of sterile gloves
- Place sterile drape with hole over penis
- Clean glans with antiseptic (start at meatus, move outward)
- Remove first pair of gloves

### 3. Catheter Preparation
- Put on second pair of sterile gloves
- Attach syringe with sterile water to balloon port
- Test balloon inflation and deflation
- Lubricate catheter tip generously

### 4. Anesthetic Application
- Retract foreskin (if present) to expose glans
- Insert lidocaine gel nozzle into urethral meatus
- Instill 10-15 mL of gel into urethra
- Gently squeeze meatus closed
- Wait 3-5 minutes for anesthetic effect

### 5. Catheter Insertion
- Hold penis at 90-degree angle to body (perpendicular to abdomen)
- This straightens the urethra
- Insert catheter gently but steadily
- **Never force the catheter**

### 6. Navigating the Prostatic Urethra
- At approximately 15-20 cm, resistance may be felt at the bladder neck/prostate
- Lower the penis toward the abdomen (parallel to thighs)
- Apply gentle, steady pressure
- Ask patient to take deep breaths or "push as if urinating"
- The sphincter will relax

### 7. Confirming Position
- Advance catheter fully to the bifurcation (Y-junction)
- Wait for urine flow (confirms bladder entry)
- **Only inflate balloon when urine is draining**

### 8. Balloon Inflation
- Inject sterile water slowly (10 mL for standard balloon)
- If patient reports pain, STOP - catheter may be in urethra
- Deflate and advance further before reattempting

### 9. Final Steps
- Gently withdraw catheter until resistance felt (balloon at bladder neck)
- Replace foreskin to prevent paraphimosis (CRITICAL)
- Attach catheter to drainage bag
- Secure catheter to thigh (catheter strap or tape)
- Dispose of equipment, remove gloves, hand hygiene

## Key Points for Male Catheterization

1. **Adequate lubrication** is essential - be generous
2. **Lidocaine gel** reduces discomfort and facilitates passage
3. **Wait for anesthesia** (3-5 minutes) before inserting catheter
4. **Penis angle matters**: Perpendicular initially, then toward feet at prostatic urethra
5. **Never force** - if resistance, stop and reassess
6. **Confirm urine flow** before balloon inflation
7. **Replace the foreskin** - paraphimosis is a urological emergency

## Troubleshooting Male Catheterization

| Problem | Solution |
|---------|----------|
| Resistance at 5 cm | Meatal stenosis - try smaller catheter |
| Resistance at 15 cm | Prostatic urethra - lower penis, use coudé |
| Resistance at 20 cm | Sphincter spasm - wait, ask patient to breathe |
| No urine after insertion | Advance further, ensure adequate hydration |
| Pain on balloon inflation | Deflate immediately, advance, try again |
| Unable to pass catheter | Stop, urological referral, consider suprapubic |', 5);

-- Section 6: Insertion Technique - Female
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'content', 'Female Urethral Catheterization Technique',
'## Anatomical Considerations

The female urethra is:
- Shorter (3-5 cm) than male urethra (15-20 cm)
- Straighter with no prostatic curvature
- Located anterior to the vagina
- May be difficult to visualize in some patients

### Common Challenges
- Difficulty identifying the meatus (especially in obese or elderly patients)
- Meatus may be retracted or atrophied in postmenopausal women
- May inadvertently enter the vagina

## Preparation

### Equipment
- Same as male catheterization
- Good lighting is essential
- Assistant may be needed for positioning

### Patient Preparation
1. Explain procedure, obtain consent
2. Ensure privacy
3. Position: Supine with knees flexed and hips abducted (frog-leg position)
4. Alternative: Left lateral position if supine difficult
5. Adequate lighting directed at perineum

## Step-by-Step Technique

### 1. Initial Preparation
- Hand hygiene
- Open sterile pack using aseptic technique
- Prepare equipment

### 2. Draping and Cleaning
- Put on sterile gloves
- Place sterile drape under buttocks
- Separate labia with non-dominant hand (keep in position throughout)
- Clean the periurethral area with antiseptic (front to back motion)
- Use one swab per stroke, discard after each pass
- Clean labia majora, labia minora, then around meatus

### 3. Identifying the Meatus
- The urethral meatus is located anterior (superior) to the vaginal opening
- Below the clitoris
- Usually appears as a small dimple or slit

**If meatus not visible:**
- Adjust lighting angle
- Gently separate labia further
- Have patient cough (may cause slight urine leak, identifying meatus)
- In elderly patients, meatus may be retracted within the vaginal introitus

### 4. Catheter Insertion
- Lubricate catheter tip with sterile gel
- Insert catheter gently into meatus
- Advance 5-7 cm until urine drains
- Do NOT release labia until catheter secured

### 5. If Catheter Enters Vagina
- Leave the misplaced catheter in vagina as a marker
- Obtain a new sterile catheter
- Insert into the opening above the vaginal catheter
- Once bladder catheter is secured, remove vaginal catheter

### 6. Confirming Position and Securing
- Wait for urine flow before balloon inflation
- Inflate balloon with 10 mL sterile water (as per manufacturer)
- Gently withdraw until resistance felt
- Attach to drainage system
- Secure catheter to inner thigh

## Special Situations

### Obese Patients
- May need two assistants (one to retract pannus, one to hold labia)
- Consider left lateral position
- Better lighting essential

### Atrophic/Retracted Meatus
- Common in elderly, postmenopausal women
- Meatus may be within vaginal introitus
- Use small cotton-tip swab to locate meatus
- Consider smaller catheter (10-12 Fr)

### Pelvic Organ Prolapse
- Gently reduce prolapse to visualize meatus
- May need assistant to maintain reduction
- Consider urology referral if severe

## Comparison of Male and Female Catheterization

| Feature | Male | Female |
|---------|------|--------|
| Urethral length | 15-20 cm | 3-5 cm |
| Insertion depth | To bifurcation (20+ cm) | 5-7 cm (until urine drains) |
| Lubricant instillation | Into urethra | On catheter tip only |
| Lidocaine gel timing | Wait 3-5 minutes | Usually immediate insertion |
| Common difficulty | Prostatic urethra | Identifying meatus |
| Position | Supine, legs extended | Frog-leg position |

## Documentation

Record:
- Date and time
- Indication for catheterization
- Catheter type and size
- Balloon volume
- Residual urine volume
- Character of urine (clear, bloody, cloudy)
- Patient tolerance
- Any difficulties encountered', 6);

-- Section 7: Complications and Prevention
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'content', 'Complications and Prevention',
'## Immediate Complications

### Urethral Trauma
**Presentation:**
- Pain during insertion
- Bleeding from urethra
- Resistance followed by blood
- False passage creation

**Prevention:**
- Adequate lubrication
- Appropriate catheter size
- Never force the catheter
- Proper technique (angle changes)

**Management:**
- Stop procedure
- Urological consultation
- May need cystoscopy, suprapubic catheter

### Failure to Insert
**Causes:**
- Urethral stricture
- Prostatic enlargement
- Phimosis
- Operator inexperience

**Management:**
- Try coudé-tip catheter
- Consider smaller size
- Lidocaine gel and wait
- Urological consultation for difficult cases

### Bladder Spasm
**Presentation:**
- Cramping pain after catheterization
- Bypassing urine around catheter
- Urgency sensation

**Management:**
- Reassurance
- Anticholinergics (oxybutynin) if severe
- Rule out catheter malposition

### Autonomic Dysreflexia
**At risk:** Patients with spinal cord injury at T6 or above

**Presentation:**
- Severe hypertension
- Headache
- Bradycardia
- Flushing, sweating above lesion level

**Management:**
- Stop procedure
- Sit patient up
- Remove trigger (blocked catheter)
- Antihypertensive if severe
- Emergency management may be needed

## Delayed Complications

### Catheter-Associated Urinary Tract Infection (CAUTI)
See separate section below.

### Urethral Erosion/Necrosis
**Cause:** Pressure from catheter on urethral wall

**Prevention:**
- Proper catheter securing (no tension)
- Appropriate catheter size
- Regular catheter care

### Encrustation and Blockage
**Cause:** Mineral deposits on catheter surface

**Prevention:**
- Adequate hydration
- Regular catheter changes (per manufacturer guidelines)
- Silicone catheters for prone patients
- Catheter patency checks

### Urethral Stricture
**Cause:** Trauma from catheterization, chronic inflammation

**Prevention:**
- Proper insertion technique
- Minimize catheter duration
- Appropriate catheter size

### Paraphimosis (Male Patients)
**Cause:** Failure to replace foreskin after catheterization

**Presentation:**
- Swollen, painful glans
- Tight band of retracted foreskin
- Urological emergency

**Prevention:**
- **ALWAYS replace foreskin after catheterization**

**Management:**
- Manual reduction (compress glans, slide foreskin forward)
- May need dorsal slit or circumcision if failed

### Balloon Inflation in Urethra
**Cause:** Inflating balloon before catheter fully in bladder

**Presentation:**
- Severe pain on inflation
- Urethral trauma
- Bleeding

**Prevention:**
- Advance catheter to bifurcation
- Confirm urine drainage before inflation
- Stop immediately if pain occurs

## CAUTI Prevention

### The Problem
- CAUTI is the most common healthcare-associated infection
- 70-80% of hospital-acquired UTIs are catheter-associated
- Associated with increased morbidity, mortality, length of stay, and cost

### Risk Factors
- Duration of catheterization (most important)
- Female sex
- Diabetes mellitus
- Older age
- Immunocompromise
- Poor catheter care technique

### Evidence-Based Prevention Bundle

**1. Appropriate Indication:**
- Only catheterize when truly indicated
- Remove as soon as possible
- Daily review: "Does this patient still need a catheter?"

**2. Aseptic Insertion:**
- Hand hygiene
- Sterile equipment
- Proper technique
- Trained personnel only

**3. Closed Drainage System:**
- Pre-connected catheter and bag
- Do not disconnect except when necessary
- Do not allow bag to rest on floor
- Keep drainage bag below bladder level

**4. Proper Catheter Care:**
- Secure catheter to prevent traction
- Daily meatal hygiene (soap and water)
- No routine antiseptic application
- Empty drainage bag regularly (do not allow to overfill)

**5. Early Removal:**
- Nurse-driven removal protocols
- Automatic stop orders
- Reminder systems

### Specific Recommendations

| Intervention | Evidence Level |
|--------------|----------------|
| Avoid unnecessary catheterization | Strong |
| Use aseptic technique | Strong |
| Maintain closed drainage | Strong |
| Remove catheter early | Strong |
| Silver-alloy catheters | Moderate |
| Antimicrobial-impregnated catheters | Limited |
| Routine catheter irrigation | Not recommended |
| Routine catheter changes | Only per manufacturer |', 7);

-- Section 8: Catheter Care and Removal
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'content', 'Catheter Care and Removal',
'## Daily Catheter Care

### Meatal Care
- Clean around meatus daily with soap and water
- In shower or bed bath
- No special antiseptic solutions needed (may cause irritation)
- Clean away from meatus

### Drainage Bag Care
- Empty when 2/3 full or before patient mobilizes
- Use clean technique when emptying
- Do not allow spout to touch container
- Keep below bladder level at all times
- Never place on floor

### Tubing Management
- Ensure no kinks or loops
- Secure to patient (thigh for male, thigh/abdomen for female)
- Allow enough slack for movement
- Do not disconnect unnecessarily

### Monitoring
- Daily assessment of continued need
- Monitor urine output and character
- Check for bypassing (leaking around catheter)
- Assess for signs of infection

## Catheter Change Schedule

### Standard Recommendations
- Latex catheters: Change every 2-4 weeks
- Silicone catheters: Change every 4-12 weeks
- Hydrogel-coated: Per manufacturer (usually 4-12 weeks)
- Change earlier if: encrustation, blockage, infection

### Long-Term Catheter Patients
- Regular scheduled changes prevent blockage
- Document catheter life for individual patients
- Some patients encrust rapidly (need more frequent changes)

## Catheter Removal

### Indications for Removal
- Original indication resolved
- Patient can void independently
- Transition to intermittent catheterization
- Comfort care decisions
- Catheter-related complication

### Technique
1. Explain procedure to patient
2. Connect empty syringe to balloon port
3. Aspirate water from balloon (confirm full volume returned)
4. If balloon does not deflate, see troubleshooting
5. Gently withdraw catheter
6. Document time and residual volume (if measured)

### Post-Removal Care
- Encourage oral fluids
- Expect voiding within 6-8 hours
- Monitor for urinary retention
- Document first void (time, volume)

## Trial Without Catheter (TWOC)

### Purpose
- Assess ability to void after catheter removal
- Common after urinary retention or prostate surgery

### Protocol
1. Remove catheter (morning preferred - allows daytime monitoring)
2. Encourage fluids
3. Monitor for voiding within 6-8 hours
4. Measure post-void residual (PVR) if concern

### Success Criteria
- Voiding within 6-8 hours
- Reasonable volumes (>150 mL)
- PVR <150-200 mL (or <1/3 voided volume)
- Patient comfortable

### Failure Management
- Replace catheter
- Consider alpha-blocker (for prostatic obstruction)
- Urology referral
- Plan repeat TWOC or long-term catheterization

## Suprapubic Catheterization

### Indications
- Urethral trauma or disruption
- Urethral stricture preventing access
- Failed urethral catheterization
- Long-term catheterization (patient preference)
- Chronic retention with poor urethral access

### Advantages
- Preserves urethral integrity
- Easier self-care for some patients
- Lower UTI risk (some studies)
- Sexual activity possible

### Disadvantages
- Surgical procedure (minor)
- Wound complications possible
- Requires training for changes

### Technique (Overview)
1. Confirm distended bladder (palpation, ultrasound)
2. Prepare skin, local anesthesia
3. Make small suprapubic incision
4. Insert trocar through abdominal wall into bladder
5. Advance catheter through trocar
6. Inflate balloon, remove trocar
7. Secure catheter and apply dressing

## Troubleshooting Catheter Problems

### Catheter Not Draining

**Causes:**
- Kink in tubing
- Blockage (encrustation, clot, debris)
- Catheter malposition
- Bladder empty

**Management:**
- Check tubing for kinks
- Flush with sterile saline (if appropriate)
- Reposition patient
- Consider catheter change

### Bypassing (Leaking Around Catheter)

**Causes:**
- Blocked catheter
- Bladder spasm
- Catheter too small
- Constipation causing pressure

**Management:**
- Check for blockage first
- Consider anticholinergics for spasm
- Do NOT routinely increase catheter size

### Balloon Won''t Deflate

**Causes:**
- Valve malfunction
- Crystallization (if saline used)

**Management:**
- Try aspirating with different syringe
- Cut balloon port above valve
- Inject 1-2 mL mineral oil (may dissolve balloon)
- Ultrasound-guided puncture (specialist)
- NEVER cut catheter at meatus', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'key_points', 'Key Points',
'1. **Indication-Based Catheterization**: Only insert catheters when truly indicated. The most effective CAUTI prevention is avoiding unnecessary catheterization.

2. **Rule Out Urethral Injury in Trauma**: Blood at meatus, perineal hematoma, or high-riding prostate are contraindications to urethral catheterization. Obtain urology consultation.

3. **Catheter Size Principle**: Use the smallest catheter that provides adequate drainage. For most adults: 14-16 Fr male, 12-14 Fr female.

4. **Male Catheterization Technique**: Penis perpendicular initially, then lower toward feet when navigating prostatic urethra. Wait for lidocaine gel to work (3-5 minutes).

5. **Confirm Position Before Inflation**: Always wait for urine drainage before inflating the balloon. Pain on inflation means the catheter is in the wrong position.

6. **Replace the Foreskin**: In uncircumcised males, always replace the foreskin after catheterization to prevent paraphimosis—a urological emergency.

7. **Closed Drainage System**: Maintain a closed, sterile drainage system. Minimize disconnections. Never allow the drainage bag to touch the floor.

8. **Daily Catheter Need Assessment**: Review daily whether the catheter is still indicated. Early removal is the most effective CAUTI prevention strategy.

9. **Never Force a Catheter**: If resistance is encountered, stop and reassess. Try a coudé-tip catheter or smaller size. Obtain urology consultation for difficult cases.

10. **Inflate with Sterile Water**: Always use sterile water (not saline) for balloon inflation. Saline can crystallize and prevent balloon deflation.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: If you cannot see the female urethral meatus, ask the patient to cough—a small urine leak will identify the meatus location.

💡 **Pearl 2**: In difficult male catheterization, the coudé-tip catheter is your friend. Insert with the curved tip pointing upward (12 o''clock) to navigate the prostatic urethra.

💡 **Pearl 3**: If you accidentally insert the catheter into the vagina, leave it there as a marker, get a new sterile catheter, and insert into the opening above it.

💡 **Pearl 4**: The safest time for balloon inflation is when urine is freely draining. If in doubt, advance the catheter further before inflating.

💡 **Pearl 5**: Bypassing (leaking around the catheter) is usually due to a blocked catheter or bladder spasm, NOT a catheter that is too small. Do not routinely upsize.

💡 **Pearl 6**: For patients who repeatedly block catheters, document their "catheter life" and plan changes accordingly. Some patients need changes every 2-3 weeks.

💡 **Pearl 7**: Morning removal for trial without catheter allows daytime monitoring for retention and repeat catheterization if needed without disturbing sleep.

💡 **Pearl 8**: Nurse-driven catheter removal protocols and automatic stop orders have been proven to reduce catheter duration and CAUTI rates.

💡 **Pearl 9**: In a patient with spinal cord injury at T6 or above, catheterization can trigger autonomic dysreflexia—a potentially life-threatening emergency. Be prepared.

💡 **Pearl 10**: The question "Does this patient still need a catheter?" should be asked every day. If the answer is no, remove it immediately.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100016-0000-0000-0000-000000000016', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100016-0000-0000-0000-000000000016', 1, 'Loveday HP, et al. epic3: National Evidence-Based Guidelines for Preventing Healthcare-Associated Infections in NHS Hospitals in England. J Hosp Infect. 2014;86(Suppl 1):S1-S70.', '10.1016/S0195-6701(13)60012-2', '24330862', NULL),
('a1100016-0000-0000-0000-000000000016', 2, 'Gould CV, et al. Guideline for Prevention of Catheter-Associated Urinary Tract Infections 2009. CDC/HICPAC Guidelines. Infect Control Hosp Epidemiol. 2010;31(4):319-326.', '10.1086/651091', '20156062', NULL),
('a1100016-0000-0000-0000-000000000016', 3, 'Lo E, et al. Strategies to Prevent Catheter-Associated Urinary Tract Infections in Acute Care Hospitals: 2014 Update. Infect Control Hosp Epidemiol. 2014;35(5):464-479.', '10.1086/675718', '24709715', NULL),
('a1100016-0000-0000-0000-000000000016', 4, 'Holroyd S. The use of urinary catheters: aseptic technique. Nursing Times. 2019;115(10):58-62.', NULL, NULL, 'https://www.nursingtimes.net/clinical-archive/infection-control/the-use-of-urinary-catheters-aseptic-technique/'),
('a1100016-0000-0000-0000-000000000016', 5, 'Feneley RCL, Hopley IB, Wells PNT. Urinary catheters: history, current status, adverse events and research agenda. J Med Eng Technol. 2015;39(8):459-470.', '10.3109/03091902.2015.1085600', '26383168', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 1,
'Blood at the urethral meatus following pelvic trauma indicates:',
'Need for immediate urethral catheterization',
'Possible urethral injury - urethral catheterization contraindicated',
'Need for larger catheter size',
'Normal finding that requires no action',
'Indication for intermittent catheterization',
'B',
'Blood at the urethral meatus is a sign of possible urethral injury and is an absolute contraindication to urethral catheterization. A retrograde urethrogram should be performed before any attempt at urethral catheterization, and urology consultation is required.', '{2,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 2,
'The recommended catheter size for routine adult male urethral catheterization is:',
'10-12 Fr',
'14-16 Fr',
'18-20 Fr',
'22-24 Fr',
'26-28 Fr',
'B',
'For routine adult male catheterization, a 14-16 Fr catheter is recommended. The principle is to use the smallest catheter that provides adequate drainage to minimize urethral trauma.', '{1,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 3,
'The Foley catheter balloon should be inflated with:',
'Normal saline',
'Sterile water',
'Air',
'5% dextrose',
'Tap water',
'B',
'Foley catheter balloons should always be inflated with sterile water, not saline. Saline can crystallize within the balloon and prevent deflation when catheter removal is needed.', '{1,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 4,
'A coudé-tip catheter is particularly useful for:',
'Female patients with atrophic meatus',
'Male patients with prostatic enlargement',
'Pediatric catheterization',
'Patients requiring bladder irrigation',
'Long-term catheterization',
'B',
'The coudé-tip catheter has a curved tip (15-degree bend) that helps navigate around an enlarged prostate. It should be inserted with the tip pointing toward 12 o''clock position.', '{4,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 5,
'When should the catheter balloon be inflated during male catheterization?',
'Immediately after the catheter enters the meatus',
'When 10 cm of catheter has been inserted',
'When urine starts draining from the catheter',
'After securing the catheter to the thigh',
'When the patient reports a sensation of fullness',
'C',
'The balloon should only be inflated when urine is freely draining from the catheter, confirming that the catheter tip is in the bladder. Inflating the balloon in the urethra can cause significant trauma.', '{1,4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 6,
'During male catheterization, the penis should initially be held at what angle to the abdomen?',
'Parallel to the abdomen (lying flat)',
'At 45 degrees',
'Perpendicular (90 degrees)',
'Toward the feet',
'Any angle is acceptable',
'C',
'During male catheterization, the penis should initially be held perpendicular (90 degrees) to the abdomen to straighten the urethra. When navigating the prostatic urethra, the penis is then lowered toward the feet.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 7,
'The most common healthcare-associated infection is:',
'Surgical site infection',
'Catheter-associated urinary tract infection',
'Central line-associated bloodstream infection',
'Ventilator-associated pneumonia',
'Clostridioides difficile infection',
'B',
'Catheter-associated urinary tract infection (CAUTI) is the most common healthcare-associated infection, accounting for approximately 40% of all HAIs. 70-80% of hospital-acquired UTIs are catheter-associated.', '{2,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 8,
'The most important modifiable risk factor for CAUTI is:',
'Patient age',
'Female sex',
'Duration of catheterization',
'Catheter material',
'Diabetes mellitus',
'C',
'Duration of catheterization is the most important modifiable risk factor for CAUTI. The risk of bacteriuria increases approximately 3-7% per day of catheterization. Early removal is the most effective prevention strategy.', '{2,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 9,
'After catheter insertion in an uncircumcised male, you must:',
'Apply antibiotic ointment to the glans',
'Replace the foreskin to its normal position',
'Measure post-void residual',
'Obtain a urine culture',
'Irrigate the catheter with saline',
'B',
'It is critical to replace the foreskin to its normal position after catheterization in uncircumcised males. Failure to do so can cause paraphimosis, a urological emergency where the retracted foreskin causes venous congestion and swelling of the glans.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 10,
'If the catheter accidentally enters the vagina during female catheterization, the correct action is:',
'Remove it immediately and start over',
'Leave it in place as a marker and insert a new sterile catheter into the urethra',
'Advance it further',
'Inflate the balloon to secure it',
'Wait 5 minutes and try again',
'B',
'If the catheter enters the vagina, leave it in place as a marker (it identifies where the urethra is NOT). Obtain a new sterile catheter and insert it into the opening above the misplaced catheter. Remove the vaginal catheter once the urethral catheter is secured.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 11,
'The female urethra is approximately:',
'1-2 cm long',
'3-5 cm long',
'10-12 cm long',
'15-20 cm long',
'20-25 cm long',
'B',
'The female urethra is approximately 3-5 cm long (compared to 15-20 cm in males). This shorter length makes female catheterization generally easier but also contributes to higher UTI rates in women.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 12,
'How long should you wait after instilling lidocaine gel before inserting the catheter in male patients?',
'No waiting required',
'1-2 minutes',
'3-5 minutes',
'10-15 minutes',
'20-30 minutes',
'C',
'After instilling lidocaine gel into the male urethra, wait 3-5 minutes for the anesthetic effect to develop. This significantly improves patient comfort and relaxes the urethral sphincter.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 13,
'Bypassing (urine leaking around the catheter) is most commonly caused by:',
'Catheter too small',
'Catheter too large',
'Blocked catheter or bladder spasm',
'Underinflated balloon',
'Improper securing',
'C',
'Bypassing is most commonly caused by a blocked catheter (encrustation, debris, clots) or bladder spasm—not a catheter that is too small. The first step is to check for blockage. Upsizing the catheter is not the appropriate initial response.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 14,
'The drainage bag should be positioned:',
'At or above bladder level for optimal flow',
'Below bladder level at all times',
'Attached to the bed rail',
'On the floor to maximize capacity',
'At chest level',
'B',
'The drainage bag should be positioned below bladder level at all times to allow gravity drainage. It should never be placed on the floor (infection risk) or above bladder level (which can cause reflux of urine into the bladder).', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 15,
'Silicone catheters are preferred over latex catheters for:',
'Short-term catheterization (<24 hours)',
'Patients with latex allergy',
'Bladder irrigation',
'Pediatric patients only',
'All routine catheterizations',
'B',
'Silicone catheters are preferred for patients with latex allergy (as latex catheters are contraindicated) and for long-term catheterization (>14 days) due to their biocompatibility and resistance to encrustation.', '{1,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 16,
'If a patient experiences severe pain when you attempt to inflate the balloon, you should:',
'Continue inflation slowly',
'Use less water in the balloon',
'Immediately deflate the balloon and advance the catheter further',
'Remove the catheter completely and try again',
'Wait 5 minutes and try again',
'C',
'Pain during balloon inflation indicates the balloon is likely in the urethra, not the bladder. You should immediately stop inflation, deflate the balloon completely, advance the catheter further (until urine drains), and then attempt inflation again.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 17,
'Regarding daily catheter care, which statement is correct?',
'The meatus should be cleaned with betadine daily',
'The meatus should be cleaned with soap and water',
'Routine meatal care with antiseptics reduces CAUTI',
'The catheter should be irrigated daily with saline',
'The drainage bag should be changed daily',
'B',
'Daily meatal care should be performed with soap and water during routine bathing. There is no evidence that routine use of antiseptics at the meatus reduces CAUTI rates, and they may cause irritation.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 18,
'A suprapubic catheter is indicated in all the following situations EXCEPT:',
'Urethral trauma',
'Severe urethral stricture',
'Patient preference for long-term catheterization',
'Routine postoperative care after appendectomy',
'Failed urethral catheterization with urinary retention',
'D',
'Suprapubic catheterization is not indicated for routine postoperative care. Indications include urethral trauma/disruption, severe urethral stricture, failed urethral catheterization with retention, and sometimes patient preference for long-term management.', '{4,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 19,
'For a trial without catheter (TWOC), the patient should void within:',
'1-2 hours',
'6-8 hours',
'12-24 hours',
'24-48 hours',
'There is no time limit',
'B',
'After catheter removal for a TWOC, patients should void within 6-8 hours. Morning removal is preferred as it allows daytime monitoring and recatheterization if needed without disturbing overnight sleep.', '{4}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100016-0000-0000-0000-000000000016', 20,
'The single most effective strategy for preventing CAUTI is:',
'Using silver-coated catheters',
'Daily antiseptic meatal care',
'Routine catheter irrigation',
'Avoiding unnecessary catheterization and early removal',
'Prophylactic antibiotics',
'D',
'The most effective CAUTI prevention strategy is avoiding unnecessary catheterization and removing catheters as soon as they are no longer indicated. Duration of catheterization is the most important modifiable risk factor.', '{2,3}');
