# Mysql-Student
Estudos sobre Mysql Workbench

## Comandos Basicos de sql

### CRIAR BANCO =>

Apaga o banco caso exista um com o mesmo nome:

drop database nomeDoBanco;

Cria um banco de dados:
create database nomeDoBanco;

ou

Podemos verificar se existe um banco e se não existir cria:

create database if not exists nomeDoBanco; 

### CRIANDO TABELA =>

ex:
create table nomeDaTabela(
  cpf varchar(20) primary key, //chave primaria so existe uma
  nome varchar(50),
  idade int,
  curso varchar(3)
);


### INSERIR VALORES =>

insert into aluno() values(1234, 'joao', '20',	'ges');

BUSCAR

//busca tudo
select * from aluno;

COLOCANDO ITEM EM CAMPOS

tirar segurança
set sql_safe_updates =0;

atualizar algo
ex:
update aluno set curso = 'gec' where cpf = 9876;


BUSCAS COM FILTOS

select nome,curso from aluno;

//ondiçoes
select nome,curso from aluno where idade < 30;

select nome,curso from aluno where idade < 30 or curso ='ges';

//verifica um nome que começa com j
select cpf,curso from aluno where nome like 'j%';

//'j' a segunda letra não sei e a terceira e 'a'
select nome,curso from aluno where nome like 'j_a%';

//ver nome com letra 'a'
select nome,curso from aluno where nome like '%a%';

//ver maior idade
select max(idade) from aluno;

//ver a idade maior e pegar seus dados
select * from aluno where idade = (select max(idade) from aluno);

//busca 2 alunos
select * from aluno limit 2;

//não pegar com idade 23
select * from aluno where not idade = 23;

//valores distintos
select distinct(curso) from aluno;
