FUNCTION Media()
    LOCAL nN1, nN2, nN3, nN4, nResultado

    INPUT "Digite a nota do 1º bimestre: " TO nN1
    INPUT "Digite a nota do 2º bimestre: " TO nN2
    INPUT "Digite a nota do 3º bimestre: " TO nN3
    INPUT "Digite a nota do 4º bimestre: " TO nN4

    nResultado := (nN1*1 + nN2*2 + nN3*3 + nN4*4)/ (1+2+3+4)

    QOut ("A média ponderada é: " + (Str(nResultado, 6, 2)))

RETURN NIL