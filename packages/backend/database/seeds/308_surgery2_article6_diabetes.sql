-- Surgery 2 Article 6: Surgery in the Diabetic Patient - Sections and MCQs

INSERT INTO article_sections (article_id, section_type, section_order, title, content) VALUES
('d0000006-0000-0000-0000-000000000006'::uuid, 'introduction', 1, 'Introduction', 
'Diabetes mellitus is one of the most common comorbidities encountered in surgical patients. Diabetic patients have increased surgical risk due to metabolic derangements, vascular disease, neuropathy, and impaired host defenses. Understanding perioperative diabetes management is essential for surgical trainees.

**Prevalence and Impact**
- 10-15% of surgical patients have diabetes
- Diabetics have 2-5x higher perioperative mortality
- Hospital stays 3-5 days longer on average
- Higher rates of wound infection, MI, stroke, and renal failure

**Types of Diabetes**
- Type 1: Absolute insulin deficiency (autoimmune)
- Type 2: Insulin resistance with relative deficiency (90% of diabetics)
- Gestational diabetes
- Secondary diabetes (steroids, pancreatitis)

**Why Diabetics Have Higher Surgical Risk**
1. Macrovascular disease (CAD, PVD, stroke)
2. Microvascular disease (nephropathy, retinopathy)
3. Autonomic neuropathy (cardiovascular instability)
4. Impaired immune function
5. Delayed wound healing
6. Metabolic instability during stress'),

('d0000006-0000-0000-0000-000000000006'::uuid, 'learning_objectives', 2, 'Learning Objectives',
'After completing this module, you should be able to:

1. Understand why diabetic patients have increased surgical risk
2. Conduct appropriate preoperative assessment and optimization
3. Recognize and screen for diabetes-related complications
4. Manage insulin and oral hypoglycemic agents perioperatively
5. Apply glycemic targets during surgery
6. Prevent and manage diabetic ketoacidosis and hyperosmolar state
7. Recognize hypoglycemia and its management
8. Understand diabetic foot pathophysiology and management
9. Apply wound care principles in diabetic patients
10. Manage emergency surgery in uncontrolled diabetes'),

('d0000006-0000-0000-0000-000000000006'::uuid, 'content', 3, 'Preoperative Assessment',
'**Medical History**
- Duration and type of diabetes
- Current medications and doses
- Home glucose monitoring records
- HbA1c (glycated hemoglobin)
- Previous diabetic emergencies (DKA, hyperosmolar state)
- Hypoglycemic episodes and awareness

**Screening for Complications**

**Cardiovascular Assessment**
- History of chest pain, dyspnea, exercise tolerance
- ECG (mandatory for all diabetic patients)
- Echocardiography if indicated
- Stress testing for major surgery

**Nephropathy**
- Serum creatinine and eGFR
- Urinalysis for proteinuria
- Avoid nephrotoxic agents if impaired

**Neuropathy**
- Peripheral neuropathy (sensory testing)
- Autonomic neuropathy (postural BP, resting tachycardia)
- Higher risk of silent MI

**Retinopathy**
- Eye examination if recent assessment not available
- Consider ophthalmology referral

**Preoperative Glycemic Control**
- Target HbA1c: <8.5% for elective surgery
- Postpone elective surgery if HbA1c >8.5% (optimize first)
- Emergency surgery proceeds regardless of control

**Fasting Considerations**
- Diabetics should be scheduled first on the list when possible
- Minimize fasting time
- Clear fluids with carbohydrates may be considered'),

('d0000006-0000-0000-0000-000000000006'::uuid, 'content', 4, 'Perioperative Medication Management',
'**Oral Hypoglycemic Agents**

| Drug Class | Day Before Surgery | Day of Surgery |
|------------|-------------------|----------------|
| Metformin | Usually continue | Omit (lactic acidosis risk) |
| Sulfonylureas | Continue | Omit (hypoglycemia risk) |
| SGLT2 inhibitors | Stop 3-4 days before | Stop (DKA risk) |
| DPP-4 inhibitors | Continue | May continue |
| GLP-1 agonists | Continue | May omit |

**Metformin Special Considerations**
- Stop on morning of surgery
- Resume when eating and renal function stable
- Risk of lactic acidosis with renal impairment/contrast

**SGLT2 Inhibitors (Empagliflozin, Dapagliflozin)**
- MUST stop 3-4 days before surgery
- Risk of euglycemic DKA (normal glucose but acidosis)

**Insulin Management**

**Type 1 Diabetes**
- NEVER omit insulin completely (will develop DKA)
- Reduce basal insulin by 20-50% night before
- Omit morning short-acting insulin if fasting
- Start variable rate insulin infusion (VRII) for major surgery

**Type 2 Diabetes on Insulin**
- Minor surgery: May use adjusted subcutaneous regimen
- Major surgery: Variable rate insulin infusion

**Variable Rate Insulin Infusion (VRII) / Sliding Scale**
Indications:
- Major surgery
- Type 1 diabetes
- Poorly controlled Type 2 diabetes
- Prolonged fasting expected

Protocol:
- 5% dextrose infusion at 50-100mL/hour
- Short-acting insulin infusion
- Adjust rate based on hourly glucose (target 6-10 mmol/L)
- Potassium replacement as needed'),

('d0000006-0000-0000-0000-000000000006'::uuid, 'content', 5, 'Intraoperative and Postoperative Care',
'**Intraoperative Glycemic Management**
- Target glucose: 6-10 mmol/L (108-180 mg/dL)
- Avoid hypoglycemia (<4 mmol/L) - can cause brain injury
- Avoid hyperglycemia (>12 mmol/L) - impairs immunity, wound healing
- Hourly blood glucose monitoring
- Adjust insulin infusion accordingly

**Stress Response to Surgery**
Surgery triggers counter-regulatory hormones:
- Cortisol, glucagon, catecholamines, growth hormone
- Causes insulin resistance and hyperglycemia
- Even non-diabetics may need insulin during major surgery

**Postoperative Management**
- Continue VRII until eating and drinking
- Overlap with subcutaneous insulin before stopping VRII
- Resume oral agents when tolerating diet and bowel function returned
- Monitor for hypoglycemia (especially with poor appetite)
- Close glucose monitoring (4-6 hourly initially)

**Wound Care in Diabetics**
- Higher infection risk (impaired neutrophil function)
- Consider extended antibiotic prophylaxis
- Delayed wound healing
- Regular wound inspection
- Optimize nutrition and glucose control

**VTE Prophylaxis**
- Diabetics at higher VTE risk
- Mechanical and pharmacological prophylaxis
- Early mobilization'),

('d0000006-0000-0000-0000-000000000006'::uuid, 'content', 6, 'Diabetic Emergencies and Complications',
'**Diabetic Ketoacidosis (DKA)**
Most common in Type 1 diabetes

Triggers in surgical patients:
- Infection/sepsis
- Omission of insulin
- Stress response
- Steroid use

Clinical features:
- Hyperglycemia (usually >14 mmol/L)
- Metabolic acidosis (pH <7.3, HCO3 <18)
- Ketosis (blood/urine ketones positive)
- Dehydration, Kussmaul breathing, altered consciousness

Management:
1. IV fluids (0.9% saline initially)
2. IV insulin infusion (0.1 units/kg/hour)
3. Potassium replacement (K+ drops with insulin)
4. Monitor glucose, electrolytes, blood gas hourly
5. Identify and treat precipitant

**Hyperosmolar Hyperglycemic State (HHS)**
More common in Type 2 diabetes
- Severe hyperglycemia (>33 mmol/L)
- High osmolality (>320 mOsm/kg)
- Severe dehydration
- No significant ketosis
- High mortality (10-20%)

**Hypoglycemia**
Blood glucose <4 mmol/L

Symptoms:
- Autonomic: Sweating, tremor, palpitations, hunger
- Neuroglycopenic: Confusion, drowsiness, seizures, coma

Management:
- Conscious: Oral glucose (15-20g rapid-acting carbohydrate)
- Unconscious: IV 20% glucose (50-100mL) or IM glucagon 1mg

**Diabetic Foot**
Major cause of amputation
Pathophysiology: Neuropathy + PVD + Immunopathy
Prevention: Foot care, appropriate footwear, regular examination
Management: Multidisciplinary - surgery, vascular, podiatry'),

('d0000006-0000-0000-0000-000000000006'::uuid, 'key_points', 7, 'Key Points',
'1. Diabetic patients have 2-5x higher perioperative mortality and morbidity
2. Preoperative assessment must screen for cardiac, renal, and autonomic complications
3. Target HbA1c <8.5% for elective surgery; optimize if higher
4. Metformin: Omit on day of surgery (lactic acidosis risk)
5. SGLT2 inhibitors: Stop 3-4 days before surgery (euglycemic DKA risk)
6. Type 1 diabetics should NEVER have insulin stopped completely
7. Intraoperative glucose target: 6-10 mmol/L (108-180 mg/dL)
8. VRII (sliding scale insulin) for major surgery or poorly controlled diabetes
9. DKA: IV fluids + IV insulin + potassium replacement + treat precipitant
10. Diabetic foot requires multidisciplinary management');

-- MCQs
INSERT INTO article_self_assessments (article_id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation) VALUES
('d0000006-0000-0000-0000-000000000006'::uuid, 1,
'What is the target intraoperative blood glucose range for diabetic patients?',
'2-4 mmol/L', '4-6 mmol/L', '6-10 mmol/L', '10-15 mmol/L', '15-20 mmol/L',
'C', 'The target intraoperative blood glucose is 6-10 mmol/L (108-180 mg/dL). This range avoids hypoglycemia (which causes brain injury) and significant hyperglycemia (which impairs wound healing and immunity).'),

('d0000006-0000-0000-0000-000000000006'::uuid, 2,
'Why should metformin be omitted on the day of surgery?',
'Risk of hypoglycemia', 'Risk of lactic acidosis', 'Drug interaction with anesthetics', 'Causes delayed gastric emptying', 'Increases bleeding risk',
'B', 'Metformin carries a risk of lactic acidosis, particularly with renal impairment, dehydration, or contrast administration. It is omitted on the day of surgery and resumed when the patient is eating and renal function is stable.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 3,
'How many days before surgery should SGLT2 inhibitors be stopped?',
'Day of surgery only', '1 day before', '3-4 days before', '1 week before', '2 weeks before',
'C', 'SGLT2 inhibitors (empagliflozin, dapagliflozin) should be stopped 3-4 days before surgery due to the risk of euglycemic DKA (diabetic ketoacidosis with normal or near-normal glucose levels). This is a potentially fatal complication.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 4,
'In Type 1 diabetes, what happens if insulin is completely omitted?',
'Hypoglycemia', 'Nothing significant', 'Diabetic ketoacidosis', 'Hyperosmolar state', 'Weight gain',
'C', 'In Type 1 diabetes, complete omission of insulin leads to diabetic ketoacidosis (DKA) because there is absolute insulin deficiency. These patients should NEVER have insulin completely stopped, even when fasting. Basal insulin should be continued at reduced dose.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 5,
'What is the diagnostic blood glucose level for hypoglycemia?',
'Less than 6 mmol/L', 'Less than 5 mmol/L', 'Less than 4 mmol/L', 'Less than 3 mmol/L', 'Less than 2 mmol/L',
'C', 'Hypoglycemia is defined as blood glucose <4 mmol/L (<72 mg/dL). Symptoms include autonomic (sweating, tremor, palpitations) and neuroglycopenic (confusion, drowsiness, seizures) manifestations.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 6,
'What is the first-line treatment for unconscious hypoglycemia?',
'Oral glucose gel', 'IV 20% glucose', 'Subcutaneous insulin', 'Oral carbohydrates', 'IM insulin',
'B', 'For unconscious hypoglycemia, IV glucose (20% glucose 50-100mL) is the first-line treatment as oral administration is contraindicated due to aspiration risk. IM glucagon 1mg is an alternative if IV access is not available.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 7,
'What HbA1c level indicates the need to postpone elective surgery for optimization?',
'Greater than 6.5%', 'Greater than 7.0%', 'Greater than 7.5%', 'Greater than 8.5%', 'Greater than 10%',
'D', 'Elective surgery should be postponed if HbA1c is >8.5% to allow for optimization of glycemic control. Emergency surgery proceeds regardless of HbA1c level but with careful perioperative management.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 8,
'Which complication of diabetes increases the risk of silent myocardial infarction?',
'Peripheral neuropathy', 'Autonomic neuropathy', 'Nephropathy', 'Retinopathy', 'Macrovascular disease',
'B', 'Autonomic neuropathy affects cardiac sympathetic and parasympathetic innervation, leading to reduced perception of anginal pain. This results in silent (painless) myocardial infarction, making cardiac events harder to detect.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 9,
'In diabetic ketoacidosis, what is the typical initial fluid for resuscitation?',
'5% dextrose', '10% dextrose', '0.9% normal saline', '0.45% saline', 'Hartmann solution',
'C', 'Initial fluid resuscitation in DKA uses 0.9% normal saline to address the severe dehydration (often 5-8L deficit). Once glucose falls below 14 mmol/L, 5% dextrose is added to prevent hypoglycemia while continuing insulin.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 10,
'What electrolyte requires close monitoring and replacement during DKA treatment?',
'Sodium', 'Potassium', 'Chloride', 'Magnesium', 'Phosphate',
'B', 'Potassium requires close monitoring during DKA treatment. Although total body potassium is depleted, serum levels may initially be normal or high. Insulin drives potassium into cells, potentially causing dangerous hypokalemia. Replacement is usually needed.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 11,
'What is euglycemic DKA?',
'DKA with glucose <14 mmol/L', 'DKA with normal or near-normal glucose levels', 'DKA in non-diabetics', 'DKA without ketones', 'DKA with metabolic alkalosis',
'B', 'Euglycemic DKA refers to diabetic ketoacidosis with normal or near-normal blood glucose levels. It is particularly associated with SGLT2 inhibitors. The diagnosis requires awareness and checking for ketones even with normal glucose.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 12,
'Why should diabetic patients be scheduled first on the operating list?',
'They take longer to operate', 'To minimize fasting time', 'They are higher priority', 'Anesthetic concerns', 'To allow time for complications',
'B', 'Diabetic patients should be scheduled first on the operating list to minimize fasting time, reducing the risk of hypoglycemia and metabolic instability. This allows earlier resumption of normal diet and medication.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 13,
'What is the triad of diabetic foot pathophysiology?',
'Neuropathy, vasculopathy, infection', 'Neuropathy, vasculopathy, immunopathy', 'Trauma, infection, ischemia', 'Edema, infection, gangrene', 'Pain, numbness, ulceration',
'B', 'The triad of diabetic foot pathophysiology is: neuropathy (sensory loss leading to unrecognized trauma), vasculopathy (peripheral vascular disease causing poor healing), and immunopathy (impaired host defense leading to infection).'),

('d0000006-0000-0000-0000-000000000006'::uuid, 14,
'What is the insulin infusion rate typically used in DKA?',
'0.01 units/kg/hour', '0.05 units/kg/hour', '0.1 units/kg/hour', '0.5 units/kg/hour', '1 unit/kg/hour',
'C', 'The standard insulin infusion rate for DKA is 0.1 units/kg/hour of short-acting insulin (e.g., 7 units/hour for a 70kg patient). The rate is adjusted based on glucose response, aiming for a reduction of 3-4 mmol/L per hour.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 15,
'Which investigation is mandatory for all diabetic patients undergoing surgery?',
'CT scan', 'Echocardiogram', 'ECG', 'Stress test', 'Coronary angiogram',
'C', 'An ECG is mandatory for all diabetic patients undergoing surgery due to high prevalence of coronary artery disease and risk of silent ischemia from autonomic neuropathy. Further cardiac workup depends on history and ECG findings.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 16,
'What characterizes Hyperosmolar Hyperglycemic State (HHS)?',
'Glucose >33 mmol/L, osmolality >320, no significant ketosis', 'Glucose >14 mmol/L, ketosis, acidosis', 'Glucose <4 mmol/L, confusion', 'Normal glucose with lactic acidosis', 'Glucose >20 mmol/L with severe ketosis',
'A', 'HHS is characterized by severe hyperglycemia (usually >33 mmol/L), hyperosmolality (>320 mOsm/kg), severe dehydration, and minimal or no ketosis. It is more common in Type 2 diabetes and has high mortality (10-20%).'),

('d0000006-0000-0000-0000-000000000006'::uuid, 17,
'When should subcutaneous insulin be restarted after surgery with VRII?',
'Immediately after surgery', 'When patient is eating and drinking', 'After 48 hours', 'When glucose normalizes', 'Not needed if glucose controlled',
'B', 'Subcutaneous insulin should be restarted when the patient is eating and drinking normally. There should be an overlap period where subcutaneous insulin is given before stopping the VRII to avoid rebound hyperglycemia.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 18,
'What is the mortality increase in diabetic surgical patients compared to non-diabetics?',
'Same mortality', '1.5 times higher', '2-5 times higher', '10 times higher', '20 times higher',
'C', 'Diabetic patients have 2-5 times higher perioperative mortality compared to non-diabetic patients due to cardiovascular disease, impaired healing, infection susceptibility, and metabolic complications.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 19,
'Which oral hypoglycemic can be continued through surgery?',
'Metformin', 'Sulfonylureas', 'SGLT2 inhibitors', 'DPP-4 inhibitors', 'All must be stopped',
'D', 'DPP-4 inhibitors (sitagliptin, saxagliptin) can generally be continued through surgery as they have low hypoglycemia risk and no known perioperative complications. Other agents have specific risks requiring omission.'),

('d0000006-0000-0000-0000-000000000006'::uuid, 20,
'What is Kussmaul breathing seen in DKA?',
'Slow shallow breathing', 'Deep rapid breathing', 'Irregular breathing', 'Apneic episodes', 'Cheyne-Stokes respiration',
'B', 'Kussmaul breathing is deep, rapid (labored) breathing seen in DKA as a compensatory mechanism for metabolic acidosis. The respiratory system attempts to blow off CO2 to raise pH. It is a classic sign of severe DKA.');
