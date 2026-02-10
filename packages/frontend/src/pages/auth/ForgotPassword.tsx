import { useState } from 'react';
import { Link } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { authApi } from '../../services/api';
import toast from 'react-hot-toast';

interface ForgotPasswordFormData {
  email: string;
}

export function ForgotPassword() {
  const [isLoading, setIsLoading] = useState(false);
  const [resetDone, setResetDone] = useState(false);
  const [tempPassword, setTempPassword] = useState<string | null>(null);
  const [copied, setCopied] = useState(false);

  const {
    register,
    handleSubmit,
    formState: { errors },
    getValues,
  } = useForm<ForgotPasswordFormData>();

  const onSubmit = async (data: ForgotPasswordFormData) => {
    setIsLoading(true);
    try {
      const response = await authApi.forgotPassword(data.email);
      const result = response.data;
      setResetDone(true);
      if (result.temporary_password) {
        setTempPassword(result.temporary_password);
        toast.success('Password reset successfully!');
      } else {
        setTempPassword(null);
        toast.success(result.message || 'Request submitted.');
      }
    } catch {
      toast.error('Failed to reset password. Please try again.');
    } finally {
      setIsLoading(false);
    }
  };

  const copyToClipboard = () => {
    if (tempPassword) {
      navigator.clipboard.writeText(tempPassword);
      setCopied(true);
      toast.success('Password copied to clipboard!');
      setTimeout(() => setCopied(false), 2000);
    }
  };

  if (resetDone) {
    return (
      <div className="min-h-screen flex items-center justify-center p-6 bg-gray-50">
        <div className="w-full max-w-md text-center">
          <div className="w-16 h-16 mx-auto bg-green-100 rounded-full flex items-center justify-center mb-6">
            <svg className="w-8 h-8 text-green-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
            </svg>
          </div>
          {tempPassword ? (
            <>
              <h2 className="text-2xl font-bold text-gray-900 mb-2">Password Reset</h2>
              <p className="text-gray-600 mb-4">
                Your password for <strong>{getValues('email')}</strong> has been reset.
              </p>
              <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-4 mb-4">
                <p className="text-sm text-yellow-800 font-medium mb-2">Your new temporary password:</p>
                <div className="flex items-center justify-center gap-2">
                  <code className="text-lg font-mono font-bold text-yellow-900 bg-yellow-100 px-4 py-2 rounded select-all">
                    {tempPassword}
                  </code>
                  <button
                    onClick={copyToClipboard}
                    className="p-2 text-yellow-700 hover:text-yellow-900 hover:bg-yellow-100 rounded-lg"
                    title="Copy password"
                  >
                    {copied ? (
                      <svg className="w-5 h-5 text-green-600" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" /></svg>
                    ) : (
                      <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" /></svg>
                    )}
                  </button>
                </div>
              </div>
              <p className="text-sm text-red-600 font-medium mb-6">
                Please save this password now. You will need to change it after logging in.
              </p>
            </>
          ) : (
            <>
              <h2 className="text-2xl font-bold text-gray-900 mb-2">Request Submitted</h2>
              <p className="text-gray-600 mb-6">
                If an account with that email exists, the password has been reset. Please contact your administrator for the new temporary password.
              </p>
            </>
          )}
          <div className="flex flex-col gap-3">
            <Link to="/login" className="btn-primary inline-flex justify-center">
              Go to Login
            </Link>
            <button
              onClick={() => { setResetDone(false); setTempPassword(null); setCopied(false); }}
              className="text-sm text-primary-600 hover:text-primary-700 font-medium"
            >
              Reset another account
            </button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex items-center justify-center p-6 bg-gray-50">
      <div className="w-full max-w-md">
        <div className="text-center mb-8">
          <div className="w-16 h-16 mx-auto bg-primary-100 rounded-full flex items-center justify-center mb-4">
            <svg className="w-8 h-8 text-primary-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 7a2 2 0 012 2m4 0a6 6 0 01-7.743 5.743L11 17H9v2H7v2H4a1 1 0 01-1-1v-2.586a1 1 0 01.293-.707l5.964-5.964A6 6 0 1121 9z" />
            </svg>
          </div>
          <h2 className="text-2xl font-bold text-gray-900">Forgot password?</h2>
          <p className="text-gray-600 mt-2">
            Enter your email and we'll reset your password instantly.
          </p>
        </div>

        <form onSubmit={handleSubmit(onSubmit)} className="space-y-5">
          <div>
            <label htmlFor="email" className="label">
              Email address
            </label>
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
                Sending...
              </span>
            ) : (
              'Reset Password'
            )}
          </button>
        </form>

        <p className="mt-6 text-center text-sm text-gray-600">
          <Link to="/login" className="font-medium text-primary-600 hover:text-primary-700">
            ← Back to login
          </Link>
        </p>
      </div>
    </div>
  );
}

export default ForgotPassword;
