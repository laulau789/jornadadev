# Fluxograma

**Resposta:**

```mermaid
flowchart TD
A([Início])
B[/Ler o valor da compra/]
C{Valor >= 100?}
D[Desconto = valor*0.10]
E[Sem desconto]
F([Fim])

A-->B
B-->C
C-->|Sim| D
C-->|Não| E
D-->F
E-->F