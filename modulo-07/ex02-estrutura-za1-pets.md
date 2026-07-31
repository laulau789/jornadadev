#Exercício 2 — A tabela ZA1 (Pets) que criamos em aula 

**a. Liste os campos da ZA1**
Resposta:
 | Campo | Descrição | Tipo | Tamanho sugerido |
|---|---|---:|---:|
| `ZA1_FILIAL` | Filial do registro | Caractere | 2 |
| `ZA1_NOME` | Nome do pet | Caractere | 50 |
| `ZA1_RACA` | Raça do pet | Caractere | 30 |
| `ZA1_NASC` | Data de nascimento | Data | 8 |


**b. Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica).**
Resposta: Um índice adequado para a tabela é:

**ZA1_FILIAL + ZA1_NOME**

Esse índice permite que os registros sejam organizados primeiro pela filial e, em seguida, pelo nome do pet, facilitando a localização dos dados e tornando as consultas mais rápidas e eficientes no Protheus.

**c. Explique por que o prefixo da tabela é Z**
Resposta: No Protheus, tabelas que começam com a letra Z são utilizadas para customizações e desenvolvimentos específicos do cliente. Essa convenção serve para diferenciar as tabelas criadas pelo usuário das tabelas padrão do sistema, evitando conflitos com as estruturas fornecidas e atualizadas pela TOTVS.

**d. Explique por que os campos começam com ZA1_**
Resposta: Os campos começam com ZA1_ para indicar que pertencem à tabela ZA1, seguindo o padrão de nomenclatura do Protheus e facilitando a identificação e a organização dos campos no dicionário de dados.