import { Injectable, NotFoundException } from '@nestjs/common';
import { prisma } from '@liga-saas/db';
import { Rol } from '@liga-saas/types';
import { AuthenticatedUser } from './guards/supabase-auth.guard';

export interface UserProfile {
  id: string;
  supabaseUserId: string | null;
  email: string;
  rol: Rol;
  organizacionId: string;
  telefono: string | null;
  estado: string;
}

@Injectable()
export class AuthService {
  async getProfile(user: AuthenticatedUser): Promise<UserProfile> {
    const usuario = await prisma.usuario.findUnique({
      where: { supabaseUserId: user.id },
      select: {
        id: true,
        supabaseUserId: true,
        email: true,
        rol: true,
        organizacionId: true,
        telefono: true,
        estado: true,
      },
    });

    if (!usuario) {
      throw new NotFoundException(
        'Usuario autenticado no registrado en la base de datos',
      );
    }

    return {
      ...usuario,
      rol: usuario.rol as Rol,
    };
  }
}
