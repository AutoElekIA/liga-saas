import type { Metadata } from 'next';
import './globals.css';

export const metadata: Metadata = {
  title: 'Liga SaaS',
  description: 'SaaS de administracion de ligas de futbol',
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="es">
      <body>{children}</body>
    </html>
  );
}
