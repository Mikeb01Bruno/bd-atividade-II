-- Criar Tabela
CREATE DATABASE Gerenciamento;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessar Banco de Dados
USE Gerenciamento;

-- Criar Tabela
CREATE TABLE Clientes(
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(30) NOT NULL
);

CREATE TABLE Pedidos(
    PedidoID INT auto_increment PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserindo Registros

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(1, 'Fernando Juliana', 'fernandoj@gmail.com', '71 98112-6346');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(2, 'Beatriz Pereira', 'beatrizper@gmail.com', '71 98332-4180');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(3, 'Matheus Marques', 'matheus@gmail.com', '71 99866-4540');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(4, 'Juliano Ferraz', 'julioferr@gmail.com', '71 98978-2230');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(5, 'Cristiane Moreira', 'cristiimor@gmail.com', '71 98345-2112');

-- Inserindo Registros no Pedido

INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(1, '2023-05-21', '102.22');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(2, '2023-06-09', '95.22');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(3, '2023-01-13', '75.12');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(4, '2022-06-21', '90.22');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(5, '2023-11-10', '53.22');

-- Trazer todos os dados de Clientes
SELECT * FROM Clientes;

-- Trazer todos os registros de Pedidos
SELECT * FROM Pedidos;

-- Apagar tabela
DROP TABLE Clientes;

DROP TABLE Pedidos;



