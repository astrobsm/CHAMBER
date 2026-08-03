import jsPDF from 'jspdf';
import autoTable from 'jspdf-autotable';

// ============================================================================
// Printable PDF certificates.
//
// Two documents are produced from the same payload:
//   * a Certificate of Competency (landscape, ceremonial)
//   * an audit page listing every domain score against its minimum, so the
//     certificate is defensible for academic governance.
// ============================================================================

export interface CertificatePayload {
  student: {
    name: string;
    matricNumber?: string;
    registrationNumber?: string;
    trainingLevel?: string | null;
    group?: { name: string; motto?: string } | null;
  };
  rotation: {
    name: string;
    specialty?: string | null;
    unit?: string | null;
    academicSession?: string | null;
    startDate?: string;
    endDate?: string;
  };
  competency: {
    domains: Array<{ label: string; score: number; weight: number; required: number; passed: boolean }>;
    totalScore: number;
    rank: number;
    cohortSize: number;
    isEligible: boolean;
  };
  signOut?: { certificate_serial?: string; signed_by_name?: string; created_at?: string } | null;
  awards?: Array<{ name: string; score: number | null }>;
  issuedAt?: string;
}

const NAVY = [30, 58, 95] as const;
const GOLD = [176, 137, 45] as const;
const GREY = [110, 118, 128] as const;

function formatDate(value?: string | null): string {
  if (!value) return '—';
  const d = new Date(value);
  if (Number.isNaN(d.getTime())) return String(value);
  return d.toLocaleDateString('en-GB', { day: 'numeric', month: 'long', year: 'numeric' });
}

function drawBorder(doc: jsPDF, w: number, h: number) {
  doc.setDrawColor(...NAVY);
  doc.setLineWidth(2.5);
  doc.rect(10, 10, w - 20, h - 20);
  doc.setDrawColor(...GOLD);
  doc.setLineWidth(0.7);
  doc.rect(15, 15, w - 30, h - 30);
}

