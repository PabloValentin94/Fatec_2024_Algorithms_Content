Algoritmo "Soma_Vetores"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/04/2024

// Escreva um algoritmo que solicite ao usu�rio a entrada de 5 n�meros,
// e que exiba o somat�rio desses n�meros na tela.

// Ap�s exibir a soma, o programa deve mostrar tamb�m os n�meros que
// o usu�rio digitou, um por linha.

Var // Se��o de Declara��es das vari�veis

    i: inteiro

    numeros: vetor[1..5] de real

    soma: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    Escreval("SOMA - VETORES")
    
    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 5 Faca
    
        Escreval("Digite o", i, "� n�mero:")
        Leia(numeros[i])
        
        Se(i < 5) Entao

            Escreval("")

        FimSe
        
    FimPara
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("N�meros digitados:")
    
    Escreval("")
    
    Para i DE 1 ATE 5 Faca
    
        Escreval(i, "� n�mero digitado:", numeros[i])
        
        Se(i < 5) Entao
        
            Escreval("")
        
        FimSe
        
        soma <- soma + numeros[i]
    
    FimPara
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Resultado da soma dos n�meros: ", soma:2:2)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo