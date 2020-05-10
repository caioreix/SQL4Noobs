# Conceitos Básicos

Neste módulo falaremos sobre alguns conceitos básicos que devem ser necessários para entender esse mundo dos Bancos de Dados que existe mundo afora.

## Niveís atômicos

### Dados

Dados, nossos queridos dados... Não aqueles que você joga RPG de mesa, tá? São os dados que armazenamos, criamos, e destruímos todos os dias. Cotações, tempos, textos, pesquisas, e muito mais, todos eles são armazenados em algum lugar certo? E você já imagina onde seja.

Mas eu lhe pergunto: você sabe o que são dados? Você pode achar estranho e falar: "Humf, claro que eu sei!". Você sabe mesmo? Você sabia que a cotação que você vê todos os dias na internet pode ser arquivada para que, usando o seu histórico, possamos ter uma previsão do futuro? E que esses dados devem estar disponíveis de uma forma acessível e estruturada para que possa ser consumido de forma fácil e seja possível extrair essas informações?

Se você respondeu um "Não" para alguma dessas perguntas, venha comigo, vou te explicar um pouco mais sobre nossos valiosos dados.

O que são dados? Dados são informações, a menor informação que você pode ter sobre algo, geralmente estarão atrelados a algum significado. **Um dado não é um dado sem um significado**. O que você poderia deduzir se eu te falasse: 231? Nada né? Não lhe dei contexto, não tem nada relevante que você possa usar para descobrir ou entender sobre o que é esse número. 

Mas se eu te falar: O livro 'Linux - A Bíblia' custa R$50, agora você tem um dado com significado, você pode não saber muito o que fazer com ele ainda, mas você tem um significado que pode lhe ajudar a guiar para obter mais dessas informações ou fazer alguma outra coisa.

Existem alguns tipos de dados que geralmente são armazenados, são eles: classificatórios, contínuos e de contagem. Seguindo uma aula ministrada pelo [IME da Unicamp](https://www.ime.unicamp.br/~hildete/dados.pdf):
* Contínuos
   * Peso, tempo, custos, dimensões, etc.
* Contagem
   * Número de erros, número de partículas, número de dias, quantidade de produtos, etc.
* Classificação
   * Nota de 1 a 5, com ou sem erro, sim ou não.

A relação entre eles e o que nosso modelo de negócio nos mostra é o que definirá como salvaremos os dados. Esses conceitos serão importantes para conseguirmos modelar nossos bancos de dados, em conjunto com outro conceito que falarei agora.

### Variáveis

Levando em conta os tipos de dados que podemos armazenar, precisamos encontrar um tipo de variável que o irá representar no nosso banco de dados, de acordo com o que nossos computadores oferecem. Existem diversos tipos de variáveis, cada SGBD tem seu tipo, mas eles geralmente se enquadram nessas cinco classes: 
* numéricas (inteiros, decimais, pontos flutuantes de uma ou duas precisões, valores booleanos que são representados por 1 ou 0, etc.)
* texto (caracteres, textos longos, links, etc.)
* data (datas, UTC, data e tempo, etc.)
* binário (arquivos binários, imagens, etc.)

De acordo com a regra de negócio, faremos uma combinação entre o tipo de dado e a variável. Por exemplo: um valor monetário, de R$50, é um dado contínuo e de variável numérica, um texto com uma descrição de produto, pode ser enquadrado em classificação e variável de texto, etc. Com isso é possível estruturar melhor nossa base de dados de acordo com os dados que temos ou precisaremos.

## Abstração

