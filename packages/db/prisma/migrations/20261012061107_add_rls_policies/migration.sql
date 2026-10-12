-- 1. Crear rol liga_app (idempotente, NOLOGIN NOSUPERUSER NOBYPASSRLS)
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'liga_app') THEN
    CREATE ROLE liga_app
      NOLOGIN
      NOSUPERUSER
      NOBYPASSRLS
      NOCREATEDB
      NOCREATEROLE
      NOINHERIT;
  END IF;
END
$$;

-- 2. Grants sobre schema y tablas
GRANT USAGE ON SCHEMA public TO liga_app;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO liga_app;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO liga_app;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO liga_app;
ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT USAGE, SELECT ON SEQUENCES TO liga_app;

-- 3. Función helper que lee la org actual de la sesión
CREATE OR REPLACE FUNCTION current_organizacion_id()
RETURNS uuid AS $$
  SELECT NULLIF(current_setting('app.current_organizacion_id', true), '')::uuid;
$$ LANGUAGE sql STABLE;

GRANT EXECUTE ON FUNCTION current_organizacion_id() TO liga_app;

-- 4. Habilitar y forzar RLS
ALTER TABLE organizaciones ENABLE ROW LEVEL SECURITY;
ALTER TABLE organizaciones FORCE ROW LEVEL SECURITY;
ALTER TABLE usuarios ENABLE ROW LEVEL SECURITY;
ALTER TABLE usuarios FORCE ROW LEVEL SECURITY;
ALTER TABLE ligas ENABLE ROW LEVEL SECURITY;
ALTER TABLE ligas FORCE ROW LEVEL SECURITY;

-- 5. Políticas por tenant
DROP POLICY IF EXISTS organizaciones_tenant ON organizaciones;
CREATE POLICY organizaciones_tenant ON organizaciones
  FOR ALL
  USING (id = current_organizacion_id())
  WITH CHECK (id = current_organizacion_id());

DROP POLICY IF EXISTS usuarios_tenant ON usuarios;
CREATE POLICY usuarios_tenant ON usuarios
  FOR ALL
  USING (organizacion_id = current_organizacion_id())
  WITH CHECK (organizacion_id = current_organizacion_id());

DROP POLICY IF EXISTS ligas_tenant ON ligas;
CREATE POLICY ligas_tenant ON ligas
  FOR ALL
  USING (organizacion_id = current_organizacion_id())
  WITH CHECK (organizacion_id = current_organizacion_id());
