FUNCTION Main()
    LOCAL aV := Array(10)
    LOCAL nI, nSoma, nMedia
    LOCAL cValor

    FOR nI := 1 TO 10
        ACCEPT "Número " + Str(nI) + ": " TO cValor
        aV[nI] := Val(cValor)
    NEXT

    ASort(aV)

    FOR nI := 1 TO Len(aV)
        QOut(Str(aV[nI]))
    NEXT

    nSoma := 0
    FOR nI := 1 TO Len(aV)
        nSoma += aV[nI]
    NEXT

    nMedia := nSoma / Len(aV)

    QOut("Soma   : " + Str(nSoma))
    QOut("Média  : " + Str(nMedia))
    QOut("Menor  : " + Str(aV[1]))          
    QOut("Maior  : " + Str(aV[Len(aV)]))    

RETURN NIL