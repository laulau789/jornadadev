FUNCTION Diferenca()
    LOCAL cTexto1:= "Harbour"
    LOCAL cTexto2:= "Harb"

    //Faz uma comparação simples, existe uma correspondencia na comparação.
    QOut("cTexto1 = cTexto2  => ", cTexto1 = cTexto2)

    //Faz uma comparação exata, Exige que tudo seja exatamente igual.
    QOut("cTexto1 == cTexto2 => ", cTexto1 == cTexto2)
    
    
    
RETURN NIL