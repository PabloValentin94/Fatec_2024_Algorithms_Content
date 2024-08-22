Algoritmo "Para"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a laços de repetição (Para) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

     i, j: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 10 Faca
    
         Para j DE 1 ATE 10 Faca

              Escreval(i, " X", j, " =", i * j)

         FimPara
         
         Se(i < 10) Entao
         
              Escreval("-------------------------------------------------------------")
         
         FimSe
    
    FimPara
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo