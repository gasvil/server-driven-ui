import { Controller, Get } from '@nestjs/common';
import type { Screen } from 'src/schemas/screen.schema';

@Controller()
export class UIController {
  @Get('screen/home')
  getHome(): Screen {
    return {
      id: 'home',
      layout: 'column',
      components: [
        {
          type: 'text',
          props: [{ value: 'Hello World' }],
        },
      ],
    };
  }
}
