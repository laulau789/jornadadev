# Exercício 2 - Pseudocódigo.

# a - Calcular a área de um retângulo (base × altura).

**Resposta:**
Início
   Leia Base
   Leia Altura
     Resultado <- Base * Altura
   Escreva "A àrea do retângulo é: " + Resultado
Fim

# b - Verificar se um número é **par** ou **ímpar**.

**Resposta:**
Início
   Leia número
   Resto <- número % 2

    Se Resto = 0
    Então Escreva "O número escolhido é: PAR"
  
    Senão Escreva "O número escolhido é: ÍMPAR"
    FimSe 
Fim    

# c - Encontrar o maior entre três números.

**Resposta:**
Início
   Leia num1
   Leia nu2
   Leia num3
     Se num1 > num2 E num2 > num3
     Então maior <- num1

     Senão Se num2 > num3
      Então maior <- num2

     Senão 
      maior <- num3
      FimSe

    Escreva "O maior número é:" + maior
Fim