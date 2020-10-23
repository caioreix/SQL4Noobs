[← Comandos](./comandos.md#comandos)

<h1 align="center">Where</h1>
<p align="center">O statement 'WHERE' é usado para filtrar registros.</br>Ele filtra os registros de acordo com a condição passada.</p>

## Sintaxe

```sql
SELECT coluna1, coluna2, coluna3...
  FROM tabela
 WHERE condição;
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados separados por vírgulas.

```tabela``` = Nome da tabela que deseja puxar os respectivos atributos.

```condição``` = A condição usada para filtrar os registros.

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

### WHERE string

```sql
SELECT nome, cidade
  FROM clientes
 WHERE sexo = 'M';
```

>Em alguns sistemas também é aceito o uso das aspas duplas "".

#### Resultado

| nome   | cidade    |
|--------|-----------|
| Pedro  | São Paulo |
| Marcos | Natal     |
| Lucas  | Santos    |

### WHERE int

```sql
SELECT nome, cidade
  FROM clientes
 WHERE id = 3;
```

>Em valores inteiros não se usa as aspas.

#### Resultado

| nome  | cidade   |
|-------|----------|
| Laura | Curitiba |

<h1 align="right">
<a href="./distinct.md#distinct"><img src="../../../images/previous-arrow.svg" alt="previous" width="40px"></a>
<a href="./order_by.md#order-by"><img src="../../../images/next-arrow.svg" alt="next" width="40px"></a>
</h1>

[← Comandos](./comandos.md#comandos)