select current_timestamp() AS DATA_E_HORA;

SELECT DATEDIFF('2023-06-15','2023-03-28') AS DIFERENÇA_ENTRE_DATAS;
SELECT DATEDIFF(CURRENT_TIMESTAMP(),'2022-03-28') AS DIFERENÇA_ENTRE_DATAS;
SELECT DATEDIFF(CURRENT_TIMESTAMP(),'1986-02-02') AS DIFERENÇA_ENTRE_DATAS;

SELECT DATE_ADD('2022-04-28', INTERVAL 311 DAY) AS DATA_SOMADA_311_DIAS

SELECT DATE_FORMAT("2000-02-06", "%d-%M-%Y") AS DD_MM_AAAA; /*Obs: os formatos dos "%"são case sensitive.*/

SELECT DATE_FORMAT(DATA_DE_NASCIMENTO, '%d %M %Y') AS DATA_DE_NASCIMENTO_DD_MM_AAAA FROM tabela_de_clientes
ORDER BY YEAR(DATA_DE_NASCIMENTO);

SELECT DISTINCT DATA_DE_NASCIMENTO,
DAY(DATA_DE_NASCIMENTO) AS DIA_DO_MÊS,DAYNAME(DATA_DE_NASCIMENTO) AS DIA_DA_SEMANA, MONTHNAME(DATA_DE_NASCIMENTO) AS MÊS,
YEAR(DATA_DE_NASCIMENTO) AS ANO FROM tabela_de_clientes
ORDER BY YEAR(DATA_DE_NASCIMENTO);

SELECT NOME, TIMESTAMPDIFF (YEAR,DATA_DE_NASCIMENTO, CURDATE()) AS IDADE FROM  tabela_de_clientes
ORDER BY IDADE DESC;

SELECT CONCAT('Cliente: ',NOME,' nasceu em: ',DATE_FORMAT(DATA_DE_NASCIMENTO,'%W - %d/%M/%Y')) 
AS ANIVERSÁRIOS_DE_CLIENTES FROM tabela_de_clientes

