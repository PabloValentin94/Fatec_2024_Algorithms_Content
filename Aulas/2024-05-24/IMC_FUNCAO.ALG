Algoritmo "IMC_Funcao"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o ao conceito de fun��es.
// Autor(a): Pablo Valentin.
// Data atual: 24/05/2024

Funcao Calcular_IMC() : real

Var

    peso, altura: real

    imc: real

Inicio

    Escreval("Digite seu peso, em quilos:")
    Leia(peso)

    Escreval("")

    Escreval("Digite sua altura, em metros:")
    Leia(altura)
    
    Escreval("------------------------------------------------------")

    imc <- peso / (altura * altura)

    Retorne imc

FimFuncao

Funcao Definir_Classificacao(imc_pessoa: real) : caractere

Var

    classificacao: caractere
    
Inicio

    Se(imc_pessoa < 18.5) Entao

        classificacao <- "Abaixo do peso."

    Senao

        Se(imc_pessoa >= 18.5) E (imc_pessoa < 25) Entao

            classificacao <- "Peso normal."

        Senao

            Se(imc_pessoa >= 25) E (imc_pessoa < 30) Entao

                classificacao <- "Sobrepeso."

            Senao

                Se(imc_pessoa >= 30) E (imc_pessoa < 35) Entao

                    classificacao <- "Obesidade grau I."

                Senao

                    Se(imc_pessoa >= 35) E (imc_pessoa < 40) Entao

                        classificacao <- "Obesidade grau II."

                    Senao

                        classificacao <- "Obesidade grau III."

                    FimSe

                FimSe

            FimSe

        FimSe

    FimSe
    
    Retorne classificacao

FimFuncao

Var // Se��o de Declara��es das vari�veis

    resultado_imc: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("------------------------------------------------------")

    Escreval("C�lculo - IMC")

    Escreval("------------------------------------------------------")
    
    resultado_imc <- Calcular_IMC()
    
    Escreval("IMC: ", resultado_imc:2:2)
    
    Escreval("")
    
    Escreval("Classifica��o: ", Definir_Classificacao(resultado_imc))

    Escreval("------------------------------------------------------")

Fimalgoritmo