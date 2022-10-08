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
