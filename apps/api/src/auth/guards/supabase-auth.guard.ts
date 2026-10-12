import {
  CanActivate,
  ExecutionContext,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Request } from 'express';

export interface AuthenticatedUser {
  id: string;
  email: string | undefined;
  role: string | undefined;
  metadata: Record<string, unknown>;
  accessToken: string;
}

export interface RequestWithUser extends Request {
  user?: AuthenticatedUser;
}

@Injectable()
export class SupabaseAuthGuard implements CanActivate {
  private readonly supabase: SupabaseClient;

  constructor(private readonly config: ConfigService) {
    const url = this.config.getOrThrow<string>('SUPABASE_URL');
    const key = this.config.getOrThrow<string>('SUPABASE_PUBLISHABLE_KEY');
    this.supabase = createClient(url, key, {
      auth: {
        autoRefreshToken: false,
        persistSession: false,
      },
    });
  }

  async canActivate(context: ExecutionContext): Promise<boolean> {
    const request = context.switchToHttp().getRequest<RequestWithUser>();
    const token = this.extractToken(request);

    if (!token) {
      throw new UnauthorizedException('Token no proporcionado');
    }

    const { data, error } = await this.supabase.auth.getUser(token);

    if (error || !data.user) {
      throw new UnauthorizedException('Token invalido o expirado');
    }

    request.user = {
      id: data.user.id,
      email: data.user.email,
      role: data.user.role,
      metadata: data.user.user_metadata ?? {},
      accessToken: token,
    };

    return true;
  }

  private extractToken(request: Request): string | null {
    const header = request.headers.authorization;
    if (!header) return null;

    const [type, token] = header.split(' ');
    if (type !== 'Bearer' || !token) return null;

    return token;
  }
}
