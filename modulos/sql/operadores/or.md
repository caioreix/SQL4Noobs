[← Operadores](./operadores.md#operadores)

<h1 align="center">Or</h1>
<p align="center">O operador OR é utilizado para adicionar mais de uma condição onde apenas uma necessita ser verdadeira.</p>

## Sintaxe

```sql
SELECT coluna1, coluna2, coluna3
  FROM tabela
 WHERE condição1 OR condição2;
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por vírgulas.

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

### AND

```sql
SELECT nome, cidade
  FROM clientes
 WHERE sexo = 'M' OR cidade = 'Curitiba';
```

>Em alguns sistemas também é aceito o uso das aspas duplas "".

#### Resultado

| nome   | cidade    |
|--------|-----------|
| Pedro  | São Paulo |
| Laura  | Curitiba  |
| Marcos | Natal     |
| Lucas  | Santos    |

### OR com AND

```sql
SELECT nome, cidade
  FROM clientes
 WHERE cidade = 'Natal' OR cidade = 'Santos' AND sexo = 'M';
```

#### Resultado

| nome   | cidade |
|--------|--------|
| Marcos | Natal  |
| Lucas  | Santos |

### OR com NOT

```sql
SELECT nome, cidade
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
<a href="./and.md#and"><img src="../../../images/previous-arrow.svg" alt="previous" width="40px"></a>
<a href="./not.md#not"><img src="../../../images/next-arrow.svg" alt="next" width="40px"></a>
</h1>

[← Operadores](./operadores.md#operadores)