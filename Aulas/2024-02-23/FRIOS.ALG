Algoritmo "Frios"

// Disciplina: Algoritmos e Lógica de Programação.
// Professor: Tiago Antônio da Silva.
// Descrição: calcula uma média simples entre duas notas.
// Autor(a): Pablo Valentin.
// Data atual: 23/02/2024

Var // Seção de Declarações das variáveis

    qnt_mussarela, qnt_presunto, qnt_mortadela, qnt_peito_peru: real
    
    valor_mussarela, valor_presunto, valor_mortadela, valor_peito_peru: real
    
    comissao_mussarela, comissao_presunto, comissao_mortadela, comissao_peito_peru: real
    
    valor_total, comissao_total: real

Inicio // Seção de Comandos, procedimento, funções, operadores, etc...

       Escreval("---------------------------------------------------------")
       Escreval("SISTEMA - FRIOS")
       Escreval("---------------------------------------------------------")
       
       Escreval("Digite a quantidade vendida de mussarela, em kilos:")
       Leia(qnt_mussarela)
       
       Escreval("")
       
       Escreval("Digite a quantidade vendida de presunto, em kilos:")
       Leia(qnt_presunto)
       
       Escreval("")
       
       Escreval("Digite a quantidade vendida de mortadela, em kilos:")
       Leia(qnt_mortadela)
       
       Escreval("")
       
       Escreval("Digite a quantidade vendida de peito de peru, em kilos:")
       Leia(qnt_peito_peru)
       
       Escreval("---------------------------------------------------------")
       
       valor_mussarela <- qnt_mussarela * 55
       
       valor_presunto <- qnt_presunto * 33
       
       valor_mortadela <- qnt_mortadela * 23
       
       valor_peito_peru <- qnt_peito_peru * 85
       
       Escreval("Valor total vendido de mussarela: R$", valor_mussarela:2:2)

       Escreval("")

       Escreval("Valor total vendido de presunto: R$", valor_presunto:2:2)

       Escreval("")

       Escreval("Valor total vendido de mortadela: R$", valor_mortadela:2:2)

       Escreval("")

       Escreval("Valor total vendido de peito de peru: R$", valor_peito_peru:2:2)

       Escreval("---------------------------------------------------------")
       
       // O separador decimal é o ponto final, não a vírgula.
       
       comissao_mussarela <- valor_mussarela * 0.07

       comissao_presunto <- valor_presunto * 0.04

       comissao_mortadela <- valor_mortadela * 0.08

       comissao_peito_peru <- valor_peito_peru * 0.02

       Escreval("Comissão de mussarela: R$", comissao_mussarela:2:2)

       Escreval("")

       Escreval("Comissão de presunto: R$", comissao_presunto:2:2)

       Escreval("")

       Escreval("Comissão de mortadela: R$", comissao_mortadela:2:2)

       Escreval("")

       Escreval("Comissão de peito de peru: R$", comissao_peito_peru:2:2)

       Escreval("---------------------------------------------------------")
       
       valor_total <- valor_mussarela + valor_presunto + valor_mortadela + valor_peito_peru

       comissao_total <- comissao_mussarela + comissao_presunto + comissao_mortadela + comissao_peito_peru

       Escreval("Receita obtida com as vendas: R$", valor_total:2:2)

       Escreval("")

       Escreval("Comissão total do vendedor: R$", comissao_total:2:2)

       Escreval("---------------------------------------------------------")
       
       Escreval("Lucro final da empresa: R$", (valor_total - comissao_total):2:2)

       Escreval("---------------------------------------------------------")

Fimalgoritmo