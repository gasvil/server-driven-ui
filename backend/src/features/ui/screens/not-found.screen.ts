import { ScreenSchema } from '../schemas/screen.schema';

export function notFoundScreen(): ScreenSchema {
  return {
    id: 'not-found',
    layout: 'column',
    components: [
      {
        type: 'text',
        props: {
          label: 'Not found from Server!',
        },
      },
    ],
  };
}