/** Builds the certificate document without triggering a download. */
export function buildCompetencyCertificate(data: CertificatePayload): jsPDF {
  const doc = new jsPDF({ orientation: 'landscape', unit: 'mm', format: 'a4' });
  const w = doc.internal.pageSize.getWidth();
  const h = doc.internal.pageSize.getHeight();
  const mid = w / 2;

  drawBorder(doc, w, h);

  // --- Institution -------------------------------------------------------
  doc.setTextColor(...NAVY);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(15);
  doc.text('UNIVERSITY OF NIGERIA TEACHING HOSPITAL', mid, 30, { align: 'center' });
  doc.setFont('helvetica', 'normal');
  doc.setFontSize(9.5);
  doc.setTextColor(...GREY);
  doc.text('Ituku-Ozalla, Enugu State  •  Clinical Rotation & Competency Assessment', mid, 36.5, {
    align: 'center',
  });

  // --- Title -------------------------------------------------------------
  doc.setTextColor(...GOLD);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(26);
  doc.text(
    data.competency.isEligible ? 'CERTIFICATE OF COMPETENCY' : 'STATEMENT OF ATTAINMENT',
    mid,
    52,
    { align: 'center' }
  );

  doc.setDrawColor(...GOLD);
  doc.setLineWidth(0.5);
  doc.line(mid - 45, 56, mid + 45, 56);

  // --- Recipient ---------------------------------------------------------
  doc.setTextColor(...GREY);
  doc.setFont('helvetica', 'normal');
  doc.setFontSize(11);
  doc.text('This is to certify that', mid, 67, { align: 'center' });

  doc.setTextColor(...NAVY);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(24);
  doc.text(data.student.name.toUpperCase(), mid, 79, { align: 'center' });

  const idLine = [
    data.student.matricNumber && `Matric No. ${data.student.matricNumber}`,
    data.student.registrationNumber && `Reg. No. ${data.student.registrationNumber}`,
  ]
    .filter(Boolean)
    .join('   •   ');
  if (idLine) {
    doc.setFont('helvetica', 'normal');
    doc.setFontSize(9.5);
    doc.setTextColor(...GREY);
    doc.text(idLine, mid, 85.5, { align: 'center' });
  }

  // --- Body --------------------------------------------------------------
  const posting = [data.rotation.specialty, data.rotation.unit].filter(Boolean).join(' — ');
  const period = `${formatDate(data.rotation.startDate)} to ${formatDate(data.rotation.endDate)}`;

  doc.setTextColor(...GREY);
  doc.setFontSize(11);
  const verb = data.competency.isEligible
    ? 'has satisfactorily completed the clinical posting in'
    : 'participated in the clinical posting in';
  doc.text(verb, mid, 95, { align: 'center' });

  doc.setTextColor(...NAVY);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(15);
  doc.text(data.rotation.name + (posting ? ` (${posting})` : ''), mid, 104, { align: 'center' });

  doc.setFont('helvetica', 'normal');
  doc.setFontSize(10);
  doc.setTextColor(...GREY);
  doc.text(
    `${period}${data.rotation.academicSession ? `   •   ${data.rotation.academicSession} academic session` : ''}`,
    mid,
    111,
    { align: 'center' }
  );

  const statement = data.competency.isEligible
    ? 'demonstrating the required minimum competency in every assessment domain — attendance, seminar presentation, clinical competency and academic learning.'
    : 'The minimum competency threshold was not attained in every assessment domain. This document records attainment only and does not constitute sign-out.';
  doc.setFontSize(9.5);
  doc.text(doc.splitTextToSize(statement, w - 90), mid, 119, { align: 'center' });

  // --- Score summary -----------------------------------------------------
  const boxY = 132;
  doc.setFillColor(245, 247, 250);
  doc.roundedRect(mid - 78, boxY, 156, 21, 2.5, 2.5, 'F');

  const cells = [
    { label: 'Aggregate score', value: `${data.competency.totalScore.toFixed(1)}%` },
    { label: 'Cohort position', value: `${data.competency.rank} of ${data.competency.cohortSize}` },
    { label: 'Team', value: data.student.group?.name || '—' },
  ];
  cells.forEach((c, i) => {
    const x = mid - 78 + 26 + i * 52;
    doc.setTextColor(...NAVY);
    doc.setFont('helvetica', 'bold');
    doc.setFontSize(13);
    doc.text(c.value, x, boxY + 10, { align: 'center' });
    doc.setFont('helvetica', 'normal');
    doc.setFontSize(7.5);
    doc.setTextColor(...GREY);
    doc.text(c.label.toUpperCase(), x, boxY + 15.5, { align: 'center' });
  });

  if (data.awards?.length) {
    doc.setTextColor(...GOLD);
    doc.setFont('helvetica', 'bold');
    doc.setFontSize(9);
    doc.text(
      `Awards: ${data.awards.map((a) => a.name).join('  •  ')}`,
      mid,
      boxY + 27,
      { align: 'center' }
    );
  }

  // --- Signature block ---------------------------------------------------
  const sigY = h - 27;
  doc.setDrawColor(...GREY);
  doc.setLineWidth(0.3);
  doc.line(45, sigY, 110, sigY);
  doc.line(w - 110, sigY, w - 45, sigY);

  doc.setFont('helvetica', 'normal');
  doc.setFontSize(8.5);
  doc.setTextColor(...GREY);
  doc.text(data.signOut?.signed_by_name || 'Consultant / Head of Unit', 77.5, sigY + 5, { align: 'center' });
  doc.text('Signed out by', 77.5, sigY + 9.5, { align: 'center' });
  doc.text('Head of Department', w - 77.5, sigY + 5, { align: 'center' });
  doc.text('Countersigned', w - 77.5, sigY + 9.5, { align: 'center' });

  doc.setFontSize(7.5);
  doc.text(
    `Serial ${data.signOut?.certificate_serial || 'PROVISIONAL'}   •   Issued ${formatDate(
      data.issuedAt || new Date().toISOString()
    )}   •   Scores computed automatically and audit-logged`,
    mid,
    h - 14,
    { align: 'center' }
  );

  // --- Audit page --------------------------------------------------------
  doc.addPage('a4', 'landscape');
  doc.setTextColor(...NAVY);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(14);
  doc.text('Competency breakdown — audit record', 15, 20);
  doc.setFont('helvetica', 'normal');
  doc.setFontSize(9);
  doc.setTextColor(...GREY);
  doc.text(
    `${data.student.name}   •   ${data.rotation.name}   •   Sign-out requires at least two-thirds of the available score in EVERY domain.`,
    15,
    26.5
  );

  autoTable(doc, {
    startY: 32,
    head: [['Assessment domain', 'Weight', 'Minimum required (2/3)', 'Score attained', 'Verdict']],
    body: data.competency.domains.map((d) => [
      d.label,
      `${d.weight}%`,
      `${d.required}%`,
      `${d.score.toFixed(2)}%`,
      d.passed ? 'MET' : 'NOT MET',
    ]),
    foot: [
      [
        'Total',
        '100%',
        '—',
        `${data.competency.totalScore.toFixed(2)}%`,
        data.competency.isEligible ? 'ELIGIBLE FOR SIGN-OUT' : 'NOT ELIGIBLE FOR SIGN-OUT',
      ],
    ],
    theme: 'grid',
    headStyles: { fillColor: [30, 58, 95], textColor: 255, fontStyle: 'bold' },
    footStyles: {
      fillColor: data.competency.isEligible ? [220, 240, 228] : [253, 226, 226],
      textColor: data.competency.isEligible ? [6, 78, 59] : [127, 29, 29],
      fontStyle: 'bold',
    },
    styles: { fontSize: 9.5, cellPadding: 3 },
    didParseCell: (hook) => {
      if (hook.section === 'body' && hook.column.index === 4) {
        const met = String(hook.cell.raw) === 'MET';
        hook.cell.styles.textColor = met ? [6, 95, 70] : [153, 27, 27];
        hook.cell.styles.fontStyle = 'bold';
      }
    },
  });

  return doc;
}

