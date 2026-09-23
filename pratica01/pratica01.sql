-- Active: 1790123255201@@127.0.0.1@5432@bd_hortifruti@public
CREATE DATABASE bd_hortifruti;


DROP TABLE IF EXISTS itens_venda;

CREATE TABLE itens_venda (
    Id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
     venda_id INTEGER NOT NULL,
     data_venda DATE,
     bairro_entrega TEXT,
     produto_id INTEGER NOT NULL,
     produto_nome VARCHAR(50) NOT NULL,
     categoria VARCHAR(50) NOT NULL,
     unidade VARCHAR(10) NOT NULL,
     quantidade NUMERIC(10,5) NOT NULL,
     valor_unitario NUMERIC(10,5) NOT NULL

);



INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
(3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 1.235, 5.99),
(3001, '2026-08-03', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.874, 7.49),
(3001, '2026-08-03', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 2.99),
(3001, '2026-08-03', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 2.000, 2.50),
(3002, '2026-08-03', NULL, 6, 'Batata', 'Legume', 'Kg', 2.140, 4.99),
(3002, '2026-08-03', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.965, 5.19),
(3003, '2026-08-03', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 2.000, 7.90),
(3003, '2026-08-03', 'Centro', 2, 'Laranja pera', 'Fruta', 'Kg', 3.180, 3.79),
(3003, '2026-08-03', 'Centro', 8, 'Cenoura', 'Legume', 'Kg', 1.020, 4.29),

(3004, '2026-08-04', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.460, 7.49),
(3004, '2026-08-04', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.785, 4.49),
(3004, '2026-08-04', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.00),
(3005, '2026-08-04', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90),
(3006, '2026-08-04', 'Lagoinha', 1, 'Banana prata', 'Fruta', 'Kg', 2.310, 5.99),
(3006, '2026-08-04', 'Lagoinha', 6, 'Batata', 'Legume', 'Kg', 1.505, 4.99),
(3006, '2026-08-04', 'Lagoinha', 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 2.99),
(3006, '2026-08-04', 'Lagoinha', 12, 'Cheiro-verde', 'Verdura', 'UN', 1.000, 2.50),

(3007, '2026-08-05', NULL, 2, 'Laranja pera', 'Fruta', 'Kg', 2.450, 3.49),
(3007, '2026-08-05', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.635, 7.99),
(3008, '2026-08-05', NULL, 8, 'Cenoura', 'Legume', 'Kg', 0.780, 4.39),
(3008, '2026-08-05', NULL, 9, 'Cebola', 'Legume', 'Kg', 1.215, 5.19),
(3008, '2026-08-05', NULL, 11, 'Couve', 'Verdura', 'UN', 2.000, 3.00),
(3009, '2026-08-05', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 7.50),
(3009, '2026-08-05', 'Centro', 4, 'Morango', 'Fruta', 'UN', 1.000, 9.49),
(3009, '2026-08-05', 'Centro', 1, 'Banana prata', 'Fruta', 'Kg', 1.890, 6.29),

(3010, '2026-08-06', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 0.925, 4.79),
(3010, '2026-08-06', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 3.29),
(3011, '2026-08-06', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.975, 8.49),
(3011, '2026-08-06', NULL, 6, 'Batata', 'Legume', 'Kg', 3.020, 5.29),
(3011, '2026-08-06', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 3.000, 2.50),
(3012, '2026-08-06', 'Planalto', 2, 'Laranja pera', 'Fruta', 'Kg', 4.060, 3.49),
(3012, '2026-08-06', 'Planalto', 8, 'Cenoura', 'Legume', 'Kg', 1.340, 4.39),

(3013, '2026-08-07', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0.965, 6.49),
(3013, '2026-08-07', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.540, 5.49),
(3013, '2026-08-07', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.50),
(3014, '2026-08-07', 'Lagoinha', 4, 'Morango', 'Fruta', 'UN', 3.000, 8.90),
(3014, '2026-08-07', 'Lagoinha', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 6.99),

(3015, '2026-08-08', NULL, 6, 'Batata', 'Legume', 'Kg', 1.250, 5.49),
(3016, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
(3016, '2026-08-08', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.360, 4.79);

INSERT INTO itens_venda
    (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
    VALUES
    (3017, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
    (3017, '2026-08-08', NULL, 10, 'Alface-crespa', 'Verdura', 'UN', 1.000, 3.29),
    (3017, '2026-08-08', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90);

SELECT * FROM itens_venda;
-------------------------------------
SELECT DISTINCT
  produto_id,
  produto_nome,
  categoria,
  unidade

FROM
 itens_venda

ORDER BY
    produto_id;
--------------------------------------
SELECT 
    venda_id,
    produto_nome,
    valor_unitario
FROM 
   itens_venda

 WHERE categoria IN ('Legume', 'Verdura')
  AND valor_unitario BETWEEN 3.00 AND 5.00
ORDER BY valor_unitario DESC, venda_id;
-----------------------------------------------

SELECT
    venda_id,
    data_venda,
    produto_nome,
    quantidade
FROM 
    itens_venda
WHERE 
    produto_nome LIKE 'Batata%'
ORDER BY 
    data_venda, venda_id;
------------------------------------------
SELECT DISTINCT
    venda_id,
    data_venda,
    bairro_entrega
FROM 
    itens_venda
WHERE 
    bairro_entrega IS NOT NULL
ORDER BY 
    venda_id;

------------------------------------------------------------
SELECT
    venda_id,
    produto_nome,
    quantidade,
    unidade,
    valor_unitario,
    ROUND(quantidade * valor_unitario, 2) AS valor_item
FROM 
    itens_venda
ORDER BY 
   valor_item DESC, venda_id
LIMIT 5 OFFSET 5;


---------------------------------------------------------------



SELECT
    venda_id,
    data_venda,
    COALESCE(bairro_entrega, 'Retirada no balcao') AS destino,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS valor_total
FROM itens_venda
GROUP BY
    venda_id,
    data_venda,
    bairro_entrega
ORDER BY valor_total DESC;

--------------------------------------------------------------------

SELECT
    data_venda,
    COUNT(DISTINCT venda_id) AS vendas,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
GROUP BY data_venda
ORDER BY data_venda;

-------------------------------------------------------------------
SELECT
    produto_id,
    produto_nome,
    unidade,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento,
    ROUND(AVG(valor_unitario), 2) AS media_simples,
    ROUND(
        SUM(quantidade * valor_unitario) / SUM(quantidade),
        2
    ) AS media_ponderada
FROM itens_venda
GROUP BY
    produto_id,
    produto_nome,
    unidade
ORDER BY faturamento DESC;
------------------------------------------------------------------

SELECT
    categoria,
    unidade,
    COUNT(*) AS itens,
    SUM(quantidade) AS qtd_total,
    SUM(quantidade * valor_unitario) AS faturamento
FROM itens_venda
GROUP BY categoria, unidade
ORDER BY categoria, unidade;
-------------------------------------------------------------
SELECT
    bairro_entrega,
    entregas,
    faturamento
FROM (
    SELECT
        bairro_entrega,
        COUNT(DISTINCT venda_id) AS entregas,
        SUM(quantidade * valor_unitario) AS faturamento
    FROM itens_venda
    WHERE bairro_entrega IS NOT NULL
    GROUP BY bairro_entrega
) AS bairros
WHERE faturamento > 40
ORDER BY faturamento DESC;
-------------------------------------------------------------
SELECT
    venda_id,
    ROUND(SUM(quantidade * valor_unitario), 2) AS total_arredondado,
    SUM(ROUND(quantidade * valor_unitario, 2)) AS soma_dos_itens_arredondados
FROM itens_venda
GROUP BY venda_id
HAVING ROUND(SUM(quantidade * valor_unitario), 2)
       != SUM(ROUND(quantidade * valor_unitario, 2))
ORDER BY venda_id;


-- Questão 1:
-- As colunas que repetem informações que pertencem somente à venda são:
-- venda_id, data_venda e bairro_entrega.
-- As colunas que repetem informações que pertencem somente ao produto são:
-- produto_id, produto_nome, categoria e unidade.
-- O valor_unitario não está na mesma situação porque ele pertence ao item da venda.
-- O preço pode mudar de uma venda para outra, por isso o mesmo produto pode ter
-- valores unitários diferentes em vendas diferentes.
-- Se o nome de um produto fosse alterado somente em algumas linhas, a Consulta 1
-- poderia apresentar o mesmo produto com nomes diferentes.
-- Na Consulta 8, o produto também poderia aparecer separado em mais de uma linha,
-- fazendo com que suas quantidades, faturamento e médias fossem calculados
-- separadamente para cada nome.

-- Questão 2:
-- Duas regras do minimundo que a tabela não garante são:
-- 1. A quantidade de cada item deve ser maior que zero.
-- 2. Um produto pode aparecer no máximo uma vez em cada venda.
--
-- Exemplo de INSERT que o SGBD aceitaria, mas que viola a primeira regra:
-- INSERT INTO itens_venda
-- (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
-- categoria, unidade, quantidade, valor_unitario)
-- VALUES
-- (3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0, 5.99);

-- Questão 3:
-- A média ponderada do morango é menor que a média simples porque o preço
-- menor do morango foi praticado em uma quantidade maior de unidades.
-- Assim, o preço menor tem maior peso no cálculo da média ponderada.
--
-- A média ponderada do abacaxi é maior que a média simples porque o preço
-- maior do abacaxi foi praticado em uma quantidade maior de unidades.
-- Assim, o preço maior tem maior peso no cálculo da média ponderada.
--
-- As duas médias do cheiro-verde são iguais porque ele foi vendido sempre
-- pelo mesmo valor unitário (R$ 2,50). Como todos os preços são iguais,
-- tanto a média simples quanto a média ponderada resultam em R$ 2,50.