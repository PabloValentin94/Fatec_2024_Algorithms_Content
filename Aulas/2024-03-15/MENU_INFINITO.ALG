Algoritmo "Menu_Infinito"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: o programa n�o ser� fechado enquanto o usu�rio n�o exigir.
// Autor(a): Pablo Valentin.
// Data atual: 15/03/2024

Var // Se��o de Declara��es das vari�veis

    condicao: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    condicao <- 0

    Repita
    
        Escreval("----------------------------------------------------------------")

        Escreval("")

        Escreval("------------------------")
        Escreval("1 - Dizer ol�.")
        Escreval("------------------------")
        Escreval("2 - Dizer oi.")
        Escreval("------------------------")
        Escreval("3 - Sair do programa.")
        Escreval("------------------------")

        Escreval("")

        Escreval("Escolha uma das op��es propostas:")
        Leia(condicao)
        
        Escreval("----------------------------------------------------------------")
        
        Escolha(condicao)
            
            Caso 1
            
                Escreval("Ol�.")
            
            Caso 2
            
                Escreval("Oi.")
        
        FimEscolha

    ATE(condicao = 3)
    
    Escreval("Fechando programa.")
    
    Escreval("----------------------------------------------------------------")

Fimalgoritmo