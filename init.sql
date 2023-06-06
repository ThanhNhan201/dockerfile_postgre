DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'login') THEN
    CREATE DATABASE login;
  END IF;
END $$;

