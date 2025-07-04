SELECT 
    c.id,
    c.nome,
    SUM(p.valor_total) AS faturamento_total
FROM 
    clientes c
JOIN 
    pedidos p ON c.id = p.cliente_id
WHERE 
    p.data_pedido >= CURRENT_DATE - INTERVAL '6 months'
    AND p.status = 'entregue' 
GROUP BY 
    c.id, c.nome
ORDER BY 
    faturamento_total DESC
LIMIT 5;

_____________________________________________________________________________________________________________
SELECT 
    TO_CHAR(p.data_pedido, 'YYYY-MM') AS mes,
    cat.nome AS categoria,
    SUM(ip.subtotal) AS faturamento
FROM 
    pedidos p
JOIN 
    itens_pedido ip ON p.id = ip.pedido_id
JOIN 
    produtos prod ON ip.produto_id = prod.id
JOIN 
    categorias cat ON prod.categoria_id = cat.id
WHERE 
    p.data_pedido >= CURRENT_DATE - INTERVAL '12 months'
    AND p.status = 'entregue'
GROUP BY 
    TO_CHAR(p.data_pedido, 'YYYY-MM'), cat.nome
ORDER BY 
    mes, faturamento DESC;

_____________________________________________________________________________________________________________

CREATE OR REPLACE FUNCTION produtos_estoque_baixo(limiar INTEGER)
RETURNS TABLE(
    produto_id INTEGER,
    produto_nome VARCHAR,
    categoria_nome VARCHAR,
    estoque_atual INTEGER,
    preco DECIMAL(10,2)
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id AS produto_id,
        p.nome AS produto_nome,
        c.nome AS categoria_nome,
        p.estoque AS estoque_atual,
        p.preco
    FROM 
        produtos p
    JOIN 
        categorias c ON p.categoria_id = c.id
    WHERE 
        p.estoque < limiar
    ORDER BY 
        p.estoque ASC;
END;
$$ LANGUAGE plpgsql;

-- Exemplo de uso:
-- SELECT * FROM produtos_estoque_baixo(10);    


_____________________________________________________________________________________________________________

CREATE OR REPLACE FUNCTION pedidos_por_cliente(p_cliente_id INTEGER)
RETURNS TABLE(
    pedido_id INTEGER,
    data_pedido TIMESTAMP,
    status VARCHAR,
    valor_total DECIMAL(10,2),
    quantidade_itens BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id AS pedido_id,
        p.data_pedido,
        p.status,
        p.valor_total,
        COUNT(ip.id)::BIGINT AS quantidade_itens
    FROM 
        pedidos p
    LEFT JOIN 
        itens_pedido ip ON p.id = ip.pedido_id
    WHERE 
        p.cliente_id = p_cliente_id
    GROUP BY 
        p.id
    ORDER BY 
        p.data_pedido DESC;
END;
$$ LANGUAGE plpgsql;

-- Exemplo de uso:
-- SELECT * FROM pedidos_por_cliente(1);