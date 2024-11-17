-- lista com o nome de todas as mulheres
select nome from pessoas
where sexo = 'F';


-- lista com dados de quem nasceu entre 1 jan 2000 e 31 dez 2015
select * from pessoas
where nascimento between'2000-1-1' and '2015-12-31';


-- lista com o nome de todos os homens que são programadores
select nome, profissao from pessoas
where profissao = 'Programador' and sexo = 'M';


-- lista com dados de todas as mulheres que nasceram no Brasil e que tem o nome inciado com J
select * from pessoas
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';


-- lista com nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100kg
select nome, nacionalidade from pessoas
where nome like '%Silva%' and nacionalidade != 'Brasil' and peso < 100;


-- qual a maior altura entre os homens que moram no Brasil?
select max(altura) from pessoas
where sexo = 'M' and nacionalidade = 'Brasil';


-- qual a média de peso de todos cadastrados?
select avg(peso) from pessoas;


-- qual o menor peso entre as mulheres que nasceram fora do Brasil e entre 1 jan 1990 e 31 dez 2000?
select min(peso) from pessoas
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between  '1990-1-1' and '2000-12-31';


-- quantas mulheres tem mais de 1.90 de altura?
select nome, altura from pessoas
where sexo = 'F' and altura > 1.90;

