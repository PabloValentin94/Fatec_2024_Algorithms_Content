Algoritmo "Media_Alunos_Sala"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Calcule a m�dia individual de cada aluno e a m�dia da sala.
// Autor(a): Pablo Valentin.
// Data atual: 22/03/2024

Var // Se��o de Declara��es das vari�veis

    i, j: inteiro
    
    nomes: vetor[1..10] de caractere
    
    // Estrutura - Matrizes: linhas X colunas (L,C).

    notas: vetor[1..10,1..2] de real
    
    medias: vetor[1..10] de real
    
    media_sala: real

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("------------------------------------------------------------")
    
    Escreval("M�DIA - SALA")

    Para i DE 1 ATE 10 Faca
    
        Escreval("------------------------------------------------------------")
    
        Escreval("Digite o nome do", i, "� aluno:")
        Leia(nomes[i])
        
        Escreval("")
        
        Para j DE 1 ATE 2 Faca
        
            Repita
            
                Escreval("Digite a", j, "� nota do", i, "� aluno:")
                Leia(notas[i,j])

                Se(notas[i,j] < 0) E (notas[i,j] > 10) Entao
                
                    Escreval("")
                    
                FimSe
            
            ATE(notas[i,j] >= 0) E (notas[i,j] <= 10)
        
        FimPara
        
        medias[i] <- (notas[i,1] + notas[i,2]) / 2
    
    FimPara
    
    Escreval("------------------------------------------------------------")
    
    Escreval("M�dias dos alunos:")
    
    Para i DE 1 ATE 10 Faca
    
        media_sala <- media_sala + medias[i]
    
        Escreval("")
        
        Escreval("M�dia do(a) ", nomes[i], ": ", medias[i]:2:2)
    
    FimPara
    
    Escreval("------------------------------------------------------------")
    
    media_sala <- media_sala / 10
    
    Escreval("M�dia da sala: ", media_sala:2:2)
    
    Escreval("------------------------------------------------------------")

Fimalgoritmo