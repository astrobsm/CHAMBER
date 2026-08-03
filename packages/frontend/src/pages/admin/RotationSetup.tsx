import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { useEffect, useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { cbmeApi, rotationsApi } from '../../services/api';
import { HOUSES } from '../../utils/competency';
import {
  BuildingOffice2Icon,
  CalendarDaysIcon,
  ShieldCheckIcon,
  PresentationChartLineIcon,
  TrashIcon,
  UserGroupIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';

const DAYS = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'];

interface SetupData {
  id: string;
  name: string;
  specialty: string | null;
  unit: string | null;
  academicSession: string | null;
  batch: string | null;
  expectedStudents: number | null;
  consultants: string | null;
  residents: string | null;
  houseOfficers: string | null;
  clinicDays: string[];
  wardRoundDays: string[];
  theatreDays: string[];
  seminarDays: string[];
  startDate: string;
  endDate: string;
  examinationDate: string | null;
  signOutDate: string | null;
  groupsAllocatedAt: string | null;
  seminarsAllocatedAt: string | null;
  counts: { groups: number; seminarTopics: number; enrolledStudents: number };
}

interface TopicRow {
  id: string;
  title: string;
  assignment: {
    id: string;
    studentName: string;
    matricNumber: string;
    presentationDate: string | null;
    venue: string | null;
    status: string;
  } | null;
}

export function AdminRotationSetup() {
  const queryClient = useQueryClient();
  const [params, setParams] = useSearchParams();
  const rotationId = params.get('rotationId') || '';

  const { data: rotations } = useQuery<Array<{ id: string; name: string }>>({
    queryKey: ['rotations-list'],
    queryFn: async () => {
      const res = await rotationsApi.getAll();
      return (res.data?.data || []) as Array<{ id: string; name: string }>;
    },
  });

  const { data: setup, isLoading } = useQuery<SetupData>({
    queryKey: ['rotation-setup', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getSetup(rotationId);
      return res.data?.data;
    },
    enabled: !!rotationId,
  });

  const [form, setForm] = useState<Partial<SetupData>>({});
  useEffect(() => {
    if (setup) setForm(setup);
  }, [setup]);

  const saveSetup = useMutation({
    mutationFn: () =>
      cbmeApi.updateSetup(rotationId, {
        specialty: form.specialty,
        unit: form.unit,
        academicSession: form.academicSession,
        batch: form.batch,
        expectedStudents: form.expectedStudents ? Number(form.expectedStudents) : undefined,
        consultants: form.consultants,
        residents: form.residents,
        houseOfficers: form.houseOfficers,
        clinicDays: form.clinicDays,
        wardRoundDays: form.wardRoundDays,
        theatreDays: form.theatreDays,
        seminarDays: form.seminarDays,
        examinationDate: form.examinationDate,
        signOutDate: form.signOutDate,
      }),
    onSuccess: () => {
      toast.success('Rotation details saved');
      queryClient.invalidateQueries({ queryKey: ['rotation-setup', rotationId] });
    },
    onError: () => toast.error('Could not save the rotation details'),
  });

  const toggleDay = (field: 'clinicDays' | 'wardRoundDays' | 'theatreDays' | 'seminarDays', day: string) => {
    setForm((f) => {
      const current = (f[field] as string[]) || [];
      return {
        ...f,
        [field]: current.includes(day) ? current.filter((d) => d !== day) : [...current, day],
      };
    });
  };

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-end sm:justify-between gap-3">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Rotation Setup</h1>
          <p className="text-gray-600">
            Define the posting, allocate competitive teams and distribute seminar topics.
          </p>
        </div>
        <select
          className="input sm:w-72"
          value={rotationId}
          onChange={(e) => setParams(e.target.value ? { rotationId: e.target.value } : {})}
        >
          <option value="">Select a rotation…</option>
          {(rotations || []).map((r) => (
            <option key={r.id} value={r.id}>
              {r.name}
            </option>
          ))}
        </select>
      </div>

      {!rotationId && (
        <div className="card text-center py-12 text-gray-500">
          Choose a rotation to configure it.
        </div>
      )}

      {rotationId && isLoading && <div className="h-64 bg-gray-200 rounded-xl animate-pulse" />}

      {rotationId && setup && (
        <>
          {/* ---- Progress strip ---- */}
          <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
            {[
              { label: 'Students enrolled', value: setup.counts.enrolledStudents, icon: UserGroupIcon },
              { label: 'Teams allocated', value: setup.counts.groups, icon: ShieldCheckIcon },
              { label: 'Seminar topics', value: setup.counts.seminarTopics, icon: PresentationChartLineIcon },
              {
                label: 'Sign-out date',
                value: setup.signOutDate ? new Date(setup.signOutDate).toLocaleDateString('en-GB') : '—',
                icon: CalendarDaysIcon,
              },
            ].map((s) => (
              <div key={s.label} className="card flex items-center gap-3">
                <s.icon className="w-8 h-8 text-primary-800 shrink-0" />
                <div className="min-w-0">
                  <p className="text-xl font-bold text-gray-900 leading-none truncate">{s.value}</p>
                  <p className="text-xs text-gray-500 mt-1">{s.label}</p>
                </div>
              </div>
            ))}
          </div>

          {/* ---- Rotation definition ---- */}
          <div className="card">
            <div className="flex items-center gap-2 mb-4">
              <BuildingOffice2Icon className="w-5 h-5 text-primary-800" />
              <h2 className="font-semibold text-gray-900">Rotation definition</h2>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
              {(
                [
                  { key: 'specialty', label: 'Specialty', placeholder: 'e.g. General Surgery' },
                  { key: 'unit', label: 'Unit', placeholder: 'e.g. Plastic & Burns Unit' },
                  { key: 'academicSession', label: 'Academic session', placeholder: '2025/2026' },
                  { key: 'batch', label: 'Batch', placeholder: 'Batch A' },
                ] as const
              ).map((f) => (
                <div key={f.key}>
                  <label className="label">{f.label}</label>
                  <input
                    className="input"
                    value={(form[f.key] as string) || ''}
                    placeholder={f.placeholder}
                    onChange={(e) => setForm((s) => ({ ...s, [f.key]: e.target.value }))}
                  />
                </div>
              ))}
              <div>
                <label className="label">Number of students</label>
                <input
                  type="number"
                  min={0}
                  className="input"
                  value={form.expectedStudents ?? ''}
                  onChange={(e) =>
                    setForm((s) => ({ ...s, expectedStudents: e.target.value ? Number(e.target.value) : null }))
                  }
                />
              </div>
              <div>
                <label className="label">Examination date</label>
                <input
                  type="date"
                  className="input"
                  value={(form.examinationDate || '').slice(0, 10)}
                  onChange={(e) => setForm((s) => ({ ...s, examinationDate: e.target.value }))}
                />
              </div>
              <div>
                <label className="label">Sign-out date</label>
                <input
                  type="date"
                  className="input"
                  value={(form.signOutDate || '').slice(0, 10)}
                  onChange={(e) => setForm((s) => ({ ...s, signOutDate: e.target.value }))}
                />
              </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-4 mt-4">
              {(
                [
                  { key: 'consultants', label: 'Consultants' },
                  { key: 'residents', label: 'Residents' },
                  { key: 'houseOfficers', label: 'House officers' },
                ] as const
              ).map((f) => (
                <div key={f.key}>
                  <label className="label">{f.label}</label>
                  <textarea
                    className="input"
                    rows={3}
                    placeholder="One name per line"
                    value={(form[f.key] as string) || ''}
                    onChange={(e) => setForm((s) => ({ ...s, [f.key]: e.target.value }))}
                  />
                </div>
              ))}
            </div>

            <div className="mt-5 space-y-3">
              {(
                [
                  { key: 'clinicDays', label: 'Clinic days' },
                  { key: 'wardRoundDays', label: 'Ward round days' },
                  { key: 'theatreDays', label: 'Theatre days' },
                  { key: 'seminarDays', label: 'Seminar days' },
                ] as const
              ).map((f) => (
                <div key={f.key}>
                  <label className="label">{f.label}</label>
                  <div className="flex flex-wrap gap-1.5">
                    {DAYS.map((d) => {
                      const on = ((form[f.key] as string[]) || []).includes(d);
                      return (
                        <button
                          key={d}
                          type="button"
                          onClick={() => toggleDay(f.key, d)}
                          className={`px-3 py-1.5 rounded-lg text-xs font-medium capitalize border transition-colors ${
                            on
                              ? 'bg-primary-800 border-primary-800 text-white'
                              : 'bg-white border-gray-200 text-gray-600 hover:border-primary-400'
                          }`}
                        >
                          {d.slice(0, 3)}
                        </button>
                      );
                    })}
                  </div>
                </div>
              ))}
            </div>

            <div className="mt-5 pt-4 border-t border-gray-100 flex justify-end">
              <button className="btn-primary" onClick={() => saveSetup.mutate()} disabled={saveSetup.isPending}>
                {saveSetup.isPending ? 'Saving…' : 'Save rotation details'}
              </button>
            </div>
          </div>

          <GroupAllocationCard rotationId={rotationId} setup={setup} />
          <SeminarCard rotationId={rotationId} setup={setup} />
        </>
      )}
    </div>
  );
}

// ---------------------------------------------------------------------------

function GroupAllocationCard({ rotationId, setup }: { rotationId: string; setup: SetupData }) {
  const queryClient = useQueryClient();
  const [houseCount, setHouseCount] = useState(5);

  const { data: groups } = useQuery<Array<{ code: string; name: string; color: string; memberCount: number; totalScore: number; leader: string | null }>>({
    queryKey: ['rotation-groups', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getGroups(rotationId);
      return res.data?.data?.groups || [];
    },
    enabled: !!rotationId,
  });

  const allocate = useMutation({
    mutationFn: (reallocate: boolean) => cbmeApi.allocateGroups(rotationId, { reallocate, houseCount }),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Teams allocated');
      queryClient.invalidateQueries({ queryKey: ['rotation-groups', rotationId] });
      queryClient.invalidateQueries({ queryKey: ['rotation-setup', rotationId] });
    },
    onError: (err: { response?: { data?: { message?: string } } }) =>
      toast.error(err.response?.data?.message || 'Allocation failed'),
  });

  return (
    <div className="card">
      <div className="flex items-center justify-between gap-3 mb-4">
        <div className="flex items-center gap-2">
          <ShieldCheckIcon className="w-5 h-5 text-primary-800" />
          <h2 className="font-semibold text-gray-900">Competitive team allocation</h2>
        </div>
        {setup.groupsAllocatedAt && (
          <span className="text-xs text-gray-500">
            Last allocated {new Date(setup.groupsAllocatedAt).toLocaleString('en-GB')}
          </span>
        )}
      </div>

      <p className="text-sm text-gray-600 mb-4">
        Students are distributed into balanced teams — each new student joins the smallest team, so
        the competition stays fair. Existing members keep their team unless you force a reallocation.
      </p>

      <div className="flex flex-wrap items-end gap-3 mb-5">
        <div>
          <label className="label">Number of teams</label>
          <select
            className="input w-40"
            value={houseCount}
            onChange={(e) => setHouseCount(Number(e.target.value))}
          >
            {[2, 3, 4, 5].map((n) => (
              <option key={n} value={n}>
                {n} teams
              </option>
            ))}
          </select>
        </div>
        <button className="btn-primary" onClick={() => allocate.mutate(false)} disabled={allocate.isPending}>
          {allocate.isPending ? 'Allocating…' : 'Allocate teams'}
        </button>
        <button
          className="btn-outline"
          onClick={() => {
            if (window.confirm('Reallocate every student from scratch? Current team membership will be discarded.')) {
              allocate.mutate(true);
            }
          }}
          disabled={allocate.isPending}
        >
          Reallocate all
        </button>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
        {HOUSES.slice(0, houseCount).map((h) => {
          const live = groups?.find((g) => g.code === h.code);
          return (
            <div
              key={h.code}
              className="rounded-xl border border-gray-200 p-4"
              style={{ borderTopColor: h.color, borderTopWidth: 3 }}
            >
              <h3 className="font-semibold text-gray-900">{h.name}</h3>
              <p className="text-xs text-gray-500 italic mt-0.5">“{h.motto}”</p>
              <p className="text-xs text-gray-600 mt-2 leading-snug line-clamp-3">{h.meaning}</p>
              <div className="flex items-center justify-between mt-3 pt-3 border-t border-gray-100">
                <span className="text-xs text-gray-500">
                  {live ? `${live.memberCount} members` : 'Not allocated'}
                </span>
                {live && (
                  <span className="text-sm font-bold" style={{ color: h.color }}>
                    {live.totalScore.toFixed(1)}%
                  </span>
                )}
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ---------------------------------------------------------------------------

function SeminarCard({ rotationId, setup }: { rotationId: string; setup: SetupData }) {
  const queryClient = useQueryClient();
  const [bulk, setBulk] = useState('');
  const [venue, setVenue] = useState('');
  const [startDate, setStartDate] = useState('');
  const [defaultTime, setDefaultTime] = useState('08:00');

  const { data: topics } = useQuery<TopicRow[]>({
    queryKey: ['seminar-topics', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getSeminarTopics(rotationId);
      return res.data?.data?.topics || [];
    },
    enabled: !!rotationId,
  });

  const invalidate = () => {
    queryClient.invalidateQueries({ queryKey: ['seminar-topics', rotationId] });
    queryClient.invalidateQueries({ queryKey: ['rotation-setup', rotationId] });
  };

  const addTopics = useMutation({
    mutationFn: () => cbmeApi.addSeminarTopics(rotationId, bulk.split('\n').map((t) => t.trim()).filter(Boolean)),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Topics added');
      setBulk('');
      invalidate();
    },
    onError: (err: { response?: { data?: { message?: string } } }) =>
      toast.error(err.response?.data?.message || 'Could not add the topics'),
  });

  const allocate = useMutation({
    mutationFn: () =>
      cbmeApi.allocateSeminars(rotationId, {
        startDate: startDate || undefined,
        venue: venue || undefined,
        defaultTime,
      }),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Seminars allocated');
      invalidate();
    },
    onError: (err: { response?: { data?: { message?: string } } }) =>
      toast.error(err.response?.data?.message || 'Allocation failed'),
  });

  const removeTopic = useMutation({
    mutationFn: (topicId: string) => cbmeApi.deleteSeminarTopic(topicId),
    onSuccess: () => {
      toast.success('Topic removed');
      invalidate();
    },
  });

  const withdraw = useMutation({
    mutationFn: (assignmentId: string) => cbmeApi.withdrawSeminar(assignmentId),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Topic reassigned');
      invalidate();
    },
  });

  const unassigned = (topics || []).filter((t) => !t.assignment).length;

  return (
    <div className="card">
      <div className="flex items-center justify-between gap-3 mb-4">
        <div className="flex items-center gap-2">
          <PresentationChartLineIcon className="w-5 h-5 text-violet-700" />
          <h2 className="font-semibold text-gray-900">Seminar topics</h2>
        </div>
        {setup.seminarsAllocatedAt && (
          <span className="text-xs text-gray-500">
            Last allocated {new Date(setup.seminarsAllocatedAt).toLocaleString('en-GB')}
          </span>
        )}
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-5">
        <div>
          <label className="label">Add topics (one per line)</label>
          <textarea
            className="input font-mono text-sm"
            rows={8}
            value={bulk}
            onChange={(e) => setBulk(e.target.value)}
            placeholder={'Burn Shock\nSkin Grafting\nBurn Resuscitation\nDiabetic Foot\nPressure Ulcers\nMelanoma\nHand Trauma\nScar Management'}
          />
          <button
            className="btn-secondary mt-3 w-full"
            onClick={() => addTopics.mutate()}
            disabled={!bulk.trim() || addTopics.isPending}
          >
            {addTopics.isPending ? 'Adding…' : 'Add topics'}
          </button>
        </div>

        <div>
          <label className="label">Allocation settings</label>
          <div className="space-y-3">
            <div>
              <span className="text-xs text-gray-500">First presentation date</span>
              <input type="date" className="input mt-1" value={startDate} onChange={(e) => setStartDate(e.target.value)} />
            </div>
            <div className="grid grid-cols-2 gap-3">
              <div>
                <span className="text-xs text-gray-500">Time</span>
                <input type="time" className="input mt-1" value={defaultTime} onChange={(e) => setDefaultTime(e.target.value)} />
              </div>
              <div>
                <span className="text-xs text-gray-500">Venue</span>
                <input
                  className="input mt-1"
                  value={venue}
                  onChange={(e) => setVenue(e.target.value)}
                  placeholder="Seminar room"
                />
              </div>
            </div>
          </div>
          <p className="text-xs text-gray-500 mt-3">
            One student per topic, distributed fairly. Nobody receives a second topic until every
            student has one. {unassigned} topic{unassigned === 1 ? '' : 's'} awaiting allocation.
          </p>
          <button
            className="btn-primary mt-3 w-full"
            onClick={() => allocate.mutate()}
            disabled={unassigned === 0 || allocate.isPending}
          >
            {allocate.isPending ? 'Allocating…' : 'Allocate seminar topics'}
          </button>
        </div>
      </div>

      {(topics?.length ?? 0) > 0 && (
        <div className="mt-6 overflow-x-auto">
          <table className="w-full text-sm">
            <thead className="bg-gray-50 text-left">
              <tr>
                <th className="px-3 py-2.5 font-semibold text-gray-600">Topic</th>
                <th className="px-3 py-2.5 font-semibold text-gray-600">Presenter</th>
                <th className="px-3 py-2.5 font-semibold text-gray-600 hidden sm:table-cell">Date</th>
                <th className="px-3 py-2.5 font-semibold text-gray-600 hidden lg:table-cell">Venue</th>
                <th className="px-3 py-2.5 font-semibold text-gray-600">Status</th>
                <th className="px-3 py-2.5" />
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-100">
              {topics!.map((t) => (
                <tr key={t.id} className="hover:bg-gray-50">
                  <td className="px-3 py-2.5 font-medium text-gray-900">{t.title}</td>
                  <td className="px-3 py-2.5 text-gray-700">
                    {t.assignment ? (
                      <>
                        {t.assignment.studentName}
                        <span className="text-xs text-gray-400 ml-1.5">{t.assignment.matricNumber}</span>
                      </>
                    ) : (
                      <span className="text-gray-400">Unassigned</span>
                    )}
                  </td>
                  <td className="px-3 py-2.5 text-gray-500 hidden sm:table-cell">
                    {t.assignment?.presentationDate
                      ? new Date(t.assignment.presentationDate).toLocaleDateString('en-GB')
                      : '—'}
                  </td>
                  <td className="px-3 py-2.5 text-gray-500 hidden lg:table-cell">
                    {t.assignment?.venue || '—'}
                  </td>
                  <td className="px-3 py-2.5">
                    {t.assignment ? (
                      <span
                        className={
                          t.assignment.status === 'assessed'
                            ? 'badge-success'
                            : t.assignment.status === 'presented'
                              ? 'badge-warning'
                              : 'badge-info'
                        }
                      >
                        {t.assignment.status}
                      </span>
                    ) : (
                      <span className="badge bg-gray-100 text-gray-600">pending</span>
                    )}
                  </td>
                  <td className="px-3 py-2.5 text-right whitespace-nowrap">
                    {t.assignment ? (
                      <button
                        className="text-xs text-amber-700 hover:underline"
                        onClick={() => {
                          if (window.confirm(`Withdraw ${t.assignment!.studentName} and reassign "${t.title}"?`)) {
                            withdraw.mutate(t.assignment!.id);
                          }
                        }}
                      >
                        Withdraw & reassign
                      </button>
                    ) : (
                      <button
                        className="text-gray-400 hover:text-red-600"
                        onClick={() => removeTopic.mutate(t.id)}
                        title="Remove topic"
                      >
                        <TrashIcon className="w-4 h-4" />
                      </button>
                    )}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}

export default AdminRotationSetup;
