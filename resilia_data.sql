use Resilia;

 insert into Departamentos(Departamento, sigla, modalidade) values
    ('Administrativo', 'ADM', 'Hibrido'),
    ('Financeiro', 'FIN', 'Presencial'),
    ('Recursos humanos', 'RH', 'Hibrido'),
    ('comercial', 'COM', 'Presencial'),
    ('ensino', 'ENS', 'Hibrido'),
    ('Gente e engajamento', 'GEN/ENG', 'Hibrido'),
    ('facilitadores', 'FAC', 'Hibrido');

insert into Facilitadores (nome, sobreNome, HTML, CSS, JS, BD, softSkills) values 
( 'Taís', 'Cunha', false, false, false, false, true),
('Léo', 'Costa', false, false, true, true, false),
('Gabriel', 'Izoton', true, true, true, false, false),
('Inara', 'Almeida', true, true, true, false, false),
('Rodolfo', 'Alves', true, true, true, false, false),
('Vitoria', 'Ferreira', false, false, false, false, true),
('Luth', 'Mendes', true, true, true, true, false),
('Anna', 'Sousa', true, true, true, true, false),
('Rodolfo', 'Pereira', true, true, true, false, false),
('Nicolas', 'Dias', true, true, true, true, false),
('Giovanni', 'Alvarenga', false, false, false, false, true);

insert into Cursos (id_curso, curso, emp_parceira) values 
(1,'WebDev Full Stack', null),
(2,'Data Analytics',  null),
(1,'WebDev Full Stack', 'Nubank'),
(2,'Data Analytics', 'Renner'),
(1,'WebDev Full Stack', 'Globo'),
(2,'Data Analytics', 'Ifood'),
(1,'WebDev Full Stack',  'Stone'),
(2,'Data Analytics', 'Passeidireto'),
(1,'WebDev Full Stack', 'Xp'),
(2,'Data Analytics', 'Itau');

insert into Modulos ( num_Mod, Conteudo, Duracao, id_curso, id_facilitador) values 
( 1,'HTML', '5 semanas', 1, 5),
( 1, 'HTML', '4 semanas', 2,7),
( 1, 'softSkills', '5 semanas', 1, 1),
( 1, 'softSkills', '4 semanas', 2, 6),
( 2, 'CSS', '5 semanas', 1, 4),
( 2, 'CSS', '4 semanas', 2, 7),
( 2, 'softSkills', '5 semanas', 1, 11),
( 2, 'softSkills', '4 semanas', 2, 1),
( 3, 'JS', '5 semanas', 1, 3),
( 3, 'JS', '4 semanas', 2, 10),
( 3, 'softSkills', '5 semanas', 1, 6),
( 3, 'softSkills', '4 semanas',2,11),
( 4, 'BD', '5 semanas', 1, 2),
( 4, 'BD', '4 semanas', 2, 10),
( 4, 'softSkills', '5 semanas', 1, 1),
( 4, 'softSkills', '4 semanas', 2, 6);

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