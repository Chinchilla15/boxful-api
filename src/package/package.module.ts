import { Module } from "@nestjs/common";
import { PackageService } from "./package.service";
import { PackagesController } from "./package.controller";
import { PrismaModule } from "../prisma/prisma.module";

@Module({
  imports: [PrismaModule],
  providers: [PackageService],
  controllers: [PackagesController],
})
export class PackageModule {}
