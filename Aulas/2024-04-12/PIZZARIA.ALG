Algoritmo "Pizzaria"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 12/04/2024

// Uma pizzaria produz pizzas e calzones. Os pre�os do produtos s�o:

// Pizza: R$45,90
// Calzone: R$33,90
// Refrigerante(Lata): R$4,00
// Suco)Jarra): R$6,00

// Atrav�s dessas alternativas, desenvolva um programa em VisualG que leia
// o consumo de uma mesa e apresente o total por cada item consumido e o
// valor total de todo o pedido da mesa. Apresente separadamente os 10% do
// gar�om e o valor total, j� acrescido dos 10%.

Var // Se��o de Declara��es das vari�veis

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

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    Escreval("SISTEMA - PIZZARIA")
    
    preco_pizza <- 45.90
    preco_calzone <- 33.90
    preco_refrigerante <- 6.00
    preco_suco <- 4.00
    
    Repita
    
        opcao_menu <- 0
    
        Escreval("-------------------------------------------------------------")
        
        Escreval("Card�pio:")
        
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
    
        Escreval("Op��es:")
    
        Escreval("")
    
        Escreval("|--------------------------|")
        Escreval(" 01 - Pedir produto.")
        Escreval("|--------------------------|")
        Escreval(" 02 - Finalizar pedido.")
        Escreval("|--------------------------|")
        
        Escreval("")
        
        Escreval("Escolha uma das op��es listadas (Especifique o �ndice.):")
        Leia(opcao_menu)
    
        Escolha(opcao_menu)
    
            Caso(1)
            
                Escreval("")
                
                Escreval("Escolha uma das op��es de produtos listadas no card�pio (Especifique o �ndice.):")
                Leia(opcao_produto)
        
                Escreval("")
                
                Escreval("Indique a quantidade que voc� deseja do produto indicado:")
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
    Escreval("Valor Unit�rio - Pizza: R$", preco_pizza:2:2)
    Escreval("Valor total a pagar - Pizzas: R$", total_pizzas:2:2)
    
    Escreval("")
    
    Escreval("Quantidade - Calzones:", qnt_calzones)
    Escreval("Valor unit�rio - Calzone: R$", preco_calzone:2:2)
    Escreval("Valor total a pagar - Calzones: R$", total_calzones:2:2)
    
    Escreval("")
    
    Escreval("Quantidade - Refrigerantes:", qnt_refrigerantes)
    Escreval("Valor unit�rio - Refrigerante: R$", preco_refrigerante:2:2)
    Escreval("Valor total a pagar - Refrigerantes: R$", total_refrigerantes:2:2)
    
    Escreval("")
    
    Escreval("Quantidade - Sucos:", qnt_sucos)
    Escreval("Valor unit�rio - Suco: R$", preco_suco:2:2)
    Escreval("Valor total a pagar - Sucos: R$", total_sucos:2:2)
    
    Escreval("-------------------------------------------------------------")
    
    valor_total <- total_pizzas + total_calzones + total_refrigerantes + total_sucos
    
    gorjeta_garcom <- valor_total * 0.10
    
    valor_a_pagar <- valor_total + gorjeta_garcom
    
    Escreval("Dados - Venda:")
    
    Escreval("")
    
    Escreval("Valor total: R$", valor_total:2:2)
    
    Escreval("")
    
    Escreval("Valor da gorjeta do gar�om: R$", gorjeta_garcom:2:2)
    
    Escreval("")
    
    Escreval("Valor que o cliente deve pagar: R$", valor_a_pagar:2:2)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo