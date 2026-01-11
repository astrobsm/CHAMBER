-- CME Article 33: Organ Transplantation Basics - Surgery 4

INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, estimated_reading_minutes, cme_credits, difficulty_level, version, is_published) VALUES
('d0040033-0000-0000-0000-000000000033', 'c4000029-0000-0000-0000-000000000029', 'a0000004-0000-0000-0000-000000000004', 'Organ Transplantation Fundamentals', 'Principles and Immunology', 'Overview of solid organ transplantation covering donor selection, immunology, rejection, and immunosuppression.', 'UNTH Surgery Department', 30, 2.0, 'hard', 1, true) ON CONFLICT (id) DO NOTHING;

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040033-0000-0000-0000-000000000033', 'introduction', 1, 'Introduction', 'Organ transplantation: definitive treatment for end-stage organ failure. Types: autograft (self), isograft (identical twin), allograft (same species), xenograft (different species). Kidney transplant most common. Living donors possible for kidney, liver, lung.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040033-0000-0000-0000-000000000033', 'learning_objectives', 2, 'Learning Objectives', '1. Understand transplant terminology\n2. Know HLA matching importance\n3. Recognize rejection types\n4. Understand immunosuppression\n5. Know complications\n6. Manage post-transplant care\n7. Recognize rejection signs');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040033-0000-0000-0000-000000000033', 'content', 3, 'Immunology', 'HLA matching: Class I (A, B, C) and Class II (DR, DQ, DP). ABO compatibility required. Crossmatch: detects preformed antibodies. Panel reactive antibodies (PRA): sensitivity level. Better HLA match = better outcomes.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040033-0000-0000-0000-000000000033', 'content', 4, 'Rejection Types', 'Hyperacute: minutes-hours, preformed antibodies, irreversible. Acute: days-weeks, T-cell mediated, treatable. Chronic: months-years, gradual decline, antibody-mediated, irreversible. Biopsy gold standard for diagnosis.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040033-0000-0000-0000-000000000033', 'content', 5, 'Immunosuppression', 'Induction: high-dose at transplant (basiliximab, ATG). Maintenance: calcineurin inhibitors (tacrolimus, cyclosporine), antimetabolites (MMF), steroids. Triple therapy common. Side effects: infections, malignancy, nephrotoxicity.');

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0040033-0000-0000-0000-000000000033', 'key_points', 6, 'Key Points', 'ABO compatibility essential. HLA matching improves outcomes. Hyperacute rejection is irreversible. Triple immunosuppression standard. Lifelong monitoring required. Infection and malignancy risks increased.');

INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0040033-0000-0000-0000-000000000033', 1, 'Transplant between same species:', 'Autograft', 'Isograft', 'Allograft', 'Xenograft', 'Prosthesis', 'C', 'Allograft is transplant between same species'),
('d0040033-0000-0000-0000-000000000033', 2, 'Hyperacute rejection occurs:', 'Minutes to hours', 'Days to weeks', 'Months to years', 'Never', 'Years later', 'A', 'Hyperacute rejection occurs minutes to hours'),
('d0040033-0000-0000-0000-000000000033', 3, 'Most common transplanted organ:', 'Heart', 'Liver', 'Kidney', 'Lung', 'Pancreas', 'C', 'Kidney is most commonly transplanted organ'),
('d0040033-0000-0000-0000-000000000033', 4, 'Tacrolimus is a:', 'Antimetabolite', 'Calcineurin inhibitor', 'Steroid', 'Antibody', 'Antibiotic', 'B', 'Tacrolimus is a calcineurin inhibitor'),
('d0040033-0000-0000-0000-000000000033', 5, 'Chronic rejection is:', 'Treatable', 'Reversible', 'Irreversible', 'Immediate', 'Rare', 'C', 'Chronic rejection is irreversible');
