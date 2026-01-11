-- Surgery 4 MCQ Question Bank - Batch 47
-- Section H: Special Topics - Surgical Infections
-- 40 Questions

-- Topic: Surgical Infections
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000047-0000-0000-0000-000000000047', 'Surgical Infections', 'a0000004-0000-0000-0000-000000000004', 'Surgical site infections, necrotizing infections, and antimicrobial therapy', 47, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Surgical site infections are classified as:',
 'Only superficial', 'Superficial incisional deep incisional and organ/space', 'Only deep', 'Organ/space only', 'No classification exists',
 'B', 'SSI classification (CDC): superficial incisional (skin, subcutaneous), deep incisional (fascia, muscle), organ/space (any opened/manipulated space). Classification guides treatment and reporting.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Surgical site infection occurs within what timeframe after surgery:',
 '1 week', '30 days or 90 days if implant placed', '1 year', '48 hours', 'Any time after surgery',
 'B', 'SSI timing: within 30 days of surgery, or 90 days if implant/prosthesis placed. Must be related to operative procedure. Deep SSI may present later than superficial.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Risk factors for surgical site infection include:',
 'Youth and good nutrition', 'Diabetes obesity smoking prolonged surgery and contaminated wound', 'Short surgeries', 'Sterile wounds only', 'No identifiable factors',
 'B', 'SSI risk factors: patient (diabetes, obesity, smoking, immunosuppression, malnutrition, remote infection), procedure (duration, contamination class, emergency surgery, blood loss), wound (contaminated/dirty class).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Wound classification classes include:',
 'Only clean and dirty', 'Clean clean-contaminated contaminated and dirty/infected', 'Only contaminated', 'Sterile and non-sterile', 'No classification',
 'B', 'Wound classification: Class I (clean) - no entry to GI/GU/respiratory, Class II (clean-contaminated) - controlled entry, Class III (contaminated) - open trauma/spillage, Class IV (dirty) - pus, perforation, old trauma.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'A clean surgical wound has an expected infection rate of:',
 '10-15%', 'Less than 2%', '5-10%', '20%', 'Greater than 25%',
 'B', 'SSI rates by class: clean <2%, clean-contaminated 3-4%, contaminated 5-10%, dirty 10-40%. Clean wound has no entry into GI/GU/respiratory tracts, no inflammation, no break in technique.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'The most common organism causing surgical site infections is:',
 'E. coli', 'Staphylococcus aureus', 'Pseudomonas', 'Enterococcus', 'Candida',
 'B', 'SSI pathogens: S. aureus most common overall, especially in clean wounds. GI surgery: gram-negatives, anaerobes. MRSA significant concern. Coagulase-negative staph with implants. Polymicrobial in contaminated/dirty wounds.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Prophylactic antibiotics for surgery should be given:',
 '24 hours before surgery', 'Within 60 minutes before incision', '1 hour after incision', 'Only postoperatively', 'Never',
 'B', 'Surgical antibiotic prophylaxis: within 60 minutes before incision (120 min for vancomycin, fluoroquinolones - slow infusion). Redose if prolonged surgery. Discontinue within 24 hours. Goal: adequate tissue levels at incision.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'The most commonly used prophylactic antibiotic for clean surgical procedures is:',
 'Vancomycin', 'Cefazolin', 'Metronidazole', 'Ciprofloxacin', 'Ampicillin',
 'B', 'Cefazolin: first-generation cephalosporin, standard for most clean/clean-contaminated procedures. Covers S. aureus, streptococci, some gram-negatives. Add metronidazole for colorectal (anaerobes). Vancomycin if MRSA colonized or beta-lactam allergy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Redosing of prophylactic antibiotics is indicated during surgery for:',
 'All surgeries', 'Procedures lasting longer than two half-lives of the antibiotic or significant blood loss', 'Short procedures', 'Only clean wounds', 'Never indicated',
 'B', 'Antibiotic redosing: every 2 half-lives (cefazolin every 4 hours) or with significant blood loss (>1.5 L). Maintains adequate tissue levels throughout surgery. Prolonged operations at higher SSI risk without redosing.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'SSI prevention bundle elements include:',
 'Only antibiotics', 'Appropriate prophylaxis hair removal with clippers normothermia and glycemic control', 'Only sterile technique', 'Only wound care', 'No evidence-based measures',
 'B', 'SSI prevention bundle: appropriate antibiotic prophylaxis (timing, agent, duration), clip not shave, maintain normothermia, glycemic control, skin prep (chlorhexidine-alcohol), proper hand hygiene, sterile technique.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Chlorhexidine-alcohol skin preparation is preferred because:',
 'It is cheaper', 'It provides superior reduction in skin flora compared to povidone-iodine', 'It is more colorful', 'It is less effective', 'No difference exists',
 'B', 'Chlorhexidine-alcohol: superior to aqueous povidone-iodine for SSI prevention (major trials). Persistent activity, rapid bactericidal. Avoid near eyes, ears, mucous membranes. Fire risk with alcohol - let dry.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Treatment of superficial SSI typically involves:',
 'IV antibiotics only', 'Opening the wound for drainage and local wound care', 'Immediate reoperation', 'Observation only', 'Systemic steroids',
 'B', 'Superficial SSI treatment: open wound, drain purulence, local wound care (packing, dressing changes). Antibiotics if surrounding cellulitis or systemic signs. Often heals by secondary intention or delayed primary closure.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Deep SSI or organ/space infection typically requires:',
 'Antibiotics alone', 'Source control with drainage or reoperation plus antibiotics', 'Observation', 'Topical treatment only', 'Wound care alone',
 'B', 'Deep/organ-space SSI: requires source control (CT-guided drainage, operative drainage/debridement) plus appropriate antibiotics. Collections must be drained. Antibiotics alone insufficient without adequate source control.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Necrotizing soft tissue infection is:',
 'A benign cellulitis', 'A rapidly progressive life-threatening infection requiring emergent surgery', 'Treated with antibiotics alone', 'Always localized', 'Slowly progressive',
 'B', 'NSTI: aggressive, rapidly spreading infection with necrosis. Types: Type I (polymicrobial), Type II (monomicrobial, usually Group A strep or S. aureus), Type III (gas gangrene - Clostridium). Surgical emergency.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Clinical signs of necrotizing fasciitis include:',
 'Mild localized erythema', 'Pain out of proportion to exam crepitus rapid progression and systemic toxicity', 'Slow progression', 'Normal vital signs', 'Superficial appearance',
 'B', 'NSTI clinical features: pain out of proportion, woody induration, crepitus (gas), bullae, skin necrosis, rapid progression, systemic toxicity (fever, tachycardia, hypotension). "Pain out of proportion" is key early finding.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'The most important treatment for necrotizing fasciitis is:',
 'High-dose antibiotics', 'Emergent surgical debridement of all necrotic tissue', 'Hyperbaric oxygen', 'Observation', 'CT scan',
 'B', 'NSTI treatment: emergent aggressive surgical debridement - cornerstone of treatment. Remove all necrotic tissue, return to OR for re-exploration until margins clear. Broad-spectrum antibiotics. Supportive care. Delay in surgery = increased mortality.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Fournier gangrene is:',
 'A benign condition', 'Necrotizing fasciitis of the perineum and genitalia', 'Only affects females', 'Slowly progressive', 'Treated medically',
 'B', 'Fournier gangrene: NSTI of perineum/genitalia. Polymicrobial. Risk factors: diabetes, immunosuppression, perirectal disease. High mortality. Requires emergent debridement, fecal diversion may be needed, broad antibiotics.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Gas gangrene (clostridial myonecrosis) is caused by:',
 'Staphylococcus', 'Clostridium perfringens', 'E. coli', 'Streptococcus', 'Pseudomonas',
 'B', 'Gas gangrene: Clostridium perfringens (most common), C. septicum (associated with malignancy). Produces alpha toxin (lecithinase). Rapid onset, severe pain, gas in tissues, bronze discoloration. Emergent debridement, high-dose penicillin.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Tetanus is caused by:',
 'Staphylococcus aureus', 'Clostridium tetani', 'Clostridium perfringens', 'Streptococcus pyogenes', 'E. coli',
 'B', 'Tetanus: C. tetani spores in soil. Toxin (tetanospasmin) blocks inhibitory neurotransmitters. Muscle spasms, trismus (lockjaw), opisthotonus. Prevention: vaccination (Td, Tdap). Treatment: wound care, TIG, antibiotics, supportive.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Tetanus prophylaxis for a dirty wound in a patient with unknown vaccination status includes:',
 'Vaccine only', 'Tetanus vaccine plus tetanus immunoglobulin', 'Immunoglobulin only', 'No prophylaxis needed', 'Observation only',
 'B', 'Tetanus prophylaxis (dirty wound, unknown/incomplete vaccination): Tdap/Td vaccine PLUS tetanus immune globulin (TIG). TIG provides immediate passive immunity. For clean wounds or complete vaccination, TIG usually not needed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'MRSA (methicillin-resistant Staphylococcus aureus) SSI is treated with:',
 'Cefazolin', 'Vancomycin daptomycin or linezolid', 'Penicillin', 'Ampicillin', 'First-generation cephalosporin',
 'B', 'MRSA treatment: vancomycin (IV), daptomycin (not for pneumonia), linezolid (oral/IV option). TMP-SMX, doxycycline for less severe. Source control essential. Duration based on infection type and response.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Intra-abdominal abscess is best treated with:',
 'Antibiotics alone', 'Percutaneous drainage or surgical drainage plus antibiotics', 'Observation', 'Oral antibiotics only', 'No drainage needed',
 'B', 'Intra-abdominal abscess: source control essential. Percutaneous CT/US-guided drainage if accessible. Surgical drainage if not drainable percutaneously or if operative source control needed. Antibiotics alone insufficient.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Empiric antibiotic coverage for intra-abdominal infections should include:',
 'Only gram-positive coverage', 'Gram-negative aerobes and anaerobes', 'Only anaerobic coverage', 'Fungal coverage only', 'No specific coverage',
 'B', 'Intra-abdominal infection coverage: gram-negative aerobes (E. coli, Klebsiella) + anaerobes (Bacteroides fragilis). Regimens: piperacillin-tazobactam, or cephalosporin + metronidazole, or carbapenem. Enterococcus coverage if healthcare-associated.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Clostridium difficile infection:',
 'Is treated with more antibiotics', 'Is triggered by antibiotic use and presents with diarrhea and colitis', 'Never causes colitis', 'Is not hospital-associated', 'Only affects immunocompromised',
 'B', 'C. difficile: antibiotic-associated colitis. Disrupted flora allows C. diff overgrowth. Toxin-mediated (toxins A and B). Diarrhea, abdominal pain, leukocytosis, pseudomembranes. Risk: hospitalization, antibiotics, elderly, PPI.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'First-line treatment for initial episode of C. difficile infection is:',
 'IV vancomycin', 'Oral vancomycin or fidaxomicin', 'Oral metronidazole', 'IV metronidazole', 'No treatment',
 'B', 'C. diff treatment: oral vancomycin (125 mg QID) or fidaxomicin (first-line per current guidelines). Metronidazole now second-line only. Duration 10-14 days. Stop offending antibiotic if possible. Recurrence common.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Fulminant C. difficile colitis with toxic megacolon may require:',
 'Observation', 'Total abdominal colectomy with end ileostomy', 'Antibiotics alone', 'Partial colectomy', 'Endoscopy',
 'B', 'Fulminant C. diff: medical emergency. Signs: toxic megacolon, perforation, shock, multi-organ failure. Surgical consultation. Total abdominal colectomy with end ileostomy if deteriorating. Newer: diverting loop ileostomy with colonic lavage.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Prosthetic mesh infection after hernia repair:',
 'Never occurs', 'May require mesh removal especially with deep infection', 'Is treated with antibiotics alone', 'Heals spontaneously', 'Is very common',
 'B', 'Mesh infection: superficial may respond to antibiotics and wound care. Deep/chronic infection often requires mesh explantation (especially synthetic mesh). Biologic mesh may be salvaged. Staged repair after infection cleared.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Infected vascular graft:',
 'Is treated with antibiotics only', 'May require graft removal and extra-anatomic bypass', 'Is always salvageable', 'Never occurs', 'Is treated with observation',
 'B', 'Vascular graft infection: serious complication. Options: graft preservation (debridement, antibiotics, muscle flap), complete excision with extra-anatomic bypass, in-situ reconstruction with rifampin-soaked graft or vein. High morbidity/mortality.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Catheter-related bloodstream infection treatment includes:',
 'Leave catheter in place', 'Remove the catheter and provide appropriate antibiotics', 'Antibiotics through the catheter only', 'Change over guidewire', 'Observation',
 'B', 'CRBSI treatment: remove catheter (most important step). Culture catheter tip. Blood cultures. Antibiotics based on likely/confirmed organism. Duration depends on organism and complications (no complications: S. aureus 14 days, others shorter).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Antibiotic-resistant organisms in surgical infections:',
 'Are decreasing', 'Include MRSA VRE ESBL and CRE and require specific antibiotic selection', 'Are not a concern', 'Are always community-acquired', 'Do not affect outcomes',
 'B', 'MDR organisms: MRSA (vancomycin), VRE (linezolid, daptomycin), ESBL (carbapenems), CRE (ceftazidime-avibactam, meropenem-vaborbactam). Increasing prevalence. Source control remains essential. Infectious disease consultation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Antibiotic stewardship in surgical infections emphasizes:',
 'Using broadest spectrum always', 'Appropriate selection de-escalation and limiting duration', 'Continuing antibiotics indefinitely', 'No need for cultures', 'Maximum duration therapy',
 'B', 'Antibiotic stewardship: right drug, dose, duration. Start empiric, obtain cultures, de-escalate based on culture results. Limit unnecessary duration. Source control reduces antibiotic need. Reduces resistance, C. diff, adverse effects.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Duration of antibiotics for complicated intra-abdominal infections with adequate source control:',
 '14-21 days', '4-7 days', '1 day', '30 days', 'Until inflammatory markers normalize',
 'B', 'Antibiotic duration: STOP-IT trial showed 4 days after source control as effective as longer courses for complicated intra-abdominal infection. Short course with adequate source control. Reduces resistance, adverse effects.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Surgical prophylaxis for colorectal surgery includes:',
 'Cefazolin alone', 'Agent with gram-negative and anaerobic coverage such as cefazolin plus metronidazole', 'No prophylaxis needed', 'Vancomycin alone', 'Antifungals',
 'B', 'Colorectal prophylaxis: cover gram-negatives and anaerobes. Cefazolin + metronidazole, or cefoxitin, or ertapenem. Oral antibiotics (neomycin + erythromycin or metronidazole) with mechanical bowel prep controversial but often used.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Hand infection with paronychia involving the nail fold is treated by:',
 'Oral antibiotics only', 'Drainage often with partial nail removal if abscess extends beneath nail', 'Observation', 'Amputation', 'IV antibiotics',
 'B', 'Paronychia: nail fold infection. Early: warm soaks, antibiotics. Abscess: incision and drainage. If extends beneath nail (subungual), partial or complete nail removal needed for drainage. Cover S. aureus, consider MRSA.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Felon (fingertip pulp infection) requires:',
 'Antibiotics alone', 'Incision and drainage to release pressure in closed compartment', 'Observation', 'Warm soaks only', 'Amputation',
 'B', 'Felon: pulp space infection of fingertip. Closed compartment - pressure causes necrosis, osteomyelitis risk. I&D essential - longitudinal or fish-mouth incision. Antibiotics. Cover S. aureus.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Flexor tenosynovitis is characterized by the Kanavel signs:',
 'One sign only', 'Fusiform swelling tenderness along flexor sheath pain with passive extension and flexed posture', 'No specific signs', 'Localized swelling only', 'Extension posture',
 'B', 'Kanavel signs for flexor tenosynovitis: 1) Fusiform swelling, 2) Tenderness along flexor tendon sheath, 3) Pain with passive extension, 4) Flexed posture. Surgical emergency - emergent drainage and irrigation to prevent tendon necrosis.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Human bite wounds:',
 'Rarely get infected', 'Have high infection rate and often involve polymicrobial flora including Eikenella', 'Should be closed primarily', 'Only need cleaning', 'Are less serious than animal bites',
 'B', 'Human bite infection rate high (especially closed-fist/"fight bite"). Polymicrobial: streptococci, S. aureus, anaerobes, Eikenella corrodens. Treatment: copious irrigation, debridement, leave open, amoxicillin-clavulanate. Assess for joint/tendon involvement.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Dog or cat bite wounds may become infected with:',
 'Only anaerobes', 'Pasteurella multocida in addition to other oral flora', 'Sterile bacteria', 'Only gram-negatives', 'Only gram-positives',
 'B', 'Animal bite infections: Pasteurella multocida (cats > dogs), streptococci, staphylococci, anaerobes. Cat bites high infection rate (puncture wounds). Dog bites - Capnocytophaga (immunocompromised). Treatment: irrigation, amoxicillin-clavulanate.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000047-0000-0000-0000-000000000047', 'a0000004-0000-0000-0000-000000000004',
 'Osteomyelitis following open fracture or surgical contamination:',
 'Is rare', 'May require prolonged antibiotics and surgical debridement', 'Is treated with short antibiotics', 'Never requires surgery', 'Heals spontaneously',
 'B', 'Post-traumatic/post-surgical osteomyelitis: biofilm on bone/hardware. Treatment: surgical debridement, hardware removal if loose (may need staged reconstruction), prolonged IV antibiotics (6 weeks or longer). Often requires multidisciplinary approach.', 'medium', 'knowledge');
