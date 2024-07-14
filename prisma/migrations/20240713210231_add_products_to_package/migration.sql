/*
  Warnings:

  - You are about to drop the column `item_height` on the `Package` table. All the data in the column will be lost.
  - You are about to drop the column `item_length` on the `Package` table. All the data in the column will be lost.
  - You are about to drop the column `item_name` on the `Package` table. All the data in the column will be lost.
  - You are about to drop the column `item_weight` on the `Package` table. All the data in the column will be lost.
  - You are about to drop the column `item_width` on the `Package` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Package" DROP COLUMN "item_height",
DROP COLUMN "item_length",
DROP COLUMN "item_name",
DROP COLUMN "item_weight",
DROP COLUMN "item_width";

-- CreateTable
CREATE TABLE "Product" (
    "id" SERIAL NOT NULL,
    "item_name" TEXT NOT NULL,
    "item_weight" INTEGER NOT NULL,
    "item_length" INTEGER NOT NULL,
    "item_height" INTEGER NOT NULL,
    "item_width" INTEGER NOT NULL,
    "packageId" INTEGER NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_packageId_fkey" FOREIGN KEY ("packageId") REFERENCES "Package"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
