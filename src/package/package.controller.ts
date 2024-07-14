import { Body, Controller, Post } from "@nestjs/common";
import { PackageService } from "./package.service";
import { CreatePackageDto } from "../dto/create-package.dto";

@Controller("packages")
export class PackagesController {
  constructor(private readonly packageService: PackageService) {}

  @Post()
  async createPackage(@Body() createPackageDto: CreatePackageDto) {
    try {
      console.log("Received payload:", createPackageDto);

      const result = await this.packageService.createPackage(createPackageDto);

      return { message: "Package created successfully", data: result };
    } catch (error) {
      console.error("Error creating package:", error);
      throw error;
    }
  }
}
