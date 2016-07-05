use db1220050261;


drop table if exists processoDeMatricula;
drop table if exists matricula;
drop table if exists horario;
drop table if exists preRequisito;
drop table if exists disciplina;
drop table if exists curso;
drop table if exists professor;
drop table if exists aluno;

create table aluno(
  id smallint unsigned auto_increment primary key,
  cpf bigint unsigned unique,
  nome varchar(50),
  senha varchar(20) 
);

insert ignore into aluno(cpf, nome)
values
  (floor(rand()*100000000), 'Abgar Renault'),
  (floor(rand()*100000000), 'Adelino Fontoura'),
  (floor(rand()*100000000), 'Adelmar Tavares'),
  (floor(rand()*100000000), 'Adonias Filho'),
  (floor(rand()*100000000), 'Affonso Arinos de Mello Franco'),
  (floor(rand()*100000000), 'Afonso Arinos'),
  (floor(rand()*100000000), 'Afonso Arinos de Melo Franco'),
  (floor(rand()*100000000), 'Afonso Celso'),
  (floor(rand()*100000000), 'Afonso Pena Júnior'),
  (floor(rand()*100000000), 'Afonso d\'Escragnolle Taunay'),
  (floor(rand()*100000000), 'Afrânio Coutinho'),
  (floor(rand()*100000000), 'Afrânio Peixoto'),
  (floor(rand()*100000000), 'Alberto Faria'),
  (floor(rand()*100000000), 'Alberto Venancio Filho'),
  (floor(rand()*100000000), 'Alberto da Costa e Silva'),
  (floor(rand()*100000000), 'Alberto de Faria'),
  (floor(rand()*100000000), 'Alberto de Oliveira'),
  (floor(rand()*100000000), 'Alceu Amoroso Lima'),
  (floor(rand()*100000000), 'Alcides Maia'),
  (floor(rand()*100000000), 'Alcindo Guanabara'),
  (floor(rand()*100000000), 'Alcântara Machado'),
  (floor(rand()*100000000), 'Alfredo Bosi'),
  (floor(rand()*100000000), 'Alfredo Pujol'),
  (floor(rand()*100000000), 'Aloísio de Castro'),
  (floor(rand()*100000000), 'Aluísio Azevedo'),
  (floor(rand()*100000000), 'Amadeu Amaral'),
  (floor(rand()*100000000), 'Américo Jacobina Lacombe'),
  (floor(rand()*100000000), 'Ana Maria Machado'),
  (floor(rand()*100000000), 'Antonio Carlos Secchin'),
  (floor(rand()*100000000), 'Antônio Augusto de Lima'),
  (floor(rand()*100000000), 'Antônio Austregésilo'),
  (floor(rand()*100000000), 'Antônio Calado'),
  (floor(rand()*100000000), 'Antônio Houaiss'),
  (floor(rand()*100000000), 'Antônio Olinto'),
  (floor(rand()*100000000), 'Antônio Peregrino Maciel Monteiro'),
  (floor(rand()*100000000), 'Antônio Torres'),
  (floor(rand()*100000000), 'Aníbal Freire da Fonseca'),
  (floor(rand()*100000000), 'Araripe Júnior'),
  (floor(rand()*100000000), 'Ariano Suassuna'),
  (floor(rand()*100000000), 'Arnaldo Niskier'),
  (floor(rand()*100000000), 'Artur Azevedo'),
  (floor(rand()*100000000), 'Artur Jaceguai'),
  (floor(rand()*100000000), 'Artur Orlando da Silva'),
  (floor(rand()*100000000), 'Artur de Oliveira'),
  (floor(rand()*100000000), 'Assis Chateaubriand'),
  (floor(rand()*100000000), 'Ataulfo de Paiva'),
  (floor(rand()*100000000), 'Augusto Meyer'),
  (floor(rand()*100000000), 'Aurélio Buarque de Holanda Ferreira'),
  (floor(rand()*100000000), 'Aurélio de Lira Tavares'),
  (floor(rand()*100000000), 'Austregésilo de Ataíde'),
  (floor(rand()*100000000), 'Barbosa Lima Sobrinho'),
  (floor(rand()*100000000), 'Barão Homem de Melo'),
  (floor(rand()*100000000), 'Barão do Rio Branco'),
  (floor(rand()*100000000), 'Basílio da Gama'),
  (floor(rand()*100000000), 'Bernardo Guimarães'),
  (floor(rand()*100000000), 'Bernardo Élis'),
  (floor(rand()*100000000), 'Carlos Castelo Branco'),
  (floor(rand()*100000000), 'Carlos Chagas Filho'),
  (floor(rand()*100000000), 'Carlos Heitor Cony'),
  (floor(rand()*100000000), 'Carlos Magalhães de Azeredo'),
  (floor(rand()*100000000), 'Carlos Nejar'),
  (floor(rand()*100000000), 'Carlos de Laet'),
  (floor(rand()*100000000), 'Carneiro Leão'),
  (floor(rand()*100000000), 'Casimiro de Abreu'),
  (floor(rand()*100000000), 'Cassiano Ricardo'),
  (floor(rand()*100000000), 'Castro Alves'),
  (floor(rand()*100000000), 'Celso Cunha'),
  (floor(rand()*100000000), 'Celso Furtado'),
  (floor(rand()*100000000), 'Celso Lafer'),
  (floor(rand()*100000000), 'Celso Vieira'),
  (floor(rand()*100000000), 'Ciro dos Anjos'),
  (floor(rand()*100000000), 'Clementino Fraga'),
  (floor(rand()*100000000), 'Cleonice Berardinelli'),
  (floor(rand()*100000000), 'Cláudio Manoel da Costa'),
  (floor(rand()*100000000), 'Cláudio de Sousa'),
  (floor(rand()*100000000), 'Clóvis Beviláqua'),
  (floor(rand()*100000000), 'Coelho Neto'),
  (floor(rand()*100000000), 'Constâncio Alves'),
  (floor(rand()*100000000), 'Cândido Mendes'),
  (floor(rand()*100000000), 'Cândido Mota Filho'),
  (floor(rand()*100000000), 'Cícero Sandroni'),
  (floor(rand()*100000000), 'Dantas Barreto'),
  (floor(rand()*100000000), 'Darcy Ribeiro'),
  (floor(rand()*100000000), 'Deolindo Couto'),
  (floor(rand()*100000000), 'Dias Gomes'),
  (floor(rand()*100000000), 'Diná Silveira de Queirós'),
  (floor(rand()*100000000), 'Dom Aquino Correia'),
  (floor(rand()*100000000), 'Dom Lucas Moreira Neves'),
  (floor(rand()*100000000), 'Dom Marcos Barbosa'),
  (floor(rand()*100000000), 'Dom Silvério Gomes Pimenta'),
  (floor(rand()*100000000), 'Domício Proença Filho'),
  (floor(rand()*100000000), 'Domício da Gama'),
  (floor(rand()*100000000), 'Eduardo Portella'),
  (floor(rand()*100000000), 'Eduardo Prado'),
  (floor(rand()*100000000), 'Eduardo Ramos'),
  (floor(rand()*100000000), 'Elmano Cardim'),
  (floor(rand()*100000000), 'Emílio de Meneses'),
  (floor(rand()*100000000), 'Euclides da Cunha'),
  (floor(rand()*100000000), 'Evaldo Cabral de Mello'),
  (floor(rand()*100000000), 'Evandro Lins e Silva'),
  (floor(rand()*100000000), 'Evanildo Cavalcante Bechara'),
  (floor(rand()*100000000), 'Evaristo da Veiga'),
  (floor(rand()*100000000), 'Evaristo de Moraes Filho'),
  (floor(rand()*100000000), 'Fagundes Varela'),
  (floor(rand()*100000000), 'Fernando Henrique Cardoso'),
  (floor(rand()*100000000), 'Fernando Magalhães'),
  (floor(rand()*100000000), 'Fernando de Azevedo'),
  (floor(rand()*100000000), 'Ferreira Gullar'),
  (floor(rand()*100000000), 'Filinto de Almeida'),
  (floor(rand()*100000000), 'Francisco Adolfo de Varnhagen'),
  (floor(rand()*100000000), 'Francisco Otaviano'),
  (floor(rand()*100000000), 'Francisco de Assis Barbosa'),
  (floor(rand()*100000000), 'Francisco de Castro'),
  (floor(rand()*100000000), 'Franklin Dória'),
  (floor(rand()*100000000), 'Franklin Távora'),
  (floor(rand()*100000000), 'França Júnior'),
  (floor(rand()*100000000), 'Félix Pacheco'),
  (floor(rand()*100000000), 'Garcia Redondo'),
  (floor(rand()*100000000), 'Genolino Amado'),
  (floor(rand()*100000000), 'Geraldo França de Lima'),
  (floor(rand()*100000000), 'Geraldo Holanda Cavalcanti'),
  (floor(rand()*100000000), 'Getúlio Vargas'),
  (floor(rand()*100000000), 'Gilberto Amado'),
  (floor(rand()*100000000), 'Gonçalves Dias'),
  (floor(rand()*100000000), 'Gonçalves de Magalhães'),
  (floor(rand()*100000000), 'Goulart de Andrade'),
  (floor(rand()*100000000), 'Graça Aranha'),
  (floor(rand()*100000000), 'Gregório da Fonseca'),
  (floor(rand()*100000000), 'Gregório de Matos'),
  (floor(rand()*100000000), 'Guilherme de Almeida'),
  (floor(rand()*100000000), 'Guimarães Júnior'),
  (floor(rand()*100000000), 'Guimarães Passos'),
  (floor(rand()*100000000), 'Guimarães Rosa'),
  (floor(rand()*100000000), 'Gustavo Barroso'),
  (floor(rand()*100000000), 'Herberto Sales'),
  (floor(rand()*100000000), 'Hermes Lima'),
  (floor(rand()*100000000), 'Heráclito Graça'),
  (floor(rand()*100000000), 'Hipólito da Costa'),
  (floor(rand()*100000000), 'Humberto de Campos'),
  (floor(rand()*100000000), 'Hélio Jaguaribe'),
  (floor(rand()*100000000), 'Hélio Lobo'),
  (floor(rand()*100000000), 'Inglês de Sousa'),
  (floor(rand()*100000000), 'Ivan Junqueira'),
  (floor(rand()*100000000), 'Ivan Lins'),
  (floor(rand()*100000000), 'Ivo Pitanguy'),
  (floor(rand()*100000000), 'Joaquim Caetano'),
  (floor(rand()*100000000), 'Joaquim Manuel de Macedo'),
  (floor(rand()*100000000), 'Joaquim Nabuco'),
  (floor(rand()*100000000), 'Joaquim Serra'),
  (floor(rand()*100000000), 'Joracy Camargo'),
  (floor(rand()*100000000), 'Jorge Amado'),
  (floor(rand()*100000000), 'Josué Montello'),
  (floor(rand()*100000000), 'José Américo de Almeida'),
  (floor(rand()*100000000), 'José Bonifácio, o Moço'),
  (floor(rand()*100000000), 'José Carlos de Macedo Soares'),
  (floor(rand()*100000000), 'José Cândido de Carvalho'),
  (floor(rand()*100000000), 'José Guilherme Merquior'),
  (floor(rand()*100000000), 'José Honório Rodrigues'),
  (floor(rand()*100000000), 'José Lins do Rego'),
  (floor(rand()*100000000), 'José Mindlin'),
  (floor(rand()*100000000), 'José Murilo de Carvalho'),
  (floor(rand()*100000000), 'José Sarney'),
  (floor(rand()*100000000), 'José Veríssimo'),
  (floor(rand()*100000000), 'José de Alencar'),
  (floor(rand()*100000000), 'José do Patrocínio'),
  (floor(rand()*100000000), 'João Cabral de Melo Neto'),
  (floor(rand()*100000000), 'João Francisco Lisboa'),
  (floor(rand()*100000000), 'João Luís Alves'),
  (floor(rand()*100000000), 'João Neves da Fontoura'),
  (floor(rand()*100000000), 'João Ribeiro'),
  (floor(rand()*100000000), 'João Ubaldo Ribeiro'),
  (floor(rand()*100000000), 'João de Scantimburgo'),
  (floor(rand()*100000000), 'Junqueira Freire'),
  (floor(rand()*100000000), 'Júlio Ribeiro'),
  (floor(rand()*100000000), 'Lafayette Rodrigues Pereira'),
  (floor(rand()*100000000), 'Laudelino Freire'),
  (floor(rand()*100000000), 'Laurindo Rabelo'),
  (floor(rand()*100000000), 'Lauro Müller'),
  (floor(rand()*100000000), 'Levi Carneiro'),
  (floor(rand()*100000000), 'Luiz Paulo Horta'),
  (floor(rand()*100000000), 'Luís Carlos'),
  (floor(rand()*100000000), 'Luís Edmundo'),
  (floor(rand()*100000000), 'Luís Guimarães Filho'),
  (floor(rand()*100000000), 'Luís Murat'),
  (floor(rand()*100000000), 'Luís Viana Filho'),
  (floor(rand()*100000000), 'Lygia Fagundes Telles'),
  (floor(rand()*100000000), 'Lêdo Ivo'),
  (floor(rand()*100000000), 'Lúcio de Mendonça'),
  (floor(rand()*100000000), 'Machado de Assis'),
  (floor(rand()*100000000), 'Magalhães Júnior'),
  (floor(rand()*100000000), 'Manuel Antônio de Almeida'),
  (floor(rand()*100000000), 'Manuel Bandeira'),
  (floor(rand()*100000000), 'Manuel de Araújo Porto-Alegre'),
  (floor(rand()*100000000), 'Marco Lucchesi'),
  (floor(rand()*100000000), 'Marco Maciel'),
  (floor(rand()*100000000), 'Marcos Almir Madeira'),
  (floor(rand()*100000000), 'Marcos Vilaça'),
  (floor(rand()*100000000), 'Marques Rebelo'),
  (floor(rand()*100000000), 'Martins Júnior'),
  (floor(rand()*100000000), 'Martins Pena'),
  (floor(rand()*100000000), 'Mauro Mota'),
  (floor(rand()*100000000), 'Maurício Campos de Medeiros'),
  (floor(rand()*100000000), 'Medeiros e Albuquerque'),
  (floor(rand()*100000000), 'Menotti Del Picchia'),
  (floor(rand()*100000000), 'Merval Pereira'),
  (floor(rand()*100000000), 'Miguel Couto'),
  (floor(rand()*100000000), 'Miguel Osório de Almeida'),
  (floor(rand()*100000000), 'Miguel Reale'),
  (floor(rand()*100000000), 'Moacyr Scliar'),
  (floor(rand()*100000000), 'Murilo Melo Filho'),
  (floor(rand()*100000000), 'Mário Palmério'),
  (floor(rand()*100000000), 'Mário de Alencar'),
  (floor(rand()*100000000), 'Múcio Leão'),
  (floor(rand()*100000000), 'Nelson Pereira dos Santos'),
  (floor(rand()*100000000), 'Nélida Piñon'),
  (floor(rand()*100000000), 'Odilo Costa Filho'),
  (floor(rand()*100000000), 'Olavo Bilac'),
  (floor(rand()*100000000), 'Olegário Mariano'),
  (floor(rand()*100000000), 'Oliveira Lima'),
  (floor(rand()*100000000), 'Oliveira Viana'),
  (floor(rand()*100000000), 'Orígenes Lessa'),
  (floor(rand()*100000000), 'Oscar Dias Correia'),
  (floor(rand()*100000000), 'Osvaldo Cruz'),
  (floor(rand()*100000000), 'Osvaldo Orico'),
  (floor(rand()*100000000), 'Osório Duque-Estrada'),
  (floor(rand()*100000000), 'Otto Lara Resende'),
  (floor(rand()*100000000), 'Otávio Mangabeira'),
  (floor(rand()*100000000), 'Otávio de Faria'),
  (floor(rand()*100000000), 'Padre Fernando Bastos de Ávila'),
  (floor(rand()*100000000), 'Pardal Mallet'),
  (floor(rand()*100000000), 'Paulo Barreto'),
  (floor(rand()*100000000), 'Paulo Carneiro'),
  (floor(rand()*100000000), 'Paulo Coelho'),
  (floor(rand()*100000000), 'Paulo Setúbal'),
  (floor(rand()*100000000), 'Pedro Calmon'),
  (floor(rand()*100000000), 'Pedro Lessa'),
  (floor(rand()*100000000), 'Pedro Luís Pereira de Sousa'),
  (floor(rand()*100000000), 'Pedro Rabelo'),
  (floor(rand()*100000000), 'Peregrino Júnior'),
  (floor(rand()*100000000), 'Pereira da Silva'),
  (floor(rand()*100000000), 'Pereira da Silva'),
  (floor(rand()*100000000), 'Pontes de Miranda'),
  (floor(rand()*100000000), 'Rachel de Queiroz'),
  (floor(rand()*100000000), 'Raimundo Correia'),
  (floor(rand()*100000000), 'Raimundo Faoro'),
  (floor(rand()*100000000), 'Ramiz Galvão'),
  (floor(rand()*100000000), 'Raul Pompéia'),
  (floor(rand()*100000000), 'Ribeiro Couto'),
  (floor(rand()*100000000), 'Roberto Campos'),
  (floor(rand()*100000000), 'Roberto Marinho'),
  (floor(rand()*100000000), 'Roberto Simonsen'),
  (floor(rand()*100000000), 'Rocha Pombo'),
  (floor(rand()*100000000), 'Rodolfo Garcia'),
  (floor(rand()*100000000), 'Rodrigo Otávio'),
  (floor(rand()*100000000), 'Rodrigo Otávio Filho'),
  (floor(rand()*100000000), 'Roquette-Pinto'),
  (floor(rand()*100000000), 'Rosiska Darcy de Oliveira'),
  (floor(rand()*100000000), 'Ruy Barbosa'),
  (floor(rand()*100000000), 'Salvador de Mendonça'),
  (floor(rand()*100000000), 'Santos Dumont'),
  (floor(rand()*100000000), 'Silva Melo'),
  (floor(rand()*100000000), 'Silva Ramos'),
  (floor(rand()*100000000), 'Sousa Bandeira'),
  (floor(rand()*100000000), 'Sousa Caldas'),
  (floor(rand()*100000000), 'Sábato Magaldi'),
  (floor(rand()*100000000), 'Sérgio Correia da Costa'),
  (floor(rand()*100000000), 'Sérgio Paulo Rouanet'),
  (floor(rand()*100000000), 'Sílvio Romero'),
  (floor(rand()*100000000), 'Tarcísio Padilha'),
  (floor(rand()*100000000), 'Tavares Bastos'),
  (floor(rand()*100000000), 'Teixeira de Melo'),
  (floor(rand()*100000000), 'Teófilo Dias'),
  (floor(rand()*100000000), 'Tobias Barreto'),
  (floor(rand()*100000000), 'Tomás Antônio Gonzaga'),
  (floor(rand()*100000000), 'Urbano Duarte'),
  (floor(rand()*100000000), 'Valentim Magalhães'),
  (floor(rand()*100000000), 'Viana Moog'),
  (floor(rand()*100000000), 'Vicente de Carvalho'),
  (floor(rand()*100000000), 'Viriato Correia'),
  (floor(rand()*100000000), 'Visconde de Taunay'),
  (floor(rand()*100000000), 'Visconde do Rio Branco'),
  (floor(rand()*100000000), 'Vítor Viana'),
  (floor(rand()*100000000), 'Xavier Marques'),
  (floor(rand()*100000000), 'Zuenir Ventura[2]'),
  (floor(rand()*100000000), 'Zélia Gattai'),
  (floor(rand()*100000000), 'Álvares de Azevedo'),
  (floor(rand()*100000000), 'Álvaro Lins'),
  (floor(rand()*100000000), 'Álvaro Moreyra');

create table professor(
  id smallint unsigned auto_increment primary key,
  siape int unsigned unique,
  nome varchar(50)
);

insert ignore into professor(siape, nome)
values
  (floor(rand()*1000000), 'Afonso Pena'),
  (floor(rand()*1000000), 'Artur Bernardes'),
  (floor(rand()*1000000), 'Artur da Costa e Silva'),
  (floor(rand()*1000000), 'Augusto Rademaker'),
  (floor(rand()*1000000), 'Augusto Tasso Fragoso'),
  (floor(rand()*1000000), 'Aurélio de Lira Tavares'),
  (floor(rand()*1000000), 'Café Filho'),
  (floor(rand()*1000000), 'Campos Sales'),
  (floor(rand()*1000000), 'Carlos Luz'),
  (floor(rand()*1000000), 'Delfim Moreira'),
  (floor(rand()*1000000), 'Deodoro da Fonseca'),
  (floor(rand()*1000000), 'Dilma Rousseff'),
  (floor(rand()*1000000), 'Emílio Garrastazu Médici'),
  (floor(rand()*1000000), 'Epitácio Pessoa'),
  (floor(rand()*1000000), 'Ernesto Geisel'),
  (floor(rand()*1000000), 'Eurico Gaspar Dutra'),
  (floor(rand()*1000000), 'Fernando Collor'),
  (floor(rand()*1000000), 'Fernando Henrique Cardoso'),
  (floor(rand()*1000000), 'Floriano Peixoto'),
  (floor(rand()*1000000), 'Getúlio Vargas'),
  (floor(rand()*1000000), 'Hermes da Fonseca'),
  (floor(rand()*1000000), 'Humberto Castelo Branco'),
  (floor(rand()*1000000), 'Isaías de Noronha'),
  (floor(rand()*1000000), 'Itamar Franco'),
  (floor(rand()*1000000), 'Jânio Quadros'),
  (floor(rand()*1000000), 'João Figueiredo'),
  (floor(rand()*1000000), 'João Goulart'),
  (floor(rand()*1000000), 'João Mena Barreto'),
  (floor(rand()*1000000), 'José Linhares'),
  (floor(rand()*1000000), 'José Sarney'),
  (floor(rand()*1000000), 'Júlio Prestes'),
  (floor(rand()*1000000), 'Juscelino Kubitschek'),
  (floor(rand()*1000000), 'Luiz Inácio Lula da Silva'),
  (floor(rand()*1000000), 'Márcio de Sousa Melo'),
  (floor(rand()*1000000), 'Michel Temer'),
  (floor(rand()*1000000), 'Nereu Ramos'),
  (floor(rand()*1000000), 'Nilo Peçanha'),
  (floor(rand()*1000000), 'Prudente de Morais'),
  (floor(rand()*1000000), 'Ranieri Mazzilli'),
  (floor(rand()*1000000), 'Rodrigues Alves'),
  (floor(rand()*1000000), 'Tancredo Neves'),
  (floor(rand()*1000000), 'Venceslau Brás'),
  (floor(rand()*1000000), 'Washington Luís');

