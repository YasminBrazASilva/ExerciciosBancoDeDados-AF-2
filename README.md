# ExerciciosBancoDeDados-AF-2
Exercícios para AF da matéria de Banco de Dados do 2º semestre de ADS

Atividade: Sistema de Gerenciamento de Pedidos <br>

Objetivo: Criar um sistema de gerenciamento de pedidos em um banco de dados utilizando stored procedures, triggers, views e JOINs no MySQL Workbench.

---
### Etapa 1: CRIAÇÃO DE TABELAS E INSERÇÃO DE DADOS
Crie as tabelas "Clientes" e "Pedidos" com campos apropriados. Insira dados de exemplo nas tabelas para simular clientes e pedidos. Certifique-se de incluir uma chave primária em cada tabela.

* Modelo conceitual: <br>
   ![ExercicioModeloConceitual2_1_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioModeloConceitual2_1_1.png)<br>
* Modelo lógico: <br>
   ![ExercicioModeloLogico2_1_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioModeloLogico2_1_1.png)<br>
* A criação das tabelas pode ser vista em: [Exercicio2_1_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_1_2.sql) <br> 
  ![ExercicioTela2_1_2_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioTela2_1_2_1.png)
  ![ExercicioTela2_1_2_2.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioTela2_1_2_2.png)
  
* Adicionando dados a tabela:
  * A criação da stored procedure **selecionarTudo** pode ser vista em: [Exercicio2_1_3_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_1_3_1.sql) <br>
  * A criação da stored procedure **novoCliente** pode ser vista em: [Exercicio2_1_3_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_1_3_2.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_1_3_3.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioRelatorio2_1_3_3.csv). <br>
  * A criação da stored procedure **novoPedido** pode ser vista em: [Exercicio2_1_3_4.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_1_3_4.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_1_3_5.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioRelatorio2_1_3_5.csv). <br>

---
### Etapa 2: CRIAÇÃO DE STORED PROCEDURE
Crie uma stored procedure chamada "InserirPedido" que permite inserir um novo pedido na tabela "Pedidos" com as informações apropriadas. A stored procedure deve receber parâmetros como o ID do cliente e os detalhes do pedido. Ao término teste o funcionamento da stored procedure criada inserindo um pedido<br>
   * Implementação da procedure: [Exercicio2_2_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_2_1.sql)
   * Execução da procedure: [Exercicio2_2_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_2_2.sql)
   * Resultado: [ExercicioRelatorio2_2_2.csv](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioRelatorio2_2_2.csv)

---
### Etapa 3: TRIGGER
Crie uma trigger que seja acionada APÓS a inserção de um novo pedido na tabela "Pedidos". A trigger deve calcular o valor total dos pedidos para o cliente correspondente e atualizar um campo "TotalPedidos" na tabela "Clientes" com o valor total. Teste a Trigger inserindo um novo pedido na tabela "Pedidos“.<br>
   * Implementação da procedure: [Exercicio2_3_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_3_1.sql)
   * Execução da procedure: [Exercicio2_3_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_3_2.sql)
   * Resultado: [ExercicioRelatorio2_3_2.csv](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioRelatorio2_3_2.csv) 

---
### Etapa 4: VIEW
Crie uma view chamada "PedidosClientes" que combina informações das tabelas "Clientes" e "Pedidos" usando JOIN para mostrar os detalhes dos pedidos e os nomes dos clientes.<br>
   * Criação da view pedidosClientes: [Exercicio2_4_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_4_1.sql)

---
### Etapa 5: CONSULTA COM JOIN
Escreva uma consulta SQL que utiliza JOIN para listar os detalhes dos pedidos de cada cliente, incluindo o nome do cliente e o valor total de seus pedidos. Utilize a view "PedidosClientes" para essa consulta.<br>
  * Execução da view: [Exercicio2_5_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/Exercicio2_5_1.sql)
  * Resultado: [ExercicioRelatorio2_5_1.csv](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-2/blob/main/ExercicioRelatorio2_5_1.csv) 
