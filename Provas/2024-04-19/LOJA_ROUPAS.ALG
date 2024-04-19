Algoritmo "Loja_Roupas"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: Avaliação referente ao primeiro bimestre do primeiro semestre de aulas.
// Autor(a): Pablo Valentin.
// Data atual: 12/04/2024

// Considere o desenvolvimento de um sistema para uma loja de roupas. No
// sistema deverá ser possível navegar através de um menu para:

// A) Ver os itens e quantidades disponíveis no estoque;
// B) Realizar vendas dos itens disponíveis no estoque;
// C) Fazer o recebimento de uma venda;
// D) Sair do sistema.

// Para o correto desenvolvimento do sistema vocês deverão tomar
// como base que:

// A) Os itens, preços e quantidades disponíveis serão vetores e seus
// valores já estarão predefinidos no sistema.

// B) Para o registro da venda deverá ser informado o nome do cliente,
// telefone, forma de pagamento. Os itens da venda feito deverão
// ser armazenados em um vetor.

// C) Ao fazer o recebimento de uma venda, apresentar todos os dados da
// venda e se o cliente for pagar em dinheiro, conceder desconto de 10%
// sobre o valor total.

// D) Não deverão ser aceitas quantidades negativas de produtos.

// E) Comentem o código fonte, explicando cada trecho e o porquê da escolha
// das estruturas no algoritmo