create table curso(
  id tinyint unsigned auto_increment primary key,
  codigo smallint unsigned unique,
  nome varchar(100)
);

-- desc curso;
insert into curso(codigo, nome) values('290','Engenharia de Telecomunicações');

create table disciplina(
  id smallint unsigned auto_increment primary key,
  codigo char(4) unique,
  nomeCompleto varchar(50),
  fase tinyint unsigned,
  CH smallint unsigned,
  CHminima smallint unsigned,
  cursoCodigo tinyint unsigned,
  professorSiape smallint unsigned,
  constraint fk_disciplina_cursoCodigo_curso_id foreign key (cursoCodigo) references curso(id),
  constraint fk_disciplina_professorSiape_professor_id foreign key (professorSiape) references professor(id)
);

create table preRequisito(
  id mediumint unsigned auto_increment primary key,
  disciplina smallint unsigned,
  preRequisito smallint unsigned,
  constraint fk_preRequisito_disciplina_disciplina_codigo foreign key (disciplina) references disciplina(id),
  constraint fk_preRequisito_preRequisito_disciplina_codigo foreign key (preRequisito) references disciplina(id)
);

create table horario(
  id tinyint unsigned auto_increment primary key,
  turno tinyint unsigned,
  numAula tinyint unsigned,
  numDia tinyint unsigned,
  semanaAB tinyint unsigned,
  codigoDisciplina smallint unsigned,
  semestre smallint unsigned,
  constraint fk_horario_codigoDisciplina_disciplina_codigo foreign key (codigoDisciplina) references disciplina(id)
);

