import { Injectable } from '@nestjs/common';
import { loginScreen } from './screens/login.screen';
import { notFoundScreen } from './screens/not-found.screen';
import { signupScreen } from './screens/signup.screen';

@Injectable()
export class UiService {
  resolveScreen(screenId: string) {
    switch (screenId) {
      case 'login':
        return loginScreen();
      case 'signup':
        return signupScreen();
      default:
        return notFoundScreen();
    }
  }
}
