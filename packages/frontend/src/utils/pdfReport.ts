import jsPDF from 'jspdf';
import autoTable from 'jspdf-autotable';

interface StudentInfo {
  name: string;
  email: string;
  matricNumber?: string;
  level?: string;
  rotation?: string;
}

interface PerformanceData {
  overall: {
    score: number;
    rank: number;
    totalStudents: number;
    percentile: number;
  };
  byTopic: Array<{
    topic: string;
    score: number;
    attempts: number;
  }>;
  weeklyProgress: Array<{
    week: string;
    score: number;
    attendance: number;
  }>;
  attendance?: {
    rate: number;
    totalDays: number;
    presentDays: number;
  };
  tests?: {
    total: number;
    passed: number;
    avgScore: number;
  };
  strengths: string[];
  weaknesses: string[];
  recommendations: string[];
}

interface ReportOptions {
  studentInfo: StudentInfo;
  performance: PerformanceData;
  reportDate?: Date;
  institutionName?: string;
}

/**
 * Generate a PDF performance report for a student
 */
export function generateStudentPerformanceReport(options: ReportOptions): void {
  const {
    studentInfo,
    performance,
    reportDate = new Date(),
    institutionName = 'University of Nigeria Teaching Hospital'
  } = options;

  // Create new PDF document
  const doc = new jsPDF();
  const pageWidth = doc.internal.pageSize.getWidth();
  const margin = 20;
  let yPosition = 20;

  // Header
  doc.setFillColor(30, 58, 95); // Primary color
  doc.rect(0, 0, pageWidth, 45, 'F');
  
  // Institution name
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(18);
  doc.setFont('helvetica', 'bold');
  doc.text(institutionName, pageWidth / 2, 18, { align: 'center' });
  
  // Report title
  doc.setFontSize(14);
  doc.text('Clinical Rotation Platform', pageWidth / 2, 28, { align: 'center' });
  doc.setFontSize(12);
  doc.setFont('helvetica', 'normal');
  doc.text('Student Performance Report', pageWidth / 2, 38, { align: 'center' });

  yPosition = 55;

  // Reset text color
  doc.setTextColor(0, 0, 0);

  // Student Information Section
  doc.setFontSize(14);
  doc.setFont('helvetica', 'bold');
  doc.text('Student Information', margin, yPosition);
  yPosition += 8;

  doc.setDrawColor(30, 58, 95);
  doc.setLineWidth(0.5);
  doc.line(margin, yPosition, pageWidth - margin, yPosition);
  yPosition += 10;

  doc.setFontSize(11);
  doc.setFont('helvetica', 'normal');
  
  const studentDetails = [
    ['Name:', studentInfo.name],
    ['Email:', studentInfo.email],
    ['Matriculation Number:', studentInfo.matricNumber || 'N/A'],
    ['Level:', studentInfo.level || 'N/A'],
    ['Current Rotation:', studentInfo.rotation || 'N/A'],
    ['Report Date:', reportDate.toLocaleDateString('en-US', { 
      year: 'numeric', 
      month: 'long', 
      day: 'numeric' 
    })],
  ];

  studentDetails.forEach(([label, value]) => {
    doc.setFont('helvetica', 'bold');
    doc.text(label, margin, yPosition);
    doc.setFont('helvetica', 'normal');
    doc.text(value, margin + 50, yPosition);
    yPosition += 7;
  });

  yPosition += 10;

  // Performance Overview Section
  doc.setFontSize(14);
  doc.setFont('helvetica', 'bold');
  doc.text('Performance Overview', margin, yPosition);
  yPosition += 8;

  doc.setDrawColor(30, 58, 95);
  doc.line(margin, yPosition, pageWidth - margin, yPosition);
  yPosition += 10;

  // Performance stats in a grid-like format
  const performanceStats = [
    { label: 'Overall Score', value: `${performance.overall.score}%`, color: getScoreColor(performance.overall.score) },
    { label: 'Class Rank', value: `#${performance.overall.rank} of ${performance.overall.totalStudents}` },
    { label: 'Percentile', value: `Top ${100 - performance.overall.percentile}%` },
    { label: 'Attendance Rate', value: performance.attendance ? `${performance.attendance.rate}%` : 'N/A' },
    { label: 'Tests Completed', value: performance.tests ? `${performance.tests.total}` : 'N/A' },
    { label: 'Tests Passed', value: performance.tests ? `${performance.tests.passed}` : 'N/A' },
  ];

  // Draw performance boxes
  const boxWidth = (pageWidth - margin * 2 - 20) / 3;
  const boxHeight = 25;
  let xPos = margin;
  let rowCount = 0;

  performanceStats.forEach((stat, index) => {
    if (index > 0 && index % 3 === 0) {
      yPosition += boxHeight + 5;
      xPos = margin;
      rowCount++;
    }

    // Box background
    doc.setFillColor(245, 247, 250);
    doc.roundedRect(xPos, yPosition, boxWidth, boxHeight, 3, 3, 'F');
    
    // Label
    doc.setFontSize(9);
    doc.setFont('helvetica', 'normal');
    doc.setTextColor(100, 100, 100);
    doc.text(stat.label, xPos + 5, yPosition + 8);
    
    // Value
    doc.setFontSize(14);
    doc.setFont('helvetica', 'bold');
    doc.setTextColor(30, 58, 95);
    doc.text(stat.value, xPos + 5, yPosition + 19);
    
    xPos += boxWidth + 10;
  });

  doc.setTextColor(0, 0, 0);
  yPosition += boxHeight + 15;

  // Topic Performance Table
  if (performance.byTopic && performance.byTopic.length > 0) {
    doc.setFontSize(14);
    doc.setFont('helvetica', 'bold');
    doc.text('Performance by Topic', margin, yPosition);
    yPosition += 10;

    autoTable(doc, {
      startY: yPosition,
      head: [['Topic', 'Score (%)', 'Attempts', 'Status']],
      body: performance.byTopic.map(topic => [
        topic.topic,
        topic.score.toString(),
        topic.attempts.toString(),
        topic.score >= 70 ? 'Pass' : topic.score >= 50 ? 'Needs Improvement' : 'Fail'
      ]),
      theme: 'striped',
      headStyles: {
        fillColor: [30, 58, 95],
        textColor: [255, 255, 255],
        fontStyle: 'bold'
      },
      alternateRowStyles: {
        fillColor: [245, 247, 250]
      },
      margin: { left: margin, right: margin },
      styles: {
        fontSize: 10,
        cellPadding: 4
      },
      columnStyles: {
        0: { cellWidth: 70 },
        1: { cellWidth: 30, halign: 'center' },
        2: { cellWidth: 30, halign: 'center' },
        3: { cellWidth: 40, halign: 'center' }
      }
    });

    yPosition = (doc as any).lastAutoTable.finalY + 15;
  }

  // Check if we need a new page
  if (yPosition > 230) {
    doc.addPage();
    yPosition = 20;
  }

  // Weekly Progress Table
  if (performance.weeklyProgress && performance.weeklyProgress.length > 0) {
    doc.setFontSize(14);
    doc.setFont('helvetica', 'bold');
    doc.text('Weekly Progress', margin, yPosition);
    yPosition += 10;

    autoTable(doc, {
      startY: yPosition,
      head: [['Week', 'Test Score (%)', 'Attendance (%)']],
      body: performance.weeklyProgress.map(week => [
        week.week,
        week.score.toString(),
        week.attendance.toString()
      ]),
      theme: 'striped',
      headStyles: {
        fillColor: [30, 58, 95],
        textColor: [255, 255, 255],
        fontStyle: 'bold'
      },
      alternateRowStyles: {
        fillColor: [245, 247, 250]
      },
      margin: { left: margin, right: margin },
      styles: {
        fontSize: 10,
        cellPadding: 4
      },
      columnStyles: {
        0: { cellWidth: 50 },
        1: { cellWidth: 50, halign: 'center' },
        2: { cellWidth: 50, halign: 'center' }
      }
    });

    yPosition = (doc as any).lastAutoTable.finalY + 15;
  }

  // Check if we need a new page
  if (yPosition > 200) {
    doc.addPage();
    yPosition = 20;
  }

  // Strengths and Weaknesses
  if (performance.strengths?.length > 0 || performance.weaknesses?.length > 0) {
    doc.setFontSize(14);
    doc.setFont('helvetica', 'bold');
    doc.text('Analysis', margin, yPosition);
    yPosition += 10;

    // Strengths
    if (performance.strengths?.length > 0) {
      doc.setFillColor(220, 252, 231); // Light green
      doc.roundedRect(margin, yPosition, pageWidth - margin * 2, 8 + performance.strengths.length * 7, 3, 3, 'F');
      
      doc.setFontSize(11);
      doc.setFont('helvetica', 'bold');
      doc.setTextColor(22, 101, 52); // Dark green
      doc.text('✓ Strengths', margin + 5, yPosition + 7);
      yPosition += 12;

      doc.setFont('helvetica', 'normal');
      doc.setFontSize(10);
      performance.strengths.forEach(strength => {
        doc.text(`• ${strength}`, margin + 10, yPosition);
        yPosition += 7;
      });
      yPosition += 5;
    }

    // Weaknesses
    if (performance.weaknesses?.length > 0) {
      doc.setFillColor(254, 226, 226); // Light red
      doc.roundedRect(margin, yPosition, pageWidth - margin * 2, 8 + performance.weaknesses.length * 7, 3, 3, 'F');
      
      doc.setFontSize(11);
      doc.setFont('helvetica', 'bold');
      doc.setTextColor(153, 27, 27); // Dark red
      doc.text('! Areas for Improvement', margin + 5, yPosition + 7);
      yPosition += 12;

      doc.setFont('helvetica', 'normal');
      doc.setFontSize(10);
      performance.weaknesses.forEach(weakness => {
        doc.text(`• ${weakness}`, margin + 10, yPosition);
        yPosition += 7;
      });
      yPosition += 5;
    }
  }

  doc.setTextColor(0, 0, 0);
  yPosition += 10;

  // Recommendations
  if (performance.recommendations?.length > 0) {
    if (yPosition > 230) {
      doc.addPage();
      yPosition = 20;
    }

    doc.setFontSize(14);
    doc.setFont('helvetica', 'bold');
    doc.text('Recommendations', margin, yPosition);
    yPosition += 10;

    doc.setFillColor(219, 234, 254); // Light blue
    doc.roundedRect(margin, yPosition, pageWidth - margin * 2, 8 + performance.recommendations.length * 7, 3, 3, 'F');
    
    yPosition += 7;
    doc.setFont('helvetica', 'normal');
    doc.setFontSize(10);
    doc.setTextColor(30, 64, 175); // Dark blue
    
    performance.recommendations.forEach(rec => {
      doc.text(`📌 ${rec}`, margin + 5, yPosition);
      yPosition += 7;
    });
  }

  // Footer
  const pageCount = doc.getNumberOfPages();
  for (let i = 1; i <= pageCount; i++) {
    doc.setPage(i);
    
    // Footer line
    doc.setDrawColor(200, 200, 200);
    doc.setLineWidth(0.3);
    doc.line(margin, doc.internal.pageSize.getHeight() - 15, pageWidth - margin, doc.internal.pageSize.getHeight() - 15);
    
    // Footer text
    doc.setFontSize(8);
    doc.setFont('helvetica', 'normal');
    doc.setTextColor(128, 128, 128);
    doc.text(
      `Generated by Clinical Rotation Platform - ${institutionName}`,
      margin,
      doc.internal.pageSize.getHeight() - 8
    );
    doc.text(
      `Page ${i} of ${pageCount}`,
      pageWidth - margin,
      doc.internal.pageSize.getHeight() - 8,
      { align: 'right' }
    );
  }

  // Generate filename and save
  const fileName = `Performance_Report_${studentInfo.name.replace(/\s+/g, '_')}_${reportDate.toISOString().split('T')[0]}.pdf`;
  doc.save(fileName);
}

/**
 * Get color based on score
 */
function getScoreColor(score: number): string {
  if (score >= 70) return 'green';
  if (score >= 50) return 'orange';
  return 'red';
}

/**
 * Generate a simple summary report for quick download
 */
export function generateQuickReport(
  studentName: string,
  overallScore: number,
  attendance: number,
  rank: number,
  totalStudents: number
): void {
  const doc = new jsPDF();
  const pageWidth = doc.internal.pageSize.getWidth();
  const margin = 20;

  // Header
  doc.setFillColor(30, 58, 95);
  doc.rect(0, 0, pageWidth, 35, 'F');
  
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(16);
  doc.setFont('helvetica', 'bold');
  doc.text('Quick Performance Summary', pageWidth / 2, 20, { align: 'center' });
  doc.setFontSize(10);
  doc.text(new Date().toLocaleDateString(), pageWidth / 2, 28, { align: 'center' });

  doc.setTextColor(0, 0, 0);
  
  // Content
  let y = 50;
  doc.setFontSize(12);
  doc.setFont('helvetica', 'bold');
  doc.text('Student:', margin, y);
  doc.setFont('helvetica', 'normal');
  doc.text(studentName, margin + 40, y);
  
  y += 20;
  doc.setFont('helvetica', 'bold');
  doc.text('Overall Score:', margin, y);
  doc.setFont('helvetica', 'normal');
  doc.text(`${overallScore}%`, margin + 40, y);
  
  y += 15;
  doc.setFont('helvetica', 'bold');
  doc.text('Attendance:', margin, y);
  doc.setFont('helvetica', 'normal');
  doc.text(`${attendance}%`, margin + 40, y);
  
  y += 15;
  doc.setFont('helvetica', 'bold');
  doc.text('Class Rank:', margin, y);
  doc.setFont('helvetica', 'normal');
  doc.text(`#${rank} of ${totalStudents}`, margin + 40, y);

  const fileName = `Quick_Report_${studentName.replace(/\s+/g, '_')}_${new Date().toISOString().split('T')[0]}.pdf`;
  doc.save(fileName);
}

