-- Cria uma view para analisar o histórico de compra dos clientes que já realizaram algum pedido e seus respectivos nomes 
CREATE VIEW pedidosClientes AS 
	SELECT c.cli_nome,
		   p.*
	  FROM clientes AS c
		   JOIN pedidos AS p
             ON p.pdd_cli_id = c.cli_id
  ORDER BY c.cli_id,
		   p.pdd_id;