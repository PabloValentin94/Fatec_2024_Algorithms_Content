Algoritmo "Calculadora_Funcao"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Desenvolva uma calculadora, utilizando fun��es.
// Autor(a): Pablo Valentin.
// Data atual: 24/05/2024

Funcao Calcular() : real

Var

    numero_01, numero_02: real

    tipo_operacao: inteiro
    
    resultado: real

Inicio

    Escreval("Tipos de opera��es:")

    Escreval("")

    Escreval("----------------------")
    Escreval("01 - Adi��o.")
    Escreval("----------------------")
    Escreval("02 - Subtra��o.")
    Escreval("----------------------")
    Escreval("03 - Multiplica��o.")
    Escreval("----------------------")
    Escreval("04 - Divis�o.")
    Escreval("----------------------")

    Escreval("")

    Escreval("Escolha uma das op��es do menu acima:")
    Leia(tipo_operacao)

    Escreval("------------------------------------------------------")

    Escreval("Digite o primeiro n�mero:")
    Leia(numero_01)

    Escreval("")

    Escreval("Digite o segundo n�mero:")
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

Var // Se��o de declara��es das vari�veis globais.

    resultado_operacao: real

Inicio // Se��o de comandos, procedimento, fun��es, operadores, etc.

    Escreval("------------------------------------------------------")

    Escreval("Calculadora")

    Escreval("------------------------------------------------------")
    
    resultado_operacao <- Calcular()

    Escreval("Resultado: ", resultado_operacao:2:2)

    Escreval("------------------------------------------------------")

Fimalgoritmo