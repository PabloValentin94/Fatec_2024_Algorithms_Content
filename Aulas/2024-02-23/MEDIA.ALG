Algoritmo "Media"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: calcula uma m�dia simples entre duas notas.
// Autor(a): Pablo Valentin.
// Data atual: 23/02/2024

Var // Se��o de Declara��es das vari�veis

    nota_01, nota_02: real

    media: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

       Escreval("Insira a primeira nota:")
       Leia(nota_01)
       
       Escreval("")
       
       Escreval("Insira a segunda nota:")
       Leia(nota_02)
       
       Escreval("")
       
       media <- (nota_01 + nota_02) / 2
       
       Escreval("A m�dia �:", media)

Fimalgoritmo