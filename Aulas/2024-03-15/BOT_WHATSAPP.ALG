Algoritmo "Bot_WhatsApp"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Desenvolvimento de um bot de atendimento para uma lanchonete.
// Autor(a): Pablo Valentin.
// Data atual: 15/03/2024

// Fa�a um bot de WhatsApp. Ele dever� atender uma lanchonete e guiar o cliente
// pelas seguintes op��es:

// Card�pio.
// Novo Pedido.
// Acompanhar pedido.
// Forma de Pagamento.

// No final do algoritmo, dever� ser exibido o valor total do pedido, e tamb�m,
// a taxa de entrega.

Var // Se��o de Declara��es das vari�veis

    condicao: inteiro
    
    precos_produtos: vetor[1..2] de real
    
    produto: inteiro
    
    qnt_produto: inteiro
    
    forma_pagamento: caractere
    
    valor_total_produtos, valor_entrega: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("--------------------------------------------------------------")
    
    Escreval("SISTEMA - LANCHONETE")
    
    precos_produtos[1] <- 5.00
    
    precos_produtos[2] <- 3.50
    
    condicao <- 0
    
    Repita
    
        Escreval("--------------------------------------------------------------")
        
        Escreval("----------------------------------")
        Escreval("1 - Exibir card�pio.")
        Escreval("----------------------------------")
        Escreval("2 - Novo pedido.")
        Escreval("----------------------------------")
        
        Escreval("")
        
        Escreval("Escolha uma op��o do menu:")
        Leia(condicao)
        
        Se(condicao = 1) Entao
        
            LimpaTela()
        
            Escreval("--------------------------------------------------------------")

            Escreval("Card�pio:")
            
            Escreval("")
            
            Escreval("----------------------------------")
            Escreval("1 - Salgado: R$5,00")
            Escreval("----------------------------------")
            Escreval("2 - Coca-Cola: R$3,50")
            Escreval("----------------------------------")
        
        FimSe
    
    ATE(condicao = 2)
    
    Escreval("--------------------------------------------------------------")

    Escreval("Novo pedido:")
    
    Escreval("")
    
    Escreval("Escolha uma das op��es do card�pio:")
    Leia(produto)
    
    Escreval("")
    
    Escreval("Digite a quantidade desejada:")
    Leia(qnt_produto)
    
    condicao <- 0
    
    Repita
    
        Escreval("--------------------------------------------------------------")
    
        Escreval("Forma de pagamento:")
    
        Escreval("")
    
        Escreval("----------------------------------")
        Escreval("1 - Dinheiro.")
        Escreval("----------------------------------")
        Escreval("2 - Cart�o.")
        Escreval("----------------------------------")
    
        Escreval("")
    
        Escreval("Escolha uma forma de pagamento:")
        Leia(condicao)
        
    ATE(condicao = 1) OU (condicao = 2)
    
    Se(condicao = 2) Entao
    
        Escreval("--------------------------------------------------------------")
        
        Escreval("A m�quina de cart�o ser� enviada juntamente ao pedido.")
        
    FimSe
    
    Escreval("--------------------------------------------------------------")
    
    Escreval("Dados do pedido:")
    
    Escreval("")
    
    Escolha(produto)
    
        Caso 1
        
            Escreval("O produto selecionado foi um salgado, que custa R$", precos_produtos[produto]:2:2)
        
        Caso 2
        
            Escreval("O produto selecionado foi uma coca-cola, que custa R$", precos_produtos[produto]:2:2)
    
    FimEscolha
    
    Escolha(condicao)

        Caso 1

            forma_pagamento <- "Dinheiro."

        Caso 2

            forma_pagamento <- "Cart�o."

    FimEscolha
    
    Escreval("")
    
    Escreval("Quantidade pedida:", qnt_produto)
    
    Escreval("")
    
    valor_total_produtos <- precos_produtos[produto] * qnt_produto

    Escreval("Valor total a pagar em rela��o ao produto: R$", valor_total_produtos:2:2)
    
    Escreval("")
    
    valor_entrega <- valor_total_produtos * 0.10

    Escreval("Valor da taxa de entrega: R$", valor_entrega:2:2)
    
    Escreval("")
    
    Escreval("Forma de pagamento escolhida: ", forma_pagamento)
    
    Escreval("")

    Escreval("Valor total do pedido: R$", (valor_total_produtos + valor_entrega):2:2)
    
    Escreval("--------------------------------------------------------------")

Fimalgoritmo