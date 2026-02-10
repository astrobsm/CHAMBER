-- CME Article 11: Nasogastric Intubation
-- Comprehensive CME article with 20 self-assessment questions

INSERT INTO cme_articles (
    id, topic_id, category_id, title, subtitle, abstract, authors, 
    estimated_reading_minutes, cme_credits, difficulty_level, version, is_published
) VALUES (
    'a1100011-0000-0000-0000-000000000011',
    'b0000011-0000-0000-0000-000000000011',
    'a0000001-0000-0000-0000-000000000001',
    'Nasogastric Intubation: Indications, Techniques, and Management',
    'A Comprehensive Guide to NGT Placement and Care',
    'Nasogastric tube (NGT) insertion is a fundamental procedure in surgical practice used for decompression, drainage, feeding, and medication administration. This CME article provides comprehensive coverage of NGT types, indications, contraindications, insertion techniques, confirmation methods, management, and complications. Proper technique and vigilant monitoring are essential to maximize benefit while minimizing patient harm.',
    'UNTH Surgery Department, GI Surgery Unit',
    35,
    2.0,
    'easy',
    1,
    true
);

-- Section 1: Introduction
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'introduction', 'Introduction',
'Nasogastric intubation involves the passage of a tube through the nose, down the esophagus, and into the stomach. This seemingly simple procedure is one of the most commonly performed in hospitals, yet complications ranging from minor discomfort to fatal misplacement can occur.

**Historical Context:**
The nasogastric tube has evolved significantly since its earliest descriptions. Modern tubes incorporate features for improved comfort, functionality, and safety.

**Core Functions of NGT:**
1. **Decompression**: Removal of air and gastric contents in obstruction or ileus
2. **Drainage**: Preventing aspiration in high-risk patients
3. **Feeding**: Enteral nutrition delivery
4. **Lavage**: Gastric washout for toxin removal or bleeding assessment
5. **Medication delivery**: When oral route is unavailable

**Why Mastery Matters:**
- NGT complications occur in 0.3-15% of insertions
- Pulmonary misplacement can be fatal if unrecognized
- Proper technique reduces patient discomfort and complications
- Confirmation of placement is mandatory before use

**The Safety Imperative:**
Never use an NGT for feeding or medications until placement is confirmed. The consequences of administering nutrition into the lungs are severe—aspiration pneumonia, chemical pneumonitis, and death have all been reported.

This article provides the knowledge foundation for safe, effective nasogastric intubation in surgical practice.', 1);

-- Section 2: Learning Objectives
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'learning_objectives', 'Learning Objectives',
'Upon completion of this article, participants should be able to:

1. Identify the indications and contraindications for nasogastric tube insertion

2. Select the appropriate type and size of NGT based on clinical indication

3. Describe proper patient preparation and positioning for NGT insertion

4. Demonstrate the step-by-step technique for nasogastric tube insertion

5. Apply appropriate methods to confirm correct NGT placement before use

6. Recognize signs of NGT misplacement and associated complications

7. Manage NGT function including patency maintenance, output monitoring, and removal

8. Describe nursing care requirements for patients with nasogastric tubes

9. Implement strategies to minimize patient discomfort during and after NGT insertion

10. Identify special considerations for NGT insertion in specific patient populations', 2);

-- Section 3: Types of Nasogastric Tubes
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'content', 'Types of Nasogastric Tubes',
'## Classification by Function

### Large-Bore Tubes (Decompression/Drainage)

**Levin Tube:**
- Single-lumen tube
- Sizes: 12-18 French
- Used for intermittent suction or gravity drainage
- Risk of mucosal damage with continuous suction

**Salem Sump Tube:**
- Double-lumen design
- Main lumen for suction; vent lumen for air intake
- Allows continuous suction without mucosal damage
- Blue "pigtail" is the vent—keep it above stomach level
- Sizes: 14-18 French
- Preferred for gastric decompression

**Ewald/Lavage Tube:**
- Large bore (36-40 French)
- Used for gastric lavage in overdose
- Requires oral insertion
- Short-term use only

### Small-Bore Tubes (Feeding)

**Dobhoff Tube:**
- Fine-bore feeding tube (8-12 French)
- Weighted tip for transpyloric passage
- Stylet for insertion (MUST remove before feeding)
- More comfortable for long-term use
- Not suitable for suctioning

**Corpak/Corflo Tubes:**
- Similar to Dobhoff
- Various sizes and configurations
- Some have electromagnetic tip for guided placement

