select * FROM tabela_de_produtos where SABOR = 'Manga' or TAMANHO = '470 ml';

select * FROM tabela_de_produtos where SABOR = 'Manga' and TAMANHO = '470 ml';

select * FROM tabela_de_produtos where not (SABOR = 'Manga' and TAMANHO = '470 ml');

select * FROM tabela_de_produtos where not (SABOR = 'Manga' or TAMANHO = '470 ml');

select * FROM tabela_de_produtos where SABOR = 'Manga' and not (TAMANHO = '470 ml');

select * from tabela_de_produtos where SABOR in ('Laranja','Manga');

select * from tabela_de_produtos where SABOR ='Laranja' or SABOR = 'Manga';

select * from tabela_de_clientes where CIDADE in ('Rio de Janeiro','São Paulo') and IDADE >= 20;

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro','São Paulo') AND (IDADE >= 18 AND IDADE <= 40);