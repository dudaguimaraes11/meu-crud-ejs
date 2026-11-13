-- Criação da tabela de usuários
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de produtos
CREATE TABLE IF NOT EXISTS produtos (
    id SERIAL PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    peso NUMERIC(10, 2) NOT NULL,
    preco NUMERIC(10, 2) NOT NULL
);

-- Inserção do usuário inicial (E-mail: admin@email.com | Senha: 123456)
INSERT INTO usuarios (nome, email, senha)
VALUES (
    'Administrador',
    'admin@email.com',
    '$2b$10$SCZ9u6ue1oLDzT.zrXXxUumslIME8.FYUGVP0eKSEqlxPUkI/laSS'
)
ON CONFLICT (email) DO NOTHING;
