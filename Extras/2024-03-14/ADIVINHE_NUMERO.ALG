Algoritmo "Adivinhe_Numero"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Jogo onde o usu�rio precisa adivinhar o n�mero gerado aleatoriamente.
// Autor(a): Pablo Valentin.
// Data atual: 14/03/2024

Var // Se��o de Declara��es das vari�veis

    qnt_possibilidades, qnt_tentativas, numero_aleatorio: inteiro
    
    i, valor_tentativa: inteiro

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("---------------------------------------------------------------")

    Escreval("JOGO - ADIVINHE O N�MERO")
    
    Escreval("---------------------------------------------------------------")
    
    Escreval("Digite o n�mero de possibilidades que ir�o existir no jogo:")
    Leia(qnt_possibilidades)
    
    Escreval("---------------------------------------------------------------")
    
    Escreval("Digite a quantidade de tentivas que o usu�rio ter�:")
    Leia(qnt_tentativas)
    
    numero_aleatorio <- randi(qnt_possibilidades) + 1
    
    Escreval("---------------------------------------------------------------")
    
    Para i DE 1 ATE qnt_tentativas FACA
    
        Escreval("Digite um n�mero entre 1 e", qnt_possibilidades,":")
        Leia(valor_tentativa)
        
        Se(valor_tentativa = numero_aleatorio) Entao
        
            Escreval("---------------------------------------------------------------")
        
            Escreval("Parab�ns! Este � o n�mero correto! Voc� venceu.")
        
            Interrompa
            
        Senao
        
            Escreval("")
        
            Escreval("N�mero incorreto!")

            Escreval("---------------------------------------------------------------")
        
            Se(i = qnt_tentativas) Entao
            
                Escreval("Quantidade m�xima de tentivas atingidas! Voc� perdeu.")
                
                Interrompa
            
            FimSe
        
        FimSe
    
    FimPara
    
    Escreval("---------------------------------------------------------------")

Fimalgoritmo