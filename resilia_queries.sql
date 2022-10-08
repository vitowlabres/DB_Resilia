use Resilia;

#Quantos alunos no total?
SELECT COUNT(id_aluno) Alunos from Alunos;

#Todos os estudantes e seus respectivos cursos
SELECT 
    a.nome aluno, c.curso, e.nome empresa_parceira, a.id_curso
FROM
    Alunos a
        INNER JOIN
    Cursos c USING (id_curso)
        INNER JOIN
    EmpresasParceiras e USING (id_emp_parceira)
ORDER BY aluno;

#Facilitadores que estão em mais de uma turma
SELECT 
    f.nome, COUNT(m.id_facilitador) Turmas
FROM
    Modulos m
        INNER JOIN
    Facilitadores f USING (id_facilitador)
GROUP BY f.nome
HAVING Turmas > 1
ORDER BY Turmas DESC;

#Quantidade de turmas por curso
SELECT 
    curso, COUNT(id_curso) turmas
FROM
    Cursos
GROUP BY curso;