Algoritmo "Banco"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 07/06/2024

// Faça um algoritmo que simule o funcionamento de um caixa eletrônico.
// Seu algoritmo deverá ser capaz de:

// Realizar depósitos;
// Sacar valores;
// Exibir o extrato bancário do usuário.

// Para acessar o caixa, o usuário deverá realizar um
// loign, com dados pré estabelecidos. Serão permitidas 3 tentivas de
// login, até que o sistema seja bloqueado. Atente-se às validações de saque
// (O usuário deve ter saldo suficiente.) e de depósito (Não são aceitos
// menores que zero.

Tipo

   operacao = Registro

      saldo_inicial: real
      situacao: caractere
      valor: real
      saldo_final: real

   FimRegistro

Funcao Login(usuario_digitado, senha_digitada: caractere) : logico

Var

   usuario_correto, senha_correta: caractere

   login_permitido: logico

Inicio

   usuario_correto <- "Pablo"

   senha_correta <- "9994"

   Se(usuario_digitado = usuario_correto) E (senha_digitada = senha_correta) Entao

      login_permitido <- Verdadeiro

   Senao

      Se(tentativas_acesso < 3) Entao

         login_permitido <- Falso

      Senao

         usuario_bloqueado <- Verdadeiro

      FimSe

   FimSe

   Retorne login_permitido

FimFuncao

Procedimento Exibir_Opcoes()

Var

   opcao: inteiro

Inicio

   Enquanto opcao <> 4 Faca

      LimpaTela()

      Escreval("---------------------------------------------------------")

      Escreval("Opções:")

      Escreval("")

      Escreval("------------------------------------")
      Escreval("01 - Realizar depósito.")
      Escreval("------------------------------------")
      Escreval("02 - Realizar saque.")
      Escreval("------------------------------------")
      Escreval("03 - Exibir extrato.")
      Escreval("------------------------------------")
      Escreval("04 - Sair.")
      Escreval("------------------------------------")

      Escreval("")

      Escreval("Escolha uma das opções do menu acima:")
      Leia(opcao)

      Escolha(opcao)

      Caso(1)

         Efetuar_Deposito()

         Escreval("")

         Escreval("Pressione Enter para continuar...")
         Leia(espera)

      Caso(2)

         Efetuar_Saque()

         Escreval("")

         Escreval("Pressione Enter para continuar...")
         Leia(espera)

      Caso(3)

         Exibir_Extrato()

         Escreval("Pressione Enter para continuar...")
         Leia(espera)

      FimEscolha

   FimEnquanto

FimProcedimento

Procedimento Efetuar_Deposito()

Var

   deposito: operacao

   valor_deposito: real

   deposito_valido: logico

Inicio

   LimpaTela()

   Escreval("---------------------------------------------------------")

   Se(contador_depositos + 1 > 5) Entao

      Escreval("Limite de depósitos atingido! Tente novamente outro dia.")

   Senao

      Escreval("Saldo bancário atual: R$", saldo_bancario:2:2)

      contador_depositos <- contador_depositos + 1

      Repita

         Escreval("---------------------------------------------------------")

         Escreval("Digite o valor desejado para depósito:")
         Leia(valor_deposito)

         Se(valor_deposito < 0) Entao

            deposito_valido <- Falso

            Escreval("")

            Escreval("Valor inválido! Tente novamente.")

         Senao
         
            deposito_valido <- Verdadeiro

            Se(valor_deposito > 0) Entao

               deposito.situacao <- "Depósito (Entrada)."

               deposito.saldo_inicial <- saldo_bancario

               deposito.valor <- valor_deposito

               saldo_bancario <- saldo_bancario + valor_deposito

               deposito.saldo_final <- saldo_bancario

               depositos[contador_depositos] <- deposito
               
             FimSe

         FimSe

      ATE(deposito_valido = Verdadeiro)

   FimSe

FimProcedimento

Procedimento Efetuar_Saque()

Var

   saque: operacao

   j: inteiro

   valor_saque: real

   saque_valido: logico

Inicio

   LimpaTela()

   Escreval("---------------------------------------------------------")

   Se(contador_saques + 1 > 5) Entao

      Escreval("Limite de saques atingido! Tente novamente outro dia.")

   Senao

      contador_saques <- contador_saques + 1

      // As estruturas REPITA e ENQUANTO não estão funcionando
      // corretamente, neste procedimento, por isso o PARA
      // foi adaptado, para suprir a necessidade atual.

      Escreval("Saldo bancário atual: R$", saldo_bancario:2:2)

      Para j DE 1 ATE 100 Faca

         Escreval("---------------------------------------------------------")

         Escreval("Digite o valor desejado para saque:")
         Leia(valor_saque)

         Se(valor_saque > saldo_bancario) Entao

            Escreval("")

            Escreval("Saldo bancário insuficiente para o saque requisitado.")

         Senao

            Se(valor_saque < 0) Entao

               Escreval("")

               Escreval("Valor inválido! Tente novamente.")

            Senao

               Se(valor_saque > 0) Entao
               
                  saque.situacao <- "Saque (Saída)."

                  saque.saldo_inicial <- saldo_bancario

                  saque.valor <- valor_saque

                  saldo_bancario <- saldo_bancario - valor_saque

                  saque.saldo_final <- saldo_bancario

                  saques[contador_saques] <- saque
                  
               FimSe

               Interrompa()

            FimSe

         FimSe

      FimPara

   FimSe

