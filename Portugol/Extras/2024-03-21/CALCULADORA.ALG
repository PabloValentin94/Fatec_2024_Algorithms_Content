Algoritmo "Calculadora"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 21/03/2024

// Fa�a um programa que apresente um menu de op��es para o c�lculo
// das seguintes opera��es entre dois n�meros:

// Adi��o.

// Subtra��o.

// Multiplica��o.

// Divis�o.

// O programa deve usar la�os de repeti��o para possibilitar ao
// usu�rio a escolha da opera��o desejada, a exibi��o do resultado e
// a volta ao menu de op��es. O programa s� termina quando for escolhida
// a op��o de sa�da.

Var // Se��o de Declara��es das vari�veis

   condicao: caractere

   opcao: inteiro

   primeiro_numero, segundo_numero, resultado: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Escreval("-------------------------------------------------------------")

   Escreval("CALCULADORA")

   condicao <- "S"

   Enquanto condicao = "S" Faca

      Escreval("-------------------------------------------------------------")

      Escreval("------------------------------")
      Escreval("01 - Adi��o.")
      Escreval("------------------------------")
      Escreval("02 - Subtra��o.")
      Escreval("------------------------------")
      Escreval("03 - Multiplica��o.")
      Escreval("------------------------------")
      Escreval("04 - Divis�o.")
      Escreval("------------------------------")
      Escreval("05 - Sair do programa.")
      Escreval("------------------------------")

      Escreval("")

      Escreval("Escolha uma op��o:")
      Leia(opcao)

      Se(opcao <> 5) Entao
      
         Escreval("")

         Escreval("Digite o primeiro n�mero:")
         Leia(primeiro_numero)

         Escreval("")

         Escreval("Digite o segundo n�mero:")
         Leia(segundo_numero)

         Escolha(opcao)

            Caso(1)

                resultado <- primeiro_numero + segundo_numero

            Caso(2)

                resultado <- primeiro_numero - segundo_numero

            Caso(3)

                resultado <- primeiro_numero * segundo_numero

            Caso(4)

                resultado <- primeiro_numero / segundo_numero

         FimEscolha

      Senao
      
         condicao <- "N"

      FimSe

      Se(condicao <> "N") Entao

         Escreval("")

         Escreval("Resultado da opera��o: ", resultado:2:2)

      FimSe

   FimEnquanto

   Escreval("-------------------------------------------------------------")

   Escreval("Fechando calculadora...")

   Escreval("-------------------------------------------------------------")

Fimalgoritmo