create table matricula(
  id smallint unsigned auto_increment primary key,
  aluno smallint unsigned,
  curso tinyint unsigned,
  matricula int unsigned unique,
  constraint fk_matricula_aluno_aluno_cpf foreign key (aluno) references aluno(id),
  constraint fk_matricula_curso_curso_codigo foreign key (curso) references curso(id)
);

create table processoDeMatricula(
  id smallint unsigned auto_increment primary key,
  matricula smallint unsigned,
  disciplina smallint unsigned,
  concluido tinyint unsigned,
  semestre smallint unsigned,
  constraint fk_processoDeMatricula_matricula_matricula_id foreign key (matricula) references matricula(id),
  constraint fk_processoDeMatricula_disciplina_disciplina_codigo foreign key (disciplina) references disciplina(id)
);



#---------------------- Inserindo dados na tabela disciplina: ------------------------------------------------------------

#select * from disciplina;
#desc disciplina;
 
insert into disciplina(codigo, nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('DES', 'Desenho Técnico', '1', '36', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Afonso Pena')
);
 
 
insert into disciplina(codigo, nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CAL1','Cálculo I', '1', '72', NULL, 
    (select id from curso where nome = 'Engenharia de Telecomunicações'), 
    (select id from professor where nome = 'Café Filho')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ELI1','Eletricidade e Instrumentação', '1', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Ranieri Mazzilli')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('FSC1','Física I', '1', '72', NULL, (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Tancredo Neves')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('GAL','Geometria Analítica', '1', '54', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Washington Luís')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('LOG','Lógica', '1', '36', NULL, (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Fernando Collor')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PJI1','Projeto Integrador I', '1', '54', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Getúlio Vargas')
);


-- Cadastrando disciplinas da segunda fase:

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('QMC1','Química Geral', '2', '54', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'),
        (select id from professor where nome =  'Emílio Garrastazu Médici')
);


insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CAL2','Cáculo II', '2', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
		(select id from professor where nome = 'Márcio de Sousa Melo')
);


insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CIE1',' Circuitos Elétricos I','2', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
		(select id from professor where nome = 'Prudente de Morais')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('FSC2','Física II', '2', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'),
		(select id from professor where nome = 'Tancredo Neves')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ALG',' Álgebra Linear', '2', '54', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
		(select id from professor where nome = 'Washington Luís')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PRG1','Programação I', '2', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
		(select id from professor where nome = 'Venceslau Brás')
);

-- Cadastrando disciplinas da terceira fase:


insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('QMC2','Ciência e Tecnologia dos Materiais', '3', '36', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Emílio Garrastazu Médici')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CAL3','Cálculo III', '3', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Márcio de Sousa Melo')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CIE2','Circuitos Elétrica II', '3', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Afonso Pena')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ELA1','Eletrônica I', '3', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Deodoro da Fonseca')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CIL',' Circuitos Lógicos', '3', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Epitácio Pessoa')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PRG2','Programação II', '3', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Getúlio Vargas')
);

-- Cadastrando disciplinas da quarta fase:

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('MEC','Mecânica dos Sólidos','4', '36', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Itamar Franco')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CAL4','Cálculo IV','4', '54', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Humberto Castelo Branco')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('RED1','Redes de Computadores I','4', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'João Goulart')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ELA2','Eletrônica II','4', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'José Linhares')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('MIC','Microprocessadores','4', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Isaías de Noronha')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('POO','Metodologia de Pesquisa','4', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Hermes da Fonseca')
);

-- Cadastrando disciplinas da quinta fase:

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('MPQ','Programação Orientada a Objetos','5', '36', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Dilma Rousseff')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('EST',' Estatística e Probabilidade','5', '54', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Deodoro da Fonseca')
);


insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('RED2','Redes de Computadores II','5', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Getúlio Vargas')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('FSC3','Física III','5', '90', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Humberto Luz Oliveira')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('SOP',' Sistemas Operacionais','5', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'José Sarney')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('SIS1',' Sinais e Sistemas I','5', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Jânio Quadros')
);

-- Cadastrando disciplinas da sexta fase:


insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('FEN','Fenômenos de Transporte', '6', '36', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Michel Temer')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PRE','Processos Estocásticos', '6', '54', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Júlio Prestes')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ANT','Antenas e Propagação', '6', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Nereu Ramos')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('STD','Sistemas Distribuídos', '6', '54', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Márcio de Sousa Melo')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('DLP1',' Dispositivos Lógicos Programáveis I', '6', '90', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Nilo Peçanha')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('SIS2','Sinais e Sistemas II', '6', '54', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Juscelino Kubitschek')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PJI2',' Projeto Integrador II', '6', '36', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Washington Luís')
);

-- Cadastrando disciplinas da sétima fase:

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PTG','Comunicação e Expressão', '7', '36', '1980',
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'José Sarney')
);
 
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('RTX','Redes De Transmissão', '7', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Luiz Inácio Lula da Silva')
);
 
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('MTG',' Meios De Transmissão Guiados', '7', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Michel Temer')
);
 
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('DLP2','Dispositivos Lógicos Programáveis II', '7', '54', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Nilo Peçanha')
);
 
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PSD','Processamentos De Sinais Digitais', '7', '72', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Venceslau Brás')
);
 
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('COM1','Sistemas De comunicações I', '7', '90', NULL,
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'José Sarney')
);
 

-- Cadastrando disciplinas da oitava fase:

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ADM','Administração para Engenharia', '8', '36', '1980', 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Tancredo Neves')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CSF','Comunicações Sem Fio', '8', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Júlio Prestes')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('BCD','Banco de Dados', '8', '54', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Nereu Ramos')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('STE','Sistemas Embarcados', '8', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Itamar Franco')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PTC','Projeto de Protocolos', '8', '54', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Jânio Quadros')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('COM2','Sistemas de Comunicação II', '8', '72', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Emílio Garrastazu Médici')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('PJI3','Projeto Integrador III', '8', '36', NULL, 
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Fernando Collor')
);

-- Cadastrando disciplinas da nona fase:


insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ECO','Economia Para Engenharia','9', '36', '1980',
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Tancredo Neves')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('SUS','Engenharia e Sustentabilidade','9', '36', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome ='Afonso Pena')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('SMU','Sistemas Multimídia','9', '54', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Ernesto Geisel')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ADS','Avaliação de Desempenho de Sistemas','9', '54', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Floriano Peixoto')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('STC','Sistemas de Telecomunicações','9', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Artur da Costa e Silva')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('CRF','Circuitos de Rádio-Frequência','9', '72', NULL,
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Campos Sales')
);

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('TCC1','Trabalho de Conclusão de Curso I','9', '36', '2160',
    (select id from curso where nome = 'Engenharia de Telecomunicações'),
    (select id from professor where nome = 'Deodoro da Fonseca')
);

-- Cadastrando disciplinas da décima fase:

insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('ETO','Estágio Obrigatório', '10', '360', '2160',
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Getúlio Vargas')
);
 
insert into disciplina(codigo,nomeCompleto,fase, CH, CHminima, cursoCodigo, professorSiape)
values ('TCC2','Trabalho De Conclusão II', '10', '108', '2560',
        (select id from curso where nome = 'Engenharia de Telecomunicações'), 
        (select id from professor where nome = 'Isaías de Noronha')
);

