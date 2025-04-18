SELECT * FROM CLIENTES

-- Criar tabele CLientes 

CREATE TABLE Clientes (
    ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nome VARCHAR2(100) NOT NULL,
    Email VARCHAR2(150),
    DataCadastro DATE DEFAULT SYSDATE
);

-- Inserção do primeiro cliente
INSERT INTO Clientes (Nome, Email, DataCadastro)
VALUES ('João Silva', 'joao.silva@email.com', TO_DATE('15/01/2023', 'DD/MM/YYYY'));

-- Inserção do segundo cliente
INSERT INTO Clientes (Nome, Email, DataCadastro)
VALUES ('Maria Oliveira', 'maria.oliveira@email.com', TO_DATE('20/02/2023', 'DD/MM/YYYY'));

-- Inserção do terceiro cliente
INSERT INTO Clientes (Nome, Email)
VALUES ('Carlos Souza', 'carlos.souza@email.com');

-- Update Database
UPDATE Clientes
SET Email = 'joao.novosilva@email.com.br'
WHERE Nome = 'João Silva';