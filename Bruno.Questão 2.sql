-- Criar Banco de Dados
CREATE DATABASE Blog;

-- Usar o banco de dados

USE Blog;

-- Tabela Aritgo
CREATE TABLE Artigo (
    ArtigoID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Conteudo TEXT,
    DataPublicacao DATE
);

-- Tabela Comentarios
CREATE TABLE Comentario(
    ComentarioID INT PRIMARY KEY,
    ArtigoID INT,
    Autor VARCHAR(50),
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigo(ArtigoID)
);

-- Inserir registros para tabela Artigos
INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(1, 'A Magia da Natureza', ' Explorar as maravilhas da natureza sempre foi uma paixão para muitos.', '2023-09-12');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(2, 'O Poder da Gratidão', 'A gratidão é uma ferramenta poderosa para cultivar a felicidade.', '2023-08-25');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(3, 'A Importância da Leitura', 'A leitura abre portas para novos mundos e conhecimentos. Ela estimula a imaginação, amplia o vocabulário e melhora a compreensão.', '2023-07-14');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(4, 'Desafios da Vida', 'A vida é cheia de desafios, mas é através deles que crescemos e nos fortalecemos.', '2023-06-02');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(5, 'O Valor da Amizade', 'Amigos são tesouros preciosos em nossas vidas. Eles oferecem apoio, compartilham risadas e caminham ao nosso lado nos momentos bons e ruins.', '2023-05-18');

-- Inserir registros na tabela Comentarios_diego
INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(1, 1, 'Fernando Ribeiro', 'As paisagens do mundo', '2023-04-08');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(2, 2, 'Isabela Santos', 'Eu prefiro o Real, porém máximo de respeito ao Barcelona Aprecie as pequenas coisas da vida, seja grato pelas pessoas que o cercam e veja como sua perspectiva muda.', '2022-12-19');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(3, 3, 'Lucas Oliveira', 'A prática da leitura', '2023-09-10');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(4, 4, 'Amanda Ferreira', 'Os desafios da vida', '2025-07-12');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(5, 5, 'Pedro Silva', 'O valor que tem nos amigos de verdade', '2022-12-12');

    
    
-- Trazer todos os dados
 SELECT * FROM Artigo;
 
 -- Mostrar comentarios
 SELECT * FROM Comentario;

-- Apagar Tabela
DROP TABLE Comentario;

DROP TABLE Artigo;

-- Apagar Banco de Dados
DROP DATABASE Blog;
