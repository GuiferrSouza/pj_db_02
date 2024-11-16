-- 1) Listar os produtos mais vendidos (com base na quantidade)
SELECT e.descricao AS peca, SUM(pe.quantidade) AS quantidade_vendida
FROM estoque JOIN pedido_estoque pe ON e.id = pe.id_estoque
GROUP BY e.descricao ORDER BY quantidade_vendida DESC;

-- 2) Clientes com o maior valor de compras
SELECT c.nome AS cliente, SUM(pe.quantidade * pe.preco_unitario) AS total
FROM cliente c JOIN pedido_cliente pc ON c.id = pc.id_cliente
JOIN pedido_estoque pe ON pc.id_pedido = pe.id_pedido
GROUP BY c.nome ORDER BY total DESC;

-- 3) Produtos com um fabricante específico (ABB)
SELECT e.id AS id_estoque, e.descricao AS peca, e.disponivel AS disponivel
FROM estoque e JOIN estoque_fabricante ef ON e.id = ef.id_estoque
JOIN fabricante f ON ef.id_fabricante = f.id
WHERE f.nome = 'ABB' ORDER BY e.descricao;

-- 4) Produtos que nunca foram vendidos
SELECT e.descricao AS peca
FROM estoque e LEFT JOIN pedido_estoque pe ON e.id = pe.id_estoque
WHERE pe.id_estoque IS NULL;

-- 5) Categoria com o maior número de produtos
SELECT TOP 1 c.nome AS categoria, COUNT(ec.id_estoque) AS quantidade
FROM categoria c JOIN estoque_categoria ec ON c.id = ec.id_categoria
GROUP BY c.nome ORDER BY quantidade DESC;

-- 6) Pedidos realizados por cliente em um período de tempo específico (entre jan 2023 - dez 2023)
SELECT c.nome AS cliente, COUNT(p.id) AS quantidade
FROM cliente c JOIN pedido_cliente pc ON c.id = pc.id_cliente JOIN pedido p ON pc.id_pedido = p.id
WHERE p.data_pedido BETWEEN '2023-01-01' AND '2023-12-31' GROUP BY c.nome;

-- 7) Clientes que compraram em mais de uma categoria de produto
SELECT c.nome AS cliente, COUNT(DISTINCT ec.id_categoria) AS qtde_categorias
FROM cliente c JOIN pedido_cliente pc ON c.id = pc.id_cliente
JOIN pedido_estoque pe ON pc.id_pedido = pe.id_pedido
JOIN estoque_categoria ec ON pe.id_estoque = ec.id_estoque
GROUP BY c.nome HAVING COUNT(DISTINCT ec.id_categoria) > 1;

-- 8) Faturamento total por fabricante
SELECT f.nome AS fabricante, SUM(pe.quantidade * pe.preco_unitario) AS faturamento
FROM fabricante f JOIN  pedido_fabricante pf ON f.id = pf.id_fabricante JOIN pedido_estoque pe ON pf.id_pedido = pe.id_pedido
GROUP BY f.nome ORDER BY faturamento DESC;

-- 9) Quantidade Total de Produtos por Pedido
SELECT p.id AS id_pedido, SUM(pe.quantidade) AS quantidade
FROM pedido p JOIN pedido_estoque pe ON p.id = pe.id_pedido
GROUP BY p.id ORDER BY quantidade DESC;

-- 10) Estoque Médio de Produtos por Categoria
SELECT c.nome AS categoria, AVG(pe.quantidade) AS estoque_medio
FROM categoria c JOIN estoque_categoria ec ON c.id = ec.id_categoria
JOIN estoque e ON ec.id_estoque = e.id
JOIN pedido_estoque pe ON e.id = pe.id_estoque
GROUP BY c.nome ORDER BY estoque_medio DESC;
