/*
  Warnings:

  - A unique constraint covering the columns `[supabase_user_id]` on the table `usuarios` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "usuarios" ADD COLUMN     "rol" TEXT NOT NULL DEFAULT 'jugador',
ADD COLUMN     "supabase_user_id" UUID;

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_supabase_user_id_key" ON "usuarios"("supabase_user_id");

-- CreateIndex
CREATE INDEX "usuarios_supabase_user_id_idx" ON "usuarios"("supabase_user_id");