# ------------------------- Cadastrando os préRequisitos. -------------------------------------------------
#desc preRequisito;
# Prérequisito 2ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo = 'CAL2'),(select id from disciplina where codigo = 'CAL1')),
       ((select id from disciplina where codigo = 'CIE1'),(select id from disciplina where codigo = 'CAL1')),
       ((select id from disciplina where codigo = 'CIE1'),(select id from disciplina where codigo = 'ELI1')),
       ((select id from disciplina where codigo = 'FSC2'),(select id from disciplina where codigo = 'FSC1')),
       ((select id from disciplina where codigo = 'FSC2'),(select id from disciplina where codigo = 'CAL1')),
       ((select id from disciplina where codigo = 'ALG'),(select id from disciplina where codigo = 'GAL')),
       ((select id from disciplina where codigo = 'PRG1'),(select id from disciplina where codigo = 'LOG'));
 

# Prérequisito 3ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='QMC2'),(select id from disciplina where codigo ='QMC1')),
       ((select id from disciplina where codigo ='CAL3'),(select id from disciplina where codigo ='CAL2')),
       ((select id from disciplina where codigo ='CAL3'),(select id from disciplina where codigo ='GAL')),
       ((select id from disciplina where codigo ='CIE2'),(select id from disciplina where codigo ='CIE1')),
       ((select id from disciplina where codigo ='CIE2'),(select id from disciplina where codigo ='CAL2')),
       ((select id from disciplina where codigo ='ELA1'),(select id from disciplina where codigo ='CIE1')),
       ((select id from disciplina where codigo ='ELA1'),(select id from disciplina where codigo ='CAL1')),
       ((select id from disciplina where codigo ='CIL'),(select id from disciplina where codigo ='LOG')),
       ((select id from disciplina where codigo ='PRG2'),(select id from disciplina where codigo ='PRG1'));


# Prérequisito 4ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='MEC'),(select id from disciplina where codigo ='FSC1')),
       ((select id from disciplina where codigo ='MEC'),(select id from disciplina where codigo ='CAL2')),
       ((select id from disciplina where codigo ='CAL4'),(select id from disciplina where codigo ='CAL2')),
       ((select id from disciplina where codigo ='RED1'),(select id from disciplina where codigo ='CIL')),
       ((select id from disciplina where codigo ='ELA2'),(select id from disciplina where codigo ='CAL2')),
       ((select id from disciplina where codigo ='ELA2'),(select id from disciplina where codigo ='ELA1')),
       ((select id from disciplina where codigo ='MIC'),(select id from disciplina where codigo ='CIL')),
       ((select id from disciplina where codigo ='POO'),(select id from disciplina where codigo ='PRG2'));


# Prérequisito 5ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='EST'),(select id from disciplina where codigo ='CAL1')),
       ((select id from disciplina where codigo ='RED2'),(select id from disciplina where codigo ='RED1')),
       ((select id from disciplina where codigo ='FSC3'),(select id from disciplina where codigo ='FSC1')),
       ((select id from disciplina where codigo ='FSC3'),(select id from disciplina where codigo ='CAL3')),
       ((select id from disciplina where codigo ='SOP'),(select id from disciplina where codigo ='PRG2')),
       ((select id from disciplina where codigo ='SOP'),(select id from disciplina where codigo ='MIC')),
       ((select id from disciplina where codigo ='SIS1'),(select id from disciplina where codigo ='CAL4')),
       ((select id from disciplina where codigo ='SIS1'),(select id from disciplina where codigo ='ALG')),
       ((select id from disciplina where codigo ='SIS1'),(select id from disciplina where codigo ='CIE2'));


# Prérequisito 6ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='FEN'),(select id from disciplina where codigo ='FSC2')),
       ((select id from disciplina where codigo ='PRE'),(select id from disciplina where codigo ='EST')),
       ((select id from disciplina where codigo ='PRE'),(select id from disciplina where codigo ='CAL4')),
       ((select id from disciplina where codigo ='ANT'),(select id from disciplina where codigo ='FSC3')),
       ((select id from disciplina where codigo ='STD'),(select id from disciplina where codigo ='RED1')),
       ((select id from disciplina where codigo ='STD'),(select id from disciplina where codigo ='SOP')),
       ((select id from disciplina where codigo ='STD'),(select id from disciplina where codigo ='POO')),
       ((select id from disciplina where codigo ='DLP1'),(select id from disciplina where codigo ='CIL')),
       ((select id from disciplina where codigo ='SIS2'),(select id from disciplina where codigo ='SIS1')),
       ((select id from disciplina where codigo ='PJI2'),(select id from disciplina where codigo ='PJI1')),
       ((select id from disciplina where codigo ='PJI2'),(select id from disciplina where codigo ='RED2')),
       ((select id from disciplina where codigo ='PJI2'),(select id from disciplina where codigo ='MIC')),
	   ((select id from disciplina where codigo ='PJI2'),(select id from disciplina where codigo ='STD'));


# Prérequisito 7ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo = 'RTX'),(select id from disciplina where codigo = 'RED1')),
       ((select id from disciplina where codigo = 'RTX'),(select id from disciplina where codigo = 'SIS2')),
       ((select id from disciplina where codigo = 'MTG'),(select id from disciplina where codigo = 'SIS2')),
       ((select id from disciplina where codigo = 'MTG'),(select id from disciplina where codigo = 'FSC3')),
       ((select id from disciplina where codigo = 'DLP2'),(select id from disciplina where codigo = 'DLP1')),
       ((select id from disciplina where codigo = 'DLP2'),(select id from disciplina where codigo = 'MIC')),
       ((select id from disciplina where codigo = 'PSD'),(select id from disciplina where codigo = 'SIS2')),
       ((select id from disciplina where codigo = 'PSD'),(select id from disciplina where codigo = 'DLP1')),
       ((select id from disciplina where codigo = 'COM1'),(select id from disciplina where codigo = 'SIS2')),
       ((select id from disciplina where codigo = 'COM1'),(select id from disciplina where codigo = 'PRE'));


