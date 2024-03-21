Algoritmo "Jokenpo"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Uma partida de Jokenpô com vencedor aleatório.
// Autor(a): Pablo Valentin.
// Data atual: 14/03/2024

Var // Seção de Declarações das variáveis

   jogador_01, jogador_02: caractere

   possibilidades_jokenpo: vetor[0..2] de caractere

   qnt_turnos, i: inteiro

   escolha_jogador_01, escolha_jogador_02: inteiro

   qnt_vitorias_jogador_01, qnt_vitorias_jogador_02, qnt_empates: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

   Escreval("---------------------------------------------------------------")

   Escreval("Jogo - Jokenpô")

   Escreval("---------------------------------------------------------------")

   possibilidades_jokenpo[0] <- "Pedra"

   possibilidades_jokenpo[1] <- "Papel"

   possibilidades_jokenpo[2] <- "Tesoura"

   Escreval("Digite o nome do(a) primeiro(a) jogador(a):")
   Leia(jogador_01)

   Escreval("")

   Escreval("Digite o nome do(a) segundo(a) jogador(a):")
   Leia(jogador_02)

   Escreval("---------------------------------------------------------------")

   Escreval("Digite o número de turnos que o jogo terá:")
   Leia(qnt_turnos)

   Escreval("---------------------------------------------------------------")

   qnt_vitorias_jogador_01 <- 0

   qnt_vitorias_jogador_02 <- 0

   qnt_empates <- 0

   Para i DE 1 ATE qnt_turnos Faca

      escolha_jogador_01 <- randi(3)

      escolha_jogador_02 <- randi(3)

      Escreval(jogador_01, " -> ", possibilidades_jokenpo[escolha_jogador_01], " X ", possibilidades_jokenpo[escolha_jogador_02], " <- ", jogador_02)

      Se(escolha_jogador_01 = escolha_jogador_02) Entao

         qnt_empates <- qnt_empates + 1

      Senao

         Se(escolha_jogador_01 = 0) E (escolha_jogador_02 = 1) Entao

            qnt_vitorias_jogador_02 <- qnt_vitorias_jogador_02 + 1

         Senao

            Se(escolha_jogador_01 = 0) E (escolha_jogador_02 = 2) Entao

               qnt_vitorias_jogador_01 <- qnt_vitorias_jogador_01 + 1

            Senao

               Se(escolha_jogador_01 = 1) E (escolha_jogador_02 = 0) Entao

                  qnt_vitorias_jogador_01 <- qnt_vitorias_jogador_01 + 1

               Senao

                  Se(escolha_jogador_01 = 1) E (escolha_jogador_02 = 2) Entao

                     qnt_vitorias_jogador_02 <- qnt_vitorias_jogador_02 + 1

                  Senao

                     Se(escolha_jogador_01 = 2) E (escolha_jogador_02 = 0) Entao

                        qnt_vitorias_jogador_02 <- qnt_vitorias_jogador_02 + 1

                     Senao

                        qnt_vitorias_jogador_01 <- qnt_vitorias_jogador_01 + 1

                     FimSe

                  FimSe

               FimSe

            FimSe

         FimSe

      FimSe
      
      Se(i <> qnt_turnos) Entao

         Escreval("")

      FimSe

   FimPara

   Escreval("---------------------------------------------------------------")

   Escreval("Resultados:")

   Escreval("")

   Escreval(jogador_01, ":", qnt_vitorias_jogador_01, " vitórias e", qnt_turnos - qnt_vitorias_jogador_01 - qnt_empates, " derrotas.")

   Escreval("")

   Escreval(jogador_02, ":", qnt_vitorias_jogador_02, " vitórias e", qnt_turnos - qnt_vitorias_jogador_02 - qnt_empates, " derrotas.")

   Escreval("")

   Escreval("Quantidade de turnos empatados:", qnt_empates, ".")

   Escreval("---------------------------------------------------------------")

Fimalgoritmo