**Briggs Tubes:**
- Pediatric feeding tubes
- Sizes: 5-8 French

## Tube Characteristics

| Feature | Decompression Tube | Feeding Tube |
|---------|-------------------|--------------|
| Size | 14-18 Fr | 8-12 Fr |
| Material | PVC | Polyurethane/Silicone |
| Stiffness | Stiffer | Softer, more flexible |
| Duration | Days | Weeks |
| Can aspirate | Yes | Limited |
| Comfort | Less | More |

## Material Considerations

**PVC (Polyvinyl Chloride):**
- Stiff initially, softens at body temperature
- Suitable for short-term use (5-7 days)
- Hardens over time—requires replacement

**Polyurethane:**
- Remains soft
- Biocompatible for longer use
- More expensive
- Standard for feeding tubes

**Silicone:**
- Very soft and flexible
- Longest biocompatibility
- Collapses easily—not for suction

## Sizing

**French (Fr) sizing:**
- 1 French = 0.33 mm diameter
- Example: 18 Fr = 6 mm diameter

**Selection Guidelines:**
- Gastric decompression: 16-18 Fr
- Gastric drainage (moderate output): 14-16 Fr
- Feeding (adult): 8-12 Fr
- Pediatric: Based on age/size', 3);

-- Section 4: Indications and Contraindications
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'content', 'Indications and Contraindications',
'## Indications

### Decompression
- **Gastric outlet obstruction**: Pyloric stenosis, malignancy
- **Small bowel obstruction**: Reduces distension, vomiting
- **Postoperative ileus**: Prevents nausea, aspiration
- **Acute pancreatitis**: Reduces gastric secretion stimulation
- **Esophagogastric surgery**: Protects anastomoses

### Drainage
- **High aspiration risk**: Decreased consciousness, impaired gag
- **Gastric perforation**: Decompression prior to surgery
- **Upper GI bleeding**: Assessment and lavage

### Feeding
- **Impaired swallowing**: Stroke, neurological disease
- **Facial/oral surgery**: When oral intake impossible
- **Critical illness**: Enteral nutrition support
- **Eating disorders**: Nutritional rehabilitation

### Diagnostic
- **Upper GI bleeding**: Coffee-ground aspirate suggests upper source
- **Toxicology**: Assessment for ingestions
- **Gastric residual volumes**: ICU monitoring

### Therapeutic
- **Gastric lavage**: Overdose, poison ingestion
- **Medication delivery**: When oral route unavailable
- **Bowel preparation**: Contrast or prep administration

## Contraindications

### Absolute Contraindications
- **Severe mid-face trauma**: Risk of intracranial placement via cribriform plate
- **Basilar skull fracture**: CSF leak, brain penetration risk
- **Known esophageal stricture/obstruction**: Cannot pass tube
- **Recent esophageal/gastric surgery**: Anastomotic disruption risk
- **Ingestion of caustic substances**: Risk of perforation
- **Known esophageal varices (large bore)**: Bleeding risk

### Relative Contraindications
- **Coagulopathy**: Increased bleeding risk
- **Esophageal varices (small bore)**: Use caution
- **Recent nasal surgery**: Use oral route
- **Deviated septum**: Try alternate nare or oral
- **Zenker''s diverticulum**: Risk of perforation
- **Pregnancy**: Use with caution (aspiration prophylaxis acceptable)

## Special Considerations

**Patients with Endotracheal Tubes:**
- NGT can still be placed
- May be more difficult due to impaired swallowing
- Cuff inflation does not prevent aspiration around NGT

**Patients on Anticoagulation:**
- Increased epistaxis risk
- Use lubrication liberally
- Consider smaller tube or oral route

**Altered Mental Status:**
- Higher aspiration risk
- Cannot cooperate with swallowing
- Ensure tube position confirmed before any use', 4);

-- Section 5: Insertion Technique
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'content', 'Insertion Technique',
'## Equipment Required

- Appropriate NGT (selected based on indication)
- Water-soluble lubricant (lidocaine gel if available)
- Emesis basin
- Cup of water with straw (if patient can swallow)
- Tape or securing device
- Stethoscope
- 60 mL catheter-tip syringe
- pH indicator strips
- Suction apparatus (if for decompression)
- Gloves, protective eyewear

## Patient Preparation

1. **Explain procedure** to patient and obtain consent
2. **Review history** for contraindications
3. **Check for nasal patency**—occlude each nostril and ask patient to breathe
4. **Position patient**:
   - High Fowler''s (90 degrees) if possible
   - Minimum 30-45 degrees if unable to sit
   - Neck slightly flexed forward (chin toward chest)
5. **Place emesis basin** within reach
6. **Measure tube length**:
   - NEX method: Nose → Earlobe → Xiphoid process
   - Mark this length on tube
   - Typical adult: 50-60 cm to stomach

## Step-by-Step Insertion

### Step 1: Prepare the Tube
- Inspect tube for defects
- Chill in ice water (optional—stiffens tube for easier passage)
- Lubricate distal 10-15 cm generously

### Step 2: Insert Through Nare
- Tilt patient''s head back slightly
- Insert tube along floor of nose (aim posteriorly and inferiorly)
- Direct toward the ipsilateral ear
- Advance gently—stop if resistance felt
- Pass through nasopharynx (may feel slight resistance)

### Step 3: Navigate the Oropharynx
- Flex patient''s neck forward (chin to chest)
- Ask patient to sip water through straw and swallow
- Advance tube with each swallow
- If gagging, pause and allow patient to recover
- Never force against resistance

### Step 4: Advance to Measured Length
- Continue advancing to the measured mark
- Patient may cough briefly if tube touches epiglottis
- If severe coughing, choking, or cyanosis—withdraw immediately (tracheal placement)

### Step 5: Confirm Placement
- See next section for detailed confirmation methods
- NEVER use for feeding until placement confirmed

### Step 6: Secure the Tube
- Clean and dry nose
- Apply tape or commercial securing device
- Avoid pressure on nasal ala (prevents pressure injury)
- Leave some slack to prevent traction

### Step 7: Connect to Appropriate System
- Suction (low intermittent or continuous)
- Gravity drainage bag
- Cap (for feeding tubes awaiting use)

## Difficult Insertion Tips

**If Tube Coils in Mouth:**
- Freeze tube to stiffen
- Use larger tube
- Ask patient to tuck chin more firmly
- Try alternative technique

**If Patient Gags Excessively:**
- Topical anesthetic spray to oropharynx
- Allow rest between attempts
- Consider smaller tube
- Ensure patient is swallowing during advancement

**Unconscious Patients:**
- Jaw thrust may open pharynx
- Lateral decubitus position may help
- Consider laryngoscope guidance
- Higher risk of misplacement—confirm carefully', 5);

-- Section 6: Confirmation of Placement
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'content', 'Confirmation of Placement',
'## Critical Safety Point

⚠️ **NEVER use an NGT for feeding, medication, or lavage until correct gastric placement is CONFIRMED.**

Pulmonary misplacement with subsequent aspiration of feeds is associated with significant morbidity and mortality.

## First-Line Confirmation Methods

### pH Testing of Aspirate (Recommended First-Line)
- Aspirate gastric contents using 60 mL syringe
- Test aspirate with pH indicator paper
- **Gastric aspirate**: pH typically 1-5.5
- **Pulmonary/respiratory**: pH typically >6
- **Intestinal**: pH typically 6-8

**Interpretation:**
- pH ≤5.5 strongly suggests gastric placement
- pH >5.5 does not confirm pulmonary placement—may be due to medications, feeding, intestinal position

**Limitations:**
- Patients on acid-suppressing medications may have higher gastric pH
- Small-bore tubes may not aspirate easily
- Does not detect intracranial placement

### X-Ray Confirmation (Gold Standard)
- **Indications**:
  - Feeding tubes before first use
  - Unable to aspirate or pH inconclusive
  - High-risk patients
  - Clinical concern for misplacement
- **Proper radiograph**: Includes entire tube path from nose to below diaphragm
- **Confirm**: Tube tip is below diaphragm and to the left of midline (in stomach)

## Methods NO LONGER Recommended

### Auscultation ("Whoosh" Test) ❌
- Inject air while listening over stomach
- **UNRELIABLE**—air in lung or esophagus sounds similar
- Associated with undetected misplacements
- Should NOT be used as sole confirmation

### Observation of Bubbling in Water ❌
- Submerge end of tube in water
- **UNRELIABLE**—does not distinguish gastric from pulmonary
- May cause water aspiration if misplaced

## Confirmation Algorithm

```
NGT Inserted
    ↓
Attempt to Aspirate
    ↓
Successfully Aspirated? 
    ↓ Yes              ↓ No
Test pH          Reposition tube
    ↓              Try again
pH ≤5.5?         Unable to aspirate?
    ↓ Yes           ↓ Yes
Gastric placement   Obtain X-ray
likely confirmed
    ↓
If feeding tube:
Obtain X-ray before
first use
```

## Special Situations

### Fine-Bore Feeding Tubes
- More likely to enter bronchus undetected
- Often cannot aspirate sufficient fluid
- **X-ray confirmation MANDATORY before first use**
- Remove stylet only after confirmation

### ICU/Ventilated Patients
- Higher misplacement rates (up to 3-4%)
- Decreased cough reflex
- ETT cuff does not prevent misplacement
- Lower threshold for X-ray confirmation

### Bedside Ultrasound
- Emerging technique for confirmation
- Visualize tube in esophagus
- Identify gastric contents
- Not yet standard of care

## Ongoing Position Verification

Check tube position:
- Before each use for medications or feeding
- At least every 4 hours during continuous feeding
- After episodes of vomiting, coughing, or suctioning
- If tube marking has changed from original position
- If patient shows signs of respiratory distress', 6);

-- Section 7: Management and Care
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'content', 'NGT Management and Nursing Care',
'## Maintaining Patency

### For Suction/Drainage Tubes
- **Continuous vs. Intermittent suction**:
  - Salem sump: Can use continuous low suction (60-80 mmHg)
  - Levin tube: Use intermittent suction only (prevents mucosal injury)
- **Regular irrigation**:
  - Flush with 30 mL normal saline every 4 hours
  - After medications
  - If output decreases unexpectedly

### For Feeding Tubes
- **Before and after each feeding**: Flush with 30 mL water
- **Before and after medications**: Flush with 15-30 mL water
- **Continuous feeds**: Flush every 4 hours
- **When not in use**: Flush every 8 hours and cap

### Troubleshooting Blockage
1. Try flushing with warm water
2. Use a syringe—apply gentle pressure and release (creates push-pull action)
3. Consider pancreatic enzyme solution for feeding tubes
4. Never use guidewire or stylet in situ (perforation risk)
5. If unresolved—replace tube

## Monitoring Output

### Recording
- Volume (mL) per shift and 24 hours
- Character (color, consistency)
- Odor

### Normal Appearance
- Green (bile-stained): Normal when draining duodenal reflux
- Clear/white: Gastric secretions
- Coffee-ground: Old blood (investigate cause)
- Bright red: Fresh blood (urgent evaluation)

### Output Volumes
- Normal gastric secretion: 1-2 L/day
- High output (>1 L/day) suggests ongoing obstruction or ileus
- Sudden decrease may indicate tube obstruction or displacement

## Fluid and Electrolyte Replacement

Prolonged high NGT output causes loss of:
- Water → Dehydration
- Sodium → Hyponatremia
- Potassium → Hypokalemia
- Chloride → Metabolic alkalosis
- Hydrogen → Metabolic alkalosis

**Replacement strategy:**
- Replace volume with IV crystalloid
- Monitor and replace electrolytes
- Consider reducing acid secretion (PPI)

## Comfort Measures

### Nasal Care
- Keep nares clean and moist
- Apply water-based lubricant to prevent crusting
- Alternate nares for long-term tubes (not always practical)
- Assess for pressure injury at ala

### Oral Care
- Mouth breathing causes dryness
- Regular oral hygiene (at least every 4 hours)
- Mouth rinses
- Lip balm

### Throat Comfort
- Sore throat is common
- Ice chips (if allowed)
- Lozenges or throat spray

### Positioning
- Keep head of bed elevated ≥30 degrees
- Reduces aspiration risk
- Improves comfort

## When to Remove NGT

**Decompression tubes:**
- Output <200-400 mL/day
- Resolution of obstruction/ileus
- Return of bowel function (flatus, bowel movement)
- Patient tolerating clamping trial

**Feeding tubes:**
- Patient able to meet nutritional needs orally
- No longer needed for medications

## Removal Technique

1. Explain procedure to patient
2. Disconnect from suction/feeding
3. Flush with 20-30 mL air (clears tube contents)
4. Pinch or clamp tube (prevents aspiration of contents during removal)
5. Ask patient to hold breath (closes epiglottis)
6. Remove steadily and quickly in one motion
7. Offer tissues for nose blowing
8. Provide oral care', 7);

-- Section 8: Complications
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'content', 'Complications',
'## Insertion Complications

### Pulmonary Misplacement
- **Incidence**: 0.3-4% (higher in obtunded patients)
- **Presentation**: May be asymptomatic initially; coughing, desaturation
- **Consequences**: If unrecognized and feeds started—pneumonia, ARDS, death
- **Prevention**: Proper confirmation before use; X-ray for feeding tubes

### Esophageal Placement/Coiling
- Tube curls in esophagus instead of advancing
- May still aspirate air (false confirmation with auscultation)
- Diagnosis: X-ray shows tube above diaphragm

### Intracranial Placement
- **Risk factors**: Cribriform plate fracture, severe facial trauma
- **Mechanism**: Tube enters cranial vault through fracture
- **Prevention**: Contraindicated with mid-face/basilar skull fracture
- **Consequence**: Potentially fatal

### Epistaxis
- Common, usually minor
- More likely with anticoagulation, nasal pathology
- Prevention: Adequate lubrication, gentle technique
- Management: Usually self-limited; remove tube if severe

### Pharyngeal Trauma
- Mucosal injury from repeated attempts
- Bleeding
- Usually minor

## Short-Term Complications

### Aspiration
- Stomach contents may reflux around tube
- Risk factors: Supine position, large residuals, decreased consciousness
- Prevention: Head elevation, monitor residuals, prokinetics

### Sinusitis
- Obstruction of sinus drainage
- Presents: Fever, facial pain, purulent nasal discharge
- Risk increases with duration
- May require tube removal, antibiotics

### Otitis Media
- Eustachian tube dysfunction
- More common with prolonged use

### Tube Obstruction
- Medications, feeds, or kinking
- Prevention: Regular flushing, proper medication preparation
- Management: Attempt to clear; replace if unsuccessful

## Long-Term Complications

### Pressure Injury
- Nasal ala from tape/tube pressure
- Posterior pharynx from tube
- Prevention: Proper securing, regular repositioning, nasal care

### Esophageal Erosion/Stricture
- From tube pressure on esophageal wall
- Risk increases with duration and tube stiffness
- Consider G-tube if long-term access needed

### Gastric Erosion/Ulcer
- Tube tip irritation of gastric mucosa
- Can cause bleeding
- Prevention: Proper positioning, acid suppression

### Reflux Esophagitis
- NGT keeps lower esophageal sphincter open
- Increases reflux
- Prevention: Head elevation, PPI

## Electrolyte Disturbances

### Hypochloremic Metabolic Alkalosis
- Loss of gastric HCl
- Classic finding with high NGT output
- Treatment: IV normal saline, potassium replacement

### Hypokalemia
- Gastric secretions contain potassium
- Alkalosis causes intracellular potassium shift
- Requires replacement

### Hyponatremia
- Losses through tube
- May be dilutional if excessive free water given

## Serious Adverse Events

| Complication | Incidence | Mortality |
|--------------|-----------|-----------|
| Pulmonary aspiration of feed | 0.3-4% | Significant |
| Intracranial placement | Rare | High |
| Esophageal perforation | Rare | Variable |
| Bronchopulmonary fistula | Very rare | High |', 8);

-- Section 9: Key Points
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'key_points', 'Key Points',
'1. **Salem Sump vs. Levin**: Salem sump (double-lumen) allows continuous suction; Levin (single-lumen) requires intermittent suction only to prevent mucosal injury.

2. **Absolute Contraindications**: Severe mid-face trauma, basilar skull fracture, known esophageal obstruction, recent esophageal/gastric surgery, and caustic ingestion.

3. **Tube Length Measurement**: NEX method—Nose to Earlobe to Xiphoid. Typical adult length is 50-60 cm.

4. **Position for Insertion**: High Fowler''s (90°) or minimum 30-45° with neck flexed forward (chin to chest) during advancement.

5. **Auscultation is Unreliable**: The "whoosh" test should NOT be used as sole confirmation of placement—it cannot distinguish gastric from pulmonary placement.

6. **pH Testing**: Gastric aspirate pH typically ≤5.5. pH >5.5 does not confirm pulmonary placement but requires further evaluation.

7. **X-ray Confirmation**: MANDATORY for all feeding tubes before first use. Gold standard for confirmation.

8. **Never Ignore Warning Signs**: Coughing, choking, cyanosis, or inability to speak during insertion suggests tracheal placement—withdraw immediately.

9. **Feeding Tube Stylet**: Must be removed ONLY after X-ray confirms position. Never reinsert stylet into an in situ feeding tube (perforation risk).

10. **High NGT Output**: Leads to loss of water, sodium, potassium, chloride, and hydrogen. Results in dehydration and hypochloremic, hypokalemic metabolic alkalosis.', 9);

