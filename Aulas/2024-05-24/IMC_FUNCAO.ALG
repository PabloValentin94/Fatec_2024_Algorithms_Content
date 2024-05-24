Algoritmo "IMC_Funcao"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução ao conceito de funções.
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

Var // Seção de Declarações das variáveis

    resultado_imc: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("------------------------------------------------------")

    Escreval("Cálculo - IMC")

    Escreval("------------------------------------------------------")
    
    resultado_imc <- Calcular_IMC()
    
    Escreval("IMC: ", resultado_imc:2:2)
    
    Escreval("")
    
    Escreval("Classificação: ", Definir_Classificacao(resultado_imc))

    Escreval("------------------------------------------------------")

Fimalgoritmo