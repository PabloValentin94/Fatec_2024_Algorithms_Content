Algoritmo "Fila_Hospital"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Avalia��o referente ao segundo bimestre do primeiro semestre de aulas.
// Autor(a): Pablo Valentin.
// Data atual: 21/06/2024

// Desenvolva um algoritmo que gerencie a fila de espera de pacientes
// de um hospital. Os pacientes devem possuir:

// Nome;
// Idade;
// Queixa (Motivo de ir ao hospital.).

// o hospital ser� respons�vel por estabelecer um grau de prioridade aos
// atendimentos, podendo assumir as seguintes op��es:

// Leve;
// M�dio;
// Grave.

// Crit�rios de filtragem (Em sua respectiva ordem de relev�ncia.):

// Grau de Prioridade;
// Idade.

// Resumo de funcionalidades que o sistema deve ter:

// Inserir pacientes;
// Listar todos os pacientes j� inseridos, com base nos crit�rios de filtragem;
// Mostrar o paciente que est� sendo atualmente atendido.

// Normas de desenvolvimento:

// Fa�a um menu de navega��o, para facilitar a experi�ncia do usu�rio;
// Use vetores, registros, procedimentos, fun��es, entre outras coisas
// que possam vir a serem necess�rias para o desenvolvimento.

Tipo

   paciente = Registro

      id: inteiro
      nome: caractere
      idade: inteiro
      queixa: caractere
      prioridade: inteiro
      status: caractere

   FimRegistro

Procedimento Inserir_Paciente()

Var

   insercao: paciente

Inicio

   Se(indice_nova_insercao + 1 <= 10) Entao

      Escreval("Inser��o - Novo Paciente:")

      Escreval("")

      indice_nova_insercao <- indice_nova_insercao + 1

      Se(indice_nova_insercao = 1) OU (indice_paciente_atual = 0) Entao

         indice_paciente_atual <- indice_nova_insercao

      FimSe

      insercao.id <- indice_nova_insercao

      Escreval("Insira o nome do", indice_nova_insercao, "� paciente:")
      Leia(insercao.nome)

      Repita

         Escreval("")

         Escreval("Insira a idade do paciente:")
         Leia(insercao.idade)

      ATE(insercao.idade > 0) E (insercao.idade < 150)

      Escreval("")

      Escreval("Descreva o problema demonstrado pelo paciente:")
      Leia(insercao.queixa)

      Escreval("")

      Escreval("Op��es - Grau de Prioridade:")

      Escreval("")

      Escreval("---------------------------------")
      Escreval("01 - Leve.")
      Escreval("---------------------------------")
      Escreval("02 - M�dio.")
      Escreval("---------------------------------")
      Escreval("03 - Grave.")
      Escreval("---------------------------------")

      Repita

         Escreval("")

         Escreval("Insira o n�mero referente ao grau de prioridade do paciente:")
         Leia(insercao.prioridade)

      ATE(insercao.prioridade > 0) E (insercao.prioridade < 4)

      insercao.status <- "N�o atendido(a)"

      pacientes[indice_nova_insercao] <- insercao

      Ordenar_Prioridade_Pacientes()

      //Ordenar_Idade_Pacientes()

   Senao

      Escreval("Limite de pacientes atingido!")

   FimSe

FimProcedimento

Procedimento Ordenar_Prioridade_Pacientes()

Var

   i, j: inteiro

   fila_temporaria_pacientes: vetor[1..10] de paciente

   registro_temporario: paciente

Inicio

   Para i DE 1 ATE 10 Faca

      fila_temporaria_pacientes[i] <- pacientes[i]

   FimPara

   Para i DE 1 ATE 10 Faca

      Para j DE 1 ATE 10 Faca

         Se(fila_temporaria_pacientes[i].prioridade > fila_temporaria_pacientes[j].prioridade) Entao

            registro_temporario <- fila_temporaria_pacientes[j]

            fila_temporaria_pacientes[j] <- fila_temporaria_pacientes[i]

            fila_temporaria_pacientes[i] <- registro_temporario

         FimSe

      FimPara

   FimPara

   Para i DE 1 ATE 10 Faca

      pacientes[i] <- fila_temporaria_pacientes[i]

   FimPara

FimProcedimento

Procedimento Ordenar_Idade_Pacientes()

Var

   i, j: inteiro

   fila_ordenada_pacientes: vetor[1..10] de paciente

   registro_temporario: paciente

Inicio

   Para i DE 1 ATE 10 Faca

      fila_ordenada_pacientes[i] <- pacientes[i]

   FimPara

   Para i DE 1 ATE 10 Faca

      Para j DE 1 ATE 10 Faca

         Se(fila_ordenada_pacientes[i].idade > fila_ordenada_pacientes[j].idade) Entao

            registro_temporario <- fila_ordenada_pacientes[j]

            fila_ordenada_pacientes[j] <- fila_ordenada_pacientes[i]

            fila_ordenada_pacientes[i] <- registro_temporario

         FimSe

      FimPara

   FimPara

   Para i DE 1 ATE 10 Faca

      pacientes[i] <- fila_ordenada_pacientes[i]

   FimPara

