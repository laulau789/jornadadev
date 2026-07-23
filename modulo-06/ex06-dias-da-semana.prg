FUNCTION Main()
    DiasSemana()
RETURN NIL


FUNCTION DiasSemana()
    LOCAL aDias := {"Domingo", "Segunda-feira", "Terça-feira", ;
        "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"}
    LOCAL cNumero, nNumero

    ACCEPT "Número do dia: " TO cNumero
    nNumero := Val(cNumero)

    IF ValidarIndice(nNumero, Len(aDias))
        QOut("O dia correspondente é: " + aDias[nNumero])
    ELSE
        QOut("Número inválido! Digite um valor entre 1 e 7.")
    ENDIF

RETURN NIL


FUNCTION ValidarIndice(nNumero, nTamanho)
    IF nNumero >= 1 .AND. nNumero <= nTamanho
        RETURN .T.
    ENDIF
RETURN .F.