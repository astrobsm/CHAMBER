-- Surgery 4 MCQ Question Bank - Batch 49
-- Section H: Special Topics - Surgical Ethics and Principles
-- 40 Questions

-- Topic: Surgical Ethics and Principles
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000049-0000-0000-0000-000000000049', 'Surgical Ethics and Principles', 'a0000004-0000-0000-0000-000000000004', 'Informed consent, ethical principles, end-of-life care, and surgical professionalism', 49, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'The four core principles of medical ethics are:',
 'Honesty truth justice and integrity', 'Autonomy beneficence non-maleficence and justice', 'Safety efficacy quality and access', 'Confidentiality privacy safety and truth', 'None of the above',
 'B', 'Beauchamp and Childress four principles: autonomy (patient self-determination), beneficence (do good), non-maleficence (do no harm), justice (fair distribution). These form foundation of modern medical ethics.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Autonomy in medical ethics refers to:',
 'Doctor knows best', 'Respecting patient right to make informed decisions about their own care', 'Hospital authority', 'Government regulation', 'Insurance decisions',
 'B', 'Autonomy: patient right to self-determination. Make informed decisions free of coercion. Respecting autonomy requires informed consent, truthfulness, confidentiality. Balanced against other principles when patient decisions may harm self/others.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Beneficence requires the physician to:',
 'Avoid harm only', 'Act in the best interest of the patient and provide benefit', 'Follow all patient wishes', 'Maximize profit', 'Minimize legal risk',
 'B', 'Beneficence: duty to promote patient welfare, act in their best interest. Provide benefit. May conflict with autonomy when patient refuses beneficial treatment, or with justice when resources are limited.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Non-maleficence means:',
 'Doing good', 'First do no harm or avoid causing harm to patients', 'Being just', 'Respecting autonomy', 'Telling the truth',
 'B', 'Non-maleficence: "primum non nocere" - first do no harm. Avoid treatments that harm exceeds benefit. Balance against beneficence (most treatments have some harm/risk). Consider risk-benefit ratio for each intervention.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Justice in healthcare ethics involves:',
 'Individual patient care only', 'Fair distribution of healthcare resources and treating similar cases similarly', 'Legal proceedings', 'Maximum treatment always', 'No rationing ever',
 'B', 'Justice: fair distribution of benefits and burdens. Treat similar cases similarly. Issues of resource allocation, access to care, avoiding discrimination. Balancing individual needs against societal resources.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Valid informed consent requires:',
 'Only patient signature', 'Disclosure of information patient understanding voluntary decision and capacity', 'Only verbal agreement', 'Witness present', 'Written form only',
 'B', 'Informed consent elements: disclosure (risks, benefits, alternatives, diagnosis), comprehension (patient understands), voluntary (no coercion), competence/capacity (able to make decisions). Process, not just signature.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Therapeutic privilege allows a physician to:',
 'Lie to patients', 'Withhold information if disclosure would seriously harm the patient', 'Avoid informed consent entirely', 'Perform surgery without consent', 'Override patient refusal',
 'B', 'Therapeutic privilege: exception allowing withholding information if disclosure would cause serious psychological harm. Rarely justified. Does not allow avoiding consent entirely. Should still disclose to family/surrogate. Used very cautiously.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'A patient has decision-making capacity if they can:',
 'Sign documents', 'Understand communicate appreciate and reason about treatment decisions', 'Read English', 'Are over 18 years old', 'Have a family member present',
 'B', 'Capacity assessment: understand relevant information, appreciate situation and consequences, reason about options, communicate a choice. Decision-specific and time-specific. Can fluctuate. Different from legal competence.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'When a patient lacks decision-making capacity:',
 'The physician decides alone', 'A surrogate decision maker should be identified', 'Treatment is withheld', 'Only family decides', 'Courts must be involved',
 'B', 'Surrogate decision making: identify appropriate surrogate (healthcare proxy, family per state hierarchy). Surrogate uses substituted judgment (what patient would want) or best interest (if patient wishes unknown). Document discussions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'An advance directive is:',
 'A DNR order', 'A document expressing patient wishes about future care when unable to decide', 'A surgical consent form', 'A living will only', 'A physician order',
 'B', 'Advance directive: patient instructions for future care when incapacitated. Includes living will (specific treatment wishes) and healthcare proxy/durable power of attorney (designates surrogate). Should be documented and accessible.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'A Do Not Resuscitate (DNR) order:',
 'Means withhold all treatment', 'Specifies no CPR in cardiac arrest but other treatments continue unless specified', 'Applies in OR setting always', 'Is permanent once written', 'Means comfort care only',
 'B', 'DNR: no CPR if cardiac/respiratory arrest. Does NOT mean withhold other treatments (antibiotics, surgery, dialysis unless separately specified). In OR: discuss preoperatively - may suspend, modify, or continue. Should be revisited and can be changed.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'When managing DNR orders perioperatively:',
 'All DNRs are suspended in OR', 'The DNR should be discussed preoperatively and plan documented', 'DNRs are always honored in OR', 'Anesthesiologist decides', 'DNRs are never valid in hospital',
 'B', 'Perioperative DNR: required reconsideration. Options: suspend during surgery, procedure-specific modifications, continue fully. Discuss with patient/surrogate, document plan. Recognize OR context different from natural death.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Emergency treatment without consent is justified by:',
 'Convenience', 'Implied consent when patient cannot consent and delay would cause serious harm', 'Family request', 'Hospital policy', 'Physician preference',
 'B', 'Emergency exception: implied consent for emergency treatment when patient cannot consent, no surrogate available, delay would cause serious harm or death. Treat to stabilize. Document circumstances. Obtain consent when possible.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Confidentiality in healthcare:',
 'Is absolute and cannot be broken', 'Protects patient privacy but has exceptions for safety and legal requirements', 'Applies only to written records', 'Is optional', 'Only applies to mental health',
 'B', 'Confidentiality: fundamental obligation. Exceptions: patient consent, legal requirements (reporting diseases, abuse, gunshot wounds), protect third parties from harm, public health, healthcare operations. HIPAA provides legal framework.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Disclosure of medical errors to patients:',
 'Should be avoided to prevent lawsuits', 'Is ethically required and promotes trust and learning', 'Is only for fatal errors', 'Is optional', 'Increases malpractice claims',
 'B', 'Error disclosure: ethical obligation of honesty. Patient has right to know. Disclose what happened, express regret, explain steps to prevent recurrence. Many states have apology laws. Evidence suggests honest disclosure reduces litigation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Futile treatment refers to:',
 'Any expensive treatment', 'Treatment that cannot achieve goals and offers no benefit to patient', 'All ICU care', 'Palliative care', 'Any surgery in elderly',
 'B', 'Medical futility: treatment that cannot achieve goals, provides no physiological benefit, or only prolongs dying. Types: quantitative (almost never works), qualitative (no meaningful quality outcome). Physicians not obligated to provide futile treatment.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'When families request treatment deemed futile by physicians:',
 'Must always comply', 'Engage in communication ethics consultation and consider transfer if conflict persists', 'Always refuse', 'Discharge patient', 'Document and comply',
 'B', 'Futility conflicts: communication (explain prognosis, understand family perspective), ethics consultation, second opinions, time-limited trials. If persists: consider transfer, hospital policy/committee. Courts rarely needed. Relationship and trust paramount.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Withdrawal of life-sustaining treatment:',
 'Is illegal euthanasia', 'Is ethically permissible when it accords with patient wishes or best interests', 'Requires court approval always', 'Is never allowed', 'Only for brain death',
 'B', 'Withdrawing life support: ethically and legally permissible when patient refuses or surrogate decides based on patient wishes/best interests. Not same as euthanasia (direct killing). Allow natural death. Comfort care continues.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'The principle of double effect applies when:',
 'Only one effect occurs', 'An action with good intent has foreseeable bad side effect', 'Bad intent is allowed', 'Only in emergency', 'Never in medicine',
 'B', 'Double effect: action intended for good may have foreseeable bad effect. Conditions: action not inherently wrong, good effect intended, bad effect not means to good, proportionality. Example: opioids for pain (good) may hasten death (unintended side effect).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Palliative surgery is performed to:',
 'Cure disease', 'Relieve symptoms and improve quality of life without curing disease', 'Prolong survival only', 'For diagnosis only', 'Only at end of life',
 'B', 'Palliative surgery: symptom relief, quality of life, not cure. Examples: bypass for obstruction, fixation for pathologic fracture, debulking for pain/obstruction. Consider morbidity, recovery time vs expected survival. Patient goals central.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Conflict of interest in surgery includes:',
 'Only financial conflicts', 'Financial industry and personal relationships that may bias clinical decisions', 'Patient preferences', 'Family opinions', 'Hospital policies only',
 'B', 'Conflicts of interest: financial (industry payments, ownership), academic (publication, promotion), personal (relationships). Require disclosure, management. Primary obligation is to patient. May need recusal from decisions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Industry relationships with surgeons require:',
 'No special consideration', 'Disclosure management and prioritizing patient interests', 'Complete prohibition', 'Only financial disclosure', 'Government approval',
 'B', 'Industry relationships: can benefit innovation but create conflicts. Require transparent disclosure (to patients, institutions, publications), management strategies, prioritize patient welfare. Sunshine Act requires reporting payments.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Impaired physicians should:',
 'Continue practice without disclosure', 'Be reported and offered treatment through appropriate channels', 'Self-regulate without oversight', 'Only be reported if error occurs', 'Never practice again',
 'B', 'Impaired physicians (substance abuse, mental health, cognitive decline): professional obligation to report to protect patients. Physician health programs offer confidential treatment. Goal is rehabilitation. Patient safety is paramount.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Reporting a colleague for unprofessional behavior:',
 'Is optional', 'Is an ethical and often legal obligation to protect patients', 'Violates collegiality', 'Should be avoided', 'Requires proof beyond doubt',
 'B', 'Duty to report: ethical obligation to report impaired, incompetent, or unethical colleagues. Protects patients. Report to appropriate authority (department chair, hospital committee, medical board). May have legal protections for good-faith reports.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Surgical innovation differs from research in that:',
 'They are identical', 'Innovation is novel treatment for individual patient while research systematically tests hypotheses', 'Innovation requires IRB approval', 'Research is not regulated', 'Innovation is always experimental',
 'B', 'Innovation vs research: innovation is departure from standard for individual patient benefit. Research systematically tests hypotheses on subjects. Gray zone exists. Both require informed consent. Research requires IRB approval; innovation may need institutional oversight.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Informed consent for surgical research requires:',
 'Same as clinical consent', 'All clinical consent elements plus research-specific disclosures about voluntary participation', 'Only written form', 'No special requirements', 'Verbal consent sufficient',
 'B', 'Research consent: all clinical elements plus: voluntary (can withdraw without affecting care), may not benefit personally, research purpose, experimental aspects, alternatives including not participating. IRB-approved consent process.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Truth-telling in medicine:',
 'Is sometimes harmful', 'Is essential for trust and autonomy with sensitive delivery', 'Is optional', 'Should always be complete immediately', 'Cultural differences are irrelevant',
 'B', 'Veracity: ethical duty of truthfulness. Foundation of trust and autonomy. Bad news should be delivered sensitively, at appropriate pace, with support. Some cultures prefer family-centered disclosure - explore patient preferences respectfully.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'When patient and family wishes conflict:',
 'Family always overrides', 'Competent patient wishes take precedence', 'Physician decides', 'Do nothing', 'Ethics committee decides',
 'B', 'Patient autonomy: competent adult patient wishes override family desires. Exception: patient explicitly delegates to family. For incapacitated patients, surrogate decides using substituted judgment or best interest. Facilitate communication.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Cultural competence in surgery requires:',
 'Treating everyone the same', 'Understanding cultural beliefs and adapting communication while maintaining standards', 'Accepting all practices', 'Ignoring cultural differences', 'Only translation services',
 'B', 'Cultural competence: understand cultural context, adapt communication style, use interpreters (not family) when needed, respect beliefs while maintaining ethical standards. Some practices may conflict with medical ethics - navigate respectfully.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Jehovahs Witness patients refusing blood transfusion:',
 'Should be transfused if life-threatening', 'Have the right to refuse and bloodless surgery techniques should be offered', 'Are legally incompetent', 'Cannot have surgery', 'Should be discharged',
 'B', 'Jehovahs Witness blood refusal: autonomous right of competent adult. Explore specifics (some accept blood fractions, cell saver). Document clearly. Use bloodless techniques. Court order may be sought for children. Do not force transfusion on competent adult.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Conscientious objection by surgeons:',
 'Is never permitted', 'May be allowed for specific procedures with obligation to refer', 'Allows refusal of any patient', 'Has no limits', 'Only for religious reasons',
 'B', 'Conscientious objection: right to decline procedures against beliefs (abortion, aid in dying where legal). Must still: provide information, refer to willing provider, not abandon in emergency. Cannot discriminate against protected classes.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Operating on family members:',
 'Is always appropriate', 'Should generally be avoided due to impaired objectivity except in emergencies', 'Is required if qualified', 'Is illegal', 'Is ethically neutral',
 'B', 'Treating family: generally avoided due to impaired objectivity, difficulty with boundaries, incomplete history due to assumptions. Exceptions: emergency when no alternative, minor issues. Refer to colleague when possible.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Social media use by surgeons:',
 'Has no restrictions', 'Requires maintaining patient privacy professionalism and appropriate boundaries', 'Is prohibited', 'Only for education', 'Requires patient consent for all posts',
 'B', 'Social media: benefits (education, networking) but risks. Maintain confidentiality, professionalism. Patient-identifiable info requires explicit consent. Maintain boundaries. Avoid disparaging colleagues/patients. Separate professional/personal appropriately.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'A surgeon who realizes they have caused an intraoperative injury should:',
 'Not tell the patient', 'Address the injury manage it and disclose to the patient', 'Only tell if asked', 'Wait for family to ask', 'Blame equipment or staff',
 'B', 'Intraoperative injury management: address injury (may need additional expertise), document accurately, disclose to patient/family honestly, express regret, explain management plan. Honesty maintains trust and is ethically required.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Second opinion requests by patients should:',
 'Be discouraged', 'Be supported as patient right with facilitation of records transfer', 'Require physician approval', 'Terminate the doctor-patient relationship', 'Be charged extra',
 'B', 'Second opinions: patient right. Facilitate records transfer. Should not be viewed as lack of trust. May be required by insurance. Surgeon should support, not obstruct. Can strengthen therapeutic relationship if handled professionally.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Termination of the surgeon-patient relationship:',
 'Can occur at any time for any reason', 'Requires adequate notice and ensuring ongoing care is arranged', 'Is not allowed once surgery is scheduled', 'Requires patient agreement', 'Is only for non-payment',
 'B', 'Ending relationship: should not abandon patient. Provide adequate notice, arrange continued care, provide records. Cannot terminate based on protected characteristics. During active treatment, ensure appropriate transition. Emergency care still required.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'When resources are limited such as OR time or ICU beds:',
 'First-come first-served always', 'Fair allocation policies based on medical criteria should guide decisions', 'Ability to pay decides', 'Social worth determines priority', 'Random selection',
 'B', 'Resource allocation: fair, transparent policies based on medical criteria (urgency, expected benefit, prognosis). Avoid bias based on social worth, race, or ability to pay. Triage systems for emergencies. Ethics consultation for difficult cases.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Ethics consultation services:',
 'Replace physician decision-making', 'Provide guidance for difficult ethical dilemmas and facilitate communication', 'Are legally binding', 'Are only for end-of-life cases', 'Delay care unnecessarily',
 'B', 'Ethics consultation: assists with complex ethical issues (futility, capacity, surrogate conflicts, withdrawal of care). Advisory, not binding. Facilitates communication between team, patient, family. Educational. Available 24/7 in many hospitals.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000049-0000-0000-0000-000000000049', 'a0000004-0000-0000-0000-000000000004',
 'Surgical professionalism includes:',
 'Technical skill only', 'Competence integrity respect for patients accountability and commitment to improvement', 'Billing practices only', 'Hospital privileges', 'Research productivity',
 'B', 'Professionalism: competence (maintain skills, lifelong learning), integrity (honesty, ethics), respect (patients, colleagues, staff), accountability (accept responsibility, quality improvement), altruism (patient welfare above self-interest), commitment to profession.', 'easy', 'knowledge');
