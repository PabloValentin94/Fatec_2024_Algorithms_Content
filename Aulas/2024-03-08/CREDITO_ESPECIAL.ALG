Algoritmo "Credito_Especial"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Calcula um valor de cr�dito especial banc�rio com base no saldo m�dio do usu�rio e o percentual da taxa do seguro com base em sua idade.
// Autor(a): Pablo Valentin.
// Data atual: 08/03/2024

Var // Se��o de Declara��es das vari�veis

   saldo_medio: real

   idade: inteiro

   valor_credito: real

   taxa_seguro: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Escreval("---------------------------------------------------------------")

   Escreval("Digite sua idade:")
   Leia(idade)

   Escreval("---------------------------------------------------------------")

   Se (idade < 18) Entao

      Escreval("Idade insuficiente! Empr�stimo negado.")

   Senao

      Escreval("Digite o seu saldo m�dio:")
      Leia(saldo_medio)

      Escreval("---------------------------------------------------------------")

      Se(saldo_medio < 201) Entao

         valor_credito <- 0

         Escreval("Percentual de cr�dito autorizado pelo banco: 0%")

      Senao

         Se(saldo_medio >= 201) E (saldo_medio < 401) Entao

            valor_credito <- saldo_medio * 0.2 // 20%

            Escreval("Percentual de cr�dito autorizado pelo banco: 20%")

         Senao

            Se(saldo_medio >= 401) E (saldo_medio < 601) Entao

               valor_credito <- saldo_medio * 0.3 // 30%

               Escreval("Percentual de cr�dito autorizado pelo banco: 30%")

            Senao

               valor_credito <- saldo_medio * 0.4 // 40%

               Escreval("Percentual de cr�dito autorizado pelo banco: 40%")

            FimSe

         FimSe

      FimSe

      Se(idade >= 18) E (idade <= 24) Entao

         taxa_seguro <- 0.02 // 2%

      Senao

         Se(idade >= 25) E (idade <= 35) Entao

            taxa_seguro <- 0.06 // 6%

         Senao

            Se(idade >= 36) E (idade <= 45) Entao

               taxa_seguro <- 0.08 // 8%

            Senao

               Se(idade >= 46) E (idade <= 55) Entao

                  taxa_seguro <- 0.10 // 10%

               Senao

                  taxa_seguro <- 0.15 // 15%

               FimSe

            FimSe

         FimSe

      FimSe

      Escreval("---------------------------------------------------------------")

      Escreval("Valor de cr�dito/empr�stimo liberado pelo banco: R$", valor_credito:2:2)

      Escreval("---------------------------------------------------------------")

      Escreval("Percentual da taxa do seguro:", taxa_seguro * 100, "%")

      Escreval("---------------------------------------------------------------")

      Escreval("D�vida a ser paga, com a taxa do seguro inclusa: R$", (valor_credito + valor_credito * taxa_seguro):2:2)

   Fimse
   
   Escreval("---------------------------------------------------------------")

Fimalgoritmo