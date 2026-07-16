# Fluxograma

**Resposta:**

```mermaid
flowchart TD
A([Início]) --> B[Leia valor da compra]
B --> C{Valor 100?}
C --> |Sim| --> D['Desconto = valor da compra * 0.10']

