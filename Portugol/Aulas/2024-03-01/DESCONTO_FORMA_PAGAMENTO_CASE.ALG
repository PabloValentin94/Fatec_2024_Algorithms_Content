Algoritmo "Desconto_Forma_Pagamento_Case"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula a média de um aluno utilizando estruturas de condição.
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

// Faça um algoritmo que dê um desconto conforme o método de pagamento
// escolhida pelo cliente, conforme os seguintes critérios:

// Não há desconto no cartão.

// Há 6% de desconto no Pix.

// Há 10% de desconto no dinheiro.

// O algoritmo deverá recalcular o valor a ser pago.

Var // Seção de Declarações das variáveis

    valor_pagamento, valor_desconto: real

    forma_pagamento: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

       Escreval("-----------------------------------------------------------")

       Escreval("Digite o valor a ser pago pelo cliente:")
       Leia(valor_pagamento)

       Escreval("-----------------------------------------------------------")

       Escreval("--------------------")
       Escreval("01 - Cartão.")
       Escreval("--------------------")
       Escreval("02 - Pix.")
       Escreval("--------------------")
       Escreval("03 - Dinheiro.")
       Escreval("--------------------")

       Escreval("")

       Escreval("Digite o número referente à sua forma de pagamento:")
       Leia(forma_pagamento)

       Escreval("-----------------------------------------------------------")

       Se(forma_pagamento > 03) OU (forma_pagamento < 01) Entao
       
           Escreval("Opção inexistente!")
           
           Escreval("-----------------------------------------------------------")
       
       Senao
       
           Escolha(forma_pagamento)

               Caso(01)

                   valor_desconto <- valor_pagamento * 0

               Caso(02)

                   valor_desconto <- valor_pagamento * 0.06

               Caso(03)

                   valor_desconto <- valor_pagamento * 0.10

           FimEscolha
       
       FimSe

       Escreval("Valor a ser pago, com desconto, pelo cliente: R$", (valor_pagamento - valor_desconto):2:2)

       Escreval("-----------------------------------------------------------")

Fimalgoritmo