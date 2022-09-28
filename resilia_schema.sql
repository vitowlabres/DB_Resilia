create database if not exists Resilia;

use Resilia;

create table if not exists Departamentos (
    id_departamento int primary key not null auto_increment,
    Departamento varchar(200) not null,
    sigla varchar(200) not null,
    modalidade varchar(200) not null);

CREATE TABLE IF NOT EXISTS Facilitadores (
    id_facilitador INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome varchar (20),
    sobreNome varchar (44),
    HTML bit,
    CSS bit,
    JS bit,
    BD bit,
    softSkills bit
);

CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Modulos (
    id_modulo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    num_Mod  int not null, 
    Conteudo varchar (64) not null,
    Duracao int not null, 
            id_curso INT NOT NULL,
       FOREIGN KEY (id_curso)
        REFERENCES Cursos (id_curso),
    id_facilitador INT NOT NULL,
    FOREIGN KEY (id_facilitador)
        REFERENCES Facilitadores (id_facilitador),
);

CREATE TABLE IF NOT EXISTS Alunos (
    id_aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    sobrenome  VARCHAR(70) NOT NULL,
    CPF BIGINT(11) NOT NULL,
    idade BIGINT(2) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    email VARCHAR(150) NOT NULL,
    UF VARCHAR(2) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso)
        REFERENCES Cursos (id_curso),
    id_modulo INT NOT NULL,
    FOREIGN KEY (id_modulo)
        REFERENCES Modulos (id_modulo)
);