Algoritmo "Numeros_Matriz"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a matrizes.
// Autor(a): Pablo Valentin.
// Data atual: 03/05/2024

Var // Se��o de Declara��es das vari�veis

    i: inteiro
    
    numeros: vetor[1..3,1..2] de real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Para i DE 1 ATE 3 Faca
    
         Escreval("Digite o", i, "� n�mero da primeira coluna:")
         Leia(numeros[i,1])
         
         Escreval("")
         
         Escreval("Digite o", i, "� n�mero da segunda coluna:")
         Leia(numeros[i,2])
         
         Se(i < 3) Entao
         
              Escreval("")
         
         FimSe
    
    FimPara
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo