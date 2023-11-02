-- Cria a trigger calcularTotalPedidos pedidos que, após o registro de um novo pedido, atualiza o campo cli_total_pedidos da tabela clientes
DELIMITER $
CREATE TRIGGER calcularTotalPedidos
	BEFORE INSERT ON Pedidos
		FOR EACH ROW
			BEGIN 
				SELECT cli_total_pedidos
                  INTO @totalPedidosAnteriores
                  FROM clientes
				 WHERE cli_id = NEW.pdd_cli_id;
                 
                 SET @totalPedidosAtualizado = NEW.pdd_valor + @totalPedidosAnteriores;
                 
                 UPDATE clientes
					SET cli_total_pedidos = @totalPedidosAtualizado
				  WHERE cli_id = NEW.pdd_cli_id;                
			END;
	$ 
DELIMITER ;