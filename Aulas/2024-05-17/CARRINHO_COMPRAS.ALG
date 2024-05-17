Algoritmo "Carrinho_Compras"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução ao conceito de estrutura de dados.
// Autor(a): Pablo Valentin.
// Data atual: 17/05/2024

// Faça um algoritmo que simule um carrinho de compras, cujas funções são:

// Adicionar produto;

// Atualizar item;

// Remover item;

// Listar itens.

Tipo

    produto = Registro
    
        nome: caractere
        qnt: inteiro
        preco: real
        total:real
        
    FimRegistro
    
Procedimento Adicionar()

Var

    i: inteiro
    
    indice_disponivel: inteiro

Inicio

    qnt_itens_adicionados <- qnt_itens_adicionados + 1

    Para i DE 1 ATE 5 Faca
    
        Se(itens[i].nome = "") Entao
        
            indice_disponivel <- i
            
            Se(i < 5) Entao
            
                Interrompa()
            
            FimSe
        
        FimSe
    
    FimPara
    
    Escreval("Digite o nome do produto:")
    Leia(itens[indice_disponivel].nome)
    
    Escreval("")

    Escreval("Digite a quantidade desejada do produto:")
    Leia(itens[indice_disponivel].qnt)
    
    Escreval("")

    Escreval("Digite o preço do produto:")
    Leia(itens[indice_disponivel].preco)

    itens[indice_disponivel].total <- itens[indice_disponivel].qnt * itens[indice_disponivel].preco

FimProcedimento

Procedimento Atualizar()

Var

    indice_item: inteiro

Inicio

    Escreval("Informe o código do produto:")
    Leia(indice_item)
    
    Escreval("")
    
    Escreval("Item selecionado: ", itens[indice_item].nome, ".")
    
    Escreval("")
    
    Escreval("Digite o novo nome do produto:")
    Leia(itens[indice_item].nome)
    
    Escreval("")

    Escreval("Digite a quantidade desejada do produto:")
    Leia(itens[indice_item].qnt)
    
    Escreval("")

    Escreval("Digite o novo preço do produto:")
    Leia(itens[indice_item].preco)

    itens[indice_item].total <- itens[indice_item].qnt * itens[indice_item].preco

FimProcedimento

Procedimento Remover()

Var

    indice_item: inteiro

Inicio

    Escreval("Informe o código do produto:")
    Leia(indice_item)
    
    Escreval("")

    Escreval("Item selecionado: ", itens[indice_item].nome, ".")
    
    Escreval("")

    itens[indice_item].nome <- ""
    itens[indice_item].qnt <- 0
    itens[indice_item].preco <- 0
    itens[indice_item].total <- 0
    
    qnt_itens_adicionados <- qnt_itens_adicionados - 1
    
    Escreval("Item removido com sucesso.")

FimProcedimento

Procedimento Listar()

Var

    i: inteiro

Inicio

    Para i DE 1 ATE 5 Faca
    
        Se(itens[i].nome <> "") Entao
        
             Escreval("Produto:", i, ":")
             
             Escreval("")
        
             Escreval("Código:", i, ".")
             Escreval("Nome: ", itens[i].nome, ".")
             Escreval("Quantidade:", itens[i].qnt, ".")
             Escreval("Valor unitário: R$", itens[i].preco:2:2)
             Escreval("Total: R$", itens[i].preco:2:2)
             
             Se(i < 5) E (itens[i + 1].nome <> "") Entao
             
                 Escreval("")
                 
             FimSe
        
        FimSe
    
    FimPara

FimProcedimento

Var // Seção de Declarações das variáveis

    itens: vetor[1..5] de produto
    
    opcao: inteiro
    
    qnt_itens_adicionados: inteiro
    
    espera: caractere

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Repita

        LimpaTela()

        Escreval("--------------------------------------------------------")
    
        Escreval("Carrinho de Compras")
    
        Escreval("--------------------------------------------------------")
    
        Escreval("Opções:")
    
        Escreval("")
    
        Escreval("---------------------------------")
        Escreval("01 - Adicionar ao carrinho.")
        Escreval("---------------------------------")
        Escreval("02 - Atualizar item.")
        Escreval("---------------------------------")
        Escreval("03 - Remover do carrinho")
        Escreval("---------------------------------")
        Escreval("04 - Exibir carrinho de compras.")
        Escreval("---------------------------------")
        Escreval("05 - Confirmar compras e sair.")
        Escreval("---------------------------------")
    
        Escreval("")
    
        Escreval("Escolha uma das opções do menu acima:")
        Leia(opcao)
        
        Escreval("--------------------------------------------------------")
    
        Escolha(opcao)
    
            Caso(01)
        
                Se(qnt_itens_adicionados + 1 > 5) Entao
                
                    Escreval("Limite de itens já atingido!")
                    
                    Escreval("")
                    
                    Escreva("Pressione Enter para continuar.")
                    Leia(espera)
                
                Senao
                
                    Adicionar()
                
                FimSe
        
            Caso(02)
        
               Atualizar()
        
            Caso(03)
        
               Remover()
               
               Escreval("")
               
               Escreva("Pressione Enter para continuar.")
               Leia(espera)
        
            Caso(04)
        
              Listar()
              
              Escreval("")
              
              Escreva("Pressione Enter para continuar.")
              Leia(espera)
    
        FimEscolha
        
    ATE(opcao = 5)

Fimalgoritmo