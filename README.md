# Clinical Rotation Platform
## University of Nigeria Teaching Hospital, Ituku-Ozalla

A comprehensive, production-grade clinical rotation management system designed for medical education at UNTH.

## 🎯 Overview

This platform digitizes clinical postings, enforces attendance and participation standards, ensures objective performance tracking, and automates clearance, reporting, and documentation. Built as an **offline-first PWA**.

## 👥 Target Users

- **Medical Students**: Surgery I – Surgery IV
- **Assessors**: Consultants / Residents
- **Administrators**: Department / Unit Staff

## 🚀 Features

### Student Features
- Personal profile dashboard
- Attendance capture (QR-based)
- Test participation
- Performance analytics
- CME access
- Auto-generated performance reports
- WhatsApp PDF delivery

### Assessor Features
- Session attendance marking
- Participation scoring
- Seminar grading
- History & physical exam assessment
- Structured remarks

### Admin Features
- Student onboarding
- Rotation scheduling
- Topic uploads
- CME content management
- Question bank management
- Analytics & exports
- Threshold configuration (75% rule)

## 🛠 Tech Stack

- **Frontend**: React (PWA) with TypeScript
- **Backend**: Node.js/Express with TypeScript
- **Database**: PostgreSQL
- **Offline**: Service Workers + IndexedDB
- **Authentication**: JWT with refresh tokens

## 📁 Project Structure

```
clinical-rotation-platform/
├── packages/
│   ├── backend/           # Node.js/Express API
│   │   ├── src/
│   │   │   ├── config/    # Configuration files
│   │   │   ├── controllers/
│   │   │   ├── middleware/
│   │   │   ├── models/
│   │   │   ├── routes/
│   │   │   ├── services/
│   │   │   ├── utils/
│   │   │   └── index.ts
│   │   └── database/
│   │       ├── migrations/
│   │       └── seeds/
│   └── frontend/          # React PWA
│       ├── public/
│       └── src/
│           ├── components/
│           ├── contexts/
│           ├── hooks/
│           ├── pages/
│           ├── services/
│           ├── stores/
│           └── utils/
└── docs/                  # Documentation
```

## 🔧 Setup

### Prerequisites
- Node.js >= 18.0.0
- PostgreSQL >= 14
- npm >= 9.0.0

### Installation

```bash
# Clone the repository
git clone https://github.com/unth/clinical-rotation-platform.git
cd clinical-rotation-platform

# Install root dependencies
npm install

# Install package dependencies
cd packages/backend && npm install
cd ../frontend && npm install
cd ../..

# Set up environment variables
cp packages/backend/.env.example packages/backend/.env
cp packages/frontend/.env.example packages/frontend/.env
# Edit .env files with your configuration
```

### Database Setup

```bash
# Create PostgreSQL database
psql -U postgres
CREATE DATABASE clinical_rotation;
\q

# Run the schema
psql -U postgres -d clinical_rotation -f packages/backend/database/schema.sql

# Or with connection string
psql "postgresql://user:password@localhost:5432/clinical_rotation" -f packages/backend/database/schema.sql
```

### Running the Application

```bash
# Start backend (from packages/backend)
cd packages/backend
npm run dev     # Development with hot reload
npm run build   # Production build
npm start       # Run production build

# Start frontend (from packages/frontend)
cd packages/frontend
npm run dev     # Development server at http://localhost:5173
npm run build   # Production build
npm run preview # Preview production build
```

### Running Both Concurrently

Add to root package.json:
```json
{
  "scripts": {
    "dev": "concurrently \"npm run dev -w backend\" \"npm run dev -w frontend\"",
    "build": "npm run build -w backend && npm run build -w frontend"
  }
}
```

### Environment Variables

**Backend** (`packages/backend/.env`):

