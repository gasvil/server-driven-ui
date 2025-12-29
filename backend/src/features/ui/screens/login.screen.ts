import { ScreenSchema } from '../schemas/screen.schema';

export function loginScreen(): ScreenSchema {
  return {
    id: 'login',
    layout: 'column',
    components: [
      {
        type: 'text',
        props: {
          label: 'Login from Server!',
        },
      },
    ],
  };
}