FimProcedimento

Procedimento Listar_Fila_Pacientes()

Var

   i: inteiro

Inicio

   Escreval("Listagem de Pacientes:")

   Escreval("")

   Se(indice_nova_insercao > 0) Entao

      Para i DE 1 ATE 10 Faca

         Se(pacientes[i].nome <> "") Entao

            Escreval(i:1, " - Paciente", pacientes[i].id, ":")

            Escreval("")

            Se(pacientes[i].id = indice_paciente_atual) Entao

               Escreval("Nome: ", pacientes[i].nome, " (Atendimento atual).")

            Senao

               Escreval("Nome: ", pacientes[i].nome, ".")

            FimSe

            Escreval("Idade:", pacientes[i].idade, " anos.")

            Escolha(pacientes[i].prioridade)

            Caso(1)

               Escreval("Grau de Prioridade: 1 (Leve).")

            Caso(2)

               Escreval("Grau de Prioridade: 2 (M�dio).")

            Caso(3)

               Escreval("Grau de Prioridade: 3 (Grave).")

            FimEscolha

            Escreval("Status: ", pacientes[i].status, ".")

         FimSe

         Se (i + 1 <= 10) Entao

            Se(pacientes[i + 1].nome <> "") Entao

               Escreval("")

            FimSe

         FimSe

      FimPara

   Senao

      Escreval("Nada a exibir.")

   FimSe

FimProcedimento

Procedimento Exibir_Atendimento_Atual()

Var

   i: inteiro

   condicao: caractere

   indice_atendimento_atual: inteiro

Inicio

   Se(indice_nova_insercao > 0) E (indice_paciente_atual > 0) Entao

      Para i DE 1 ATE 10 Faca

         Se(pacientes[i].id = indice_paciente_atual) Entao

            Escreval("Dados do Atendimento Atual:")

            Escreval("")

            Escreval("Paciente atual: ", pacientes[i].nome, " (Paciente", pacientes[i].id, ").")

            Escreval("")

            Escreval("Problema relatado: ", pacientes[i].queixa, ".")

            indice_atendimento_atual <- i

            Se(i < 10) Entao

               Interrompa()

            FimSe

         FimSe

      FimPara

      Escreval("")

      Escreval("O atendimento j� foi encerrado? (S/N)")
      Leia(condicao)

      Se(condicao = "S") OU (condicao = "s") Entao

         indice_paciente_atual <- 0

         pacientes[indice_atendimento_atual].status <- "Atendido(a)"

         Se(indice_nova_insercao > 1) Entao

            Para i DE 1 ATE 10 Faca

               Se(pacientes[i].status <> "") E (pacientes[i].status <> "Atendido(a)") Entao

                  Escreval("---------------------------------------------------------")

                  Escreval("Dados do Pr�ximo Atendimento:")

                  Escreval("")

                  Escreval("Pr�ximo paciente: ", pacientes[i].nome, " (Paciente", pacientes[i].id, ").")

                  Escreval("")

                  Escreval("Problema relatado: ", pacientes[i].queixa, ".")

                  indice_paciente_atual <- pacientes[i].id

                  Se(i < 10) Entao

                     Interrompa()

                  FimSe

               FimSe

            FimPara

         FimSe

      FimSe

   Senao

      Escreval("Nenhum paciente sendo atendido no momento.")

   FimSe

FimProcedimento

Var // Se��o de Declara��es das vari�veis

   opcao: inteiro

   pacientes: vetor[1..10] de paciente

   indice_nova_insercao: inteiro

   indice_paciente_atual: inteiro

   espera: caractere

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Repita

      LimpaTela()

      Escreval("---------------------------------------------------------")

      Escreval("SISTEMA - FILA HOSPITALAR")

      Escreval("---------------------------------------------------------")

      Escreval("Op��es:")

      Escreval("")

      Escreval("---------------------------------")
      Escreval("01 - Adicionar paciente.")
      Escreval("---------------------------------")
      Escreval("02 - Exibir fila de pacientes.")
      Escreval("---------------------------------")
      Escreval("03 - Exibir atendimento atual.")
      Escreval("---------------------------------")
      Escreval("04 - Fechar sistema.")
      Escreval("---------------------------------")

      Escreval("")

      Escreval("Escolha uma das op��es do menu acima:")
      Leia(opcao)

      Escolha(opcao)

      Caso(1)

         LimpaTela()

         Escreval("---------------------------------------------------------")

         Inserir_Paciente()

      Caso(2)

         LimpaTela()

         Escreval("---------------------------------------------------------")

         Listar_Fila_Pacientes()

      Caso(3)

         LimpaTela()

         Escreval("---------------------------------------------------------")

         Exibir_Atendimento_Atual()

      FimEscolha

      Se(opcao > 0) E (opcao < 4) Entao

         Escreval("")

         Escreval("Pressione Enter para prosseguir...")
         Leia(espera)

      FimSe

   ATE(opcao = 4)

   Escreval("---------------------------------------------------------")

   Escreval("Encerrando...")

   Escreval("---------------------------------------------------------")

Fimalgoritmo