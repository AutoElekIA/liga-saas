export type Rol =
  | 'superadmin'
  | 'admin_org'
  | 'admin_liga'
  | 'admin_complejo'
  | 'delegado'
  | 'subdelegado'
  | 'jugador'
  | 'arbitro'
  | 'prensa'
  | 'tutor';

export const ROLES: Rol[] = [
  'superadmin',
  'admin_org',
  'admin_liga',
  'admin_complejo',
  'delegado',
  'subdelegado',
  'jugador',
  'arbitro',
  'prensa',
  'tutor',
];

export const ROLE_HIERARCHY: Record<Rol, number> = {
  superadmin: 100,
  admin_org: 80,
  admin_liga: 60,
  admin_complejo: 50,
  delegado: 40,
  subdelegado: 30,
  arbitro: 30,
  tutor: 20,
  jugador: 10,
  prensa: 5,
};

export type Deporte = 'futbol5' | 'futbol7' | 'futbol11';

export type EstadoLiga = 'borrador' | 'activa' | 'pausada' | 'cerrada';

export type PlanSaas = 'basico' | 'pro' | 'enterprise';

export interface HealthResponse {
  status: 'ok' | 'error';
  service: string;
  timestamp: string;
  uptime: number;
}