```env
NODE_ENV=development
PORT=3001
DATABASE_URL=postgresql://user:password@localhost:5432/clinical_rotation
JWT_SECRET=your-super-secret-jwt-key-change-in-production
JWT_REFRESH_SECRET=your-super-secret-refresh-key-change-in-production
JWT_EXPIRES_IN=15m
JWT_REFRESH_EXPIRES_IN=7d
WHATSAPP_API_URL=https://api.whatsapp.com
WHATSAPP_API_KEY=your-whatsapp-api-key
CORS_ORIGIN=http://localhost:5173
```

**Frontend** (`packages/frontend/.env`):

```env
VITE_API_URL=http://localhost:3001/api
VITE_WS_URL=ws://localhost:3001
VITE_APP_NAME=UNTH Clinical Rotation Platform
```

## 📊 Database Schema

See [database documentation](./docs/database.md) for complete schema.

## 🔐 Security Features

- JWT authentication with refresh tokens
- Role-based access control (RBAC)
- Encrypted local storage
- Server-side validation
- Academic audit trails
- Anti-cheating measures in test engine

## 📱 PWA Features

- Offline-first architecture
- Background sync
- Install prompts
- Push notifications
- Responsive (mobile-first)

## 🚀 Deployment

### ⚡ Automated Deployment

**One-command deployment:**
```powershell
.\scripts\deploy-all.ps1
```

This will automatically:
- ✅ Configure environment variables
- ✅ Set up database
- ✅ Deploy to Vercel

**See [QUICK_DEPLOY.md](QUICK_DEPLOY.md) for detailed quick-start instructions.**

### Individual Scripts

```powershell
# Environment setup
.\scripts\setup-env.ps1

# Database setup
.\scripts\setup-database.ps1 -DatabaseUrl "your-db-url"

# Deploy to Vercel
.\scripts\deploy-vercel.ps1
```

### Comprehensive Guides

📚 **Complete documentation available:**
- **[QUICK_DEPLOY.md](QUICK_DEPLOY.md)** - Fast automated deployment
- **[DEPLOYMENT_SUMMARY.md](DEPLOYMENT_SUMMARY.md)** - Quick overview
- **[VERCEL_DEPLOYMENT.md](VERCEL_DEPLOYMENT.md)** - Detailed instructions
- **[DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md)** - Step-by-step checklist

### Key Configuration Files
- `vercel.json` - Deployment configuration
- `api/index.ts` - Serverless API entry point
- `.env.example` - Environment variables template

### Essential Environment Variables

Set these in Vercel before deployment:
- `DATABASE_URL` - PostgreSQL connection (Supabase/Neon)
- `JWT_SECRET` - Secure token secret (min 32 chars)
- `NODE_ENV` - Set to `production`
- `CORS_ORIGIN` - Your deployment URL

See [.env.example](.env.example) for complete list.

### Database Setup

**Option 1: Supabase (Recommended)**
1. Create project at https://supabase.com
2. Get connection string from Settings > Database
3. Run migrations: Use the SQL files in `packages/backend/database/`

**Option 2: Neon**
1. Create project at https://neon.tech
2. Copy connection string
3. Run the same SQL migration files

### Architecture

```
Deployment Architecture:
├── Frontend (Static) → Vercel Edge Network
├── API Routes (/api/*) → Vercel Serverless Functions
└── Database → Supabase/Neon PostgreSQL
```

### Post-Deployment Verification

✅ Frontend: `https://your-app.vercel.app`  
✅ API Health: `https://your-app.vercel.app/api/health`  
✅ API Info: `https://your-app.vercel.app/api`  

---

**For fastest deployment, run: `.\scripts\deploy-all.ps1`**
- Output Directory: `dist`
- Install Command: `npm install`

## 🎨 Branding

- UNTH logo integration
- Color palette: Primary #006B3F (UNTH Green), Secondary #FFD700 (Gold)
- Professional academic UI

## 📄 License

This project is proprietary software owned by University of Nigeria Teaching Hospital.

---

© 2024-2026 University of Nigeria Teaching Hospital, Ituku-Ozalla
