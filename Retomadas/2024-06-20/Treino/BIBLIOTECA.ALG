Algoritmo "Biblioteca"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 20/04/2024

// Fa�a um sistema para gerenciar a movimenta��o de livros
// de uma biblioteca. Seu sistema dever� processar:

// Retirada de livro;
// Devolu��o de livro.

// Restri��es:

// Somente tr�s livros podem ser retirados simultaneamente
// por uma pessoa;

// Verifique se h� alguma multa a ser paga.

// Exemplos - Livros: pt.wikipedia.org/wiki/Lista_de_livros_mais_vendidos

Tipo

   livro = Registro
   
      titulo: caractere
      autor:caractere
      ano: caractere
   
   FimRegistro
   
Procedimento Carregar()

Var

   i: inteiro

Inicio

   valor_diaria_multa <- 1.00

   livros_biblioteca[1].titulo <- "Dom Quixote"
   livros_biblioteca[1].autor <- "Miguel de Cervantes"
   livros_biblioteca[1].ano <- "1612"

   livros_biblioteca[2].titulo <- "Um Conto de Duas Cidades"
   livros_biblioteca[2].autor <- "Charles Dickens"
   livros_biblioteca[2].ano <- "1859"

   livros_biblioteca[3].titulo <- "O Senhor dos An�is"
   livros_biblioteca[3].autor <- "J. R. R. Tolkien"
   livros_biblioteca[3].ano <- "1954/1955"

   livros_biblioteca[4].titulo <- "O Pequeno Pr�ncipe"
   livros_biblioteca[4].autor <- "Antoine de Saint-Exup�ry"
   livros_biblioteca[4].ano <- "1943"

   livros_biblioteca[5].titulo <- "Harry Potter e a Pedra Filosofal"
   livros_biblioteca[5].autor <- "J. K. Rowling"
   livros_biblioteca[5].ano <- "1997"

   livros_biblioteca[6].titulo <- "O Hobbit"
   livros_biblioteca[6].autor <- "J. R. R. Tolkien"
   livros_biblioteca[6].ano <- "1937"

   livros_biblioteca[7].titulo <- "E n�o sobrou nenhum"
   livros_biblioteca[7].autor <- "Agatha Christie"
   livros_biblioteca[7].ano <- "1939"

   livros_biblioteca[8].titulo <- "O Sonho da C�mara Vermelha"
   livros_biblioteca[8].autor <- "Cao Xueqin"
   livros_biblioteca[8].ano <- "Entre 1754 e 1791"

   livros_biblioteca[8].titulo <- "Ela, a Feiticeira"
   livros_biblioteca[8].autor <- "H. Rider Haggard"
   livros_biblioteca[8].ano <- "1887"
   
   Para i DE 1 ATE 9 Faca
   
      status_livros_biblioteca[i] <- "Dispon�vel"
   
   FimPara

FimProcedimento

Procedimento Retirar_Livro()

Var

   restricao: logico

Inicio

   restricao <- Verificar_Quantidade_Livros()
   
   Se(restricao = Falso) Entao
   
   
   
   Senao
   
      Escreval("Limite de retirada de livros atingido!")
      Escreval("Devolva ao menos um livro para prosseguir.")
   
   FimSe

FimProcedimento

Procedimento Devolver_Livro()

Var



Inicio



FimProcedimento

Procedimento Listar_Devolucoes_Pendentes()

Var



Inicio



FimProcedimento

Funcao Verificar_Quantidade_Livros() : logico

Var

   j: inteiro
   
   qnt_livros_alugados: inteiro

Inicio

   Para j DE 1 ATE 3 Faca
   
      Se(livros_pessoa[j].titulo <> "") Entao
      
         qnt_livros_alugados <- qnt_livros_alugados + 1
      
      FimSe
   
   FimPara
   
   Se(qnt_livros_alugados < 3) Entao
   
      Retorne Verdadeiro
   
   Senao
   
      Retorne Falso
   
   FimSe

FimFuncao

Procedimento Verificar_Multa()

Var



Inicio



FimProcedimento

Var // Se��o de Declara��es das vari�veis

   valor_diaria_multa: real
   
   condicao: inteiro
   
   livros_biblioteca: vetor[1..9] de livro
   
   status_livros_biblioteca: vetor[1..9] de caractere
   
   livros_pessoa: vetor[1..3] de livro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Carregar()
   
   Repita
   
      LimpaTela()
   
      Escreval("------------------------------------------------------------")
      
      Escreval("SISTEMA - BIBLIOTECA")
      
      Escreval("------------------------------------------------------------")
      
      Escreval("Op��es:")
      
      Escreval("")
      
      Escreval("------------------------------------")
      Escreval("01 - Alugar um livro.")
      Escreval("------------------------------------")
      Escreval("02 - Devolver um livro.")
      Escreval("------------------------------------")
      Escreval("03 - Listar devolu��es pendentes.")
      Escreval("------------------------------------")
      Escreval("04 - Fechar sistema.")
      Escreval("------------------------------------")
      
      Escreval("")
      
      Escreval("Escolha uma das op��es do menu acima:")
      Leia(condicao)
      
      Escreval("------------------------------------------------------------")
      
      Escolha(condicao)
      
      Caso(1)
      
         Retirar_Livro()
      
      Caso(2)
      
         Devolver_Livro
      
      Caso(3)
      
         Listar_Devolucoes_Pendentes()
      
      FimEscolha
   
   ATE(condicao = 4)
   
   Escreval("Encerrando...")
   
   Escreval("------------------------------------------------------------")

Fimalgoritmo