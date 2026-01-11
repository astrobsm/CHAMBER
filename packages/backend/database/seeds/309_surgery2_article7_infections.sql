-- Surgery 2 Article 7: Common Surgical Infections - Sections and MCQs

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000007-0000-0000-0000-000000000007'::uuid, 'introduction', 1, 'Introduction to Surgical Infections', 
'Surgical site infections (SSIs) and other surgical infections remain a major cause of morbidity and mortality. Understanding their prevention, recognition, and management is fundamental to surgical practice.

**Definition**
Surgical Site Infection (SSI): Infection occurring within 30 days of surgery (or 1 year if implant placed) involving the incision or deep tissues.

**Classification of SSIs**

1. **Superficial Incisional SSI**
   - Involves skin and subcutaneous tissue only
   - Occurs within 30 days
   - Purulent drainage, pain, redness, swelling
   
2. **Deep Incisional SSI**
   - Involves fascia and muscle layers
   - Purulent drainage from deep incision
   - Wound dehiscence with fever

3. **Organ/Space SSI**
   - Involves any organ or space opened during surgery
   - Examples: Intra-abdominal abscess, empyema

**Epidemiology**
- SSI affects 2-5% of surgical patients
- Third most common nosocomial infection
- Prolongs hospital stay by 7-10 days
- Increases mortality 2-11 fold
- Significant healthcare costs'),

('d0000007-0000-0000-0000-000000000007'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Define and classify surgical site infections
2. Understand wound classification by contamination level
3. Identify risk factors for surgical infection
4. Apply principles of surgical prophylaxis
5. Recognize common pathogens in surgical infections
6. Diagnose and manage superficial and deep SSIs
7. Recognize necrotizing soft tissue infections
8. Manage intra-abdominal abscess and sepsis
9. Understand tetanus prophylaxis
10. Apply infection prevention strategies'),

('d0000007-0000-0000-0000-000000000007'::uuid, 'content', 3, 'Wound Classification and Risk Factors',
'**Wound Classification by Contamination**

| Class | Description | SSI Risk | Examples |
|-------|-------------|----------|----------|
| Clean | No inflammation, no hollow viscus entered | 1-2% | Hernia repair, thyroidectomy |
| Clean-contaminated | Hollow viscus entered with minimal spillage | 5-10% | Cholecystectomy, elective bowel surgery |
| Contaminated | Gross spillage, acute inflammation | 15-20% | Penetrating trauma, large bowel spillage |
| Dirty | Established infection, pus, dead tissue | 30-40% | Abscess drainage, perforated viscus |

**Patient Risk Factors**
- Extremes of age
- Obesity (BMI >30)
- Diabetes mellitus
- Smoking
- Malnutrition
- Immunosuppression
- Remote infection
- Prolonged preoperative stay
- ASA score ≥3

**Surgical Risk Factors**
- Duration of surgery (risk doubles every hour after 2 hours)
- Emergency surgery
- Poor surgical technique
- Inadequate hemostasis
- Foreign body/implant
- Hypothermia
- Tissue hypoxia
- Inadequate prophylaxis

**Prevention Strategies**
- Preoperative: Optimize glucose, treat remote infections, MRSA screening, chlorhexidine bathing
- Intraoperative: Appropriate prophylaxis, maintain normothermia, minimize tissue trauma
- Postoperative: Early mobilization, proper wound care, remove drains/catheters early'),

('d0000007-0000-0000-0000-000000000007'::uuid, 'content', 4, 'Surgical Antimicrobial Prophylaxis',
'**Principles of Prophylaxis**
- Goal: Adequate tissue antibiotic levels at time of incision
- Timing: Within 60 minutes before incision (120 min for vancomycin/fluoroquinolones)
- Duration: Single dose usually sufficient; redose for prolonged surgery
- Spectrum: Target expected pathogens, not broad coverage

**Prophylaxis by Procedure**

| Procedure | Recommended Agent | Alternative |
|-----------|------------------|-------------|
| Clean (no prosthesis) | Not indicated | - |
| Clean with implant | Cefazolin | Vancomycin (if MRSA risk) |
| Clean-contaminated (GI, biliary) | Cefazolin + Metronidazole | Amox-Clav |
| Colorectal | Cefazolin + Metronidazole | Ertapenem |
| Appendectomy | Cefazolin + Metronidazole | Amox-Clav |

**Redosing During Surgery**
Redose if:
- Surgery exceeds 2 half-lives of antibiotic
- Major blood loss (>1500mL)

Examples:
- Cefazolin: Redose every 4 hours
- Metronidazole: Redose every 6-8 hours

**Duration**
- Most procedures: Single dose (or complete within 24 hours)
- Cardiac surgery: Up to 48 hours
- No evidence for extended prophylaxis in drains/catheters'),

('d0000007-0000-0000-0000-000000000007'::uuid, 'content', 5, 'Common Surgical Infections',
'**Wound Infections**

*Superficial SSI*
- Presents: Days 5-10 postoperatively
- Signs: Erythema, swelling, purulent discharge
- Treatment: Open wound, drain pus, wound care; antibiotics if cellulitis

*Deep SSI*
- Presents: Days 7-14 postoperatively
- Signs: Fever, localized pain, possible wound breakdown
- Treatment: Debridement, drainage, antibiotics, consider imaging

**Intra-abdominal Abscess**
- Common after colorectal surgery or perforated viscus
- Presents: Fever, ileus, localized tenderness
- Diagnosis: CT scan with contrast
- Treatment: CT-guided drainage preferred; surgery if inaccessible

**Necrotizing Soft Tissue Infections (NSTI)**
Life-threatening emergency!

Types:
- Type I: Polymicrobial (mixed aerobic/anaerobic)
- Type II: Monomicrobial (Group A Strep, Staph aureus)
- Type III: Clostridial (gas gangrene)

Clinical features:
- Pain out of proportion to findings
- Rapid progression
- Systemic toxicity (fever, tachycardia, hypotension)
- Skin changes: Erythema → purple/black → bullae → crepitus

Management:
- Urgent surgical debridement (life-saving!)
- IV broad-spectrum antibiotics
- ICU care
- Repeat debridement as needed
- High mortality (20-40%)'),

('d0000007-0000-0000-0000-000000000007'::uuid, 'content', 6, 'Tetanus and Special Infections',
'**Tetanus**
Caused by Clostridium tetani (anaerobic, spore-forming)
Toxin: Tetanospasmin - blocks inhibitory neurotransmitters

Risk wounds:
- Puncture wounds
- Contaminated wounds (soil, feces)
- Burns
- Crush injuries
- Wounds >6 hours old

Clinical features:
- Trismus (lockjaw) - earliest sign
- Risus sardonicus (sardonic smile)
- Opisthotonus (arched back)
- Generalized spasms

Prevention - Tetanus Prophylaxis:
| Wound | Fully Vaccinated (<5y ago) | Partial/Unknown Vaccination |
|-------|---------------------------|----------------------------|
| Clean | No treatment | Td vaccine |
| Tetanus-prone | Td vaccine if >5 years | Td vaccine + TIG |

TIG = Tetanus Immunoglobulin (provides passive immunity)

Treatment:
- ICU care
- TIG (3000-6000 units)
- Wound debridement
- Antibiotics (metronidazole)
- Muscle relaxants, sedation
- Airway management (often intubation needed)

**Gas Gangrene (Clostridial Myonecrosis)**
- Clostridium perfringens most common
- Presents: Rapid onset severe pain, swelling, crepitus
- Bronze/brown discoloration, foul discharge
- X-ray: Gas in soft tissues
- Treatment: Urgent debridement + high-dose penicillin
- Hyperbaric oxygen may be adjunctive'),

('d0000007-0000-0000-0000-000000000007'::uuid, 'key_points', 7, 'Key Points',
'1. SSI classification: Superficial, Deep incisional, Organ/Space
2. Wound classification: Clean (1-2%), Clean-contaminated (5-10%), Contaminated (15-20%), Dirty (30-40%)
3. Prophylaxis timing: Within 60 minutes of incision
4. Single-dose prophylaxis is adequate for most procedures
5. Necrotizing fasciitis is a surgical emergency - urgent debridement saves lives
6. Pain out of proportion to findings is a red flag for NSTI
7. Gas gangrene (clostridial myonecrosis) - debridement + high-dose penicillin
8. Tetanus prophylaxis: Td vaccine ± TIG based on vaccination status and wound type
9. CT-guided drainage is first-line for accessible intra-abdominal abscess
10. Prevention: Normothermia, glucose control, minimize tissue trauma, appropriate prophylaxis');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000007-0000-0000-0000-000000000007'::uuid, 1,
'What is the SSI risk for a clean surgical wound?',
'Less than 1%', '1-2%', '5-10%', '15-20%', '30-40%',
'B', 'Clean wounds (no hollow viscus entered, no inflammation) have an SSI risk of 1-2%. Examples include hernia repair, thyroidectomy, and mastectomy. Prophylactic antibiotics are generally not indicated for clean surgery without implant.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 2,
'When should prophylactic antibiotics be administered relative to incision?',
'2 hours before incision', 'Within 60 minutes before incision', 'At the time of incision', '30 minutes after incision', '2 hours after incision',
'B', 'Prophylactic antibiotics should be given within 60 minutes before incision to ensure adequate tissue levels at the time of surgery. Vancomycin and fluoroquinolones require 120 minutes due to longer infusion times.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 3,
'Which combination is appropriate prophylaxis for colorectal surgery?',
'Cefazolin alone', 'Metronidazole alone', 'Cefazolin plus Metronidazole', 'Vancomycin alone', 'Gentamicin alone',
'C', 'Colorectal surgery requires coverage for gram-negative organisms (cefazolin) AND anaerobes (metronidazole). This combination provides appropriate coverage for colonic flora. Single-agent alternatives include amoxicillin-clavulanate or ertapenem.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 4,
'A patient presents with rapidly spreading cellulitis, pain out of proportion to findings, and crepitus. What is the most likely diagnosis?',
'Simple cellulitis', 'Deep abscess', 'Necrotizing soft tissue infection', 'Superficial SSI', 'Erysipelas',
'C', 'Necrotizing soft tissue infection (necrotizing fasciitis) presents with rapid progression, pain out of proportion to physical findings, and crepitus (gas in tissues). This is a surgical emergency requiring urgent debridement.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 5,
'What is the most important treatment for necrotizing fasciitis?',
'IV antibiotics alone', 'Hyperbaric oxygen', 'Urgent surgical debridement', 'Observation and serial examination', 'Skin grafting',
'C', 'Urgent surgical debridement is the most important and life-saving treatment for necrotizing fasciitis. Every hour of delay increases mortality. Antibiotics and supportive care are essential adjuncts, but surgery takes priority.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 6,
'What is the earliest clinical sign of tetanus?',
'Risus sardonicus', 'Trismus (lockjaw)', 'Opisthotonus', 'Generalized spasms', 'Respiratory failure',
'B', 'Trismus (lockjaw) - spasm of the masseter muscles - is the earliest and most common presenting sign of tetanus, occurring in 75% of cases. It is followed by risus sardonicus (sardonic smile) and generalized spasms.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 7,
'What is TIG used for in tetanus prophylaxis?',
'Active immunization', 'Passive immunization', 'Treatment of spasms', 'Antibiotic effect', 'Wound healing',
'B', 'TIG (Tetanus Immunoglobulin) provides passive immunization by supplying preformed antibodies against tetanus toxin. It gives immediate but temporary protection and is used in tetanus-prone wounds when vaccination status is incomplete or unknown.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 8,
'Crepitus on palpation of an infected wound suggests:',
'Superficial infection only', 'Deep space infection', 'Gas-forming organisms', 'Viral infection', 'Fungal infection',
'C', 'Crepitus (crackling/popping on palpation) indicates the presence of gas in the soft tissues, produced by gas-forming organisms such as Clostridium species (gas gangrene) or mixed aerobic-anaerobic bacteria. This is a sign of serious infection.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 9,
'What is the antibiotic of choice for gas gangrene (clostridial myonecrosis)?',
'Vancomycin', 'Metronidazole', 'High-dose penicillin', 'Ciprofloxacin', 'Erythromycin',
'C', 'High-dose intravenous penicillin is the antibiotic of choice for gas gangrene caused by Clostridium perfringens. Clindamycin is often added as it inhibits toxin production. However, surgical debridement remains the primary treatment.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 10,
'What is the mortality rate for necrotizing soft tissue infections even with treatment?',
'Less than 5%', '5-10%', '20-40%', '50-70%', 'Over 80%',
'C', 'Despite aggressive treatment, mortality for necrotizing soft tissue infections remains 20-40%. Mortality increases significantly with delayed treatment. Early recognition and immediate debridement are crucial for survival.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 11,
'How often should cefazolin be redosed during prolonged surgery?',
'Every 2 hours', 'Every 4 hours', 'Every 6 hours', 'Every 8 hours', 'No redosing needed',
'B', 'Cefazolin should be redosed every 4 hours during prolonged surgery (or after major blood loss >1500mL). This maintains adequate tissue antibiotic levels throughout the procedure. The 4-hour interval corresponds to approximately 2 half-lives.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 12,
'What is the preferred treatment for accessible postoperative intra-abdominal abscess?',
'IV antibiotics alone', 'Open surgical drainage', 'CT-guided percutaneous drainage', 'Laparoscopic drainage', 'Observation',
'C', 'CT-guided percutaneous drainage is the preferred first-line treatment for accessible intra-abdominal abscesses. It is less invasive than surgery with similar success rates. Surgical drainage is reserved for inaccessible collections or failed percutaneous attempts.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 13,
'What surgical risk factor doubles infection risk for every hour after 2 hours?',
'Blood loss', 'Duration of surgery', 'Number of personnel', 'Type of incision', 'Drain placement',
'B', 'Duration of surgery is a significant risk factor - SSI risk approximately doubles for every hour of surgery beyond 2 hours. This is due to prolonged tissue exposure, desiccation, decreased antibiotic levels, and accumulated contamination.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 14,
'Type II necrotizing fasciitis is most commonly caused by:',
'Polymicrobial organisms', 'Group A Streptococcus', 'Clostridium perfringens', 'Pseudomonas aeruginosa', 'Escherichia coli',
'B', 'Type II necrotizing fasciitis is monomicrobial, most commonly caused by Group A Streptococcus (Streptococcus pyogenes) or Staphylococcus aureus. Type I is polymicrobial (mixed aerobic/anaerobic), and Type III is clostridial.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 15,
'When are prophylactic antibiotics NOT indicated?',
'Clean surgery without implant', 'Cholecystectomy', 'Colorectal surgery', 'Hernia repair with mesh', 'Appendectomy',
'A', 'Prophylactic antibiotics are NOT indicated for clean surgery without an implant (e.g., thyroidectomy, simple hernia repair without mesh). The low infection rate (1-2%) does not justify routine antibiotic use. Clean surgery with implants does require prophylaxis.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 16,
'Superficial SSI typically presents at what time postoperatively?',
'Days 1-2', 'Days 5-10', 'Days 14-21', 'After 30 days', 'Day of surgery',
'B', 'Superficial SSI typically presents 5-10 days postoperatively with erythema, swelling, and purulent discharge. Very early presentation (day 1-2) may suggest streptococcal or clostridial infection. Deep SSI presents slightly later (days 7-14).'),

('d0000007-0000-0000-0000-000000000007'::uuid, 17,
'Which patient factor most significantly increases SSI risk?',
'Female gender', 'Obesity (BMI >30)', 'Blood type O', 'Exercise habits', 'Left-handedness',
'B', 'Obesity (BMI >30) significantly increases SSI risk due to poor tissue perfusion, larger wound size, longer operation time, and metabolic factors. Other important risk factors include diabetes, smoking, and immunosuppression.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 18,
'What is the treatment for simple superficial wound infection with no cellulitis?',
'IV antibiotics', 'Oral antibiotics alone', 'Open wound and drain pus, wound care only', 'Surgical debridement under anesthesia', 'Hyperbaric oxygen',
'C', 'Simple superficial wound infection without cellulitis is treated by opening the wound, draining pus, and wound care (dressings, irrigation). Antibiotics are not needed unless there is surrounding cellulitis. The key principle is drainage.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 19,
'What intraoperative intervention reduces SSI risk?',
'Maintaining normothermia', 'Using silk sutures', 'Extended OR time', 'Reduced ventilation', 'Using non-sterile gloves',
'A', 'Maintaining normothermia (avoiding hypothermia) reduces SSI risk by preserving tissue perfusion and immune function. Other protective measures include maintaining euglycemia, minimizing tissue trauma, and appropriate prophylaxis.'),

('d0000007-0000-0000-0000-000000000007'::uuid, 20,
'What is the infection risk for a dirty/infected wound?',
'1-2%', '5-10%', '15-20%', '30-40%', '70-80%',
'D', 'Dirty/infected wounds (established infection, pus, perforated viscus, dead tissue) have the highest SSI risk at 30-40%. Examples include drainage of abscess or surgery for perforated appendicitis with peritonitis.');
