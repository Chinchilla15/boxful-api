/*
  Warnings:

  - Changed the type of `item_weight` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `item_length` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `item_height` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `item_width` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "item_weight",
ADD COLUMN     "item_weight" INTEGER NOT NULL,
DROP COLUMN "item_length",
ADD COLUMN     "item_length" INTEGER NOT NULL,
DROP COLUMN "item_height",
ADD COLUMN     "item_height" INTEGER NOT NULL,
DROP COLUMN "item_width",
ADD COLUMN     "item_width" INTEGER NOT NULL;
