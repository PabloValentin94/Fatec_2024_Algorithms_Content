Algoritmo "Barbearia"

// Disciplina: Algoritmos e L�gica de Programa��o.
// Professor: Tiago Ant�nio da Silva.
// Descri��o: Descrita abaixo.
// Autor(a): Pablo Valentin.
// Data atual: 12/04/2024

// Imagine que voc� dever� desenvolver um sistema de agendamentos para
// um sal�o de cabeleireiros. No sistema ser� necess�rio informar o nome
// do cliente, o nome do profissional que ir� atend�-lo e a data e hora
// do atendimento. O sistema n�o poder� permitir dois agendamentos no mesmo
// hor�rio. O sistema deve conter as op��es: novo agendamento e listagem de
// agendamentos do dia atual j� cadastrados.

Var // Se��o de Declara��es das vari�veis

    i: inteiro
    
    horario_repetido: logico

    opcao, qnt_clientes_cadastrados: inteiro
    
    cliente, profissional, data, hora: caractere

    agendamentos: vetor[0..9,1..4] de caractere
    
    // Procedimentos:
    
    Procedimento Agendar(cliente, barbeiro, data, hora: caractere)
    
    Inicio
    
        agendamentos[qnt_clientes_cadastrados, 1] <- cliente
        
        agendamentos[qnt_clientes_cadastrados, 2] <- barbeiro
        
        agendamentos[qnt_clientes_cadastrados, 3] <- data
        
        agendamentos[qnt_clientes_cadastrados, 4] <- hora
    
    FimProcedimento

Inicio // Se��o de Comandos, procedimento, fun��es, operadores, etc...

    Escreval("-------------------------------------------------------------")
    
    Escreval("SISTEMA - AGENDAMENTOS - BARBEARIA")
    
    Repita
    
        Escreval("-------------------------------------------------------------")
        
        Escreval("Op��es:")
        
        Escreval("")
        
        opcao <- 0
        
        Escreval("|-----------------------------------------|")
        Escreval(" 01 - Agendar")
        Escreval("|-----------------------------------------|")
        Escreval(" 02 - Exibir agendamentos cadastrados.")
        Escreval("|-----------------------------------------|")
        Escreval(" 03 - Fechar sistema.")
        Escreval("|-----------------------------------------|")
        
        Escreval("")
        
        Escreval("Escolha uma das op��es listadas acima:")
        Leia(opcao)
        
        Escolha(opcao)
        
            Caso(1)
            
                Se(qnt_clientes_cadastrados >= 10) Entao
                
                    Escreval("")
                
                    Escreval("Quantidade m�xima de agendamentos atingida!")
                    
                Senao

                    LimpaTela()

                    Escreval("-------------------------------------------------------------")

                    Escreval("Novo agendamento:")

                    Escreval("")

                    Repita

                        Escreval("Digite a data de atendimento:")
                        Leia(data)

                        Escreval("")

                        Escreval("Digite a hora de atendimento:")
                        Leia(hora)

                        horario_repetido <- Falso

                        Para i DE 0 ATE 9 Faca

                            SE(data = agendamentos[i,3]) E (hora = agendamentos[i,4]) Entao

                                horario_repetido <- Verdadeiro

                                Interrompa

                            FimSe

                        FimPara

                        Se(Nao horario_repetido) Entao

                            Escreval("")

                            Escreval("Digite o nome do cliente:")
                            Leia(cliente)

                            Escreval("")

                            Escreval("Digite o nome do profissional que ir� atend�-lo:")
                            Leia(profissional)

                            Agendar(cliente, profissional, data, hora)

                            qnt_clientes_cadastrados <- qnt_clientes_cadastrados + 1

                        Senao

                            Escreval("")

                            Escreval("Hor�rio j� ocupado! Tente outro.")

                            Escreval("")

                        FimSe

                    ATE(Nao horario_repetido)

                FimSe
            
            Caso(2)
            
                LimpaTela()
                
                Escreval("-------------------------------------------------------------")
                
                Escreval("Agendamentos cadastrados:")
                
                Escreval("")
                
                Para i DE 0 ATE 9 Faca
                
                    //Escreval(i + 1, "� agendamento: ", agendamentos[i,1], " ", agendamentos[i,2], " ", agendamentos[i,3], " ", agendamentos[i,4])
                
                    Se(agendamentos[i,1] <> "") Entao
                
                        Escreval(i + 1, "� agendamento:")
                    
                        Escreval("")
                    
                        Escreval("Cliente: ", agendamentos[i,1])
                        Escreval("Profissional que ir� atend�-lo: ", agendamentos[i,2])
                        Escreval("Data de atendimento: ", agendamentos[i,3])
                        Escreval("Hora de atendimento: ", agendamentos[i,4])
                    
                        Se(i < 9) E (qnt_clientes_cadastrados > i) Entao
                    
                            Escreval("")
                        
                        FimSe
                        
                    FimSe
                
                FimPara
        
        FimEscolha
        
    ATE(opcao = 3)
    
    Escreval("-------------------------------------------------------------")
    
Fimalgoritmo