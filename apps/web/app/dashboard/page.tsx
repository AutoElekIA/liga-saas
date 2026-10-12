import { redirect } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';

export default async function DashboardPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect('/login');
  }

  const {
    data: { session },
  } = await supabase.auth.getSession();

  const apiUrl = process.env.NEXT_PUBLIC_API_URL ?? 'http://localhost:3000';

  let profile: unknown = null;
  let profileError: string | null = null;

  if (session?.access_token) {
    try {
      const res = await fetch(`${apiUrl}/auth/me`, {
        headers: {
          Authorization: `Bearer ${session.access_token}`,
        },
        cache: 'no-store',
      });

      if (res.ok) {
        profile = await res.json();
      } else {
        const body = await res.json().catch(() => ({}));
        profileError =
          (body as { message?: string }).message ??
          `API respondio ${res.status}`;
      }
    } catch (err) {
      profileError = err instanceof Error ? err.message : 'Error desconocido';
    }
  }

  return (
    <main className="min-h-screen p-8">
      <div className="max-w-2xl mx-auto">
        <div className="flex justify-between items-center mb-8">
          <h1 className="text-3xl font-bold">Dashboard</h1>
          <form action="/logout" method="post">
            <button
              type="submit"
              className="px-4 py-2 bg-gray-200 text-gray-900 rounded-lg hover:bg-gray-300 transition"
            >
              Cerrar sesion
            </button>
          </form>
        </div>

        <div className="bg-white rounded-lg shadow p-6 mb-6">
          <h2 className="text-xl font-semibold mb-4">Sesion Supabase</h2>
          <dl className="space-y-2 text-sm">
            <div>
              <dt className="text-gray-500">User ID</dt>
              <dd className="font-mono">{user.id}</dd>
            </div>
            <div>
              <dt className="text-gray-500">Email</dt>
              <dd>{user.email}</dd>
            </div>
          </dl>
        </div>

        <div className="bg-white rounded-lg shadow p-6">
          <h2 className="text-xl font-semibold mb-4">Perfil en la API</h2>
          {profile ? (
            <pre className="text-xs bg-gray-50 p-4 rounded overflow-auto">
              {JSON.stringify(profile, null, 2)}
            </pre>
          ) : (
            <p className="text-sm text-red-600">
              {profileError ??
                'No se pudo cargar el perfil. ¿El usuario existe en la tabla usuarios?'}
            </p>
          )}
        </div>
      </div>
    </main>
  );
}
