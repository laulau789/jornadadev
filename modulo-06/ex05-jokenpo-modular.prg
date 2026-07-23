FUNCTION Main()
    LOCAL cJogadaUsuario, cJogadaCPU, cVencedor


    QOut("Escolha: Pedra, Papel, Tesoura")
    ACCEPT "Sua jogada: " TO cJogadaUsuario        
    cJogadaUsuario := AllTrim(cJogadaUsuario)

    IF !ValidarJogada(cJogadaUsuario)             
        QOut("Jogada inválida! Use apenas Pedra, Papel ou Tesoura.")
        RETURN NIL
    ENDIF

    cJogadaCPU := SortearJogadaCPU()

    cVencedor := DefinirVencedor(cJogadaUsuario, cJogadaCPU)

    MostrarResultado(cJogadaUsuario, cJogadaCPU, cVencedor)

RETURN NIL


FUNCTION SortearJogadaCPU()
    LOCAL aJogadas := {"Pedra", "Papel", "Tesoura"}
    LOCAL nSorteio

    nSorteio := Int(hb_Random() * 3) + 1

RETURN aJogadas[nSorteio]


FUNCTION ValidarJogada(cJogada)       
    IF cJogada == "Pedra" .OR. cJogada == "Papel" .OR. cJogada == "Tesoura"
        RETURN .T.
    ENDIF

RETURN .F.


FUNCTION DefinirVencedor(cJogada1, cJogada2) 
    IF cJogada1 == cJogada2
        RETURN "EMPATE"
    ENDIF

    IF (cJogada1 == "Pedra" .AND. cJogada2 == "Tesoura") .OR. ;
            (cJogada1 == "Papel" .AND. cJogada2 == "Pedra") .OR. ;
            (cJogada1 == "Tesoura" .AND. cJogada2 == "Papel")
        RETURN "USUARIO"
    ENDIF

RETURN "CPU"



FUNCTION MostrarResultado(cJogadaUsuario, cJogadaCPU, cVencedor)
    QOut("")
    QOut("Você jogou: " + NomeJogada(cJogadaUsuario))
    QOut("CPU jogou : " + NomeJogada(cJogadaCPU))
    QOut("")

    DO CASE
        CASE cVencedor == "EMPATE"
            QOut(">> EMPATE! <<")
        CASE cVencedor == "USUARIO"
            QOut(">> VOCÊ VENCEU! <<")
        CASE cVencedor == "CPU"
            QOut(">> CPU VENCEU! <<")
    ENDCASE

RETURN NIL


FUNCTION NomeJogada(cJogada)
    DO CASE
        CASE cJogada == "Pedra"
            RETURN "Pedra"
        CASE cJogada == "Papel"
            RETURN "Papel"
        CASE cJogada == "Tesoura"
            RETURN "Tesoura"
    ENDCASE

RETURN "Desconhecida"
