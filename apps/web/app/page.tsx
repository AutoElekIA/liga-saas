import Link from 'next/link';

export default function Home() {
  return (
    <main className="min-h-screen flex flex-col items-center justify-center p-8">
      <h1 className="text-4xl font-bold mb-4">Liga SaaS</h1>
      <p className="text-lg text-gray-600 mb-8">
        El sistema que hace que tu liga se administre sola.
      </p>
      <Link
        href="/login"
        className="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
      >
        Iniciar sesion
      </Link>
    </main>
  );
}
