import { Padding } from '../schemas/props/padding.prop';
import { ScreenSchema } from '../schemas/screen.schema';

export function loginScreen(): ScreenSchema {
  return {
    id: 'login',
    layout: 'column',
    container: {
      padding: Padding.all(16),
    },
    components: [
      {
        type: 'iconButton',
        props: {
          value: '',
        },
      },
      {
        type: 'text',
        props: {
          label: 'Login from Server!',
        },
      },
    ],
  };
}
