FUNCTION Main()
    LOCAL n1, n2, nResultado

    n1 := LerNumero("Digite o primeiro valor: ")
    n2 := LerNumero("Digite o segundo valor: ")

    IF Calcular(n1, n2, @nResultado)
        MostrarResultado(n1, n2, nResultado)
    ELSE
        QOut("Operação inválida!")
    ENDIF
RETURN NIL

FUNCTION LerNumero(cMensagem)
    LOCAL cValor
    ACCEPT cMensagem TO cValor
RETURN Val(cValor)

FUNCTION Calcular(n1, n2, nResultado)
    LOCAL cOp
    ACCEPT "Operação (+,-,*,/): " TO cOp

    DO CASE
        CASE cOp == "+"
            nResultado := n1 + n2
        CASE cOp == "-"
            nResultado := n1 - n2
        CASE cOp == "*"
            nResultado := n1 * n2
        CASE cOp == "/"
            IF n2 == 0
                RETURN .F.
            ENDIF
            nResultado := n1 / n2
            OTHERWISE
            RETURN .F.
    ENDCASE
RETURN .T.

FUNCTION MostrarResultado(n1, n2, nResultado)
    QOut("Resultado: " + Str(n1) + " = " + Str(nResultado))
RETURN NIL