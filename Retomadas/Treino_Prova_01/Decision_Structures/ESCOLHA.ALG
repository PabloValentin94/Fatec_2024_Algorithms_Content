Algoritmo "Escolha"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a estruturas de decisão (Escolha) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    numero_aleatorio: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    numero_aleatorio <- randi(3) + 1
    
    Escolha(numero_aleatorio)
    
        Caso(1)
        
            Escreval("Número gerado: 1.")
        
        Caso(2)
        
            Escreval("Número gerado: 2.")
        
        Caso(3)
        
            Escreval("Número gerado: 3.")
    
    FimEscolha
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo