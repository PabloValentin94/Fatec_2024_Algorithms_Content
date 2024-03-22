Algoritmo "Media_Repeticao"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 22/03/2024

// Faça um programa que leia as notas - que devem ser menores ou iguais
// que 10 e maiores ou iguais que 0 - de 10 alunos e
// calcule a média das notas de cada aluno.

Var // Seção de Declarações das variáveis

    i: inteiro
    
    primeira_nota, segunda_nota: real
    
    media: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("SISTEMA - MÉDIAS")
    
    Para i DE 1 ATE 10 Faca
    
        primeira_nota <- -1

        segunda_nota <- -1
    
        Escreval("-------------------------------------------------------------")
        
        Enquanto (primeira_nota < 0) OU (primeira_nota > 10) Faca
        
            Escreval("Digite a primeira nota do", i, "º aluno:")
            Leia(primeira_nota)
            
            Escreval("")
        
        FimEnquanto
        
        Repita
        
            Escreval("Digite a segunda nota do", i, "º aluno:")
            Leia(segunda_nota)
            
            Escreval("")
        
        ATE(segunda_nota >= 0) E (segunda_nota <= 10)
        
        media <- (primeira_nota + segunda_nota) / 2
        
        Escreval("Média do", i, "ª aluno: ", media:2:2)
    
    FimPara
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo