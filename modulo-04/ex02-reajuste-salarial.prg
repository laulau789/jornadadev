FUNCTION Reajuste()
    LOCAL nSalario, nReajuste, nNovoSalario

    QOut("Digite o salário atual:")
    ACCEPT "" TO nSalario
    nSalario := Val(nSalario)

    IF nSalario < 1000
        nReajuste := 0.15
    ELSEIF nSalario >= 1000 .AND. nSalario < 2000
        nReajuste := 0.12
    ELSEIF nSalario >= 2000 .AND. nSalario < 4000
        nReajuste := 0.08
    ELSE
        nReajuste := 0.05
    ENDIF

    nNovoSalario := nSalario + (nSalario * nReajuste)

    QOut("")
    QOut("Salário atual : " + Str(nSalario, 10, 2))
    QOut("Reajuste      : " + Str(nReajuste * 100, 5, 2) + "%")
    QOut("Novo salário  : " + Str(nNovoSalario, 10, 2))
RETURN NIL