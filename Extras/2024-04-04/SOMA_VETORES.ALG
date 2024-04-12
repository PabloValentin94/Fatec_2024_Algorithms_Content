Algoritmo "Soma_Vetores"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/04/2024

// Escreva um algoritmo que solicite ao usuário a entrada de 5 números,
// e que exiba o somatório desses números na tela.

// Após exibir a soma, o programa deve mostrar também os números que
// o usuário digitou, um por linha.

Var // Seção de Declarações das variáveis

    i: inteiro

    numeros: vetor[1..5] de real

    soma: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    Escreval("SOMA - VETORES")
    
    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 5 Faca
    
        Escreval("Digite o", i, "º número:")
        Leia(numeros[i])
        
        Se(i < 5) Entao

            Escreval("")

        FimSe
        
    FimPara
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Números digitados:")
    
    Escreval("")
    
    Para i DE 1 ATE 5 Faca
    
        Escreval(i, "º número digitado:", numeros[i])
        
        Se(i < 5) Entao
        
            Escreval("")
        
        FimSe
        
        soma <- soma + numeros[i]
    
    FimPara
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Resultado da soma dos números: ", soma:2:2)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo