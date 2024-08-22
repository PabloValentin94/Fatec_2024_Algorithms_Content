Algoritmo "Calculadora_Procedimento"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução ao conceito de procedimentos.
// Autor(a): Pablo Valentin.
// Data atual: 24/05/2024

Procedimento Calcular(operacao: inteiro)

Var

    resultado: real

Inicio

    Escolha(operacao)
    
        Caso(1)
        
            resultado <- numero_01 + numero_02
        
        Caso(2)
        
            resultado <- numero_01 - numero_02
        
        Caso(3)
        
            resultado <- numero_01 * numero_02
        
        Caso(4)
        
            resultado <- numero_01 / numero_02
    
    FimEscolha
    
    Escreval("Resultado: ", resultado:2:2)

FimProcedimento

Var // Seção de declarações das variáveis globais.

    numero_01, numero_02: real
    
    tipo_operacao: inteiro

Inicio // Seção de comandos, procedimento, funções, operadores, etc.

    Escreval("------------------------------------------------------")

    Escreval("Calculadora")
    
    Escreval("------------------------------------------------------")
    
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

    Calcular(tipo_operacao)

    Escreval("------------------------------------------------------")

Fimalgoritmo