# Prérequisito 8ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='CSF'),(select id from disciplina where codigo ='ANT')),
       ((select id from disciplina where codigo ='CSF'),(select id from disciplina where codigo ='PRE')),
       ((select id from disciplina where codigo ='BCD'),(select id from disciplina where codigo ='POO')),
       ((select id from disciplina where codigo ='STE'),(select id from disciplina where codigo ='SOP')),
       ((select id from disciplina where codigo ='PTC'),(select id from disciplina where codigo ='RED2')),
       ((select id from disciplina where codigo ='PTC'),(select id from disciplina where codigo ='PRG2')),
       ((select id from disciplina where codigo ='COM2'),(select id from disciplina where codigo ='COM1')),
       ((select id from disciplina where codigo ='PJI3'),(select id from disciplina where codigo ='PJI2')),
       ((select id from disciplina where codigo ='PJI3'),(select id from disciplina where codigo ='PSD')),
       ((select id from disciplina where codigo ='PJI3'),(select id from disciplina where codigo ='COM1')),
       ((select id from disciplina where codigo ='PJI3'),(select id from disciplina where codigo ='STE')),
       ((select id from disciplina where codigo ='PJI3'),(select id from disciplina where codigo ='DLP2'));


# Prérequisito 9ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='SMU'),(select id from disciplina where codigo ='RED2')),
       ((select id from disciplina where codigo ='ADS'),(select id from disciplina where codigo ='PTC')),
       ((select id from disciplina where codigo ='ADS'),(select id from disciplina where codigo ='PRE')),
       ((select id from disciplina where codigo ='STC'),(select id from disciplina where codigo ='COM1')),
       ((select id from disciplina where codigo ='STC'),(select id from disciplina where codigo ='RTX')),
       ((select id from disciplina where codigo ='CRF'),(select id from disciplina where codigo ='COM1')),
       ((select id from disciplina where codigo ='CRF'),(select id from disciplina where codigo ='DLP1')),
       ((select id from disciplina where codigo ='CRF'),(select id from disciplina where codigo ='ANT'));


# Prérequisito 10ª fase.
insert into preRequisito(disciplina, preRequisito)
values ((select id from disciplina where codigo ='TCC2'),(select id from disciplina where codigo ='TCC1')),
       ((select id from disciplina where codigo ='TCC2'),(select id from disciplina where codigo ='PJI3'));

#-----------------------------------------Cadastrando horários das disciplinas:-------------------------------------------------------------------

# Convenção do horário.
# Turno    0-> Matutino    | 1->Vespertino    | 2->Noturno.
# numAula  0-> 7:30 - 9:20 | 1-> 9:40 - 11:30 | 2-> 13:30 - 16:20 | 3-> 13:30 - 16:20 | 4-> 18:30 - 20:20 | 5-> 20:40 - 22:30.
# numDia   0-> Domingo     | 1->Segunda       | 2->Terça          | 3-> Quarta        | 4-> Quinta        | 5-> Sexta          | 6-> Sábado.
# semanaAB 0-> A/B         | 1-> A            | 2->B
 
# 1ª fase
# Obs: Falta quinta- ferira.
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('0','0','1','0',(select id from disciplina where codigo = 'GAL'),'20161'),
       ('0','1','1','0',(select id from disciplina where codigo = 'CAL1'),'20161'),
 
       ('0','0','2','0',(select id from disciplina where codigo = 'ELI1'),'20161'),
       ('0','1','2','1',(select id from disciplina where codigo = 'GAL'),'20161'),
       ('0','1','2','2',(select id from disciplina where codigo = 'FSC1'),'20161'),     
       ('1','2','2','0',(select id from disciplina where codigo = 'DES'),'20161'),
       ('1','3','2','0',(select id from disciplina where codigo = 'DES'),'20161'),
 
       ('0','0','3','0',(select id from disciplina where codigo = 'CAL1'),'20161'),
       ('0','1','3','0',(select id from disciplina where codigo = 'PJI1'),'20161'),
        
       ('0','0','5','0',(select id from disciplina where codigo = 'FSC1'),'20161'),
       ('0','1','5','0',(select id from disciplina where codigo = 'LOG'),'20161');


# 2ª fase
# Obs: Falta quarta-ferira e  dúvida de sexta-feira de manhã.
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('1','2','1','0',(select id from disciplina where codigo ='CAL2'),'20161'),
       ('1','3','1','0',(select id from disciplina where codigo ='FSC2'),'20161'),

       ('1','2','2','0',(select id from disciplina where codigo ='CIE1'),'20161'),
       ('1','3','2','0',(select id from disciplina where codigo ='FSC2'),'20161'),

       ('1','2','4','1',(select id from disciplina where codigo ='ALG'),'20161'),
       ('1','2','4','2',(select id from disciplina where codigo ='FSC2'),'20161'),
       ('1','3','4','0',(select id from disciplina where codigo ='FSC2'),'20161'),

       ('1','2','2','0',(select id from disciplina where codigo ='QMC1'),'20161'),
       ('0','1','5','0',(select id from disciplina where codigo ='QMC1'),'20161'),
       ('1','2','5','0',(select id from disciplina where codigo ='CAL2'),'20161'),
       ('1','3','5','0',(select id from disciplina where codigo ='ALG'),'20161');

# 3ª fase
# Obs: Falta quarta-ferira e  dúvida de sexta-feira de manhã.
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('0','0','1','0',(select id from disciplina where codigo ='ELA1'),'20161'),
       ('0','1','1','0',(select id from disciplina where codigo ='CAL3'),'20161'),

       ('0','0','2','0',(select id from disciplina where codigo ='CIL'),'20161'),
       ('0','1','2','0',(select id from disciplina where codigo ='PRG2'),'20161'),

       ('0','0','3','1',(select id from disciplina where codigo ='CIL'),'20161'),
       ('0','1','3','2',(select id from disciplina where codigo ='ELA1'),'20161'),
       ('1','2','3','0',(select id from disciplina where codigo ='QMC2'),'20161'),

       ('0','0','4','0',(select id from disciplina where codigo ='CIE2'),'20161'),
       ('1','1','4','0',(select id from disciplina where codigo ='CAL3'),'20161'),
       
       ('0','0','5','0',(select id from disciplina where codigo ='CIE2'),'20161'),
       ('1','1','5','0',(select id from disciplina where codigo ='PRG2'),'20161');


