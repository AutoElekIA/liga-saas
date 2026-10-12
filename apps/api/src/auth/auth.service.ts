import { Injectable, Inject, NotFoundException } from '@nestjs/common';
import { SupabaseClient } from '@supabase/supabase-js';
import { SUPABASE_ADMIN_CLIENT } from '../supabase/supabase.module';
import { AuthenticatedUser } from './guards/supabase-auth.guard';

export interface UserProfile {
  id: string;
  email: string | undefined;
  role: string | undefined;
  metadata: Record<string, unknown>;
}

@Injectable()
export class AuthService {
  constructor(
    @Inject(SUPABASE_ADMIN_CLIENT)
    private readonly supabaseAdmin: SupabaseClient,
  ) {}

  async getProfile(user: AuthenticatedUser): Promise<UserProfile> {
    const { data, error } = await this.supabaseAdmin.auth.admin.getUserById(
      user.id,
    );

    if (error || !data.user) {
      throw new NotFoundException('Usuario no encontrado en Supabase');
    }

    return {
      id: data.user.id,
      email: data.user.email,
      role: data.user.role,
      metadata: data.user.user_metadata ?? {},
    };
  }
}
