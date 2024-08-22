Algoritmo "Calculadora"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 21/03/2024

// Faça um programa que apresente um menu de opções para o cálculo
// das seguintes operações entre dois números:

// Adição.

// Subtração.

// Multiplicação.

// Divisão.

// O programa deve usar laços de repetição para possibilitar ao
// usuário a escolha da operação desejada, a exibição do resultado e
// a volta ao menu de opções. O programa só termina quando for escolhida
// a opção de saída.

Var // Seção de Declarações das variáveis

   condicao: caractere

   opcao: inteiro

   primeiro_numero, segundo_numero, resultado: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

   Escreval("-------------------------------------------------------------")

   Escreval("CALCULADORA")

   condicao <- "S"

   Enquanto condicao = "S" Faca

      Escreval("-------------------------------------------------------------")

      Escreval("------------------------------")
      Escreval("01 - Adição.")
      Escreval("------------------------------")
      Escreval("02 - Subtração.")
      Escreval("------------------------------")
      Escreval("03 - Multiplicação.")
      Escreval("------------------------------")
      Escreval("04 - Divisão.")
      Escreval("------------------------------")
      Escreval("05 - Sair do programa.")
      Escreval("------------------------------")

      Escreval("")

      Escreval("Escolha uma opção:")
      Leia(opcao)

      Se(opcao <> 5) Entao
      
         Escreval("")

         Escreval("Digite o primeiro número:")
         Leia(primeiro_numero)

         Escreval("")

         Escreval("Digite o segundo número:")
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

         Escreval("Resultado da operação: ", resultado:2:2)

      FimSe

   FimEnquanto

   Escreval("-------------------------------------------------------------")

   Escreval("Fechando calculadora...")

   Escreval("-------------------------------------------------------------")

Fimalgoritmo