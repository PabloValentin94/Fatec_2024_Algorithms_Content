Algoritmo "Jogo_da_Velha"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Fa�a um jogo da velha.
// Autor(a): Pablo Valentin.
// Data atual: 03/05/2024

Var // Se��o de Declara��es das vari�veis

    decisao: caractere

    jogadas: vetor[1..3,1..3] de caractere

    jogador_X, jogador_O: caractere
    
    vez: caractere
    
    i: inteiro
    
    opcao: caractere
    
    resultado_validacao: caractere
    
    velha: logico
    
    // Procedimento que gera a estrutura de um jogo da velha:
    
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
    
    // Fun��o que preenche um campo do jogo da velha com X ou O:
    
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
          
            Retorne "Op��o dispon�vel. Jogada salva."
              
        Senao
          
            Retorne "Op��o indispon�vel! Tente outra."
              
        FimSe

    FimFuncao
    
    // Fun��o que verifica se algu�m venceu:
    
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

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

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
    
        Escreval("Digite o nome do(a) jogador(a) que ser� o X:")
        Leia(jogador_X)
    
        Escreval("")
    
        Escreval("Digite o nome do(a) jogador(a) que ser� o O:")
        Leia(jogador_O)
        
        vez <- "X"
        
        Para i DE 1 ATE 9 Faca
    
            LimpaTela()
    
            Escreval("----------------------------------------------------------")
    
            Escreval("Op��es:")
    
            Escreval("")

            Gerar_Interface()
            
            Escreval("")
            
            Escreval("� a vez do ", vez, ".")
            
            Repita
    
                Escreval("")
    
                Escreval("Escolha uma das op��es acima (Uma das dispon�veis!):")
                Leia(opcao)
            
                Escreval("")
            
                resultado_validacao <- Definir_Posicao(opcao)
            
                Escreval(resultado_validacao)
            
            ATE(resultado_validacao = "Op��o dispon�vel. Jogada salva.")
            
            // Se a condi��o abaixo for verdadeira, todo o c�digo posterior
            // a ela n�o ser� executado.
            
            Se(Verificar_Jogo() = Verdadeiro) Entao

                Interrompa()

            FimSe
            
            // C�digo executado, caso a condi��o anterior seja falsa:
            
            Se(i < 9) Entao
            
                Escreval("")
                
            Senao
            
                velha <- Verdadeiro
                
            FimSe
            
            Se(vez = "X") Entao

                vez <- "O"

            Senao

                vez <- "X"

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