FUNCTION Main()
QOut ("Imprima os números de 1 a 100")
Sequencia()
QOut("")
QOut ("Imprima os números de -50 a 50")
Num50()
QOut ("Imprima os números de 80 a 5 em ordem decrescente")
Decrescente()
RETURN NIL

//a) Imprima os números de 1 a 100
FUNCTION Sequencia()
LOCAL nN1
nN1 := 1
   FOR nN1 := 1 TO 100 STEP 1
    QOut (Str(nN1, 3))
   NEXT
RETURN NIL

//b)Imprima os números de -50 a 50
FUNCTION Num50
LOCAL nN1
nN1 := 0
   FOR nN1 := -50 TO 50 STEP 1
     QOut (Str(nN1, 3))
   NEXT
RETURN NIL

//c) Imprima os números de 80 a 5 em ordem decrescente
FUNCTION Decrescente()
LOCAL nN1
nN1 := 1
    FOR nN1 := 80 TO 5 STEP -1
     QOut (Str(nN1, 3))
    NEXT
RETURN NIL