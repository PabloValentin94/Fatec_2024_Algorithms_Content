Algoritmo "Procedimentos"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a procedimentos (Não possuem retorno.) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    i:inteiro

    identificacoes_pessoas: vetor[1..3,1..2] de caractere

    Procedimento Show_Complete_Names()
    
    var
    
       j:inteiro
       
    Inicio
    
        Escreval("-------------------------------------------------------------")

            Para j DE 1 ATE 3 Faca

                Escreval("Nome completo da", j, "ª pessoa: ", identificacoes_pessoas[j,1], " ", identificacoes_pessoas[j,2], ".")

                Se(j < 3) Entao

                    Escreval("")

                FimSe

            FimPara

        Escreval("-------------------------------------------------------------")
    
    FimProcedimento

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
    
    Show_Complete_Names()

Fimalgoritmo