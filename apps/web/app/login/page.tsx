'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';

export default function LoginPage() {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);

    // TODO: integrar con Supabase Auth
    await new Promise((r) => setTimeout(r, 500));

    setLoading(false);
    router.push('/');
  }

  return (
    <main className="min-h-screen flex items-center justify-center p-8">
      <form
        onSubmit={handleSubmit}
        className="w-full max-w-sm bg-white p-8 rounded-lg shadow"
      >
        <h1 className="text-2xl font-bold mb-6">Iniciar sesion</h1>

        <label className="block mb-4">
          <span className="text-sm text-gray-700">Email</span>
          <input
            type="email"
            required
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="mt-1 w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="tu@email.com"
          />
        </label>

        <label className="block mb-6">
          <span className="text-sm text-gray-700">Contrasena</span>
          <input
            type="password"
            required
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="mt-1 w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="********"
          />
        </label>

        <button
          type="submit"
          disabled={loading}
          className="w-full py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition disabled:opacity-50"
        >
          {loading ? 'Entrando...' : 'Entrar'}
        </button>

        <p className="text-xs text-gray-500 mt-4 text-center">
          Demo: cualquier email y contrasena funcionan.
        </p>
      </form>
    </main>
  );
}
