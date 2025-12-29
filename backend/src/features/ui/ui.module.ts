import { Module } from '@nestjs/common';
import { UIController } from './ui.controller';
import { UiService } from './ui.service';

@Module({
  imports: [],
  controllers: [UIController],
  providers: [UiService],
})
export class UiModule {}
