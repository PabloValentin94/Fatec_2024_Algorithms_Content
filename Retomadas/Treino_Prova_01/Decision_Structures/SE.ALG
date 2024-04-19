Algoritmo "Se"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a estruturas de decisão (Se) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    numero_aleatorio: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    numero_aleatorio <- randi(100) + 1
    
    Escreval("Número gerado:", numero_aleatorio, ".")
    
    Escreval("-------------------------------------------------------------")
    
    Se(numero_aleatorio <= 50) Entao
    
        Escreval("O número gerado é menor ou igual a 50.")
    
    Senao
    
        Escreval("O número gerado é maior que 50.")
    
    FimSe
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo