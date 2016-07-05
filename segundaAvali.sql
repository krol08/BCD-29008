use db1220050261;


#select * from preRequisito;

#select * from disciplina;

#-------------------------------------------------------------------------------------------------------------------------------
# Acesso restrito aos alunos por meio de autenticação (matrícula/cpf + senha). (x)

#select * from aluno;
#desc aluno;

alter table aluno modify cpf varchar(50) not null;
alter table aluno modify senha varchar(20) not null;

update aluno set senha = '123456';

#select * from aluno;


#------------------------------------------------------------------------------------------------------------------------------
# Situação do aluno no curso:
  #Disciplinas já cursadas. (x)
  #Disciplinas elegíveis para matrícula. Disciplinas que posso cursar. (X)
  #Disciplinas não permitidas para matrícula por falta de pré-requisito ou carga horária mínima. (X)

 #----------------------------------- Matriculando dois alunos nas disciplinas: ----------------------------------------------
 #desc matricula;
 insert into matricula (aluno, curso, matricula)
 values (
	(select id from aluno where aluno.nome regexp 'Alcides Maia'),
	(select id from curso where curso.codigo = '290'),
    '1320026230'
 );

 insert into matricula (aluno, curso, matricula)
 values (
	(select id from aluno where aluno.nome regexp 'Adelino Fontoura'),
	(select id from curso where curso.codigo = '290'),
    '1425026230'
 );

#----------------------------------- Matriculando os dois alunos em algumas disciplinas -------------------------------------- 
#desc processoDeMatricula;
#select * from processoDeMatricula;


# Disciplinas concluidas -----------------------------------------------------------------------------------------------------
 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Adelino Fontoura')),
	(select id from disciplina where disciplina.codigo = 'DES'),
    '2',
    null
 );


#desc processoDeMatricula;
#select * from disciplina;

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'DES'),
    '2',
    null
 );

  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'CAL1'),
    '2',
    null
 );

  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'ELI1'),
    '2',
    null
 );

  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'FSC1'),
    '2',
    null
 );

  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'GAL'),
    '2',
    null
 );

  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'LOG'),
    '2',
    null
 );

  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'PJI1'),
    '2',
    null
 );

# Pedidos de Matricula ----------------------------------------------------------------------------------------------------
  insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'QMC1'),
    '0',
    null
 );


 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'PRG1'),
    '0',
    '20161'
 );

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'RED1'),
    '0',
    '20161'
 );

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'ALG'),
    '0',
    '20161'
 );

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'CIE1'),
    '0',
    '20161'
 );



# Pedidos de Validação ----------------------------------------------------------------------------------------------------
select * from processoDeMatricula;
update processoDeMatricula set semestre = '20152';

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
  values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'QMC2'),
    '1',
    '20161'
 );

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'CAL2'),
    '1',
    '20161'
 );

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'BCD'),
    '1',
    '20161'
 );


 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'ALG'),
    '1',
    '20161'
 );

 insert into processoDeMatricula (matricula,disciplina,concluido,semestre)
 values (
	(select id from matricula where matricula.aluno = (select id from aluno where aluno.nome regexp 'Alcides Maia')),
	(select id from disciplina where disciplina.codigo = 'FSC2'),
    '1',
    '20161'
 );

#--------------------------------------------------------------------------------------------------------------------------

#Situação de todos os alunos
drop view disAlunos;

create view disAlunos as
    select 
        aluno.nome,
        disciplina.codigo,
        disciplina.id,
        processoDeMatricula.concluido,
        disciplina.CH
    from
        disciplina
            inner join
        processoDeMatricula ON disciplina.id = processoDeMatricula.disciplina
            inner join
        matricula ON matricula.id = processoDeMatricula.matricula
            inner join
        aluno ON aluno.id = matricula.aluno;

select * from disAlunos;

#select * from preRequisito;

#Disciplinas já cursadas por Alcides.
drop view concluidas;
create view concluidas as
    select 
        codigo, id, CH
    from
        disAlunos
    where
        concluido = '2'
            and nome regexp 'Alcides';

select * from concluidas;

#select * from preRequisito;

# View das disciplinas impossíveis de cursar por pré-requisito.
drop view impo_pre;
create view impo_pre as
    select 
        preRequisito.disciplina, disciplina.codigo
    from
        preRequisito
            left outer join
        concluidas ON preRequisito.preRequisito = concluidas.id
            inner join
        disciplina ON disciplina.id = preRequisito.disciplina
    where
        concluidas.id is null
    group by preRequisito.disciplina
    order by disciplina;

select * from impo_pre;


# Disciplinas que não foram cursadas.
drop view discNaoCursadas;
create view discNaoCursadas as
    select 
        disciplina.codigo, disciplina.id, disciplina.CHminima
    from
        concluidas
            right outer join
        disciplina ON disciplina.id = concluidas.id
		where
        concluidas.id is NULL order by disciplina.id;

select * from discNaoCursadas;

# View das disciplinas impossíveis de cursar por carga Horária.
drop view impo_ch;
create view impo_ch as
    select 
        id, codigo
    from
        discNaoCursadas
    where
        discNaoCursadas.CHminima >= (select 
                sum(CH)
            from
                concluidas);

select * from impo_ch;

#Disciplinas ilegiveis.
drop view impossivel;
create view impossivel as 
	select * from impo_ch 
	union all
	select * from impo_pre group by codigo  order by id;
select * from impossivel;

# Outra view para tirar as disciplinas duplicadas na view das disciplinas impossíveis.
drop view disImpossiveis;
create view disImpossiveis as
    select 
        *
    from
        impossivel
    group by impossivel.id;
  
select * from disImpossiveis;


#Disciplinas que ele pode realmente cursar.
drop view elegiveis;
create view elegiveis as
    select 
        discNaoCursadas.id as disciplina, disciplina.codigo
    from
        discNaoCursadas
            left outer join
        disImpossiveis ON discNaoCursadas.id = disImpossiveis.id 
			inner join 
		disciplina on disciplina.id = discNaoCursadas.id 
		where disImpossiveis.id is null order by discNaoCursadas.id;
		

select * from elegiveis;

#-----------------------------------------------------------------------------------
# Pedido de validação de disciplina.

# View com a lista dos pedidos de validação do Alcides.
drop view pedidoValidacao;
create view pedidoValidacao as 
	select 
		disAlunos.id, disAlunos.codigo as Disciplinas
	from
		disAlunos
	where disAlunos.nome regexp 'Alcides' 
	and disAlunos.concluido = '1';

select * from pedidoValidacao;

# View retorna a lista das disciplinas permitidas para validação, das que ele pediu para ser validada. 
drop view validacaoPermitidas;
create view validacaoPermitidas as 
	select 
		pedidoValidacao.Disciplinas
	from 
		pedidoValidacao 
			left outer join 
		elegiveis on pedidoValidacao.id = elegiveis.disciplina
	where  elegiveis.disciplina is not null;

select * from validacaoPermitidas;

#------------------------------------------------------------------------------------------------
#Filtros de disciplinas:
	#Por professor.            (x)
	#Por turno.                (x)
	#Por horário (dia e hora). (x)

#Por professor, turno e horário:

# Convenção do horário.
# Turno    0-> Matutino    | 1->Vespertino    | 2->Noturno.
# numAula  0-> 7:30 - 9:20 | 1-> 9:40 - 11:30 | 2-> 13:30 - 15:20 | 3-> 15:40 - 17:30 | 4-> 18:30 - 20:20 | 5-> 20:40 - 22:30.
# numDia   0-> Domingo     | 1->Segunda       | 2->Terça          | 3-> Quarta        | 4-> Quinta        | 5-> Sexta          | 6-> Sábado.
# semanaAB 0-> A/B         | 1-> A            | 2->B


