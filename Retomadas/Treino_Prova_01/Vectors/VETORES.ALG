Algoritmo "Vetores"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a vetores no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    i: inteiro

    numeros: vetor[1..3] de inteiro
    
    media_numeros: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Para i DE 1 ATE 3 Faca
    
        Escreval("Digite um", i, "º número:")
        Leia(numeros[i])
        
        Se(i < 3) Entao
        
            Escreval("")
            
        FimSe
        
        media_numeros <- media_numeros + numeros[i]
    
    FimPara
    
    Escreval("-------------------------------------------------------------")
    
    media_numeros <- media_numeros / 3
    
    Escreval("Média simples (Aproximadamente.) dos números digitados: ", media_numeros:2:2)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo