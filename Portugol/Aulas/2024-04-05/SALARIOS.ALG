Algoritmo "Salarios"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Fa�a uma soma de sal�rios, utilizando vetores.
// Autor(a): Pablo Valentin.
// Data atual: 05/04/2024

Var // Se��o de Declara��es das vari�veis

    salarios: vetor[1..5] de real

    i: inteiro

    soma_salarios: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

       Escreval("------------------------------------------------------------")

       Para i DE 1 ATE 5 Faca
       
            Escreval("Insira o valor do", i, "� sal�rio:")
            Leia(salarios[i])
            
            Se(i < 5) Entao
            
                 Escreval("")
                 
            FimSe
       
       FimPara
       
       Escreval("------------------------------------------------------------")
       
       Para i DE 1 ATE 5 Faca
       
            soma_salarios <- soma_salarios + salarios[i]
            
       FimPara
       
       Escreval("Soma dos sal�rios: R$", soma_salarios:2:2)
       
       Escreval("------------------------------------------------------------")

Fimalgoritmo