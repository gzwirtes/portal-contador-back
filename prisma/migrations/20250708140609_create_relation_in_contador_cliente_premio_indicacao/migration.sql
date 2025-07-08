/*
  Warnings:

  - Added the required column `contador_id` to the `clientes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `contador_id` to the `indicacoes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `contador_id` to the `premios` table without a default value. This is not possible if the table is not empty.
  - Added the required column `indicacao_id` to the `premios` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "clientes" ADD COLUMN     "contador_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "indicacoes" ADD COLUMN     "contador_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "premios" ADD COLUMN     "contador_id" INTEGER NOT NULL,
ADD COLUMN     "indicacao_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "clientes" ADD CONSTRAINT "clientes_contador_id_fkey" FOREIGN KEY ("contador_id") REFERENCES "contadores"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "indicacoes" ADD CONSTRAINT "indicacoes_contador_id_fkey" FOREIGN KEY ("contador_id") REFERENCES "contadores"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "premios" ADD CONSTRAINT "premios_contador_id_fkey" FOREIGN KEY ("contador_id") REFERENCES "contadores"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "premios" ADD CONSTRAINT "premios_indicacao_id_fkey" FOREIGN KEY ("indicacao_id") REFERENCES "indicacoes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
