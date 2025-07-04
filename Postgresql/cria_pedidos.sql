CREATE OR REPLACE FUNCTION criar_pedido_com_itens(
    p_cliente_id INTEGER,
    p_itens JSONB
) RETURNS INTEGER AS $$
DECLARE
    v_pedido_id INTEGER;
    v_item RECORD;
    v_total DECIMAL(10,2) := 0;
BEGIN
    BEGIN
        INSERT INTO pedidos (cliente_id) 
        VALUES (p_cliente_id)
        RETURNING id INTO v_pedido_id;
        
        FOR v_item IN SELECT * FROM jsonb_to_recordset(p_itens) AS x(produto_id INTEGER, quantidade INTEGER)
        LOOP
            INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario)
            SELECT 
                v_pedido_id, 
                v_item.produto_id, 
                v_item.quantidade, 
                p.preco
            FROM produtos p
            WHERE p.id = v_item.produto_id
            RETURNING subtotal INTO v_total;
            
            UPDATE produtos 
            SET estoque = estoque - v_item.quantidade
            WHERE id = v_item.produto_id;
            
            IF (SELECT estoque FROM produtos WHERE id = v_item.produto_id) < 0 THEN
                RAISE EXCEPTION 'Estoque insuficiente para o produto ID %', v_item.produto_id;
            END IF;
        END LOOP;
        
        UPDATE pedidos
        SET valor_total = (
            SELECT SUM(subtotal) 
            FROM itens_pedido 
            WHERE pedido_id = v_pedido_id
        )
        WHERE id = v_pedido_id;
        
        RETURN v_pedido_id;
    EXCEPTION
        WHEN OTHERS THEN
            RAISE EXCEPTION 'Erro ao processar pedido: %', SQLERRM;
    END;
END;
$$ LANGUAGE plpgsql;

-- Exemplo de uso:
-- SELECT criar_pedido_com_itens(1, '[{"produto_id": 1, "quantidade": 2}, {"produto_id": 3, "quantidade": 1}]');