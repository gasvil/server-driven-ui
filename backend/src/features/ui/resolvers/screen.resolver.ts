import { ScreenSchema } from '../schemas/screen.schema';

export interface ScreenResolver {
  screen: string;
  resolve(): ScreenSchema;
}
