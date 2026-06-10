import { useState } from 'react';
import { Link, Navigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { useAuth } from '../../contexts/AuthContext';
import { RegisterFormData } from '../../types';
import { EyeIcon, EyeSlashIcon } from '@heroicons/react/24/outline';

const levels = ['Surgery I', 'Surgery II', 'Surgery III', 'Surgery IV'];

export function Register() {
  const { isAuthenticated, register: registerUser, user } = useAuth();
  const [showPassword, setShowPassword] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm<RegisterFormData>({
    defaultValues: {
      firstName: '',
      lastName: '',
      email: '',
      password: '',
      confirmPassword: '',
      matricNumber: '',
      level: '',
      phoneNumber: '',
      acceptTerms: false,
    },
  });

  const password = watch('password');

  // Redirect if already logged in
  if (isAuthenticated && user) {
    return <Navigate to="/student/dashboard" replace />;
  }

  const onSubmit = async (data: RegisterFormData) => {
    setIsLoading(true);
    try {
      await registerUser({
        firstName: data.firstName,
        lastName: data.lastName,
        email: data.email,
        password: data.password,
        matricNumber: data.matricNumber,
        level: data.level,
        phoneNumber: data.phoneNumber,
      });
    } catch {
      // Error handled in context
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex">
      {/* Left side - Branding */}
      <div className="hidden lg:flex lg:w-1/2 bg-gradient-to-br from-primary-800 to-primary-600 p-12 items-center justify-center sticky top-0 h-screen">
        <div className="max-w-lg text-center">
          <div className="w-28 h-28 mx-auto rounded-full overflow-hidden shadow-xl mb-6 ring-4 ring-white/30">
            <img src="/plastic-surgery-logo.jpg" alt="Burns Plastic and Reconstructive Surgery Unit" className="w-full h-full object-cover" />
          </div>
          <h1 className="text-2xl font-bold text-white mb-2 uppercase tracking-wide">
            Burns Plastic &amp; Reconstructive Surgery Unit
          </h1>
          <p className="text-primary-200 text-sm mb-1">UNTH, Ituku-Ozalla</p>
          <p className="text-primary-200 text-lg mb-6">
            Clinical Rotation Platform
          </p>
          
          <div className="mt-8 space-y-4 text-left">
            <div className="flex items-start gap-3 bg-white/10 backdrop-blur rounded-xl p-4">
              <svg className="w-6 h-6 text-green-400 flex-shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
              </svg>
              <div>
                <p className="text-white font-medium">Track Attendance</p>
                <p className="text-primary-200 text-sm">QR code check-in for all sessions</p>
              </div>
            </div>
            <div className="flex items-start gap-3 bg-white/10 backdrop-blur rounded-xl p-4">
              <svg className="w-6 h-6 text-green-400 flex-shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
              </svg>
              <div>
                <p className="text-white font-medium">Take Tests Online</p>
                <p className="text-primary-200 text-sm">50 MCQs, 10 minutes, instant results</p>
              </div>
            </div>
            <div className="flex items-start gap-3 bg-white/10 backdrop-blur rounded-xl p-4">
              <svg className="w-6 h-6 text-green-400 flex-shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
              </svg>
              <div>
                <p className="text-white font-medium">Monitor Progress</p>
                <p className="text-primary-200 text-sm">Real-time performance analytics</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Right side - Registration form */}
      <div className="w-full lg:w-1/2 flex items-start justify-center p-6 sm:p-12 overflow-y-auto">
        <div className="w-full max-w-md py-8">
          {/* Mobile logo */}
          <div className="lg:hidden text-center mb-8">
            <div className="w-20 h-20 mx-auto rounded-full overflow-hidden shadow-lg mb-3 ring-2 ring-primary-200">
              <img src="/plastic-surgery-logo.jpg" alt="Burns Plastic and Reconstructive Surgery Unit" className="w-full h-full object-cover" />
            </div>
            <h1 className="text-lg font-bold text-gray-900 uppercase tracking-wide">Burns Plastic &amp; Reconstructive Surgery Unit</h1>
            <p className="text-gray-500 text-sm">UNTH, Ituku-Ozalla</p>
            <p className="text-primary-600 text-sm font-medium">Clinical Rotation Platform</p>
          </div>

          <div className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900">Create an account</h2>
            <p className="text-gray-600 mt-2">Fill in your details to get started</p>
          </div>

          <form onSubmit={handleSubmit(onSubmit)} className="space-y-5">
            <div className="grid grid-cols-2 gap-4">
              <div>
                <label htmlFor="firstName" className="label">First name</label>
                <input
                  id="firstName"
                  type="text"
                  className={`input ${errors.firstName ? 'input-error' : ''}`}
                  placeholder="John"
                  {...register('firstName', { required: 'First name is required' })}
                />
                {errors.firstName && (
                  <p className="mt-1 text-sm text-red-600">{errors.firstName.message}</p>
                )}
              </div>
              <div>
                <label htmlFor="lastName" className="label">Last name</label>
                <input
                  id="lastName"
                  type="text"
                  className={`input ${errors.lastName ? 'input-error' : ''}`}
                  placeholder="Doe"
                  {...register('lastName', { required: 'Last name is required' })}
                />
                {errors.lastName && (
                  <p className="mt-1 text-sm text-red-600">{errors.lastName.message}</p>
                )}
              </div>
            </div>

            <div>
              <label htmlFor="email" className="label">Email address</label>
              <input
                id="email"
                type="email"
                className={`input ${errors.email ? 'input-error' : ''}`}
                placeholder="you@example.com"
                {...register('email', {
                  required: 'Email is required',
                  pattern: {
                    value: /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i,
                    message: 'Invalid email address',
                  },
                })}
              />
              {errors.email && (
                <p className="mt-1 text-sm text-red-600">{errors.email.message}</p>
              )}
            </div>

            <div>
              <label htmlFor="matricNumber" className="label">Matric number</label>
              <input
                id="matricNumber"
                type="text"
                className={`input ${errors.matricNumber ? 'input-error' : ''}`}
                placeholder="2019/123456"
                {...register('matricNumber', { required: 'Matric number is required' })}
              />
              {errors.matricNumber && (
                <p className="mt-1 text-sm text-red-600">{errors.matricNumber.message}</p>
              )}
            </div>

            <div>
              <label htmlFor="level" className="label">Surgery level</label>
              <select
                id="level"
                className={`input ${errors.level ? 'input-error' : ''}`}
                {...register('level', { required: 'Please select your level' })}
              >
                <option value="">Select level...</option>
                {levels.map((level) => (
                  <option key={level} value={level}>{level}</option>
                ))}
              </select>
              {errors.level && (
                <p className="mt-1 text-sm text-red-600">{errors.level.message}</p>
              )}
            </div>

            <div>
              <label htmlFor="phoneNumber" className="label">Phone number</label>
              <input
                id="phoneNumber"
                type="tel"
                className={`input ${errors.phoneNumber ? 'input-error' : ''}`}
                placeholder="+234 xxx xxx xxxx"
                {...register('phoneNumber', {
                  required: 'Phone number is required',
                  pattern: {
                    value: /^[+]?[(]?[0-9]{1,4}[)]?[-\s./0-9]*$/,
                    message: 'Invalid phone number',
                  },
                })}
              />
              {errors.phoneNumber && (
                <p className="mt-1 text-sm text-red-600">{errors.phoneNumber.message}</p>
              )}
            </div>

            <div>
              <label htmlFor="password" className="label">Password</label>
              <div className="relative">
                <input
                  id="password"
                  type={showPassword ? 'text' : 'password'}
                  className={`input pr-10 ${errors.password ? 'input-error' : ''}`}
                  placeholder="••••••••"
                  {...register('password', {
                    required: 'Password is required',
                    minLength: {
                      value: 8,
                      message: 'Password must be at least 8 characters',
                    },
                    pattern: {
                      value: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/,
                      message: 'Password must include uppercase, lowercase, and number',
                    },
                  })}
                />
                <button
                  type="button"
                  onClick={() => setShowPassword(!showPassword)}
                  className="absolute inset-y-0 right-0 flex items-center pr-3 text-gray-400 hover:text-gray-600"
                >
                  {showPassword ? (
                    <EyeSlashIcon className="w-5 h-5" />
                  ) : (
                    <EyeIcon className="w-5 h-5" />
                  )}
                </button>
              </div>
              {errors.password && (
                <p className="mt-1 text-sm text-red-600">{errors.password.message}</p>
              )}
            </div>

            <div>
              <label htmlFor="confirmPassword" className="label">Confirm password</label>
              <input
                id="confirmPassword"
                type="password"
                className={`input ${errors.confirmPassword ? 'input-error' : ''}`}
                placeholder="••••••••"
                {...register('confirmPassword', {
                  required: 'Please confirm your password',
                  validate: (value) => value === password || 'Passwords do not match',
                })}
              />
              {errors.confirmPassword && (
                <p className="mt-1 text-sm text-red-600">{errors.confirmPassword.message}</p>
              )}
            </div>

            <div>
              <label className="flex items-start gap-2 cursor-pointer">
                <input
                  type="checkbox"
                  className="mt-1 w-4 h-4 rounded border-gray-300 text-primary-600 focus:ring-primary-500"
                  {...register('acceptTerms', { required: 'You must accept the terms' })}
                />
                <span className="text-sm text-gray-600">
                  I agree to the{' '}
                  <a href="#" className="text-primary-600 hover:text-primary-700">Terms of Service</a>
                  {' '}and{' '}
                  <a href="#" className="text-primary-600 hover:text-primary-700">Privacy Policy</a>
                </span>
              </label>
              {errors.acceptTerms && (
                <p className="mt-1 text-sm text-red-600">{errors.acceptTerms.message}</p>
              )}
            </div>

            <button
              type="submit"
              disabled={isLoading}
              className="btn-primary w-full py-3"
            >
              {isLoading ? (
                <span className="flex items-center justify-center gap-2">
                  <svg className="animate-spin w-5 h-5" viewBox="0 0 24 24">
                    <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
                    <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
                  </svg>
                  Creating account...
                </span>
              ) : (
                'Create account'
              )}
            </button>
          </form>

          <p className="mt-6 text-center text-sm text-gray-600">
            Already have an account?{' '}
            <Link to="/login" className="font-medium text-primary-600 hover:text-primary-700">
              Sign in
            </Link>
          </p>
        </div>
      </div>
    </div>
  );
}

export default Register;
