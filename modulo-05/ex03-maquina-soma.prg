FUNCTION Soma()
  LOCAL nNum,nTotal,nQtd
    nTotal := 0
    nQtd := 0

    WHILE .T.
      INPUT "Digite um número (0 para parar): " TO nNum
        IF nNum == 0
          EXIT
         ENDIF
      nTotal += nNum
      nQtd++
    ENDDO
  QOut ("Soma total dos valores: ", LTrim(Str(nTotal)))
  QOut ("Quantidade de valores somados: ", LTrim(Str(nQtd)))
    

RETURN NIL