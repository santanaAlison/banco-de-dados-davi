Create database Livraria;
use Livraria;
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    DataEntrada DATE,
    Senha VARCHAR(255) 
);
CREATE TABLE Livros (
    LivroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(100),
    Editora VARCHAR(100),
    AnoPublicacao INT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL
);
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pendente',
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
CREATE TABLE ItensPedido (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT,
    LivroID INT,
    Quantidade INT NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID)
);


-- Insere 50 novos livros
INSERT INTO Livros (Titulo, Autor, Editora, AnoPublicacao, Preco, Estoque) VALUES
('O Alquimista', 'Paulo Coelho', 'HarperCollins', 1988, 29.90, 100),
('Dom Casmurro', 'Machado de Assis', 'Editora Nacional', 1899, 39.90, 150),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Companhia das Letras', 1967, 49.90, 80),
('A Moreninha', 'Joaquim Manuel de Macedo', 'Editora Melhoramentos', 1844, 19.90, 200),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'HarperCollins', 1954, 89.90, 60),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, 59.90, 120),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Agir', 1943, 24.90, 140),
('1984', 'George Orwell', 'Companhia das Letras', 1949, 34.90, 110),
('A Bíblia Sagrada', 'Diversos autores', 'Editora Vida', 0, 79.90, 70),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', 1937, 39.90, 90),
('O Código Da Vinci', 'Dan Brown', 'Record', 2003, 44.90, 100),
('A Cabana', 'William P. Young', 'Sextante', 2007, 39.90, 130),
('O Sol é Para Todos', 'Harper Lee', 'Editora J. H. C.', 1960, 32.90, 140),
('O Andar do Bêbado', 'Leonard Mlodinow', 'Intrínseca', 2008, 39.90, 80),
('O Menino do Pijama Listrado', 'John Boyne', 'Cia das Letras', 2006, 49.90, 120),
('A Guerra dos Tronos', 'George R.R. Martin', 'Leya', 1996, 79.90, 60),
('A Vida de Pi', 'Yann Martel', 'Companhia das Letras', 2001, 39.90, 90),
('O Lobo de Wall Street', 'Jordan Belfort', 'Intrínseca', 2007, 49.90, 70),
('A Menina que Roubava Livros', 'Markus Zusak', 'Cia das Letras', 2005, 44.90, 110),
('A Sombra do Vento', 'Carlos Ruiz Zafón', 'Suma de Letras', 2001, 39.90, 130),
('O Pintassilgo', 'Donna Tartt', 'Editora Objetiva', 2013, 49.90, 80),
('A Garota no Trem', 'Paula Hawkins', 'Record', 2015, 49.90, 90),
('Como Eu Era Antes de Você', 'Jojo Moyes', 'Intrínseca', 2012, 39.90, 100),
('O Poder do Hábito', 'Charles Duhigg', 'Objetiva', 2012, 34.90, 120),
('A Arte da Guerra', 'Sun Tzu', 'Penguin', 5, 19.90, 150),
('Os Homens que Não Amavam as Mulheres', 'Stieg Larsson', 'Cia das Letras', 2005, 44.90, 110),
('O Diário de Anne Frank', 'Anne Frank', 'Editora Record', 1947, 29.90, 70),
('A Ilha do Tesouro', 'Robert Louis Stevenson', 'L&PM', 1883, 24.90, 100),
('O Morro dos Ventos Uivantes', 'Emily Brontë', 'Penguin', 1847, 29.90, 80),
('Orgulho e Preconceito', 'Jane Austen', 'Penguin', 1813, 34.90, 90),
('A Princesa Prometida', 'William Goldman', 'Rocco', 1973, 39.90, 60),
('O Grande Gatsby', 'F. Scott Fitzgerald', 'Penguin', 1925, 29.90, 110),
('Middlesex', 'Jeffrey Eugenides', 'Intrínseca', 2002, 49.90, 80),
('A Insustentável Leveza do Ser', 'Milan Kundera', 'Record', 1984, 39.90, 120),
('O Último Shakespeare', 'Paul Collins', 'Intrínseca', 2010, 34.90, 90),
('Fahrenheit 451', 'Ray Bradbury', 'Editora Aleph', 1953, 39.90, 100),
('A Menina que Roubava Livros', 'Markus Zusak', 'Cia das Letras', 2005, 44.90, 110),
('O Mínimo Que Você Precisa Saber Para Não Ser um Idiota', 'Osmar Terra', 'Gente', 2021, 34.90, 70),
('O Fim da Eternidade', 'Isaac Asimov', 'Editora Aleph', 1955, 29.90, 120),
('O Silêncio dos Inocentes', 'Thomas Harris', 'Objetiva', 1988, 44.90, 80),
('A Insustentável Leveza do Ser', 'Milan Kundera', 'Record', 1984, 39.90, 90),
('A Revolução dos Bichos', 'George Orwell', 'Companhia das Letras', 1945, 24.90, 100),
('Os Pilares da Terra', 'Ken Follett', 'Record', 1989, 59.90, 60),
('O Lobo de Wall Street', 'Jordan Belfort', 'Intrínseca', 2007, 49.90, 70),
('O Clube da Luta', 'Chuck Palahniuk', 'Rocco', 1996, 34.90, 110),
('O Mágico de Oz', 'L. Frank Baum', 'Penguin', 1900, 19.90, 130),
('O Caçador de Pipas', 'Khaled Hosseini', 'Editora Nova Fronteira', 2003, 39.90, 90);

