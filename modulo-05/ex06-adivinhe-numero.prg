FUNCTION Adivinhacao()
    LOCAL nSorteado, nTentativa, nCont, cAcertou :=.F.
    nSorteado := HB_RandomInt(1,100)

    QOut("Um número foi sorteado, tente adivinhá-lo!")
       FOR nCont := 1 TO 7 STEP 1
       INPUT "Tentativa " + LTrim(Str(nCont)) + " de 7: " TO nTentativa
       IF nTentativa == nSorteado 
          cAcertou := .T.
          EXIT 
       ELSEIF nTentativa > nSorteado
           QOut("O número sorteado é MENOR que " + LTrim(Str(nTentativa)))
       ELSE
           QOut("O número sorteado é MAIOR que " + LTrim(Str(nTentativa)))
       ENDIF
         NEXT
       IF cAcertou
           QOut("Parabéns, você acertou!")
       ELSE
           QOut("Você errou, suas tentativas acabaram")
    ENDIF

    QOut("O número sorteado foi: " + LTrim(Str(nSorteado)))
RETURN NIL