-- Section 10: Clinical Pearls
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'clinical_pearls', 'Clinical Pearls',
'💡 **Pearl 1**: If the patient can speak clearly during NGT insertion, the tube is likely not in the trachea. However, this does not guarantee gastric placement—the tube could be coiled in the esophagus or pharynx.

💡 **Pearl 2**: The blue "pigtail" on a Salem sump tube is the air vent—keep it above the level of the stomach to prevent siphoning. Never inject medications or flush through it.

💡 **Pearl 3**: Chilling an NGT in ice water before insertion temporarily stiffens it, making passage through the nasopharynx easier. Let it warm briefly before advancing through the esophagus for comfort.

💡 **Pearl 4**: When removing an NGT, have the patient hold their breath and pinch the tube while withdrawing. This prevents aspiration of any remaining contents in the tube.

💡 **Pearl 5**: If a patient on tube feeds develops new cough, respiratory distress, or fever, consider tube migration. Check position before continuing feeds.

💡 **Pearl 6**: Medications must be given separately and with water flushes between each to prevent drug-drug interactions and tube occlusion. Avoid crushing extended-release or enteric-coated medications.

💡 **Pearl 7**: Post-pyloric feeding (tube tip beyond pylorus) reduces aspiration risk in high-risk patients. May require fluoroscopic or endoscopic placement.

💡 **Pearl 8**: In patients with expected need for enteral access >4-6 weeks, consider early gastrostomy or jejunostomy rather than prolonged NGT use.

💡 **Pearl 9**: The presence of bile in NGT aspirate confirms the tube is in the GI tract but does not distinguish between stomach and small bowel.

💡 **Pearl 10**: "Coffee-ground" aspirate indicates digested blood and suggests upper GI bleeding. Bright red blood requires urgent evaluation for active hemorrhage.', 10);

-- Section 11: References
INSERT INTO article_sections (article_id, section_type, title, content, section_order) VALUES
('a1100011-0000-0000-0000-000000000011', 'references', 'References', 'See reference list below.', 11);

-- Insert References
INSERT INTO article_references (article_id, reference_number, citation, doi, pubmed_id, url) VALUES
('a1100011-0000-0000-0000-000000000011', 1, 'National Patient Safety Agency. Reducing the harm caused by misplaced nasogastric feeding tubes in adults, children and infants. Patient Safety Alert NPSA/2011/PSA002. 2011.', NULL, NULL, NULL),
('a1100011-0000-0000-0000-000000000011', 2, 'Metheny NA. Preventing respiratory complications of tube feedings: evidence-based practice. Am J Crit Care. 2006;15(4):360-369.', NULL, '16823012', NULL),
('a1100011-0000-0000-0000-000000000011', 3, 'Sparks DA, et al. Pulmonary complications of 9931 nasogastric tubes. South Med J. 2011;104(2):140-144.', '10.1097/SMJ.0b013e318200670e', '21258232', NULL),
('a1100011-0000-0000-0000-000000000011', 4, 'Bourgault AM, et al. Obtaining accurate pH measurements from different nasogastric and orogastric tube sites. Am J Crit Care. 2015;24(2):e21-e27.', '10.4037/ajcc2015427', '25727280', NULL),
('a1100011-0000-0000-0000-000000000011', 5, 'Taylor SJ, et al. Confirming nasogastric tube position with pH and appearance of aspirate: what is the evidence? Intensive Crit Care Nurs. 2021;64:102989.', '10.1016/j.iccn.2020.102989', '33384220', NULL);

