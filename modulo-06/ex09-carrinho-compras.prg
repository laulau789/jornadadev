FUNCTION Main()
    LOCAL aCarrinho := {}
    LOCAL cNome, cPreco, cResp
    LOCAL nPreco, nI, nTotal

    DO WHILE .T.
        ACCEPT "Nome do produto: " TO cNome
        ACCEPT "Preço do produto: " TO cPreco
        nPreco := Val(cPreco)

        AAdd(aCarrinho, {cNome, nPreco})

        ACCEPT "Deseja adicionar outro item? (S/N): " TO cResp

        IF Upper(AllTrim(cResp)) != "S"
            EXIT   
        ENDIF
    ENDDO

    nTotal := 0
    FOR nI := 1 TO Len(aCarrinho)
        QOut(aCarrinho[nI][1] + " - R$ " + Str(aCarrinho[nI][2], 10, 2))
        nTotal += aCarrinho[nI][2]
    NEXT

RETURN NIL