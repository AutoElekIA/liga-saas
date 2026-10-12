import { createParamDecorator, ExecutionContext } from '@nestjs/common';
import {
  AuthenticatedUser,
  RequestWithUser,
} from '../guards/supabase-auth.guard';

export const CurrentUser = createParamDecorator(
  (data: keyof AuthenticatedUser | undefined, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest<RequestWithUser>();
    const user = request.user;

    if (!user) return undefined;
    return data ? user[data] : user;
  },
);
