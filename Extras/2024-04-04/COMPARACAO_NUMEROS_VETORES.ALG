Algoritmo "Comparacao_Numeros_Vetores"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/04/2024

// Crie um algoritmo para ler 15 n�meros inteiros e mostrar, no final,
// os que forem maiores ou iguais a 10.

Var // Se��o de Declara��es das vari�veis

    i, contador_numeros_validos: inteiro

    numeros: vetor[1..15] de inteiro
    
Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("COMPARA��O - N�MEROS INTEIROS")

    Escreval("-------------------------------------------------------------")
    
    Para i DE 1 ATE 15 Faca
    
        Escreval("Digite o", i, "� n�mero:")
        Leia(numeros[i])
        
        Se(i < 15) Entao
        
            Escreval("")
        
        FimSe
    
    FimPara
    
    LimpaTela()
    
    Escreval("-------------------------------------------------------------")
    
    Escreval("N�meros que atendem � condi��o (Maiores ou iguais a 10.):")
    
    Para i DE 1 ATE 15 Faca
    
        Se(numeros[i] >= 10) Entao
        
            contador_numeros_validos <- contador_numeros_validos + 1
        
            Escreval("")
            
            Escreval(numeros[i], " (", i:1, "� n�mero digitado.)")
        
        FimSe
    
    FimPara
    
    Se(contador_numeros_validos = 0) Entao
    
        Escreval("")
        
        Escreval("Nenhum n�mero atendeu � condi��o.")
    
    FimSe
    
    Escreval("-------------------------------------------------------------")
    
Fimalgoritmo