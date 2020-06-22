[← Operadores](./operadores.md#operadores)

<h1 align="center">Not</h1>
<p align="center">O operador 'NOT' é utilizado negar uma afirmação, caso uma condição seja verdadeira se tornará falsa ou caso seja falsa se tornará verdadeira.</p>

## Sintaxe

```sql
SELECT coluna1, coluna2, coluna3
  FROM tabela
 WHERE NOT condição;
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por virgulas.

```tabela``` = Nome da tabela que deseja puxar os respectivos atributos.

```condição``` = A condicão usada para filtrar os registros.

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

1. [Ter o MySQL baixado](../../ambiente_de_trabalho/instalando_o_mysql_server.md#instalando-o-mysql-server).
2. [Importar o banco de dados](../iniciando/iniciando.md#iniciando).
3. Usar o comando ```USE sandbox``` para acessar o banco.

### NOT

```sql
SELECT nome,cidade
  FROM clientes
 WHERE NOT sexo = 'M';
```

>Em Alguns sistemas tambem é aceito o uso das aspas duplas "".

#### Resultado


| nome  | cidade         |
|-------|----------------|
| Maria | Rio de Janeiro |
| Laura | Curitiba       |


### NOT com AND

```sql
SELECT nome,cidade
  FROM clientes
 WHERE sexo = 'M' AND NOT cidade = 'Natal';
```

#### Resultado

| nome  | cidade    |
|-------|-----------|
| Pedro | São Paulo |
| Lucas | Santos    |

### NOT com OR

```sql
SELECT nome,cidade
  FROM clientes
 WHERE sexo = 'M' OR NOT cidade = 'Curitiba';
```

#### Resultado


| nome   | cidade         |
|--------|----------------|
| Pedro  | São Paulo      |
| Maria  | Rio de Janeiro |
| Marcos | Natal          |
| Lucas  | Santos         |


<h1 align="right">
<a href="./or.md#or"><img src="../../../images/previous-arrow.svg" alt="previous" width="40px"></a>
</h1>

[← Operadores](./operadores.md#operadores)