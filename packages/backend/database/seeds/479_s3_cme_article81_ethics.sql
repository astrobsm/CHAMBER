-- ============================================================================
-- SURGERY 3 CME ARTICLE 81: Surgical Ethics and Informed Consent
-- Comprehensive Clinical Management Guide with Self-Assessment
-- ============================================================================

-- First create a topic
INSERT INTO topics (id, category_id, name, description) VALUES
('c0000147-0000-0000-0000-000000000147', 'a0000003-0000-0000-0000-000000000003', 'Surgical Ethics and Informed Consent', 'Ethical principles and consent in surgery')
ON CONFLICT DO NOTHING;

-- Insert CME Article
INSERT INTO cme_articles (id, topic_id, category_id, title, subtitle, abstract, authors, cme_credits, estimated_reading_minutes, difficulty_level)
VALUES (
    'd0000381-0000-0000-0000-000000000081',
    'c0000147-0000-0000-0000-000000000147',
    'a0000003-0000-0000-0000-000000000003',
    'Surgical Ethics: Informed Consent and Decision Making',
    'Principles of Ethical Surgical Practice',
    'This article covers the four principles of medical ethics, informed consent elements, capacity assessment, emergency consent, advance directives, refusal of treatment, and disclosure of surgical errors.',
    'Department of Surgery, UNTH',
    1.5,
    15,
    'easy'
) ON CONFLICT (id) DO NOTHING;

-- Insert Self-Assessment Questions
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES

('e0000381-0001-0000-0000-000000000001', 'd0000381-0000-0000-0000-000000000081', 1,
'The four principles of medical ethics include autonomy, beneficence, non-maleficence, and:',
'Paternalism', 'Justice', 'Profit', 'Convenience',
'B', 'Four principles of medical ethics (Beauchamp and Childress): AUTONOMY - respect for patient self-determination and informed decision-making. BENEFICENCE - acting in patient best interest. NON-MALEFICENCE - do no harm. JUSTICE - fair distribution of resources and equal treatment. These principles guide ethical decision-making and may sometimes conflict, requiring careful balancing.', 'easy'),

('e0000381-0002-0000-0000-000000000002', 'd0000381-0000-0000-0000-000000000081', 2,
'Elements of valid informed consent include:',
'Signature alone is sufficient', 'Disclosure of information, understanding by patient, voluntary decision, and patient capacity', 'Verbal agreement only', 'Consent from any family member',
'B', 'Informed consent elements: (1) DISCLOSURE - nature of procedure, risks, benefits, alternatives (including no treatment); (2) UNDERSTANDING - patient comprehends information in appropriate language; (3) VOLUNTARINESS - free from coercion or undue influence; (4) CAPACITY - patient able to make and communicate decision. The consent form documents but does not replace the consent process. Process should be a dialogue, not just paperwork.', 'easy'),

('e0000381-0003-0000-0000-000000000003', 'd0000381-0000-0000-0000-000000000081', 3,
'In an emergency when the patient lacks capacity and no surrogate is available:',
'Surgery cannot proceed', 'Treatment may proceed under implied consent doctrine if delay would cause serious harm', 'Written consent from police is required', 'The patient must be awakened',
'B', 'Emergency exception to informed consent: when patient lacks capacity, no surrogate available, and DELAY would cause serious harm or death, treatment may proceed under IMPLIED CONSENT doctrine. Assumes reasonable person would consent to life-saving treatment. Document emergency nature, attempts to contact family, and rationale. Two-physician consent may be institutional policy. Once patient stabilized or surrogate identified, involve them in ongoing decisions.', 'easy'),

('e0000381-0004-0000-0000-000000000004', 'd0000381-0000-0000-0000-000000000081', 4,
'A competent adult patient has the right to:',
'Receive any treatment they demand', 'Refuse treatment even if refusal may result in death', 'Override all medical recommendations', 'Consent on behalf of other adults',
'B', 'Patient autonomy and refusal: competent adults have the RIGHT TO REFUSE any treatment, including life-sustaining treatment, even if refusal will result in death. Requires capacity, understanding of consequences, and voluntary decision. Example: Jehovah Witness refusing blood transfusion. Physician duty: ensure informed refusal, explore reasons, respect decision. Limits: cannot demand harmful or futile treatment. Document thoroughly.', 'easy'),