drop view filtro;
create view filtro as
    select 
        horario.turno,
        horario.numDia,
        horario.numAula,
        horario.semanaAB,
        disciplina.codigo,
        disciplina.nomeCompleto,
        professor.nome as Professores
    from
        horario
            inner join
        disciplina ON horario.codigoDisciplina = disciplina.id
            inner join
        professor ON disciplina.professorSiape = professor.id;

select * from filtro;

# Selecionando todas as disciplinas que Tancredo Neves leciona.
select codigo, nomeCompleto from filtro where filtro.Professores regexp 'Tancredo' group by codigo;



# Selecionando o professor que lenciona a disciplina COM2.
select filtro.Professores from filtro where filtro.codigo = 'COM2' group by filtro.Professores;

select codigo, nomeCompleto from filtro where filtro.turno = '1';

# Observando quais as disciplinas que o professor Emilio dá, na quarta-feira às 15:40.
select codigo, nomeCompleto from filtro where filtro.Professores regexp 'Emílio' and filtro.numDia = '3' and filtro.numAula = '3';

#-------------------------------------------------------------------------------------------------------------------------------------------
#Pedido de matrícula de disciplina:
	#Atendimento de pré-requisitos.
	#Carga horária mínima.

drop view disciDesejada;
create view disciDesejada as
	select 
		codigo as disciplinas, id, CH 
	from 
		disAlunos 
	where disAlunos.nome regexp 'Alcides' and disAlunos.concluido = '0';

select * from disciDesejada;

# Disciplinas que eu pedi e que respeitam a Pré-Requito e Carga Horária.
drop view permitidas;
create view permitidas as 
	select disciDesejada.disciplinas, disciDesejada.id, disciDesejada.CH
	from
		disciDesejada
			left outer join 
		elegiveis on disciDesejada.id = elegiveis.disciplina
	where elegiveis.disciplina is not null;

select * from permitidas;

#---------------------------------------------------------------------------------
# Para a emissão do pedido completo de matrícula, ainda a ver:
	#Choque de horário (considerando semanas A e B).
	#Quantidade mínima e máxima de horas por semestre.

# Ver se a CH de todas as disciplinas que vou fazer está dentro da CH permitida. 
drop view disPermiMinMax;
create view disPermiMinMax as 
	select 
		permitidas.disciplinas,permitidas.id as disId
	from 
		permitidas
	where (select sum(CH) from permitidas) BETWEEN 216 AND 612;

select * from disPermiMinMax;

# Criando duas view iguais, para analizar choque em outra.
drop view maxMinHora;
create view maxMinHora as
	select  disPermiMinMax.disciplinas as dis, disPermiMinMax.disId, horario.turno, horario.numAula, horario.numDia, horario.semanaAB
	from 
		disPermiMinMax
			inner join 
		horario on disPermiMinMax.disId = horario.codigoDisciplina;
select * from maxMinHora;
 

drop view dis_e_hora;
create view dis_e_hora as 
	select disPermiMinMax.disciplinas as Disciplinas , disPermiMinMax.disId as id, horario.turno as turnoHorario, horario.numAula as Horario, horario.numDia as diaSemana, horario.semanaAB as SemanaAouB
	from 
		disPermiMinMax 
			inner join
		horario on disPermiMinMax.disId = horario.codigoDisciplina;
select * from dis_e_hora;


# lista que analisa quais disciplinas deram choque de horário
drop view choqueHora;
create view choqueHora as 
	select dis_e_hora.Disciplinas as DiscComChoque, dis_e_hora.id 
	from 
		dis_e_hora 
			left outer join 
		maxMinHora on dis_e_hora.SemanaAouB = maxMinHora.semanaAB and
				   dis_e_hora.diaSemana = maxMinHora.numDia   and
				   dis_e_hora.Horario = maxMinHora.numAula and 
				   dis_e_hora.id !=  maxMinHora.disId
		where maxMinHora.disId is not null;
		
select * from choqueHora;
