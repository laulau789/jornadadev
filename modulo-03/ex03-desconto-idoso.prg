FUNCTION Main()
    LOCAL cNome, dDataNascimento, nIdade, nPreco, nDesconto, nTotal,cData
    SET DATE FORMAT TO "dd/mm/yyyy"

      ACCEPT "Digite seu nome: " TO cNome
      ACCEPT "Digite sua data de nascimento (dd/mm/aaaa): " TO cData
      dDataNascimento := CToD (cData)

      INPUT "Digite o preço do produto: " TO nPreco
    
    nIdade := Int((Date() - dDataNascimento) / 365)
    nDesconto := nPreco * 0.125

      IF nIdade > 60
          nTotal := nPreco - nDesconto
          nDesconto := nPreco * 0.125
        ELSE
           nTotal := nPreco
           nDesconto := 0
      ENDIF
    QOut("==============================")
    QOut("       RESUMO DA COMPRA       ")
    QOut("==============================")
    QOut("Cliente:" + cNome)
    QOut("Idade: " + Str(nIdade))
    QOut("Preço: " + Str(nPreco))
    QOut("Desconto: " + Str(nDesconto, 10, 2))
    QOut("Total: " + Str(nTotal, 10, 2))
RETURN NIL