#Exercício 3 — Recriando a ZA1 no Configurador

1. Acessar o sistema pelo SmartClient.
![Acessar SmartClient](modulo-07/evidencias/ZA1_1.png)
2. Entrar no configurador SIGACFG.
3. Entrar na área de dicionario de dados.
4. Criar a tabela customizada ZA1.
[Criar a tabela](modulo-07/evidencias/ZA1_2.png)
5. Confirmar o registro da tabela no SX2.
6. Acessar a manutenção de Campos.
7. Cadastrar no SX3 os seguintes campos:
*ZA1_FILIAL*
*ZA1_NOME*
*ZA1_RACA*
*ZA1_NASC*
[Cadastro](modulo-07/evidencias/ZA1_3.png)
8. Definir os títulos, tipos e tamanhos dos campos, observando os limites exibidos no Browse do sistema.
9. Cadastrar um índice com a expressão:
*ZA1_FILIAL + ZA1_NOME*
[indice](modulo-07/evidencias/ZA1_4.png)
10. Salvar todas as alterações e executar a atualização ou reestruturação da tabela.
11. Executar a rotina de fórmulas apresentada em aula
12. Abrir o MPSDU no ambiente de desenvolvimento, acessar a tabela ZA1 e conferir se os campos e o índice foram criados corretamente.
[MPSDU](modulo-07/evidencias/ZA1_5.png)