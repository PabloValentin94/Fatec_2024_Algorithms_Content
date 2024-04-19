Algoritmo "Matrizes"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a matrizes no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    i: inteiro

    identificacoes_pessoas: vetor[1..3,1..2] de caractere

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Para i DE 1 ATE 3 Faca

        Escreval("Digite o nome da", i, "ª pessoa:")
        Leia(identificacoes_pessoas[i,1])
        
        Escreval("")
        
        Escreval("Digite o sobrenome da", i, "ª pessoa:")
        Leia(identificacoes_pessoas[i,2])

        Se(i < 3) Entao

            Escreval("")

        FimSe

    FimPara

    Escreval("-------------------------------------------------------------")

    Para i DE 1 ATE 3 Faca
    
        Escreval("Nome completo da", i, "ª pessoa: ", identificacoes_pessoas[i,1], " ", identificacoes_pessoas[i,2], ".")
    
        Se(i < 3) Entao

            Escreval("")

        FimSe
    
    FimPara

    Escreval("-------------------------------------------------------------")

Fimalgoritmo