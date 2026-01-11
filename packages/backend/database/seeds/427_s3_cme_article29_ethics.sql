-- ============================================================================
-- SURGERY 3 CME ARTICLE 29: Surgical Ethics and Patient Safety
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000095-0000-0000-0000-000000000095', 'a0000003-0000-0000-0000-000000000003', 'Surgical Ethics and Patient Safety', 'Ethical principles and patient safety in surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000329-0000-0000-0000-000000000029',
    'c0000095-0000-0000-0000-000000000095',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Ethics and Patient Safety',
    'Informed Consent, Never Events, and Quality Improvement',
    'This article covers ethical principles in surgery including informed consent, autonomy, confidentiality, end-of-life decisions, as well as patient safety concepts including the WHO surgical safety checklist, never events, quality improvement, and management of surgical complications.',
    'Department of Surgery, UNTH',
    1.5,
    18,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) VALUES

('e0000329-0001-0000-0000-000000000001', 'd0000329-0000-0000-0000-000000000029', 1,
'Valid informed consent requires:',
'Only a signature on a form', 'Capacity, voluntariness, adequate information, and understanding', 'Consent from family only', 'Written consent for all procedures', NULL,
'B', 'Valid informed consent elements: (1) Capacity - patient can understand, retain, weigh information and communicate decision; (2) Voluntariness - free from coercion or undue influence; (3) Information - diagnosis, nature of procedure, benefits, risks (common and serious), alternatives including no treatment; (4) Understanding - patient comprehends information. Consent is a process, not just a form. Documentation important but form alone is not consent. Emergency exception when patient unable to consent and delay would cause harm.', 'easy'),

('e0000329-0002-0000-0000-000000000002', 'd0000329-0000-0000-0000-000000000029', 2,
'The WHO Surgical Safety Checklist includes three phases:',
'Only a time-out before incision', 'Sign In (before anesthesia), Time Out (before incision), Sign Out (before leaving OR)', 'Documentation after surgery only', 'Patient identification only', NULL,
'B', 'WHO Surgical Safety Checklist: (1) SIGN IN (before anesthesia): patient identity, site/procedure confirmed, consent, site marked, anesthesia safety check, allergies, airway/aspiration risk, blood loss risk; (2) TIME OUT (before incision): team introductions, patient/site/procedure confirmation, antibiotic prophylaxis, critical events anticipated; (3) SIGN OUT (before leaving OR): procedure recorded, instrument/sponge counts correct, specimens labeled, equipment issues, recovery concerns. Reduces mortality/complications by ~30%.', 'easy'),

('e0000329-0003-0000-0000-000000000003', 'd0000329-0000-0000-0000-000000000029', 3,
'Wrong site surgery is classified as:',
'A minor complication', 'A "Never Event" - a serious, largely preventable patient safety incident', 'An expected risk', 'Not reportable', NULL,
'B', 'Never Events: serious incidents that are entirely preventable if national guidance and safety recommendations are implemented. Surgical never events include: wrong site surgery, wrong implant/prosthesis, retained foreign object post-procedure. Prevention: site marking, verification protocols, surgical safety checklist, time-out procedures, counting protocols. When occurs: duty of candor (open disclosure to patient), incident reporting, root cause analysis, organizational learning. Some insurers/payers do not reimburse for never events.', 'easy'),

('e0000329-0004-0000-0000-000000000004', 'd0000329-0000-0000-0000-000000000029', 4,
'The four principles of biomedical ethics are:',
'Beneficence only', 'Autonomy, beneficence, non-maleficence, and justice', 'Consent and confidentiality', 'Doctor preference and hospital policy', NULL,
'B', 'Four principles (Beauchamp and Childress): (1) Autonomy - respect patient''s right to make informed decisions; (2) Beneficence - act in patient''s best interest; (3) Non-maleficence - "first do no harm," avoid causing harm; (4) Justice - fair distribution of resources, treat similar cases similarly. These principles may conflict (e.g., autonomy vs beneficence when patient refuses beneficial treatment). Resolution requires weighing principles in specific context. Forms foundation of medical ethics education.', 'easy'),

('e0000329-0005-0000-0000-000000000005', 'd0000329-0000-0000-0000-000000000029', 5,
'Duty of candor requires surgeons to:',
'Conceal errors from patients', 'Inform patients openly and honestly when things go wrong', 'Only disclose if patient asks', 'Wait until legal proceedings', NULL,
'B', 'Duty of Candor: legal and ethical obligation to be open and honest with patients when things go wrong. Requirements: (1) Tell patient (or family if patient died/lacks capacity) when harm occurred; (2) Apologize sincerely; (3) Offer explanation of what happened; (4) Explain what actions will be taken to prevent recurrence. Applies when harm is moderate or above. Apology is not admission of legal liability. Open disclosure improves trust and may reduce litigation. Concealment is a breach of professional standards.', 'medium'),

('e0000329-0006-0000-0000-000000000006', 'd0000329-0000-0000-0000-000000000029', 6,
'Retained surgical items are most commonly:',
'Surgical instruments', 'Sponges/gauze', 'Needles', 'Drains', NULL,
'B', 'Retained surgical items (RSI): sponges/gauze most common (70%), then instruments, needles, other. Risk factors: emergency surgery, unplanned procedure change, multiple surgical teams, high BMI, high blood loss. Prevention: standardized counting protocols (initial, additional, closing counts), methodical wound exploration before closure, X-ray if count discrepancy, radiofrequency detection systems for sponges. If retained item discovered: disclose to patient, plan for removal, incident reporting.', 'easy'),

('e0000329-0007-0000-0000-000000000007', 'd0000329-0000-0000-0000-000000000029', 7,
'In an emergency where a patient cannot consent and no surrogate is available, the surgeon should:',
'Wait for family', 'Proceed with treatment necessary to save life or prevent serious deterioration', 'Refuse to treat', 'Obtain court order first', NULL,
'B', 'Emergency treatment without consent: when patient lacks capacity (unconscious, severe impairment) and no advance directive or surrogate decision-maker available, treatment necessary to preserve life or prevent serious deterioration can proceed. Based on presumed consent and best interests. Document: emergency nature, inability to obtain consent, treatment provided, rationale. Once patient regains capacity, discuss what was done and future care. Emergency exception does not apply if patient previously refused treatment in valid advance directive.', 'medium'),

('e0000329-0008-0000-0000-000000000008', 'd0000329-0000-0000-0000-000000000029', 8,
'Root cause analysis (RCA) following a serious incident should:',
'Assign individual blame', 'Identify system failures and contributing factors to prevent recurrence', 'Be punitive in nature', 'Focus only on the surgeon', NULL,
'B', 'Root Cause Analysis: structured investigation of serious incidents. Goals: (1) Identify what happened; (2) Why it happened (root causes - usually system failures, not individual error); (3) What can be done to prevent recurrence. Principles: systems-focused (not blame-focused), multidisciplinary team, timeline reconstruction, use of fishbone diagrams or similar tools. Outcomes: recommendations for system changes, policy updates, training. Just culture distinguishes: human error (console), at-risk behavior (coach), reckless behavior (discipline).', 'medium'),

('e0000329-0009-0000-0000-000000000009', 'd0000329-0000-0000-0000-000000000029', 9,
'Surgical site marking should be:',
'Done by nursing staff only after patient is anesthetized', 'Done by operating surgeon or member of surgical team with patient awake and participating when possible', 'Not necessary for bilateral procedures', 'Optional for all cases', NULL,
'B', 'Surgical site marking: required for laterality, multiple structures, multiple levels. Requirements: (1) Marked by member of surgical team who will be present during procedure (ideally operating surgeon); (2) Patient awake and involved when possible; (3) Unambiguous mark (commonly initials or "YES") at or near incision site; (4) Mark visible after positioning/prepping. Some institutions use "X" to mean "not this side." Bilateral procedures may be marked differently per institutional policy. Part of verification process throughout pathway.', 'easy'),

('e0000329-0010-0000-0000-000000000010', 'd0000329-0000-0000-0000-000000000029', 10,
'Confidentiality in surgery:',
'Can always be broken for family members', 'Should be maintained but may be breached in specific circumstances such as public safety or legal requirement', 'Is only important for mental health conditions', 'Does not apply in emergency situations', NULL,
'B', 'Confidentiality: fundamental principle - information shared in clinical relationship should be protected. Justified breaches: (1) Patient consent to disclosure; (2) Statutory requirement (notifiable diseases, child protection); (3) Court order; (4) Serious public interest (e.g., patient poses danger to others); (5) Sharing within healthcare team for patient care. Even in emergencies, share only information necessary for care. Accidental breaches (discussing patients in public areas, visible screens) also violations. Document any necessary disclosures.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 29 (Surgical Ethics and Patient Safety) with 10 self-assessment questions inserted' as status;
