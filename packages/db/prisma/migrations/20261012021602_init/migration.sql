-- CreateTable
CREATE TABLE "organizaciones" (
    "id" UUID NOT NULL,
    "nombre" TEXT NOT NULL,
    "rfc" TEXT,
    "plan_saas" TEXT NOT NULL DEFAULT 'basico',
    "estado" TEXT NOT NULL DEFAULT 'activa',
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "organizaciones_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "usuarios" (
    "id" UUID NOT NULL,
    "organizacion_id" UUID NOT NULL,
    "email" TEXT NOT NULL,
    "telefono" TEXT,
    "password_hash" TEXT,
    "estado" TEXT NOT NULL DEFAULT 'activo',
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ligas" (
    "id" UUID NOT NULL,
    "organizacion_id" UUID NOT NULL,
    "nombre" TEXT NOT NULL,
    "deporte" TEXT NOT NULL DEFAULT 'futbol7',
    "estado" TEXT NOT NULL DEFAULT 'borrador',
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ligas_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "organizaciones_rfc_key" ON "organizaciones"("rfc");

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_email_key" ON "usuarios"("email");

-- CreateIndex
CREATE INDEX "usuarios_organizacion_id_idx" ON "usuarios"("organizacion_id");

-- CreateIndex
CREATE INDEX "ligas_organizacion_id_idx" ON "ligas"("organizacion_id");

-- AddForeignKey
ALTER TABLE "usuarios" ADD CONSTRAINT "usuarios_organizacion_id_fkey" FOREIGN KEY ("organizacion_id") REFERENCES "organizaciones"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ligas" ADD CONSTRAINT "ligas_organizacion_id_fkey" FOREIGN KEY ("organizacion_id") REFERENCES "organizaciones"("id") ON DELETE CASCADE ON UPDATE CASCADE;
