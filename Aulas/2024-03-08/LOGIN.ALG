Algoritmo "Login"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Sistema de login que ap�s tr�s tentativas falhas, bloqueia o usu�rio.
// Autor(a): Pablo Valentin.
// Data atual: 08/03/2024

Var // Se��o de Declara��es das vari�veis

   usuario_previo, senha_previa: caractere

   usuario, senha: caractere

   i: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   usuario_previo <- "Pablo"

   senha_previa <- "1234"

   Para i DE 1 ATE 3 Faca

      Escreval("----------------------------------------------------------------")

      Escreval("Digite seu usu�rio:")
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

         Interrompa // � o equivalente ao "Break" das linguagens de programa��o.

      Senao

         Se(i = 3) Entao

            LimpaTela

            Escreval("----------------------------------------------------------------")

            Escreval("Quantidade m�xima de tentativas atingidas! Acesso bloqueado.")

            Interrompa

         Senao

            Escreval("----------------------------------------------------------------")

            Escreval("Usu�rio ou senha incorretos! Tente novamente.")

            LimpaTela

         FimSe

      FimSe

   FimPara

   Escreval("----------------------------------------------------------------")

Fimalgoritmo