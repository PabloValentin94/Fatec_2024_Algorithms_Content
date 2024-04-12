Algoritmo "Pizzaria"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 12/04/2024

// Uma pizzaria produz pizzas e calzones. Os preços do produtos são:

// Pizza: R$45,90
// Calzone: R$33,90
// Refrigerante(Lata): R$4,00
// Suco)Jarra): R$6,00

// Através dessas alternativas, desenvolva um programa em VisualG que leia
// o consumo de uma mesa e apresente o total por cada item consumido e o
// valor total de todo o pedido da mesa. Apresente separadamente os 10% do
// garçom e o valor total, já acrescido dos 10%.

Var // Seção de Declarações das variáveis

    condicao, opcao_menu, opcao_produto, quantidade_opcao: inteiro

    qnt_pizzas, qnt_calzones, qnt_refrigerantes, qnt_sucos: inteiro
    
    preco_pizza, preco_calzone, preco_refrigerante, preco_suco: real
    
    total_pizzas, total_calzones, total_refrigerantes, total_sucos: real
    
    valor_total, valor_a_pagar: real
    
    gorjeta_garcom: real
    
    // Procedimentos:
    
    Procedimento Pedir_Item(item, quantidade:inteiro)
    
    Inicio
    
        Escolha(item)
        
            Caso(1)
            
                qnt_pizzas <- qnt_pizzas + quantidade
                
                total_pizzas <- preco_pizza * qnt_pizzas
            
            Caso(2)
            
                qnt_calzones <- qnt_calzones + quantidade

                total_calzones <- preco_calzone * qnt_calzones
            
            Caso(3)
            
                qnt_refrigerantes <- qnt_refrigerantes + quantidade

                total_refrigerantes <- preco_refrigerante * qnt_refrigerantes
            
            Caso(4)
            
                qnt_sucos <- qnt_sucos + quantidade

                total_sucos <- preco_suco * qnt_sucos
        
        FimEscolha
        
        LimpaTela()
    
    FimProcedimento

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    Escreval("SISTEMA - PIZZARIA")
    
    preco_pizza <- 45.90
    preco_calzone <- 33.90
    preco_refrigerante <- 6.00
    preco_suco <- 4.00
    
    Repita
    
        opcao_menu <- 0
    
        Escreval("-------------------------------------------------------------")
        
        Escreval("Cardápio:")
        
        Escreval("")
        
        Escreval("|--------------------------|")
        Escreval(" 01 - Pizzas: R$", preco_pizza:2:2)
        Escreval("|--------------------------|")
        Escreval(" 02 - Calzones: R$", preco_calzone:2:2)
        Escreval("|--------------------------|")
        Escreval(" 03 - Refrigerantes: R$", preco_refrigerante:2:2)
        Escreval("|--------------------------|")
        Escreval(" 04 - Sucos: R$", preco_suco:2:2)
        Escreval("|--------------------------|")
        
        Escreval("-------------------------------------------------------------")
    
        Escreval("Opções:")
    
        Escreval("")
    
        Escreval("|--------------------------|")
        Escreval(" 01 - Pedir produto.")
        Escreval("|--------------------------|")
        Escreval(" 02 - Finalizar pedido.")
        Escreval("|--------------------------|")
        
        Escreval("")
        
        Escreval("Escolha uma das opções listadas (Especifique o índice.):")
        Leia(opcao_menu)
    
        Escolha(opcao_menu)
    
            Caso(1)
            
                Escreval("")
                
                Escreval("Escolha uma das opções de produtos listadas no cardápio (Especifique o índice.):")
                Leia(opcao_produto)
        
                Escreval("")
                
                Escreval("Indique a quantidade que você deseja do produto indicado:")
                Leia(quantidade_opcao)
            
                Pedir_Item(opcao_produto, quantidade_opcao)
            
            Caso(2)
            
                condicao <- 2
    
        FimEscolha
        
    ATE(condicao = 2)
    
    LimpaTela()
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Listagem - Itens do Pedido:")
    
    Escreval("")
    
    Escreval("Quantidade - Pizzas:", qnt_pizzas)
    Escreval("Valor Unitário - Pizza: R$", preco_pizza:2:2)
    Escreval("Valor total a pagar - Pizzas: R$", total_pizzas:2:2)
    
    Escreval("")
    
    Escreval("Quantidade - Calzones:", qnt_calzones)
    Escreval("Valor unitário - Calzone: R$", preco_calzone:2:2)
    Escreval("Valor total a pagar - Calzones: R$", total_calzones:2:2)
    
    Escreval("")
    
    Escreval("Quantidade - Refrigerantes:", qnt_refrigerantes)
    Escreval("Valor unitário - Refrigerante: R$", preco_refrigerante:2:2)
    Escreval("Valor total a pagar - Refrigerantes: R$", total_refrigerantes:2:2)
    
    Escreval("")
    
    Escreval("Quantidade - Sucos:", qnt_sucos)
    Escreval("Valor unitário - Suco: R$", preco_suco:2:2)
    Escreval("Valor total a pagar - Sucos: R$", total_sucos:2:2)
    
    Escreval("-------------------------------------------------------------")
    
    valor_total <- total_pizzas + total_calzones + total_refrigerantes + total_sucos
    
    gorjeta_garcom <- valor_total * 0.10
    
    valor_a_pagar <- valor_total + gorjeta_garcom
    
    Escreval("Dados - Venda:")
    
    Escreval("")
    
    Escreval("Valor total: R$", valor_total:2:2)
    
    Escreval("")
    
    Escreval("Valor da gorjeta do garçom: R$", gorjeta_garcom:2:2)
    
    Escreval("")
    
    Escreval("Valor que o cliente deve pagar: R$", valor_a_pagar:2:2)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo