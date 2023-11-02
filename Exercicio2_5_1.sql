-- Seleciona o total de pedidos dos clientes e as informações de pedidos de clientes que vêm da view pedidosClientes
SELECT p.*,
	   c.cli_total_pedidos
  FROM pedidosClientes AS p
       JOIN clientes AS c
         ON c.cli_id = p.pdd_cli_id
         