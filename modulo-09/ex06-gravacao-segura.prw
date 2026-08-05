#include "protheus.ch"

USER FUNCTION STTIP003SALVAR()

    LOCAL lOk   := .T.
    LOCAL oErro

    BeginTran()

    BEGIN SEQUENCE

        IF Empty(AllTrim(M->Z1_CLIENTE))
            MsgAlert("Cliente é obrigatório!", "Atenção")
            lOk := .F.
            Break()
        ENDIF

        IF Empty(AllTrim(M->Z1_ASSUNTO))
            MsgAlert("Assunto é obrigatório!", "Atenção")
            lOk := .F.
            Break()
        ENDIF

        dbSelectArea("SZ1")

        IF INCLUI
            RecLock("SZ1", .T.)
        ELSE
            RecLock("SZ1", .F.)
        ENDIF

        // Grava os campos
        SZ1->Z1_CODIGO   := M->Z1_CODIGO
        SZ1->Z1_CLIENTE  := M->Z1_CLIENTE
        SZ1->Z1_ASSUNTO  := M->Z1_ASSUNTO

        MsUnLock()

    RECOVER WITH oErro

        lOk := .F.

        RollBackTran()

        MsgStop("Erro ao salvar: " + oErro:Description, "Erro")

        U_GRAVARLOG("STTIP003SALVAR", oErro)

    END SEQUENCE

    IF lOk
        CommitTran()
        MsgInfo("Contato salvo com sucesso!", "Sucesso")
    ELSE
        RollBackTran()
    ENDIF

RETURN lOk