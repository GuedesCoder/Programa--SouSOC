use sucos;

update tbproduto set TAMANHO = '350ml'
where PRODUTO = '544931';

update tbproduto set Embalagem = 'Garrafa'
where PRODUTO = '1078680';

update tbproduto set TAMANHO = '350ml'
where PRODUTO = '1040107';

select * from tbproduto;