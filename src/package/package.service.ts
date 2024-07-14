import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { CreatePackageDto } from "../dto/create-package.dto";

@Injectable()
export class PackageService {
  constructor(private prisma: PrismaService) {}

  async createPackage(data: CreatePackageDto) {
    const {
      pickup_address,
      pickup_date,
      first_name,
      last_name,
      email,
      phone,
      destination_address,
      department,
      municipality,
      reference_point,
      instructions,
      products,
    } = data;

    try {
      return await this.prisma.package.create({
        data: {
          pickup_address,
          pickup_date,
          first_name,
          last_name,
          email,
          phone,
          destination_address,
          department,
          municipality,
          reference_point,
          instructions,
          products: {
            create: products.map((product) => ({
              item_name: product.item_name,
              item_weight: product.item_weight,
              item_length: product.item_length,
              item_height: product.item_height,
              item_width: product.item_width,
              id: product.id,
            })),
          },
        },
        include: {
          products: true,
        },
      });
    } catch (error) {
      console.error("Error creating package:", error);
      throw error;
    }
  }
}