Var // Seção de Declarações das variáveis

    // Variável do menu do escopo global:

    condicao: inteiro
    
    // Variáveis destinadas ao armazenamento dos produtos da loja:
    
    nomes_produtos: vetor[1..5] de caractere
    
    estoque_produtos: vetor[1..5] de inteiro
    
    precos_produtos: vetor[1..5] de real
    
    // Variáveis destinadas ao armazenamento dos dados da venda:
    
    dados_cliente_venda: vetor[1..2] de caractere // Nome X Telefone

    itens: vetor[1..5] de caractere

    qnt_itens: vetor[1..5] de inteiro
    
    valor_unitario_itens: vetor[1..5] de real

    subtotais_itens: vetor[1..5] de real

    Procedimento Exibir_Estoque()
    
    Var
    
        i: inteiro
    
    Inicio
    
        Escreval("----------------------------------------------------------")
        
        Escreval("Estoque de produtos:")
        
        Escreval("")

            Para i DE 1 ATE 5 Faca
            
                Escreval(i:1, " - Nome: ", nomes_produtos[i], " | Quantidade: ", estoque_produtos[i]:2, " | Preço: R$", precos_produtos[i]:2:2)
            
                Se(i < 5) Entao
                
                    Escreval("")
                    
                FimSe
            
            FimPara
            
        Escreval("----------------------------------------------------------")
    
    FimProcedimento

    Procedimento Efetuar_Pagamento()
    
    Var
    
        escolha_pagamento: inteiro
        
        forma_pagamento: caractere
        
        i: inteiro
        
        valor_total, desconto: real
    
    Inicio
    
        LimpaTela()
        
        Escreval("----------------------------------------------------------")
    
        Escreval("---------------------")
        Escreval("01 - Dinheiro.")
        Escreval("---------------------")
        Escreval("02 - Cartão.")
        Escreval("---------------------")
        Escreval("03 - Boleto.")
        Escreval("---------------------")
        Escreval("04 - Pix.")
        Escreval("---------------------")
        
        Escreval("")
    
        Escreval("Escolha (Pela numeração.) uma das formas de pagamento acima:")
        Leia(escolha_pagamento)
        
        Escreval("----------------------------------------------------------")
        
        Escreval("Carrinho de Compras:")
        
        Para i DE 1 ATE 5 Faca
        
            Se(itens[i] <> "") Entao
            
                Escreval("")

                Escreval(i:1, " - Nome: ", itens[i], " | Quantidade: ", qnt_itens[i]:2, " | Valor unitário: R$", valor_unitario_itens[i]:2:2)

                valor_total <- valor_total + subtotais_itens[i]
            
            FimSe
        
        FimPara
        
        Escreval("----------------------------------------------------------")
        
        Escolha(escolha_pagamento)
        
            Caso(1)
            
                forma_pagamento <- "Dinheiro."
                
                desconto <- valor_total * 0.10
                
            Caso(2)
            
                forma_pagamento <- "Cartão."
                
            Caso(3)

                forma_pagamento <- "Boleto."
                
            Caso(4)

                forma_pagamento <- "Pix."
        
        FimEscolha
        
        Escreval("Nome do(a) cliente: ", dados_cliente_venda[1], ".")

        Escreval("")
        
        Escreval("Telefone do(a) cliente: ", dados_cliente_venda[2], ".")

        Escreval("")
        
        Escreval("Forma de pagamento escolhida: ", forma_pagamento)

        Escreval("")
        
        Escreval("Valor total: R$", valor_total:2:2)
        
        Escreval("")
        
        Escreval("Valor do desconto: R$", desconto:2:2)
        
        Escreval("")
        
        Escreval("Valor a se pagar: R$", (valor_total - desconto):2:2)
        
        condicao <- 3
    
    FimProcedimento
    
    Procedimento Realizar_Venda()
    
    Var
    
        decisao: inteiro
        
        codigo_produto: inteiro
        
        qnt_produto: inteiro
        
        i, contador: inteiro
    
    Inicio

        LimpaTela()
    
        Escreval("----------------------------------------------------------")
        
        Escreval("Insira o nome do(a) cliente:")
        Leia(dados_cliente_venda[1])
        
        Escreval("")
        
        Escreval("Insira o telefone do(a) cliente:")
        Leia(dados_cliente_venda[2])
        
        Escreval("")
    
        Enquanto decisao <> 3 Faca
        
            Escreval("---------------------")
            Escreval("01 - Exibir estoque.")
            Escreval("---------------------")
            Escreval("02 - Adicionar item.")
            Escreval("---------------------")
            Escreval("03 - Efetuar pagamento.")
            Escreval("---------------------")
            
            Escreval("")

            Escreval("Escolha (Pela numeração.) uma das opções do menu acima:")
            Leia(decisao)

            Escolha(decisao)

                Caso(1)

                    // Exibição de estoque:

                    Exibir_Estoque()

                Caso(2)

                    Escreval("")
                    
                    Escreval("Insira a numeração referente ao produto:")
                    Leia(codigo_produto)
                    
                    Escreval("")
                    
                    Escreval("Produto selecionado: ", nomes_produtos[codigo_produto])
                    
                    Repita
                    
                        Escreval("")

                        Escreval("Insira a quantidade desejada do produto:")
                        Leia(qnt_produto)
                        
                        Se(qnt_produto < 0) Entao
                        
                            Escreval("")
                            
                            Escreval("Quantidade inválida! Tente novamente.")
                        
                        FimSe
                        
                    ATE(qnt_produto > 0)
                    
                    Para i DE 1 ATE 5 Faca
                    
                        Se(itens[i] <> "") Entao
                        
                            Se(itens[i] = nomes_produtos[codigo_produto]) Entao
                        
                                qnt_itens[i] <- qnt_itens[i] + qnt_produto
                            
                                subtotais_itens[i] <- qnt_itens[i] * precos_produtos[codigo_produto]
                        
                            FimSe
                        
                            contador <- i
                            
                        FimSe
                    
                    FimPara
                    
                    Se(contador < 5) Entao
                    
                        itens[contador + 1] <- nomes_produtos[codigo_produto]

                        qnt_itens[contador + 1] <- qnt_produto
                        
                        valor_unitario_itens[contador + 1] <- precos_produtos[codigo_produto]

                        subtotais_itens[contador + 1] <- qnt_itens[contador + 1] * valor_unitario_itens[contador + 1]
                    
                    FimSe
                    
                    estoque_produtos[codigo_produto] <- estoque_produtos[codigo_produto] - qnt_produto
                    
                Caso(3)
                
                    // Cálculo do pagamento:
                
                    Efetuar_Pagamento()

                FimEscolha
                
        FimEnquanto
    
    FimProcedimento

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

    nomes_produtos[1] <- "Camisa"
    nomes_produtos[2] <- "Calça"
    nomes_produtos[3] <- "Casaco"
    nomes_produtos[4] <- "Meia"
    nomes_produtos[5] <- "Luva"

    estoque_produtos[1] <- 1000
    estoque_produtos[2] <- 800
    estoque_produtos[3] <- 300
    estoque_produtos[4] <- 500
    estoque_produtos[5] <- 400

    precos_produtos[1] <- 30.00
    precos_produtos[2] <- 80.00
    precos_produtos[3] <- 110.00
    precos_produtos[4] <- 4.00
    precos_produtos[5] <- 8.00
    
    // Menu:
    
    Escreval("----------------------------------------------------------")
    
    Enquanto condicao <> 3 Faca
    
        Escreval("---------------------")
        Escreval("01 - Exibir estoque.")
        Escreval("---------------------")
        Escreval("02 - Efetuar uma venda.")
        Escreval("---------------------")
        Escreval("03 - Sair do sistema.")
        Escreval("---------------------")
        
        Escreval("")
        
        Escreval("Escolha (Pela numeração.) uma das opções do menu acima:")
        Leia(condicao)
        
        Escolha(condicao)
        
         Caso(1)
         
             // Exibição de estoque:
         
             Exibir_Estoque()
             
         Caso(2)
         
             // Realização de uma venda:
         
             Realizar_Venda()
        
        FimEscolha
    
    FimEnquanto
    
    Escreval("----------------------------------------------------------")

Fimalgoritmo