import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { useEffect, useState } from 'react';
import { cbmeApi } from '../../services/api';
import {
  ClipboardDocumentListIcon,
  CheckCircleIcon,
  PencilSquareIcon,
} from '@heroicons/react/24/outline';
import { format } from 'date-fns';
import toast from 'react-hot-toast';

interface ClinicAssignment {
  id: string;
  rotation_id: string;
  clinic_date: string;
  clinic_name: string | null;
  patient_code: string | null;
  patient_age: number | null;
  patient_sex: string | null;
  provisional_diagnosis: string | null;
  consultant_name: string | null;
  presentation_order: number | null;
  status: string;
  clerking_id: string | null;
  clerking_status: string | null;
  history: string | null;
  examination: string | null;
  investigations: string | null;
  differential_diagnosis: string | null;
  final_diagnosis: string | null;
  management_plan: string | null;
  evidence_discussion: string | null;
}

// The required sections of a complete clerking, in the order they are taught.
const SECTIONS = [
  { key: 'history', label: 'History', required: true, rows: 6, hint: 'Presenting complaint, history of presenting complaint, systemic review, past medical, drug, family and social history.' },
  { key: 'examination', label: 'Examination', required: true, rows: 6, hint: 'General examination and relevant system examination with positive and negative findings.' },
  { key: 'investigations', label: 'Investigations', required: false, rows: 4, hint: 'Investigations requested and their results, with justification.' },
  { key: 'differentialDiagnosis', label: 'Differential Diagnosis', required: true, rows: 4, hint: 'List your differentials with the features that support or refute each.' },
  { key: 'finalDiagnosis', label: 'Final Diagnosis', required: true, rows: 2, hint: 'State the working diagnosis and its stage/severity where applicable.' },
  { key: 'managementPlan', label: 'Management Plan', required: true, rows: 5, hint: 'Resuscitation, definitive management, follow-up and patient counselling.' },
  { key: 'evidenceDiscussion', label: 'Evidence-Based Discussion', required: false, rows: 5, hint: 'Cite guidelines or literature that support your management decisions.' },
] as const;

type SectionKey = (typeof SECTIONS)[number]['key'];
type ClerkingForm = Record<SectionKey, string>;

const EMPTY_FORM: ClerkingForm = {
  history: '', examination: '', investigations: '', differentialDiagnosis: '',
  finalDiagnosis: '', managementPlan: '', evidenceDiscussion: '',
};

function formToState(a: ClinicAssignment): ClerkingForm {
  return {
    history: a.history || '',
    examination: a.examination || '',
    investigations: a.investigations || '',
    differentialDiagnosis: a.differential_diagnosis || '',
    finalDiagnosis: a.final_diagnosis || '',
    managementPlan: a.management_plan || '',
    evidenceDiscussion: a.evidence_discussion || '',
  };
}

