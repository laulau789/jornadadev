FUNCTION Main()
    LOCAL aAlunos := {}
    LOCAL nN, nI, nMedia
    LOCAL cNome, cNota1, cNota2, cNota3, cNota4
    LOCAL nNota1, nNota2, nNota3, nNota4

    ACCEPT "Quantos alunos? " TO nN
    nN := Val(nN)

    FOR nI := 1 TO nN
        QOut("")
        QOut("--- Aluno " + Str(nI) + " ---")

        ACCEPT "Nome: " TO cNome

        ACCEPT "Nota 1: " TO cNota1
        ACCEPT "Nota 2: " TO cNota2
        ACCEPT "Nota 3: " TO cNota3
        ACCEPT "Nota 4: " TO cNota4

        nNota1 := Val(cNota1)
        nNota2 := Val(cNota2)
        nNota3 := Val(cNota3)
        nNota4 := Val(cNota4)

      
        AAdd(aAlunos, {cNome, nNota1, nNota2, nNota3, nNota4})
    NEXT

    FOR nI := 1 TO Len(aAlunos)
        nMedia := CalcularMedia(aAlunos[nI])
        QOut(aAlunos[nI][1] + " - Média: " + Str(nMedia, 10, 2))
    NEXT

    FOR nI := 1 TO Len(aAlunos)
        nMedia := CalcularMedia(aAlunos[nI])
        IF nMedia >= 7
            QOut(aAlunos[nI][1] + " - Média: " + Str(nMedia, 10, 2))
        ENDIF
    NEXT

    FOR nI := 1 TO Len(aAlunos)
        nMedia := CalcularMedia(aAlunos[nI])
        IF nMedia < 7
            QOut(aAlunos[nI][1] + " - Média: " + Str(nMedia, 10, 2))
        ENDIF
    NEXT

RETURN NIL

FUNCTION CalcularMedia(aAluno)
    LOCAL nSoma

    nSoma := aAluno[2] + aAluno[3] + aAluno[4] + aAluno[5]

RETURN nSoma / 4