import {
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { prisma } from '@liga-saas/db';
import type { Rol } from '@liga-saas/types';
import { ROLE_HIERARCHY } from '@liga-saas/types';
import { ROLES_KEY } from '../decorators/roles.decorator';
import { RequestWithUser } from './supabase-auth.guard';

@Injectable()
export class RolesGuard implements CanActivate {
  constructor(private readonly reflector: Reflector) {}

  async canActivate(context: ExecutionContext): Promise<boolean> {
    const requiredRoles = this.reflector.getAllAndOverride<Rol[]>(ROLES_KEY, [
      context.getHandler(),
      context.getClass(),
    ]);

    if (!requiredRoles || requiredRoles.length === 0) {
      return true;
    }

    const request = context.switchToHttp().getRequest<RequestWithUser>();
    const user = request.user;

    if (!user) {
      throw new ForbiddenException('Usuario no autenticado');
    }

    const usuario = await prisma.usuario.findUnique({
      where: { supabaseUserId: user.id },
      select: { rol: true },
    });

    if (!usuario) {
      throw new ForbiddenException('Usuario no registrado en la organizacion');
    }

    const userRole = usuario.rol as Rol;
    const userLevel = ROLE_HIERARCHY[userRole] ?? 0;

    const hasPermission = requiredRoles.some(
      (required) => userLevel >= (ROLE_HIERARCHY[required] ?? 0),
    );

    if (!hasPermission) {
      throw new ForbiddenException(
        `Rol ${userRole} no tiene permiso para esta accion`,
      );
    }

    return true;
  }
}
