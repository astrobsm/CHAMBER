-- Article 61: Venomous Stings and Bites
-- Surgery 2 CME Content

-- Insert sections
INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d2000061-0000-0000-0000-000000000061'::uuid, 'introduction', 1, 'Introduction to Venomous Stings and Bites', 'Envenomation from animal bites and stings is a significant global health problem, particularly in tropical and subtropical regions. Venomous animals include snakes, scorpions, spiders, bees/wasps, and marine creatures. Venom is a complex mixture of proteins, enzymes, and toxins that cause local tissue destruction and systemic effects. Clinical manifestations range from local pain and swelling to life-threatening anaphylaxis, coagulopathy, neurotoxicity, and organ failure. Management priorities include stabilization, identification of the offending animal when possible, wound care, antivenom administration when indicated, and supportive care. Understanding the local fauna and available antivenoms is essential for effective treatment.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 'content', 2, 'Snake Envenomation', 'EPIDEMIOLOGY:
5.4 million snake bites annually worldwide
1.8-2.7 million envenomations
81,000-138,000 deaths per year
Highest burden: South Asia, Southeast Asia, Africa

CLASSIFICATION OF VENOMOUS SNAKES:
Elapidae (fixed front fangs):
- Cobras, kraits, mambas, coral snakes
- Predominantly neurotoxic venom
- Cause respiratory paralysis

Viperidae (hinged fangs):
- Vipers, pit vipers, rattlesnakes
- Predominantly hemotoxic/cytotoxic venom
- Cause coagulopathy, tissue necrosis

VENOM COMPONENTS:
Neurotoxins: Block neuromuscular transmission (paralysis)
Hemotoxins: Coagulopathy, bleeding, DIC
Cytotoxins: Local tissue necrosis
Myotoxins: Rhabdomyolysis
Cardiotoxins: Cardiac effects

CLINICAL FEATURES:
Local: Pain, swelling, ecchymosis, necrosis, compartment syndrome
Systemic:
- Neurotoxic: Ptosis (early sign), diplopia, dysphagia, respiratory paralysis
- Hemotoxic: Bleeding from wounds, gums, GI tract; coagulopathy
- Systemic: Hypotension, shock, AKI

20-MINUTE WHOLE BLOOD CLOTTING TEST (20WBCT):
Simple bedside test for coagulopathy
Draw 2mL blood in glass tube, leave undisturbed 20 minutes
If not clotted = coagulopathy = systemic envenomation
Indication for antivenom

MANAGEMENT:
First aid:
- Immobilize limb (reduce lymphatic spread)
- Pressure immobilization bandage (for neurotoxic snakes)
- DO NOT: tourniquet, cut, suck, apply ice
- Transport to hospital urgently

Hospital:
- ABC, IV access, monitoring
- Antivenom if indicated (systemic envenomation signs)
- Antivenom: IV infusion, watch for anaphylaxis
- Tetanus prophylaxis
- Wound care, debridement if necrosis
- Supportive: Ventilation, blood products, dialysis'),
('d2000061-0000-0000-0000-000000000061'::uuid, 'content', 3, 'Scorpion and Spider Envenomation', 'SCORPION STINGS:
Most dangerous: Androctonus, Centruroides, Tityus species
Venom: Neurotoxic (affects sodium/potassium channels)

Clinical features:
Local: Intense pain, minimal swelling
Systemic (severe):
- Autonomic storm: Tachycardia, hypertension, sweating
- Pulmonary edema (cardiac toxicity)
- Neuromuscular: Fasciculations, paralysis
- Children more severely affected

Management:
- Pain control (local anesthesia, analgesics)
- Antivenom for severe envenomation
- Prazosin for autonomic storm (alpha-blocker)
- Cardiac support, ventilation if needed
- Benzodiazepines for muscle spasms

SPIDER BITES:
Most medically significant:
Latrodectus (Black widow, Redback):
- Venom: Alpha-latrotoxin (neurotoxic)
- Pain, muscle spasms (latrodectism)
- Autonomic symptoms
- Treatment: Antivenom, muscle relaxants

Loxosceles (Brown recluse):
- Venom: Sphingomyelinase D (cytotoxic)
- Necrotic arachnidism
- Expanding necrotic wound
- Systemic loxoscelism: Hemolysis, DIC, AKI
- Treatment: Supportive, wound care, debridement

Phoneutria (Brazilian wandering spider):
- Neurotoxic venom
- Pain, priapism, cardiac effects
- Antivenom available

Atrax/Hadronyche (Sydney funnel-web):
- Highly dangerous
- Delta-atracotoxin: Neurotoxic
- Salivation, fasciculations, pulmonary edema
- Antivenom lifesaving'),
('d2000061-0000-0000-0000-000000000061'::uuid, 'content', 4, 'Bee/Wasp Stings and Marine Envenomation', 'HYMENOPTERA STINGS (Bees, Wasps, Hornets, Ants):
Venom components: Phospholipase A2, melittin, hyaluronidase

Reactions:
Local: Pain, swelling, redness
Large local: Extensive swelling greater than 10cm, lasting greater than 24 hours
Systemic/Anaphylaxis: Most dangerous
- Urticaria, angioedema
- Bronchospasm, laryngeal edema
- Hypotension, cardiovascular collapse
- Can be fatal within minutes

Massive envenomation (greater than 50 stings):
- Rhabdomyolysis
- Hemolysis
- AKI
- DIC

Management:
- Remove stinger (scrape, dont squeeze)
- Anaphylaxis: IM adrenaline (0.5mg IM), repeat every 5-15 minutes
- Airway management
- IV fluids, antihistamines, corticosteroids
- Observation (biphasic reaction possible)
- Refer for venom immunotherapy (desensitization)

MARINE ENVENOMATION:
Jellyfish (Box jellyfish, Portuguese man-of-war):
- Nematocysts inject venom
- Local: Pain, welts, wheals
- Systemic: Cardiac arrest (Chironex fleckeri)
- First aid: Vinegar (inactivates nematocysts)
- Remove tentacles carefully
- Antivenom for box jellyfish

Stingrays:
- Puncture wound with envenomation
- Intense pain, tissue necrosis
- Hot water immersion (denatures venom proteins)
- Wound exploration, remove barb fragments

Stonefish, Lionfish:
- Spines inject venom
- Severe pain
- Hot water immersion effective
- Stonefish antivenom available

Sea snakes:
- Highly venomous, neurotoxic
- Similar to elapid envenomation
- Antivenom available'),
('d2000061-0000-0000-0000-000000000061'::uuid, 'clinical_pearls', 5, 'Clinical Pearls', 'Snake bite first aid: immobilize, pressure bandage (neurotoxic), NO tourniquet/cutting/suction. 20WBCT: simple test for coagulopathy. Ptosis is early sign of neurotoxic envenomation. Antivenom for systemic envenomation. Scorpion sting: prazosin for autonomic storm. Bee sting anaphylaxis: IM adrenaline. Jellyfish: vinegar for nematocysts. Marine stings: hot water immersion.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 'key_points', 6, 'Key Points Summary', 'Elapidae: neurotoxic (cobras, kraits). Viperidae: hemotoxic (vipers). 20WBCT: non-clotting = coagulopathy. First aid: immobilization, no tourniquet. Antivenom IV with anaphylaxis precautions. Scorpions: autonomic storm, prazosin, antivenom. Spiders: Latrodectus (neurotoxic), Loxosceles (necrotic). Anaphylaxis: IM adrenaline 0.5mg. Marine: vinegar (jellyfish), hot water (stingrays, stonefish).');

-- Insert MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d2000061-0000-0000-0000-000000000061'::uuid, 1, 'Elapidae family snakes (cobras, kraits) predominantly cause:', 'Hemotoxic effects', 'Neurotoxic effects', 'Cardiotoxic effects only', 'No systemic effects', 'Local effects only', 'B', 'Elapidae snakes have predominantly neurotoxic venom causing paralysis and respiratory failure.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 2, 'Early clinical sign of neurotoxic snake envenomation is:', 'Bleeding gums', 'Ptosis', 'Swelling at bite site', 'Hypertension', 'Rash', 'B', 'Ptosis (drooping eyelids) is often the earliest sign of neurotoxic envenomation due to cranial nerve involvement.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 3, 'The 20-minute whole blood clotting test (20WBCT) is used to detect:', 'Neurotoxicity', 'Coagulopathy', 'Myotoxicity', 'Nephrotoxicity', 'Cardiotoxicity', 'B', 'The 20WBCT is a simple bedside test to detect coagulopathy from hemotoxic envenomation.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 4, 'First aid for snake bite should NOT include:', 'Immobilization of limb', 'Pressure immobilization bandage', 'Tourniquet application', 'Transport to hospital', 'Removing jewelry', 'C', 'Tourniquets should NOT be used - they can worsen ischemia and concentrate venom. Immobilization and pressure bandage are appropriate.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 5, 'Antivenom for snake bite is given:', 'Intramuscularly', 'Intravenously with anaphylaxis monitoring', 'Subcutaneously', 'Orally', 'Only if bite is confirmed', 'B', 'Antivenom is given IV as infusion with readiness to treat anaphylaxis.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 6, 'Scorpion envenomation causes systemic effects primarily through:', 'Hemotoxins', 'Neurotoxins affecting ion channels', 'Cytotoxins', 'Digestive enzymes', 'Coagulants', 'B', 'Scorpion venom contains neurotoxins that affect sodium and potassium channels causing autonomic storm.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 7, 'Drug of choice for autonomic storm in scorpion envenomation is:', 'Atropine', 'Prazosin', 'Adrenaline', 'Dopamine', 'Propranolol', 'B', 'Prazosin (alpha-blocker) is used to manage the autonomic storm in scorpion envenomation.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 8, 'Black widow spider bite causes:', 'Necrotic wound', 'Latrodectism (muscle spasms)', 'Hemorrhage', 'Paralysis only', 'No significant effects', 'B', 'Black widow (Latrodectus) causes latrodectism - painful muscle cramps and spasms due to neurotoxic venom.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 9, 'Brown recluse spider bite characteristically causes:', 'Systemic paralysis', 'Necrotic arachnidism', 'Anaphylaxis only', 'Coagulopathy only', 'No local effects', 'B', 'Brown recluse (Loxosceles) causes necrotic arachnidism - expanding necrotic wound due to cytotoxic venom.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 10, 'Most dangerous reaction to bee sting is:', 'Local swelling', 'Large local reaction', 'Anaphylaxis', 'Delayed serum sickness', 'Infection', 'C', 'Anaphylaxis is the most dangerous reaction to bee stings and can be fatal within minutes.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 11, 'First-line treatment for anaphylaxis from bee sting is:', 'IV antihistamines', 'IM adrenaline 0.5mg', 'IV corticosteroids', 'Oral antihistamines', 'Topical steroids', 'B', 'IM adrenaline (epinephrine) 0.5mg is the first-line treatment for anaphylaxis, repeated every 5-15 minutes as needed.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 12, 'For jellyfish stings, the recommended first aid is:', 'Fresh water wash', 'Vinegar application', 'Ice application', 'Urine application', 'Alcohol rinse', 'B', 'Vinegar inactivates undischarged nematocysts. Fresh water can cause more nematocyst discharge.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 13, 'Treatment for stingray and stonefish envenomation includes:', 'Cold water immersion', 'Hot water immersion', 'Vinegar application', 'Pressure bandage', 'Tourniquet', 'B', 'Hot water immersion (as hot as tolerable, approximately 45°C) denatures the heat-labile venom proteins.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 14, 'Box jellyfish (Chironex fleckeri) envenomation can cause:', 'Local rash only', 'Cardiac arrest', 'Mild pain only', 'Delayed reaction only', 'No significant effects', 'B', 'Box jellyfish can cause rapid cardiovascular collapse and cardiac arrest - one of the most venomous creatures.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 15, 'Viperidae family snakes (vipers) predominantly cause:', 'Neurotoxicity', 'Hemotoxicity and local tissue necrosis', 'Cardiotoxicity only', 'No local effects', 'Myotoxicity only', 'B', 'Viperidae have hemotoxic and cytotoxic venom causing coagulopathy and tissue necrosis.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 16, 'Massive bee sting envenomation (greater than 50 stings) can cause:', 'Only local reactions', 'Rhabdomyolysis, hemolysis, and AKI', 'No systemic effects', 'Neurotoxicity only', 'Delayed effects only', 'B', 'Massive envenomation from multiple stings can cause rhabdomyolysis, hemolysis, DIC, and acute kidney injury.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 17, 'Sea snake envenomation is similar to:', 'Viper envenomation', 'Elapid envenomation', 'Scorpion envenomation', 'Spider envenomation', 'Jellyfish envenomation', 'B', 'Sea snakes belong to Elapidae family and have neurotoxic venom similar to terrestrial elapids.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 18, 'Pressure immobilization bandage is recommended for bites by:', 'Vipers', 'Neurotoxic snakes (elapids)', 'All snakes equally', 'Only spiders', 'Only scorpions', 'B', 'Pressure immobilization is recommended for neurotoxic snake bites to slow lymphatic spread. Not recommended for cytotoxic bites.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 19, 'Compartment syndrome in snake bite requires:', 'More antivenom only', 'Fasciotomy', 'Observation only', 'Amputation immediately', 'Antibiotics only', 'B', 'Compartment syndrome from snake bite requires fasciotomy to relieve pressure and prevent tissue necrosis.'),
('d2000061-0000-0000-0000-000000000061'::uuid, 20, 'Venom immunotherapy (desensitization) is indicated for:', 'All bee sting victims', 'Patients with systemic reactions to stings', 'Local reactions only', 'First-time stings', 'Children only', 'B', 'Venom immunotherapy is recommended for patients who have had systemic/anaphylactic reactions to reduce future risk.');
