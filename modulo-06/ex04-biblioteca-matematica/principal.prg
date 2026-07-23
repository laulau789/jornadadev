SET PROCEDURE TO matematica.prg 

FUNCTION Main()
    LOCAL nN, nA, nB
    
    ACCEPT "Digite um número para Fatorial/Primo: " TO nN
    nN := Val(nN)

    QOut("FatorialN(" + Str(nN) + ") = " + Str(FatorialN(nN)))
    QOut(Str(nN) + " é primo? " + IIf(EhPrimo(nN), "Sim", "Nao"))

    ACCEPT "Digite o valor A (para MDC/MMC): " TO nA
    ACCEPT "Digite o valor B (para MDC/MMC): " TO nB
    nA := Val(nA)
    nB := Val(nB)

    QOut("")
    QOut("MDC(" + Str(nA) + "," + Str(nB) + ") = " + Str(MDC(nA, nB)))
    QOut("MMC(" + Str(nA) + "," + Str(nB) + ") = " + Str(MMC(nA, nB)))

RETURN NIL