FUNCTION FatorialN(nN)
    LOCAL nI, nResultado := 1

    FOR nI := 2 TO nN
        nResultado *= nI
    NEXT

RETURN nResultado  

FUNCTION EhPrimo(nN)
    LOCAL nI
    IF nN < 2
        RETURN .F.
    ENDIF

    IF nN == 2
        RETURN .T.
    ENDIF

    IF nN % 2 == 0
        RETURN .F.
    ENDIF

    FOR nI := 3 TO Int(Sqrt(nN)) STEP 2
        IF nN % nI == 0
            RETURN .F.
        ENDIF
    NEXT

RETURN .T.

FUNCTION MMC(nA, nB)
    LOCAL nMdc

    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF

    nMdc := MDC(nA, nB)

RETURN Abs(nA * nB) / nMdc


FUNCTION MDC(nA, nB)
    LOCAL nResto

    nA := Abs(nA)
    nB := Abs(nB)

    DO WHILE nB != 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO

RETURN nA