('e0000381-0005-0000-0000-000000000005', 'd0000381-0000-0000-0000-000000000081', 5,
'Disclosure of a surgical error to the patient:',
'Should be avoided to prevent lawsuits', 'Is ethically required as part of honest communication and may actually reduce litigation', 'Is illegal in most jurisdictions', 'Should only occur if the patient asks',
'B', 'Error disclosure: ETHICAL OBLIGATION to disclose harmful errors to patients. Benefits: maintains trust, respects autonomy, allows proper care. Many institutions have disclosure policies. Studies suggest honest disclosure may REDUCE litigation. Elements: factual description of what happened, expression of regret, explanation of steps to prevent recurrence, offer of support. Some jurisdictions have "apology laws" protecting sincere apologies from being used as admission of liability.', 'easy'),

('e0000381-0006-0000-0000-000000000006', 'd0000381-0000-0000-0000-000000000081', 6,
'Decision-making capacity requires the patient to:',
'Have a medical degree', 'Understand relevant information, appreciate the situation, reason about options, and communicate a choice', 'Agree with the physician recommendation', 'Be over 21 years old',
'B', 'Decision-making capacity assessment (4 components): (1) UNDERSTAND - comprehend relevant information about condition and treatment; (2) APPRECIATE - recognize how information applies to their situation; (3) REASON - weigh options, consider consequences; (4) COMMUNICATE - express a choice consistently. Capacity is decision-specific and may fluctuate. Disagreeing with physician does NOT indicate incapacity. If capacity in question: formal assessment, psychiatry consultation if needed.', 'easy'),

('e0000381-0007-0000-0000-000000000007', 'd0000381-0000-0000-0000-000000000081', 7,
'Advance directives:',
'Are legally meaningless', 'Are legal documents that specify patient wishes for future care when they lack capacity, including living wills and healthcare proxy designation', 'Can never be overridden', 'Must be created by a physician',
'B', 'Advance directives: legal documents expressing patient wishes for future care. Types: LIVING WILL - written instructions about specific treatments (e.g., no CPR, no mechanical ventilation). HEALTHCARE PROXY (durable power of attorney for healthcare) - designates surrogate decision-maker. Should be created while patient has capacity. Guide care when patient cannot speak for themselves. Should be reviewed periodically. In emergencies, may not be immediately available.', 'easy'),

('e0000381-0008-0000-0000-000000000008', 'd0000381-0000-0000-0000-000000000081', 8,
'For a minor (under 18), surgical consent is typically obtained from:',
'The minor only', 'Parents or legal guardians, though emancipated minors and mature minors may consent for themselves', 'Hospital administration', 'No consent is needed for minors',
'B', 'Consent for minors: PARENTS or LEGAL GUARDIANS typically provide consent. Exceptions: EMANCIPATED MINORS (married, military, financially independent, by court order) - can consent for themselves. MATURE MINOR doctrine (varies by jurisdiction) - allows consent for certain treatments if minor demonstrates maturity. Specific services (STI treatment, contraception, mental health, substance abuse) may allow minor consent by law. In emergencies: implied consent applies. Both parents consent preferred but one usually sufficient.', 'easy'),

('e0000381-0009-0000-0000-000000000009', 'd0000381-0000-0000-0000-000000000081', 9,
'The principle of double effect in surgery refers to:',
'Performing two surgeries simultaneously', 'An action with good intent may be ethically permissible even if it has a foreseeable bad effect, provided certain conditions are met', 'Billing for two procedures', 'Obtaining two opinions',
'B', 'Principle of double effect: ethically justifies action with both good and bad effects when: (1) The action itself is not intrinsically wrong; (2) The good effect is INTENDED, bad effect only foreseen; (3) Bad effect is not the means to good effect; (4) Proportionate reason - good outweighs bad. Example: giving high-dose opioids for pain relief knowing it may hasten death - intention is pain relief, not death. Distinguishes from euthanasia.', 'medium'),

('e0000381-0010-0000-0000-000000000010', 'd0000381-0000-0000-0000-000000000081', 10,
'Futile treatment:',
'Must always be provided if family requests', 'Is treatment that cannot achieve the intended physiological goal; physicians are not obligated to provide truly futile interventions', 'Is defined purely by cost', 'Is determined by patient preference only',
'B', 'Medical futility: treatment unlikely to achieve goals. PHYSIOLOGIC FUTILITY - treatment cannot achieve physiologic effect (e.g., CPR in documented asystole for prolonged period). QUANTITATIVE - extremely low probability of success. QUALITATIVE - may prolong life but not meaningful life (subjective, controversial). Physicians NOT obligated to provide truly futile treatment. However: must communicate clearly, seek second opinions, involve ethics committee, consider transfer if family disagrees. Goals of care discussions essential.', 'medium')

ON CONFLICT DO NOTHING;

SELECT 'Surgery 3 CME Article 81 (Surgical Ethics and Informed Consent) with 10 self-assessment questions inserted' as status;
