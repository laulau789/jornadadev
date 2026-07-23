FUNCTION Main()
    LOCAL aV := Array(10)
    LOCAL nI
    LOCAL cResp
    LOCAL cValor

    hb_RandomSeed(-1)


    ACCEPT "Deseja digitar os números? (S/N): " TO cResp

    IF Upper(AllTrim(cResp)) == "S"
        FOR nI := 1 TO 10
            ACCEPT "Número " + Str(nI) + ": " TO cValor
            aV[nI] := Val(cValor)
        NEXT
    ELSE
        FOR nI := 1 TO 10
            aV[nI] := Int(hb_Random() * 100) + 1
        NEXT
    ENDIF

    QOut("")
    QOut("Array original:")
    MostrarArray(aV)

    BubbleSort(aV)

    QOut("")
    QOut("Array ordenado (Bubble Sort):")
    MostrarArray(aV)

RETURN NIL

FUNCTION BubbleSort(aVetor)
    LOCAL nI, nJ, nTemp
    LOCAL nTamanho := Len(aVetor)

    FOR nI := 1 TO nTamanho - 1
        FOR nJ := 1 TO nTamanho - nI

            IF aVetor[nJ] > aVetor[nJ + 1]
                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp
            ENDIF

        NEXT

    NEXT

RETURN NIL

FUNCTION MostrarArray(aVetor)
    LOCAL nI
    LOCAL cLinha := ""

    FOR nI := 1 TO Len(aVetor)
        cLinha += Str(aVetor[nI], 5)
    NEXT

    QOut(cLinha)

RETURN NIL