DELIMITER $
	-- Cria a procedure novoPedido, para que seja adicionado um novo pedido à tabela pedidos
	CREATE PROCEDURE novoPedido(
		pdd_data DATE,
        pdd_valor DECIMAL(5,2),
        pdd_cli_id INT
    )
		BEGIN
			-- Insere os valores na tabela pedidos (o id é NULL pois este campo é autoincremental)
			INSERT INTO pedidos
				VALUES (NULL, pdd_data, pdd_valor, pdd_cli_id);
		END $
DELIMITER ;