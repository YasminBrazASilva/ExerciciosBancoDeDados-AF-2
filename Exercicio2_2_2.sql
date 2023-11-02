-- Insere um novo pedido na tabela pedidos
CALL inserirPedido('2023-11-02', 282.91, 6);

-- Atualiza o campo cli_total_pedidos da tabela de clientes somando o valor total dos pedidos anteriores com o valor do novo pedido para o cliente em questão
SELECT cli_total_pedidos
  INTO @totalPedidosAnterior
  FROM clientes 
 WHERE cli_id = 6;

UPDATE clientes
  SET cli_total_pedidos = @totalPedidosAnterior + 282.91
WHERE cli_id = 6;

-- Exibe todas as linhas e colunas da tabela pedidos
CALL selecionarTudo("pedidos");
