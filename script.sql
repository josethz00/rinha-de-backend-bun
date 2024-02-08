CREATE UNLOGGED TABLE users (
    id SERIAL PRIMARY KEY,
    nome VARCHAR (256) NOT NULL,
    limite INTEGER NOT NULL,
    balance INTEGER DEFAULT 0
);

CREATE UNLOGGED TABLE transactions (
    id SERIAL PRIMARY KEY,
    value INTEGER NOT NULL,
    type CHAR(1) NOT NULL,
    description VARCHAR(10),
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

DO $$
BEGIN
INSERT INTO users (nome, limite)
  VALUES
    ('pablo marcal', 1000 * 100),
    ('primo rico', 800 * 100),
    ('vasco', 10000 * 100),
    ('larissa manoela', 100000 * 100),
    ('juliete', 5000 * 100);
END; $$