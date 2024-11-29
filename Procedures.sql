-- At 1

DELIMITER $$
create procedure exibirMatriculados(in codigo_turma varchar(10))
begin
	select * from aluno
    where aluno.codigo_turma = turma.codigo_turma;
end $$

call exibirMatriculados('T01');

-- At 2

DELIMITER $$
create procedure atualizarAlunos(in nro_matricula int, in novo_status varchar(100))
begin
	update aluno
    set status_atual = novo_status
    where a.nro_matricula = s.nro_matricula;
end $$

call atualizarAlunos(1001, 'Ativo')

-- At 3

DELIMITER $$
create procedure exibirProfessoresEnsinamMateria(in codigo_disciplina varchar(100))
begin
	select * from professor
    where disciplina.codigo_disciplina = professor.codigo_disciplina;
end $$

call exibirProfessoresEnsinamMateria('D101')

-- At 4

DELIMITER $$
create procedure novaTurma (in nro_alunos int, in periodo varchar(20), in semestre int , in status_aluno varchar(100))
begin 
	insert into novaTurma values
    (25,'Noturno',3,'Ativos');
end $$

call novaTurma ()

-- At 5 

DELIMITER $$
create procedure atualizarEspecialidade (in nro_registro_professor varchar(10), in nova_especialidade varchar(20))
begin
	update professor
    set especialidade = nova_especialidade
    where nro_registro_professor = t.nro_registro_professor;
end $$

call atualizarEspecialidade('P001','Administrador')

