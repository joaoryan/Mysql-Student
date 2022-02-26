# Mysql-Student
Estudos sobre Mysql Workbench

## Comandos Basicos de sql

## **Criando banco de dados**
Apaga o banco caso exista um com o mesmo nome:
```
drop database nomeDoBanco;
```
Cria um banco de dados:
```
create database nomeDoBanco;
```
Ou podemos verificar se existe um banco e se não existir cria:
```
create database if not exists nomeDoBanco;
```
## **Criando tabela**
```
create table nomeDaTabela(
  cpf varchar(20) primary key, //chave primaria so existe uma
  nome varchar(50),
  idade int,
  curso varchar(3)
);
```

## **Inserindo valores na tabela**
```
insert into aluno() values(1234, 'joao', '20',	'ges');
```

## **Inserindo ou atualizando valores do campo da tabela**
Removendo segurança caso seja nescesario 
```
set sql_safe_updates =0;
```
Atualizando campo da tabela
```
update aluno set curso = 'gec' where cpf = 9876;
```

## **Buscar**
Buscar todos os itens da tabela
```
select * from nomeDaTabela
```

## **Busca com filtro
Buscar itens de nome e curso na tabela 
```
select nome,curso from aluno;
```
Buscar itens com condição
```
select nome,curso from aluno where idade < 30;

select nome,curso from aluno where idade < 30 or curso ='ges';
```
Verifica um nome que começa com j
```
select nome,curso from aluno where nome like 'j%';
```
Verificar um nome que 'j' a segunda letra não sei e a terceira e 'a'
```
select nome,curso from aluno where nome like 'j_a%';
```
Buscar um nome que contenha a letra a
```
select nome,curso from aluno where nome like '%a%';
```
Buscar pela maior idade
```
select max(idade) from aluno;
```
Buscar pela maior idade  e pegar seus dados
```
select * from aluno where idade = (select max(idade) from aluno);
```
Buscar 2 alunos
```
select * from aluno limit 2;
```
Buscar alunos que a idade não seja 23 anos
```
select * from aluno where not idade = 23;
```
Buscar valores distintos
```
select distinct(curso) from aluno;
```
