[← Comandos](./comandos.md#comandos)

<h1 align="center">Order By</h1>
<p align="center">O statement 'ORDER BY' é usado para colocar as tabelas em ordem crescente ou descendente.</p>

## Sintaxe

```sql
SELECT coluna1, coluna2, coluna3...
  FROM tabela;
 ORDER BY coluna1, coluna2, coluna3... ASC/DESC
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por vírgulas.

```tabela``` = Nome da tabela que deseja puxar os respectivos atributos.

## Tabela Base

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |

## Exemplos

Para testar os exemplos seguintes é necessário:

1. [Ter o MySQL baixado](../../ambiente_de_trabalho/instalando_o_mysql_server.md#instalando-o-mysql-server).
2. [Importar o banco de dados](../iniciando/iniciando.md#iniciando).
3. Usar o comando ```USE sandbox``` para acessar o banco.

### ORDER BY

```sql
SELECT *
  FROM clientes
 ORDER BY sexo;
```

#### Resultado

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |

### ORDER BY ASC

```sql
SELECT *
  FROM clientes
 ORDER BY sexo ASC;
```

#### Resultado

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |

### ORDER BY DESC

```sql
SELECT *
  FROM clientes
 ORDER BY sexo DESC;
```

#### Resultado

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |

### ORDER BY DESC e ASC

```sql
SELECT *
  FROM clientes
 ORDER BY sexo DESC, nome ASC;
```

#### Resultado

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |

<h1 align="right">
<a href="./where.md#where"><img src="../../../images/previous-arrow.svg" alt="previous" width="40px"></a>
<a href="./insert_into.md#insert-into"><img src="../../../images/next-arrow.svg" alt="next" width="40px"></a>
</h1>

[← Comandos](./comandos.md#comandos)