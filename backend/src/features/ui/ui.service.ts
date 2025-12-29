import { Injectable } from '@nestjs/common';
import { authResolver } from './resolvers/auth.resolver';
import { notFoundScreen } from './screens/not-found.screen';

@Injectable()
export class UiService {
  resolveScreen(screenId: string) {
    switch (screenId) {
      case 'auth':
        return authResolver();
      default:
        return notFoundScreen();
    }
  }
}
