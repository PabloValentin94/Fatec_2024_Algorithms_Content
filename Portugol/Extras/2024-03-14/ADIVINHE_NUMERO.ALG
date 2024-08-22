Algoritmo "Adivinhe_Numero"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Jogo onde o usuário precisa adivinhar o número gerado aleatoriamente.
// Autor(a): Pablo Valentin.
// Data atual: 14/03/2024

Var // Seção de Declarações das variáveis

    qnt_possibilidades, qnt_tentativas, numero_aleatorio: inteiro
    
    i, valor_tentativa: inteiro

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("---------------------------------------------------------------")

    Escreval("JOGO - ADIVINHE O NÚMERO")
    
    Escreval("---------------------------------------------------------------")
    
    Escreval("Digite o número de possibilidades que irão existir no jogo:")
    Leia(qnt_possibilidades)
    
    Escreval("---------------------------------------------------------------")
    
    Escreval("Digite a quantidade de tentivas que o usuário terá:")
    Leia(qnt_tentativas)
    
    numero_aleatorio <- randi(qnt_possibilidades) + 1
    
    Escreval("---------------------------------------------------------------")
    
    Para i DE 1 ATE qnt_tentativas FACA
    
        Escreval("Digite um número entre 1 e", qnt_possibilidades,":")
        Leia(valor_tentativa)
        
        Se(valor_tentativa = numero_aleatorio) Entao
        
            Escreval("---------------------------------------------------------------")
        
            Escreval("Parabéns! Este é o número correto! Você venceu.")
        
            Interrompa
            
        Senao
        
            Escreval("")
        
            Escreval("Número incorreto!")

            Escreval("---------------------------------------------------------------")
        
            Se(i = qnt_tentativas) Entao
            
                Escreval("Quantidade máxima de tentivas atingidas! Você perdeu.")
                
                Interrompa
            
            FimSe
        
        FimSe
    
    FimPara
    
    Escreval("---------------------------------------------------------------")

Fimalgoritmo