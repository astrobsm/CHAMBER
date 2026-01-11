-- Surgery 4 MCQ Question Bank - Batch 21
-- Section E: Oncology - Bladder Cancer
-- 40 Questions

-- Topic: Bladder Cancer
INSERT INTO topics (id, name, category_id, description, order_index, is_active)
VALUES ('c4000021-0000-0000-0000-000000000021', 'Bladder Cancer', 'a0000004-0000-0000-0000-000000000004', 'Bladder cancer epidemiology, diagnosis, staging, and management', 21, true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO questions (id, topic_id, category_id, question_text, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, cognitive_level) VALUES
(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'The most common histological type of bladder cancer is:',
 'Squamous cell carcinoma', 'Adenocarcinoma', 'Urothelial (transitional cell) carcinoma', 'Small cell carcinoma', 'Sarcoma',
 'C', 'Urothelial carcinoma (transitional cell): >90% of bladder cancers in Western countries. Squamous cell carcinoma associated with schistosomiasis (endemic areas), chronic irritation. Adenocarcinoma: urachal remnants.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'The most important risk factor for bladder cancer is:',
 'Alcohol', 'Cigarette smoking', 'Family history', 'Diabetes', 'Obesity',
 'B', 'Smoking: accounts for 50% of bladder cancers. 2-4x increased risk. Aromatic amines in tobacco smoke. Other: occupational exposures (dyes, rubber, leather), arsenic, chronic infection.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Schistosoma haematobium infection is associated with which type of bladder cancer:',
 'Urothelial carcinoma', 'Squamous cell carcinoma', 'Adenocarcinoma', 'Small cell carcinoma', 'Lymphoma',
 'B', 'Schistosomiasis: chronic bladder inflammation leads to squamous metaplasia and squamous cell carcinoma. Endemic in Africa, Middle East. This is why SCC is more common in those regions.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'The most common presenting symptom of bladder cancer is:',
 'Dysuria', 'Painless gross hematuria', 'Frequency', 'Flank pain', 'Weight loss',
 'B', 'Painless gross hematuria: present in 80-90% of bladder cancers. Often intermittent. Any hematuria (gross or microscopic) in adults needs evaluation. Irritative symptoms may indicate CIS.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Initial evaluation of suspected bladder cancer includes:',
 'CT scan only', 'Cystoscopy and urine cytology', 'Biopsy without imaging', 'MRI only', 'Blood tests only',
 'B', 'Cystoscopy: direct visualization and biopsy. Urine cytology: high specificity for high-grade tumors. CT urography for upper tract evaluation. These together are standard workup.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Urine cytology has highest sensitivity for detecting:',
 'Low-grade papillary tumors', 'High-grade urothelial carcinoma and carcinoma in situ', 'Squamous cell carcinoma', 'All bladder cancers equally', 'Only invasive cancers',
 'B', 'Urine cytology: high sensitivity for high-grade tumors and CIS (shed malignant cells). Low sensitivity for low-grade papillary tumors (well-differentiated, less shedding).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Transurethral resection of bladder tumor (TURBT) is performed for:',
 'Metastatic disease only', 'Diagnosis staging and treatment of non-muscle-invasive bladder cancer', 'Upper tract tumors', 'Replacing cystoscopy', 'Only for recurrent cancers',
 'B', 'TURBT: diagnostic (histology, grade, stage) and therapeutic for non-muscle-invasive disease. Must include muscle in specimen for accurate staging. May need re-resection for high-grade/T1 tumors.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Non-muscle-invasive bladder cancer includes:',
 'T2 tumors only', 'Ta Tis (CIS) and T1 tumors', 'T3 tumors', 'Any tumor with lymph node involvement', 'Metastatic disease',
 'B', 'NMIBC: Ta (papillary, confined to mucosa), Tis (carcinoma in situ - flat high grade), T1 (invades lamina propria). No muscle invasion. Treated with TURBT and intravesical therapy.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Carcinoma in situ (CIS) of the bladder is characterized by:',
 'Low-grade papillary tumor', 'Flat high-grade urothelial carcinoma confined to mucosa', 'Muscle-invasive disease', 'Always visible on cystoscopy', 'Benign condition',
 'B', 'CIS: flat, high-grade (always), confined to urothelium. High progression risk to invasion. May appear as erythematous patches or be invisible. Diagnosed by cytology and random biopsies.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Blue light cystoscopy with hexaminolevulinate improves detection of:',
 'Muscle-invasive cancer only', 'Carcinoma in situ and papillary tumors', 'Upper tract tumors', 'Prostate cancer', 'Kidney stones',
 'B', 'Blue light/photodynamic cystoscopy: fluorescent marker accumulates in tumor cells. Improves detection of CIS and small papillary tumors. Higher detection rate than white light alone.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Intravesical BCG (Bacillus Calmette-Guerin) is used for:',
 'All bladder cancers', 'High-risk non-muscle-invasive bladder cancer and CIS', 'Muscle-invasive cancer', 'Metastatic disease', 'Benign tumors',
 'B', 'Intravesical BCG: immunotherapy for high-risk NMIBC (high-grade Ta, T1, CIS). Reduces recurrence and progression. Induction course then maintenance. Most effective intravesical agent.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Contraindications to intravesical BCG include:',
 'Age over 60', 'Active urinary tract infection or immunocompromised state or traumatic catheterization', 'Prior bladder surgery', 'Small bladder capacity', 'Male sex',
 'B', 'BCG contraindications: active UTI (sepsis risk), gross hematuria, traumatic catheterization, immunocompromised (live attenuated mycobacteria), within 2 weeks of TURBT.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Single immediate post-TURBT intravesical chemotherapy (mitomycin C) is recommended for:',
 'All TURBT patients', 'Low-risk tumors to reduce recurrence', 'Only high-risk cancers', 'After BCG failure', 'Muscle-invasive cancer',
 'B', 'Single immediate instillation (within 24 hours of TURBT): reduces recurrence by 40% in low-risk tumors. Avoid if perforation suspected. Mitomycin C, gemcitabine are options.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'BCG maintenance therapy typically consists of:',
 'Single instillation', 'Weekly instillations for 1-3 years according to SWOG protocol', 'Daily treatment', 'Monthly treatment indefinitely', 'Only during recurrence',
 'B', 'BCG maintenance (SWOG protocol): induction (6 weekly), then maintenance at 3, 6 months, then every 6 months for up to 3 years. Reduces recurrence and progression better than induction alone.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Muscle-invasive bladder cancer (T2 or higher) is best treated with:',
 'TURBT alone', 'Radical cystectomy with neoadjuvant chemotherapy or trimodality therapy', 'Intravesical BCG', 'Observation', 'Hormonal therapy',
 'B', 'MIBC treatment: radical cystectomy (standard) with neoadjuvant cisplatin-based chemotherapy or bladder-preserving trimodality therapy (TURBT + chemo + radiation). Adjuvant options also.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Radical cystectomy in males includes removal of:',
 'Bladder only', 'Bladder prostate seminal vesicles and pelvic lymph nodes', 'Only bladder and prostate', 'Kidney and bladder', 'Bladder and urethra only',
 'B', 'Male radical cystectomy: bladder, prostate, seminal vesicles, bilateral pelvic lymph node dissection. In females: bladder, uterus, ovaries, anterior vagina, urethra (depending on extent).', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Urinary diversion options after radical cystectomy include:',
 'Catheter only', 'Ileal conduit or continent diversion (neobladder or continent cutaneous)', 'No diversion needed', 'Kidney diversion', 'Bladder preservation always',
 'B', 'Urinary diversion: ileal conduit (incontinent, requires external bag), orthotopic neobladder (voids per urethra), continent cutaneous diversion. Choice depends on patient factors, oncologic extent, preference.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'An ileal conduit urinary diversion:',
 'Allows normal voiding', 'Uses a segment of ileum to create a stoma requiring an external collection bag', 'Is continent', 'Uses the colon', 'Does not require bowel surgery',
 'B', 'Ileal conduit: ileal segment as passive conduit from ureters to abdominal wall stoma. Incontinent diversion. Most common diversion. Lower complications than continent diversions.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Orthotopic neobladder allows:',
 'External stoma for urine', 'Voiding per urethra through reconstructed bladder', 'Intermittent catheterization always', 'No urinary storage', 'Normal sensation',
 'B', 'Neobladder: bowel pouch anastomosed to urethra. Patient voids by relaxing pelvic floor and increasing abdominal pressure. Nocturnal incontinence common initially. No sensation of fullness (timed voiding).', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Neoadjuvant chemotherapy for muscle-invasive bladder cancer:',
 'Is never used', 'Improves survival compared to cystectomy alone', 'Should be given after surgery', 'Only uses single agents', 'Replaces surgery',
 'B', 'Neoadjuvant cisplatin-based chemotherapy: 5% absolute survival benefit. Downstages tumors. Better tolerated than adjuvant (before surgery). Standard of care for MIBC. GC or MVAC regimens.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Trimodality therapy for bladder cancer consists of:',
 'Surgery radiation and hormones', 'Maximal TURBT concurrent chemoradiation', 'Chemotherapy radiation and immunotherapy', 'Three types of chemotherapy', 'BCG intravesical chemotherapy and radiation',
 'B', 'Trimodality therapy (bladder preservation): maximal TURBT, then concurrent chemoradiation. Selected patients (unifocal, no CIS, complete TURBT). Comparable outcomes to cystectomy in appropriate candidates.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Cisplatin-based chemotherapy is the standard for bladder cancer because:',
 'Least toxic option', 'Most effective and provides survival benefit', 'Only available chemotherapy', 'No alternatives exist', 'Works for all patients equally',
 'B', 'Cisplatin is cornerstone of bladder cancer chemotherapy. GC (gemcitabine/cisplatin) or MVAC regimens. For cisplatin-ineligible patients, carboplatin-based or checkpoint inhibitors.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Immune checkpoint inhibitors (pembrolizumab, atezolizumab) are used in bladder cancer for:',
 'First-line for all patients', 'Cisplatin-ineligible patients or after platinum-based chemotherapy failure', 'Only locally advanced disease', 'Replacing surgery', 'Prevention',
 'B', 'Checkpoint inhibitors (PD-1/PD-L1): for metastatic bladder cancer, cisplatin-ineligible patients (if PD-L1 high), or after platinum failure. Also in BCG-unresponsive NMIBC (pembrolizumab).', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Upper tract urothelial carcinoma (renal pelvis or ureter) is treated with:',
 'Same as bladder cancer always', 'Nephroureterectomy with bladder cuff excision', 'Cystectomy', 'Radiation only', 'Observation',
 'B', 'Upper tract TCC: radical nephroureterectomy with bladder cuff (standard). Kidney-sparing approaches for selected cases (solitary kidney, small low-grade tumors). Same field change concept.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Surveillance after treatment for non-muscle-invasive bladder cancer includes:',
 'Annual CT only', 'Regular cystoscopy and cytology according to risk', 'No surveillance needed', 'Blood tests only', 'One-time cystoscopy',
 'B', 'NMIBC surveillance: cystoscopy and cytology. Schedule based on risk (low-risk: 3 months then yearly, high-risk: more frequent for 2 years then less often). Lifelong surveillance due to recurrence risk.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Bladder cancer recurrence rates for non-muscle-invasive disease are:',
 'Less than 10 percent', 'High at 50-70 percent within 5 years', '100 percent', 'Only after cystectomy', 'None with BCG treatment',
 'B', 'NMIBC recurrence: 50-70% recur within 5 years. Progression to muscle invasion: 10-30% depending on risk. Lifelong surveillance essential. BCG reduces but does not eliminate recurrence.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'BCG-unresponsive non-muscle-invasive bladder cancer is defined as:',
 'Any recurrence after BCG', 'Recurrence or persistence despite adequate BCG therapy including maintenance', 'First-time diagnosis', 'Only CIS that recurs', 'Low-grade recurrence',
 'B', 'BCG-unresponsive: recurrence within 6-12 months of adequate BCG (induction + at least one maintenance course) for high-grade disease. Options: cystectomy, additional intravesical therapy, pembrolizumab.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Uroplakin expression is useful for:',
 'Treatment selection', 'Confirming urothelial origin of metastatic carcinoma', 'Prognosis only', 'Staging', 'Determining chemotherapy response',
 'B', 'Uroplakins: urothelium-specific markers. Immunohistochemistry for uroplakin III helps confirm urothelial origin in metastatic carcinoma of unknown primary or unusual histology.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Variant histology in bladder cancer (micropapillary, sarcomatoid, plasmacytoid):',
 'Has better prognosis', 'Is associated with aggressive behavior and often requires early cystectomy', 'Only found in females', 'Does not affect treatment', 'Is always benign',
 'B', 'Variant histology: micropapillary, sarcomatoid, plasmacytoid, nested variants - aggressive. May warrant early radical cystectomy even for apparent NMIBC due to understaging and poor response to intravesical therapy.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'The role of CT urography in bladder cancer workup is to:',
 'Stage the bladder tumor', 'Evaluate the upper urinary tract for synchronous tumors', 'Replace cystoscopy', 'Guide biopsy', 'Only for follow-up',
 'B', 'CT urography: evaluates upper tracts (2-4% synchronous upper tract tumors). Also detects hydronephrosis (concerning for obstruction by tumor). Cystoscopy still needed for bladder evaluation.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Partial cystectomy may be appropriate for:',
 'All bladder cancers', 'Solitary tumor in dome of bladder with no CIS and adequate margins', 'Multifocal tumors', 'CIS present', 'Trigone tumors',
 'B', 'Partial cystectomy: very selected cases. Solitary tumor, mobile bladder dome, no CIS elsewhere, able to achieve 2 cm margins with adequate residual capacity. Rare indication.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Erdafitinib is approved for:',
 'All bladder cancers', 'Metastatic bladder cancer with FGFR alterations', 'NMIBC only', 'Prevention', 'First-line treatment',
 'B', 'Erdafitinib: FGFR inhibitor. For metastatic urothelial carcinoma with FGFR2/3 alterations (found in ~15-20% of bladder cancers). Companion diagnostic testing required.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Enfortumab vedotin is:',
 'Immunotherapy', 'An antibody-drug conjugate targeting Nectin-4', 'Hormonal therapy', 'Intravesical chemotherapy', 'FGFR inhibitor',
 'B', 'Enfortumab vedotin: ADC targeting Nectin-4 (expressed on most urothelial cancers). Approved for metastatic bladder cancer after chemotherapy and immunotherapy. Game-changing agent.', 'hard', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Smoking cessation after bladder cancer diagnosis:',
 'Has no effect', 'Reduces recurrence risk and improves treatment outcomes', 'Increases recurrence', 'Only helps if stopped 10 years prior', 'Is not recommended',
 'B', 'Smoking cessation: reduces recurrence and improves outcomes. Continued smoking associated with higher recurrence, worse response to BCG, poorer surgical outcomes. Counsel all patients.', 'easy', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Lymph node involvement (N+) in bladder cancer after cystectomy:',
 'Has excellent prognosis', 'Indicates poor prognosis but adjuvant chemotherapy may help', 'Means no further treatment needed', 'Is never detected', 'Has 100 percent cure rate',
 'B', 'Node-positive bladder cancer: poor prognosis (5-year survival ~25-35%). Adjuvant chemotherapy (if not given neoadjuvant) may improve outcomes. Extended lymphadenectomy may be therapeutic in limited nodal disease.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Enhanced recovery after surgery (ERAS) protocols for radical cystectomy:',
 'Are not beneficial', 'Reduce complications length of stay and recovery time', 'Increase complication rates', 'Only for young patients', 'Delay recovery',
 'B', 'ERAS protocols: multimodal approach including early feeding, early mobilization, optimal pain control, minimizing opioids. Reduce complications, length of stay, faster return of bowel function.', 'medium', 'knowledge'),

(uuid_generate_v4(), 'c4000021-0000-0000-0000-000000000021', 'a0000004-0000-0000-0000-000000000004',
 'Prostatic urethral involvement by urothelial carcinoma affects:',
 'Nothing', 'Eligibility for orthotopic neobladder reconstruction', 'Only survival', 'Chemotherapy choice', 'Radiation dose',
 'B', 'Prostatic urethral involvement: relative contraindication to orthotopic neobladder (urethral recurrence risk). Intraoperative frozen section of urethral margin guides decision. May require urethrectomy.', 'hard', 'knowledge');
