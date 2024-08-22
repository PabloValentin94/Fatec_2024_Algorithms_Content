Algoritmo "Ordem"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Organização de uma sequência numérica em ordem cescente.
// Autor(a): Pablo Valentin.
// Data atual: 19/04/2024

// estão ocorrendo problemas de travamento na geração e
// exibição de números aleatórios.

Var // Seção de Declarações das variáveis

    qnt_numeros: inteiro
    
    opcao: inteiro
    
    i, j: inteiro
    
    numero_atual: real
    
    numeros: vetor[1..100] de real
    
    continuidade: logico
    
    limite_maior_numero: inteiro
    
    ordem: vetor[1..100] de real
    
    tipo_ordem: inteiro
    
    // Analisando se um número já foi verificado e adicionado ao
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

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    Escreval("------------------------------------------------------------")
    
    Escreval("SISTEMA - ORDENAÇÃO DE NÚMEROS (CRESCENTE)")
    
    Escreval("------------------------------------------------------------")
    
    Enquanto (qnt_numeros <= 0) OU (qnt_numeros > 100) Faca
    
        Escreval("Quantos números deseja ordenar? (Máximo: 100 números.)")
        Leia(qnt_numeros)
        
        Escreval("")
        
        // Verificando se a quantidade passada atende aos requisitos pedidos:
        
        Se(qnt_numeros <= 0) OU (qnt_numeros > 100) Entao
        
            Escreval("Quantidade inválida! Tente novamente.")
            
            Escreval("")
        
        FimSe
        
    FimEnquanto
    
    Escreval("Defina um número limite (Nenhum será maior do que este.):")
    Leia(limite_maior_numero)
    
    Escreval("")
    
    Escreval("----------------------------------------")
    Escreval("01 - Inserir números manualmente.")
    Escreval("----------------------------------------")
    Escreval("02 - Gerar números aleatoriamente.")
    Escreval("----------------------------------------")
    
    Escreval("")
    
    Escreval("Escolha uma das opções acima:")
    Leia(opcao)
    
    Escreval("")

    Escreval("----------------------------------------")
    Escreval("01 - Ordem crescente.")
    Escreval("----------------------------------------")
    Escreval("02 - Ordem decrescente.")
    Escreval("----------------------------------------")

    Escreval("")

    Escreval("Escolha uma das opções acima:")
    Leia(tipo_ordem)

    LimpaTela()
    
    Escreval("------------------------------------------------------------")
    
    continuidade <- Falso

    Para i DE 1 ATE qnt_numeros Faca
    
        Repita
        
            Repita
            
                Se(opcao = 1) Entao
        
                    Escreval("Digite o", i, "º número:")
                    Leia(numero_atual)
                
                Senao
                
                    numero_atual <- randi(limite_maior_numero) + 1
                
                    Escolha(randi(2))
                    
                        Caso(0)
                        
                            numero_atual <- -numero_atual
                        
                    FimEscolha
                
                FimSe
                
                // Verificando se o número é maior do que o limite imposto:
                
                Se(numero_atual > limite_maior_numero) Entao

                    Escreval("")

                    Escreval("O maior número permitido é", limite_maior_numero, "! Tente novamente.")

                    Escreval("")

                FimSe
                
            ATE (numero_atual <= limite_maior_numero)
            
            // Verificando se há repetição de algum número:
            
            Para j DE 1 ATE qnt_numeros Faca
            
                Se(numeros[j] = numero_atual) Entao

                    Escreval("")

                    Se(numero_atual <> 0) Entao
                    
                        Escreval("Número repetido! Tente novamente.")
                        
                    Senao
                    
                        Escreval("O número zero não é permitido! Tente novamente.")
                        
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
    
        // Devido ao fato de que o valor padrão de todo número real é
        // igual a 0, a condição abaixo nunca seria atendida para os números
        // cujo valor é maior que zero. Para contornar isso, o valor
        // padrão é substituído por um número máximo, definido pelo usuário.
        // Dessa forma, todos os números serão, obrigatoriamente, menores do
        // que ele, pois o sistema não irá permitir a entrada de um número
        // maior do que o limite estabelecido.
        
        ordem[i] <- limite_maior_numero
    
        Para j DE 1 ATE qnt_numeros Faca
        
            Se(Number_Defined_Already(numeros[j]) = Falso) E (numeros[j] < ordem[i]) Entao
            
                ordem[i] <- numeros[j]
            
            FimSe
        
        FimPara
    
    FimPara
    
    // Listando os números (De forma ordenada.):
    
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