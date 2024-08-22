Algoritmo "Media_IF"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula a média de um aluno utilizando estruturas de condição.
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

Var // Seção de Declarações das variáveis

    nota_01, nota_02: real
    
    media: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

       Escreval("-----------------------------------------------------------")
       
       Escreval("Digite a primeira nota do(a) aluno(a):")
       Leia(nota_01)
       
       Escreval("")
       
       Escreval("Digite a segunda nota do(a) aluno(a):")
       Leia(nota_02)
       
       Escreval("-----------------------------------------------------------")
       
       media <- (nota_01 + nota_02) / 2
       
       Se(media >= 6) Entao
       
          Escreval("Aluno aprovado!")
          
       Senao
       
          Escreval("Aluno reprovado!")
          
       FimSe
       
       Escreval("-----------------------------------------------------------")

Fimalgoritmo