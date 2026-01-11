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

## 🚀 Deployment (Vercel + Supabase)

### Step 1: Set up Supabase Database

1. Create a new project at [supabase.com](https://supabase.com)
2. Go to **Project Settings > Database > Connection string**
3. Copy the **URI** connection string
4. Go to **SQL Editor** and run the schema:
   ```sql
   -- Copy contents of packages/backend/database/schema.sql
   ```
5. Run the seed files in order (01_surgery1_setup.sql, etc.)

### Step 2: Deploy Backend to Vercel

```bash
# From the packages/backend directory
cd packages/backend
npm run build
vercel --prod
```

Set these environment variables in Vercel dashboard:
- `DATABASE_URL` - Your Supabase connection string
- `DB_SSL` - `true`
- `JWT_SECRET` - Generate with: `openssl rand -base64 64`
- `JWT_REFRESH_SECRET` - Generate with: `openssl rand -base64 64`
- `CORS_ORIGIN` - Your frontend URL (e.g., `https://your-app.vercel.app`)
- `NODE_ENV` - `production`

### Step 3: Deploy Frontend to Vercel

```bash
# From the packages/frontend directory  
cd packages/frontend
vercel --prod
```

Set these environment variables:
- `VITE_API_URL` - Your backend URL (e.g., `https://your-backend.vercel.app/api`)

### Step 4: Push to GitHub

```bash
git remote add origin https://github.com/astrobsm/CHAMBER.git
git branch -M main
git add .
git commit -m "Production deployment"
git push -u origin main
```

### Vercel Project Settings

For the **Frontend** project:
- Framework Preset: Vite
- Build Command: `npm run build`
- Output Directory: `dist`
- Install Command: `npm install`

For the **Backend** project:
- Framework Preset: Other
- Build Command: `npm run build`
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
