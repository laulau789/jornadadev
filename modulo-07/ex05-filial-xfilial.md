#Exercício 5 — A1_FILIAL e xFilial()

*A. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?*
Resposta: O campo A1_FILIAL identifica a qual filial pertence cada registro da tabela. Esse campo é utilizado para controlar e organizar os dados de cada unidade. Por isso, tabelas como a SA1 e a ZA1 precisam possuir um campo de filial, garantindo que os registros sejam associados corretamente à filial correspondente.

*B. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa “escrevesse a filial na mão” em vez de usar xFilial()?*
Resposta: A função xFilial() retorna a filial correta para a tabela utilizada. Se o programa informasse a filial manualmente, poderia gravar ou consultar registros na filial errada, causando inconsistências nos dados e problemas no funcionamento do sistema. Por isso, a utilização de xFilial() é a forma recomendada para garantir que o programa trabalhe sempre com a filial correta.
