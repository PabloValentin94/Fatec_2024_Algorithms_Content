Algoritmo "Calculadora_Funcao"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Desenvolva uma calculadora, utilizando funções.
// Autor(a): Pablo Valentin.
// Data atual: 24/05/2024

Funcao Calcular() : real

Var

    numero_01, numero_02: real

    tipo_operacao: inteiro
    
    resultado: real

Inicio

    Escreval("Tipos de operações:")

    Escreval("")

    Escreval("----------------------")
    Escreval("01 - Adição.")
    Escreval("----------------------")
    Escreval("02 - Subtração.")
    Escreval("----------------------")
    Escreval("03 - Multiplicação.")
    Escreval("----------------------")
    Escreval("04 - Divisão.")
    Escreval("----------------------")

    Escreval("")

    Escreval("Escolha uma das opções do menu acima:")
    Leia(tipo_operacao)

    Escreval("------------------------------------------------------")

    Escreval("Digite o primeiro número:")
    Leia(numero_01)

    Escreval("")

    Escreval("Digite o segundo número:")
    Leia(numero_02)
    
    Escreval("------------------------------------------------------")
    
    Escolha(tipo_operacao)

        Caso(1)

            resultado <- numero_01 + numero_02

        Caso(2)

            resultado <- numero_01 - numero_02

        Caso(3)

            resultado <- numero_01 * numero_02

        Caso(4)

            resultado <- numero_01 / numero_02

    FimEscolha
    
    resultado <- resultado:2:2

    Retorne resultado

FimFuncao

Var // Seção de declarações das variáveis globais.

    resultado_operacao: real

Inicio // Seção de comandos, procedimento, funções, operadores, etc.

    Escreval("------------------------------------------------------")

    Escreval("Calculadora")

    Escreval("------------------------------------------------------")
    
    resultado_operacao <- Calcular()

    Escreval("Resultado: ", resultado_operacao:2:2)

    Escreval("------------------------------------------------------")

Fimalgoritmo