INSERT INTO Clientes (Nome, Endereco, Telefone, Email, DataEntrada, Senha) VALUES
('João da Silva', 'Rua das Flores, 123', '(11) 98765-4321', 'joao.silva@email.com', '2024-01-01', 'senha123'),
('Maria Oliveira', 'Avenida Central, 456', '(21) 91234-5678', 'maria.oliveira@email.com', '2024-01-02', 'senha123'),
('Carlos Souza', 'Praça da Sé, 789', '(31) 99876-5432', 'carlos.souza@email.com', '2024-01-03', 'senha123'),
('Ana Costa', 'Rua do Comercio, 101', '(41) 92345-6789', 'ana.costa@email.com', '2024-01-04', 'senha123'),
('Pedro Santos', 'Rua do Sol, 202', '(51) 93456-7890', 'pedro.santos@email.com', '2024-01-05', 'senha123'),
('Fernanda Lima', 'Avenida das Américas, 303', '(61) 94567-8901', 'fernanda.lima@email.com', '2024-01-06', 'senha123'),
('Ricardo Pereira', 'Rua da Paz, 404', '(71) 95678-9012', 'ricardo.pereira@email.com', '2024-01-07', 'senha123'),
('Patrícia Almeida', 'Rua do Porto, 505', '(81) 96789-0123', 'patricia.almeida@email.com', '2024-01-08', 'senha123'),
('Luiz Martins', 'Avenida Brasil, 606', '(91) 97890-1234', 'luiz.martins@email.com', '2024-01-09', 'senha123'),
('Juliana Ferreira', 'Rua das Palmeiras, 707', '(11) 98901-2345', 'juliana.ferreira@email.com', '2024-01-10', 'senha123'),
('Marcos Rodrigues', 'Praça da Liberdade, 808', '(21) 99012-3456', 'marcos.rodrigues@email.com', '2024-01-11', 'senha123'),
('Tatiane Silva', 'Rua da Alegria, 909', '(31) 99123-4567', 'tatiane.silva@email.com', '2024-01-12', 'senha123'),
('Gustavo Oliveira', 'Avenida Santos, 1010', '(41) 99234-5678', 'gustavo.oliveira@email.com', '2024-01-13', 'senha123'),
('Julio Cesar', 'Rua das Margaridas, 1111', '(51) 99345-6789', 'juliopensasar@email.com', '2024-01-14', 'senha123'),
('Aline Souza', 'Rua dos Girassóis, 1212', '(61) 99456-7890', 'aline.souza@email.com', '2024-01-15', 'senha123'),
('André Pereira', 'Avenida das Nações, 1313', '(71) 99567-8901', 'andre.pereira@email.com', '2024-01-16', 'senha123'),
('Carla Costa', 'Rua da Esperança, 1414', '(81) 99678-9012', 'carla.costa@email.com', '2024-01-17', 'senha123'),
('Ricardo Lima', 'Rua do Vento, 1515', '(91) 99789-0123', 'ricardo.lima@email.com', '2024-01-18', 'senha123'),
('Patricia Rodrigues', 'Avenida Norte, 1616', '(11) 99890-1234', 'patricia.rodrigues@email.com', '2024-01-19', 'senha123'),
('Gabriel Almeida', 'Rua da Vitória, 1717', '(21) 99901-2345', 'gabriel.almeida@email.com', '2024-01-20', 'senha123'),
('Larissa Fernandes', 'Rua dos Jasmim, 1818', '(31) 98123-4567', 'larissa.fernandes@email.com', '2024-01-21', 'senha123'),
('João Pedro', 'Praça das Bandeiras, 1919', '(41) 98234-5678', 'joao.pedro@email.com', '2024-01-22', 'senha123'),
('Bruna Silva', 'Avenida do Parque, 2020', '(51) 98345-6789', 'bruna.silva@email.com', '2024-01-23', 'senha123'),
('Ricardo Fernandes', 'Rua das Acácias, 2121', '(61) 98456-7890', 'ricardo.fernandes@email.com', '2024-01-24', 'senha123'),
('Camila Pereira', 'Rua da Primavera, 2222', '(71) 98567-8901', 'camila.pereira@email.com', '2024-01-25', 'senha123'),
('Marcelo Costa', 'Avenida das Flores, 2323', '(81) 98678-9012', 'marcelo.costa@email.com', '2024-01-26', 'senha123'),
('Daniela Lima', 'Rua do Horizonte, 2424', '(91) 98789-0123', 'daniela.lima@email.com', '2024-01-27', 'senha123'),
('Lucas Almeida', 'Avenida das Palmeiras, 2525', '(11) 98890-1234', 'lucas.almeida@email.com', '2024-01-28', 'senha123'),
('Claudia Souza', 'Rua da Conquista, 2626', '(21) 98901-2345', 'claudia.souza@email.com', '2024-01-29', 'senha123'),
('Vinícius Costa', 'Rua dos Lírios, 2727', '(31) 99012-3456', 'vinicius.costa@email.com', '2024-01-30', 'senha123'),
('Isabela Rodrigues', 'Avenida das Árvores, 2828', '(41) 99123-4567', 'isabela.rodrigues@email.com', '2024-01-31', 'senha123'),
('Felipe Santos', 'Rua do Entardecer, 2929', '(51) 99234-5678', 'felipe.santos@email.com', '2024-02-01', 'senha123'),
('Fernanda Costa', 'Praça das Flores, 3030', '(61) 99345-6789', 'fernanda.costa@email.com', '2024-02-02', 'senha123'),
('Bruno Almeida', 'Rua dos Pinheiros, 3131', '(71) 99456-7890', 'bruno.almeida@email.com', '2024-02-03', 'senha123'),
('Amanda Pereira', 'Avenida da Liberdade, 3232', '(81) 99567-8901', 'amanda.pereira@email.com', '2024-02-04', 'senha123'),
('Thiago Silva', 'Rua do Coração, 3333', '(91) 99678-9012', 'thiago.silva@email.com', '2024-02-05', 'senha123'),
('Patricia Lima', 'Rua das Oliveiras, 3434', '(11) 99789-0123', 'patricia.lima@email.com', '2024-02-06', 'senha123'),
('Leonardo Costa', 'Avenida do Sol, 3535', '(21) 99890-1234', 'leonardo.costa@email.com', '2024-02-07', 'senha123'),
('Tatiane Almeida', 'Rua dos Cedros, 3636', '(31) 99901-2345', 'tatiane.almeida@email.com', '2024-02-08', 'senha123'),
('Júlio César', 'Rua da Alegria, 3737', '(41) 99012-3456', 'julio.cesar@email.com', '2024-02-09', 'senha123'),
('Mariana Rodrigues', 'Praça do Comércio, 3838', '(51) 99123-4567', 'mariana.rodrigues@email.com', '2024-02-10', 'senha123'),
('Rafael Souza', 'Rua dos Jasmins, 3939', '(61) 99234-5678', 'rafael.souza@email.com', '2024-02-11', 'senha123'),
('Camila Oliveira', 'Avenida das Flores, 4040', '(71) 99345-6789', 'camila.oliveira@email.com', '2024-02-12', 'senha123'),
('Lucas Rodrigues', 'Rua do Campo, 4141', '(81) 99456-7890', 'lucas.rodrigues@email.com', '2024-02-13', 'senha123'),
('Juliana Silva', 'Rua da Colina, 4242', '(91) 99567-8901', 'juliana.silva@email.com', '2024-02-14', 'senha123'),
('Gabriel Pereira', 'Avenida Central, 4343', '(11) 99678-9012', 'gabriel.pereira@email.com', '2024-02-15', 'senha123'),
('Carla Almeida', 'Rua do Jardim, 4444', '(21) 99789-0123', 'carla.almeida@email.com', '2024-02-16', 'senha123'),
('Fernando Lima', 'Rua dos Lírios, 4545', '(31) 99890-1234', 'fernando.lima@email.com', '2024-02-17', 'senha123');


