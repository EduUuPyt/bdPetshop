/*
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(255)
);


CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2),
    cargo VARCHAR(255)
);


CREATE TABLE Pet (
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    especie VARCHAR(255) NOT NULL,
    raca VARCHAR(255),
    idade INT,
    peso FLOAT,
    observacoes VARCHAR(255),

    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);


CREATE TABLE Agendamento (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_pet INT NOT NULL,
    data_agendamento DATETIME NOT NULL,
    tipo_servico VARCHAR(255) NOT NULL,
    observacoes VARCHAR(255),

    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet)
);


CREATE TABLE Venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_atendente INT NOT NULL,
    data_venda DATETIME NOT NULL,
    valor_total DECIMAL(10,2),
    status_venda VARCHAR(50),

    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_atendente) REFERENCES Funcionario(id_funcionario)
);


CREATE TABLE Servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_pet INT NOT NULL,
    id_cliente INT NOT NULL,
    id_tosador INT NOT NULL,
    valor DECIMAL(10,2),
    descricao VARCHAR(255),
    data_hora DATETIME,

    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_tosador) REFERENCES Funcionario(id_funcionario)
);


CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    valor_pago DECIMAL(10,2),
    data_pagamento DATE,
    forma_pagamento VARCHAR(50),
    status_pagamento VARCHAR(50),

    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda)
);


CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    categoria VARCHAR(255),
    preco DECIMAL(10,2),
    estoque INT,
    marca VARCHAR(255)
);


CREATE TABLE ItemVenda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2),
    subtotal DECIMAL(10,2),

    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
*/

/*INSERT INTO Cliente (nome, cpf, telefone, email) VALUES
('Ana Souza', '123.456.789-10', '11987654321', 'ana@gmail.com'),
('Carlos Mendes', '987.654.321-00', '11999887766', 'carlos@hotmail.com'),
('Mariana Lima', '321.654.987-22', '11988776655', 'mariana@yahoo.com');

INSERT INTO Funcionario (nome, salario, cargo) VALUES
('João Pereira', 2500.00, 'Atendente'),
('Roberta Silva', 3200.00, 'Tosador'),
('Felipe Santos', 2900.00, 'Tosador');

INSERT INTO Pet (id_cliente, nome, especie, raca, idade, peso, observacoes) VALUES
(1, 'Rex', 'Cachorro', 'Labrador', 5, 25.3, 'Muito dócil'),
(2, 'Mimi', 'Gato', 'Siamês', 3, 4.2, 'Alergia a peixe'),
(3, 'Thor', 'Cachorro', 'Pitbull', 2, 28.1, 'Necessita atenção');

INSERT INTO Agendamento (id_cliente, id_pet, data_agendamento, tipo_servico, observacoes) VALUES
(1, 1, '2025-01-10 14:00:00', 'Banho', 'Nenhuma'),
(2, 2, '2025-01-12 10:00:00', 'Tosa', 'Gato estressado'),
(3, 3, '2025-01-15 09:30:00', 'Banho e Tosa', 'Cuidado extra');

INSERT INTO Venda (id_cliente, id_atendente, data_venda, valor_total, status_venda) VALUES
(1, 1, '2025-02-01 16:00:00', 150.00, 'Concluída'),
(2, 1, '2025-02-03 12:30:00', 89.90, 'Concluída'),
(3, 1, '2025-02-05 09:10:00', 240.50, 'Pendente');

INSERT INTO Pagamento (id_venda, valor_pago, data_pagamento, forma_pagamento, status_pagamento) VALUES
(1, 150.00, '2025-02-01', 'Cartão', 'Confirmado'),
(2, 89.90, '2025-02-03', 'Pix', 'Confirmado'),
(3, 0.00, NULL, 'Pix', 'Pendente');

INSERT INTO Produto (nome, descricao, categoria, preco, estoque, marca) VALUES
('Ração Premium', 'Ração para cães adultos', 'Alimentação', 120.00, 30, 'Golden'),
('Areia para Gato', 'Areia higiênica', 'Limpeza', 35.50, 50, 'Pussycat'),
('Coleira Ajustável', 'Coleira para cães médios', 'Acessórios', 25.90, 20, 'PetPlus');

INSERT INTO ItemVenda (id_venda, id_produto, quantidade, preco_unitario, subtotal) VALUES
(1, 1, 1, 120.00, 120.00),
(1, 3, 1, 25.90, 25.90),
(2, 2, 1, 35.50, 35.50);

INSERT INTO Servico (id_pet, id_cliente, id_tosador, valor, descricao, data_hora) VALUES
(1, 1, 2, 50.00, 'Banho completo', '2025-01-10 14:00:00'),
(2, 2, 3, 70.00, 'Tosa higiênica', '2025-01-12 10:00:00'),
(3, 3, 2, 90.00, 'Banho e Tosa', '2025-01-15 09:30:00');
*/

SELECT * FROM Agendamento;
SELECT * FROM Cliente;
SELECT * FROM Funcionario;
SELECT * FROM ItemVenda;
SELECT * FROM Pagamento;
SELECT * FROM Pet;
SELECT * FROM Produto;
SELECT * FROM Servico;
SELECT * FROM Venda;

