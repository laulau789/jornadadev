#Exercício 1 — AxCadastro × mBrowse

*a. Quando você usaria AxCadastro e quando usaria mBrowse ? Dê um exemplo de cada.*
Resposta: Quando precisamos criar um cadastro simples e rápido o AxCadastro é recomendado, ele gera automaticamente uma tela de CRUD completa e automática.
 Já o mBrowse é o mais indicado quando precisamos criar uma interfaace mais persnalizada, com filtros, legendas coloridas,colunas específicas e botões.

*b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.*
Resposta:
1. Permite criar filtros personalizados.
2. Permite utilizar legendas coloridas
3. Permite criar colunas

*c. Na configuração de legendas ( aColors ), por que a regra ".T." deve ficar por último?*
Resposta: A regra ".T." deve ficar no final porque ela sempre retorna verdadeiro. Como o Protheus analisa as regras na ordem em que aparecem, a primeira condição verdadeira já define a cor da linha.


*d. Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?*
Resposta: O campo virtual serve apenas para mostrar uma informação que vem de outra tabela, fazendo a busca quando o registro é exibido portanto o valor não fica  gravado no banco de dados.
 Já o gatilho funciona de forma diferente,quando o usuário preeenche ou altera um campo o sistema executa automaticamente uma regra, gravando essas informações no registro.

