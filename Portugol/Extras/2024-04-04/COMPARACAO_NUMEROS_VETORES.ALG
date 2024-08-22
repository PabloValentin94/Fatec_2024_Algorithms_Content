Algoritmo "Comparacao_Numeros_Vetores"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/04/2024

// Crie um algoritmo para ler 15 números inteiros e mostrar, no final,
// os que forem maiores ou iguais a 10.

Var // Seção de Declarações das variáveis

    i, contador_numeros_validos: inteiro

    numeros: vetor[1..15] de inteiro
    
Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("COMPARAÇÃO - NÚMEROS INTEIROS")

    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 15 Faca
    
        Escreval("Digite o", i, "º número:")
        Leia(numeros[i])
        
        Se(i < 15) Entao
        
            Escreval("")
        
        FimSe
    
    FimPara
    
    LimpaTela()
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("Números que atendem à condição (Maiores ou iguais a 10.):")
    
    Para i DE 1 ATE 15 Faca
    
        Se(numeros[i] >= 10) Entao
        
            contador_numeros_validos <- contador_numeros_validos + 1
        
            Escreval("")
            
            Escreval(numeros[i], " (", i:1, "º número digitado.)")
        
        FimSe
    
    FimPara
    
    Se(contador_numeros_validos = 0) Entao
    
        Escreval("")
        
        Escreval("Nenhum número atendeu à condição.")
    
    FimSe
    
    Escreval("-------------------------------------------------------------")
    
Fimalgoritmo