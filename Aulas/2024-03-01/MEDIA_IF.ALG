Algoritmo "Media_IF"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: calcula a m�dia de um aluno utilizando estruturas de condi��o.
// Autor(a): Pablo Valentin.
// Data atual: 01/03/2024

Var // Se��o de Declara��es das vari�veis

    nota_01, nota_02: real
    
    media: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

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