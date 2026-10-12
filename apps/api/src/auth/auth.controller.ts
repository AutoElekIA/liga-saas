import { Controller, Get, UseGuards } from '@nestjs/common';
import { AuthService, UserProfile } from './auth.service';
import {
  AuthenticatedUser,
  SupabaseAuthGuard,
} from './guards/supabase-auth.guard';
import { RolesGuard } from './guards/roles.guard';
import { CurrentUser } from './decorators/current-user.decorator';
import { Roles } from './decorators/roles.decorator';

@Controller('auth')
@UseGuards(SupabaseAuthGuard, RolesGuard)
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Get('me')
  async me(@CurrentUser() user: AuthenticatedUser): Promise<UserProfile> {
    return this.authService.getProfile(user);
  }

  @Get('me/org')
  @Roles('admin_org', 'superadmin')
  async meOrg(@CurrentUser() user: AuthenticatedUser): Promise<UserProfile> {
    return this.authService.getProfile(user);
  }

  @Get('me/admin')
  @Roles('admin_liga', 'admin_complejo', 'admin_org', 'superadmin')
  async meAdmin(@CurrentUser() user: AuthenticatedUser): Promise<UserProfile> {
    return this.authService.getProfile(user);
  }
}