-- Insert Self-Assessment Questions (20 questions)
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 1,
'Which type of nasogastric tube can safely be used with continuous suction?',
'Levin tube',
'Salem sump tube',
'Dobhoff tube',
'Ewald tube',
'Any of the above',
'B',
'The Salem sump tube has a double-lumen design with a vent (blue pigtail) that allows atmospheric air to enter, preventing the tube from adhering to and damaging the gastric mucosa during continuous suction. The Levin tube (single-lumen) should only be used with intermittent suction.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 2,
'Which of the following is an absolute contraindication to nasogastric tube insertion?',
'Hiatal hernia',
'Esophageal varices (small bore tube)',
'Basilar skull fracture',
'Coagulopathy',
'Recent nasal surgery',
'C',
'Basilar skull fracture is an absolute contraindication due to the risk of intracranial placement through the fractured cribriform plate. Esophageal varices, coagulopathy, and recent nasal surgery are relative contraindications. Hiatal hernia is not a contraindication.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 3,
'The NEX measurement for NGT length estimation involves measuring from:',
'Nare to ear to xiphoid',
'Nose to elbow to xiphoid',
'Neck to ear to xiphoid',
'Nare to eye to xiphoid',
'Nose to ear to umbilicus',
'A',
'The NEX method measures from the Nose (nare) to the Earlobe to the Xiphoid process. This provides an approximate length for tube insertion to reach the stomach, typically 50-60 cm in adults.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 4,
'The auscultation or "whoosh" test for confirming NGT placement:',
'Is the gold standard for confirmation',
'Is reliable and should be used as primary confirmation',
'Is unreliable and should NOT be used as sole confirmation',
'Can only confirm pulmonary placement',
'Should be performed before pH testing',
'C',
'The auscultation or "whoosh" test (injecting air while listening over the stomach) is unreliable and should NOT be used as sole confirmation. Air injected into the lung or esophagus can sound similar to gastric placement. This method has been associated with undetected misplacements.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 5,
'A pH of 5.5 or less in NGT aspirate suggests:',
'Pulmonary placement',
'Esophageal placement',
'Gastric placement',
'Small bowel placement',
'Placement cannot be determined',
'C',
'A pH of 5.5 or less in NGT aspirate strongly suggests gastric placement, as gastric acid typically has a pH of 1-5.5. Respiratory secretions typically have pH >6, and intestinal secretions have pH 6-8.', '{4,5}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 6,
'What is the recommended position for a patient during NGT insertion?',
'Supine with neck extended',
'Left lateral decubitus',
'High Fowler''s with neck flexed forward',
'Trendelenburg position',
'Prone position',
'C',
'The optimal position for NGT insertion is High Fowler''s (90°) or at least 30-45° elevation, with the neck flexed forward (chin toward chest). This position facilitates swallowing, helps direct the tube posteriorly toward the esophagus rather than the trachea, and reduces aspiration risk.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 7,
'For a feeding tube (fine-bore), what is the gold standard for confirming placement before first use?',
'Auscultation of air injection',
'pH testing alone',
'X-ray confirmation',
'Clinical assessment',
'Observation of aspirate color',
'C',
'X-ray confirmation is MANDATORY (gold standard) for all feeding tubes before first use. Fine-bore tubes are more likely to enter the bronchus undetected and may not allow sufficient aspiration for pH testing. The consequences of feeding into the lungs are severe.', '{1,2,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 8,
'Which symptom during NGT insertion most strongly suggests tracheal misplacement?',
'Mild gagging',
'Brief coughing',
'Persistent coughing with cyanosis or inability to speak',
'Watering eyes',
'Swallowing difficulty',
'C',
'Persistent coughing, choking, cyanosis, or inability to speak during NGT insertion are warning signs of tracheal misplacement. The tube should be withdrawn immediately. Mild gagging and brief coughing can occur with correct esophageal passage.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 9,
'Prolonged high NGT output typically leads to which electrolyte abnormality?',
'Hyperchloremic metabolic acidosis',
'Hypochloremic metabolic alkalosis',
'Hyperkalemia',
'Respiratory acidosis',
'Hypercalcemia',
'B',
'Prolonged high NGT output causes loss of gastric acid (HCl), leading to hypochloremic, hypokalemic metabolic alkalosis. The loss of hydrogen ions (acid) causes alkalosis, while chloride and potassium are lost in gastric secretions.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 10,
'What should be done with the stylet of a fine-bore feeding tube?',
'Leave in place permanently for stability',
'Remove before insertion to improve flexibility',
'Remove only after X-ray confirms correct placement',
'Replace daily to maintain patency',
'Use to unclog the tube if obstructed',
'C',
'The stylet in a fine-bore feeding tube provides rigidity for insertion but must be removed ONLY after X-ray confirms correct position. Never reinsert a stylet into an in situ tube, as this poses a significant risk of esophageal or gastric perforation.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 11,
'How often should a feeding tube be flushed during continuous enteral feeding?',
'Once daily',
'Every 8 hours',
'Every 4 hours',
'Only before and after feeding',
'Weekly',
'C',
'During continuous enteral feeding, the tube should be flushed with 30 mL water every 4 hours to maintain patency. Additional flushes are needed before and after medications and when feeds are interrupted or discontinued.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 12,
'The blue "pigtail" on a Salem sump tube:',
'Should be clamped when not in use',
'Is used for medication administration',
'Is the air vent and should be kept above stomach level',
'Should be connected to the suction apparatus',
'Can be used for feeding if the main lumen is blocked',
'C',
'The blue pigtail on a Salem sump tube is the air vent that allows atmospheric pressure to prevent the tube from adhering to the gastric mucosa during continuous suction. It should be kept above the level of the stomach to prevent siphoning of gastric contents.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 13,
'Coffee-ground appearance of NGT aspirate indicates:',
'Normal gastric secretions',
'Bile reflux',
'Pulmonary placement',
'Upper gastrointestinal bleeding (digested blood)',
'Intestinal obstruction',
'D',
'Coffee-ground appearance in NGT aspirate indicates digested blood (old blood that has been exposed to gastric acid), suggesting upper gastrointestinal bleeding. This requires investigation for the source of bleeding. Bright red blood indicates fresh, active bleeding.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 14,
'When should NGT position be rechecked?',
'Only at initial insertion',
'Once daily',
'Before each use, after vomiting/coughing, and if marking position changes',
'Only if the patient complains',
'Weekly during prolonged use',
'C',
'NGT position should be verified: before each use for medications or feeding, at least every 4 hours during continuous feeding, after episodes of vomiting or coughing, after suctioning, and whenever the tube''s external marking appears to have moved.', '{1,2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 15,
'What is the typical French size for a nasogastric decompression tube in adults?',
'6-8 Fr',
'8-12 Fr',
'14-18 Fr',
'20-24 Fr',
'36-40 Fr',
'C',
'Adult decompression NGTs are typically 14-18 French in size. Feeding tubes are smaller (8-12 Fr) for comfort. Large-bore lavage tubes (36-40 Fr) are used for gastric lavage in overdose situations and are typically inserted orally.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 16,
'In a patient with mid-face trauma and suspected CSF leak, enteral access should be obtained via:',
'Nasogastric tube with extra care',
'Orogastric tube or surgical gastrostomy',
'Fine-bore nasojejunal tube',
'Standard NGT after CT scan',
'NGT with fluoroscopic guidance',
'B',
'Mid-face trauma with suspected CSF leak suggests a basilar skull fracture, which is an absolute contraindication to nasogastric intubation due to the risk of intracranial placement through the fractured cribriform plate. Enteral access should be via the orogastric route or surgical gastrostomy/jejunostomy.', '{1,3}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 17,
'Sinusitis as a complication of NGT occurs due to:',
'Bacterial contamination of the tube',
'Allergic reaction to tube material',
'Obstruction of sinus drainage',
'Direct trauma during insertion',
'Aspiration of gastric contents',
'C',
'NGT sinusitis occurs due to obstruction of sinus drainage pathways. The tube presence in the nasal cavity can obstruct the ostia of the paranasal sinuses, preventing normal drainage and predisposing to infection. Risk increases with prolonged tube placement.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 18,
'What head-of-bed elevation is recommended for patients with NGTs to reduce aspiration risk?',
'Flat (0 degrees)',
'15 degrees',
'30 degrees or higher',
'Trendelenburg',
'Position does not affect aspiration risk',
'C',
'Head-of-bed elevation of 30-45 degrees (semi-recumbent position) is recommended for all patients with NGTs, especially those receiving enteral feeding, to reduce the risk of gastroesophageal reflux and pulmonary aspiration.', '{2}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 19,
'When removing an NGT, the patient should be instructed to:',
'Breathe deeply and cough',
'Bear down as if having a bowel movement',
'Hold their breath',
'Swallow repeatedly',
'Pant rapidly',
'C',
'When removing an NGT, the patient should hold their breath (which closes the epiglottis) while the tube is withdrawn steadily and quickly in one motion. The tube should be pinched during removal to prevent aspiration of any remaining contents.', '{1}');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, reference_numbers) VALUES
('a1100011-0000-0000-0000-000000000011', 20,
'For patients requiring enteral access for more than 4-6 weeks, the preferred approach is:',
'Continue with nasogastric tube',
'Switch to nasojejunal tube',
'Consider gastrostomy or jejunostomy',
'Convert to parenteral nutrition',
'Use orogastric tube instead',
'C',
'For patients requiring enteral access for more than 4-6 weeks, gastrostomy (PEG) or jejunostomy should be considered rather than prolonged NGT use. Long-term NGT is associated with complications including sinusitis, nasal and esophageal erosion, patient discomfort, and increased aspiration risk.', '{1}');
