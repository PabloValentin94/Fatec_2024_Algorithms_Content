Algoritmo "IMC_Procedimento"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: C�lculo do IMC, utilizando procedimentos.
// Autor(a): Pablo Valentin.
// Data atual: 24/05/2024

Procedimento Calcular_IMC(peso_pessoa, altura_pessoa: real)

Var

    imc: real
    
    classificacao: caractere
    
Inicio

    imc <- peso_pessoa / (altura_pessoa * altura_pessoa)
    
    Escreval("IMC: ", imc:2:2)
    
    Escreval("")
    
    Se(imc < 18.5) Entao
    
        classificacao <- "Abaixo do peso."
    
    Senao
    
        Se(imc >= 18.5) E (imc < 25) Entao
        
            classificacao <- "Peso normal."
        
        Senao
        
            Se(imc >= 25) E (imc < 30) Entao
            
                classificacao <- "Sobrepeso."
            
            Senao
            
                Se(imc >= 30) E (imc < 35) Entao
                
                    classificacao <- "Obesidade grau I."
                
                Senao
                
                    Se(imc >= 35) E (imc < 40) Entao
                    
                        classificacao <- "Obesidade grau II."
                    
                    Senao
                    
                        classificacao <- "Obesidade grau III."
                    
                    FimSe
                
                FimSe
            
            FimSe
        
        FimSe
    
    FimSe
    
    Escreval("Classifica��o: ", classificacao)

FimProcedimento

Var // Se��o de Declara��es das vari�veis

    peso: real
    
    altura: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("------------------------------------------------------")
    
    Escreval("C�lculo - IMC")

    Escreval("------------------------------------------------------")
    
    Escreval("Digite seu peso, em quilos:")
    Leia(peso)
    
    Escreval("")
    
    Escreval("Digite sua altura, em metros:")
    Leia(altura)
    
    Escreval("------------------------------------------------------")
    
    Calcular_IMC(peso, altura)
    
    Escreval("------------------------------------------------------")
    
Fimalgoritmo