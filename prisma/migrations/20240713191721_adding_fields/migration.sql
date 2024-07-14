/*
  Warnings:

  - You are about to drop the column `name` on the `Package` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `Package` table. All the data in the column will be lost.
  - Added the required column `department` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `destination_address` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `first_name` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `instructions` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `item_height` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `item_length` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `item_name` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `item_weight` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `item_width` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_name` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `municipality` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pickup_address` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pickup_date` to the `Package` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reference_point` to the `Package` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Package" DROP COLUMN "name",
DROP COLUMN "quantity",
ADD COLUMN     "department" TEXT NOT NULL,
ADD COLUMN     "destination_address" TEXT NOT NULL,
ADD COLUMN     "email" TEXT NOT NULL,
ADD COLUMN     "first_name" TEXT NOT NULL,
ADD COLUMN     "instructions" TEXT NOT NULL,
ADD COLUMN     "item_height" INTEGER NOT NULL,
ADD COLUMN     "item_length" INTEGER NOT NULL,
ADD COLUMN     "item_name" TEXT NOT NULL,
ADD COLUMN     "item_weight" INTEGER NOT NULL,
ADD COLUMN     "item_width" INTEGER NOT NULL,
ADD COLUMN     "last_name" TEXT NOT NULL,
ADD COLUMN     "municipality" TEXT NOT NULL,
ADD COLUMN     "phone" TEXT NOT NULL,
ADD COLUMN     "pickup_address" TEXT NOT NULL,
ADD COLUMN     "pickup_date" TEXT NOT NULL,
ADD COLUMN     "reference_point" TEXT NOT NULL;
