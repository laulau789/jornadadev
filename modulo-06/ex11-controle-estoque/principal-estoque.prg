FUNCTION Main()
    LOCAL aEstoque := {}
    LOCAL nOpcao := -1

    SET PROCEDURE TO estoque_lib.prg

    DO WHILE nOpcao != 0

        nOpcao := MostrarMenu()

        DO CASE
            CASE nOpcao == 1
                CadastrarProduto(aEstoque)

            CASE nOpcao == 2
                ListarProdutos(aEstoque)

            CASE nOpcao == 3
                EntradaEstoque(aEstoque)

            CASE nOpcao == 4
                SaidaEstoque(aEstoque)

            CASE nOpcao == 5
                BuscarProdutoMenu(aEstoque)

            CASE nOpcao == 6
                RelatorioEstoque(aEstoque)

            CASE nOpcao == 0
                QOut("")
                QOut("Encerrando o sistema. Até logo!")

                OTHERWISE
                QOut("")
                QOut("Opção inválida! Escolha um número do menu.")
        ENDCASE

    ENDDO

RETURN NIL

FUNCTION MostrarMenu()
    LOCAL cOpcao

    QOut("")
    QOut("========================================")
    QOut("     CONTROLE DE ESTOQUE SIMPLIFICADO")
    QOut("========================================")
    QOut("1 - Cadastrar produto")
    QOut("2 - Listar produtos")
    QOut("3 - Entrada de estoque")
    QOut("4 - Saída de estoque")
    QOut("5 - Buscar produto por código")
    QOut("6 - Relatório de valor em estoque")
    QOut("0 - Sair")
    QOut("========================================")

    ACCEPT "Escolha uma opção: " TO cOpcao

RETURN Val(cOpcao)

FUNCTION BuscarProdutoMenu(aEstoque)
    LOCAL cCodigo, nPos

    QOut("")
    QOut("--- Buscar Produto ---")

    ACCEPT "Código do produto: " TO cCodigo

    nPos := BuscarProduto(aEstoque, cCodigo)

    IF nPos == 0
        QOut("Produto não encontrado.")
    ELSE
        QOut("Produto encontrado na posição " + Str(nPos) + ":")
        QOut("Código     : " + aEstoque[nPos][1])
        QOut("Nome       : " + aEstoque[nPos][2])
        QOut("Quantidade : " + Str(aEstoque[nPos][3]))
        QOut("Preço Unit.: " + Str(aEstoque[nPos][4], 10, 2))
    ENDIF

RETURN NIL