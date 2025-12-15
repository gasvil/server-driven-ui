import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UIController } from './ui/ui.controller';

@Module({
  imports: [],
  controllers: [AppController, UIController],
  providers: [AppService],
})
export class AppModule {}
