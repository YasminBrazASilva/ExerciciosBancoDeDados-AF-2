-- Insere dados na tabela clientes
CALL novoCliente('Lara Santos', 'lara@email.com', 186.12);
CALL novoCliente('Miguel Pereira', 'miguel@email.com', 149.18);
CALL novoCliente('Lúcia Rodrigues', 'lucia@email.com', 232.85);
CALL novoCliente('Tiago Silva', 'tiago@email.com', 64.1);
CALL novoCliente('Beatriz Gomes', 'beatriz@email.com', 133.07);
CALL novoCliente('Raul Alves', 'raul@email.com', 368.12);
CALL novoCliente('Eva Fernandes', 'eva@email.com', 543.73);
CALL novoCliente('César Oliveira', 'cesar@email.com', 382.20);
CALL novoCliente('Luana Sousa', 'luana@email.com', 928.03);
CALL novoCliente('Bruno Martins', 'bruno@email.com', 0);
CALL novoCliente('Nina Costa', 'nina@email.com', 684.38);
CALL novoCliente('Gustavo Moreira', 'gustavo@email.com', 0);
CALL novoCliente('Sara Lima', 'sara@email.com', 648.76);
CALL novoCliente('Hugo Ribeiro', 'hugo@email.com', 287.82);
CALL novoCliente('Clara Soares', 'clara@email.com', 0);

-- Exibe todas as linhas e colunas da tabela clientes
CALL selecionarTudo("clientes");