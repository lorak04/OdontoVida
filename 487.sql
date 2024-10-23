/*
SENAC DF - CEP Jessé Freire 
2024.07.276 - Aprendizagem profissional de Qualificação em Desenvolvimento de Software
Prof° Hudson Neves 
Projeto Final - Implementação de banco de dados Relacional com MySQl
Projeto - Clinina Odontológica OdontoVida */

insert into Paciente (nome, data_nascimento, telefone, endereço, email) values 
( 'Ana Silva ', '1985-04-15', '11987654321', 'Rua das flores, 123, São Paulo', 'ana.silva@email.com'),
( 'Carlos Oliveira', '1990-06-30', '21987654321', 'Avenida Paulista, 456, São Paulo', 'carlos.oliveira@email.com'),
( 'Fernada Costa', '1982-12-12', '31987654321', 'Rua das acacias, 789, Belo Horizonte', 'fernanda.costa@email.com'),
( 'João Santos', '1978-03-21', '41987654321', 'Praça da liberdade, 101, Belo Horizonte', 'joao.santos@email.com'),
( 'Maria Souza', '1995-09-10', '51987654321', 'Rua do mercado, 202, Rio de Janeiro', 'maria.souza@email.com'),
( 'Pedro Lima', '1988-07-25', '61987654321', 'Rua dos Palmeiras,303, Rio de Janeiro ', 'pedro.lima@email.com'),
( 'Paula Ferreira', '1992-11-11', '71987654321', 'Rua dos Pinheiros, 404, Porto Alegre', 'paula.ferreira@email.com'),
( 'Roberto Almeida', '1986-05-05', '81987654321', 'Avenida dos anjos, 505, porto Alegre', 'roberto.almeida@email.com'),
( 'Sofia Martins', '1984-01-20', '91987654321', 'rua das orquidias, 606, curitiba', 'sofia.martins@email.com'),
( 'Tiago Pereira', '1991-08-15', '11976543210', 'rua dos lirios, 707, Curitiba', 'tiago.pereira@email.com');

INSERT INTO Consulta (paciente_id, dentista_id, data_consulta) VALUES
(1, 1, '2024-09-10 10:00:00'),
(2, 2, '2024-09-11 11:00:00'),
(3, 3, '2024-09-12 09:00:00'),
(4, 4, '2024-09-13 09:00:00'),
(5, 5, '2024-09-14 15:00:00'),
(6, 6, '2024-09-15 08:00:00'),
(7, 7, '2024-09-16 09:00:00'),
(8, 8, '2024-09-17 16:00:00'),
(9, 9, '2024-09-18 12:00:00'),
(10, 10, '2024-09-19 17:00:00');

INSERT INTO Tratamento (consulta_id, descricao, data_inicio, data_fin) VALUES
(1, 'Limpeza e Polimento', '2024-09-10', '2024-09-10'),
(2, 'Tratamento de Canal', '2024-09-11', '2024-09-25'),
(3, 'Aplicação de Flúor', '2024-09-12', '2024-09-12'),
(4, 'Extração de Dente', '2024-09-13', '2024-09-13'),
(5, 'Colocação de Aparelho', '2024-09-14', '2024-12-14'),
(6, 'Implante Dentário', '2024-09-15', '2024-10-15'),
(7, 'Clareamento Dental', '2024-09-16', '2024-09-16'),
(8, 'Prótese Parcial', '2024-09-17', '2024-10-17'),
(9, 'Tratamento de Gengiva', '2024-09-18', '2024-09-25'),
(10, 'Reparo de Prótese', '2024-09-19', '2024-09-19');

INSERT INTO Procedimento (nome, custo) VALUES
('Limpeza Dental', 150.00),
('Tratamento de Canal', 800.00),
('Aplicação de Flúor', 100.00),
('Extração de Dente', 200.00),
('Colocação de Aparelho', 1500.00),
('Implante Dentário', 2000.00),
('Clareamento Dental', 500.00),
('Prótese Parcial', 1200.00),
('Tratamento de Gengiva', 300.00),
('Reparo de Prótese', 250.00);

INSERT INTO Tratamento_Procedimento (tratamento_id, procedimento_id, quantidade) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

INSERT INTO Pagamento (tratamento_id, valor, data_pagamento) VALUES
(1, 150.00, '2024-09-10'),
(2, 800.00, '2024-09-25'),
(3, 100.00, '2024-09-12'),
(4, 200.00, '2024-09-13'),
(5, 1500.00, '2024-12-14'),
(6, 2000.00, '2024-10-15'),
(7, 500.00, '2024-09-16'),
(8, 1200.00, '2024-10-17'),
(9, 300.00, '2024-09-25'),
(10, 250.00, '2024-09-19');

