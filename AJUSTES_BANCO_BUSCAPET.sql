USE buscapet;

ALTER DATABASE buscapet
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

ALTER TABLE pet
CONVERT TO CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

ALTER TABLE usuario
CONVERT TO CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

ALTER TABLE pet
ADD COLUMN especie VARCHAR(50),
ADD COLUMN cidade VARCHAR(100),
ADD COLUMN telefone VARCHAR(20),
ADD COLUMN tipo_anuncio VARCHAR(50),
ADD COLUMN foto VARCHAR(255),
ADD COLUMN recompensa BOOLEAN DEFAULT FALSE;

ALTER TABLE pet
CHANGE COLUMN sexo genero VARCHAR(20);

-- Se existir erro de coluna duplicada,
-- ignore a coluna que já existir.
