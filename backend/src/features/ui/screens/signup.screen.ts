import { ScreenSchema } from '../schemas/screen.schema';

export function signupScreen(): ScreenSchema {
  return {
    id: 'signup',
    layout: 'column',
    components: [
      {
        type: 'text',
        props: {
          label: 'Signup from Server!',
        },
      },
    ],
  };
}
