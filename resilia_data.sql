use Resilia;

insert into Departamentos (, , ) values 
(, , , , ),
(, , , , ),
(, , , , );

insert into Facilitadores (, , ) values 
(, , , , ),
(, , , , ),
(, , , , );

insert into Cursos (, , ) values 
(, , , , ),
(, , , , ),
(, , , , );

insert into Modulos (id_curso, id_facilitador, ) values 
(, , , , ),
(, , , , ),
(, , , , );

insert into Alunos (nome, sobrenome, CPF, idade, genero, email, UF, cidade, endereco, data_nascimento, id_curso, id_modulo) values 
("João", "dos Santos", 012345678910, 25, "masculino", "joao@mail.com", "RS", "Porto Alegre", "Av. Independência, nº315, apto 14", 1997-08-07, 4, 1),
("Carlos", "da Silva", 23456789101, 24, "masculino", "carlos@mail.com", "RJ", "Rio de Janeiro", "Av. Rio Branco, nº200, apto 36", 1998-02-03, 3, 2),
("Amanda", "Rodrigues", 34567891012, 22, "feminino", "amanda@mail.com", "SP", "São Paulo", "Av. 9 de Julho, nº415, apto 2", 2000-05-08, 3, 3),
("Renata", "Tavares", 45678910123, 32, "feminino", "renata@mail.com", "BA", "Vitória da Conquista", "Av. Ilhéus, nº1000", 1990-05-29, 2, 4),
("Marcia", "Silveira", 56789101234, 37, "feminino", "marcia@mail.com", "RS", "Viamão", "Rua Costa Gama, nº256, apto 10", 1985-07-10, 1, 1),
("Miguel", "Valle", 67891012345, 30, "masculino", "miguel@mail.com", "BA", "Salvador", "Rua Silveira Martins, nº5, apto 201", 1992-06-12, 1, 2),
("Marcos", "Ribeiro", 78910123456, 26, "masculino", "marcos@mail.com", "MG", "Belo Horizonte", "Avenida Doutor Cristiano Guimarães, nº12, apto 101", 1995-11-15, 4, 3),
("Andre", "Oliveira", 89101234567, 21, "masculino", "andre@mail.com", "SC", "Florianópolis", "Rua Santos Saraiva, nº901, apto 12", 2001-01-05, 6, 4),
("Antonia", "Carvalho da Silva", 91012345678, 22, "feminino", "antonia@mail.com", "PR", "Curitiba", "Rua Raul Pompéia, nº515", 1999-12-06, 7, 3),
("Joana", "Almeida", 10123456789, 34, "feminino", "joana@mail.com", "SC", "Balneário Camboriú", "Rua Biguaçu, nº37, apto 902", 1988-02-04, 5, 2);