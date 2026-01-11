-- ============================================================================
-- SURGERY 3 CME ARTICLE 18: Surgical Infections
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000084-0000-0000-0000-000000000084', 'a0000003-0000-0000-0000-000000000003', 'Surgical Infections', 'Wound infections, abscesses and necrotizing soft tissue infections')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000318-0000-0000-0000-000000000018',
    'c0000084-0000-0000-0000-000000000084',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Infections: Diagnosis and Management',
    'SSI, Abscess, Necrotizing Fasciitis and Tetanus',
    'This article covers surgical site infection classification and management, abscess drainage principles, necrotizing soft tissue infections, gas gangrene, tetanus prophylaxis and treatment, and antibiotic principles in surgical infections including source control.',
    'Department of Surgery, UNTH',
    2.5,
    25,
    'medium'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000318-0001-0000-0000-000000000001', 'd0000318-0000-0000-0000-000000000018', 1,
'Surgical wounds are classified by degree of contamination. A cholecystectomy for chronic cholecystitis without spillage is classified as:',
'Clean', 'Clean-contaminated', 'Contaminated', 'Dirty/Infected', NULL,
'B', 'Wound classification: Clean - no entry into GI/GU/respiratory tract (hernia repair, thyroidectomy); Clean-contaminated - controlled entry into GI/GU/respiratory tract without significant spillage (elective cholecystectomy, bowel resection with prep); Contaminated - gross spillage, open trauma <4 hours, acute inflammation; Dirty/Infected - pus, perforated viscus, old trauma. SSI rates increase with class.', 'easy'),

('e0000318-0002-0000-0000-000000000002', 'd0000318-0000-0000-0000-000000000018', 2,
'A surgical site infection (SSI) is classified as superficial incisional if it:',
'Involves the organ or body cavity', 'Involves only skin and subcutaneous tissue within 30 days of surgery', 'Involves deep tissues (muscle, fascia)', 'Occurs more than 1 year after surgery', NULL,
'B', 'SSI classification (CDC): Superficial incisional - skin and subcutaneous tissue, within 30 days; Deep incisional - deep soft tissues (fascia, muscle), within 30 days (or 90 days if implant); Organ/space - any part of anatomy opened/manipulated during operation, within 30 days (or 90 days if implant). Management differs: superficial - open and drain; deep - often needs OR; organ/space - source control.', 'easy'),

('e0000318-0003-0000-0000-000000000003', 'd0000318-0000-0000-0000-000000000018', 3,
'The principle of source control in surgical infection management means:',
'Using the strongest available antibiotics', 'Physical measures to eliminate the source of infection (drainage, debridement, resection)', 'Bed rest and observation', 'Increasing antibiotic duration', NULL,
'B', 'Source control is fundamental to managing surgical infections. It involves physical measures to eliminate infection source: drainage of abscess/collections, debridement of necrotic tissue, resection of infected organs (appendectomy, cholecystectomy), repair of perforations, removal of infected devices. Antibiotics alone are insufficient without source control for most surgical infections.', 'easy'),

('e0000318-0004-0000-0000-000000000004', 'd0000318-0000-0000-0000-000000000018', 4,
'Necrotizing fasciitis is characterized by:',
'Superficial skin infection responding to oral antibiotics', 'Rapidly spreading infection along fascial planes with tissue necrosis and systemic toxicity', 'Chronic non-healing wound', 'Benign subcutaneous abscess', NULL,
'B', 'Necrotizing fasciitis is a surgical emergency with rapid spread along fascial planes, extensive necrosis, and high mortality (20-40%). Signs: pain out of proportion, rapid progression, crepitus, skin necrosis, bullae, systemic toxicity (fever, shock). LRINEC score aids diagnosis. Treatment: immediate aggressive surgical debridement (often multiple operations), broad-spectrum antibiotics, ICU support. Common types: Type I (polymicrobial), Type II (GAS).', 'easy'),

('e0000318-0005-0000-0000-000000000005', 'd0000318-0000-0000-0000-000000000018', 5,
'Gas gangrene (clostridial myonecrosis) is caused by:',
'Staphylococcus aureus', 'Clostridium perfringens and other clostridia', 'Escherichia coli', 'Streptococcus pyogenes', NULL,
'B', 'Gas gangrene is caused by Clostridium species (perfringens most common, also septicum, novyi, histolyticum). Produces alpha toxin (lecithinase) causing myonecrosis. Presents with severe pain, rapid progression, bronze/dusky skin, crepitus, thin dishwater discharge, shock. Treatment: immediate extensive surgical debridement, high-dose penicillin + clindamycin, hyperbaric oxygen (adjunctive). Mortality 25-50%.', 'medium'),

('e0000318-0006-0000-0000-000000000006', 'd0000318-0000-0000-0000-000000000018', 6,
'Tetanus is caused by the toxin produced by:',
'Clostridium perfringens', 'Clostridium tetani', 'Clostridium difficile', 'Clostridium botulinum', NULL,
'B', 'Tetanus is caused by Clostridium tetani, a gram-positive anaerobic spore-forming bacillus found in soil. Produces tetanospasmin, which blocks inhibitory neurotransmitters causing sustained muscle contraction. Presents with trismus (lockjaw), risus sardonicus, opisthotonos, generalized spasms. Prevention: vaccination (DTaP, Tdap, Td). Treatment: wound debridement, tetanus immunoglobulin, metronidazole/penicillin, ICU support, muscle relaxants.', 'easy'),

('e0000318-0007-0000-0000-000000000007', 'd0000318-0000-0000-0000-000000000018', 7,
'For a patient with a dirty wound who has unknown tetanus vaccination status, prophylaxis includes:',
'Tetanus toxoid only', 'Both tetanus toxoid AND tetanus immunoglobulin (TIG)', 'No prophylaxis needed', 'Antibiotics only', NULL,
'B', 'Tetanus prophylaxis based on wound type and vaccination history. For dirty/tetanus-prone wounds with unknown/incomplete (<3 doses) vaccination: give both Td/Tdap (active immunization) AND TIG (passive immunization, provides immediate protection). For clean wounds with incomplete vaccination: Td/Tdap only. For complete vaccination with booster <5 years: no prophylaxis; >5 years: Td/Tdap only.', 'medium'),

('e0000318-0008-0000-0000-000000000008', 'd0000318-0000-0000-0000-000000000018', 8,
'The most common organism causing surgical site infections is:',
'Pseudomonas aeruginosa', 'Staphylococcus aureus', 'Escherichia coli', 'Enterococcus species', NULL,
'B', 'Staphylococcus aureus (including MRSA) is the most common SSI pathogen overall. However, SSI microbiology depends on procedure: skin flora (Staph, Strep) for clean wounds; GI flora (gram-negatives, anaerobes, Enterococcus) for GI surgery. MRSA risk factors: previous colonization, recent hospitalization, antibiotics, diabetes. Empiric coverage and culture-guided de-escalation are important principles.', 'easy'),

('e0000318-0009-0000-0000-000000000009', 'd0000318-0000-0000-0000-000000000018', 9,
'The most important treatment for an abscess is:',
'Antibiotics alone', 'Incision and drainage', 'Observation', 'Steroid injection', NULL,
'B', 'Incision and drainage (I&D) is the definitive treatment for abscess. Antibiotics alone cannot penetrate the abscess cavity effectively. Principles: adequate incision, break up loculations, copious irrigation, packing or drain placement if needed. Antibiotics are adjunctive for: surrounding cellulitis, systemic illness, immunocompromise, facial abscesses, or inability to achieve complete drainage. Culture guides antibiotic selection.', 'easy'),

('e0000318-0010-0000-0000-000000000010', 'd0000318-0000-0000-0000-000000000018', 10,
'Ludwig angina is:',
'A cardiac emergency', 'A rapidly spreading bilateral cellulitis of the submandibular space, a surgical emergency', 'A chronic skin infection', 'A type of gastritis', NULL,
'B', 'Ludwig angina is a rapidly progressive bilateral cellulitis of the submandibular, sublingual, and submental spaces, usually from dental infection. Life-threatening due to airway compromise (tongue elevation, laryngeal edema). Presents with fever, drooling, trismus, neck swelling (woody induration), stridor. Treatment: secure airway first (may need surgical airway), IV antibiotics, surgical drainage if abscess forms. Mortality was 50% pre-antibiotic era.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 18 (Surgical Infections) with 10 self-assessment questions inserted' as status;
