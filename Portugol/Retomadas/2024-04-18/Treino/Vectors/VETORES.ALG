Algoritmo "Vetores"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a vetores no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Se��o de Declara��es das vari�veis

    i: inteiro

    numeros: vetor[1..3] de inteiro
    
    media_numeros: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Para i DE 1 ATE 3 Faca
    
        Escreval("Digite um", i, "� n�mero:")
        Leia(numeros[i])
        
        Se(i < 3) Entao
        
            Escreval("")
            
        FimSe
        
        media_numeros <- media_numeros + numeros[i]
    
    FimPara
    
    Escreval("-------------------------------------------------------------")
    
    media_numeros <- media_numeros / 3
    
    Escreval("M�dia simples (Aproximadamente.) dos n�meros digitados: ", media_numeros:2:2)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo