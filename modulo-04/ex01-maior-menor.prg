FUNCTION MaiorMenor
   LOCAL nValor1, nValor2
   INPUT "Digite o primeiro valor: " TO nValor1
   INPUT "Digite o segundo valor: "  TO nValor2

   IF nValor1 == nValor2
    QOut ("Ambos valores são iguais")

    ELSE
      IF nValor1 > nValor2
         QOut("Maior valor: " + LTrim(Str(nValor1)))
         QOut("Menor valor: " + LTrim(Str(nValor2)))
      ELSE
         QOut("Maior valor: " + LTrim(Str(nValor2)))
         QOut("Menor valor: " + LTrim(Str(nValor1)))
      ENDIF
    ENDIF
RETURN NIL