Algoritmo "Repita"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a la�os de repeti��o (Repita) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Se��o de Declara��es das vari�veis

    numero_aleatorio, contador: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Repita
    
        numero_aleatorio <- randi(20) + 1
        
        contador <- contador + 1
        
        Escreval(contador, "� n�mero gerado:", numero_aleatorio)
        
        Escreval("-------------------------------------------------------------")
    
    ATE(numero_aleatorio = 20)
    
    Escreval("Condi��o atendida! Fim do la�o.")
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo