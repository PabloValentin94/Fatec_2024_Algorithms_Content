Algoritmo "Se"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a estruturas de decis�o (Se) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Se��o de Declara��es das vari�veis

    numero_aleatorio: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    numero_aleatorio <- randi(100) + 1
    
    Escreval("N�mero gerado:", numero_aleatorio, ".")
    
    Escreval("-------------------------------------------------------------")
    
    Se(numero_aleatorio <= 50) Entao
    
        Escreval("O n�mero gerado � menor ou igual a 50.")
    
    Senao
    
        Escreval("O n�mero gerado � maior que 50.")
    
    FimSe
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo