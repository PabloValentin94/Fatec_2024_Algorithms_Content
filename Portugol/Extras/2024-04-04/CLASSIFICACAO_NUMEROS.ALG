Algoritmo "Classificacao_Numeros"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/04/2024

// Crie um programa que armazene 10 números digitados pelo usuário
// em dois vetores: um somente para números pares, e outro somente
// para números ímpares.

// Após isso, exiba os valores dos dois vetores na tela, em sequência.

// Obs.: As posições que não receberem valores exibirão o número zero.
// Não se preocupe com isso por enquanto.

Var // Seção de Declarações das variáveis

    i, contador_numeros_validos: inteiro

    numeros_digitados: vetor[1..10] de inteiro
 
    numeros_pares, numeros_impares: vetor[1..10] de inteiro
 
Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("CLASSIFICAÇÃO - NÚMEROS INTEIROS")

    Escreval("-------------------------------------------------------------")
    
    Escreval("Digite números maiores que 0!")

    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 10 Faca
    
        Escreval("Digite o", i, "º número:")
        Leia(numeros_digitados[i])
        
        Se(numeros_digitados[i] % 2 = 0) Entao
        
            numeros_pares[i] <- numeros_digitados[i]
            
        Senao
        
            numeros_impares[i] <- numeros_digitados[i]
        
        FimSe
        
        Se(i < 10) Entao

            Escreval("")

        FimSe
    
    FimPara
    
    LimpaTela()
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Números pares:")
    
    contador_numeros_validos <- 0
    
    Para i DE 1 ATE 10 Faca
    
        Se(numeros_pares[i] > 0) Entao
        
            Escreval("")
            
            Escreval(numeros_pares[i], " (", i:1, "º número digitado.)")
        
        Senao
        
            contador_numeros_validos <- contador_numeros_validos + 1
        
        FimSe
    
    FimPara
    
    Se(contador_numeros_validos = 10) Entao
    
        Escreval("")
        
        Escreval("Nenhum número par digitado.")
        
    FimSe
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Números ímpares:")

    contador_numeros_validos <- 0

    Para i DE 1 ATE 10 Faca

        Se(numeros_impares[i] > 0) Entao

            Escreval("")

            Escreval(numeros_impares[i], " (", i:1, "º número digitado.)")

        Senao

            contador_numeros_validos <- contador_numeros_validos + 1

        FimSe

    FimPara
    
    Se(contador_numeros_validos = 10) Entao

        Escreval("")

        Escreval("Nenhum número ímpar digitado.")

    FimSe

    Escreval("-------------------------------------------------------------")

Fimalgoritmo