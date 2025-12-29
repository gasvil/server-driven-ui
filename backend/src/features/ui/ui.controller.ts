import { Controller, Get, Param } from '@nestjs/common';
import type { ScreenSchema } from './schemas/screen.schema';
import { UiService } from './ui.service';

@Controller('ui/screen')
export class UIController {
  constructor(private readonly uiService: UiService) {}

  @Get(':screenId')
  resolve(@Param('screenId') screenId: string): ScreenSchema {
    return this.uiService.resolveScreen(screenId);
  }
}
