Algoritmo "Urna"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 14/06/2024

// Elabore um algoritmo que simule uma urna eletrônica. Seu programa
// deverá:

// Dar suporte para até 10 candidatos;
// Computar votos válidos, em branco e nulos.

// São considerados votos nulos, aqueles cujo valor digitado pelo eleitor
// não conste no vetor de candidatos.

// Para desenvolver seu programa, use vetores, registros, procedimentos e
// funções.

Tipo

   candidato = Registro

      nome: caractere
      numero_candidato: inteiro
      partido: caractere

   FimRegistro

   eleitor = Registro

      numero_titulo_eleitor: caractere
      voto: caractere

   FimRegistro

Procedimento Carregar()

Inicio

   candidatos[1].nome <- "Jair Messias Bolsonaro"
   candidatos[1].numero_candidato <- 22
   candidatos[1].partido <- "Partido Liberal (PL)"

   candidatos[2].nome <- "Luís Inácio Lula da Silva"
   candidatos[2].numero_candidato <- 13
   candidatos[2].partido <- "Partido dos Trabalhadores (PT)"

FimProcedimento

Procedimento Exibir_Opcoes()

Var

   finalizacao: inteiro

   opcao: inteiro

Inicio

   Enquanto finalizacao = 0 Faca

      LimpaTela()

      Escreval("-----------------------------------------------------------")

      Escreval("Opções:")

      Escreval("")

      Escreval("--------------------------------------")
      Escreval("01 - Votar.")
      Escreval("--------------------------------------")
      Escreval("02 - Exibir relatório de votos.")
      Escreval("--------------------------------------")

      Escreval("")

      Escreval("Escolha uma das opções do menu acima:")
      Leia(opcao)

      Escreval("-----------------------------------------------------------")

      Escolha(opcao)

      Caso(1)

         Receber_Voto()

         Escreval("")

         Escreva("Pressione Enter para continuar...")
         Leia(espera)

         finalizacao <- 1

      Caso(2)

         Gerar_Relatorio()

         Escreval("")

         Escreva("Pressione Enter para continuar...")
         Leia(espera)

         finalizacao <- 0

      FimEscolha

   FimEnquanto

FimProcedimento

Procedimento Receber_Voto()

Var

   condicao: caractere

   voto: inteiro

   j: inteiro

Inicio

   LimpaTela()

   Escreval("-----------------------------------------------------------")

   Escreval("Deseja votar em branco? (S/N)")
   Leia(condicao)

   Se(condicao = "S") Entao

      condicao <- "Em branco"

   Senao

      Escreval("")

      Escreval("Digite o código do candidato desejado:")
      Leia(voto)

      Para j DE 1 ATE 10 Faca

         Se(voto = candidatos[j].numero_candidato) Entao

            condicao <- candidatos[j].nome + ", " + candidatos[j].partido

            Interrompa()

         Senao

            Se(j = 10) Entao

               condicao <- "Nulo"

            FimSe

         FimSe

      FimPara

   FimSe

   eleitores[i].voto <- condicao

FimProcedimento

Procedimento Gerar_Relatorio()

Var

   k: inteiro

   qnt_votos: inteiro

   qnt_votos_validos, qnt_votos_brancos, qnt_votos_nulos: inteiro

Inicio

   LimpaTela()

   Escreval("-----------------------------------------------------------")

   Escreval("Histórico de votações:")

   Escreval("-----------------------------------------------------------")

   Para k DE 1 ATE 5 Faca

      Se(eleitores[k].voto <> "") Entao

         qnt_votos <- qnt_votos + 1

         Escreval("Eleitor(a)", qnt_votos, ":")

         Escreval("")

         Escreval("Voto: ", eleitores[k].voto, ".")

         Se(eleitores[k].voto = "Em branco") Entao

            qnt_votos_brancos <- qnt_votos_brancos + 1

         Senao

            Se(eleitores[k].voto = "Nulo") Entao

               qnt_votos_nulos <- qnt_votos_nulos + 1

            Senao

               Se(eleitores[k].voto <> "") Entao

                  qnt_votos_validos <- qnt_votos_validos + 1

               FimSe

            FimSe

         FimSe

         Se(k + 1 < 5) Entao
         
            Se(eleitores[k + 1].voto <> "") Entao

               Escreval("")

            FimSe

         FimSe

      FimSe

   FimPara

   Se(qnt_votos = 0) Entao

      Escreval("Nada a exibir.")

   Senao

      Escreval("-----------------------------------------------------------")

      Escreval("Quantidade de votos válidos:", qnt_votos_validos)

      Escreval("")

      Escreval("Quantidade de votos nulos:", qnt_votos_nulos)

      Escreval("")

      Escreval("Quantidade de votos em branco:", qnt_votos_brancos)

   FimSe

FimProcedimento

Var // Seção de Declarações das variáveis

   candidatos: vetor[1..10] de candidato

   eleitores: vetor[1..5] de eleitor

   i: inteiro

   numero_eleitor: inteiro

   espera: caractere

   fim: caractere

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

   Carregar()

   Para i DE 1 ATE 5 Faca

      LimpaTela()

      Escreval("-----------------------------------------------------------")

      Escreval("SISTEMA - URNA ELETRÔNCICA")

      Escreval("-----------------------------------------------------------")

      Escreval("Insira o número de eleitor do ", i:1, "º eleitor:")
      Leia(eleitores[i].numero_titulo_eleitor)

      Escreval("-----------------------------------------------------------")

      Exibir_Opcoes()

      LimpaTela()

      Escreval("-----------------------------------------------------------")

      Escreval("Você é o(a) último(a) eleitor(a)? (S/N)")
      Leia(fim)

      Escreval("-----------------------------------------------------------")

      Gerar_Relatorio()

      Se(fim = "N") Entao

         Se(i < 5) Entao
         
            Escreval("")

            Escreva("Pressione Enter para continuar...")
            Leia(espera)
            
         Senao
         
            LimpaTela()

            Escreval("-----------------------------------------------------------")

            Escreval("Número máximo de eleitores(as) atingido! A urna será desativada.")
            
            Interrompa()
         
         FimSe

      Senao

         Interrompa()

      FimSe

   FimPara

   Escreval("-----------------------------------------------------------")

Fimalgoritmo