export function StudentClinicCases() {
  const queryClient = useQueryClient();
  const [activeId, setActiveId] = useState<string | null>(null);
  const [form, setForm] = useState<ClerkingForm>(EMPTY_FORM);

  const { data, isLoading } = useQuery<ClinicAssignment[]>({
    queryKey: ['my-clinics'],
    queryFn: async () => {
      const res = await cbmeApi.getMyClinics();
      return res.data?.data?.assignments || [];
    },
  });

  const assignments = data || [];
  const active = assignments.find((a) => a.id === activeId) || null;

  // Load the saved clerking whenever a different patient is opened.
  useEffect(() => {
    if (active) setForm(formToState(active));
  }, [activeId]); // eslint-disable-line react-hooks/exhaustive-deps

  const save = useMutation({
    mutationFn: (submit: boolean) =>
      cbmeApi.saveClerking({
        clinicAssignmentId: activeId,
        rotationId: active?.rotation_id,
        ...form,
        submit,
      }),
    onSuccess: (_res, submit) => {
      toast.success(submit ? 'Clerking submitted for assessment' : 'Draft saved');
      queryClient.invalidateQueries({ queryKey: ['my-clinics'] });
      if (submit) setActiveId(null);
    },
    onError: (err: { response?: { data?: { message?: string } } }) => {
      toast.error(err.response?.data?.message || 'Could not save the clerking');
    },
  });

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-4">
        <div className="h-8 bg-gray-200 rounded w-1/3" />
        <div className="h-48 bg-gray-200 rounded-xl" />
      </div>
    );
  }

  // ---- Clerking editor ----------------------------------------------------
  if (active) {
    const submitted = active.clerking_status === 'submitted';
    return (
      <div className="space-y-6">
        <div className="flex items-center justify-between gap-3">
          <div className="min-w-0">
            <button onClick={() => setActiveId(null)} className="text-sm text-primary-700 hover:underline">
              ← Back to my patients
            </button>
            <h1 className="text-2xl font-bold text-gray-900 mt-1 truncate">
              {active.patient_code || 'Patient'}
              {active.provisional_diagnosis && (
                <span className="text-gray-500 font-normal text-lg"> — {active.provisional_diagnosis}</span>
              )}
            </h1>
            <p className="text-gray-600 text-sm">
              {active.clinic_name || 'Clinic'} • {format(new Date(active.clinic_date), 'd MMM yyyy')}
              {active.consultant_name && ` • ${active.consultant_name}`}
            </p>
          </div>
          {submitted && (
            <span className="badge-success shrink-0">
              <CheckCircleIcon className="w-4 h-4 mr-1" /> Submitted
            </span>
          )}
        </div>

        <div className="space-y-4">
          {SECTIONS.map((s) => (
            <div key={s.key} className="card">
              <label className="label flex items-center gap-1.5">
                {s.label}
                {s.required && <span className="text-red-500">*</span>}
              </label>
              <p className="text-xs text-gray-500 mb-2">{s.hint}</p>
              <textarea
                className="input font-normal"
                rows={s.rows}
                value={form[s.key]}
                disabled={submitted}
                onChange={(e) => setForm((f) => ({ ...f, [s.key]: e.target.value }))}
                placeholder={`Enter the ${s.label.toLowerCase()}…`}
              />
            </div>
          ))}
        </div>

        {!submitted && (
          <div className="flex flex-col sm:flex-row gap-3 sticky bottom-4">
            <button
              className="btn-outline flex-1 bg-white"
              onClick={() => save.mutate(false)}
              disabled={save.isPending}
            >
              Save draft
            </button>
            <button
              className="btn-primary flex-1"
              onClick={() => save.mutate(true)}
              disabled={save.isPending}
            >
              {save.isPending ? 'Submitting…' : 'Submit for assessment'}
            </button>
          </div>
        )}
      </div>
    );
  }

  // ---- Patient list -------------------------------------------------------
  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-gray-900">My Clinic Patients</h1>
        <p className="text-gray-600">
          Patients allocated to you for clerking. Submitted clerkings are scored by your consultant
          and count towards the Clinical Competency domain.
        </p>
      </div>

      {assignments.length === 0 ? (
        <div className="card text-center py-12">
          <ClipboardDocumentListIcon className="w-12 h-12 text-gray-300 mx-auto mb-3" />
          <p className="text-gray-600 font-medium">No patients have been assigned to you yet.</p>
          <p className="text-gray-500 text-sm mt-1">
            Patients are allocated automatically on each clinic day.
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {assignments.map((a) => (
            <button
              key={a.id}
              onClick={() => setActiveId(a.id)}
              className="card-hover text-left"
            >
              <div className="flex items-start justify-between gap-3">
                <div className="min-w-0">
                  <p className="font-semibold text-gray-900 truncate">
                    {a.patient_code || 'Patient'}
                    {a.patient_age !== null && (
                      <span className="text-gray-500 font-normal text-sm">
                        {' '}
                        • {a.patient_age}
                        {a.patient_sex ? ` ${a.patient_sex}` : ''}
                      </span>
                    )}
                  </p>
                  <p className="text-sm text-gray-600 mt-0.5 truncate">
                    {a.provisional_diagnosis || 'Diagnosis to be established'}
                  </p>
                  <p className="text-xs text-gray-500 mt-1.5">
                    {a.clinic_name || 'Clinic'} • {format(new Date(a.clinic_date), 'd MMM yyyy')}
                    {a.presentation_order && ` • Presentation order ${a.presentation_order}`}
                  </p>
                  {a.consultant_name && (
                    <p className="text-xs text-gray-500">Consultant: {a.consultant_name}</p>
                  )}
                </div>
                <div className="shrink-0">
                  {a.clerking_status === 'submitted' ? (
                    <span className="badge-success">Submitted</span>
                  ) : a.clerking_status === 'draft' ? (
                    <span className="badge-warning">Draft</span>
                  ) : (
                    <span className="badge-info">
                      <PencilSquareIcon className="w-3.5 h-3.5 mr-1" /> To clerk
                    </span>
                  )}
                </div>
              </div>
            </button>
          ))}
        </div>
      )}
    </div>
  );
}

export default StudentClinicCases;
