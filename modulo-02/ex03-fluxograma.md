# Fluxograma

**Resposta:**

```mermaid
flowchart TD
A([Início])
B[/Ler o valor da compra/]
C{Valor >= 100?}
D[Desconto = valor*0.10]
E[Sem desconto]
F[Total = Valor - Desconto]
G[/Escreva total/]
H([Fim])

A-->B
B-->C
C-->|Sim| F
C-->|Não| F

