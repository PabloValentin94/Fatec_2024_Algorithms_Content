Algoritmo "Desconto_Forma_Pagamento_IF"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: calcula a m�dia de um aluno utilizando estruturas de condi��o.
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

// Fa�a um algoritmo que d� um desconto conforme o m�todo de pagamento
// escolhida pelo cliente, conforme os seguintes crit�rios:

// N�o h� desconto no cart�o.

// H� 6% de desconto no Pix.

// H� 10% de desconto no dinheiro.

// O algoritmo dever� recalcular o valor a ser pago.

Var // Se��o de Declara��es das vari�veis

    valor_pagamento, valor_desconto: real
    
    forma_pagamento: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

       Escreval("-----------------------------------------------------------")

       Escreval("Digite o valor a ser pago pelo cliente:")
       Leia(valor_pagamento)
       
       Escreval("-----------------------------------------------------------")
       
       Escreval("--------------------")
       Escreval("01 - Cart�o.")
       Escreval("--------------------")
       Escreval("02 - Pix.")
       Escreval("--------------------")
       Escreval("03 - Dinheiro.")
       Escreval("--------------------")
       
       Escreval("")
       
       Escreval("Digite o n�mero referente � sua forma de pagamento:")
       Leia(forma_pagamento)
       
       Escreval("-----------------------------------------------------------")
       
       Se(forma_pagamento = 01) Entao
       
           valor_desconto <- valor_pagamento * 0
       
       Senao
       
            Se (forma_pagamento = 02) Entao
            
                valor_desconto <- valor_pagamento * 0.06
            
            Senao
            
                 Se(forma_pagamento = 03) Entao
                 
                     valor_desconto <- valor_pagamento * 0.10
                 
                 Senao
                 
                     Escreval("Op��o inexistente!")
                     
                     Escreval("-----------------------------------------------------------")
                 
                 Fimse
            
            FimSe
       
       FimSe
       
       Escreval("Valor a ser pago, com desconto, pelo cliente: R$", (valor_pagamento - valor_desconto):2:2)

       Escreval("-----------------------------------------------------------")

Fimalgoritmo