Algoritmo "Media_Repeticao"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 22/03/2024

// Fa�a um programa que leia as notas - que devem ser menores ou iguais
// que 10 e maiores ou iguais que 0 - de 10 alunos e
// calcule a m�dia das notas de cada aluno.

Var // Se��o de Declara��es das vari�veis

    i: inteiro
    
    primeira_nota, segunda_nota: real
    
    media: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("SISTEMA - M�DIAS")
    
    Para i DE 1 ATE 10 Faca
    
        primeira_nota <- -1

        segunda_nota <- -1
    
        Escreval("-------------------------------------------------------------")
        
        Enquanto (primeira_nota < 0) OU (primeira_nota > 10) Faca
        
            Escreval("Digite a primeira nota do", i, "� aluno:")
            Leia(primeira_nota)
            
            Escreval("")
        
        FimEnquanto
        
        Repita
        
            Escreval("Digite a segunda nota do", i, "� aluno:")
            Leia(segunda_nota)
            
            Escreval("")
        
        ATE(segunda_nota >= 0) E (segunda_nota <= 10)
        
        media <- (primeira_nota + segunda_nota) / 2
        
        Escreval("M�dia do", i, "� aluno: ", media:2:2)
    
    FimPara
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo