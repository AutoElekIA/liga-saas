import { Controller, Get, UseGuards } from '@nestjs/common';
import { AuthService, UserProfile } from './auth.service';
import { SupabaseAuthGuard } from './guards/supabase-auth.guard';
import {
  AuthenticatedUser,
  RequestWithUser,
} from './guards/supabase-auth.guard';
import { CurrentUser } from './decorators/current-user.decorator';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Get('me')
  @UseGuards(SupabaseAuthGuard)
  async me(@CurrentUser() user: AuthenticatedUser): Promise<UserProfile> {
    return this.authService.getProfile(user);
  }
}
