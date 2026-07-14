REQUEST HB_CODEPAGE_UTF8
Function Main()
    LOCAL cNome   := "Ana Laura"
    LOCAL cCidade := "Votorantim"
    LOCAL cCurso  := "Harbour/ADVPL"
      
   HB_CDPSELECT( "UTF8" )

    QOut("==========================")
    QOut("  FICHA DE APRESENTAÇÃO  ")
    QOut("==========================")

    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("==========================")
RETURN NIL