/**
 * Admin Dashboard Stats interface
 */
interface AdminDashboardStats {
  totalStudents?: number;
  totalAssessors?: number;
  totalAdmins?: number;
  activeUsers?: number;
  totalRotations?: number;
  activeRotations?: number;
  totalTests?: number;
  testsThisMonth?: number;
  todayAttendance?: number;
  clearanceRate?: number;
  enrollmentTrend?: Array<{ month: string; students: number }>;
  levelDistribution?: Array<{ name: string; value: number }>;
  performanceTrend?: Array<{ month: string; avgScore: number; attendance: number }>;
  alerts?: Array<{ title: string; message: string; type: string }>;
  recentActivity?: Array<{ action: string; time: string }>;
}

/**
 * Generate a PDF report for Admin Dashboard
 */
export function generateAdminDashboardReport(stats: AdminDashboardStats): void {
  const doc = new jsPDF();
  const pageWidth = doc.internal.pageSize.getWidth();
  const margin = 20;
  let yPosition = 20;

  // Header
  doc.setFillColor(30, 58, 95); // Primary color
  doc.rect(0, 0, pageWidth, 50, 'F');
  
  // Institution name
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(18);
  doc.setFont('helvetica', 'bold');
  doc.text('University of Nigeria Teaching Hospital', pageWidth / 2, 18, { align: 'center' });
  
  // Report title
  doc.setFontSize(14);
  doc.text('Clinical Rotation Platform', pageWidth / 2, 28, { align: 'center' });
  doc.setFontSize(12);
  doc.text('Admin Dashboard Report', pageWidth / 2, 38, { align: 'center' });
  
  // Report date
  doc.setFontSize(9);
  const reportDate = new Date().toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit'
  });
  doc.text(`Generated: ${reportDate}`, pageWidth / 2, 46, { align: 'center' });
  
  yPosition = 60;

  // Reset text color
  doc.setTextColor(0, 0, 0);

  // Section: System Overview
  doc.setFillColor(30, 58, 95);
  doc.rect(margin, yPosition, pageWidth - (margin * 2), 8, 'F');
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(12);
  doc.setFont('helvetica', 'bold');
  doc.text('SYSTEM OVERVIEW', margin + 5, yPosition + 6);
  
  yPosition += 15;
  doc.setTextColor(0, 0, 0);

  // Stats boxes
  const statsData = [
    ['Total Students', String(stats.totalStudents || 0)],
    ['Active Rotations', String(stats.activeRotations || 0)],
    ['Total Rotations', String(stats.totalRotations || 0)],
    ['Total Assessors', String(stats.totalAssessors || 0)],
    ['Total Admins', String(stats.totalAdmins || 0)],
    ['Active Users', String(stats.activeUsers || 0)],
    ['Total Tests', String(stats.totalTests || 0)],
    ['Tests This Month', String(stats.testsThisMonth || 0)],
    ['Today\'s Attendance', String(stats.todayAttendance || 0)],
    ['Clearance Rate', `${stats.clearanceRate || 0}%`],
  ];

  autoTable(doc, {
    startY: yPosition,
    head: [['Metric', 'Value']],
    body: statsData,
    theme: 'striped',
    headStyles: {
      fillColor: [30, 58, 95],
      textColor: [255, 255, 255],
      fontStyle: 'bold',
    },
    styles: {
      fontSize: 10,
      cellPadding: 5,
    },
    columnStyles: {
      0: { fontStyle: 'bold', cellWidth: 80 },
      1: { halign: 'center', cellWidth: 50 },
    },
    margin: { left: margin, right: margin },
  });

  yPosition = (doc as any).lastAutoTable.finalY + 15;

  // Section: Student Distribution by Level
  if (stats.levelDistribution && stats.levelDistribution.length > 0) {
    doc.setFillColor(30, 58, 95);
    doc.rect(margin, yPosition, pageWidth - (margin * 2), 8, 'F');
    doc.setTextColor(255, 255, 255);
    doc.setFontSize(12);
    doc.setFont('helvetica', 'bold');
    doc.text('STUDENT DISTRIBUTION BY LEVEL', margin + 5, yPosition + 6);
    
    yPosition += 15;
    doc.setTextColor(0, 0, 0);

    const levelData = stats.levelDistribution.map(item => [item.name, String(item.value)]);
    
    autoTable(doc, {
      startY: yPosition,
      head: [['Level', 'Students']],
      body: levelData,
      theme: 'striped',
      headStyles: {
        fillColor: [30, 58, 95],
        textColor: [255, 255, 255],
        fontStyle: 'bold',
      },
      styles: {
        fontSize: 10,
        cellPadding: 5,
      },
      margin: { left: margin, right: margin },
    });

    yPosition = (doc as any).lastAutoTable.finalY + 15;
  }

  // Check if we need a new page
  if (yPosition > 250) {
    doc.addPage();
    yPosition = 20;
  }

  // Section: Enrollment Trend
  if (stats.enrollmentTrend && stats.enrollmentTrend.length > 0) {
    doc.setFillColor(30, 58, 95);
    doc.rect(margin, yPosition, pageWidth - (margin * 2), 8, 'F');
    doc.setTextColor(255, 255, 255);
    doc.setFontSize(12);
    doc.setFont('helvetica', 'bold');
    doc.text('ENROLLMENT TREND', margin + 5, yPosition + 6);
    
    yPosition += 15;
    doc.setTextColor(0, 0, 0);

    const enrollmentData = stats.enrollmentTrend.map(item => [item.month, String(item.students)]);
    
    autoTable(doc, {
      startY: yPosition,
      head: [['Month', 'Students']],
      body: enrollmentData,
      theme: 'striped',
      headStyles: {
        fillColor: [30, 58, 95],
        textColor: [255, 255, 255],
        fontStyle: 'bold',
      },
      styles: {
        fontSize: 10,
        cellPadding: 5,
      },
      margin: { left: margin, right: margin },
    });

    yPosition = (doc as any).lastAutoTable.finalY + 15;
  }

  // Check if we need a new page
  if (yPosition > 250) {
    doc.addPage();
    yPosition = 20;
  }

  // Section: Performance Trend
  if (stats.performanceTrend && stats.performanceTrend.length > 0) {
    doc.setFillColor(30, 58, 95);
    doc.rect(margin, yPosition, pageWidth - (margin * 2), 8, 'F');
    doc.setTextColor(255, 255, 255);
    doc.setFontSize(12);
    doc.setFont('helvetica', 'bold');
    doc.text('PERFORMANCE TREND', margin + 5, yPosition + 6);
    
    yPosition += 15;
    doc.setTextColor(0, 0, 0);

    const performanceData = stats.performanceTrend.map(item => [
      item.month, 
      `${item.avgScore}%`, 
      `${item.attendance}%`
    ]);
    
    autoTable(doc, {
      startY: yPosition,
      head: [['Month', 'Avg Score', 'Attendance']],
      body: performanceData,
      theme: 'striped',
      headStyles: {
        fillColor: [30, 58, 95],
        textColor: [255, 255, 255],
        fontStyle: 'bold',
      },
      styles: {
        fontSize: 10,
        cellPadding: 5,
      },
      margin: { left: margin, right: margin },
    });

    yPosition = (doc as any).lastAutoTable.finalY + 15;
  }

  // Check if we need a new page
  if (yPosition > 250) {
    doc.addPage();
    yPosition = 20;
  }

  // Section: System Alerts
  doc.setFillColor(30, 58, 95);
  doc.rect(margin, yPosition, pageWidth - (margin * 2), 8, 'F');
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(12);
  doc.setFont('helvetica', 'bold');
  doc.text('SYSTEM ALERTS', margin + 5, yPosition + 6);
  
  yPosition += 15;
  doc.setTextColor(0, 0, 0);
  doc.setFontSize(10);
  doc.setFont('helvetica', 'normal');

  if (stats.alerts && stats.alerts.length > 0) {
    stats.alerts.forEach(alert => {
      doc.text(`• ${alert.title}: ${alert.message}`, margin, yPosition);
      yPosition += 7;
    });
  } else {
    doc.text('No active alerts', margin, yPosition);
    yPosition += 7;
  }

  yPosition += 10;

  // Section: Recent Activity
  doc.setFillColor(30, 58, 95);
  doc.rect(margin, yPosition, pageWidth - (margin * 2), 8, 'F');
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(12);
  doc.setFont('helvetica', 'bold');
  doc.text('RECENT ACTIVITY', margin + 5, yPosition + 6);
  
  yPosition += 15;
  doc.setTextColor(0, 0, 0);
  doc.setFontSize(10);
  doc.setFont('helvetica', 'normal');

  if (stats.recentActivity && stats.recentActivity.length > 0) {
    stats.recentActivity.forEach(activity => {
      doc.text(`• ${activity.action} - ${activity.time}`, margin, yPosition);
      yPosition += 7;
    });
  } else {
    doc.text('No recent activity', margin, yPosition);
  }

  // Footer
  const pageCount = doc.getNumberOfPages();
  for (let i = 1; i <= pageCount; i++) {
    doc.setPage(i);
    doc.setFontSize(8);
    doc.setTextColor(128, 128, 128);
    doc.text(
      `Page ${i} of ${pageCount} | Clinical Rotation Platform - Admin Dashboard Report`,
      pageWidth / 2,
      doc.internal.pageSize.getHeight() - 10,
      { align: 'center' }
    );
  }

  // Save the PDF
  const fileName = `Admin_Dashboard_Report_${new Date().toISOString().split('T')[0]}.pdf`;
  doc.save(fileName);
}

export default generateStudentPerformanceReport;
