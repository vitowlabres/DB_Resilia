create database if not exists Resilia;

use Resilia;

CREATE TABLE IF NOT EXISTS Departamentos (
    id_departamento INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Facilitadores (
    id_facilitador INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS Modulos (
    id_modulo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso)
        REFERENCES Cursos (id_curso),
    id_facilitador INT NOT NULL,
    FOREIGN KEY (id_facilitador)
        REFERENCES Facilitadores (id_facilitador),
);

CREATE TABLE IF NOT EXISTS Alunos (
    id_aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso)
        REFERENCES Cursos (id_curso),
    id_modulo INT NOT NULL,
    FOREIGN KEY (id_modulo)
        REFERENCES Modulos (id_modulo),
);