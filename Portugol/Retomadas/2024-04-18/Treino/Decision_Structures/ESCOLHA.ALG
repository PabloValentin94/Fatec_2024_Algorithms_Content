Algoritmo "Escolha"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a estruturas de decis�o (Escolha) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Se��o de Declara��es das vari�veis

    numero_aleatorio: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    numero_aleatorio <- randi(3) + 1
    
    Escolha(numero_aleatorio)
    
        Caso(1)
        
            Escreval("N�mero gerado: 1.")
        
        Caso(2)
        
            Escreval("N�mero gerado: 2.")
        
        Caso(3)
        
            Escreval("N�mero gerado: 3.")
    
    FimEscolha
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo