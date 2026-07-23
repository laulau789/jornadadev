FUNCTION Main()
    LOCAL nSegundos
    LOCAL cHora
    LOCAL nContador := 0

    DO WHILE nContador < 30

        nSegundos := ObterHora()          
        cHora     := FormatarHora( nSegundos )
        ExibirHora( cHora )                

        hb_idleSleep( 1 )                 
        nContador++

    ENDDO

RETURN NIL


FUNCTION ObterHora()
RETURN SECONDS()   

FUNCTION FormatarHora( nSegundos )
    LOCAL nHoras, nMinutos, nSeg
    LOCAL cHoras, cMinutos, cSeg

    nHoras   := INT( nSegundos / 3600 )
    nMinutos := INT( ( nSegundos - nHoras * 3600 ) / 60 )
    nSeg     := INT( nSegundos - nHoras * 3600 - nMinutos * 60 )

    RETURN StrZero( nHoras, 2 ) + ":" + ;
        StrZero( nMinutos, 2 ) + ":" + ;
        StrZero( nSeg, 2 )


FUNCTION ExibirHora( cHora )
    QOut ("Hora atual: " + cHora)
RETURN NIL