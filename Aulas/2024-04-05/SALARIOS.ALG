Algoritmo "Salarios"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Faça uma soma de salários, utilizando vetores.
// Autor(a): Pablo Valentin.
// Data atual: 05/04/2024

Var // Seção de Declarações das variáveis

    salarios: vetor[1..5] de real

    i: inteiro

    soma_salarios: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

       Escreval("------------------------------------------------------------")

       Para i DE 1 ATE 5 Faca
       
            Escreval("Insira o valor do", i, "º salário:")
            Leia(salarios[i])
            
            Se(i < 5) Entao
            
                 Escreval("")
                 
            FimSe
       
       FimPara
       
       Escreval("------------------------------------------------------------")
       
       Para i DE 1 ATE 5 Faca
       
            soma_salarios <- soma_salarios + salarios[i]
            
       FimPara
       
       Escreval("Soma dos salários: R$", soma_salarios:2:2)
       
       Escreval("------------------------------------------------------------")

Fimalgoritmo