Algoritmo "Login"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Sistema de login que após três tentativas falhas, bloqueia o usuário.
// Autor(a): Pablo Valentin.
// Data atual: 08/03/2024

Var // Seção de Declarações das variáveis

   usuario_previo, senha_previa: caractere

   usuario, senha: caractere

   i: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

   usuario_previo <- "Pablo"

   senha_previa <- "1234"

   Para i DE 1 ATE 3 Faca

      Escreval("----------------------------------------------------------------")

      Escreval("Digite seu usuário:")
      Leia(usuario)

      Escreval("")

      Escreval("Digite sua senha:")
      Leia(senha)

      Se(usuario = usuario_previo) E (senha = senha_previa) Entao

         Escreval("----------------------------------------------------------------")

         Escreval("Seja bem-vindo(a), ", usuario, "!")

         // Primeira forma de interromper um looping (Definindo um valor maior para o contador dele.):

         //i <- 4

         // Segunda forma (Recurso interno do VisualG.):

         Interrompa // É o equivalente ao "Break" das linguagens de programação.

      Senao

         Se(i = 3) Entao

            LimpaTela

            Escreval("----------------------------------------------------------------")

            Escreval("Quantidade máxima de tentativas atingidas! Acesso bloqueado.")

            Interrompa

         Senao

            Escreval("----------------------------------------------------------------")

            Escreval("Usuário ou senha incorretos! Tente novamente.")

            LimpaTela

         FimSe

      FimSe

   FimPara

   Escreval("----------------------------------------------------------------")

Fimalgoritmo