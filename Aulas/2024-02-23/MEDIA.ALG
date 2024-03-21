Algoritmo "Media"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula uma média simples entre duas notas.
// Autor(a): Pablo Valentin.
// Data atual: 23/02/2024

Var // Seção de Declarações das variáveis

    nota_01, nota_02: real

    media: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

       Escreval("Insira a primeira nota:")
       Leia(nota_01)
       
       Escreval("")
       
       Escreval("Insira a segunda nota:")
       Leia(nota_02)
       
       Escreval("")
       
       media <- (nota_01 + nota_02) / 2
       
       Escreval("A média é:", media)

Fimalgoritmo