Algoritmo "Para"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a la�os de repeti��o (Para) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Se��o de Declara��es das vari�veis

     i, j: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

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