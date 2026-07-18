FUNCTION Calculadora
    LOCAL n1, n2, cOperacao, nResultado
    LOCAL cEntrada

   
    INPUT "Digite o primeiro número:" TO cEntrada

    INPUT "Digite a operação (+, -, *, /, ^, R): " TO cOperacao
    IF Upper(cOperacao) != "R"
        
        ACCEPT "Digite o segundo número:" TO cEntrada
        n2 := Val(cEntrada)
    ENDIF

    DO CASE
        CASE cOperacao == "+"
            nResultado := n1 + n2
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "-"
            nResultado := n1 - n2
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "*"
            nResultado := n1 * n2
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "/"
            IF n2 == 0
                QOut("Erro: Divisão por zero não é permitida!")
            ELSE
                nResultado := n1 / n2
                QOut("Resultado: " + Str(nResultado, 10, 2))
            ENDIF

        CASE cOperacao == "^"
            nResultado := n1 ^ n2
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE Upper(cOperacao) == "R"
            IF n1 < 0
                QOut("Erro: Não é possível calcular raiz quadrada de número negativo!")
            ELSE
                nResultado := Sqrt(n1)
                QOut("Resultado: " + Str(nResultado, 10, 2))
            ENDIF

        OTHERWISE
            QOut("Operação inválida!")

    ENDCASE

RETURN NIL