export function downloadCompetencyCertificate(data: CertificatePayload) {
  const doc = buildCompetencyCertificate(data);
  const safeName = data.student.name.replace(/[^a-z0-9]+/gi, '-').toLowerCase();
  doc.save(`certificate-${safeName}-${data.rotation.name.replace(/[^a-z0-9]+/gi, '-').toLowerCase()}.pdf`);
}

// ---------------------------------------------------------------------------
// Award certificate — issued to individual and team award winners.
// ---------------------------------------------------------------------------

export interface AwardCertificatePayload {
  recipientName: string;
  awardName: string;
  citation?: string;
  rotationName: string;
  academicSession?: string | null;
  teamName?: string | null;
  issuedAt?: string;
}

export function downloadAwardCertificate(data: AwardCertificatePayload) {
  const doc = new jsPDF({ orientation: 'landscape', unit: 'mm', format: 'a4' });
  const w = doc.internal.pageSize.getWidth();
  const h = doc.internal.pageSize.getHeight();
  const mid = w / 2;

  drawBorder(doc, w, h);

  doc.setTextColor(...NAVY);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(14);
  doc.text('UNIVERSITY OF NIGERIA TEACHING HOSPITAL', mid, 32, { align: 'center' });

  doc.setTextColor(...GOLD);
  doc.setFontSize(28);
  doc.text('CERTIFICATE OF EXCELLENCE', mid, 55, { align: 'center' });
  doc.setLineWidth(0.5);
  doc.line(mid - 50, 59, mid + 50, 59);

  doc.setTextColor(...GREY);
  doc.setFont('helvetica', 'normal');
  doc.setFontSize(11);
  doc.text('Presented to', mid, 72, { align: 'center' });

  doc.setTextColor(...NAVY);
  doc.setFont('helvetica', 'bold');
  doc.setFontSize(26);
  doc.text(data.recipientName.toUpperCase(), mid, 87, { align: 'center' });

  doc.setTextColor(...GOLD);
  doc.setFontSize(17);
  doc.text(data.awardName, mid, 101, { align: 'center' });

  if (data.citation) {
    doc.setTextColor(...GREY);
    doc.setFont('helvetica', 'normal');
    doc.setFontSize(10);
    doc.text(doc.splitTextToSize(data.citation, w - 100), mid, 111, { align: 'center' });
  }

  doc.setFontSize(9.5);
  doc.text(
    [data.rotationName, data.teamName && `${data.teamName}`, data.academicSession]
      .filter(Boolean)
      .join('   •   '),
    mid,
    h - 40,
    { align: 'center' }
  );

  const sigY = h - 27;
  doc.setDrawColor(...GREY);
  doc.setLineWidth(0.3);
  doc.line(mid - 32, sigY, mid + 32, sigY);
  doc.setFontSize(8.5);
  doc.text('Head of Department', mid, sigY + 5, { align: 'center' });
  doc.setFontSize(7.5);
  doc.text(`Issued ${formatDate(data.issuedAt || new Date().toISOString())}`, mid, h - 14, {
    align: 'center',
  });

  const safe = data.recipientName.replace(/[^a-z0-9]+/gi, '-').toLowerCase();
  doc.save(`award-${safe}-${data.awardName.replace(/[^a-z0-9]+/gi, '-').toLowerCase()}.pdf`);
}
