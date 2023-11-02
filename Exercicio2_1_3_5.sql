-- Insere dados na tabela pedidos
CALL novoPedido('2022-01-12', 23.41, 3);
CALL novoPedido('2022-07-26', 270.65, 13);
CALL novoPedido('2022-09-13', 169.06, 9);
CALL novoPedido('2022-10-09', 283.41, 9);
CALL novoPedido('2022-11-15', 205.8, 11);
CALL novoPedido('2022-11-24', 275.69, 7);
CALL novoPedido('2022-12-02', 279.18, 6);
CALL novoPedido('2022-12-04', 160.92, 11);
CALL novoPedido('2022-12-12', 236.54, 9);
CALL novoPedido('2022-12-16', 149.18, 2);
CALL novoPedido('2023-02-03', 287.82, 14);
CALL novoPedido('2023-03-17', 239.02, 9);
CALL novoPedido('2023-03-18', 289.82, 13);
CALL novoPedido('2023-04-18', 292.89, 8);
CALL novoPedido('2023-05-09', 209.44, 3);
CALL novoPedido('2023-05-10', 268.04, 7);
CALL novoPedido('2023-05-12', 88.29, 13);
CALL novoPedido('2023-05-26', 64.1, 4);
CALL novoPedido('2023-05-28', 74.15, 6);
CALL novoPedido('2023-06-06', 171.31, 11);
CALL novoPedido('2023-07-26', 186.12, 1);
CALL novoPedido('2023-09-14', 133.07, 5);
CALL novoPedido('2023-10-07', 89.31, 8);
CALL novoPedido('2023-10-16', 14.79, 6);
CALL novoPedido('2023-11-01', 146.35, 11);

-- Exibe todas as linhas e colunas da tabela pedidos
CALL selecionarTudo("pedidos");