Algoritmo "Churrasco_Registro"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a registros (Análogo ao conceito de Classe.).
// Autor(a): Pablo Valentin.
// Data atual: 10/05/2024

Tipo item = Registro

    nome: caractere
    qnt: real
    valor_unitario:real
    valor_total: real

FimRegistro

Var // Seção de Declarações das variáveis
    
    itens_churrasco: vetor[1..100] de item
    
    qnt_pessoas, i, qnt_itens: inteiro
    
    decisao: caractere
    
    total_a_pagar: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("------------------------------------------------------------")
    
    Escreval("CHURRASCO")
    
    Escreval("------------------------------------------------------------")
    
    Escreval("Quantas pessoas irão nesse churrasco (Crianças não pagam.):")
    Leia(qnt_pessoas)
    
    decisao <- "S"
    
    Enquanto decisao = "S" Faca
    
        i <- i + 1
    
        Escreval("------------------------------------------------------------")
        
        Escreval("Digite o nome do", i, "º produto:")
        Leia(itens_churrasco[i].nome)
        
        Escreval("")
        
        Escreval("Digite a quantidade do", i, "º produto (Por unidade ou quilo.):")
        Leia(itens_churrasco[i].qnt)
        
        Escreval("")
        
        Escreval("Digite o preço do", i, "º produto:")
        Leia(itens_churrasco[i].valor_unitario)
        
        Escreval("")
        
        itens_churrasco[i].valor_total <- itens_churrasco[i].valor_unitario * itens_churrasco[i].qnt
    
        Escreval("Deseja adicionar mais um item? (S/N)")
        Leia(decisao)
        
        Se(i + 1 > 100) E (decisao = "S") Entao
        
            Escreval("")
        
            Escreval("Limite de itens já atingido!")
            
            decisao <- "N"
            
        FimSe
        
        qnt_itens <- i
    
    FimEnquanto
    
    LimpaTela()
    
    Escreval("------------------------------------------------------------")
    
    Escreval("Listagem de itens:")
    
    Para i DE 1 ATE qnt_itens Faca
    
        Escreval("")
        
        Escreval(i:1, "º produto:")
        
        Escreval("")
        
        Escreval("Produto: ", itens_churrasco[i].nome, ".")
        Escreval("")
        Escreval("Quantidade pedida:", itens_churrasco[i].qnt)
        Escreval("")
        Escreval("Valor unitário: ", itens_churrasco[i].valor_unitario:2:2)
        Escreval("")
        Escreval("Total gasto: ", itens_churrasco[i].valor_total:2:2)
        
        total_a_pagar <- total_a_pagar + itens_churrasco[i].valor_total
    
    FimPara
    
    Escreval("------------------------------------------------------------")
    
    Escreval("Total a se pagar: ", total_a_pagar:2:2)
    
    Escreval("")
    
    Escreval("Total a se pagar, por pessoa: ", (total_a_pagar / qnt_pessoas):2:2)
    
    Escreval("------------------------------------------------------------")

Fimalgoritmo