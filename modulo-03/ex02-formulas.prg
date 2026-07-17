//**Área de um circulo:**
#define PI 3.141592653589793

FUNCTION Main()
  Area()
  Hipotenusa()
  Imc()
RETURN NIL

FUNCTION Area()
  LOCAL nRaio, nResultado 
    INPUT "Digite o raio do circulo: " TO nRaio 

    nResultado := (nRaio ^ 2) * PI

    QOut ("A área do circulo é: " + Str(nResultado, 10, 2))

RETURN NIL 

//**Hipotenusa de um triângulo retângulo:**
FUNCTION Hipotenusa() 
   LOCAL nCateto1, nCateto2, nHipotenusa 
    INPUT "Digite o primeiro cateto: " TO nCateto1 
    INPUT "Digite o segundo cateto: " TO nCateto2 

    nHipotenusa := Sqrt((nCateto1 ^ 2)+(nCateto2 ^ 2)) 
    QOut ("O valor da hipotenusa é: " + Str(nHipotenusa, 10, 2)) 

RETURN NIL

//**índice de massa corporal:**
FUNCTION Imc()
   LOCAL nPeso, nAltura, nImc 
     INPUT "Digite o seu peso: " TO nPeso 
     INPUT "Digite sua altura: " TO nAltura 

     nAltura := nAltura/100 
     nImc :=  nPeso / (nAltura ^ 2) 
     QOut ("O seu imc é: " + Str(nImc,10,2))
RETURN NIL