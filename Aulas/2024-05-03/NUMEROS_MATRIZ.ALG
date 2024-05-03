Algoritmo "Numeros_Matriz"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a matrizes.
// Autor(a): Pablo Valentin.
// Data atual: 03/05/2024

Var // Seção de Declarações das variáveis

    i: inteiro
    
    numeros: vetor[1..3,1..2] de real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Para i DE 1 ATE 3 Faca
    
         Escreval("Digite o", i, "º número da primeira coluna:")
         Leia(numeros[i,1])
         
         Escreval("")
         
         Escreval("Digite o", i, "º número da segunda coluna:")
         Leia(numeros[i,2])
         
         Se(i < 3) Entao
         
              Escreval("")
         
         FimSe
    
    FimPara
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo