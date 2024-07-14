import { Module } from "@nestjs/common";
import { PackageModule } from "./package/package.module";
import { PrismaModule } from "./prisma/prisma.module";

@Module({
  imports: [PackageModule, PrismaModule],
})
export class AppModule {}
