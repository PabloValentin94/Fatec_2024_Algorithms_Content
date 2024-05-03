Algoritmo "Jogo_da_Velha"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Faça um jogo da velha.
// Autor(a): Pablo Valentin.
// Data atual: 03/05/2024

Var // Seção de Declarações das variáveis

    jogadas: vetor[1..3,1..3] de caractere

    decisao: caractere

    jogador_X, jogador_O: caractere
    
    i: inteiro
    
    opcao: caractere
    
    resultado_validacao: caractere
    
    vez: caractere
    
    velha: logico
    
    Procedimento Gerar_Interface()
    
    Inicio
    
          Escreva(jogadas[1,1])
          Escreva("|")
          Escreva(jogadas[1,2])
          Escreva("|")
          Escreval(jogadas[1,3])
          
          Escreva("_")
          Escreva(" ")
          Escreva("_")
          Escreva(" ")
          Escreval("_")
          
          Escreval("")
          
          Escreva(jogadas[2,1])
          Escreva("|")
          Escreva(jogadas[2,2])
          Escreva("|")
          Escreval(jogadas[2,3])
          
          Escreva("_")
          Escreva(" ")
          Escreva("_")
          Escreva(" ")
          Escreval("_")
          
          Escreval("")
          
          Escreva(jogadas[3,1])
          Escreva("|")
          Escreva(jogadas[3,2])
          Escreva("|")
          Escreval(jogadas[3,3])
    
    FimProcedimento
    
    Funcao Definir_Posicao(campo: caractere) : caractere
    
    Var
    
        linha, coluna: inteiro

    Inicio

          Escolha(campo)
          
              Caso("1")
              
                  linha <- 1
                  
                  coluna <- 1
                  
              Caso("2")

                  linha <- 1

                  coluna <- 2
                  
              Caso("3")

                  linha <- 1

                  coluna <- 3
                  
              Caso("4")

                  linha <- 2

                  coluna <- 1
                  
              Caso("5")

                  linha <- 2

                  coluna <- 2
                  
              Caso("6")

                  linha <- 2

                  coluna <- 3
                  
              Caso("7")

                  linha <- 3

                  coluna <- 1
                  
              Caso("8")

                  linha <- 3

                  coluna <- 2
                  
              Caso("9")

                  linha <- 3

                  coluna <- 3
          
          FimEscolha
          
          Se(jogadas[linha, coluna] <> "X") E (jogadas[linha, coluna] <> "O") Entao
          
              jogadas[linha, coluna] <- vez
          
              Retorne "Opção disponível. Jogada salva."
              
          Senao
          
              Retorne "Opção indisponível! Tente outra."
              
          FimSe

    FimFuncao
    
    Funcao Verificar_Jogo() : logico
    
        Inicio
    
        // Horizontais:
    
        Se(jogadas[1,1] = vez) E (jogadas[1,2] = vez) E (jogadas[1,3] = vez) Entao
        
            Retorne Verdadeiro
        
        Senao

            Se(jogadas[2,1] = vez) E (jogadas[2,2] = vez) E (jogadas[2,3] = vez) Entao

                Retorne Verdadeiro
                
            Senao

                Se(jogadas[3,1] = vez) E (jogadas[3,2] = vez) E (jogadas[3,3] = vez) Entao
        
                    Retorne Verdadeiro
                    
                FimSe
                
            FimSe
            
        FimSe
        
        // Verticais:

        Se(jogadas[1,1] = vez) E (jogadas[2,1] = vez) E (jogadas[3,1] = vez) Entao

            Retorne Verdadeiro

        Senao

            Se(jogadas[1,2] = vez) E (jogadas[2,2] = vez) E (jogadas[3,2] = vez) Entao

                Retorne Verdadeiro

            Senao

                Se(jogadas[1,3] = vez) E (jogadas[2,3] = vez) E (jogadas[3,3] = vez) Entao

                    Retorne Verdadeiro

                FimSe

            FimSe

        FimSe
            
        // Diagonais:

        Se(jogadas[1,1] = vez) E (jogadas[2,2] = vez) E (jogadas[3,3] = vez) Entao

            Retorne Verdadeiro

        Senao

            Se(jogadas[1,3] = vez) E (jogadas[2,2] = vez) E (jogadas[3,1] = vez) Entao

                Retorne Verdadeiro
                
            FimSe
            
        FimSe

    FimFuncao

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    decisao <- "S"

    Repita
    
        LimpaTela()

        // Definindo os valores iniciais da matriz:
    
        jogadas[1,1] <- "1"
    
        jogadas[1,2] <- "2"
    
        jogadas[1,3] <- "3"
    
        jogadas[2,1] <- "4"
    
        jogadas[2,2] <- "5"
    
        jogadas[2,3] <- "6"
    
        jogadas[3,1] <- "7"
    
        jogadas[3,2] <- "8"
    
        jogadas[3,3] <- "9"
    
        Escreval("----------------------------------------------------------")
    
        // Definindo os jogadores:
    
        Escreval("Digite o nome do(a) jogador(a) que será o X:")
        Leia(jogador_X)
    
        Escreval("")
    
        Escreval("Digite o nome do(a) jogador(a) que será o O:")
        Leia(jogador_O)
        
        vez <- "X"
        
        Para i DE 1 ATE 9 Faca
    
            LimpaTela()
    
            Escreval("----------------------------------------------------------")
    
            Escreval("Opções:")
    
            Escreval("")

            Gerar_Interface()
            
            Escreval("")
            
            Escreval("É a vez do ", vez, ".")
            
            Repita
    
                Escreval("")
    
                Escreval("Escolha uma das opções acima (Uma das disponíveis!):")
                Leia(opcao)
            
                Escreval("")
            
                resultado_validacao <- Definir_Posicao(opcao)
            
                Escreval(resultado_validacao)
            
            ATE(resultado_validacao = "Opção disponível. Jogada salva.")
            
            Se(Verificar_Jogo() = Verdadeiro) Entao

                Interrompa()
                
            Senao
            
                Se(i = 9) Entao
                
                    velha <- Verdadeiro
                    
                    Interrompa()
                
                FimSe

            FimSe
            
            Se(vez = "X") Entao
            
                vez <- "O"
                
            Senao
            
                vez <- "X"
                
            FimSe
            
            Se(i < 9) Entao
            
                Escreval("")
                
            FimSe
            
        FimPara
        
    LimpaTela()
        
    Escreval("----------------------------------------------------------")
    
    Se(velha = Verdadeiro) Entao
    
        Escreval("Empate!")
        
    Senao
    
        Escolha(vez)

           Caso("X")

               Escreval(jogador_X, " venceu!")

           Caso("O")

               Escreval(jogador_O, " venceu!")

        FimEscolha
    
    FimSe
                
    Escreval("----------------------------------------------------------")
    
    Escreval("Deseja jogar outra partida? (S/N)")
    Leia(decisao)
    
    Escreval("----------------------------------------------------------")
        
    ATE(decisao = "N")

Fimalgoritmo