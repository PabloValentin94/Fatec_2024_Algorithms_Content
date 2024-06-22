Algoritmo "Biblioteca"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 20/04/2024

// Faça um sistema para gerenciar a movimentação de livros
// de uma biblioteca. Seu sistema deverá processar:

// Retirada de livro;
// Devolução de livro.

// Restrições:

// Somente três livros podem ser retirados simultaneamente
// por uma pessoa;

// Verifique se há alguma multa a ser paga.

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

   livros_biblioteca[3].titulo <- "O Senhor dos Anéis"
   livros_biblioteca[3].autor <- "J. R. R. Tolkien"
   livros_biblioteca[3].ano <- "1954/1955"

   livros_biblioteca[4].titulo <- "O Pequeno Príncipe"
   livros_biblioteca[4].autor <- "Antoine de Saint-Exupéry"
   livros_biblioteca[4].ano <- "1943"

   livros_biblioteca[5].titulo <- "Harry Potter e a Pedra Filosofal"
   livros_biblioteca[5].autor <- "J. K. Rowling"
   livros_biblioteca[5].ano <- "1997"

   livros_biblioteca[6].titulo <- "O Hobbit"
   livros_biblioteca[6].autor <- "J. R. R. Tolkien"
   livros_biblioteca[6].ano <- "1937"

   livros_biblioteca[7].titulo <- "E não sobrou nenhum"
   livros_biblioteca[7].autor <- "Agatha Christie"
   livros_biblioteca[7].ano <- "1939"

   livros_biblioteca[8].titulo <- "O Sonho da Câmara Vermelha"
   livros_biblioteca[8].autor <- "Cao Xueqin"
   livros_biblioteca[8].ano <- "Entre 1754 e 1791"

   livros_biblioteca[8].titulo <- "Ela, a Feiticeira"
   livros_biblioteca[8].autor <- "H. Rider Haggard"
   livros_biblioteca[8].ano <- "1887"
   
   Para i DE 1 ATE 9 Faca
   
      status_livros_biblioteca[i] <- "Disponível"
   
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

Var // Seção de Declarações das variáveis

   valor_diaria_multa: real
   
   condicao: inteiro
   
   livros_biblioteca: vetor[1..9] de livro
   
   status_livros_biblioteca: vetor[1..9] de caractere
   
   livros_pessoa: vetor[1..3] de livro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

   Carregar()
   
   Repita
   
      LimpaTela()
   
      Escreval("------------------------------------------------------------")
      
      Escreval("SISTEMA - BIBLIOTECA")
      
      Escreval("------------------------------------------------------------")
      
      Escreval("Opções:")
      
      Escreval("")
      
      Escreval("------------------------------------")
      Escreval("01 - Alugar um livro.")
      Escreval("------------------------------------")
      Escreval("02 - Devolver um livro.")
      Escreval("------------------------------------")
      Escreval("03 - Listar devoluções pendentes.")
      Escreval("------------------------------------")
      Escreval("04 - Fechar sistema.")
      Escreval("------------------------------------")
      
      Escreval("")
      
      Escreval("Escolha uma das opções do menu acima:")
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