Algoritmo "Funcoes"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Introdu��o a Fun��es (Possuem retorno.) no VisualG.
// Autor(a): Pablo Valentin.
// Data atual: 18/04/2024

Var // Se��o de Declara��es das vari�veis

    resposta: caractere
    
    comunicado: caractere

    Funcao Birthday(condicao: inteiro) : caractere
    
    Inicio
    
        Se(condicao = 1) Entao
        
            Retorne "Meus parab�ns!"
        
        Senao
        
            Retorne "Esperarei ansiosamente!"
        
        FimSe

    FimFuncao

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")

    Escreval("Hoje � seu anivers�rio? (S/N)")
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