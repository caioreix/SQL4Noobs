[← Pagina Inicial](../../../README.md#--)

<h1 align="center">Select</h1>
<p align="center">O statement 'SELECT' é usado para projetar dados do banco.</br>Os dados retornados serão retornados em uma tabela resultante chamada de 'result-set'.</p>

## Sintaxe

```sql
SELECT coluna1, coluna2, coluna3
  FROM tabela;
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por virgulas.
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

Para testar os exemplos seguintes é neccessário:

1. [Ter o MySQL baixado](../../configuration/installingMySQL.md#instalando-o-mysql-server).
2. [Importar o banco de dados](../starting/start.md#iniciando).
3. Usar o comando ```USE sandbox``` para acessar o banco.

### SELECT colunas

```sql
SELECT nome,cidade
  FROM clientes
```

#### Resultado

| id | nome   | cidade         |
|----|--------|----------------|
|  1 | Pedro  | São Paulo      |
|  2 | Maria  | Rio de Janeiro |
|  3 | Laura  | Curitiba       |
|  4 | Marcos | Natal          |
|  5 | Lucas  | Palmas         |

### SELECT *

```sql
SELECT *
  FROM clientes
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
<a href="./statements.md"><img src="../../../images/previous-arrow.svg#Statements" alt="previous" width="40px"></a>
</h1>

[← Pagina Inicial](../../../README.md#--)