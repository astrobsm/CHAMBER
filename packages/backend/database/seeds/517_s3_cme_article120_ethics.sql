-- CME Article 120: Surgical Ethics and Informed Consent
-- Surgery 3 Rotation

-- Create topic for this article
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES (
  'c0000185-0000-0000-0000-000000000185',
  'Surgical Ethics and Informed Consent',
  'a0000003-0000-0000-0000-000000000003',
  'Ethical principles and medicolegal aspects of surgical practice',
  185,
  true
) ON CONFLICT (id) DO NOTHING;

-- Create CME article
INSERT INTO cme_articles (
  id, topic_id, category_id, title, subtitle, abstract, authors,
  cme_credits, estimated_reading_minutes, difficulty_level,
  version, is_published, publish_date, keywords, cover_image_url
)
VALUES (
  'd0000420-0000-0000-0000-000000000120',
  'c0000185-0000-0000-0000-000000000185',
  'a0000003-0000-0000-0000-000000000003',
  'Surgical Ethics and Informed Consent: Principles for Practice',
  'Navigating ethical challenges in modern surgery',
  'Surgical practice involves complex ethical considerations that extend beyond technical proficiency. This article reviews the fundamental principles of medical ethics-autonomy, beneficence, nonmaleficence, and justice-as applied to surgical care. We discuss the elements of valid informed consent, including disclosure of risks, benefits, and alternatives. Special situations including emergency consent, surrogate decision-makers, and patients lacking capacity are addressed. The article also covers ethical issues in surgical innovation, disclosure of errors, resource allocation, and end-of-life care in surgical patients.',
  'Department of Surgery and Medical Ethics',
  1.0,
  30,
  'easy',
  1,
  true,
  CURRENT_DATE,
  ARRAY['ethics', 'informed consent', 'autonomy', 'beneficence', 'surgical errors'],
  NULL
) ON CONFLICT (id) DO NOTHING;

-- Self-assessment questions for Article 120
INSERT INTO article_self_assessments (id, article_id, question_number, question_text, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) VALUES
('e1200001-0000-0000-0000-000000000001', 'd0000420-0000-0000-0000-000000000120', 1,
 'Which ethical principle emphasizes the patient''s right to make their own healthcare decisions?',
 'Beneficence', 'Nonmaleficence', 'Autonomy', 'Justice',
 'C', 'Autonomy is the ethical principle that respects patient self-determination and the right to make informed decisions about their own healthcare, including the right to refuse treatment.', 'easy'),
('e1200002-0000-0000-0000-000000000002', 'd0000420-0000-0000-0000-000000000120', 2,
 'Valid informed consent requires all of the following EXCEPT:',
 'Disclosure of material risks and benefits', 'Patient understanding', 'Written documentation in all cases', 'Voluntary decision without coercion',
 'C', 'Valid informed consent requires disclosure, understanding, and voluntary decision-making with capacity. While written documentation is best practice, verbal consent is legally valid in many situations including emergencies.', 'medium'),
('e1200003-0000-0000-0000-000000000003', 'd0000420-0000-0000-0000-000000000120', 3,
 'A patient requiring emergency surgery is unconscious with no family available. The surgeon should:',
 'Wait until family can be contacted', 'Proceed with surgery under implied consent', 'Obtain court order before surgery', 'Transfer to another hospital',
 'B', 'In emergencies where patient is incapacitated and no surrogate is available, implied consent allows life-saving treatment. The reasonable person standard applies: treatment a reasonable person would accept.', 'medium'),
('e1200004-0000-0000-0000-000000000004', 'd0000420-0000-0000-0000-000000000120', 4,
 'The principle of therapeutic privilege allows withholding information when:',
 'The patient requests not to know', 'Disclosure would cause significant harm', 'The surgeon believes the information is too complex', 'The family requests withholding',
 'B', 'Therapeutic privilege permits withholding information when disclosure would cause significant psychological harm. It should be used rarely and is distinct from patient waiver, where patients request not to know.', 'medium'),
('e1200005-0000-0000-0000-000000000005', 'd0000420-0000-0000-0000-000000000120', 5,
 'When a surgical error occurs that causes patient harm, the ethical approach is to:',
 'Discuss only with risk management', 'Disclose the error honestly to the patient', 'Wait to see if the patient notices', 'Document but not discuss with patient',
 'B', 'Ethical practice requires honest disclosure of errors to patients. Disclosure is also associated with reduced litigation and is required by many institutions and professional standards.', 'easy'),
('e1200006-0000-0000-0000-000000000006', 'd0000420-0000-0000-0000-000000000120', 6,
 'A competent adult Jehovah''s Witness refuses blood transfusion before surgery despite life-threatening bleeding risk. The surgeon should:',
 'Respect the patient''s decision', 'Transfuse during surgery as implied consent', 'Refuse to perform surgery', 'Obtain court order to transfuse',
 'A', 'Competent adults have the right to refuse treatment, including life-saving blood transfusion, based on religious or personal beliefs. This autonomous choice must be respected even if it results in death.', 'medium'),
('e1200007-0000-0000-0000-000000000007', 'd0000420-0000-0000-0000-000000000120', 7,
 'The concept of beneficence in surgical ethics means:',
 'Doing no harm', 'Acting in the patient''s best interest', 'Respecting patient choices', 'Fair distribution of resources',
 'B', 'Beneficence is the ethical obligation to act in the patient''s best interest and promote their wellbeing. It must be balanced with respect for autonomy when patient choices conflict with medical recommendations.', 'easy'),
('e1200008-0000-0000-0000-000000000008', 'd0000420-0000-0000-0000-000000000120', 8,
 'During surgery, an unexpected finding requires a more extensive procedure than consented. The surgeon should:',
 'Proceed with the extended procedure', 'Complete only the consented procedure', 'Wake the patient to obtain consent', 'Decision depends on urgency and prior discussions',
 'D', 'Management depends on context: if life-threatening or preoperatively discussed, extended procedure may be appropriate. For non-urgent findings, completing only consented procedure and discussing later is often preferred.', 'medium'),
('e1200009-0000-0000-0000-000000000009', 'd0000420-0000-0000-0000-000000000120', 9,
 'A family requests everything be done for an elderly patient with terminal cancer and multiorgan failure. The ethical approach includes:',
 'Providing all requested treatments indefinitely', 'Discussing goals of care and medical futility', 'Withdrawing care without discussion', 'Transferring care to another physician',
 'B', 'When treatment offers no benefit, discussing goals of care, prognosis, and potentially futile interventions is appropriate. The focus should shift to comfort and dignity while respecting family needs for understanding.', 'medium'),
('e1200010-0000-0000-0000-000000000010', 'd0000420-0000-0000-0000-000000000120', 10,
 'Innovative surgical procedures require:',
 'No special consent beyond standard surgery', 'Research ethics board approval in all cases', 'Enhanced disclosure about novelty and limited data', 'Only the surgeon''s judgment of appropriateness',
 'C', 'Surgical innovation requires enhanced informed consent including disclosure that the procedure is new, outcomes data is limited, and alternative established treatments exist. Some innovations may require IRB oversight.', 'medium')
ON CONFLICT (id) DO NOTHING;
