Algoritmo "Altura_Media_Vetor"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o:
// Autor(a): Pablo Valentin.
// Data atual: 15/03/2024

Var // Se��o de Declara��es das vari�veis

    nomes_jogadores: vetor[1..22] de caractere
    
    alturas_jogadores: vetor[1..22] de real
    
    condicao: caractere
    
    i, qnt_jogadores: inteiro
    
    maior_altura, menor_altura: real
    
    nome_maior_jogador, nome_menor_jogador: caractere
    
    altura_media: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("--------------------------------------------------------------")
    
    Escreval("ALTURA M�DIA")
    
    condicao <- "S"
    
    i <- 0
    
    qnt_jogadores <- 0
    
    Repita
    
        i <- i + 1
        
        qnt_jogadores <- qnt_jogadores + 1
        
        Escreval("--------------------------------------------------------------")
    
        Escreval("Digite o nome do ", i, "� jogador:")
        Leia(nomes_jogadores[i])
        
        Escreval("")
        
        Escreval("Digite a altura, em metros, do ", i, "� jogador:")
        Leia(alturas_jogadores[i])
        
        Escreval("")
        
        Se(i = 22) Entao

            Escreval("--------------------------------------------------------------")

            Escreval("N�mero m�ximo de jogadores atingido! Acesso bloqueado.")

            condicao <- "N"
            
        Senao
        
            Escreval("Deseja inserir os dados de outro jogador? (S/N)")
            Leia(condicao)

        FimSe
    
    ATE condicao = "N"
    
    Escreval("--------------------------------------------------------------")
    
    maior_altura <- 0
    
    Para i DE 1 ATE qnt_jogadores Faca
    
        Se(alturas_jogadores[i] > maior_altura) Entao
        
            maior_altura <- alturas_jogadores[i]
            
            nome_maior_jogador <- nomes_jogadores[i]
        
        FimSe
    
    FimPara
    
    menor_altura <- maior_altura

    Para i DE 1 ATE qnt_jogadores Faca

        Se(alturas_jogadores[i] < menor_altura) Entao

            menor_altura <- alturas_jogadores[i]

            nome_menor_jogador <- nomes_jogadores[i]

        FimSe

    FimPara
    
    Escreval("A maior altura pertence ao jogador ", nome_maior_jogador, ", sendo ", maior_altura:2:2, " metros.")
    
    Escreval("--------------------------------------------------------------")
    
    Escreval("A menor altura pertence ao jogador ", nome_menor_jogador, ", sendo ", menor_altura:2:2, " metros.")
    
    Escreval("--------------------------------------------------------------")
    
    altura_media <- (menor_altura + maior_altura) / 2
    
    Escreval("A altura m�dia deste time �: ", altura_media:2:2, " metros.")
    
    Escreval("--------------------------------------------------------------")

Fimalgoritmo