-- Listar os Usuarios cadastrados no Banco
SELECT Nome, Email FROM Clientes;


-- Quantos Usuarios foram cadastrados no ultimo mês?
SELECT COUNT(*) AS TotalUsuarios
FROM Clientes
WHERE DataEntrada >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
 
-- Criar script restaurar informações de login de 1 usuário!
UPDATE Clientes
SET Senha = 'novaSenha123'
WHERE Email = 'usuario@example.com';


-- Criar script selecão de Livros cadastrados?

SELECT * FROM Livros
WHERE Autor = 'Machado de Assis';


-- Criar script de livros emprestados por cliente? no caso o livro foi emprestado para:
SELECT c.Nome AS NomeCliente,
       l.Titulo AS TituloLivro,
       l.Autor AS AutorLivro,
       i.Quantidade AS QuantidadeEmprestada,
       p.DataPedido AS DataEmprestimo
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN ItensPedido i ON p.PedidoID = i.PedidoID
JOIN Livros l ON i.LivroID = l.LivroID
WHERE c.Email = 'felipe.santos@email.com' AND p.Status = 'Emprestado';


--  Elaborar 3 perguntas utilizando as clausulas: Distinct, Not , Top
-- --------------------------------------------------------------------------------------------
-- ---------- TOP ----------------------------------
-- -------------------------------------------------------------
-- O TOP pode ser utilizado para deixar a lista dos livros com os primeiros com os mais recentes/ou antigos

SELECT Titulo, Autor, AnoPublicacao 
FROM Livros
ORDER BY AnoPublicacao DESC
LIMIT 10;
 -- ------------------------------------------------------------------------------
 -- ------------------ DISTINCT --------------------------------------------------
 -- ------------------------------------------------------------------------------
-- na lista, cotem um autor reptido, usando o DISTINCT, eu posso tirar ele
SELECT distinct Titulo, Autor, AnoPublicacao 
FROM Livros
ORDER BY AnoPublicacao DESC
LIMIT 10;

-- ----------------------------------------------------------------------------------
-- ---------------------- NOT -------------------------------------
-- ---------------------------------------------
-- Nesse, é usado top para excluir alguns atores, livros, ou outros
SELECT Titulo, Autor, Editora 
FROM Livros
WHERE Editora NOT LIKE 'Editora Vida';
