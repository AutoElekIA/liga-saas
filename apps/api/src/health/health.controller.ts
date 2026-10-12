import { Controller, Get } from '@nestjs/common';

@Controller('health')
export class HealthController {
  @Get()
  check() {
    return {
      status: 'ok',
      service: 'liga-saas-api',
      timestamp: new Date().toISOString(),
      uptime: process.uptime(),
    };
  }

  @Get('supabase')
  checkSupabase() {
    return {
      status: 'ok',
      supabase: {
        url: process.env.SUPABASE_URL ? 'configured' : 'missing',
        key: process.env.SUPABASE_PUBLISHABLE_KEY ? 'configured' : 'missing',
        admin: process.env.SUPABASE_SERVICE_ROLE_KEY ? 'configured' : 'missing',
      },
      timestamp: new Date().toISOString(),
    };
  }
}
