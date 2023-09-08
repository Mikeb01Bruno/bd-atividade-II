-- Criar Banco de Dados
CREATE DATABASE DepartamentoRH;

-- Usar o banco de dados

USE DepartamentoRH;

CREATE TABLE Departamentos (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeDepartamento VARCHAR(255)
);

CREATE TABLE Funcionarios (
    FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
    DepartamentoID INT,
    Nome VARCHAR(255),
    Cargo VARCHAR(255),
    Salario DECIMAL(10, 2),
	FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);


-- Inserindo Valor na Tabela Departamento
INSERT INTO Departamentos (NomeDepartamento) VALUES
('RH');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Contabilidade');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Vendas');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Tecnologia da Informacao');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Operacoes');

-- Inserindo Valor na Tabela Funcionário
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Juliana', 'Gerente', 6000.00, 1);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Amanda', 'Analista', 4500.00, 2);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Mateus Pereira', 'Vendedor', 3500.00, 3);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Fernanda', 'Programador', 5000.00, 4);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('André', 'Marketeiro', 4000.00, 5);
    
-- Trazer todos os dados dos Funcionários
   SELECT * FROM Funcionarios;
   
-- Trazer todos os Dados do Departamento
SELECT * FROM Departamentos;


