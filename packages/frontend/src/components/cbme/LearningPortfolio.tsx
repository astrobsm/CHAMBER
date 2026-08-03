import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { useEffect, useState } from 'react';
import { cbmeApi } from '../../services/api';
import {
  IdentificationIcon,
  BuildingLibraryIcon,
  PhoneArrowUpRightIcon,
  ClipboardDocumentListIcon,
  TrophyIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';

const TRAINING_LEVELS = [
  { value: 'medical_student', label: 'Medical Student' },
  { value: 'house_officer', label: 'House Officer' },
  { value: 'intern', label: 'Intern' },
  { value: 'junior_resident', label: 'Resident (Junior)' },
  { value: 'senior_resident', label: 'Resident (Senior)' },
  { value: 'nursing_student', label: 'Nursing Student' },
  { value: 'allied_health', label: 'Allied Health Professional' },
];

interface Portfolio {
  profile: {
    firstName: string;
    lastName: string;
    matricNumber: string | null;
    registrationNumber: string | null;
    institution: string | null;
    faculty: string | null;
    department: string | null;
    trainingLevel: string | null;
    photoUrl: string | null;
    whatsappNumber: string | null;
    emergencyContact: { name: string | null; phone: string | null; relationship: string | null };
    previousUnits: string | null;
    portfolioNotes: string | null;
  } | null;
  rotationHistory: Array<{
    rotation_id: string;
    name: string;
    specialty: string | null;
    unit: string | null;
    academic_session: string | null;
    start_date: string;
    end_date: string;
    status: string;
    total_score: string | null;
    is_eligible: boolean | null;
    group_name: string | null;
    group_color: string | null;
  }>;
  awards: Array<{ award_name: string; score: string | null; rotation_name: string; awarded_at: string }>;
  assessments: Array<{ assessment_type: string; assessment_date: string; percentage: string; assessor_name: string | null; feedback: string | null }>;
}

type FormState = {
  registrationNumber: string;
  institution: string;
  faculty: string;
  department: string;
  trainingLevel: string;
  whatsappNumber: string;
  emergencyContactName: string;
  emergencyContactPhone: string;
  emergencyContactRelationship: string;
  previousUnits: string;
  portfolioNotes: string;
};

const EMPTY: FormState = {
  registrationNumber: '', institution: '', faculty: '', department: '', trainingLevel: '',
  whatsappNumber: '', emergencyContactName: '', emergencyContactPhone: '',
  emergencyContactRelationship: '', previousUnits: '', portfolioNotes: '',
};

/**
 * The extended student record required by the CBME framework, plus the
 * portfolio that follows the student from one posting to the next.
 */
export function LearningPortfolio() {
  const queryClient = useQueryClient();
  const [form, setForm] = useState<FormState>(EMPTY);

  const { data, isLoading } = useQuery<Portfolio>({
    queryKey: ['my-portfolio'],
    queryFn: async () => (await cbmeApi.getMyPortfolio()).data?.data,
  });

  useEffect(() => {
    const p = data?.profile;
    if (!p) return;
    setForm({
      registrationNumber: p.registrationNumber || '',
      institution: p.institution || '',
      faculty: p.faculty || '',
      department: p.department || '',
      trainingLevel: p.trainingLevel || '',
      whatsappNumber: p.whatsappNumber || '',
      emergencyContactName: p.emergencyContact?.name || '',
      emergencyContactPhone: p.emergencyContact?.phone || '',
      emergencyContactRelationship: p.emergencyContact?.relationship || '',
      previousUnits: p.previousUnits || '',
      portfolioNotes: p.portfolioNotes || '',
    });
  }, [data]);

  const save = useMutation({
    mutationFn: () => cbmeApi.updateMyProfile(form),
    onSuccess: () => {
      toast.success('Portfolio details saved');
      queryClient.invalidateQueries({ queryKey: ['my-portfolio'] });
    },
    onError: () => toast.error('Could not save your portfolio details'),
  });

  if (isLoading) return <div className="h-64 bg-gray-200 rounded-xl animate-pulse" />;

  const set = (k: keyof FormState) => (e: { target: { value: string } }) =>
    setForm((f) => ({ ...f, [k]: e.target.value }));

  return (
    <>
      {/* ---- Training record ---- */}
      <div className="card">
        <div className="flex items-center gap-2 mb-4">
          <IdentificationIcon className="w-5 h-5 text-primary-800" />
          <h3 className="font-semibold text-gray-900">Training record</h3>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
          <div>
            <label className="label">Matriculation number</label>
            <input className="input bg-gray-50" value={data?.profile?.matricNumber || ''} disabled />
          </div>
          <div>
            <label className="label">Registration number</label>
            <input className="input" value={form.registrationNumber} onChange={set('registrationNumber')} />
          </div>
          <div>
            <label className="label">Level of training</label>
            <select className="input" value={form.trainingLevel} onChange={set('trainingLevel')}>
              <option value="">Select…</option>
              {TRAINING_LEVELS.map((l) => (
                <option key={l.value} value={l.value}>{l.label}</option>
              ))}
            </select>
          </div>
          <div>
            <label className="label">Institution</label>
            <input className="input" value={form.institution} onChange={set('institution')} />
          </div>
          <div>
            <label className="label">Faculty</label>
            <input className="input" value={form.faculty} onChange={set('faculty')} />
          </div>
          <div>
            <label className="label">Department</label>
            <input className="input" value={form.department} onChange={set('department')} />
          </div>
          <div>
            <label className="label">WhatsApp number</label>
            <input className="input" value={form.whatsappNumber} onChange={set('whatsappNumber')} />
          </div>
        </div>

        <div className="flex items-center gap-2 mt-6 mb-3">
          <PhoneArrowUpRightIcon className="w-5 h-5 text-primary-800" />
          <h4 className="font-semibold text-gray-900 text-sm">Emergency contact</h4>
        </div>
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
          <div>
            <label className="label">Name</label>
            <input className="input" value={form.emergencyContactName} onChange={set('emergencyContactName')} />
          </div>
          <div>
            <label className="label">Phone</label>
            <input className="input" value={form.emergencyContactPhone} onChange={set('emergencyContactPhone')} />
          </div>
          <div>
            <label className="label">Relationship</label>
            <input className="input" value={form.emergencyContactRelationship} onChange={set('emergencyContactRelationship')} />
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-4 mt-4">
          <div>
            <label className="label">Previous units</label>
            <textarea className="input" rows={3} value={form.previousUnits} onChange={set('previousUnits')} placeholder="Units you have already rotated through" />
          </div>
          <div>
            <label className="label">Portfolio notes</label>
            <textarea className="input" rows={3} value={form.portfolioNotes} onChange={set('portfolioNotes')} placeholder="Reflections, learning goals, procedures logged…" />
          </div>
        </div>

        <div className="flex justify-end mt-5 pt-4 border-t border-gray-100">
          <button className="btn-primary" onClick={() => save.mutate()} disabled={save.isPending}>
            {save.isPending ? 'Saving…' : 'Save portfolio details'}
          </button>
        </div>
      </div>

      {/* ---- Rotation history ---- */}
      <div className="card">
        <div className="flex items-center gap-2 mb-4">
          <BuildingLibraryIcon className="w-5 h-5 text-primary-800" />
          <h3 className="font-semibold text-gray-900">Rotation history</h3>
        </div>
        {data?.rotationHistory?.length ? (
          <div className="space-y-2">
            {data.rotationHistory.map((r) => (
              <div key={r.rotation_id} className="flex flex-wrap items-center gap-3 px-3 py-2.5 rounded-lg bg-gray-50">
                <div className="flex-1 min-w-[12rem]">
                  <p className="font-medium text-gray-900 text-sm">
                    {r.name}
                    {r.group_name && (
                      <span className="ml-2 text-xs font-medium" style={{ color: r.group_color || undefined }}>
                        {r.group_name}
                      </span>
                    )}
                  </p>
                  <p className="text-xs text-gray-500">
                    {[r.specialty, r.unit, r.academic_session].filter(Boolean).join(' • ') || '—'}
                  </p>
                  <p className="text-xs text-gray-400">
                    {new Date(r.start_date).toLocaleDateString('en-GB')} – {new Date(r.end_date).toLocaleDateString('en-GB')}
                  </p>
                </div>
                {r.total_score !== null && (
                  <span className="font-bold text-gray-900 text-sm">{Number(r.total_score).toFixed(1)}%</span>
                )}
                <span className={r.is_eligible ? 'badge-success' : r.status === 'cleared' ? 'badge-info' : 'badge-warning'}>
                  {r.status === 'cleared' ? 'Signed out' : r.is_eligible ? 'Eligible' : 'In progress'}
                </span>
              </div>
            ))}
          </div>
        ) : (
          <p className="text-sm text-gray-500">No rotations recorded yet.</p>
        )}
      </div>

      {/* ---- Awards ---- */}
      {(data?.awards?.length ?? 0) > 0 && (
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <TrophyIcon className="w-5 h-5 text-amber-500" />
            <h3 className="font-semibold text-gray-900">Awards</h3>
          </div>
          <div className="space-y-2">
            {data!.awards.map((a, i) => (
              <div key={i} className="flex items-center gap-3 px-3 py-2.5 rounded-lg bg-amber-50">
                <TrophyIcon className="w-5 h-5 text-amber-500 shrink-0" />
                <div className="flex-1 min-w-0">
                  <p className="text-sm font-medium text-gray-900 truncate">{a.award_name}</p>
                  <p className="text-xs text-gray-500 truncate">{a.rotation_name}</p>
                </div>
                {a.score !== null && (
                  <span className="text-sm font-bold text-amber-700 shrink-0">{Number(a.score).toFixed(1)}%</span>
                )}
              </div>
            ))}
          </div>
        </div>
      )}

      {/* ---- Assessment history ---- */}
      {(data?.assessments?.length ?? 0) > 0 && (
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <ClipboardDocumentListIcon className="w-5 h-5 text-teal-700" />
            <h3 className="font-semibold text-gray-900">Assessment history & feedback</h3>
          </div>
          <div className="space-y-2 max-h-96 overflow-y-auto">
            {data!.assessments.map((a, i) => (
              <div key={i} className="px-3 py-2.5 rounded-lg bg-gray-50">
                <div className="flex items-center justify-between gap-3">
                  <p className="text-sm font-medium text-gray-900 capitalize">
                    {a.assessment_type.replace(/_/g, ' ')}
                  </p>
                  <span className="text-sm font-bold text-gray-900 shrink-0">
                    {Number(a.percentage).toFixed(0)}%
                  </span>
                </div>
                <p className="text-xs text-gray-500">
                  {new Date(a.assessment_date).toLocaleDateString('en-GB')}
                  {a.assessor_name && ` • ${a.assessor_name}`}
                </p>
                {a.feedback && <p className="text-xs text-gray-700 mt-1.5 leading-snug">{a.feedback}</p>}
              </div>
            ))}
          </div>
        </div>
      )}
    </>
  );
}

export default LearningPortfolio;
