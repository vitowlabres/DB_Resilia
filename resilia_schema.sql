create database if not exists Resilia;

use Resilia;

CREATE TABLE IF NOT EXISTS Departamentos (
    id_departamento INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    sigla VARCHAR(200) NOT NULL,
    modalidade VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS Facilitadores (
    id_facilitador INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(20),
    sobreNome VARCHAR(44),
    genero VARCHAR(20) NOT NULL,
    HTML BIT NOT NULL,
    CSS BIT NOT NULL,
    JS BIT NOT NULL,
    BD BIT NOT NULL,
    softSkills BIT NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento)
        REFERENCES Departamentos (id_departamento)
);

CREATE TABLE IF NOT EXISTS EmpresasParceiras (
    id_emp_parceira INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    CNPJ BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    curso VARCHAR(64) NOT NULL,
    id_emp_parceira INT, 
    FOREIGN KEY (id_emp_parceira)
        REFERENCES EmpresasParceiras (id_emp_parceira)
);

CREATE TABLE IF NOT EXISTS Modulos (
    id_modulo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    num_Mod INT NOT NULL,
    Conteudo VARCHAR(64) NOT NULL,
    Duracao VARCHAR(64) NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso)
        REFERENCES Cursos (id_curso),
    id_facilitador INT NOT NULL,
    FOREIGN KEY (id_facilitador)
        REFERENCES Facilitadores (id_facilitador)
);

CREATE TABLE IF NOT EXISTS Estados (
    id_estado INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    UF VARCHAR(2) NOT NULL,
    regiao VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Alunos (
    id_aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    sobrenome  VARCHAR(70) NOT NULL,
    CPF BIGINT NOT NULL,
    idade BIGINT NOT NULL,
    genero VARCHAR(20) NOT NULL,
    email VARCHAR(150) NOT NULL,
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado)
        REFERENCES Estados (id_estado),
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