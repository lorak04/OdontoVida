/*
SENAC DF - CEP Jessé Freire 
2024.07.276 - Aprendizagem profissional de Qualificação em Desenvolvimento de Software
Prof° Hudson Neves 
Projeto Final - Implementação de banco de dados Relacional com MySQl
Projeto - Clinina Odontológica OdontoVida */

-- 1. Criação do Arquivo/Banco de Dados 
create database OdontoVida;
-- 2. Acessando Arquivo/Banco de Dados
use OdontoVida; 

create table Paciente(
	paciente_id INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar (100) not null, 
	data_nascimento date not null,
	telefone varchar(20), 
	endereço text,
	email varchar(100)
);

create table Dentista (
	dentista_id INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100) not null, 
	especialidade varchar(50), 
	telefone varchar(20),
	email varchar(100)
);

create table Consulta (
	consulta_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT, 
    dentista_id INT,
    data_consulta datetime,
    foreign key (paciente_id) references Paciente(paciente_id),
    foreign key (dentista_id) references Dentista(dentista_id)
);

create table Tratamento (
	tratamento_id INT AUTO_INCREMENT PRIMARY KEY,
    consulta_id INT, 
    descricao TEXT,
    data_inicio DATE,
    data_fin DATE, 
    foreign key (consulta_id) references Consulta(consulta_id)
);

create table Procedimento (
	procedimento_id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) not null, 
    custo decimal (10, 2) not null
);

create table Tratamento_Procedimento (
	tratamento_id INT,
    procedimento_id INT,
    quantidade INT default 1, 
    primary key (tratamento_id, procedimento_id),
    foreign key (tratamento_id) references Tratamento(tratamento_id),
    foreign key (procedimento_id) references Procedimento(procedimento_id)
);

create table Pagamento (
	pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    tratamento_id INT,
    valor decimal (10, 2) not null, 
    data_pagamento date, 
	foreign key (tratamento_id) references Tratamento(tratamento_id)
);


    
    
    
    
    
    
    
    
    
    























