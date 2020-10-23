[← Comandos](./comandos.md#comandos)

<h1 align="center">Select</h1>
<p align="center">O statement 'SELECT' é usado para projetar dados do banco.</br>Os dados retornados serão retornados em uma tabela resultante chamada de 'result-set'.</p>

## Sintaxe

```sql
SELECT coluna1, coluna2, coluna3...
  FROM tabela;
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por vírgulas.

```tabela``` = Nome da tabela que deseja puxar os respectivos atributos.

Caso queira puxar todos os dados use a seguinte sintaxe:

```sql
SELECT *
  FROM tabela;
```

```*``` = O asterisco é utilizado para selecionar todos os valores.

## Tabela Base

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |

## Exemplos

Para testar os exemplos seguintes é necessários:

1. [Ter o MySQL baixado](../../ambiente_de_trabalho/instalando_o_mysql_server.md#instalando-o-mysql-server).
2. [Importar o banco de dados](../iniciando/iniciando.md#iniciando).
3. Usar o comando ```USE sandbox``` para acessar o banco.

### SELECT colunas

```sql
SELECT nome, cidade
  FROM clientes;
```

#### Resultado

| nome   | cidade         |
|--------|----------------|
| Pedro  | São Paulo      |
| Maria  | Rio de Janeiro |
| Laura  | Curitiba       |
| Marcos | Natal          |
| Lucas  | Santos         |

### SELECT *

```sql
SELECT *
  FROM clientes;
```

#### Resultado

| id | nome   | sexo | cpf         | cidade         | estado |
|----|--------|------|-------------|----------------|--------|
|  1 | Pedro  | M    | 12304760987 | São Paulo      | SP     |
|  2 | Maria  | F    | 82319422364 | Rio de Janeiro | RJ     |
|  3 | Laura  | F    | 46387115276 | Curitiba       | PR     |
|  4 | Marcos | M    | 43769265834 | Natal          | RN     |
|  5 | Lucas  | M    | 09384283245 | Santos         | SP     |

<h1 align="right">
<a href="./distinct.md#distinct"><img src="../../../images/next-arrow.svg" alt="next" width="40px"></a>
</h1>

[← Comandos](./comandos.md#comandos)