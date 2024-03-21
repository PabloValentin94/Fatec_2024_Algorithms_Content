Algoritmo "Menu_Infinito"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: o programa não será fechado enquanto o usuário não exigir.
// Autor(a): Pablo Valentin.
// Data atual: 15/03/2024

Var // Seção de Declarações das variáveis

    condicao: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    condicao <- 0

    Repita
    
        Escreval("----------------------------------------------------------------")

        Escreval("")

        Escreval("------------------------")
        Escreval("1 - Dizer olá.")
        Escreval("------------------------")
        Escreval("2 - Dizer oi.")
        Escreval("------------------------")
        Escreval("3 - Sair do programa.")
        Escreval("------------------------")

        Escreval("")

        Escreval("Escolha uma das opções propostas:")
        Leia(condicao)
        
        Escreval("----------------------------------------------------------------")
        
        Escolha(condicao)
            
            Caso 1
            
                Escreval("Olá.")
            
            Caso 2
            
                Escreval("Oi.")
        
        FimEscolha

    ATE(condicao = 3)
    
    Escreval("Fechando programa.")
    
    Escreval("----------------------------------------------------------------")

Fimalgoritmo