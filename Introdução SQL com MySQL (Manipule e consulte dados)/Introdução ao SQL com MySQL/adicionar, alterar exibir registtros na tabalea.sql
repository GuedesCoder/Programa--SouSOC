use sucos;

alter table tbcliente add primary key (CPF);

alter table tbcliente add column (DATA_NASCIMENTO Date);

insert into tbcliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRAS, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
values ('12345678901','Imac Sumac Borborma Choquecágua','Av: Esplanada dos Barreiros, Nº 1755 apto 288','','Esplanada dos Barreiros','São Vicente','SP','11310050',29,'F',10000.00,3750,0,'1993-04-19');

update tbcliente set CEP = '11396715'
where CPF = '12345678901';

update tbcliente set CPF = '12345678910'
where CPF = '12345678901';

select*from tbcliente;	