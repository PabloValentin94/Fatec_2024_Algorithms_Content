Algoritmo "Enquanto"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a laços de repetição (Enquanto) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    numero_aleatorio, contador: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    numero_aleatorio <- 0

    Enquanto numero_aleatorio <> 20 Faca

        numero_aleatorio <- randi(20) + 1

        contador <- contador + 1

        Escreval(contador, "º número gerado:", numero_aleatorio)

        Escreval("-------------------------------------------------------------")

    FimEnquanto

    Escreval("Condição atendida! Fim do laço.")

    Escreval("-------------------------------------------------------------")

Fimalgoritmo