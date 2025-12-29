import { ScreenSchema } from '../schemas/screen.schema';
import { loginScreen } from '../screens/login.screen';
import { signupScreen } from '../screens/signup.screen';

export function authResolver(): ScreenSchema {
  const isLoggedIn = false;
  return isLoggedIn ? loginScreen() : signupScreen();
}
