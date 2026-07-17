FUNCTION Diferenca()
    LOCAL cTexto1:= "Harbour"
    LOCAL cTexto2:= "Harb"

    //Faz uma comparação simples, existe uma correspondencia na comparação
    IF cTexto1 = cTexto2 
        QOut ("As Strings são iguais")
    
    ELSE 
        QOut ("As Strings são diferentes")
    ENDIF
    
   //Faz uma comparação exata, Exige que tudo seja exatamente igual
    IF cTexto1 == cTexto2 
        QOut ("As Strings são iguais")
    
    ELSE 
        QOut ("As Strings são diferentes")
    ENDIF

    
RETURN NIL