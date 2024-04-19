Algoritmo "Funcoes"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Introdução a Funções (Possuem retorno.) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Seção de Declarações das variáveis

    resposta: caractere
    
    comunicado: caractere

    Funcao Birthday(condicao: inteiro) : caractere
    
    Inicio
    
        Se(condicao = 1) Entao
        
            Retorne "Meus parabéns!"
        
        Senao
        
            Retorne "Esperarei ansiosamente!"
        
        FimSe

    FimFuncao

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("Hoje é seu aniversário? (S/N)")
    Leia(resposta)
    
    Escreval("-------------------------------------------------------------")
    
    Se(resposta = "S") OU (resposta = "s") Entao
    
        comunicado <- Birthday(1)
    
    Senao
    
        comunicado <- Birthday(0)
    
    FimSe
    
    Escreval(comunicado)
    
    Escreval("-------------------------------------------------------------")

Fimalgoritmo