# 4ª fase
# Obs: Falta quarta-ferira e  dúvida de sexta-feira de manhã.
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('1','2','1','0',(select id from disciplina where codigo ='MIC'),'20161'),
       ('1','3','1','0',(select id from disciplina where codigo ='ELA2'),'20161'),

	
       ('0','1','2','0',(select id from disciplina where codigo ='MEC'),'20161'),
       ('1','2','2','0',(select id from disciplina where codigo ='POO'),'20161'),
       ('1','3','2','0',(select id from disciplina where codigo ='RED1'),'20161'),

       ('1','2','3','0',(select id from disciplina where codigo ='CAL4'),'20161'),
       ('1','3','3','0',(select id from disciplina where codigo ='ELA2'),'20161'),

       ('1','2','4','0',(select id from disciplina where codigo ='POO'),'20161'),
       ('1','3','4','0',(select id from disciplina where codigo ='MIC'),'20161'),
       
       ('1','2','5','0',(select id from disciplina where codigo ='CAL4'),'20161'),
       ('1','3','5','0',(select id from disciplina where codigo ='RED1'),'20161');

# 5ª fase
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('0','0','1', '0' , (select id from disciplina where codigo ='RED2'),'20161'),
       ('0','1','1', '1' ,(select id from disciplina where codigo = 'EST' ),'20161'),
       ('0','1','1', '2' , (select id from disciplina where codigo ='FSC3'),'20161'),
       ('1','2','1', '0' ,(select id from disciplina where codigo = 'MPQ'),'20161'),

       ('0','0','2','0',(select id from disciplina where codigo ='SIS1'),'20161'),
       ('0','1','2','0',(select id from disciplina where codigo ='FSC3'),'20161'),

       ('0','0','3','0',(select id from disciplina where codigo ='SIS1'),'20161'),
       ('0','1','3','0',(select id from disciplina where codigo ='SOP'),'20161'),

       ('0','0','4','0',(select id from disciplina where codigo ='EST'),'20161'),
       ('0','1','4','0',(select id from disciplina where codigo ='RED2'),'20161'),
       
       ('0','0','5','0',(select id from disciplina where codigo ='SOP'),'20161'),
       ('0','1','5','0',(select id from disciplina where codigo ='FSC3'),'20161');

# 6ª fase
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('0','1','1', '0' , (select id from disciplina where codigo ='FEN'),'20161'),
       ('1','2','1', '1' , (select id from disciplina where codigo ='STD') ,'20161'),
       ('1','2','1', '2' , (select id from disciplina where codigo ='PRE'),'20161'),
       ('1','3','1', '0' , (select id from disciplina where codigo ='DLP1') ,'20161'),

       ('1','2','2','0',(select id from disciplina where codigo ='PRE'),'20161'),
       ('1','3','2','0',(select id from disciplina where codigo ='PJI2'),'20161'),

       ('1','2','3','0',(select id from disciplina where codigo ='DLP1'),'20161'),
       ('1','3','3','0',(select id from disciplina where codigo ='SIS2'),'20161'),

       ('1','1','4', '0' ,(select id from disciplina where codigo = 'SIS2'),'20161'),
       ('1','1','4', '1' ,(select id from disciplina where codigo ='DLP1' ),'20161'),
       ('1','1','4', '2' ,(select id from disciplina where codigo ='ANT'),'20161'),
      
       
       ('1','2','5','0',(select id from disciplina where codigo ='ANT'),'20161'),
       ('1','3','5','0',(select id from disciplina where codigo ='STD'),'20161');

# 7ª fase
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('0','0','1', '0' , (select id from disciplina where codigo ='MTG'),'20161'),
       ('0','1','1', '0' , (select id from disciplina where codigo ='COM1') ,'20161'),


       ('0','0','2','0',(select id from disciplina where codigo ='PSD'),'20161'),
       ('0','1','2','0',(select id from disciplina where codigo ='DLP1'),'20161'),

       ('0','0','3','0',(select id from disciplina where codigo ='COM1'),'20161'),
       ('0','1','3','0',(select id from disciplina where codigo ='RTX'),'20161'),

       ('0','0','4', '0' ,(select id from disciplina where codigo ='PSD'),'20161'),
       ('0','1','4', '1' ,(select id from disciplina where codigo = 'DLP1' ),'20161'),
       ('0','1','1', '2' ,(select id from disciplina where codigo = 'COM1') ,'20161'),
       
       ('0','0','5','0',(select id from disciplina where codigo ='MTG'),'20161'),
       ('0','1','5','2',(select id from disciplina where codigo = 'RTX'),'20161'),
       ('1','2','5','0',(select id from disciplina where codigo ='PTG'),'20161');

# 8ª fase
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('1','2','1', '0' , (select id from disciplina where codigo ='CSF'),'20161'),
       ('1','3','1', '0' , (select id from disciplina where codigo ='PJI3') ,'20161'),

       ('1','2','2','0',(select id from disciplina where codigo ='STE'),'20161'),
       ('1','3','2','0',(select id from disciplina where codigo ='CSF'),'20161'),

       ('0','1','3', '0' ,(select id from disciplina where codigo ='ADM'),'20161'),	
       ('1','2','3','0',(select id from disciplina where codigo ='PTC'),'20161'),
       ('1','3','3','0',(select id from disciplina where codigo ='COM2'),'20161'),

       ('1','2','4', '0' ,(select id from disciplina where codigo ='COM2'),'20161'),
       ('1','3','4', '1' ,(select id from disciplina where codigo ='PTC') ,'20161'),
       ('1','3','4', '2' , (select id from disciplina where codigo ='BCD'),'20161'),
       
       ('1','2','5','0',(select id from disciplina where codigo ='BCD'),'20161'),
       ('1','3','5','0',(select id from disciplina where codigo ='STE'),'20161');

# 9ª fase
insert into horario(turno, numAula, numDia, semanaAB, codigoDisciplina, semestre)
values ('0','0','1', '0' ,(select id from disciplina where codigo ='ECO'),'20161'),
       ('0','1','1', '0' ,(select id from disciplina where codigo ='ADS'),'20161'),

       ('0','0','2','0',(select id from disciplina where codigo ='STC'),'20161'),
       ('0','1','2','0',(select id from disciplina where codigo ='SUS'),'20161'),

       ('0','0','3', '0' ,(select id from disciplina where codigo ='STC'),'20161'),	
       ('0','1','3','0',(select id from disciplina where codigo ='TCC1'),'20161'),

       ('0','0','4', '0' , (select id from disciplina where codigo ='SMU' ),'20161'),
       ('0','1','4', '0' ,(select id from disciplina where codigo = 'CRF') ,'20161'),
       
       ('0','0','5','1',(select id from disciplina where codigo ='ADS'),'20161'),
       ('0','0','5','2',(select id from disciplina where codigo ='SMU'),'20161'),
       ('0','1','5','0',(select id from disciplina where codigo ='CRF'),'20161');

