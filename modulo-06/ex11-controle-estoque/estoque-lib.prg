FUNCTION BuscarProduto(aEstoque, cCodigo)
    LOCAL nI

    FOR nI := 1 TO Len(aEstoque)
        IF aEstoque[nI][1] == cCodigo
            RETURN nI
        ENDIF
    NEXT

RETURN 0

FUNCTION CadastrarProduto(aEstoque)
    LOCAL cCodigo, cNome, cQtd, cPreco
    LOCAL nQtd, nPreco

    QOut("")
    QOut("--- Cadastro de Produto ---")

    ACCEPT "Código: " TO cCodigo

    IF BuscarProduto(aEstoque, cCodigo) > 0
        QOut("Erro: já existe um produto com esse código!")
        RETURN NIL
    ENDIF

    ACCEPT "Nome: " TO cNome
    ACCEPT "Quantidade inicial: " TO cQtd
    ACCEPT "Preço unitário: " TO cPreco

    nQtd := Val(cQtd)
    nPreco := Val(cPreco)

    IF nQtd < 0 .OR. nPreco < 0
        QOut("Erro: quantidade e preço não podem ser negativos!")
        RETURN NIL
    ENDIF

    AAdd(aEstoque, {cCodigo, cNome, nQtd, nPreco})

    QOut("Produto cadastrado com sucesso!")

RETURN NIL

FUNCTION ListarProdutos(aEstoque)
    LOCAL nI

    IF Len(aEstoque) == 0
        QOut("")
        QOut("Nenhum produto cadastrado.")
        RETURN NIL
    ENDIF

    QOut("")
    QOut("Código | Nome                 | Qtd    | Preço Unit.")
    QOut("----------------------------------------------------")

    FOR nI := 1 TO Len(aEstoque)
        QOut(PadR(aEstoque[nI][1], 6) + " | " + ;
            PadR(aEstoque[nI][2], 20) + " | " + ;
            Str(aEstoque[nI][3], 6) + " | " + ;
            Str(aEstoque[nI][4], 10, 2))
    NEXT

RETURN NIL



FUNCTION EntradaEstoque(aEstoque)
    LOCAL cCodigo, cQtd
    LOCAL nQtd, nPos

    QOut("")
    QOut("--- Entrada de Estoque ---")

    ACCEPT "Código do produto: " TO cCodigo

    nPos := BuscarProduto(aEstoque, cCodigo)

    IF nPos == 0
        QOut("Erro: produto não encontrado!")
        RETURN NIL
    ENDIF

    ACCEPT "Quantidade a adicionar: " TO cQtd
    nQtd := Val(cQtd)

    IF nQtd <= 0
        QOut("Erro: quantidade deve ser maior que zero!")
        RETURN NIL
    ENDIF

    aEstoque[nPos][3] += nQtd

    QOut("Entrada registrada! Nova quantidade: " + Str(aEstoque[nPos][3]))

RETURN NIL

FUNCTION SaidaEstoque(aEstoque)
    LOCAL cCodigo, cQtd
    LOCAL nQtd, nPos

    QOut("")
    QOut("--- Saída de Estoque ---")

    ACCEPT "Código do produto: " TO cCodigo

    nPos := BuscarProduto(aEstoque, cCodigo)

    IF nPos == 0
        QOut("Erro: produto não encontrado!")
        RETURN NIL
    ENDIF

    ACCEPT "Quantidade a retirar: " TO cQtd
    nQtd := Val(cQtd)

    IF nQtd <= 0
        QOut("Erro: quantidade deve ser maior que zero!")
        RETURN NIL
    ENDIF

    IF nQtd > aEstoque[nPos][3]
        QOut("Erro: estoque insuficiente! Disponível: " + Str(aEstoque[nPos][3]))
        RETURN NIL
    ENDIF

    aEstoque[nPos][3] -= nQtd

    QOut("Saída registrada! Nova quantidade: " + Str(aEstoque[nPos][3]))

RETURN NIL

FUNCTION RelatorioEstoque(aEstoque)
    LOCAL nI, nValorProduto, nTotalGeral := 0

    IF Len(aEstoque) == 0
        QOut("")
        QOut("Nenhum produto cadastrado.")
        RETURN NIL
    ENDIF

    FOR nI := 1 TO Len(aEstoque)
        nValorProduto := aEstoque[nI][3] * aEstoque[nI][4]
        nTotalGeral += nValorProduto

        QOut(aEstoque[nI][2] + " -> " + ;
            Str(aEstoque[nI][3]) + " un. x R$ " + ;
            Str(aEstoque[nI][4], 10, 2) + " = R$ " + ;
            Str(nValorProduto, 12, 2))
    NEXT

    QOut("----------------------------------------")
    QOut("VALOR TOTAL EM ESTOQUE: R$ " + Str(nTotalGeral, 12, 2))

RETURN NIL