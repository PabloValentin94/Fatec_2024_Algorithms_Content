Algoritmo "Calculadora_Procedimento"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o ao conceito de procedimentos.
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

Var // Se��o de declara��es das vari�veis globais.

    numero_01, numero_02: real
    
    tipo_operacao: inteiro

Inicio // Se��o de comandos, procedimento, fun��es, operadores, etc.

    Escreval("------------------------------------------------------")

    Escreval("Calculadora")
    
    Escreval("------------------------------------------------------")
    
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

    Calcular(tipo_operacao)

    Escreval("------------------------------------------------------")

Fimalgoritmo