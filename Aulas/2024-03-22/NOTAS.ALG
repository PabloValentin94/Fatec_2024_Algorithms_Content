Algoritmo "Notas"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a vetores.
// Autor(a): Pablo Valentin.
// Data atual: 22/03/2024

Var // Seção de Declarações das variáveis

    i: inteiro

    nomes_alunos: vetor[1..10] de caractere
    
    notas_alunos: vetor[1..10] de real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Para i DE 1 ATE 10 Faca
    
        LimpaTela()
    
        Escreval("-------------------------------------------------------------")
    
        Escreval("Digite o nome do", i, "ª aluno:")
        Leia(nomes_alunos[i])
        
        Repita
        
            Escreval("")

            Escreval("Digite a nota do", i, "ª aluno:")
            Leia(notas_alunos[i])
        
        ATE(notas_alunos[i] >= 0) E (notas_alunos[i] <= 10)
    
    FimPara
    
    LimpaTela()
    
    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 10 Faca
        
        Escreval("Nota do(a) ", nomes_alunos[i], ": ", notas_alunos[i]:2:2)
        
        Se(i <> 10) Entao
        
            Escreval("")
        
        FimSe
    
    FimPara
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo