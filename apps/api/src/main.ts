import { NestFactory } from '@nestjs/core';
import { Logger } from '@nestjs/common';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.enableCors({
    origin: process.env.APP_URL ?? 'http://localhost:3001',
    credentials: true,
  });

  const port = process.env.PORT ?? 3000;
  await app.listen(port);

  Logger.log(`API escuchando en http://localhost:${port}`, 'Bootstrap');
}

bootstrap();

