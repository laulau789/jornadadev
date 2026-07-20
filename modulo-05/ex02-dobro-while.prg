FUNCTION Dobro()
LOCAL nNumero

   WHILE .T. 
     INPUT "Digite um número (Digite 0 ou negativo para parar): " TO nNumero
      IF nNumero <=0
        EXIT
      ENDIF
      QOut ("O Dobro do número é: " + (Str( nNumero * 2)))
    ENDDO

   RETURN NIL