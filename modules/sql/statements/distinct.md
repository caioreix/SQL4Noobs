[← Pagina Inicial](../../../README.md#--)

<h1 align="center">Distinct</h1>
<p align="center">O statement 'DISTINCT' é usado para projetar todos os valores, sem repetições.</br>Pode ser usado se você tiver valores repetidos em uma tabela e deseja retirar apenas um de cada.</p>

## Sintaxe

```sql
SELECT DISTINCT coluna1, coluna2, coluna3
  FROM tabela;
```

```colunas``` = Nome dos atributos da tabela que deseja puxar os dados, separados por virgulas.
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

Para testar os exemplos seguintes é neccessário:

1. [Ter o MySQL baixado](../../configuration/installingMySQL.md#instalando-o-mysql-server).
2. [Importar o banco de dados](../starting/start.md#iniciando).
3. Usar o comando ```USE sandbox``` para acessar o banco.

### SELECT sem DISTINCT

```sql
SELECT sexo
  FROM clientes;
```

#### Resultado

| estado |
|--------|
| SP     |
| RJ     |
| PR     |
| RN     |
| SP     |

### SELECT com DISTINCT

```sql
SELECT DISTINCT sexo
  FROM clientes;
```

#### Resultado

| estado |
|--------|
| SP     |
| RJ     |
| PR     |
| RN     |

### Contando a Quantidade de Valores Diferentes

```sql
SELECT COUNT(DISTINCT sexo) AS Total
  FROM clientes;
```

#### Resultado

| Total |
|-------|
|   4   |

<h1 align="right">
<a href="./select.md#select"><img src="../../../images/previous-arrow.svg#Statements" alt="previous" width="40px"></a>
</h1>

[← Pagina Inicial](../../../README.md#--)