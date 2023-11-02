DELIMITER $
	-- Cria a procedure novoCliente, para que seja adicionado um novo cliente à tabela clientes
	CREATE PROCEDURE novoCliente(
		cli_nome VARCHAR(400),
        cli_email VARCHAR(100),
        cli_total_pedidos DECIMAL(8,2)
	)
		BEGIN
			-- Insere os valores na tabela clientes (o id é NULL pois este campo é autoincremental)
			INSERT INTO clientes
				VALUES (NULL, cli_nome, cli_email, cli_total_pedidos);
		END $
DELIMITER ;