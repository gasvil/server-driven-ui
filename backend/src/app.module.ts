import { Module } from '@nestjs/common';
import { UiModule } from './features/ui/ui.module';

@Module({
  imports: [UiModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