FimProcedimento

Procedimento Exibir_Extrato()

Var

   opcao: inteiro

   operacoes: vetor[1..10] de operacao

   situacao: caractere

   condicao: caractere

   qnt_operacoes, k: inteiro

   indice: inteiro

Inicio

   LimpaTela()

   Escreval("---------------------------------------------------------")

   Escreval("Opções:")

   Escreval("")

   Escreval("---------------------------------------------")
   Escreval("01 - Exibir histórico de depósitos.")
   Escreval("---------------------------------------------")
   Escreval("02 - Exibir histórico de saques.")
   Escreval("---------------------------------------------")
   Escreval("03 - Exibir histórico de todas as operações.")
   Escreval("---------------------------------------------")

   Escreval("")

   Escreval("Escolha uma das opções do menu acima:")
   Leia(opcao)

   Escreval("---------------------------------------------------------")

   Escolha(opcao)

   Caso(1)

      situacao <- "depósito:"

      condicao <- depositos[1].situacao

      qnt_operacoes <- 5

   Caso(2)

      situacao <- "saque:"

      condicao <- saques[1].situacao

      qnt_operacoes <- 5

   Caso(3)

      situacao <- "operação:"

      condicao <- depositos[1].situacao

      Se(condicao = "") Entao

         condicao <- saques[1].situacao

      FimSe

      qnt_operacoes <- 10

   FimEscolha

   Se(condicao <> "") Entao

      Escreval("Histórico:")

      Escreval("")

      Para k DE 1 ATE qnt_operacoes Faca

         Se(qnt_operacoes > 5) Entao
         
            Se(k <= 5) Entao

               operacoes[k] <- depositos[k]

            Senao

               operacoes[k] <- saques[k - 5]

            FimSe
            
         Senao
         
            Se(situacao = "depósito:") Entao

               operacoes[k] <- depositos[k]

            Senao

               operacoes[k] <- saques[k]

            FimSe
         
         FimSe

         Se(operacoes[k].situacao <> "") Entao

            indice <- indice + 1

            Escreval(indice:1, "ª operação:")

            Escreval("")

            Escreval("Saldo antes do ", situacao, " R$", operacoes[k].saldo_inicial)

            Escreval("Saldo após o ", situacao, " R$", operacoes[k].saldo_final)

            Escreval("Valor do ", situacao, " R$", operacoes[k].valor)

            Escreval("Tipo de operação: ", operacoes[k].situacao)

            Escreval("")

         FimSe

      FimPara

   Senao

      Escreval("Não há nada a ser exibido, até o momento.")

      Escreval("")

   FimSe

FimProcedimento

Var // Seção de Declarações das variáveis

   usuario, senha: caractere

   usuario_bloqueado: logico

   i, tentativas_acesso: inteiro

   acesso: logico

   espera: caractere

   saldo_bancario: real

   depositos, saques: vetor[1..5] de operacao

   contador_depositos, contador_saques: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

   saldo_bancario <- 1000.00

   Escreval("---------------------------------------------------------")

   Escreval("SISTEMA - BANCO")

   Para i DE 1 ATE 3 Faca

      Escreval("---------------------------------------------------------")

      Escreval("Digite seu usuário:")
      Leia(usuario)

      Escreval("")

      Escreval("Digite sua senha:")
      Leia(senha)

      Escreval("---------------------------------------------------------")

      tentativas_acesso <- i

      acesso <- Login(usuario, senha)

      Se(usuario_bloqueado = Verdadeiro) Entao

         Escreval("Máximo de tentativas atingido!")

         Interrompa()

      Senao

         Se(acesso = Falso) Entao

            Escreval("Dados incorretos! Tente novamente.")

         Senao

            Interrompa()

         FimSe

      FimSe

   FimPara

   Se(usuario_bloqueado = Falso) E (acesso = Verdadeiro) Entao

      Escreval("Acesso concedido")

      Escreval("---------------------------------------------------------")

      LimpaTela()

      Exibir_Opcoes()

   FimSe

   Escreval("---------------------------------------------------------")

   Escreval("Fechando aplicação...")

   Escreval("---------------------------------------------------------")

Fimalgoritmo