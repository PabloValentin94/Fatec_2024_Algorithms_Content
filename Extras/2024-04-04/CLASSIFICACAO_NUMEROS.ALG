Algoritmo "Classificacao_Numeros"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/04/2024

// Crie um programa que armazene 10 n�meros digitados pelo usu�rio
// em dois vetores: um somente para n�meros pares, e outro somente
// para n�meros �mpares.

// Ap�s isso, exiba os valores dos dois vetores na tela, em sequ�ncia.

// Obs.: As posi��es que n�o receberem valores exibir�o o n�mero zero.
// N�o se preocupe com isso por enquanto.

Var // Se��o de Declara��es das vari�veis

    i, contador_numeros_validos: inteiro

    numeros_digitados: vetor[1..10] de inteiro
 
    numeros_pares, numeros_impares: vetor[1..10] de inteiro
 
Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("CLASSIFICA��O - N�MEROS INTEIROS")

    Escreval("-------------------------------------------------------------")
    
    Escreval("Digite n�meros maiores que 0!")

    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 10 Faca
    
        Escreval("Digite o", i, "� n�mero:")
        Leia(numeros_digitados[i])
        
        Se(numeros_digitados[i] % 2 = 0) Entao
        
            numeros_pares[i] <- numeros_digitados[i]
            
        Senao
        
            numeros_impares[i] <- numeros_digitados[i]
        
        FimSe
        
        Se(i < 10) Entao

            Escreval("")

        FimSe
    
    FimPara
    
    LimpaTela()
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("N�meros pares:")
    
    contador_numeros_validos <- 0
    
    Para i DE 1 ATE 10 Faca
    
        Se(numeros_pares[i] > 0) Entao
        
            Escreval("")
            
            Escreval(numeros_pares[i], " (", i:1, "� n�mero digitado.)")
        
        Senao
        
            contador_numeros_validos <- contador_numeros_validos + 1
        
        FimSe
    
    FimPara
    
    Se(contador_numeros_validos = 10) Entao
    
        Escreval("")
        
        Escreval("Nenhum n�mero par digitado.")
        
    FimSe
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("N�meros �mpares:")

    contador_numeros_validos <- 0

    Para i DE 1 ATE 10 Faca

        Se(numeros_impares[i] > 0) Entao

            Escreval("")

            Escreval(numeros_impares[i], " (", i:1, "� n�mero digitado.)")

        Senao

            contador_numeros_validos <- contador_numeros_validos + 1

        FimSe

    FimPara
    
    Se(contador_numeros_validos = 10) Entao

        Escreval("")

        Escreval("Nenhum n�mero �mpar digitado.")

    FimSe

    Escreval("-------------------------------------------------------------")

Fimalgoritmo