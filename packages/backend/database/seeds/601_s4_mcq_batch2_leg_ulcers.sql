-- Surgery 4 MCQ Question Bank - Batch 2
-- Section A: Vascular & Cardiothoracic Surgery - Chronic Leg Ulcers
-- 40 Questions

-- Topic: Chronic Leg Ulcers
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000002-0000-0000-0000-000000000002', 'Chronic Leg Ulcers', 'a0000004-0000-0000-0000-000000000004', 'Classification, etiology and management of chronic leg ulcers', 2, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The most common cause of chronic leg ulcers is:',
 'Arterial insufficiency', 'Venous disease', 'Diabetes mellitus', 'Trauma', 'Vasculitis',
 'B', 'Venous disease accounts for 70-80% of all chronic leg ulcers. Arterial disease accounts for 10-15%, and mixed arteriovenous disease accounts for 10-15%.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'An ankle-brachial pressure index (ABPI) of less than what value indicates significant arterial disease?',
 '1.2', '1.0', '0.8', '0.5', '0.3',
 'C', 'ABPI <0.8 indicates significant arterial disease. ABPI 0.5-0.8 indicates moderate disease, <0.5 indicates severe disease with rest pain, and <0.3 indicates critical limb ischemia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which feature differentiates arterial from venous ulcers?',
 'Location at gaiter area', 'Punched-out appearance with pale base', 'Associated lipodermatosclerosis', 'Granulating wound bed', 'Shallow with sloping edges',
 'B', 'Arterial ulcers have punched-out edges, pale/necrotic base, occur on pressure points (toes, heels, malleoli), and are associated with absent pulses. Venous ulcers have sloping edges and granulating base.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Marjolin ulcer refers to:',
 'Ulcer caused by syphilis', 'Squamous cell carcinoma arising in chronic ulcer', 'Tropical ulcer', 'Pyoderma gangrenosum', 'Neuropathic ulcer',
 'B', 'Marjolin ulcer is a squamous cell carcinoma (rarely basal cell) arising in chronic wounds, scars, or ulcers. It typically develops after 10-25 years of chronic wound.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'In neuropathic ulcers, the most common location is:',
 'Heel', 'Over metatarsal heads', 'Dorsum of foot', 'Lateral malleolus', 'Medial malleolus',
 'B', 'Neuropathic ulcers occur at pressure points - typically over metatarsal heads (plantar surface), heels, and tips of toes. They are painless due to sensory neuropathy.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The 10-gram monofilament test assesses:',
 'Arterial supply', 'Venous competence', 'Protective sensation', 'Motor function', 'Proprioception',
 'C', 'The 10-gram (5.07 Semmes-Weinstein) monofilament test assesses protective sensation. Inability to feel the monofilament indicates loss of protective sensation and high ulcer risk.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which is NOT a characteristic of diabetic foot ulcers?',
 'Located on plantar surface', 'Painless presentation', 'Punched-out edges', 'Callus formation at edges', 'Associated with Charcot foot',
 'C', 'Diabetic neuropathic ulcers have callused edges (not punched-out), are painless, occur on plantar surface at pressure points. Punched-out edges are characteristic of arterial ulcers.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The Wagner classification for diabetic foot ulcers includes all grades EXCEPT:',
 'Grade 0 - intact skin at risk', 'Grade 2 - deep ulcer with tendon involvement', 'Grade 4 - partial foot gangrene', 'Grade 6 - total foot involvement', 'Grade 5 - whole foot gangrene',
 'D', 'Wagner classification: Grade 0=at risk foot, 1=superficial ulcer, 2=deep (tendon/joint), 3=osteomyelitis/abscess, 4=partial gangrene, 5=whole foot gangrene. There is no grade 6.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Pyoderma gangrenosum ulcers characteristically show:',
 'Healing from the edges', 'Undermined violaceous border', 'Clean granulating base', 'Dry eschar', 'Rolled edges',
 'B', 'Pyoderma gangrenosum has characteristic undermined edges with violaceous (purplish) border, pustular or necrotic base, and often occurs on pretibial area. It exhibits pathergy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which condition is pyoderma gangrenosum most commonly associated with?',
 'Diabetes mellitus', 'Inflammatory bowel disease', 'Peripheral vascular disease', 'Chronic venous insufficiency', 'Rheumatoid arthritis only',
 'B', 'Pyoderma gangrenosum is associated with inflammatory bowel disease (20-30%), rheumatoid arthritis, hematologic malignancies, and other autoimmune conditions. 50% are idiopathic.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The most important treatment for pyoderma gangrenosum is:',
 'Surgical debridement', 'Immunosuppression with steroids', 'Compression therapy', 'Antibiotic therapy', 'Skin grafting',
 'B', 'Pyoderma gangrenosum is treated with immunosuppression - systemic corticosteroids are first-line. Surgery is contraindicated initially due to pathergy (worsening with trauma).', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Compression therapy is contraindicated when ABPI is less than:',
 '1.0', '0.8', '0.5', '0.3', '0.9',
 'C', 'Full compression is contraindicated when ABPI <0.5. Reduced compression may be used cautiously with ABPI 0.5-0.8 under specialist supervision. <0.5 indicates critical ischemia.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Tropical ulcer is caused by:',
 'Mycobacterium ulcerans', 'Fusobacterium and Borrelia species', 'Treponema pallidum', 'Leishmania species', 'Staphylococcus aureus',
 'B', 'Tropical ulcers are caused by synergistic infection with Fusobacterium ulcerans and Borrelia vincentii. They occur in tropical climates following minor trauma.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Buruli ulcer is caused by:',
 'Mycobacterium ulcerans', 'Mycobacterium leprae', 'Mycobacterium tuberculosis', 'Treponema pallidum', 'Haemophilus ducreyi',
 'A', 'Buruli ulcer is caused by Mycobacterium ulcerans producing mycolactone toxin. It is the third most common mycobacterial disease globally after TB and leprosy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The most reliable method to diagnose osteomyelitis in a diabetic foot ulcer is:',
 'Plain radiography', 'MRI scan', 'Bone scan', 'CT scan', 'Probe to bone test',
 'B', 'MRI is the most sensitive and specific imaging for osteomyelitis (90% sensitivity, 82% specificity). Plain X-rays require 30-50% bone destruction before changes are visible.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Probe-to-bone test in diabetic foot ulcers indicates:',
 'Arterial insufficiency', 'Underlying osteomyelitis', 'Deep tissue infection', 'Foreign body', 'Tendon exposure',
 'B', 'A positive probe-to-bone test (ability to probe to bone through ulcer) has high positive predictive value (89%) for osteomyelitis in diabetic foot ulcers.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The off-loading method of choice for plantar diabetic foot ulcers is:',
 'Crutches', 'Total contact cast', 'Wheelchair only', 'Bed rest', 'Custom footwear alone',
 'B', 'Total contact cast is the gold standard for off-loading plantar diabetic foot ulcers. It redistributes pressure and ensures compliance. Alternatives include removable cast walkers.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which organism is most commonly isolated from infected diabetic foot ulcers?',
 'Pseudomonas aeruginosa', 'Staphylococcus aureus', 'Escherichia coli', 'Streptococcus pyogenes', 'Bacteroides species',
 'B', 'Staphylococcus aureus is the most common organism in diabetic foot infections. Chronic/deep ulcers often have polymicrobial infection including gram-negatives and anaerobes.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Vacuum-assisted closure (VAC) therapy works by:',
 'Increasing bacterial load', 'Removing excess exudate and promoting granulation', 'Providing antibiotic delivery', 'Replacing skin grafting', 'Increasing wound depth',
 'B', 'VAC therapy applies negative pressure to remove exudate, reduce edema, increase blood flow, reduce bacterial load, and stimulate granulation tissue formation.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which is a contraindication to VAC therapy?',
 'Diabetic foot ulcer', 'Venous ulcer', 'Exposed blood vessel', 'Surgical wound dehiscence', 'Pressure ulcer',
 'C', 'Contraindications to VAC include exposed blood vessels, organs, or nerves; untreated osteomyelitis; malignancy in wound; necrotic tissue with eschar; and active bleeding.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Four-layer compression bandaging provides approximately what pressure at the ankle?',
 '10-15 mmHg', '20-25 mmHg', '40 mmHg', '60 mmHg', '80 mmHg',
 'C', 'Four-layer compression bandaging provides approximately 40 mmHg pressure at the ankle with graduated reduction proximally. This is therapeutic pressure for venous ulcer healing.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Charcot arthropathy in diabetic foot is characterized by:',
 'Painful swelling with normal architecture', 'Painless joint destruction and deformity', 'Septic arthritis', 'Gout', 'Osteoarthritis',
 'B', 'Charcot arthropathy (neuropathic osteoarthropathy) presents with painless (due to neuropathy) progressive joint destruction, collapse, and deformity. The foot is warm, swollen but with minimal pain.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The classic rocker-bottom foot deformity occurs in:',
 'Acute gout', 'Charcot foot', 'Rheumatoid arthritis', 'Psoriatic arthritis', 'Osteoarthritis',
 'B', 'Rocker-bottom foot deformity is classic for Charcot arthropathy, resulting from midfoot collapse due to neuropathic bone and joint destruction. This creates new pressure points predisposing to ulceration.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The TIME framework for wound bed preparation stands for:',
 'Tissue, Infection, Moisture, Edge', 'Treatment, Inflammation, Medication, Evaluation', 'Temperature, Irrigation, Moisture, Edema', 'Tissue, Ischemia, Microbe, Environment', 'Therapy, Infection, Matrix, Epithelium',
 'A', 'TIME framework: Tissue (non-viable or deficient), Infection/Inflammation, Moisture imbalance, Edge (non-advancing or undermined). It guides systematic wound assessment and management.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Hyperbaric oxygen therapy in chronic wounds works by:',
 'Killing all bacteria', 'Increasing tissue oxygen tension and promoting angiogenesis', 'Replacing antibiotics', 'Providing nutrition', 'Mechanical debridement',
 'B', 'Hyperbaric oxygen therapy increases tissue oxygen tension, promotes angiogenesis, enhances leukocyte function, reduces edema, and has bactericidal effects on anaerobes.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which dressing is most appropriate for a dry necrotic ulcer?',
 'Alginate dressing', 'Hydrogel dressing', 'Foam dressing', 'Silver dressing', 'Gauze dressing',
 'B', 'Hydrogel dressings provide moisture to rehydrate dry necrotic tissue and promote autolytic debridement. They are ideal for dry wounds requiring moisture donation.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Larval (maggot) debridement therapy is contraindicated in:',
 'Diabetic foot ulcers', 'Venous ulcers', 'Wounds with exposed large blood vessels', 'Pressure ulcers', 'Surgical wounds',
 'C', 'Larval therapy is contraindicated in wounds with exposed major blood vessels due to bleeding risk, wounds communicating with body cavities, and near eyes. Patient acceptance is also a factor.', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The most accurate method for measuring wound size is:',
 'Ruler measurement', 'Digital planimetry', 'Visual estimation', 'Photography alone', 'Cotton tip measurement',
 'B', 'Digital planimetry (computerized tracing of wound photographs) provides the most accurate and reproducible wound size measurements for monitoring healing progress.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Critical colonization in chronic wounds refers to:',
 'Presence of any bacteria', 'Bacteria causing delayed healing without clinical infection', 'Frank infection with systemic signs', 'Sterile wound', 'Bacterial biofilm only',
 'B', 'Critical colonization is bacterial burden sufficient to delay healing but without overt clinical signs of infection. It represents a transition state between colonization and infection.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Biofilm in chronic wounds is characterized by:',
 'Easy removal with saline irrigation', 'Bacteria protected within extracellular matrix', 'High antibiotic sensitivity', 'Visible pus formation', 'Absence of bacteria',
 'B', 'Biofilm consists of bacteria enclosed in self-produced extracellular polymeric substance (EPS) matrix, making them 500-5000 times more resistant to antibiotics and host defenses.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The most effective method to disrupt wound biofilm is:',
 'Topical antibiotics alone', 'Systemic antibiotics alone', 'Sharp debridement', 'Occlusive dressings', 'Dry dressings',
 'C', 'Sharp debridement is the most effective method to physically disrupt biofilm. This should be combined with antimicrobial dressings to prevent rapid re-formation (within 24 hours).', 'medium', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'A split-thickness skin graft for leg ulcer coverage is typically how thick?',
 '0.1-0.2 mm', '0.2-0.5 mm', '0.5-1.0 mm', '1.0-2.0 mm', '2.0-3.0 mm',
 'B', 'Split-thickness skin grafts are typically 0.2-0.5 mm (8-20/1000 inch). Thin grafts take more reliably but contract more; thick grafts have better durability but higher failure risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Pinch grafting for leg ulcers involves:',
 'Full-thickness skin grafts', 'Multiple small pieces of epidermis and superficial dermis', 'Cultured keratinocytes', 'Dermal substitutes', 'Composite grafts',
 'B', 'Pinch grafts are small (3-4mm) portions of epidermis and superficial dermis harvested by pinching skin with needle/forceps. They are useful for small ulcers and can be done under local anesthesia.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Regarding sickle cell leg ulcers, which statement is correct?',
 'They heal rapidly with standard care', 'They occur over lateral malleolus', 'Compression is first-line treatment', 'They are typically painless', 'They respond well to hydroxyurea',
 'B', 'Sickle cell leg ulcers characteristically occur over the lateral malleolus (unlike venous ulcers), are very painful, and are often refractory to treatment. Hydroxyurea may help some cases.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which ulcer type shows pathergy phenomenon?',
 'Venous ulcer', 'Arterial ulcer', 'Pyoderma gangrenosum', 'Diabetic ulcer', 'Traumatic ulcer',
 'C', 'Pathergy (exaggerated tissue injury response to minor trauma) is characteristic of pyoderma gangrenosum. This is why surgical debridement is contraindicated in acute phase.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The PUSH tool (Pressure Ulcer Scale for Healing) assesses:',
 'Ulcer depth only', 'Size, exudate amount, and tissue type', 'Bacterial count', 'Pain levels', 'Blood supply only',
 'B', 'PUSH tool assesses three parameters: surface area (length x width), exudate amount, and wound tissue type. It provides a score 0-17 to monitor healing progress.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'In calciphylaxis ulcers, which is the characteristic finding?',
 'Granulating base', 'Livedo reticularis with painful necrotic ulcers', 'Venous eczema', 'Punched-out edges only', 'Callused borders',
 'B', 'Calciphylaxis (calcific uremic arteriolopathy) presents with livedo reticularis pattern, intensely painful, necrotic ulcers, and subcutaneous calcification. It occurs mainly in end-stage renal disease.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Sodium thiosulfate is used to treat:',
 'Diabetic foot ulcers', 'Calciphylaxis', 'Venous ulcers', 'Arterial ulcers', 'Pyoderma gangrenosum',
 'B', 'Intravenous sodium thiosulfate is used in calciphylaxis treatment. It acts as a calcium chelator and antioxidant, with reported improvement in approximately 70% of cases.', 'hard', 'application'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'Which statement about contact dermatitis in leg ulcer patients is TRUE?',
 'It is rare in chronic ulcer patients', 'Lanolin is a common sensitizer', 'Patch testing is not useful', 'It prevents ulcer healing rarely', 'Topical steroids are contraindicated',
 'B', 'Contact sensitization occurs in up to 80% of leg ulcer patients. Common sensitizers include lanolin, antibiotics (neomycin, framycetin), preservatives, and rubber components in bandages.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000002-0000-0000-0000-000000000002', 'a0000004-0000-0000-0000-000000000004',
 'The expected healing rate for venous ulcers with optimal compression therapy is:',
 '20% at 12 weeks', '40% at 12 weeks', '70% at 12 weeks', '95% at 12 weeks', '100% at 12 weeks',
 'C', 'With optimal compression therapy, approximately 70% of venous ulcers heal within 12 weeks. Larger ulcers and those present longer have lower healing rates.', 'medium', 'knowledge');
