SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO;

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO DESC;

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM, NOME_DO_PRODUTO;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) as LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM; /*Mostra o maior valor 
no campo preço de lista da tabela de produtos e apresenta o resultado agrupado por embalagem.*/

SELECT EMBALAGEM, COUNT(*) as CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM; /*Mostra a quantidade de produtos totais
agrupados por embalagem, ou seja, para garrafa temos 11 produtos, para PET temos 15 produtos e para Lata temos 5 produtos*/

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes GROUP BY BAIRRO;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro' GROUP BY BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes GROUP BY ESTADO, BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro' GROUP BY ESTADO, BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' 
GROUP BY ESTADO, BAIRRO 
ORDER BY BAIRRO;