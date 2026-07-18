FUNCTION PlanoSaude
    LOCAL nIdade, nDependentes, nValorBase, nValorTotal
    LOCAL cEntrada

    QOut("Digite a idade:")
    ACCEPT "" TO cEntrada
    nIdade := Val(cEntrada)

    QOut("Digite o número de dependentes:")
    ACCEPT "" TO cEntrada
    nDependentes := Val(cEntrada)

    IF nIdade <= 25
        nValorBase := 180
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorBase := 260
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValorBase := 380
    ELSE
        nValorBase := 520
    ENDIF

    nValorTotal := nValorBase + (90 * nDependentes)

    QOut("")
    QOut("Idade             : " + Str(nIdade, 3))
    QOut("Dependentes       : " + Str(nDependentes, 3))
    QOut("Valor da faixa    : R$ " + Str(nValorBase, 10, 2))
    QOut("Adicional dep.    : R$ " + Str(90 * nDependentes, 10, 2))
    QOut("Valor total mensal: R$ " + Str(nValorTotal, 10, 2))

RETURN NIL