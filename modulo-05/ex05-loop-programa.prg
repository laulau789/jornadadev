 FUNCTION Validacao()
    LOCAL cNome, cDisciplina, nNota1, nNota2, nMedia, cLoop

    WHILE .T.
       WHILE .T.
       ACCEPT "Digite o nome do aluno: " TO cNome
       IF Len(Trim(cNome)) > 0
          EXIT
       ENDIF   
       QOut ("Inválido, campo vazio!")
       ENDDO

       WHILE .T.
       ACCEPT "Digite a disciplina: " TO cDisciplina
       IF Len (cDisciplina) == 3 .AND. cDisciplina == Upper (cDisciplina)
          EXIT
       ENDIF
       QOut ("Inválido, use somente três letras maiúsculas!")
       ENDDO

       WHILE .T.
       INPUT "Digite a primeira nota: " TO nNota1
       IF  nNota1 >= 0 .AND. nNota1 <=10
          EXIT
       ENDIF
       QOut ("Inválido, digite apenas números entre 0 e 10!")
       ENDDO   
    
        WHILE .T.
        INPUT "Digite a segunda nota: " TO nNota2
        IF nNota2 >= 0 .AND. nNota2 <=10
          EXIT
        ENDIF
        QOut ("Inválido, digite apenas números entre 0 e 10!")
        ENDDO  
    
    nMedia := (nNota1 + nNota2)/2
    QOut ("Nome: " + cNome)
    QOut ("Disciplina: " + cDisciplina)
    QOut ("Média: " + LTrim((Str(nMedia))))

      ACCEPT "Deseja calcular outro? (S/N): " TO cLoop
      cLoop := Upper(cLoop)
      IF cLoop != "S"
        QOut ("Programa encerrado.")
      EXIT
      ENDIF

   ENDDO
RETURN NIL