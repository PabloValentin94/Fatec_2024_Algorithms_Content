Algoritmo "Classificacao_Pessoas"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 21/03/2024

// Fa�a um programa que receba a idade, altura e o peso de 10 pessoas,
// calcule e mostre:

// A quantidade de pessoas com idade superior a 50 anos;
// A m�dia das Alturas das pessoas com idade entre 10 e 20 anos
// A porcentagem das pessoas com peso inferior a 50 quilos entre todas as pessoas analisadas.

Var // Se��o de Declara��es das vari�veis

    i: inteiro
    
    idade: inteiro
    
    altura, peso: real

    qnt_pessoas_idade_mais_50: inteiro

    qnt_pessoas_idade_entre_10_20: inteiro
    
    media_alturas: real
    
    qnt_pessoas_peso_inferior_50: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("--------------------------------------------------------------")

    Escreval("CLASSIFICA��O - PESSOAS")

    Para i DE 1 ATE 10 Faca

        Escreval("--------------------------------------------------------------")

        Escreval("Digite a idade da", i, "� pessoa:")
        Leia(idade)
        
        Escreval("")
        
        Escreval("Digite a altura, em metros, da", i, "� pessoa:")
        Leia(altura)

        Escreval("")
        
        Escreval("Digite o peso, em quilos, da", i, "� pessoa:")
        Leia(peso)
        
        Se(idade > 50) Entao
        
            qnt_pessoas_idade_mais_50 <- qnt_pessoas_idade_mais_50 + 1
        
        FimSe
        
        Se(idade > 10) E (idade < 20) Entao
        
            media_alturas <- media_alturas + altura
            
            qnt_pessoas_idade_entre_10_20 <- qnt_pessoas_idade_entre_10_20 + 1
        
        FimSe
        
        Se(peso < 50) Entao
        
            qnt_pessoas_peso_inferior_50 <- qnt_pessoas_peso_inferior_50 + 1
        
        FimSe
        
    FimPara
    
    Escreval("--------------------------------------------------------------")
    
    Se(qnt_pessoas_idade_entre_10_20 <> 0) Entao
    
        media_alturas <- media_alturas / qnt_pessoas_idade_entre_10_20
        
    FimSe
    
    Escreval("Quantidade de pessoas com idade superior a 50 anos:", qnt_pessoas_idade_mais_50)
    
    Escreval("")
    
    Escreval("M�dia das alturas das pessoas cuja idade est� entre 10 e 20 anos: ", media_alturas:2:2)
    
    Escreval("")
    
    Escreval("Porcentagem de pessoas que possuem menos de 50 quilos:", (qnt_pessoas_peso_inferior_50 / 10) * 100, "%.")
    
    Escreval("--------------------------------------------------------------")

Fimalgoritmo