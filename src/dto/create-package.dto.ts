import {
  IsString,
  IsInt,
  Min,
  Max,
  ValidateNested,
  IsArray,
} from "class-validator";
import { Type } from "class-transformer";

class CreateProductDto {
  @IsString()
  item_name: string;

  @IsInt()
  @Min(1)
  @Max(1000)
  item_weight: number;

  @IsInt()
  item_length: number;

  @IsInt()
  item_height: number;

  @IsInt()
  item_width: number;

  @IsString()
  id: string;
}

export class CreatePackageDto {
  @IsString()
  pickup_address: string;

  @IsString()
  pickup_date: string;

  @IsString()
  first_name: string;

  @IsString()
  last_name: string;

  @IsString()
  email: string;

  @IsString()
  phone: string;

  @IsString()
  destination_address: string;

  @IsString()
  department: string;

  @IsString()
  municipality: string;

  @IsString()
  reference_point: string;

  @IsString()
  instructions: string;

  @IsArray()
  @ValidateNested({ each: true })
  @Type(() => CreateProductDto)
  products: CreateProductDto[];
}
