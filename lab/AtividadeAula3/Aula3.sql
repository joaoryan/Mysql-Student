create database if not exists atividadeAula3;

use atividadeaula3;

create table produto(
	codigo int,
    nome varchar(50),
    preco float,
    fornecedor varchar(50),
    primary key(codigo)
);

# 1) Façam a inserção dos dados acima na tabela. 
insert into produto() values(1234, 'Óleo', '8',	'Soya');
insert into produto() values(1357, 'Arroz', '28', 'BeansHouse');
insert into produto() values(3698, 'Feijão', '7.5',	'BeansHouse');
insert into produto() values(2370, 'Batata Baroa', '3',	'Legumes-To Go');
insert into produto() values(564, 'Batata Doce', '3.5',	'Legumes-To Go');
insert into produto() values(2141, 'Miojo', '0.9',	'Nissin');
select * from produto;

# 2) Alterem o fornecedor do produto de código igual a 1234 para “Lisa”.
update produto set fornecedor = 'Lisa' where codigo = 1234;
select * from produto;

# 3) Deletem o produto de código igual a 2141.
delete from produto where codigo = 2141;
select * from produto;

# 4) Busquem o nome de todos os fornecedores sem repetição.
select nome from produto;

# 5) Busquem todos os dados dos produtos que tenham Batata no nome. 
select * from produto where nome like 'Batata%';

# 6) Busquem o nome e o fornecedor dos produtos com preço acima de 5 reais.
select nome,fornecedor from produto where preco > 5;

#Desafio
# 1) Busquem o menor preço entre os produtos da tabela.
select preco from produto where preco = (select min(preco) from produto);

# 2) Busquem a média dos preços dos produtos.
select avg(preco) from produto;

# 3) Busquem o número de produtos inseridos na tabela.
select COUNT(*)  from produto;





