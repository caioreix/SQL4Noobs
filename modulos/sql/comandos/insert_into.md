[← Comandos](./comandos.md#comandos)

<h1 align="center">Insert Into</h1>
<p align="center">O statement 'INSERT INTO' é usado para inserir dados nas tabelas.</p>

## Sintaxe

```sql
INSERT INTO tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...); 
```

```tabela``` = Nome da tabela que deseja puxar os respectivos atributos.

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por virgulas.

```valores``` = Valor que será inserido na tabela na respectiva ordem das colunas.

>Os valores devem estar na mesma ordem que foram escritas as colunas.

### Ou

```sql
INSERT INTO tabela
VALUES (valor1, valor2, valor3, ...); 
```

```tabela``` = Nome da tabela que deseja puxar os respectivos atributos.

```valores``` = Valor que sera inserido na tabela na respectiva ordem das colunas da tabela.

>Nessa opção é necessario inserir registros em todas as colunas, na respectiva ordem em que foi criada a tabela.

## Tabela Base

| id | modelo    | marca      | placa    | clientes_id |
|----|-----------|------------|----------|-------------|
|  1 | Corsa 1.0 | Chevrolet  | FRE-0293 |           3 |
|  2 | Gol 2.0   | Volkswagen | XNE-9824 |           2 |

## Exemplos

Para testar os exemplos seguintes é neccessário:

1. [Ter o MySQL baixado](../../ambiente_de_trabalho/instalando_o_mysql_server.md#instalando-o-mysql-server).
2. [Importar o banco de dados](../iniciando/iniciando.md#iniciando).
3. Usar o comando ```USE sandbox``` para acessar o banco.

### INSERT INTO com colunas

```sql
INSERT INTO carros(modelo,marca,placa,clientes_id)
VALUES ('Fiesta','Ford','KEQ-4831',4);
```

#### Resultado

| id | modelo    | marca      | placa    | clientes_id |
|----|-----------|------------|----------|-------------|
|  1 | Corsa 1.0 | Chevrolet  | FRE-0293 |           3 |
|  2 | Gol 2.0   | Volkswagen | XNE-9824 |           2 |
|  3 | Fiesta    | Ford       | KEQ-4831 |           4 |

### INSERT INTO multiplas inserções

```sql
INSERT INTO carros(modelo,marca,placa,clientes_id)
VALUES ('Cybertruck','Tesla','FUK-4711',1),('F8 Spider','Ferrari','CHP-6131',1);
```

#### Resultado

| id | modelo     | marca      | placa    | clientes_id |
|----|------------|------------|----------|-------------|
|  1 | Corsa 1.0  | Chevrolet  | FRE-0293 |           3 |
|  2 | Gol 2.0    | Volkswagen | XNE-9824 |           2 |
|  3 | Fiesta     | Ford       | KEQ-4831 |           4 |
|  4 | Cybertruck | Tesla      | FUK-4711 |           5 |
|  5 | F8 Spider  | Ferrari    | CHP-6131 |           1 |

### INSERT INTO sem colunas

```sql
INSERT INTO carros
VALUES (NULL,'Gol G5','Volkswagen','NXO-6971',4);
```

>O primeiro valor é nulo pelo fato de ser no campo do 'id' que se auto incrementa.

#### Resultado

| id | modelo     | marca      | placa    | clientes_id |
|----|------------|------------|----------|-------------|
|  1 | Corsa 1.0  | Chevrolet  | FRE-0293 |           3 |
|  2 | Gol 2.0    | Volkswagen | XNE-9824 |           2 |
|  3 | Fiesta     | Ford       | KEQ-4831 |           4 |
|  4 | Cybertruck | Tesla      | FUK-4711 |           5 |
|  5 | F8 Spider  | Ferrari    | CHP-6131 |           1 |
|  6 | Gol G5     | Volkswagen | NXO-6971 |           4 |

<h1 align="right">
<a href="./order_by.md#order-by"><img src="../../../images/previous-arrow.svg" alt="previous" width="40px"></a>
</h1>

[← Comandos](./comandos.md#comandos)