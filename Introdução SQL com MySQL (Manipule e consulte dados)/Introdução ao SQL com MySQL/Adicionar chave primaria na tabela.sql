use sucos;

alter table tbproduto add primary key (PRODUTO);

INSERT INTO tbproduto (PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,PRECO_LISTA)
VALUES('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470ml','Manga',5.18);

update tbproduto set Embalagem = 'Garrafa'
where PRODUTO = '1078680';

select * from tbproduto