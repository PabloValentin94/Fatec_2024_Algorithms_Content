Algoritmo "IMC"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: calcula o IMC do usu�rio utilizando estruturas de condi��o.
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

// Fa�a um algoritmo que calcule o IMC (�ndice de Massa Corporal) com base nos
// dados obtidos.

// IMC:	                CLASSIFICA��O:        OBESIDADE (GRAU):

// MENOR QUE 18,5	       MAGREZA               Nenhuma
// ENTRE 18,5 E 24,9	    NORMAL                Nenhuma
// ENTRE 25,0 E 29,9	    SOBREPESO	           I
// ENTRE 30,0 E 39,9	    OBESIDADE	           II
// MAIOR QUE 40,0	       OBESIDADE GRAVE	     III

Var // Se��o de Declara��es das vari�veis

    peso, altura: real
    
    imc: real
    
    classificacao: caractere

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Escreval("---------------------------------------------------------------")

   Escreval("SISTEMA - IMC")
   
   Escreval("---------------------------------------------------------------")

   Escreval("Informe seu peso (Quilos):")
   Leia(peso)
   
   Escreval("")
   
   Escreval("Informe sua altura (Metros):")
   Leia(altura)
   
   Escreval("---------------------------------------------------------------")
   
   imc <- peso / (altura * altura)
   
   Escreval("Seu �ndice de Massa Corporal �: ", imc:2:2)
   
   Escreval("---------------------------------------------------------------")

   Se(imc < 18.5) Entao
   
       classificacao <- "Magreza (Abaixo do peso.)"
   
   Senao
   
      Se(imc >= 18.5) E (imc < 25) Entao
      
          classificacao <- "Normal (Peso ideal.)"
      
      Senao
      
          Se(imc >= 25) E (imc < 30) Entao
          
              classificacao <- "Sobrepeso (Obesidade grau I.)"
          
          Senao
          
              Se(imc >= 30) E (imc < 40) Entao
              
                  classificacao <- "Obesidade (Obesidade grau II.)"
              
              Senao
              
                  classificacao <- "Obesidade grave (Obesidade grau III.)"
              
              FimSe
          
          FimSe
      
      FimSe
   
   FimSe
   
   Escreval("Classifica��o: ", classificacao)

   Escreval("---------------------------------------------------------------")

Fimalgoritmo