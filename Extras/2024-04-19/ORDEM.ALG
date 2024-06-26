Algoritmo "Ordem"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Organiza��o de uma sequ�ncia num�rica em ordem cescente.
// Autor(a): Pablo Valentin.
// Data atual: 19/04/2024

// est�o ocorrendo problemas de travamento na gera��o e
// exibi��o de n�meros aleat�rios.

Var // Se��o de Declara��es das vari�veis

    qnt_numeros: inteiro
    
    opcao: inteiro
    
    i, j: inteiro
    
    numero_atual: real
    
    numeros: vetor[1..100] de real
    
    continuidade: logico
    
    limite_maior_numero: inteiro
    
    ordem: vetor[1..100] de real
    
    tipo_ordem: inteiro
    
    // Analisando se um n�mero j� foi verificado e adicionado ao
    // vetor da ordem crescente:
    
    Funcao Number_Defined_Already(numero: inteiro): logico
    
    Var
    
        l: inteiro
        
        condicao: logico
    
    Inicio
    
        Para l DE 1 ATE qnt_numeros Faca
        
            Se(ordem[l] = numero) Entao
            
                condicao <- Verdadeiro
                
                Interrompa
                
            Senao
            
                condicao <- Falso
            
            FimSe
        
        FimPara
        
        Retorne condicao
    
    FimFuncao

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("------------------------------------------------------------")
    
    Escreval("SISTEMA - ORDENA��O DE N�MEROS (CRESCENTE)")
    
    Escreval("------------------------------------------------------------")
    
    Enquanto (qnt_numeros <= 0) OU (qnt_numeros > 100) Faca
    
        Escreval("Quantos n�meros deseja ordenar? (M�ximo: 100 n�meros.)")
        Leia(qnt_numeros)
        
        Escreval("")
        
        // Verificando se a quantidade passada atende aos requisitos pedidos:
        
        Se(qnt_numeros <= 0) OU (qnt_numeros > 100) Entao
        
            Escreval("Quantidade inv�lida! Tente novamente.")
            
            Escreval("")
        
        FimSe
        
    FimEnquanto
    
    Escreval("Defina um n�mero limite (Nenhum ser� maior do que este.):")
    Leia(limite_maior_numero)
    
    Escreval("")
    
    Escreval("----------------------------------------")
    Escreval("01 - Inserir n�meros manualmente.")
    Escreval("----------------------------------------")
    Escreval("02 - Gerar n�meros aleatoriamente.")
    Escreval("----------------------------------------")
    
    Escreval("")
    
    Escreval("Escolha uma das op��es acima:")
    Leia(opcao)
    
    Escreval("")

    Escreval("----------------------------------------")
    Escreval("01 - Ordem crescente.")
    Escreval("----------------------------------------")
    Escreval("02 - Ordem decrescente.")
    Escreval("----------------------------------------")

    Escreval("")

    Escreval("Escolha uma das op��es acima:")
    Leia(tipo_ordem)

    LimpaTela()
    
    Escreval("------------------------------------------------------------")
    
    continuidade <- Falso

    Para i DE 1 ATE qnt_numeros Faca
    
        Repita
        
            Repita
            
                Se(opcao = 1) Entao
        
                    Escreval("Digite o", i, "� n�mero:")
                    Leia(numero_atual)
                
                Senao
                
                    numero_atual <- randi(limite_maior_numero) + 1
                
                    Escolha(randi(2))
                    
                        Caso(0)
                        
                            numero_atual <- -numero_atual
                        
                    FimEscolha
                
                FimSe
                
                // Verificando se o n�mero � maior do que o limite imposto:
                
                Se(numero_atual > limite_maior_numero) Entao

                    Escreval("")

                    Escreval("O maior n�mero permitido �", limite_maior_numero, "! Tente novamente.")

                    Escreval("")

                FimSe
                
            ATE (numero_atual <= limite_maior_numero)
            
            // Verificando se h� repeti��o de algum n�mero:
            
            Para j DE 1 ATE qnt_numeros Faca
            
                Se(numeros[j] = numero_atual) Entao

                    Escreval("")

                    Se(numero_atual <> 0) Entao
                    
                        Escreval("N�mero repetido! Tente novamente.")
                        
                    Senao
                    
                        Escreval("O n�mero zero n�o � permitido! Tente novamente.")
                        
                    FimSe

                    continuidade <- Falso

                    Interrompa
                    
                Senao
                
                    continuidade <- Verdadeiro
                
                FimSe
            
            FimPara
            
            Se(continuidade = Verdadeiro) Entao
            
               numeros[i] <- numero_atual
               
            FimSe

            Se(i < qnt_numeros) OU (continuidade = Falso) Entao

                Escreval("")

            FimSe
        
        ATE (continuidade = Verdadeiro)
    
    FimPara
    
    LimpaTela()

    Escreval("------------------------------------------------------------")
    
    Para i de 1 ATE qnt_numeros Faca
    
        // Devido ao fato de que o valor padr�o de todo n�mero real �
        // igual a 0, a condi��o abaixo nunca seria atendida para os n�meros
        // cujo valor � maior que zero. Para contornar isso, o valor
        // padr�o � substitu�do por um n�mero m�ximo, definido pelo usu�rio.
        // Dessa forma, todos os n�meros ser�o, obrigatoriamente, menores do
        // que ele, pois o sistema n�o ir� permitir a entrada de um n�mero
        // maior do que o limite estabelecido.
        
        ordem[i] <- limite_maior_numero
    
        Para j DE 1 ATE qnt_numeros Faca
        
            Se(Number_Defined_Already(numeros[j]) = Falso) E (numeros[j] < ordem[i]) Entao
            
                ordem[i] <- numeros[j]
            
            FimSe
        
        FimPara
    
    FimPara
    
    // Listando os n�meros (De forma ordenada.):
    
    Escolha(tipo_ordem)
    
        caso(1)
        
            Escreval("Ordem Crescente:")

            Escreval("")
    
            Para i de 1 ATE qnt_numeros Faca

                Escreval(ordem[i]:1)
        
                Se(i < qnt_numeros) Entao
        
                    Escreval("")
            
                FimSe

            FimPara
            
        Caso(2)
        
        Escreval("Ordem Decrescente:")

        Escreval("")
        
           Para i de 1 ATE qnt_numeros Faca

                Escreval(ordem[qnt_numeros + 1 - i]:1)

                Se(i < qnt_numeros) Entao

                    Escreval("")

                FimSe

            FimPara
        
    FimEscolha
    
    Escreval("------------------------------------------------------------")

Fimalgoritmo